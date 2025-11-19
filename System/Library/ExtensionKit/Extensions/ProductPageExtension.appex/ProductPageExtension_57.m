id sub_100670320(void *a1, void *a2)
{
  v107 = a2;
  v3 = sub_1007621EC();
  v113 = *(v3 - 8);
  v114 = v3;
  __chkstk_darwin(v3);
  v112 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = &v106 - v6;
  v119 = sub_10000A5D4(&qword_100942F28);
  __chkstk_darwin(v119);
  v122 = &v106 - v7;
  v8 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v8 - 8);
  v116 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v106 - v11;
  __chkstk_darwin(v12);
  v14 = &v106 - v13;
  v15 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v15 - 8);
  v110 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = &v106 - v18;
  __chkstk_darwin(v19);
  v126 = &v106 - v20;
  v21 = sub_10000A5D4(&unk_100946720);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v117 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  v27 = sub_10076B5BC();
  v124 = *(v27 - 8);
  v125 = v27;
  __chkstk_darwin(v27);
  v118 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v108 = &v106 - v30;
  __chkstk_darwin(v31);
  v33 = &v106 - v32;
  v34 = objc_opt_self();
  v35 = [v34 fractionalWidthDimension:1.0];
  v36 = sub_10076461C();
  sub_100763FCC();
  v38 = v37;

  v39 = [v34 absoluteDimension:v38];
  v120 = [objc_opt_self() sizeWithWidthDimension:v35 heightDimension:v39];

  sub_10076468C();
  swift_getKeyPath();
  v123 = v33;
  sub_10076F49C();

  v40 = *(v22 + 8);
  v40(v26, v21);
  v42 = v115;
  v41 = v116;
  v121 = a1;
  sub_10076463C();
  sub_10000CFBC(v41, &qword_1009499A0);
  sub_10002AB4C(v42, v14);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_10000CFBC(v14, &qword_1009499A0);
    v43 = 1;
    v44 = v126;
  }

  else
  {
    swift_getKeyPath();
    v45 = v126;
    sub_10076F49C();

    v40(v14, v21);
    v43 = 0;
    v44 = v45;
  }

  v46 = v124;
  (*(v124 + 56))(v44, v43, 1, v125);
  v47 = v117;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v40(v47, v21);
  v48 = v128;
  v49 = v118;
  if (v128)
  {
    v50 = v127;

    v51 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v51 = v50 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v117) = v51 != 0;
  }

  else
  {
    LODWORD(v117) = 0;
  }

  v52 = *(v119 + 48);
  v53 = v122;
  v54 = v125;
  (*(v46 + 16))(v122, v123, v125);
  sub_10002ABBC(v126, v53 + v52);
  v55 = *(v46 + 88);
  v56 = v55(v53, v54);
  if (v56 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_10076468C();
    swift_getKeyPath();
    v57 = v52;
    v58 = v111;
    sub_10076F49C();
    v53 = v122;

    v40(v26, v21);
    v60 = v112;
    v59 = v113;
    v61 = v114;
    (*(v113 + 104))(v112, enum case for ShelfBackground.editorsChoice(_:), v114);
    v62 = sub_1007621DC();
    v63 = *(v59 + 8);
    v63(v60, v61);
    v64 = v58;
    v52 = v57;
    v63(v64, v61);
    if (v62)
    {

      sub_10000CFBC(v126, &unk_1009568A0);
      v65 = *(v124 + 8);
      v66 = v125;
      v65(v123, v125);
      sub_10000CFBC(v53 + v57, &unk_1009568A0);
      v65(v53, v66);
      return 0;
    }

LABEL_15:
    v73 = v124;
    v74 = v125;
    if ((*(v124 + 48))(v53 + v52, 1, v125) == 1)
    {

      sub_10000CFBC(v126, &unk_1009568A0);
      (*(v73 + 8))(v123, v74);
    }

    else
    {
      v75 = v110;
      sub_10002ABBC(v53 + v52, v110);
      if (v55(v75, v74) == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v76 = v124;
        if ((v117 & 1) == 0)
        {
          type metadata accessor for SeparatorSupplementaryView();
          sub_1007708EC();
          sub_10000CF78(v107, v107[3]);
          sub_100768A3C();
          v82 = v81 * 0.5;
          v83 = sub_10076FF6C();

          v84 = objc_opt_self();
          v85 = v120;
          v86 = [v84 boundarySupplementaryItemWithLayoutSize:v120 elementKind:v83 alignment:1 absoluteOffset:{0.0, v82}];

          sub_10000CFBC(v126, &unk_1009568A0);
          v87 = *(v76 + 8);
          v87(v123, v74);
          sub_10000CFBC(v53 + v52, &unk_1009568A0);
          v87(v53, v74);
          return v86;
        }

        sub_10000CFBC(v126, &unk_1009568A0);
        (*(v76 + 8))(v123, v74);
      }

      else
      {

        sub_10000CFBC(v126, &unk_1009568A0);
        v80 = *(v124 + 8);
        v80(v123, v74);
        v80(v75, v74);
      }
    }

    sub_10000CFBC(v53, &qword_100942F28);
    return 0;
  }

  if (v56 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    goto LABEL_15;
  }

  v67 = v56;
  v68 = v126;
  v69 = v109;
  sub_10002ABBC(v126, v109);
  v71 = v124;
  v70 = v125;
  if ((*(v124 + 48))(v69, 1, v125) == 1)
  {

    sub_10000CFBC(v68, &unk_1009568A0);
    v72 = *(v71 + 8);
    v72(v123, v70);
    sub_10000CFBC(v69, &unk_1009568A0);
LABEL_27:
    sub_10000CFBC(v53 + v52, &unk_1009568A0);
    v72(v53, v70);
    return 0;
  }

  v77 = v70;
  v78 = v108;
  (*(v71 + 32))(v108, v69, v77);
  v119 = *(v71 + 104);
  (v119)(v49, v67, v77);
  sub_1006722B0(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
  v79 = sub_10076FF1C();
  v72 = *(v71 + 8);
  v72(v49, v77);
  if (v79 & 1) != 0 || ((v119)(v49, enum case for Shelf.ContentType.productBadge(_:), v77), v89 = sub_10076FF1C(), v72(v49, v77), v90 = v78, (v89))
  {

    v72(v78, v77);
    sub_10000CFBC(v126, &unk_1009568A0);
    v72(v123, v77);
    v53 = v122;
    v70 = v77;
    goto LABEL_27;
  }

  v53 = v122;
  if (qword_100941478 != -1)
  {
    swift_once();
  }

  v91 = sub_10069358C(v78, qword_1009A31A8);
  v70 = v77;
  if ((v91 & 1) == 0)
  {

    v72(v90, v77);
    sub_10000CFBC(v126, &unk_1009568A0);
    v72(v123, v77);
    goto LABEL_27;
  }

  v92 = v107;
  v93 = sub_10066E1CC(v121);
  if (v93)
  {
    v94 = v93;
    v95 = 0.0;
    if ([v93 alignment] == 1)
    {
      v96 = [v94 layoutSize];
      v97 = [v96 heightDimension];

      [v97 dimension];
      v95 = v98;
    }
  }

  else
  {
    v95 = 0.0;
  }

  type metadata accessor for SeparatorSupplementaryView();
  sub_1007708EC();
  sub_10000CF78(v92, v92[3]);
  sub_100768A3C();
  v100 = -(v95 + v99);
  v101 = sub_10076FF6C();

  v102 = objc_opt_self();
  v103 = v120;
  v104 = [v102 boundarySupplementaryItemWithLayoutSize:v120 elementKind:v101 alignment:1 absoluteOffset:{0.0, v100}];

  v72(v90, v70);
  sub_10000CFBC(v126, &unk_1009568A0);
  v72(v123, v70);
  v105 = v122;
  sub_10000CFBC(&v122[v52], &unk_1009568A0);
  v72(v105, v70);
  return v104;
}

uint64_t sub_1006711FC(uint64_t a1)
{
  v30 = sub_100760F8C();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v36 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v34 = *(v11 + 8);
  v35 = v11 + 8;
  v34(v18, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.productReview(_:), v3);
  sub_1006722B0(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v37 == v39 && v38 == v40)
  {
    v19 = *(v4 + 8);
    v19(v6, v3);
    v19(v9, v3);
  }

  else
  {
    v20 = sub_10077167C();
    v21 = *(v4 + 8);
    v21(v6, v3);
    v21(v9, v3);

    result = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v23 = v34;
  v34(v15, v10);
  result = v38;
  if (v38)
  {

    v24 = v33;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v23(v24, v10);
    if (*(v39 + 16))
    {
      sub_10000A570(v39 + 32, &v37);

      sub_10000A5D4(&qword_1009575A0);
      sub_100760FAC();
      if (swift_dynamicCast())
      {
        v25 = v31;
        sub_100760F9C();

        v26 = v32;
        v27 = v30;
        v28 = (*(v32 + 88))(v25, v30) != enum case for ProductReview.ReviewSource.editorsChoice(_:);
        (*(v26 + 8))(v25, v27);
        return v28;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

id sub_100671728(uint64_t a1)
{
  v2 = sub_10076B66C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100766B9C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1006711FC(a1);
  result = 0;
  if (v14)
  {
    v23 = v11;
    v24 = v10;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v7 + 8))(v9, v6);
    if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.productReviews(_:))
    {
      (*(v3 + 96))(v5, v2);
      v17 = v23;
      v16 = v24;
      (*(v23 + 32))(v13, v5, v24);
      if (sub_100766B7C())
      {
        type metadata accessor for InteractiveProductReviewsShelfHeaderView();
        v18 = sub_10021950C(v13);
        sub_1007708EC();
        v19 = sub_10076FF6C();

        v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v18 elementKind:v19 alignment:1];

        (*(v17 + 8))(v13, v16);
        return v20;
      }

      (*(v17 + 8))(v13, v16);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }

    type metadata accessor for ProductReviewsShelfHeaderView();
    v21 = sub_1005DC9F0(a1, 0, 0);
    sub_1007708EC();
    v22 = sub_10076FF6C();

    v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1];

    return v20;
  }

  return result;
}

uint64_t sub_100671BC8()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100671C50(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10076469C() - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  return sub_10066CBC0(a1, a2, a3, a4, v10);
}

uint64_t sub_100671D0C(void *a1, uint64_t a2)
{
  v55 = a1;
  v3 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v3 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v45 - v6;
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = sub_10076B5BC();
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = sub_10000A5D4(&unk_100946720);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - v24;
  if (sub_1006711FC(a2))
  {
    v26 = 0;
    return v26 & 1;
  }

  v48 = v12;
  v49 = v15;
  v52 = v9;
  v50 = a2;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v27 = *(v23 + 8);
  v51 = v22;
  v47 = v27;
  v27(v25, v22);
  v28 = v56;
  (*(v56 + 104))(v18, enum case for Shelf.ContentType.productMediaItem(_:), v10);
  sub_1006722B0(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v59 == v57 && v60 == v58)
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_10077167C();
  }

  v30 = *(v28 + 8);
  v30(v18, v10);
  v46 = v30;
  v30(v21, v10);

  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

  v31 = [v55 elementKind];
  v32 = sub_10076FF9C();
  v34 = v33;

  if (v32 == sub_10076FF9C() && v34 == v35)
  {

    v37 = v51;
    v36 = v52;
    goto LABEL_12;
  }

  v38 = sub_10077167C();

  v37 = v51;
  v36 = v52;
  if ((v38 & 1) == 0)
  {
LABEL_14:
    v26 = 1;
    return v26 & 1;
  }

LABEL_12:
  v40 = v53;
  v39 = v54;
  sub_10076463C();
  sub_10000CFBC(v39, &qword_1009499A0);
  sub_10002AB4C(v40, v36);
  if ((*(v23 + 48))(v36, 1, v37) == 1)
  {
    sub_10000CFBC(v36, &qword_1009499A0);
    goto LABEL_14;
  }

  swift_getKeyPath();
  v42 = v48;
  sub_10076F49C();

  v47(v36, v37);
  v43 = v49;
  (*(v56 + 32))(v49, v42, v10);
  if (qword_100941478 != -1)
  {
    swift_once();
  }

  v44 = sub_10069358C(v43, qword_1009A31A8);
  v46(v43, v10);
  v26 = v44 ^ 1;
  return v26 & 1;
}

uint64_t sub_1006722B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100672304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10000A5D4(&unk_100953D78);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = v59 - v12;
  [a6 pageMarginInsets];
  [v6 setLayoutMargins:?];
  if (qword_10093FF90 != -1)
  {
    swift_once();
  }

  v14 = sub_100763E2C();
  v15 = sub_10000A61C(v14, qword_100953B80);
  __chkstk_darwin(v15);
  v59[-2] = a6;
  sub_10076C13C();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_100672DB8(v13, &v7[v16]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10000CFBC(v13, &unk_100953D78);
  if (sub_1007606EC())
  {
    v17 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    v18 = sub_10076C18C();
    v19 = v17[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron];
    v17[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = (v18 & 2) != 0;
    sub_100133E3C(v19);
    v17[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = (sub_10076C18C() & 4) != 0;
    v20 = *&v17[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
    sub_10076C19C();
    v21 = sub_10076FF6C();

    [v20 setText:v21];

    [v17 setNeedsLayout];
    v22 = sub_10076C16C();
    if (v22)
    {
      v23 = v22;
      sub_10076C17C();
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      *(v24 + 24) = v23;
      v25 = &v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v26 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      *v25 = sub_100672E94;
      v25[1] = v24;
      swift_retain_n();

      sub_1000167E0(v26);
      v27 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];

      [v27 setEnabled:1];

      sub_10000CFBC(v59, &unk_1009434C0);
    }

    else
    {
    }
  }

  else
  {
    v28 = &v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v29 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    *v28 = 0;
    *(v28 + 1) = 0;
    sub_1000167E0(v29);
    [*&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer] setEnabled:0];
  }

  v30 = sub_1007606BC();
  if (v30)
  {
    v31 = v30;
    v32 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView];
    sub_10076B8EC();
    if (v33)
    {
      v34 = sub_10076FF6C();
    }

    else
    {
      v34 = 0;
    }

    [v32 setTitle:v34 forState:0];

    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    *(v35 + 24) = v31;
    v36 = &v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v37 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
    *v36 = sub_100672E2C;
    v36[1] = v35;
    swift_retain_n();

    sub_1000167E0(v37);

    [v32 addTarget:v7 action:"buttonTapped" forControlEvents:64];
  }

  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v38 = v59[0];
  sub_10035CAD4();
  v39 = sub_1007606DC();
  if (!v39)
  {
    goto LABEL_27;
  }

  v40 = v39;
  v41 = v39 >> 62;
  if (v39 >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

LABEL_27:
    v53 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
    if (!v53)
    {
      goto LABEL_30;
    }

    v54 = v53;
    v55 = sub_10076C63C();

    *(v55 + 48) = 1;
    goto LABEL_29;
  }

LABEL_16:
  v42 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView;
  v43 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (v43 && (v44 = v43, v45 = sub_10076C63C(), v44, *(v45 + 40) = v40, , , , (v46 = *&v7[v42]) != 0))
  {
    v47 = v46;
    v48 = sub_10076C63C();

    if (v41)
    {
      v49 = sub_10077158C();
    }

    else
    {
      v49 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v48 + 48) = v49;

    v50 = *&v7[v42];
    if (v50)
    {
      goto LABEL_24;
    }
  }

  else
  {

    v50 = *&v7[v42];
    if (v50)
    {
LABEL_24:
      v51 = v50;
      v52 = sub_10076C63C();

      *(v52 + 56) = v38;

LABEL_29:
    }
  }

LABEL_30:
  v56 = sub_1007606CC();
  if (v56)
  {

    v57 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_1000325F0();
    v57 = sub_100770DBC();
  }

  v58 = v57;
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView] _setBackgroundColor:v57];
  [v7 setNeedsLayout];
}

uint64_t sub_1006729FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_100672B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_100763E2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FF90 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v7, qword_100953B80);
  __chkstk_darwin(v11);
  *(&v15 - 2) = a6;
  sub_10076C13C();
  sub_100763E4C();
  sub_100672E48(&qword_100962EB8, &type metadata accessor for ArcadeFooterLayout);
  sub_10076DBDC();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_100672DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100953D78);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100672E48(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100672E9C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_10077019C();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100673048(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_10075F8BC();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_10049D954(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_10049D954((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[16 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_1006731E4()
{
  v1 = sub_10075F8BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075F8DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100679D40(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(sub_10000A5D4(&qword_100962FF8) + 48);
    (*(v6 + 32))(v8, v11, v5);
    (*(v2 + 32))(v4, &v11[v12], v1);
    sub_10077176C(1uLL);
    sub_100679DA4(&qword_100961000, &type metadata accessor for PageFacets.Facet);
    sub_10076FEBC();
    sub_100679DA4(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option);
    sub_10076FEBC();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_10077176C(0);
    sub_100679DA4(&qword_100961000, &type metadata accessor for PageFacets.Facet);
    sub_10076FEBC();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100673520()
{
  sub_10077175C();
  sub_1006731E4();
  return sub_1007717AC();
}

Swift::Int sub_100673564()
{
  sub_10077175C();
  sub_1006731E4();
  return sub_1007717AC();
}

void sub_1006735A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100673678(uint64_t a1)
{
  v3 = sub_10075F8EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_10094F4C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_10000A5D4(&qword_100963050);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_10067B2D4(v1 + v14, v13);
  sub_10067B2D4(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_10000CFBC(v13, &unk_10094F4C0);
    }

    goto LABEL_6;
  }

  sub_10067B2D4(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_10000CFBC(v13, &qword_100963050);
    return sub_100673994();
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_100679DA4(&qword_100963058, &type metadata accessor for PageFacets);
  v18 = sub_10076FF1C();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_10000CFBC(v13, &unk_10094F4C0);
  if ((v18 & 1) == 0)
  {
    return sub_100673994();
  }

  return result;
}

uint64_t sub_100673994()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100963018);
  __chkstk_darwin(v2 - 8);
  v82 = &v67 - v3;
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = &v67 - v8;
  v9 = sub_10075F8DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10075F7BC();
  v86 = *(v13 - 8);
  __chkstk_darwin(v13);
  v83 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_10094F4C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v67 - v16;
  v18 = sub_10075F8EC();
  v71 = *(v18 - 8);
  __chkstk_darwin(v18);
  v70 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10000A5D4(&qword_100963020);
  v69 = *(v88 - 8);
  __chkstk_darwin(v88);
  v21 = &v67 - v20;
  sub_100679DA4(&qword_100963028, &type metadata accessor for PageFacets.FacetGroup);
  sub_100679DA4(&qword_100963030, type metadata accessor for PageFacetsViewController.Item);
  v87 = v21;
  v85 = v13;
  sub_10076E62C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v71;
  sub_10067B2D4(v23, v17);
  if ((*(v24 + 48))(v17, 1, v18) == 1)
  {
    result = sub_10000CFBC(v17, &unk_10094F4C0);
    v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
    if (v26)
    {
      v27 = v26;
      v28 = v87;
      sub_10076E76C();

      return (*(v69 + 8))(v28, v88);
    }

    goto LABEL_33;
  }

  v29 = *(v24 + 32);
  v68 = v18;
  v29(v70, v17, v18);
  result = sub_10075F7CC();
  v81 = *(result + 16);
  if (v81)
  {
    v30 = 0;
    v80 = *(v86 + 80);
    v79 = (v80 + 32) & ~v80;
    v78 = result + v79;
    v77 = v86 + 16;
    v76 = v86 + 8;
    v99 = v10 + 16;
    v91 = (v10 + 8);
    v72 = (v86 + 56);
    v75 = xmmword_100783DD0;
    v74 = v1;
    v89 = v10;
    v90 = v6;
    v97 = v12;
    v73 = result;
    while (v30 < *(result + 16))
    {
      v33 = v85;
      v34 = *(v86 + 72);
      v84 = v30;
      v96 = *(v86 + 16);
      v35 = v83;
      v96(v83, v78 + v34 * v30, v85);
      sub_10000A5D4(&qword_100963038);
      v36 = v79;
      v37 = swift_allocObject();
      *(v37 + 1) = v75;
      v96(&v37[v36], v35, v33);
      v38._rawValue = v37;
      sub_10076E5CC(v38);

      v39 = sub_10075F7AC();
      result = (*(v86 + 8))(v35, v33);
      v95 = *(v39 + 16);
      if (v95)
      {
        v40 = 0;
        v93 = v39 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v41 = _swiftEmptyArrayStorage;
        v42 = v91;
        v94 = v39;
        while (v40 < *(v39 + 16))
        {
          v43 = *(v10 + 72);
          v96 = v40;
          v44 = *(v10 + 16);
          v44(v12, v93 + v43 * v40, v9);
          if (sub_10075F81C())
          {
            v45 = sub_10075F8CC();
            v46 = *(v45 + 16);
            if (v46)
            {
              v47 = v9;
              v48 = sub_10075F8BC();
              v49 = *(v48 - 8);
              v50 = *(v49 + 80);
              v92 = v45;
              v51 = v45 + ((v50 + 32) & ~v50);
              v52 = *(v49 + 72);
              v53 = (v49 + 16);
              v54 = v98;
              do
              {
                v55 = *(sub_10000A5D4(&qword_100962FF8) + 48);
                v44(v54, v97, v47);
                (*v53)(v54 + v55, v51, v48);
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_10049EB3C(0, v41[2] + 1, 1, v41);
                }

                v57 = v41[2];
                v56 = v41[3];
                if (v57 >= v56 >> 1)
                {
                  v41 = sub_10049EB3C(v56 > 1, v57 + 1, 1, v41);
                }

                v41[2] = v57 + 1;
                v58 = v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v57;
                v54 = v98;
                sub_10067B18C(v98, v58);
                v51 += v52;
                --v46;
              }

              while (v46);

              v9 = v47;
              v10 = v89;
              v6 = v90;
              v12 = v97;
              v42 = v91;
            }

            else
            {
            }

            result = (*v42)(v12, v9);
          }

          else
          {
            v44(v6, v12, v9);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_10049EB3C(0, v41[2] + 1, 1, v41);
            }

            v60 = v41[2];
            v59 = v41[3];
            if (v60 >= v59 >> 1)
            {
              v41 = sub_10049EB3C(v59 > 1, v60 + 1, 1, v41);
            }

            (*v42)(v12, v9);
            v41[2] = v60 + 1;
            result = sub_10067B18C(v6, v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v60);
          }

          v39 = v94;
          v40 = v96 + 1;
          if (v96 + 1 == v95)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:

      v31 = v84 + 1;
      v32 = v82;
      (*v72)(v82, 1, 1, v85);
      sub_10076E5AC();
      v30 = v31;

      sub_10000CFBC(v32, &qword_100963018);
      v1 = v74;
      result = v73;
      if (v31 == v81)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:

  v61 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
  v62 = v68;
  v63 = v71;
  v64 = v70;
  if (v61)
  {
    v65 = v61;
    v66 = v87;
    sub_10076E76C();

    (*(v63 + 8))(v64, v62);
    return (*(v69 + 8))(v66, v88);
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_100674470()
{
  v1 = v0;
  v2 = sub_10075F7BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100963020);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource;
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  sub_10076E79C();

  v13 = sub_10076E61C();
  v14 = *(v13 + 16);
  if (!v14)
  {

    v26 = *&v1[v10];
    if (v26)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v34 = v10;
  v35 = v1;
  v36 = v7;
  v37 = v13;
  v15 = v2;
  v17 = *(v3 + 16);
  v16 = v3 + 16;
  v38 = v17;
  v18 = v9;
  v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v20 = *(v16 + 56);
  v21 = v6;
  v22 = (v16 - 8);
  do
  {
    v38(v5, v19, v15);
    v23 = v16;
    v24 = sub_10076E5DC();
    (*v22)(v5, v15);
    v25._rawValue = v24;
    sub_10076E5BC(v25);
    v16 = v23;

    v19 += v20;
    --v14;
  }

  while (v14);

  v6 = v21;
  v1 = v35;
  v7 = v36;
  v9 = v18;
  v26 = *&v35[v34];
  if (!v26)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  v27 = v26;
  sub_10076E76C();

  v28 = &v1[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset + 16])
  {
    (*(v7 + 8))(v9, v6);
    return;
  }

  v30 = *v28;
  v29 = v28[1];
  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setContentOffset:{v30, v29}];

    (*(v7 + 8))(v9, v6);
    *v28 = 0.0;
    v28[1] = 0.0;
    *(v28 + 16) = 1;
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_100674778()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = sub_1006749B4();
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource] = v7;

  result = [v0 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v14[4] = sub_10067B2CC;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1002BAFEC;
    v14[3] = &unk_10089EC30;
    v12 = _Block_copy(v14);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    sub_100674DC8();
    return sub_100673994();
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1006749B4()
{
  v27 = sub_10000A5D4(&qword_100963060);
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23[1] = v2;
  v24 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v23 - v4;
  v25 = sub_10000A5D4(&qword_100963068);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_100945920);
  type metadata accessor for PageFacetsViewController.Item(0);
  sub_10077058C();
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_10094D1D0);
  v26 = v5;
  sub_10077059C();
  result = [v0 collectionView];
  if (result)
  {
    v13 = v25;
    (*(v6 + 16))(v8, v11, v25);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v8, v13);
    v16 = objc_allocWithZone(sub_10000A5D4(&qword_100963070));
    v17 = sub_10076E72C();
    v18 = v24;
    v19 = v26;
    v20 = v27;
    (*(v1 + 16))(v24, v26, v27);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v18, v20);
    sub_10076E73C();
    (*(v1 + 8))(v19, v20);
    (*(v6 + 8))(v11, v13);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100674DC8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000A5D4(&unk_10094F490);
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = v15 - v2;
  v3 = sub_10000A5D4(&qword_100964180);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  sub_100764EDC();
  v7 = sub_100016F40(0, &qword_1009471F0);
  v8 = sub_10077068C();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v8;
  v15[1] = sub_10000A5D4(&unk_10094F4A0);
  sub_100071820(&unk_1009641B0, &unk_10094F4A0);
  v16 = v0;
  sub_10076F46C();

  v9 = v4 + 8;
  v10 = *(v4 + 8);
  v15[0] = v9;
  v10(v6, v3);
  sub_10000CD74(v21);
  sub_100764EEC();
  v11 = sub_10077068C();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v11;
  sub_10076F46C();

  v10(v6, v3);
  sub_10000CD74(v21);
  sub_100764E8C();
  v12 = sub_10077068C();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v12;
  sub_10000A5D4(&unk_10094F4B0);
  sub_100071820(&qword_1009641C0, &unk_10094F4B0);
  v13 = v18;
  sub_10076F46C();

  (*(v19 + 8))(v13, v20);
  return sub_10000CD74(v21);
}

void sub_1006751C4(unint64_t a1, uint64_t a2)
{
  v53 = a2;
  v50 = a1;
  v2 = sub_10000A5D4(&qword_100963020);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = &v45 - v3;
  v5 = sub_10075F7BC();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v45 - v9;
  v10 = sub_10076E83C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076E81C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076E87C();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v14, v19);
  sub_10076E84C();
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v10);
  sub_10076E86C();
  sub_100016F40(0, &unk_1009632E0);
  v22 = sub_10077097C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    (*(v51 + 8))(v21, v52);
    return;
  }

  v24 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
  v25 = Strong;
  v26 = v24;

  if (v24)
  {
    sub_10076E79C();

    v27 = v49;
    v28 = sub_10076E61C();
    (*(v48 + 8))(v4, v27);
    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v28 + 16) > v50)
    {
      v30 = v46;
      v29 = v47;
      (*(v46 + 16))(v7, v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v50, v47);

      v31 = v45;
      (*(v30 + 32))(v45, v7, v29);
      v32 = sub_10075F79C();
      if (v33)
      {
        v34 = v32;
        v35 = v33;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v37 = objc_opt_self();
          v38 = [v37 fractionalWidthDimension:1.0];
          v39 = [v37 estimatedDimension:44.0];
          v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

          v41 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:UICollectionElementKindSectionHeader alignment:1];
          sub_10000A5D4(&unk_100942870);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1007841E0;
          *(v42 + 32) = v41;
          sub_100016F40(0, &qword_100948C70);
          v43 = v41;
          isa = sub_1007701AC().super.isa;

          [v22 setBoundarySupplementaryItems:isa];
        }
      }

      (*(v30 + 8))(v31, v29);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1006757D4(void *a1, uint64_t a2, void (*a3)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10067584C(a1, a2, a3);
  }
}

uint64_t sub_10067584C(void *a1, uint64_t a2, void (*a3)(void, void))
{
  v167 = a3;
  v171 = a1;
  v143 = sub_10076E2FC();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10076E30C();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v149 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10076E2AC();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_10075F7DC();
  v172 = *(v157 - 8);
  __chkstk_darwin(v157);
  v138 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v134 - v8;
  __chkstk_darwin(v9);
  v145 = &v134 - v10;
  __chkstk_darwin(v11);
  v158 = &v134 - v12;
  __chkstk_darwin(v13);
  v156 = &v134 - v14;
  __chkstk_darwin(v15);
  v155 = &v134 - v16;
  v17 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v17 - 8);
  v160 = &v134 - v18;
  v137 = sub_10076E26C();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_10076E23C();
  v159 = *(v163 - 8);
  __chkstk_darwin(v163);
  v152 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_10075F8BC();
  v154 = *(v165 - 8);
  __chkstk_darwin(v165);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10075F8DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v153 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v144 = &v134 - v27;
  __chkstk_darwin(v28);
  v30 = &v134 - v29;
  __chkstk_darwin(v31);
  v166 = &v134 - v32;
  v33 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v33);
  v35 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v134 - v37;
  __chkstk_darwin(v39);
  v41 = &v134 - v40;
  v42 = sub_10076E58C();
  v169 = *(v42 - 8);
  v170 = v42;
  __chkstk_darwin(v42);
  v140 = &v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v134 - v45;
  sub_10076E55C();
  sub_100679D40(v167, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v168 = v24;
  if (EnumCaseMultiPayload != 1)
  {
    v162 = v46;
    v166 = v41;
    sub_100679D40(v41, v35);
    v69 = *(v24 + 16);
    v165 = v35;
    v161 = v23;
    v135 = v69;
    (v69)(v30, v35, v23);
    v70 = v155;
    sub_10075F7EC();
    v71 = v172;
    v72 = v156;
    v73 = v157;
    v136 = *(v172 + 13);
    v154 = v172 + 104;
    (v136)(v156, enum case for PageFacets.Facet.DisplayType.toggle(_:), v157);
    v74 = sub_100679DA4(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType);
    sub_10077018C();
    v137 = v74;
    sub_10077018C();
    v167 = v30;
    if (v175 == v173 && v176 == v174)
    {
      v75 = 1;
    }

    else
    {
      v75 = sub_10077167C();
    }

    v76 = *(v71 + 8);
    v76(v72, v73);
    v172 = (v71 + 8);
    v156 = v76;
    v76(v70, v73);

    if (v75)
    {
      sub_10075F86C();
      sub_10076E56C();
      sub_100016F40(0, &qword_1009641D0);
      v77 = swift_allocObject();
      v78 = v164;
      swift_unknownObjectWeakInit();
      v79 = v144;
      v80 = v161;
      (v135)(v144, v167, v161);
      v81 = v168;
      v82 = (*(v168 + 80) + 24) & ~*(v168 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = v77;
      v84 = v167;
      (*(v81 + 32))(v83 + v82, v79, v80);
      v85 = sub_100770F1C();
      v86 = [objc_allocWithZone(UISwitch) initWithFrame:v85 primaryAction:{0.0, 0.0, 0.0, 0.0}];

      v87 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
      swift_beginAccess();
      v88 = *(v78 + v87);
      v60 = v169;
      if (*(v88 + 16) && (v89 = sub_100610638(v84), (v90 & 1) != 0))
      {
        v91 = *(*(v88 + 56) + 8 * v89);
        swift_endAccess();
        v92 = *(v91 + 16) != 0;
      }

      else
      {
        swift_endAccess();
        v92 = 0;
      }

      v100 = v171;
      [v86 setOn:v92];
      sub_10000A5D4(&qword_100945930);
      sub_10076E32C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      v101 = sub_10000A5D4(&qword_100945940);
      v102 = v149;
      v103 = &v149[*(v101 + 48)];
      (*(v159 + 104))(v149, enum case for UICellAccessory.DisplayedState.always(_:), v163);
      *v103 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v103[1] = 0;
      (*(v146 + 104))(v102, enum case for UICellAccessory.Placement.trailing(_:), v147);
      v104 = sub_10076E24C();
      (*(*(v104 - 8) + 56))(v160, 1, 1, v104);
      v105 = v86;
      v106 = v148;
      sub_10076E29C();
      sub_10076E22C();
      (*(v150 + 8))(v106, v151);
      sub_10077093C();
      v175 = 0x2D7465636166;
      v176 = 0xE600000000000000;
      v107 = v167;
      v179._countAndFlagsBits = sub_10075F85C();
      sub_1007700CC(v179);

      v108 = sub_10076FF6C();

      [v100 setAccessibilityIdentifier:v108];

      v109 = *(v81 + 8);
      v109(v107, v80);
      v109(v165, v80);
      v59 = v170;
      goto LABEL_25;
    }

    v93 = v167;
    v94 = v168;
    v95 = v161;
    v167 = *(v168 + 8);
    v167(v93, v161);
    v96 = v153;
    (*(v94 + 32))(v153, v165, v95);
    sub_10075F7EC();
    v97 = v145;
    v98 = v136;
    (v136)(v145, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v73);
    sub_10077018C();
    sub_10077018C();
    v60 = v169;
    if (v175 == v173 && v176 == v174)
    {
      v99 = v156;
      (v156)(v97, v73);
      v99(v158, v73);
    }

    else
    {
      v110 = sub_10077167C();
      v111 = v156;
      (v156)(v97, v73);
      v111(v158, v73);

      if (v110)
      {
        goto LABEL_22;
      }

      sub_10075F7EC();
      v98(v138, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v73);
      sub_10077018C();
      sub_10077018C();
      if (v175 != v173 || v176 != v174)
      {
        v132 = sub_10077167C();
        v133 = v156;
        (v156)(v138, v73);
        v133(v139, v73);

        if ((v132 & 1) == 0)
        {
          v167(v96, v161);
          sub_10077093C();
          v59 = v170;
LABEL_25:
          v41 = v166;
          v46 = v162;
          goto LABEL_30;
        }

LABEL_22:
        v112 = v140;
        sub_10076E57C();
        v113 = v162;
        v59 = v170;
        (*(v60 + 8))(v162, v170);
        (*(v60 + 32))(v113, v112, v59);
        sub_10075F86C();
        sub_10076E56C();
        v114 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
        v115 = v164;
        swift_beginAccess();
        v116 = *(v115 + v114);

        sub_1006775B4(v96, v116);

        sub_10076E4FC();
        sub_10000A5D4(&qword_100945930);
        sub_10076E32C();
        *(swift_allocObject() + 16) = xmmword_100783DD0;
        v117 = v159;
        v118 = v152;
        v119 = v163;
        (*(v159 + 104))(v152, enum case for UICellAccessory.DisplayedState.always(_:), v163);
        v120 = sub_10076E24C();
        (*(*(v120 - 8) + 56))(v160, 1, 1, v120);
        v121 = v141;
        sub_10076E2EC();
        sub_10076E28C();
        v122 = v153;
        (*(v142 + 8))(v121, v143);
        (*(v117 + 8))(v118, v119);
        v123 = v171;
        sub_10077093C();
        v124._countAndFlagsBits = sub_10075F82C();
        if (v124._object)
        {
          v175 = 0x2D7465636166;
          v176 = 0xE600000000000000;
          sub_1007700CC(v124);

          v125 = sub_10076FF6C();

          [v123 setAccessibilityIdentifier:v125];
        }

        v167(v122, v161);
        goto LABEL_25;
      }

      v131 = v156;
      (v156)(v138, v73);
      v131(v139, v73);
    }

    goto LABEL_22;
  }

  v48 = v171;
  sub_100679D40(v41, v38);
  v49 = *(sub_10000A5D4(&qword_100962FF8) + 48);
  v50 = v166;
  (*(v24 + 32))(v166, v38, v23);
  v51 = v154;
  (*(v154 + 4))(v22, &v38[v49], v165);
  v172 = v22;
  sub_10075F8AC();
  sub_10076E56C();
  v52 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
  v53 = v164;
  swift_beginAccess();
  v54 = *(v53 + v52);
  if (*(v54 + 16) && (v55 = sub_100610638(v50), (v56 & 1) != 0))
  {
    v161 = v23;
    v57 = *(*(v54 + 56) + 8 * v55);
    swift_endAccess();

    v58 = sub_10069315C(v172, v57);

    v60 = v169;
    v59 = v170;
    v61 = v48;
    if (v58)
    {
      sub_10000A5D4(&qword_100945930);
      v62 = *(sub_10076E32C() - 8);
      v167 = ((*(v62 + 80) + 32) & ~*(v62 + 80));
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      v63 = v159;
      v64 = *(v159 + 104);
      v162 = v46;
      v65 = v152;
      v64(v152, enum case for UICellAccessory.DisplayedState.always(_:), v163);
      v66 = sub_10076E24C();
      (*(*(v66 - 8) + 56))(v160, 1, 1, v66);
      v67 = v135;
      sub_10076E25C();
      sub_10076E31C();
      (*(v136 + 8))(v67, v137);
      v68 = v65;
      v46 = v162;
      (*(v63 + 8))(v68, v163);
    }

    v23 = v161;
  }

  else
  {
    swift_endAccess();
    v60 = v169;
    v59 = v170;
    v61 = v48;
  }

  sub_10077093C();
  v126 = v172;
  v127._countAndFlagsBits = sub_10075F87C();
  if (v127._object)
  {
    v175 = 0x2D7465636166;
    v176 = 0xE600000000000000;
    sub_1007700CC(v127);

    v128 = sub_10076FF6C();

    [v61 setAccessibilityIdentifier:v128];
  }

  (*(v51 + 1))(v126, v165);
  (*(v168 + 8))(v166, v23);
LABEL_30:
  sub_10067A7A8(v41);
  v177 = v59;
  v178 = &protocol witness table for UIListContentConfiguration;
  v129 = sub_10000DB7C(&v175);
  (*(v60 + 16))(v129, v46, v59);
  sub_1007707FC();
  return (*(v60 + 8))(v46, v59);
}

unint64_t sub_100676EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a4;
  v4 = sub_10076E58C();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100963020);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_10075F7BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v23 = v4;
    v17 = *(result + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
    if (v17)
    {
      v18 = v17;
      sub_10076E79C();

      v19 = sub_10076E61C();
      (*(v8 + 8))(v10, v7);
      result = sub_10075E12C();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v19 + 16))
      {
        (*(v12 + 16))(v14, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v11);

        sub_10076E4EC();
        sub_10075F79C();
        sub_10076E56C();
        v20 = v23;
        v27[3] = v23;
        v27[4] = &protocol witness table for UIListContentConfiguration;
        v21 = sub_10000DB7C(v27);
        v22 = v24;
        (*(v24 + 16))(v21, v6, v20);
        sub_1007707FC();

        (*(v22 + 8))(v6, v20);
        return (*(v12 + 8))(v14, v11);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1006771DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_100963008);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_100679D40(a3, &v10 - v5);
  v7 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_100016F40(0, &qword_100945920);
  v8 = sub_1007705AC();
  sub_10000CFBC(v6, &qword_100963008);
  return v8;
}

void sub_100677310()
{
  v0 = sub_10000A5D4(&qword_100946838);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = v5;
    if (v5)
    {
      v7 = [v5 collectionView];

      if (!v7)
      {
        __break(1u);
        return;
      }

      [v7 contentOffset];
      v19 = v8;
      v20 = v9;

      *&v10 = v19;
      *(&v10 + 1) = v20;
    }

    else
    {
      v10 = 0uLL;
    }

    v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset];
    *v11 = v10;
    v11[16] = v6 == 0;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;

    v14 = sub_10075F8CC();
    if (*(v14 + 16))
    {
      v15 = v14;
      v16 = sub_10075F8BC();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v2, v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);

      (*(v17 + 56))(v2, 0, 1, v16);
    }

    else
    {

      v18 = sub_10075F8BC();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
    }

    sub_100764F0C();

    sub_10000CFBC(v2, &qword_100946838);
  }
}

uint64_t sub_1006775B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075F8BC();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = sub_10075F83C();
  result = 0;
  if (v13)
  {
    if (*(a2 + 16) && (v15 = sub_100610638(a1), (v16 & 1) != 0))
    {
      v17 = *(*(a2 + 56) + 8 * v15);
      v18 = *(v17 + 16);

      v19 = *(sub_10075F8CC() + 16);

      if (v18 == v19)
      {

        v62._countAndFlagsBits = 0xD000000000000025;
        v62._object = 0x80000001007F4700;
        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        return sub_1007622EC(v62, v65);
      }

      else
      {
        v60 = v17;
        result = sub_10075F8CC();
        v55 = *(result + 16);
        if (v55)
        {
          v52 = v6;
          v23 = 0;
          v24 = v60;
          v58 = (v60 + 56);
          v59 = v57 + 16;
          v25 = (v57 + 8);
          v53 = _swiftEmptyArrayStorage;
          v54 = result;
          v51 = (v57 + 32);
          while (v23 < *(result + 16))
          {
            v56 = (*(v57 + 80) + 32) & ~*(v57 + 80);
            v26 = *(v57 + 72);
            v27 = *(v57 + 16);
            v27(v12, result + v56 + v26 * v23, v4);
            if (*(v24 + 16) && (sub_100679DA4(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option), v28 = sub_10076FEAC(), v24 = v60, v29 = -1 << *(v60 + 32), v30 = v28 & ~v29, ((*(v58 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
            {
              v31 = ~v29;
              while (1)
              {
                v27(v9, *(v24 + 48) + v30 * v26, v4);
                sub_100679DA4(&qword_100946848, &type metadata accessor for PageFacets.Facet.Option);
                v32 = sub_10076FF1C();
                (*v25)(v9, v4);
                if (v32)
                {
                  break;
                }

                v30 = (v30 + 1) & v31;
                v24 = v60;
                if (((*(v58 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                {
                  goto LABEL_11;
                }
              }

              v33 = *v51;
              (*v51)(v52, v12, v4);
              v34 = v53;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v36 = v34;
              v61 = v34;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1004BBD8C(0, v34[2] + 1, 1);
                v36 = v61;
              }

              v24 = v60;
              v38 = v36[2];
              v37 = v36[3];
              if (v38 >= v37 >> 1)
              {
                sub_1004BBD8C(v37 > 1, v38 + 1, 1);
                v24 = v60;
                v36 = v61;
              }

              v36[2] = v38 + 1;
              v53 = v36;
              v33(v36 + v56 + v38 * v26, v52, v4);
            }

            else
            {
LABEL_11:
              (*v25)(v12, v4);
            }

            ++v23;
            result = v54;
            if (v23 == v55)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
        }

        else
        {
          v53 = _swiftEmptyArrayStorage;
LABEL_26:

          v39 = v53[2];
          if (v39)
          {
            v61 = _swiftEmptyArrayStorage;
            v40 = v53;
            sub_1004BBB24(0, v39, 0);
            v41 = v61;
            v42 = *(v57 + 16);
            v43 = v40 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
            v59 = *(v57 + 72);
            v60 = v42;
            v57 += 16;
            v58 = (v57 - 8);
            do
            {
              (v60)(v9, v43, v4);
              v44 = sub_10075F8AC();
              v46 = v45;
              (*v58)(v9, v4);
              v61 = v41;
              v48 = v41[2];
              v47 = v41[3];
              if (v48 >= v47 >> 1)
              {
                sub_1004BBB24((v47 > 1), v48 + 1, 1);
                v41 = v61;
              }

              v41[2] = v48 + 1;
              v49 = &v41[2 * v48];
              v49[4] = v44;
              v49[5] = v46;
              v43 += v59;
              --v39;
            }

            while (v39);
          }

          else
          {

            v41 = _swiftEmptyArrayStorage;
          }

          v61 = v41;
          v64._object = 0x80000001007F46E0;
          v64._countAndFlagsBits = 0xD00000000000001DLL;
          v67._countAndFlagsBits = 0;
          v67._object = 0xE000000000000000;
          sub_1007622EC(v64, v67);
          sub_10000A5D4(&unk_10094BB60);
          sub_100071820(&qword_100943480, &unk_10094BB60);
          v50 = sub_10076FEFC();

          return v50;
        }
      }
    }

    else
    {
      v20 = sub_10075F8CC();
      __chkstk_darwin(v20);
      *(&v51 - 2) = a1;
      v21 = sub_100673048(sub_10067B7D0, (&v51 - 4), v20);

      if (*(v21 + 16))
      {
        v61 = v21;
        v63._object = 0x80000001007F46E0;
        v63._countAndFlagsBits = 0xD00000000000001DLL;
        v66._countAndFlagsBits = 0;
        v66._object = 0xE000000000000000;
        sub_1007622EC(v63, v66);
        sub_10000A5D4(&unk_10094BB60);
        sub_100071820(&qword_100943480, &unk_10094BB60);
        v22 = sub_10076FEFC();

        return v22;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100677D10(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_10094F4C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  sub_100764EAC();
  v9 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  sub_10067B2D4(a2 + v9, v5);
  swift_beginAccess();
  sub_10067B43C(v8, a2 + v9);
  swift_endAccess();
  sub_100673678(v5);
  sub_10000CFBC(v5, &unk_10094F4C0);
  return sub_10000CFBC(v8, &unk_10094F4C0);
}

uint64_t (*sub_100677E48(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10067B434;
}

void (*sub_100677EAC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10067B3BC;
}

void sub_100677F10(uint64_t a1, uint64_t a2)
{
  v3 = sub_100764E9C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = v3;

  sub_100679E68(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    sub_100674470();
  }
}

uint64_t sub_100677FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_objectGraph);
  v8 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_1006780F0(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10067B37C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1002759EC;
}

void sub_100678180(void *a1, uint64_t a2)
{
  v163 = a2;
  v154 = a1;
  v147 = sub_10076F08C();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10076F0CC();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10075E11C();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = v5;
  v137 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10076F0EC();
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v135 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v124 - v8;
  v9 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v9 - 8);
  v128 = &v124 - v10;
  v130 = sub_10076E26C();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v126 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10076E23C();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_100946838);
  __chkstk_darwin(v13 - 8);
  v134 = &v124 - v14;
  v157 = sub_10075F7DC();
  v164 = *(v157 - 8);
  __chkstk_darwin(v157);
  v148 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v132 = &v124 - v17;
  __chkstk_darwin(v18);
  v20 = &v124 - v19;
  __chkstk_darwin(v21);
  v23 = &v124 - v22;
  __chkstk_darwin(v24);
  v131 = &v124 - v25;
  __chkstk_darwin(v26);
  v28 = &v124 - v27;
  __chkstk_darwin(v29);
  v152 = &v124 - v30;
  __chkstk_darwin(v31);
  v153 = &v124 - v32;
  __chkstk_darwin(v33);
  v35 = &v124 - v34;
  __chkstk_darwin(v36);
  v38 = &v124 - v37;
  v39 = sub_10075F8BC();
  v155 = *(v39 - 8);
  v156 = v39;
  __chkstk_darwin(v39);
  v158 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10075F8DC();
  v42 = *(v41 - 8);
  v161 = v41;
  v162 = v42;
  __chkstk_darwin(v41);
  v133 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v151 = &v124 - v45;
  __chkstk_darwin(v46);
  v159 = &v124 - v47;
  v48 = sub_10000A5D4(&qword_100963008);
  __chkstk_darwin(v48 - 8);
  v50 = &v124 - v49;
  v51 = type metadata accessor for PageFacetsViewController.Item(0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v124 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v160 = &v124 - v56;
  v149 = v2;
  v57 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource];
  if (!v57)
  {
    __break(1u);
    return;
  }

  v58 = v57;
  sub_10076E74C();

  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_10000CFBC(v50, &qword_100963008);
    return;
  }

  v59 = v160;
  sub_10067B18C(v50, v160);
  sub_100679D40(v59, v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v162 + 32))(v151, v54, v161);
    sub_10075F7EC();
    v64 = *(v164 + 104);
    v64(v20, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v157);
    sub_100679DA4(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType);
    sub_10077018C();
    sub_10077018C();
    if (aBlock == v171 && v166 == v172)
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_10077167C();
    }

    v77 = *(v164 + 8);
    v78 = v20;
    v79 = v157;
    v77(v78, v157);
    v77(v23, v79);

    v76 = v151;
    if ((v65 & 1) == 0)
    {
      v80 = v132;
      sub_10075F7EC();
      v64(v148, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v79);
      sub_10077018C();
      sub_10077018C();
      if (aBlock == v171 && v166 == v172)
      {
        v77(v148, v79);
        v77(v80, v79);
      }

      else
      {
        v92 = sub_10077167C();
        v77(v148, v79);
        v77(v80, v79);

        if ((v92 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    v93 = v161;
    v94 = v133;
    (*(v162 + 16))(v133, v76, v161);
    v95 = v149;
    v96 = *&v149[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_facetsPresenter];
    v97 = v149[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_showDoneButton];
    v98 = objc_allocWithZone(type metadata accessor for PageFacetOptionsViewController());

    v99 = sub_1002551BC(v94, v96, v97);

    *&v99[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_delegate + 8] = &off_10089EBA8;
    swift_unknownObjectWeakAssign();
    v100 = [v95 navigationController];
    if (v100)
    {
      v101 = v100;
      [v100 pushViewController:v99 animated:1];

      v99 = v101;
    }

    (*(v162 + 8))(v76, v93);
    goto LABEL_48;
  }

  v148 = v28;
  v60 = *(sub_10000A5D4(&qword_100962FF8) + 48);
  (*(v162 + 32))(v159, v54, v161);
  (*(v155 + 32))(v158, &v54[v60], v156);
  sub_10075F7EC();
  v61 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v62 = v157;
  v151 = *(v164 + 104);
  (v151)(v35, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v157);
  sub_100679DA4(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType);
  sub_10077018C();
  sub_10077018C();
  LODWORD(v133) = v61;
  if (aBlock == v171 && v166 == v172)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_10077167C();
  }

  v66 = v164 + 8;
  v67 = *(v164 + 8);
  v67(v35, v62);
  v164 = v66;
  v67(v38, v62);

  v68 = v149;
  if ((v63 & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
    swift_beginAccess();
    v70 = *&v68[v69];
    if (*(v70 + 16) && (v71 = sub_100610638(v159), (v72 & 1) != 0))
    {
      v73 = *(*(v70 + 56) + 8 * v71);
      swift_endAccess();

      v74 = sub_10069315C(v158, v73);

      if (v74)
      {
        v75 = 0;
        v76 = v159;
        goto LABEL_24;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  [v154 contentOffset];
  v81 = &v68[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset];
  *v81 = v82;
  *(v81 + 1) = v83;
  v81[16] = 0;
  v85 = v155;
  v84 = v156;
  v86 = v134;
  (*(v155 + 16))(v134, v158, v156);
  v75 = 1;
  (*(v85 + 56))(v86, 0, 1, v84);
  v76 = v159;
  sub_100764F0C();
  sub_10000CFBC(v86, &qword_100946838);
LABEL_24:
  sub_10075F7EC();
  (v151)(v152, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v62);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v152, v62);
    v67(v153, v62);

LABEL_27:

    goto LABEL_29;
  }

  v87 = sub_10077167C();
  v67(v152, v62);
  v67(v153, v62);

  if (v87)
  {
    goto LABEL_29;
  }

  sub_10075F7EC();
  v102 = v131;
  (v151)(v131, v133, v62);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v102, v62);
    v67(v148, v62);

    goto LABEL_27;
  }

  v103 = sub_10077167C();
  v67(v102, v62);
  v67(v148, v62);

  if (v103)
  {
LABEL_29:
    v88 = v163;
    if (v75)
    {
      isa = sub_10075E02C().super.isa;
      v90 = [v154 cellForItemAtIndexPath:isa];

      if (v90)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v91 = *(sub_10077092C() + 16);

          if (!v91)
          {
            sub_10000A5D4(&qword_100945930);
            sub_10076E32C();
            *(swift_allocObject() + 16) = xmmword_100783DD0;
            v104 = v125;
            v105 = v124;
            v106 = v127;
            (*(v125 + 104))(v124, enum case for UICellAccessory.DisplayedState.always(_:), v127);
            v107 = sub_10076E24C();
            (*(*(v107 - 8) + 56))(v128, 1, 1, v107);
            v108 = v126;
            sub_10076E25C();
            sub_10076E31C();
            (*(v129 + 8))(v108, v130);
            (*(v104 + 8))(v105, v106);
          }

          sub_10077093C();
        }
      }
    }

    sub_100016F40(0, &qword_1009471F0);
    v109 = sub_10077068C();
    v110 = v135;
    sub_10076F0DC();
    v111 = v140;
    sub_10076F15C();
    v164 = *(v141 + 8);
    (v164)(v110, v150);
    v112 = v138;
    v113 = v137;
    v114 = v88;
    v115 = v139;
    (*(v138 + 16))(v137, v114, v139);
    v116 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v117 = swift_allocObject();
    v118 = v154;
    *(v117 + 16) = v154;
    (*(v112 + 32))(v117 + v116, v113, v115);
    v169 = sub_1002557CC;
    v170 = v117;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_10009AEDC;
    v168 = &unk_10089EC08;
    v119 = _Block_copy(&aBlock);
    v120 = v118;

    v121 = v142;
    sub_10076F0AC();
    aBlock = _swiftEmptyArrayStorage;
    sub_100679DA4(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_100071820(&qword_100945170, &unk_10094E1C0);
    v122 = v144;
    v123 = v147;
    sub_1007712CC();
    sub_10077064C();
    _Block_release(v119);

    (*(v146 + 8))(v122, v123);
    (*(v143 + 8))(v121, v145);
    (v164)(v111, v150);
    (*(v155 + 8))(v158, v156);
    (*(v162 + 8))(v159, v161);
    goto LABEL_48;
  }

  (*(v155 + 8))(v158, v156);
LABEL_43:
  (*(v162 + 8))(v76, v161);
LABEL_48:
  sub_10067A7A8(v160);
}

uint64_t sub_1006798A0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v9 = a3;
  v10 = a1;
  sub_10067AD3C();
  LOBYTE(a1) = v11;

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_100679AC4()
{
  sub_100679B98();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100679B98()
{
  if (!qword_100962F38)
  {
    sub_10075F8EC();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100962F38);
    }
  }
}

void sub_100679C10()
{
  sub_10075F8DC();
  if (v0 <= 0x3F)
  {
    sub_100679C84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100679C84()
{
  if (!qword_100962FC0)
  {
    sub_10075F8DC();
    sub_10075F8BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100962FC0);
    }
  }
}

uint64_t sub_100679D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100679DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100679DEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10075F7FC();
  v5 = sub_10069315C(a1, v4);

  if (v5)
  {
    result = sub_10075F8AC();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_100679E68(uint64_t a1, uint64_t a2)
{
  v55 = sub_10075F8DC();
  v50 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = v45 - v6;
  v7 = sub_10000A5D4(&qword_100963040);
  __chkstk_darwin(v7 - 8);
  v52 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = v45 - v10;
    v12 = 0;
    v46 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v45[0] = v14;
    v45[1] = v50 + 16;
    v53 = (v50 + 32);
    v47 = (v50 + 8);
    while (v18)
    {
      v54 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v46;
      v26 = v49;
      v27 = v50;
      v28 = v55;
      (*(v50 + 16))(v49, *(v46 + 48) + *(v50 + 72) * v20, v55, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = sub_10000A5D4(&qword_100963048);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v52;
      v32(v52, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v48;
      sub_10067B3C4(v33, v48);
      v35 = sub_10000A5D4(&qword_100963048);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v51;
      v38 = v55;
      (*v53)(v51, v34, v55);
      v39 = *(v34 + v36);
      sub_100610638(v37);
      LOBYTE(v36) = v40;
      (*v47)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      sub_100254E0C(v41, v39);
      v43 = v42;

      v18 = v54;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v44 = sub_10000A5D4(&qword_100963048);
        v33 = v52;
        (*(*(v44 - 8) + 56))(v52, 1, 1, v44);
        v54 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v45[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v54 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10067A2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075F8BC();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v7;
  v8 = sub_10075F8DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = sub_10000A5D4(&qword_100963000);
  __chkstk_darwin(v20 - 8);
  v22 = &v43 - v21;
  v24 = &v43 + *(v23 + 56) - v21;
  sub_100679D40(a1, &v43 - v21);
  sub_100679D40(a2, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100679D40(v22, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v9 + 32))(v13, v24, v8);
      v35 = sub_10075F84C();
      v39 = *(v9 + 8);
      v39(v13, v8);
      v39(v19, v8);
      goto LABEL_11;
    }

    v16 = v19;
    goto LABEL_8;
  }

  sub_100679D40(v22, v16);
  v25 = *(sub_10000A5D4(&qword_100962FF8) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v47 + 8))(&v16[v25], v48);
LABEL_8:
    (*(v9 + 8))(v16, v8);
    sub_10000CFBC(v22, &qword_100963000);
    goto LABEL_9;
  }

  (*(v9 + 32))(v45, v24, v8);
  v26 = v47;
  v27 = *(v47 + 32);
  v28 = v48;
  v27(v46, &v16[v25], v48);
  v29 = &v24[v25];
  v30 = v44;
  v27(v44, v29, v28);
  v31 = v45;
  v32 = sub_10075F84C();
  v33 = *(v9 + 8);
  v33(v16, v8);
  if (v32)
  {
    v34 = v46;
    v35 = sub_10075F89C();
    v36 = *(v26 + 8);
    v37 = v30;
    v38 = v48;
    v36(v37, v48);
    v36(v34, v38);
    v33(v31, v8);
LABEL_11:
    sub_10067A7A8(v22);
    return v35 & 1;
  }

  v41 = *(v26 + 8);
  v42 = v48;
  v41(v30, v48);
  v41(v46, v42);
  v33(v31, v8);
  sub_10067A7A8(v22);
LABEL_9:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_10067A7A8(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10067A804(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_10094F4C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  v13 = sub_10075F8EC();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
  *&v4[v14] = sub_1000FDF0C(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource] = 0;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_facetsPresenter] = a1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_objectGraph] = a3;

  sub_100764E6C();
  swift_beginAccess();
  sub_10067AB8C(v11, &v4[v12]);
  swift_endAccess();

  v16 = sub_100764ECC();

  swift_beginAccess();
  *&v4[v14] = v16;

  v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_showDoneButton] = a2;
  v17 = [objc_allocWithZone(UICollectionViewLayout) init];
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v25, "initWithCollectionViewLayout:", v17);

  if (a2)
  {
    v19 = [v18 navigationItem];
    sub_100016F40(0, &qword_100958FF0);
    sub_100016F40(0, &qword_1009641D0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v26.value.super.super.isa = sub_100770F1C();
    v26.is_nil = 0;
    isa = sub_10077054C(UIBarButtonSystemItemDone, v26, v27).super.super.isa;
    [v19 setRightBarButtonItem:isa];
  }

  v21 = [v18 navigationItem];
  v28._object = 0x80000001007F4690;
  v28._countAndFlagsBits = 0xD000000000000019;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1007622EC(v28, v29);
  v22 = sub_10076FF6C();

  [v21 setTitle:v22];

  return v18;
}

uint64_t sub_10067AB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094F4C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067ABFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10067AC3C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  v2 = sub_10075F8EC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
  *(v0 + v3) = sub_1000FDF0C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource) = 0;
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  sub_10077156C();
  __break(1u);
}

void sub_10067AD3C()
{
  v1 = sub_10075F7DC();
  v30 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = sub_10075F8DC();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100963008);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PageFacetsViewController.Item(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
  if (v19)
  {
    v20 = v19;
    sub_10076E74C();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000CFBC(v11, &qword_100963008);
    }

    else
    {
      sub_10067B18C(v11, v18);
      sub_100679D40(v18, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = v31;
      v23 = (v31 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        sub_10067A7A8(v18);
        v24 = *(sub_10000A5D4(&qword_100962FF8) + 48);
        v25 = sub_10075F8BC();
        (*(*(v25 - 8) + 8))(&v15[v24], v25);
        (*v23)(v15, v32);
      }

      else
      {
        (*(v31 + 32))(v8, v15, v32);
        sub_10075F7EC();
        v27 = v29;
        v26 = v30;
        (*(v30 + 104))(v29, enum case for PageFacets.Facet.DisplayType.toggle(_:), v1);
        sub_100679DA4(&qword_100963010, &type metadata accessor for PageFacets.Facet.DisplayType);
        sub_10076FF1C();
        v28 = *(v26 + 8);
        v28(v27, v1);
        v28(v5, v1);
        (*(v22 + 8))(v8, v32);
        sub_10067A7A8(v18);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10067B18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067B1F0()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10067B2B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10067B2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094F4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067B344()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10067B384()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10067B3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100963040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067B43C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094F4C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067B4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A5D4(&qword_100963068);

  return sub_1006771DC(a1, a2, a3);
}

uint64_t sub_10067B578(uint64_t *a1)
{
  v2 = sub_10000A5D4(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10067B5FC()
{
  sub_10000A5D4(&qword_100963060);
  sub_100016F40(0, &qword_10094D1D0);
  return sub_1007705BC();
}

uint64_t sub_10067B698()
{
  v1 = sub_10075F8DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10067B75C()
{
  sub_10075F8DC();

  sub_100677310();
}

unint64_t sub_10067B804()
{
  v0 = sub_10076280C();
  if (v0 >> 62)
  {
    v3 = sub_10077158C();

    if (v3)
    {
      return 1;
    }
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1)
    {
      return 1;
    }
  }

  result = sub_10076288C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:

    return 0;
  }

  v6 = result;
  v7 = sub_10077158C();
  result = v6;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v4 = sub_10076C41C();

  if (v4 >> 62)
  {
    v5 = sub_10077158C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

uint64_t sub_10067B958(char a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_100952188);
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v6 = sub_10076B96C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1007673CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  if ((a1 & 1) != 0 && (sub_10076285C(), v14 = *(v8 + 104), v38 = enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v39 = v8 + 104, v37 = v14, v14(v10), sub_10067BDE8(), v15 = sub_10076FF1C(), v16 = *(v8 + 8), v16(v10, v7), v16(v13, v7), (v15 & 1) == 0))
  {
    sub_10076BB7C();
    sub_10076BBCC();
    v36[25] = v17;
    v36[24] = sub_10076BB5C();
    v18 = sub_10076BBAC();
    v36[22] = v19;
    v36[23] = v18;
    v20 = sub_10076BB6C();
    v36[20] = v21;
    v36[21] = v20;
    v22 = sub_10076BBEC();
    v36[18] = v23;
    v36[19] = v22;
    v24 = sub_10076BA9C();
    v36[16] = v25;
    v36[17] = v24;
    v26 = sub_10076BAAC();
    v36[14] = v27;
    v36[15] = v26;
    v28 = sub_10076BB1C();
    v36[12] = v29;
    v36[13] = v28;
    v30 = sub_10076BB4C();
    v36[10] = v31;
    v36[11] = v30;
    v32 = sub_10076BBBC();
    v36[8] = v33;
    v36[9] = v32;
    v36[7] = sub_10076BB8C();
    v36[6] = sub_10076BA1C();
    v36[5] = v34;
    v36[4] = sub_10076BA2C();
    v36[3] = sub_10076BB3C();
    v36[2] = sub_10076B9FC();
    v36[1] = sub_10076BA6C();
    sub_10076BACC();
    sub_1007627EC();
    sub_10076288C();
    sub_10076280C();
    v37(v13, v38, v7);
    sub_10076286C();
    sub_1007627DC();
    sub_10076289C();
    swift_allocObject();
    return sub_10076287C();
  }

  else
  {
  }

  return v2;
}

unint64_t sub_10067BDE8()
{
  result = qword_10094FC90;
  if (!qword_10094FC90)
  {
    sub_1007673CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FC90);
  }

  return result;
}

char *sub_10067BE40(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductReviewActionsCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView];
  sub_100016F40(0, &qword_100942F10);
  v15 = v14;
  v16 = sub_100770CDC();
  [v15 setBackgroundColor:v16];

  [*&v11[v13] setHidden:1];
  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_productReviewActionsView]];

  return v11;
}

id sub_10067C0F4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewActionsCell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_productReviewActionsView] setFrame:{v4, v6, v8, v10}];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMinX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetMinY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  if (qword_100940940 != -1)
  {
    swift_once();
  }

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView];
  sub_100770A4C();
  return [v11 setFrame:?];
}

id sub_10067C2EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10067C4CC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  v112 = v10;
  v113 = v11;
  __chkstk_darwin(v10);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076048C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StarRatingControl();
  v114.receiver = v4;
  v114.super_class = v18;
  objc_msgSendSuper2(&v114, "drawRect:", a1, a2, a3, a4);
  v19 = UIGraphicsGetCurrentContext();
  v20 = [v4 tintColor];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 CGColor];

    if (v19)
    {
      CGContextSetFillColorWithColor(v19, v22);
    }

    v104 = v13;
    v105 = v22;
    v106 = v19;
    [v5 bounds];
    CGRectGetMidY(v120);
    v24 = [v5 traitCollection];
    v109 = v5;
    if (qword_100941480 != -1)
    {
      swift_once();
    }

    v115.is_nil = qword_1009630B0;
    v103 = qword_1009630B0;
    v115.value._rawValue = 0;
    isa = sub_1007706DC(v115, v23).super.isa;
    v102[1] = sub_100016F40(0, &qword_1009560B0);
    v111 = UIFontTextStyleTitle2;
    v26 = sub_10077098C();
    v27 = enum case for SystemImage.starFill(_:);
    v28 = *(v15 + 104);
    v108 = v15 + 104;
    v28(v17, enum case for SystemImage.starFill(_:), v14);
    v29 = [v26 configurationWithTraitCollection:{isa, v28}];
    v30 = v14;
    v107 = v14;
    v31 = v29;
    v32 = sub_10076046C();

    v110 = *(v15 + 8);
    v110(v17, v30);
    v33 = [v32 imageWithRenderingMode:2];

    [v33 size];
    v34 = [v109 traitCollection];
    v116.value._rawValue = 0;
    LOBYTE(v33) = v103;
    v116.is_nil = v103;
    v35 = sub_1007706DC(v116, v118).super.isa;
    v36 = sub_10077098C();
    v37 = v27;
    v38 = v107;
    v28(v17, v37, v107);
    v39 = [v36 configurationWithTraitCollection:v35];
    v40 = sub_10076046C();

    v110(v17, v38);
    v41 = [v40 imageWithRenderingMode:2];

    v42 = [v109 traitCollection];
    v117.value._rawValue = 0;
    v117.is_nil = v33;
    v43 = sub_1007706DC(v117, v119).super.isa;
    v44 = sub_10077098C();
    v45 = v107;
    (v102[0])(v17, enum case for SystemImage.star(_:), v107);
    v46 = [v44 configurationWithTraitCollection:v43];
    v47 = sub_10076046C();

    v110(v17, v45);
    v110 = [v47 imageWithRenderingMode:2];

    v111 = v41;
    v48 = v41;
    v49 = v109;
    [(NSString *)v48 size];
    v51 = v50;
    v52 = [v49 traitCollection];
    LOBYTE(v42) = sub_10077070C();

    if (v42)
    {
      v121.origin.x = a1;
      v121.origin.y = a2;
      v121.size.width = a3;
      v121.size.height = a4;
      v53.n128_f64[0] = CGRectGetMaxX(v121);
    }

    else
    {
      v53.n128_f64[0] = v51 + 12.0;
      v54.n128_u64[0] = 0;
    }

    v55 = v104;
    v56 = enum case for FloatingPointRoundingRule.down(_:);
    v57 = v112;
    v58 = v113;
    v59 = *(v113 + 104);
    (v59)(v104, enum case for FloatingPointRoundingRule.down(_:), v112, v53, v54);
    sub_100770CAC();
    v61 = v60;
    v63 = v62;
    v64 = *(v58 + 8);
    v113 = v58 + 8;
    v64(v55, v57);
    v65 = OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating;
    if (*&v49[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating])
    {
      v66 = v111;
    }

    else
    {
      v66 = v110;
    }

    [(NSString *)v66 drawAtPoint:v61, v63];
    v67 = [v49 traitCollection];
    v68 = sub_10077070C();

    if (v68)
    {
      v122.origin.x = a1;
      v122.origin.y = a2;
      v122.size.width = a3;
      v122.size.height = a4;
      CGRectGetMaxX(v122);
    }

    v69 = v112;
    v59(v55, v56, v112);
    sub_100770CAC();
    v71 = v70;
    v73 = v72;
    v64(v55, v69);
    if (*&v49[v65] <= 1uLL)
    {
      v74 = v110;
    }

    else
    {
      v74 = v111;
    }

    [(NSString *)v74 drawAtPoint:v71, v73];
    v75 = [v49 traitCollection];
    v76 = sub_10077070C();

    if (v76)
    {
      v123.origin.x = a1;
      v123.origin.y = a2;
      v123.size.width = a3;
      v123.size.height = a4;
      CGRectGetMaxX(v123);
    }

    v77 = v112;
    v59(v55, v56, v112);
    sub_100770CAC();
    v79 = v78;
    v81 = v80;
    v64(v55, v77);
    if (*&v49[v65] <= 2uLL)
    {
      v82 = v110;
    }

    else
    {
      v82 = v111;
    }

    [(NSString *)v82 drawAtPoint:v79, v81];
    v83 = [v49 traitCollection];
    v84 = sub_10077070C();

    if (v84)
    {
      v124.origin.x = a1;
      v124.origin.y = a2;
      v124.size.width = a3;
      v124.size.height = a4;
      CGRectGetMaxX(v124);
    }

    v85 = v112;
    v59(v55, v56, v112);
    sub_100770CAC();
    v87 = v86;
    v89 = v88;
    v64(v55, v85);
    if (*&v49[v65] <= 3uLL)
    {
      v90 = v110;
    }

    else
    {
      v90 = v111;
    }

    [(NSString *)v90 drawAtPoint:v87, v89];
    v91 = [v49 traitCollection];
    v92 = sub_10077070C();

    if (v92)
    {
      v125.origin.x = a1;
      v125.origin.y = a2;
      v125.size.width = a3;
      v125.size.height = a4;
      CGRectGetMaxX(v125);
    }

    v93 = v112;
    v59(v55, v56, v112);
    sub_100770CAC();
    v95 = v94;
    v97 = v96;
    v64(v55, v93);
    v98 = *&v49[v65];
    v100 = v110;
    v99 = v111;
    if (v98 <= 4)
    {
      v101 = v110;
    }

    else
    {
      v101 = v111;
    }

    [(NSString *)v101 drawAtPoint:v95, v97];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10067CF44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 locationInView:v5];
  sub_10067D0D0(v6);
  v7 = *&v5[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = v8;
  if (v7 != v8)
  {
    [v5 setNeedsDisplay];
  }

  return 1;
}

void sub_10067D0D0(double a1)
{
  v2 = v1;
  v4 = sub_10076048C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  if (qword_100941480 != -1)
  {
    swift_once();
  }

  v26.is_nil = qword_1009630B0;
  v26.value._rawValue = 0;
  isa = sub_1007706DC(v26, v9).super.isa;
  sub_100016F40(0, &qword_1009560B0);
  v12 = sub_10077098C();
  (*(v5 + 104))(v8, enum case for SystemImage.starFill(_:), v4);
  v13 = [v12 configurationWithTraitCollection:isa];
  v14 = sub_10076046C();

  (*(v5 + 8))(v8, v4);
  v15 = [v14 imageWithRenderingMode:2];

  [v15 size];
  v17 = v16;

  v18 = (v17 + 12.0) * 5.0;
  v19 = [v2 traitCollection];
  LOBYTE(v15) = sub_10077070C();

  [v2 bounds];
  MidX = CGRectGetMidX(v27);
  v21 = a1 - (MidX - v18 * 0.5);
  v22 = v18 * 0.5 + MidX - a1;
  if ((v15 & 1) == 0)
  {
    v22 = v21;
  }

  v23 = v22 / (v18 / 5.0);
  if (v23 > 5.0)
  {
    v23 = 5.0;
  }

  if (v23 <= 1.0)
  {
    v23 = 1.0;
  }

  v24 = ceil(v23);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v24 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v24 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_10067D634(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_10076FF9C();
    v6 = a1;
    v7 = sub_10076FF6C();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for StarRatingControl();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void *sub_10067D744()
{
  v1 = v0;
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  do
  {
    if (v2 >= 5)
    {
      v4 = &selRef_accessibilitySetStarRatingFive;
      if (v2 != 5)
      {
        v22._object = 0x80000001007F4930;
        v22._countAndFlagsBits = 0xD00000000000001ALL;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        sub_100767D6C(v22, v2, v24);
LABEL_2:

        goto LABEL_3;
      }
    }

    else
    {
      v4 = off_10089EDC0[v2];
    }

    v5 = *v4;
    v23._object = 0x80000001007F4930;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_100767D6C(v23, v2, v25);
    if (!v5)
    {
      goto LABEL_2;
    }

    v20 = type metadata accessor for StarRatingControl();
    v19[0] = v1;
    v6 = v1;
    v7 = sub_10076FF6C();

    v8 = v20;
    if (v20)
    {
      v9 = sub_10000CF78(v19, v20);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin(v9);
      v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_10077165C();
      (*(v10 + 8))(v13, v8);
      sub_10000CD74(v19);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_allocWithZone(UIAccessibilityCustomAction) initWithName:v7 target:v14 selector:v5];

    swift_unknownObjectRelease();
    v16 = v15;
    sub_10077019C();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v3 = v21;
LABEL_3:
    ++v2;
  }

  while (v2 != 6);
  return v3;
}

uint64_t sub_10067DA78(uint64_t a1)
{
  v3 = sub_10076F08C();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F0EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = a1;
  if (v17 != a1)
  {
    [v1 setNeedsDisplay];
    a1 = *&v1[v16];
  }

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating] = a1;
  if (v18 != a1)
  {
    [v1 sendActionsForControlEvents:4096];
  }

  v45._object = 0x80000001007F48C0;
  v45._countAndFlagsBits = 0xD000000000000017;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v19 = sub_1007622EC(v45, v48);
  v21 = v20;
  v46._countAndFlagsBits = 0xD00000000000001DLL;
  v46._object = 0x80000001007F48E0;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v22 = sub_1007622EC(v46, v49);
  v24 = v23;
  aBlock = v19;
  v40 = v21;

  v47._countAndFlagsBits = v22;
  v47._object = v24;
  sub_1007700CC(v47);

  v26 = aBlock;
  v25 = v40;
  sub_100016F40(0, &qword_1009471F0);
  v27 = sub_10077068C();
  sub_10076F0DC();
  sub_10076F15C();
  v33 = *(v9 + 8);
  v33(v11, v8);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  v43 = sub_10067E1DC;
  v44 = v28;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10009AEDC;
  v42 = &unk_10089ED98;
  v29 = _Block_copy(&aBlock);

  sub_10076F0AC();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  v30 = v34;
  v31 = v38;
  sub_1007712CC();
  sub_10077064C();
  _Block_release(v29);

  (*(v37 + 8))(v30, v31);
  (*(v35 + 8))(v7, v36);
  return (v33)(v15, v8);
}

void sub_10067DEE0()
{
  v0 = UIAccessibilityAnnouncementNotification;
  v1 = sub_10076FF6C();
  UIAccessibilityPostNotification(v0, v1);
}

id sub_10067E148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StarRatingControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10067E1A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10067E1E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10067E1FC(char a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941480 != -1)
  {
    swift_once();
  }

  v15.is_nil = qword_1009630B0;
  v15.value._rawValue = 0;
  v7.super.isa = sub_1007706DC(v15, v4).super.isa;
  sub_100016F40(0, &qword_1009560B0);
  v8 = sub_10077098C();
  v9 = &enum case for SystemImage.starFill(_:);
  if ((a1 & 1) == 0)
  {
    v9 = &enum case for SystemImage.star(_:);
  }

  (*(v3 + 104))(v6, *v9, v2);
  v10 = [v8 configurationWithTraitCollection:v7.super.isa];
  v11 = sub_10076046C();

  (*(v3 + 8))(v6, v2);
  v12 = [v11 imageWithRenderingMode:2];

  return v12;
}

void sub_10067E3EC(void *a1)
{
  if (a1)
  {
    [a1 locationInView:v1];
    sub_10067D0D0(v2);
    v4 = OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating;
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = v3;
    if (v5 != v3)
    {
      [v1 setNeedsDisplay];
      v3 = *&v1[v4];
    }

    v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating] = v3;
    if (v6 != v3)
    {

      [v1 sendActionsForControlEvents:4096];
    }
  }
}

char *sub_10067E4A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView]];

  return v18;
}

void sub_10067E734()
{
  v0 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v0 - 8);
  v59 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v48 - v3;
  v5 = sub_10076F7FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v12 = [v9 superview];
  if (!v12)
  {

LABEL_21:

    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  v15 = *&v9[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView];

  v16 = v13;
  v17 = v15;
  sub_10054D6D8(v17, v11, v16);

  v18 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v15) = sub_10072F66C();

  if ((v15 & 1) == 0)
  {

    goto LABEL_21;
  }

  v19 = [v9 viewWithTag:58236912];
  [v19 removeFromSuperview];

  v20 = *&v9[v14];
  v21 = qword_10095D030;
  swift_beginAccess();
  v58 = v20;
  v22 = *&v20[v21];
  v52 = v9;
  v51 = v11;
  v50 = v16;
  if (v22 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v24 = qword_10095D018;
    v25 = v58;
    v49 = v58;

    v64 = v24;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v26 = 0;
    v62 = v22 & 0xFFFFFFFFFFFFFF8;
    v63 = v22 & 0xC000000000000001;
    v61 = (v6 + 48);
    v57 = (v6 + 32);
    v56 = (v6 + 16);
    v55 = (v6 + 56);
    v54 = (v6 + 8);
    v27 = 32;
    v53 = v4;
    while (1)
    {
      if (v63)
      {
        v6 = sub_10077149C();
      }

      else
      {
        if (v26 >= *(v62 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v22 + 8 * v26 + 32);
      }

      v28 = *&v25[v64];
      if (v26 >= *(v28 + 16))
      {
        break;
      }

      v29 = *(v28 + v27);
      sub_10076BACC();
      if ((*v61)(v4, 1, v5) == 1)
      {

        sub_10000CFBC(v4, &qword_1009492E0);
      }

      else
      {
        v30 = v60;
        (*v57)(v60, v4, v5);
        v31 = v29;
        [v31 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v40 = [objc_opt_self() blueColor];
        v41 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
        v42 = sub_100116430(v40, v33, v35, v37, v39);
        v43 = i;
        v44 = v22;
        v45 = v59;
        (*v56)(v59, v30, v5);
        (*v55)(v45, 0, 1, v5);
        sub_100116730(v45);
        sub_10000CFBC(v45, &qword_1009492E0);
        v46 = [v31 viewWithTag:58236912];
        [v46 removeFromSuperview];

        v22 = v44;
        i = v43;
        v4 = v53;
        [v31 addSubview:v42];

        v47 = v30;
        v25 = v58;
        (*v54)(v47, v5);
      }

      ++v26;

      v27 += 16;
      if (i == v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_22:
}

uint64_t type metadata accessor for ArcadeDownloadPackCollectionViewCell()
{
  result = qword_100963128;
  if (!qword_100963128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10067EE40()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10067EF38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10067EFF0()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_10067F04C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_10067F10C())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10067F25C;
}

uint64_t sub_10067F1AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10067F1E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10067F21C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10067F264()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

void sub_10067F350(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100689B40, v8);
}

uint64_t sub_10067F424()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100963140);
  sub_10000A61C(v4, qword_100963140);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10067F590()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_100963158);
  sub_10000A61C(v4, qword_100963158);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

char *sub_10067F6E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_allowBatchUpdates) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_flowPreviewing) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_isPresentingForgotSignInDetails) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_pendingRefresh) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_compoundScrollObserver;
  v6 = objc_allocWithZone(sub_1007666AC());
  *(v2 + v5) = sub_10076669C();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating) = 0;
  v7 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_activityIndicator) = v7;
  v8 = [objc_allocWithZone(UIRefreshControl) init];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_refreshControl) = v8;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_presenter) = a1;
  sub_10076615C();

  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_impressionsCoordinator) = sub_10076814C();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_10007689C(v9, a2);

  v34[3] = sub_10076252C();
  v34[4] = &protocol witness table for BasePresenter;
  v34[0] = a1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  v12 = v10;
  sub_1004924A0(v34, v10 + v11);
  swift_endAccess();
  v12[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v13 = &selRef_initWithTabBarSystemItem_tag_;
  v14 = [v12 navigationItem];
  [v14 setLargeTitleDisplayMode:2];

  sub_100689970(&qword_100963208, v15, type metadata accessor for AccountViewController);
  v16 = v12;
  sub_1007624AC();
  v17 = [v16 navigationItem];
  sub_1007624BC();
  if (v18)
  {
    v19 = sub_10076FF6C();
    v13 = &selRef_initWithTabBarSystemItem_tag_;
  }

  else
  {
    v19 = 0;
  }

  [v17 setTitle:v19];

  v20 = [v16 v13[159]];
  v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v16[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_activityIndicator]];
  [v20 setLeftBarButtonItem:v21];

  v22 = [v16 v13[159]];
  v23 = [v22 leftBarButtonItem];

  if (v23)
  {
    v24 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating;
    swift_beginAccess();
    [v23 setHidden:(v16[v24] & 1) == 0];
  }

  v25 = *&v16[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_refreshControl];
  v26 = v16;
  [v25 addTarget:v26 action:"refreshControlValueChanged" forControlEvents:4096];
  v27 = sub_100689970(&qword_100963210, 255, &type metadata accessor for AccountPresenter);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a1;
  v29[4] = v27;

  v30 = sub_1006885AC(a1, v26, sub_1002C15B8, v29, a2);

  v31 = *&v26[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_flowPreviewing];
  *&v26[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_flowPreviewing] = v30;

  v32 = *&v26[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_compoundScrollObserver];

  sub_10076668C();

  return v26;
}

void sub_10067FC3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10000A5D4(&qword_1009632C8);
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for AccountViewController();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor:v9];

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v8 systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 setAlwaysBounceVertical:1];

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setRefreshControl:*&v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_refreshControl]];

  v17 = [v1 collectionView];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setDelegate:v1];

  v19 = sub_100680F18();
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource] = v19;

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = ObjectType;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v41 = sub_1006899F0;
  v42 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BAFEC;
  v40 = &unk_10089F298;
  v27 = _Block_copy(aBlock);

  v28 = [v26 initWithSectionProvider:v27];
  _Block_release(v27);

  [v22 setCollectionViewLayout:v28];

  sub_10076242C();
  v29 = sub_100016F40(0, &qword_1009471F0);
  v30 = sub_10077068C();
  v40 = v29;
  v41 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v30;
  sub_10000A5D4(&qword_1009632D0);
  sub_1006899F8();
  sub_10076F46C();

  (*(v2 + 8))(v4, v38);
  sub_10000CD74(aBlock);
  sub_100760C9C();
  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_flowPreviewing];
  if (!v31)
  {
    return;
  }

  v32 = objc_allocWithZone(UIContextMenuInteraction);
  v33 = v31;
  v34 = [v32 initWithDelegate:v33];
  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v36 = v35;
  [v35 addInteraction:v34];
}

void *sub_1006803BC(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v46 = a1;
  v2 = sub_10076E82C();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076E83C();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100963278);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_10000A5D4(&qword_100963280);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_10076E81C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10076E87C();
  v17 = *(v47 - 8);
  v18 = __chkstk_darwin(v47);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v13, v18);
  sub_10076E84C();
  v21 = sub_10076E80C();
  sub_10076E63C();
  v21(v51, 0);
  v22 = sub_10076E80C();
  sub_10076E64C();
  v22(v51, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v24 = Strong, v25 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource), v26 = v25, v24, !v25))
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_10;
  }

  sub_1007699BC();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_10:
    sub_10000CFBC(v8, &qword_100963278);
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_getKeyPath();
  sub_10076F49C();

  v27 = v50;
  if (!v50)
  {
    goto LABEL_12;
  }

  v28 = v49;

  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  }

  else
  {
LABEL_12:
    v30 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v41 + 104))(v40, *v30, v42);
  sub_10076E86C();
  swift_getKeyPath();
  sub_10076F49C();

  v35 = v50;
  if (!v50)
  {
    goto LABEL_18;
  }

  v36 = v49;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = &enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:);
  }

  else
  {
LABEL_18:
    v38 = &enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:);
  }

  (*(v44 + 104))(v43, *v38, v45);
  sub_10076E85C();

  sub_10076E7FC();
  (*(v10 + 8))(v12, v9);
LABEL_11:
  sub_100016F40(0, &unk_1009632E0);
  v31 = sub_10077097C();
  [v31 contentInsets];
  v33 = v32;
  [v31 contentInsets];
  [v31 setContentInsets:{v33, 16.0}];
  (*(v17 + 8))(v20, v47);
  return v31;
}

id sub_100680A1C()
{
  v0 = sub_10000A5D4(&qword_100950548);
  __chkstk_darwin(v0 - 8);
  v2 = &aBlock[-1] - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      sub_10076999C();

      v7 = sub_10000A5D4(&unk_100946710);
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v2, 1, v7) == 1)
      {
        sub_10000CFBC(v2, &qword_100950548);
      }

      else
      {
        sub_10076F4AC();
        (*(v8 + 8))(v2, v7);
        sub_10000A5D4(&qword_1009575A0);
        sub_10076247C();
        if (swift_dynamicCast())
        {
          v9 = aBlock[9];
          swift_beginAccess();
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = v10;

            LOBYTE(v11) = sub_1007623EC();

            if (v11)
            {
              v25._object = 0x80000001007F4BF0;
              v25._countAndFlagsBits = 0xD000000000000015;
              v26._countAndFlagsBits = 0;
              v26._object = 0xE000000000000000;
              sub_1007622EC(v25, v26);
              v12 = swift_allocObject();
              swift_beginAccess();
              v13 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v14 = swift_allocObject();
              *(v14 + 16) = v12;
              *(v14 + 24) = v9;

              v15 = sub_10076FF6C();

              aBlock[4] = sub_100689B00;
              aBlock[5] = v14;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10067F350;
              aBlock[3] = &unk_10089F310;
              v16 = _Block_copy(aBlock);
              v17 = [objc_opt_self() contextualActionWithStyle:1 title:v15 handler:v16];

              _Block_release(v16);

              sub_10000A5D4(&unk_100942870);
              v18 = swift_allocObject();
              *(v18 + 16) = xmmword_1007841E0;
              *(v18 + 32) = v17;
              sub_100016F40(0, &unk_1009632F0);
              v19 = v17;
              isa = sub_1007701AC().super.isa;

              v21 = [objc_opt_self() configurationWithActions:isa];

              [v21 setPerformsFirstActionWithFullSwipe:0];

              return v21;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100680E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    sub_10076251C();
  }

  return a3(0);
}

id sub_100680F18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_100963250);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v69 = v3;
  v70 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = v64 - v5;
  v6 = sub_10000A5D4(&qword_100963258);
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v67 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v7;
  __chkstk_darwin(v8);
  v86 = v64 - v9;
  v81 = sub_10000A5D4(&unk_100963260);
  v73 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v10;
  __chkstk_darwin(v11);
  v13 = v64 - v12;
  v80 = sub_10000A5D4(&qword_100963060);
  v72 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = v64 - v16;
  __chkstk_darwin(v17);
  v19 = v64 - v18;
  v65 = v20;
  __chkstk_darwin(v21);
  v23 = v64 - v22;
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_10094D1D0);
  v77 = v23;
  sub_10077059C();
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v19;
  sub_10077059C();
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AccountActionSectionFooterView();
  v79 = v13;
  sub_10077059C();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = ObjectType;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  type metadata accessor for AccountDetailCollectionViewCell();
  sub_10000A5D4(&qword_1009575A0);
  v27 = v86;
  sub_10077058C();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  type metadata accessor for UpdatesLockupCollectionViewCell();
  v30 = v87;
  sub_10077058C();
  result = [v1 collectionView];
  ObjectType = result;
  if (result)
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v82;
    v34 = *(v82 + 16);
    v35 = v67;
    v64[1] = v1;
    v36 = v83;
    v34(v67, v27);
    v37 = v84;
    v38 = v85;
    v39 = v70;
    (*(v84 + 16))(v70, v30, v85);
    v40 = v33;
    v41 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v42 = (v66 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v32;
    (*(v40 + 32))(v43 + v41, v35, v36);
    (*(v37 + 32))(v43 + v42, v39, v38);
    v44 = objc_allocWithZone(sub_10000A5D4(&qword_100963270));
    ObjectType = sub_1007699EC();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v72;
    v46 = *(v72 + 16);
    v47 = v68;
    v48 = v80;
    v46(v68, v77, v80);
    v49 = v73;
    (*(v73 + 16))(v76, v79, v81);
    v46(v75, v78, v48);
    v50 = *(v45 + 80);
    v51 = (v50 + 16) & ~v50;
    v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v49 + 80) + v52 + 8) & ~*(v49 + 80);
    v54 = (v71 + v50 + v53) & ~v50;
    v55 = swift_allocObject();
    v56 = *(v45 + 32);
    v57 = v47;
    v58 = v80;
    v56(v55 + v51, v57, v80);
    *(v55 + v52) = v70;
    v59 = v55 + v53;
    v60 = v81;
    (*(v49 + 32))(v59, v76, v81);
    v61 = v58;
    v56(v55 + v54, v75, v58);
    v62 = ObjectType;

    sub_10076E73C();

    (*(v84 + 8))(v87, v85);
    (*(v82 + 8))(v86, v83);
    (*(v49 + 8))(v79, v60);
    v63 = *(v45 + 8);
    v63(v78, v61);
    v63(v77, v61);

    return v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100681840(void *a1)
{
  v2 = sub_10000A5D4(&qword_100963278);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10076E58C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_10076E4EC();
    v14 = *&v13[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
    v22 = a1;
    if (v14)
    {
      v15 = v14;
      sub_10075E0AC();
      sub_1007699BC();
    }

    else
    {
      v16 = sub_10000A5D4(&qword_100963280);
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    sub_100016E2C(v7, v4, &qword_100963278);
    v17 = sub_10000A5D4(&qword_100963280);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) == 1)
    {
      sub_10000CFBC(v4, &qword_100963278);
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      (*(v18 + 8))(v4, v17);
    }

    sub_10076E56C();
    v23[3] = v8;
    v23[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_10000DB7C(v23);
    (*(v9 + 16))(v19, v11, v8);
    v20 = v22;
    sub_1007707FC();
    [v13 pageMarginInsets];
    [v20 setLayoutMargins:?];

    sub_10000CFBC(v7, &qword_100963278);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100681BB0(void *a1)
{
  v2 = sub_10076E50C();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009632A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = sub_10000A5D4(&qword_100963278);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = sub_10076E58C();
  v46 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v44 = v19;
    sub_10076E4DC();
    v24 = *&v23[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
    v45 = a1;
    v43 = v23;
    if (v24)
    {
      v25 = v24;
      sub_10075E0AC();
      sub_1007699BC();
    }

    else
    {
      v26 = sub_10000A5D4(&qword_100963280);
      (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    }

    sub_100016E2C(v18, v15, &qword_100963278);
    v27 = sub_10000A5D4(&qword_100963280);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v15, 1, v27) == 1)
    {
      sub_10000CFBC(v15, &qword_100963278);
      v30 = sub_1007624CC();
      (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
      sub_10000CFBC(v9, &unk_1009632A0);
    }

    else
    {
      v39 = v29;
      sub_10076F4AC();
      (*(v28 + 8))(v15, v27);
      sub_1007624FC();

      v31 = sub_1007624CC();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v9, 0, 1, v31);
      sub_100688D54(v9, v6);
      if ((*(v32 + 88))(v6, v31) == enum case for AccountPresenter.Section.Identifier.userInfo(_:))
      {
        (*(v41 + 104))(v40, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v42);
        v33 = sub_10076E53C();
        sub_10076E52C();
        v33(v47, 0);
      }

      else
      {
        (*(v32 + 8))(v6, v31);
      }

      v29 = v39;
    }

    sub_100016E2C(v18, v12, &qword_100963278);
    if (v29(v12, 1, v27) == 1)
    {
      sub_10000CFBC(v12, &qword_100963278);
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      (*(v28 + 8))(v12, v27);
    }

    v34 = v45;
    sub_10076E56C();
    v35 = v44;
    v47[3] = v44;
    v47[4] = &protocol witness table for UIListContentConfiguration;
    v36 = sub_10000DB7C(v47);
    v37 = v46;
    (*(v46 + 16))(v36, v21, v35);
    sub_1007707FC();
    v38 = v43;
    [v43 pageMarginInsets];
    [v34 setLayoutMargins:?];

    sub_10000CFBC(v18, &qword_100963278);
    return (*(v37 + 8))(v21, v35);
  }

  return result;
}

uint64_t sub_100682244(char *a1)
{
  v2 = sub_10000A5D4(&qword_100963278);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
    if (v13)
    {
      v14 = v13;
      sub_10075E0AC();
      sub_1007699BC();
    }

    else
    {
      v15 = sub_10000A5D4(&qword_100963280);
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    }

    sub_100016E2C(v10, v7, &qword_100963278);
    v16 = sub_10000A5D4(&qword_100963280);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (v18(v7, 1, v16) == 1)
    {
      sub_10000CFBC(v7, &qword_100963278);
      v19 = 0uLL;
    }

    else
    {
      swift_getKeyPath();
      v27 = v4;
      sub_10076F49C();
      v4 = v27;

      v26 = v28;
      (*(v17 + 8))(v7, v16);
      v19 = v26;
    }

    *&a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text] = v19;

    sub_100700518();
    sub_100016E2C(v10, v4, &qword_100963278);
    if (v18(v4, 1, v16) == 1)
    {
      sub_10000CFBC(v4, &qword_100963278);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      v22 = v28;
      if (v28)
      {
        v23 = *(&v28 + 1);
        v21 = swift_allocObject();
        *(v21 + 16) = v22;
        *(v21 + 24) = v23;
        v20 = sub_100098284;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      (*(v17 + 8))(v4, v16);
    }

    v24 = &a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction];
    v25 = *&a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction];
    *v24 = v20;
    v24[1] = v21;
    sub_1000167E0(v25);
    [v12 pageMarginInsets];
    [a1 setLayoutMargins:?];
    a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_isCentered] = 1;
    sub_100700518();

    return sub_10000CFBC(v10, &qword_100963278);
  }

  return result;
}

uint64_t sub_100682660@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_10076250C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_100071910;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1006826D0()
{
  v0 = sub_10000A5D4(&qword_100950548);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
  v6 = v5;

  if (!v5)
  {
    goto LABEL_10;
  }

  sub_1007699AC();

  v7 = sub_10000A5D4(&unk_100946710);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10000CFBC(v2, &qword_100950548);
    goto LABEL_10;
  }

  sub_10076F4AC();
  (*(v8 + 8))(v2, v7);
  sub_100012498(v15, v16);
  sub_10000A570(v16, v15);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007623CC();
  if (!swift_dynamicCast())
  {
    sub_10076247C();
    if (swift_dynamicCast())
    {

      sub_10000A570(v16, v14);
      type metadata accessor for UpdatesLockupCollectionViewCell();
      v10 = sub_1007705AC();
      sub_10000CFBC(v14, &unk_10094F720);
      goto LABEL_8;
    }

    while (1)
    {
LABEL_10:
      sub_10077156C();
      __break(1u);
    }
  }

  sub_10000A570(v16, v14);
  type metadata accessor for AccountDetailCollectionViewCell();
  v9 = sub_1007705AC();
  sub_10000CFBC(v14, &unk_10094F720);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v10 = v9;
  sub_10077145C(19);

  v13[1] = 0xD000000000000011;
  v13[2] = 0x80000001007F4B80;
  sub_10000CF78(v16, v16[3]);
  sub_10076F57C();
  v17._countAndFlagsBits = sub_1007713CC();
  sub_1007700CC(v17);

  sub_100016C74(v14);
  v11 = sub_10076FF6C();

  [v10 setAccessibilityIdentifier:v11];

LABEL_8:
  sub_10000CD74(v15);
  sub_10000CD74(v16);
  return v10;
}

uint64_t sub_100682ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[2] = a7;
  v32 = a1;
  v11 = sub_10000A5D4(&qword_100963278);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = sub_10000A5D4(&qword_100963280);
  v31 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  if (sub_10076FF9C() == a2 && v17 == a3)
  {

    goto LABEL_13;
  }

  v30[1] = a8;
  v19 = sub_10077167C();

  if (v19)
  {
LABEL_13:
    sub_100016F40(0, &qword_10094D1D0);
    return sub_1007705BC();
  }

  if (sub_10076FF9C() == a2 && v20 == a3)
  {
  }

  else
  {
    v22 = sub_10077167C();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource), v26 = Strong, v27 = v25, v26, !v25))
  {
    (*(v31 + 56))(v13, 1, 1, v14);
    goto LABEL_21;
  }

  sub_10075E0AC();
  sub_1007699BC();

  v28 = v31;
  if ((*(v31 + 48))(v13, 1, v14) == 1)
  {
LABEL_21:
    sub_10000CFBC(v13, &qword_100963278);
    goto LABEL_13;
  }

  (*(v28 + 32))(v16, v13, v14);
  swift_getKeyPath();
  sub_10076F49C();

  if (!v33)
  {
    (*(v28 + 8))(v16, v14);
    goto LABEL_13;
  }

  sub_1000167E0(v33);
  type metadata accessor for AccountActionSectionFooterView();
  v29 = sub_1007705BC();
  (*(v28 + 8))(v16, v14);
  return v29;
}

uint64_t sub_100682E70(char *a1, uint64_t a2, uint64_t a3)
{
  v174 = sub_1007623AC();
  v171 = *(v174 - 8);
  __chkstk_darwin(v174);
  v155 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v154 = &v147 - v7;
  v8 = sub_10000A5D4(&unk_100963288);
  __chkstk_darwin(v8 - 8);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v162 = &v147 - v12;
  __chkstk_darwin(v13);
  v165 = &v147 - v14;
  __chkstk_darwin(v15);
  v161 = &v147 - v16;
  __chkstk_darwin(v17);
  v170 = &v147 - v18;
  __chkstk_darwin(v19);
  v164 = &v147 - v20;
  v21 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v21 - 8);
  v173 = (&v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v25 = (&v147 - v24);
  __chkstk_darwin(v26);
  v172 = (&v147 - v27);
  __chkstk_darwin(v28);
  v169 = &v147 - v29;
  v30 = sub_1007622FC();
  v167 = *(v30 - 8);
  v168 = v30;
  __chkstk_darwin(v30);
  v166 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_10076048C();
  v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v152 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10076BF6C();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000A5D4(&qword_100963298);
  __chkstk_darwin(v34 - 8);
  v36 = &v147 - v35;
  v37 = sub_10076232C();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v163 = &v147 - v42;
  sub_10000A570(a3, v177);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007623CC();
  result = swift_dynamicCast();
  if (result)
  {
    v151 = v25;
    v44 = v176;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v150 = v37;
    v157 = Strong;
    [Strong pageMarginInsets];
    [a1 setLayoutMargins:?];
    v46 = sub_10076231C();
    v47 = &a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
    *v47 = v46;
    v47[8] = v48 & 1;
    v49 = sub_10076238C();
    v50 = a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_disabled];
    a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_disabled] = v49 & 1;
    v148 = v10;
    v175 = v44;
    if ((v49 & 1) != v50)
    {
      v51 = v49;
      [*&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel] setEnabled:(v49 & 1) == 0];
      [*&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel] setEnabled:(v51 & 1) == 0];
      [a1 setUserInteractionEnabled:(v51 & 1) == 0];
      [a1 setNeedsDisplay];
    }

    sub_10076236C();
    v52 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    if (v53)
    {
      v54 = sub_10076FF6C();
    }

    else
    {
      v54 = 0;
    }

    v149 = v52;
    [v52 setText:v54];

    [a1 setNeedsLayout];
    sub_10076239C();
    v55 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
    if (v56)
    {
      v57 = sub_10076FF6C();
    }

    else
    {
      v57 = 0;
    }

    v58 = v38;
    v59 = v150;
    [v55 setText:v57];

    if (sub_1003D3078())
    {
      [a1 setNeedsLayout];
    }

    sub_10076237C();
    v60 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel];
    if (v61)
    {
      v62 = sub_10076FF6C();
    }

    else
    {
      v62 = 0;
    }

    [v60 setText:v62];

    v63 = sub_10076234C();
    v64 = a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
    a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = v63 & 1;
    if ((v63 & 1) != v64)
    {
      [a1 setNeedsLayout];
    }

    sub_10076235C();
    v65 = (*(v38 + 48))(v36, 1, v59);
    v66 = v171;
    v67 = v169;
    if (v65 == 1)
    {
      sub_10000CFBC(v36, &qword_100963298);
    }

    else
    {
      v68 = v163;
      (*(v38 + 32))();
      (*(v38 + 16))(v40, v68, v59);
      v69 = (*(v38 + 88))(v40, v59);
      if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.image(_:))
      {
        (*(v38 + 96))(v40, v59);
        v70 = *v40;
        v71 = *(v40 + 3);
        v72 = v70;
        sub_10075FCAC();
        [a1 setNeedsLayout];
        sub_10075FD0C();
        sub_10075FBEC();
        a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 1;
        v73 = &a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v73 = v71;
        v73[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.unadorned(_:), v160);
        sub_10075FCCC();
        sub_1007638EC();
        v74 = [objc_opt_self() clearColor];
        sub_1007638DC();

        (*(v38 + 8))(v68, v59);
      }

      else if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.profileImage(_:))
      {
        (*(v38 + 96))(v40, v59);
        v75 = *v40;
        v178.width = 56.0;
        v178.height = 56.0;
        UIGraphicsBeginImageContextWithOptions(v178, 0, 0.0);
        [v75 drawInRect:{0.0, 0.0, 56.0, 56.0}];
        v76 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v77 = v38;
        v78 = v76;
        sub_10075FCAC();
        [a1 setNeedsLayout];

        sub_10075FBEC();
        a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v79 = &a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v79 = 0x4030000000000000;
        v79[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.round(_:), v160);
        sub_10075FCCC();
        v80 = [a1 traitCollection];
        sub_10076E20C();

        sub_1007638EC();
        v81 = [objc_opt_self() separatorColor];
        sub_1007638DC();

        (*(v77 + 8))(v163, v59);
      }

      else
      {
        if (v69 != enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.systemImage(_:))
        {
LABEL_73:
          result = sub_10077166C();
          __break(1u);
          return result;
        }

        (*(v38 + 96))(v40, v59);
        v82 = v153;
        v83 = v152;
        (*(v153 + 32))();
        sub_10075FBEC();
        a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v84 = &a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v84 = 0x4026000000000000;
        v84[8] = 0;
        sub_1007638EC();
        v85 = [objc_opt_self() clearColor];
        sub_1007638DC();
        v86 = [objc_opt_self() configurationWithPointSize:48.0];
        v87 = v83;
        v88 = sub_10076046C();

        v89 = v88;
        sub_10075FCAC();
        [a1 setNeedsLayout];

        (*(v82 + 8))(v87, v156);
        (*(v58 + 8))(v163, v59);
      }
    }

    v90 = v166;
    sub_10076230C();
    v91 = (*(v167 + 88))(v90, v168);
    v92 = v174;
    v93 = v170;
    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.action(_:))
    {
      v94 = [v157 collectionView];
      if (v94)
      {
        v95 = v94;
        v96 = [v94 tintColor];

        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.primary(_:))
    {
      sub_100016F40(0, &qword_100942F10);
      v97 = sub_100770CFC();
    }

    else
    {
      if (v91 != enum case for AccountPresenter.AccountDetailItem.TitleStyle.secondary(_:))
      {
LABEL_72:
        sub_10077156C();
        __break(1u);
        goto LABEL_73;
      }

      sub_100016F40(0, &qword_100942F10);
      v97 = sub_100770D1C();
    }

    v96 = v97;
LABEL_35:
    [v149 setTextColor:v96];

    v98 = v164;
    sub_1007623BC();
    v99 = (v66 + 48);
    v100 = *(v66 + 48);
    if (v100(v98, 1, v92) == 1)
    {
      sub_10000CFBC(v98, &unk_100963288);
      v101 = type metadata accessor for Accessory();
      (*(*(v101 - 8) + 56))(v67, 1, 1, v101);
    }

    else
    {
      sub_100684480(v67);
      (*(v66 + 8))(v98, v92);
    }

    v102 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph;
    v103 = v157;
    v104 = *&v157[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];

    v168 = v103;
    sub_1003D3450(v67, v104);

    sub_10000CFBC(v67, &qword_10094BB50);
    v105 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView;
    v106 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView];
    if (!v106)
    {
      goto LABEL_52;
    }

    v107 = v106;
    sub_1007623BC();
    if (v100(v93, 1, v92) == 1)
    {
      sub_10000CFBC(v93, &unk_100963288);
      v108 = type metadata accessor for Accessory();
      (*(*(v108 - 8) + 56))(v172, 1, 1, v108);
    }

    else
    {
      v109 = v93;
      v110 = v172;
      sub_100684480(v172);
      (*(v66 + 8))(v109, v92);
      v111 = type metadata accessor for Accessory();
      if ((*(*(v111 - 8) + 48))(v110, 1, v111) != 1)
      {
        v112 = 0;
LABEL_44:
        sub_10000CFBC(v172, &qword_10094BB50);
        [v107 setHidden:v112];

        v113 = *&a1[v105];
        if (v113)
        {
          v114 = v113;
          v115 = v161;
          sub_1007623BC();
          if (v100(v115, 1, v92) == 1)
          {
            sub_10000CFBC(v115, &unk_100963288);
            v116 = 0;
          }

          else
          {
            v117 = v154;
            (*(v66 + 16))(v154, v115, v92);
            if ((*(v66 + 88))(v117, v92) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
            {
              (*(v66 + 96))(v117, v92);
              v116 = *(v117 + 3);

              v118 = v66;
              v119 = v92;
              (*(v118 + 8))(v161, v92);
            }

            else
            {
              v120 = *(v66 + 8);
              v119 = v92;
              v120(v117, v92);
              v116 = 0;
              v120(v161, v92);
            }

            v92 = v119;
            v66 = v171;
          }

          [v114 setTintColor:v116];
        }

LABEL_52:
        v121 = v165;
        sub_10076233C();
        if (v100(v121, 1, v92) == 1)
        {
          sub_10000CFBC(v121, &unk_100963288);
          v122 = type metadata accessor for Accessory();
          v123 = v151;
          (*(*(v122 - 8) + 56))(v151, 1, 1, v122);
        }

        else
        {
          v124 = v151;
          sub_100684480(v151);
          v123 = v124;
          (*(v66 + 8))(v121, v92);
        }

        v125 = v168;
        v126 = *&v157[v102];

        sub_1003D3880(v123, v126);

        sub_10000CFBC(v123, &qword_10094BB50);
        v127 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView;
        v128 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
        if (!v128)
        {
LABEL_68:
        }

        v129 = v100;
        v130 = v66;
        v131 = v128;
        v132 = v162;
        sub_10076233C();
        v172 = v99;
        if (v129(v132, 1, v92) == 1)
        {
          sub_10000CFBC(v132, &unk_100963288);
          v133 = type metadata accessor for Accessory();
          (*(*(v133 - 8) + 56))(v173, 1, 1, v133);
          v134 = v130;
        }

        else
        {
          v135 = v132;
          v136 = v173;
          sub_100684480(v173);
          v134 = v130;
          (*(v130 + 8))(v135, v92);
          v137 = type metadata accessor for Accessory();
          v138 = v136;
          v125 = v168;
          if ((*(*(v137 - 8) + 48))(v138, 1, v137) != 1)
          {
            v139 = 0;
LABEL_61:
            sub_10000CFBC(v173, &qword_10094BB50);
            [v131 setHidden:v139];

            v140 = *&a1[v127];
            v141 = v174;
            if (v140)
            {
              v142 = v140;
              v143 = v148;
              sub_10076233C();
              if (v129(v143, 1, v141) == 1)
              {
                sub_10000CFBC(v143, &unk_100963288);
                v144 = 0;
              }

              else
              {
                v145 = v155;
                (*(v134 + 16))(v155, v143, v141);
                if ((*(v134 + 88))(v145, v141) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
                {
                  (*(v134 + 96))(v145, v141);
                  v144 = *(v145 + 3);

                  (*(v134 + 8))(v143, v141);
                }

                else
                {
                  v146 = *(v134 + 8);
                  v146(v145, v141);
                  v144 = 0;
                  v146(v143, v141);
                }
              }

              [v142 setTintColor:v144];
            }

            goto LABEL_68;
          }
        }

        v139 = 1;
        goto LABEL_61;
      }
    }

    v112 = 1;
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_100684480@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1007623AC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.badge(_:) || v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.label(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = v8[1];
    *a1 = *v8;
    a1[1] = v10;
    v11 = type metadata accessor for Accessory();
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
  {
    (*(v5 + 96))(v8, v4);
    v12 = *v8;
    v13 = v8[3];
    v19 = *(v8 + 1);

    *a1 = v12;
    *(a1 + 1) = v19;
    v11 = type metadata accessor for Accessory();
    goto LABEL_6;
  }

  v15 = enum case for AccountPresenter.AccountDetailItem.Accessory.chevron(_:);
  v16 = v9;
  v17 = type metadata accessor for Accessory();
  v18 = v17;
  if (v16 == v15)
  {
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100684770(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a3, v42);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076247C();
  if (swift_dynamicCast())
  {
    v9 = v41;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v40 = a1;
      if (qword_100941488 != -1)
      {
        swift_once();
      }

      v12 = sub_10076D9AC();
      sub_10000A61C(v12, qword_100963140);
      v13 = v11;
      sub_10076D17C();
      sub_10076D40C();
      v15 = v14;

      v16 = *(v6 + 8);
      v16(v8, v5);
      [v13 pageMarginInsets];
      v18 = v17;
      v19 = v13;
      sub_10076D17C();
      sub_10076D40C();
      v21 = v20;

      v16(v8, v5);
      [v19 pageMarginInsets];
      v23 = v22;
      v24 = sub_10076246C();
      v25 = *&v19[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
      v26 = v19;

      v27 = [v26 traitCollection];
      v28 = [v27 horizontalSizeClass];

      if (v28 == 1)
      {
        v29 = sub_10076244C();
      }

      else
      {
        v29 = 1;
      }

      v30 = v40;
      v31 = [v26 snapshotPageTraitEnvironment];

      sub_1004C09F0(v24, v25, v29 & 1, 0, v31, v15, v18, v21, v23);

      swift_unknownObjectRelease();
      v32 = *&v30[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v9;
      *(v34 + 24) = v33;
      v35 = (v32 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
      v36 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
      *v35 = sub_100688CE8;
      v35[1] = v34;
      swift_retain_n();

      sub_1000167E0(v36);
      v37 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton);

      [v37 setUserInteractionEnabled:1];

      sub_100016F40(0, &qword_100942F10);
      v38 = sub_100770D7C();
      [v30 setBackgroundColor:v38];
    }

    else
    {
    }
  }
}

uint64_t sub_100684BC0()
{
  v0 = sub_10076245C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 horizontalSizeClass];

    v5 = v4 == 1;
  }

  else
  {
    v5 = 1;
  }

  v0(v5);
}

void sub_100684C7C(void *a1)
{
  v3 = sub_10000A5D4(&qword_100950548);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
  if (v6)
  {
    v7 = v6;
    sub_10076999C();

    v8 = sub_10000A5D4(&unk_100946710);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_10000CFBC(v5, &qword_100950548);
    }

    else
    {
      sub_10076F4AC();
      (*(v9 + 8))(v5, v8);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076249C();
      if (swift_dynamicCast())
      {
        sub_1007623FC();
        isa = sub_10075E02C().super.isa;
        [a1 deselectItemAtIndexPath:isa animated:1];
      }
    }
  }
}

uint64_t sub_100684F94(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1006850B0(void *a1, uint64_t a2)
{
  v61 = a1;
  v4 = sub_10076F7CC();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100950548);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_10076F7FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v49 - v13;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v17 - 8);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v49 - v20;
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  __chkstk_darwin(v24);
  v25 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_presenter);
  v60 = a2;
  v28 = &v49 - v27;
  sub_10076248C();
  sub_100016E2C(v28, v23, &qword_1009492E0);
  v29 = *(v10 + 48);
  v30 = v29(v23, 1, v9);
  v57 = v10;
  v59 = v9;
  v53 = v26;
  if (v30 == 1)
  {
    sub_10000CFBC(v23, &qword_1009492E0);
    v31 = v61;
  }

  else
  {
    (*(v10 + 32))(v16, v23, v9);
    sub_100760C8C();
    v31 = v61;
    [v61 frame];
    sub_10076613C();

    (*(v10 + 8))(v16, v9);
  }

  v32 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
  if (!v32)
  {
    return sub_10000CFBC(v28, &qword_1009492E0);
  }

  v33 = v29;
  v34 = v32;
  sub_10076999C();

  v35 = sub_10000A5D4(&unk_100946710);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {
    sub_10000CFBC(v8, &qword_100950548);
    return sub_10000CFBC(v28, &qword_1009492E0);
  }

  v38 = v28;
  sub_10076F4AC();
  (*(v36 + 8))(v8, v35);
  sub_100012498(&v62, v63);
  sub_10000CF78(v63, v63[3]);
  v39 = v58;
  sub_10076FE2C();
  v40 = v59;
  v41 = v33;
  if (v33(v39, 1, v59) == 1)
  {
    sub_10000CFBC(v38, &qword_1009492E0);
    v42 = v39;
  }

  else
  {
    v43 = v57;
    v44 = v55;
    (*(v57 + 32))(v55, v39, v40);
    sub_100760C8C();
    v45 = v54;
    sub_100016E2C(v38, v54, &qword_1009492E0);
    if (v41(v45, 1, v40) == 1)
    {
      sub_10000CFBC(v45, &qword_1009492E0);
    }

    else
    {
      v46 = v50;
      sub_10076F7DC();
      (*(v43 + 8))(v45, v40);
      sub_10076F7BC();
      (*(v51 + 8))(v46, v52);
    }

    v47 = v56;
    sub_10076F78C();

    [v31 frame];
    sub_1007660EC();

    v48 = *(v43 + 8);
    v48(v47, v40);
    v48(v44, v40);
    v42 = v38;
  }

  sub_10000CFBC(v42, &qword_1009492E0);
  return sub_10000CD74(v63);
}

void (*sub_100685734(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100689A5C;
}

void sub_100685798()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100963238);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  if ((sub_10076243C() & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_refreshControl] endRefreshing];
  }

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
  if (v6)
  {
    v7 = v6;
    sub_10000A5D4(&unk_100963240);
    sub_100761B9C();
    sub_100761BBC();
    sub_1007699FC();

    (*(v3 + 8))(v5, v2);
  }

  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 window];

  if (!v10)
  {
    return;
  }

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_10076666C();
}

void sub_100685DD4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_activityIndicator] startAnimating];
    v2 = [v0 navigationItem];
    v3 = [v2 leftBarButtonItem];

    if (v3)
    {
      [v3 setHidden:0];
    }
  }

  else
  {
    v4 = [v0 navigationItem];
    v5 = [v4 leftBarButtonItem];

    if (v5)
    {
      [v5 setHidden:1];
    }

    [*&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_activityIndicator] stopAnimating];
  }
}

void sub_100685F04(void *a1)
{
  if ((v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_isPresentingForgotSignInDetails] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_isPresentingForgotSignInDetails] = 1;
    [a1 setPresentingViewController:v1];
    v3 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v9[4] = sub_100688740;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100686040;
      v9[3] = &unk_10089EF50;
      v6 = _Block_copy(v9);
      v7 = v4;
      v8 = v1;

      [v7 authenticateWithContext:a1 completion:v6];

      _Block_release(v6);
    }
  }
}

uint64_t sub_100686040(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000A5D4(&qword_100963230);
    v4 = sub_10076FE4C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1006860F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(AAUISignInController) init];
  [v3 setServiceType:AIDAServiceTypeStore];
  [v3 setDelegate:v0];
  if (qword_100941490 != -1)
  {
    swift_once();
  }

  v4 = sub_10076FD4C();
  sub_10000A61C(v4, qword_100963158);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F31C();
  sub_10076F27C();
  sub_10076FBCC();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = ObjectType;
  v9[4] = sub_10068871C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005F04D8;
  v9[3] = &unk_10089EF00;
  v7 = _Block_copy(v9);
  v8 = v3;

  [v8 prepareInViewController:v1 completion:v7];
  _Block_release(v7);
}

void sub_100686388(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v7 = sub_10076FD4C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076253C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F4FC();
  __chkstk_darwin(v15 - 8);
  if (a1)
  {
    if (qword_100941490 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v7, qword_100963158);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }

    return;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v40 = v12;
  v41 = sub_10075DA3C();
  v18 = [v41 domain];
  v19 = sub_10076FF9C();
  v21 = v20;

  if (v19 == sub_10076FF9C() && v21 == v22)
  {
  }

  else
  {
    v24 = sub_10077167C();

    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v41 code] != -7005)
  {
LABEL_20:

LABEL_21:
    if (qword_100941490 != -1)
    {
      swift_once();
    }

    v31 = sub_10000A61C(v7, qword_100963158);
    (*(v8 + 16))(v10, v31, v7);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    if (a2)
    {
      swift_getErrorValue();
      v32 = v43;
      v33 = v44;
      *(&v46 + 1) = v44;
      v34 = sub_10000DB7C(&v45);
      (*(*(v33 - 8) + 16))(v34, v32, v33);
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    sub_10076F30C();
    sub_10000CFBC(&v45, &unk_1009434C0);
    sub_10076FBEC();

    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v36 = v35;

      sub_10076241C();
    }

    return;
  }

  if (qword_100941490 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v7, qword_100963158);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  *(&v46 + 1) = sub_100016F40(0, &unk_10094FA10);
  *&v45 = v41;
  v25 = v41;
  sub_10076F30C();
  sub_10000CFBC(&v45, &unk_1009434C0);
  sub_10076FBEC();

  v47._object = 0x80000001007D0620;
  v47._countAndFlagsBits = 0xD000000000000017;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_1007622EC(v47, v49);
  v48._countAndFlagsBits = 0xD00000000000002ALL;
  v48._object = 0x80000001007D0640;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_1007622EC(v48, v50);
  sub_10076F4DC();
  (*(v40 + 104))(v14, enum case for AlertActionStyle.normal(_:), v11);
  sub_10075FAAC();
  swift_allocObject();
  v26 = sub_10075FA7C();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    v30 = v29;
    if (v29)
    {
      v29 = type metadata accessor for AccountViewController();
    }

    else
    {
      *(&v45 + 1) = 0;
      *&v46 = 0;
    }

    *&v45 = v30;
    *(&v46 + 1) = v29;
    sub_100687198(v26, &v45);

    sub_10000CFBC(&v45, &unk_1009434C0);
  }

  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;

    sub_10076241C();
  }
}

void sub_100686C88()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000A5D4(&qword_100944C40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
  if (v7)
  {
    v8 = v7;
    sub_10076E79C();
    v9 = sub_10076E5EC();
    (*(v4 + 8))(v6, v3);
    if (v9 >= 1)
    {
      v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v12 = *&v1[v10];
      *&v1[v10] = 0;

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v39 = v16;
        v40 = v18;
        v41 = v20;
        v42 = v22;
        v43 = 0;
LABEL_8:
        sub_10076856C();

        return;
      }

      goto LABEL_10;
    }
  }

  sub_10076DE3C();
  v23 = objc_allocWithZone(sub_10076DE6C());
  v24 = sub_10076DE5C();
  v25 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v27 = *&v1[v25];
  *&v1[v25] = v24;
  v8 = v24;

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v39 = v31;
    v40 = v33;
    v41 = v35;
    v42 = v37;
    v43 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_100686F4C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10076856C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100687018()
{
  v1 = v0;
  sub_10076DF3C();
  sub_100689970(&unk_100963220, 255, &type metadata accessor for AccountPresenter);
  swift_errorRetain();

  v2 = sub_10076DEFC();
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

void sub_100687198(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075E11C();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_10076F13C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016E2C(a2, v103, &unk_1009434C0);
  if (v104)
  {
    sub_100016F40(0, &qword_1009441F0);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100016F40(0, &qword_1009471F0);
      *v20 = sub_10077068C();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_10076F16C();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_10094FFF8;
        v88 = xmmword_100950008;
        v89 = xmmword_100950018;
        v85 = xmmword_10094FFD8;
        v86 = xmmword_10094FFE8;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_10094FFD8;
        v98 = xmmword_10094FFE8;
        v100 = xmmword_100950008;
        v101 = xmmword_100950018;
        v90 = qword_100950028;
        v96 = v84;
        v102 = qword_100950028;
        v99 = xmmword_10094FFF8;
        sub_100016E2C(&v85, &v73, &unk_1009505F0);
        xmmword_10094FFF8 = v93;
        xmmword_100950008 = v94;
        xmmword_100950018 = v95;
        qword_100950028 = v96;
        xmmword_10094FFD8 = v91;
        xmmword_10094FFE8 = v92;
        sub_10000CFBC(&v97, &unk_1009505F0);
        v32 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
        v33 = sub_10000A5D4(&unk_1009428E0);
        sub_1001F9960(&v79, &v73);
        sub_10076F5AC();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10000CFBC(v16, &unk_100943200);
        }

        else
        {
          sub_100263BF0(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_10094FFF8;
        v76 = xmmword_100950008;
        v77 = xmmword_100950018;
        v78 = qword_100950028;
        v73 = xmmword_10094FFD8;
        v74 = xmmword_10094FFE8;
        xmmword_10094FFD8 = v85;
        xmmword_10094FFE8 = v86;
        xmmword_10094FFF8 = v87;
        xmmword_100950008 = v88;
        xmmword_100950018 = v89;
        qword_100950028 = v90;
        sub_10000CFBC(&v73, &unk_1009505F0);
        sub_1001F99BC(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10000CFBC(v103, &unk_1009434C0);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
    v62 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10000CFBC(v11, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_1007701BC();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = sub_10075E02C().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100016F40(0, &qword_1009471F0);
  *v20 = sub_10077068C();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_10076F16C();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_10094FFF8;
  v88 = xmmword_100950008;
  v89 = xmmword_100950018;
  v85 = xmmword_10094FFD8;
  v86 = xmmword_10094FFE8;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_10094FFD8;
  v98 = xmmword_10094FFE8;
  v100 = xmmword_100950008;
  v101 = xmmword_100950018;
  v90 = qword_100950028;
  v96 = v84;
  v102 = qword_100950028;
  v99 = xmmword_10094FFF8;
  sub_100016E2C(&v85, &v73, &unk_1009505F0);
  xmmword_10094FFF8 = v93;
  xmmword_100950008 = v94;
  xmmword_100950018 = v95;
  qword_100950028 = v96;
  xmmword_10094FFD8 = v91;
  xmmword_10094FFE8 = v92;
  sub_10000CFBC(&v97, &unk_1009505F0);
  v55 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v56 = sub_10000A5D4(&unk_1009428E0);
  sub_1001F9960(&v79, &v73);
  v57 = v67;
  sub_10076F5AC();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10000CFBC(v57, &unk_100943200);
  }

  else
  {
    sub_100263BF0(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_10094FFF8;
  v76 = xmmword_100950008;
  v77 = xmmword_100950018;
  v78 = qword_100950028;
  v73 = xmmword_10094FFD8;
  v74 = xmmword_10094FFE8;
  xmmword_10094FFD8 = v85;
  xmmword_10094FFE8 = v86;
  xmmword_10094FFF8 = v87;
  xmmword_100950008 = v88;
  xmmword_100950018 = v89;
  qword_100950028 = v90;
  sub_10000CFBC(&v73, &unk_1009505F0);
  sub_1001F99BC(&v79);

  (*(v69 + 8))(v60, v64);
}

uint64_t sub_100687DDC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_10072F954();

  return sub_10076240C();
}

uint64_t sub_1006881FC()
{
}

id sub_10068828C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100688380()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1006883C4(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_100685DD4();
}

void (*sub_100688418(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10068847C;
}

void sub_10068847C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100685DD4();
  }
}

uint64_t sub_100688558()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1006885AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100689970(&qword_100963210, 255, &type metadata accessor for AccountPresenter);
  v9 = sub_10000A5D4(&qword_100963218);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_10094A6C8];
  *&v10[qword_10094A6C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_10094A6C0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_10094A6D8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1006886DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100688728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10068877C()
{
  v1 = sub_10000A5D4(&qword_100963258);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000A5D4(&qword_100963250);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_1006888E4()
{
  sub_10000A5D4(&qword_100963258);
  sub_10000A5D4(&qword_100963250);

  return sub_1006826D0();
}

uint64_t sub_1006889EC()
{
  v1 = sub_10000A5D4(&qword_100963060);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v13 = *(v2 + 64);
  v5 = sub_10000A5D4(&unk_100963260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (((v13 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v12 = v3 | v7;
  v9 = (*(v6 + 64) + v3 + v8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  (*(v6 + 8))(v0 + v8, v5);
  v10(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v13, v12 | 7);
}

uint64_t sub_100688B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10000A5D4(&qword_100963060) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_10000A5D4(&unk_100963260) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v4 + v12);
  v16 = v4 + ((*(v13 + 64) + v10 + v14) & ~v10);

  return sub_100682ADC(a1, a2, a3, a4, v4 + v11, v15, v4 + v14, v16);
}

uint64_t sub_100688CF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100688D28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007624DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100688D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009632A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100688DC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007624EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100688DF0(void *a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&qword_100950548);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  sub_1006850B0(a1, a2);
  type metadata accessor for UpdatesLockupCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      sub_10076999C();

      v11 = sub_10000A5D4(&unk_100946710);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        return sub_10000CFBC(v7, &qword_100950548);
      }

      else
      {
        sub_10076F4AC();
        (*(v12 + 8))(v7, v11);
        sub_10000A5D4(&qword_1009575A0);
        sub_10076247C();
        result = swift_dynamicCast();
        if (result)
        {
          sub_100760C4C();
          sub_10076F64C();
          sub_10076FC1C();
          v13 = v15[1];
          sub_10076246C();
          v14 = sub_10076BB9C();

          sub_1003E977C(v14, v13);
        }
      }
    }
  }

  return result;
}

void sub_10068903C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v4 - 8);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v9 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = sub_10076F7FC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v22 = sub_10000A5D4(&qword_100950548);
  __chkstk_darwin(v22 - 8);
  v24 = v39 - v23;
  v25 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
  if (v25)
  {
    v41 = v21;
    v42 = v16;
    v40 = v8;
    v26 = v25;
    v39[1] = a1;
    sub_10076999C();

    v27 = sub_10000A5D4(&unk_100946710);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v24, 1, v27) == 1)
    {
      sub_10000CFBC(v24, &qword_100950548);
    }

    else
    {
      sub_10076F4AC();
      (*(v28 + 8))(v24, v27);
      sub_100012498(&v44, v45);
      sub_10000CF78(v45, v45[3]);
      sub_10076FE2C();
      v29 = v42;
      v30 = *(v42 + 48);
      if (v30(v14, 1, v15) == 1)
      {
        sub_10000CFBC(v14, &qword_1009492E0);
      }

      else
      {
        (*(v29 + 32))(v41, v14, v15);
        sub_10076248C();
        if (v30(v11, 1, v15) == 1)
        {
          sub_10000CFBC(v11, &qword_1009492E0);
          v31 = 1;
          v32 = v40;
        }

        else
        {
          v33 = v29;
          v32 = v40;
          sub_10076F7DC();
          (*(v33 + 8))(v11, v15);
          v31 = 0;
        }

        v34 = v43;
        v35 = sub_10076F7CC();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v32, v31, 1, v35);
        sub_100760C8C();
        sub_100016E2C(v32, v34, &qword_1009632C0);
        if ((*(v36 + 48))(v34, 1, v35) == 1)
        {
          sub_10000CFBC(v34, &qword_1009632C0);
        }

        else
        {
          sub_10076F7BC();
          (*(v36 + 8))(v34, v35);
        }

        v37 = v41;
        sub_10076F78C();

        sub_10076610C();

        v38 = *(v42 + 8);
        v38(v18, v15);
        sub_10000CFBC(v32, &qword_1009632C0);
        v38(v37, v15);
      }

      sub_10000CD74(v45);
    }
  }
}

void sub_1006895F0(uint64_t a1, uint64_t a2)
{
  sub_10068903C(a2);
  type metadata accessor for UpdatesLockupCollectionViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    v4 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView;
    v5 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FB6C();

    v6 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FD2C();
    sub_100689970(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v7 = v6;
    sub_100760BFC();
  }
}

uint64_t sub_10068973C(uint64_t a1)
{
  v2 = v1;
  if (qword_100941490 != -1)
  {
    swift_once();
  }

  v4 = sub_10076FD4C();
  sub_10000A61C(v4, qword_100963158);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  sub_10076F31C();
  sub_10076F27C();
  v6[3] = sub_10000A5D4(&unk_1009632B0);
  v6[0] = a1;

  sub_10076F30C();
  sub_10000CFBC(v6, &unk_1009434C0);
  sub_10076FBCC();

  [v2 dismissViewControllerAnimated:1 completion:{0, v6[0]}];
  return sub_10076241C();
}

uint64_t sub_100689920()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100689970(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1006899B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1006899F8()
{
  result = qword_1009632D8;
  if (!qword_1009632D8)
  {
    sub_10000CE78(&qword_1009632D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009632D8);
  }

  return result;
}

uint64_t sub_100689AA4(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100689B08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100689BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != enum case for Shelf.ContentType.action(_:))
  {
    if (v12 == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v18 = ASKDeviceTypeGetCurrent();
      v19 = sub_10076FF9C();
      v21 = v20;
      if (v19 == sub_10076FF9C() && v21 == v22)
      {
      }

      else
      {
        v27 = sub_10077167C();

        if ((v27 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v24 = type metadata accessor for SearchUnifiedMessageCollectionViewCell(0);
      v25 = type metadata accessor for SearchUnifiedMessageCollectionViewCell;
      sub_10068A0E4(&qword_1009633B8, type metadata accessor for SearchUnifiedMessageCollectionViewCell);
      sub_10068A0E4(&qword_1009633C0, type metadata accessor for SearchUnifiedMessageCollectionViewCell);
      v26 = &unk_1009633C8;
      goto LABEL_13;
    }

LABEL_17:
    v24 = sub_1002CBF40(a1, a2);
    goto LABEL_18;
  }

  v13 = ASKDeviceTypeGetCurrent();
  v14 = sub_10076FF9C();
  v16 = v15;
  if (v14 != sub_10076FF9C() || v16 != v17)
  {
    v23 = sub_10077167C();

    if (v23)
    {
      goto LABEL_10;
    }

    v13 = ASKDeviceTypeGetCurrent();
    v28 = sub_10076FF9C();
    v30 = v29;
    if (v28 != sub_10076FF9C() || v30 != v31)
    {
      v32 = sub_10077167C();

      if (v32)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

LABEL_10:
  v24 = type metadata accessor for SearchActionCollectionViewCell();
  v25 = type metadata accessor for SearchActionCollectionViewCell;
  sub_10068A0E4(&qword_1009633D0, type metadata accessor for SearchActionCollectionViewCell);
  sub_10068A0E4(&qword_100959E90, type metadata accessor for SearchActionCollectionViewCell);
  v26 = &unk_1009633D8;
LABEL_13:
  sub_10068A0E4(v26, v25);
LABEL_18:
  (*(v5 + 8))(v7, v4);
  return v24;
}

uint64_t sub_10068A0E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10068A12C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 itemKind];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = sub_10076FF9C();
  v10 = v9;

  if (v8 == 0x6169726F74696465 && v10 == 0xED00006D6574496CLL)
  {

    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v12 = sub_10077167C();

  LOBYTE(v13) = 0;
  if ((v12 & 1) != 0 && a1)
  {
LABEL_10:
    v14 = sub_10076FF9C();
    if (*(a1 + 16))
    {
      v16 = sub_100561E0C(v14, v15);
      v18 = v17;

      if (v18)
      {
        sub_10000CD08(*(a1 + 56) + 32 * v16, v23);
        if (swift_dynamicCast())
        {
          if (v22)
          {
            v13 = *(a2 + 24);
            if (v13 != 2)
            {
              return v13 & 1;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v20 = Strong;
              [Strong _hostAuditToken];
              LOBYTE(v13) = sub_100533998(v23[0], v23[1], v23[2], v23[3], 0x73656C6369747241, 0xE800000000000000);

              *(a2 + 24) = v13 & 1;
              return v13 & 1;
            }
          }
        }
      }
    }

    else
    {
    }

LABEL_18:
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_10068A2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 iTunesStoreIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_10077145C(33);

    v5 = [v4 description];
    v6 = sub_10076FF9C();
    v8 = v7;

    v13._countAndFlagsBits = v6;
    v13._object = v8;
    sub_1007700CC(v13);

    sub_10075DB6C();
  }

  else
  {
    v10 = sub_10075DB7C();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_10068A450@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100763F9C();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076C36C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v14 = v29;
  v15 = sub_1007706FC();

  if (v15 & 1) != 0 && (swift_getKeyPath(), sub_10076338C(), , v16 = v28, v17 = sub_10077071C(), v16, (v17 & 1) == 0) && (swift_getKeyPath(), sub_10076338C(), , sub_10076C37C(), (*(v11 + 8))(v13, v10), (*(v4 + 104))(v6, enum case for PageGrid.Direction.horizontal(_:), v3), v18 = sub_10076C35C(), v19 = *(v4 + 8), v19(v6, v3), v19(v9, v3), (v18))
  {
    (*(v25 + 104))(v24, enum case for ComponentSeparator.Position.top(_:), v26);
    v20 = v27;
    sub_100763FAC();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v27;
  }

  v22 = sub_100763FDC();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

uint64_t sub_10068A7F8(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v34 = sub_100768FEC();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_100946750);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v29 - v8;
  v10 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10076A3AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v31 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton);
  v32 = a1;
  v30 = sub_10076072C();
  v20 = sub_10076074C();
  v21 = sub_10076073C();
  (*(v14 + 104))(v16, enum case for OfferButtonPresenterViewAlignment.center(_:), v13);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_10068AF5C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  sub_10076759C();
  v22 = sub_10000A5D4(&qword_100945590);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = v34;
  (*(v6 + 104))(v33, enum case for OfferButtonSubtitlePosition.left(_:), v34);
  (*(v6 + 56))(v35, 1, 1, v23);
  sub_10068AF5C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_10076759C();
  sub_1001F12C8(v30, v20, v21, v19, v9, v38, 0, 0);

  (*(v36 + 8))(v9, v37);
  sub_100026190(v19);
  sub_10076070C();
  sub_10076071C();
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v24 = sub_100767DCC();
  swift_allocObject();
  v25 = sub_100767DAC();
  sub_10068AF5C(&qword_1009633E0, type metadata accessor for ArcadeLockupView);
  v26 = swift_unknownObjectRetain();
  sub_100767DBC();
  v39[3] = v24;
  v39[0] = v25;
  v27 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerLabelPresenter;
  swift_beginAccess();

  sub_100127EF0(v39, v26 + v27);
  swift_endAccess();
  [v26 setNeedsLayout];
}

id sub_10068ADE8(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_10076FF9C();
  v10 = v9;

  if (!a2)
  {

    v13 = 0;
    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_10077167C();

    if (v12)
    {
      return result;
    }

LABEL_10:
    v13 = sub_10076FF6C();
LABEL_12:
    [v5 setText:v13];

    [v5 setHidden:sub_10077002C() & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_10068AF5C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10068AFF4()
{
  v0 = sub_10000A5D4(&qword_10094DC40);
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v35 = &v30 - v1;
  v36 = sub_10076C38C();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076664C();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009520A0);
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_10000A5D4(&unk_100946720);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_10000A5D4(&unk_100946710);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  v19 = v18;
  v20 = v30;
  (*(v16 + 8))(v19, v15);
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();
  v21 = v31;

  v22 = v11;
  v23 = v32;
  (*(v12 + 8))(v14, v22);

  sub_1007633DC();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();
  v24 = v35;

  sub_10076C2FC();
  (*(v34 + 8))(v3, v36);
  sub_100630CB4();
  (*(v20 + 16))(v33, v10, v21);
  sub_10076FCFC();
  sub_10076FDBC();
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v25 = sub_1007640EC();
  sub_10000A61C(v25, qword_10099F660);
  sub_10076410C();
  sub_10068B624(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v26 = sub_10076E21C();
  sub_10000A61C(v26, qword_10099F678);
  sub_100770AFC();
  v28 = v27;
  swift_unknownObjectRelease();
  (*(v39 + 8))(v24, v40);
  (*(v37 + 8))(v23, v38);
  (*(v20 + 8))(v10, v21);
  sub_10000CD74(v41);
  return v28;
}

uint64_t sub_10068B624(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10068B66C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_10076460C();
  sub_10076C24C();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_10076461C();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v17.receiver = v9;
  v17.super_class = v8;
  v11 = objc_msgSendSuper2(&v17, "init");
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v12 = sub_1007640EC();
  sub_10000A61C(v12, qword_10099F660);
  sub_10076410C();
  sub_10068B624(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v13 = sub_10076E21C();
  sub_10000A61C(v13, qword_10099F678);
  sub_100770AFC();
  v15 = v14;

  return v15;
}

uint64_t sub_10068B904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v76 = sub_10076C36C();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = sub_10076C38C();
  v77 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v16 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v16 - 8);
  v81 = sub_10000A5D4(&qword_100957718);
  v17 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v69 - v18;
  sub_10076B29C();
  sub_10068CB60(&qword_100957720, &type metadata accessor for Uber);
  v83 = a1;
  result = sub_10076332C();
  v20 = v85[0];
  if (v85[0])
  {
    v73 = v17;
    v74 = v15;
    v78 = v10;
    v21 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v22 = *(v3 + v21);
    v79 = v20;
    if (!v22 || (v23 = *(v22 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_uber), , v85[0] = v20, !v23) || (v85[5] = v23, sub_10068CB60(&qword_100961168, &type metadata accessor for Uber), , v24 = sub_10076FF1C(), , , (v24 & 1) == 0))
    {
      v25 = *(v3 + v21);
      v26 = sub_100760C4C();
      v27 = sub_10076F64C();
      v28 = v25;
      v72 = v26;
      v71 = v27;
      sub_10076FC1C();
      if (v25)
      {
        v84 = v28;
        type metadata accessor for UberHeaderView();
        sub_10068CB60(&qword_100954F18, type metadata accessor for UberHeaderView);
        v29 = v28;
        sub_10077140C();
        sub_100760BEC();

        sub_100016C74(v85);
      }

      else
      {
      }

      sub_1007633DC();
      sub_10076FDBC();
      swift_getKeyPath();
      sub_1004492B8();
      v30 = v79;

      sub_10076FD9C();

      v31 = v85[0];
      v32 = objc_allocWithZone(type metadata accessor for UberHeaderView());
      v33 = v82;

      v34 = sub_1002088B0(v30, (v31 & 1) == 0, v33);
      v35 = *(v3 + v21);
      *(v3 + v21) = v34;
      v36 = v34;
      sub_1004FCA5C(v35);

      v70 = v21;
      v69 = v3;
      v37 = *(v3 + v21);
      if (v37)
      {
        v38 = v37;
        v39 = sub_10076B24C();
        sub_100209360(v39, v40);
      }

      v41 = v5;
      v42 = *(v5 + 104);
      v43 = v76;
      v42(v9, enum case for PageGrid.Direction.vertical(_:), v76);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C2FC();
      v44 = *(v77 + 8);
      v45 = v78;
      v44(v12, v78);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C25C();
      v46 = v45;
      v47 = v44;
      v44(v12, v46);
      (*(v41 + 16))(v75, v9, v43);
      sub_1005AC334(0.0);
      v48 = v74;
      sub_10076C33C();
      (*(v41 + 8))(v9, v43);
      v49 = v70;
      v50 = v69;
      v51 = *(v69 + v70);
      if (v51)
      {
        v52 = v51;
        sub_10076C2EC();
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
        [*&v52[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] layoutMargins];
        if (v54 == v65 && v56 == v62 && v58 == v63 && v60 == v64 || ([*&v52[v61] setLayoutMargins:{v54, v56, v58, v60, v69, v70}], objc_msgSend(v52, "invalidateIntrinsicContentSize"), (v66 = *&v52[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver]) == 0))
        {
        }

        else
        {

          v66(v67);

          sub_1000167E0(v66);
        }
      }

      sub_10076FC1C();
      sub_10068C218(v79, v83, v85[0]);

      swift_beginAccess();
      v68 = *(v50 + v49);
      if (v68)
      {
        swift_endAccess();
        [v68 setNeedsLayout];

        v47(v48, v78);
        return (*(v73 + 8))(v80, v81);
      }

      v47(v48, v78);
      (*(v73 + 8))(v80, v81);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_10068C218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v5 = sub_10076D39C();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C38C();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076B21C();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v41 - v13;
  v14 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v14 - 8);
  v53 = sub_10000A5D4(&qword_100957718);
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - v15;
  v16 = sub_10076B27C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B28C();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v20 == enum case for Uber.AssetType.video(_:))
    {
      result = sub_10076B25C();
      if (!result)
      {
        return result;
      }

      sub_10076B84C();
    }

    else
    {
      if (v20 != enum case for Uber.AssetType.icon(_:))
      {
        return (*(v17 + 8))(v19, v16);
      }

      result = sub_10076B1FC();
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_10076338C();

  v21 = v59;
  v22 = sub_1007706EC();

  if (v22)
  {
    result = sub_10076B20C();
    if (!result)
    {
      return result;
    }

LABEL_12:

    v24 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v25 = *(v4 + v24);
    if (!v25)
    {
    }

    v41 = v25;
    sub_1007633DC();
    sub_10076FDBC();
    v26 = v47;
    sub_10076B23C();
    swift_getKeyPath();
    sub_1004492B8();
    sub_10076FD9C();

    v27 = v56;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v29 = v28;
    v30 = *(v46 + 8);
    v30(v9, v7);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v32 = v31;
    v30(v9, v7);
    swift_getKeyPath();
    sub_10076338C();

    v33 = v58;
    sub_10020B56C(v58, v26, (v27 & 1) == 0, v32, v29, 0);
    v34 = sub_1007706EC();
    v36 = v49;
    v35 = v50;
    if (v34)
    {
      v37 = v42;
      (*(v49 + 104))(v42, enum case for Uber.Style.inline(_:), v50);
      sub_10068CB60(&qword_10094DC28, &type metadata accessor for Uber.Style);
      sub_10077018C();
      sub_10077018C();
      if (v56 == v54 && v57 == v55)
      {
        (*(v36 + 8))(v37, v35);

LABEL_21:
        sub_10076BFCC();

        (*(v36 + 8))(v26, v35);
        type metadata accessor for UberHeaderView();
        sub_10068CB60(&unk_1009624C0, type metadata accessor for UberHeaderView);
        v40 = v41;
        sub_100760B8C();

        return (*(v48 + 8))(v52, v53);
      }

      v38 = sub_10077167C();
      (*(v36 + 8))(v37, v35);

      if (v38)
      {
        goto LABEL_21;
      }
    }

    sub_10076BEFC();
    v39 = v43;
    sub_10076D3AC();
    sub_10076D35C();
    (*(v44 + 8))(v39, v45);
    goto LABEL_21;
  }

  result = sub_10076B26C();
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10068CA30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_10068CA8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10068CB60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10068CBBC()
{
  result = qword_1009633E8;
  if (!qword_1009633E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009633E8);
  }

  return result;
}

unint64_t sub_10068CC14()
{
  result = qword_1009633F0;
  if (!qword_1009633F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009633F0);
  }

  return result;
}

id sub_10068CC68()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10068CE04()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlayerViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_10076FF6C();
  v3 = [v0 player];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 currentItem];

    if (v5)
    {
      v7 = v5;
      sub_10068D55C();
      v5 = sub_10077165C();
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 addObserver:v0 selector:"playerItemDidPlayToEndWithNotification:" name:v2 object:v5];

  return swift_unknownObjectRelease();
}

id sub_10068D3AC(uint64_t a1)
{
  v2 = sub_10075DB7C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = objc_allocWithZone(AVPlayer);
  sub_10075DB1C(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9];

  v12 = [objc_allocWithZone(type metadata accessor for PlayerViewController()) initWithNibName:0 bundle:0];
  [v12 setPlayer:v11];

  (*(v3 + 8))(v6, v2);
  *(v12 + OBJC_IVAR____TtC20ProductPageExtension20PlayerViewController_autoplay) = 1;

  [v12 setAllowsPictureInPicturePlayback:0];
  [v12 setUpdatesNowPlayingInfoCenter:0];
  [v12 setAllowsVideoFrameAnalysis:0];

  return v12;
}

unint64_t sub_10068D55C()
{
  result = qword_100963438;
  if (!qword_100963438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100963438);
  }

  return result;
}

id sub_10068D5A8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HttpTemplateController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10068D720(uint64_t a1)
{
  v93 = a1;
  v75 = sub_10075F65C();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v76 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100765F6C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100766EDC();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F4FC();
  __chkstk_darwin(v5 - 8);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v7 - 8);
  v68 = &v62 - v8;
  v9 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v9 - 8);
  v65 = &v62 - v10;
  v63 = sub_10076C15C();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076608C();
  v95 = *(v12 - 8);
  __chkstk_darwin(v12);
  v89 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v13;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = sub_10000A5D4(&qword_100963498);
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v79 = (&v62 - v18);
  v19 = sub_10000A5D4(&qword_1009634A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v62 - v23);
  v94 = v1;
  sub_10076B8EC();
  v26 = v25;
  sub_10076419C();
  v28 = v27;
  if (!v26)
  {
    v29 = 0;
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = 0;
    goto LABEL_6;
  }

  v29 = sub_10076FF6C();

  if (!v28)
  {
    goto LABEL_5;
  }

LABEL_3:
  v30 = sub_10076FF6C();

LABEL_6:
  v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

  v92 = v31;
  sub_10068F008(v31, v93);
  result = sub_10076417C();
  v33 = result;
  v34 = 0;
  v35 = *(result + 16);
  v78 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_hasRequiredParameters;
  v93 = v95 + 16;
  v91 = (v90 + 7);
  v77 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction;
  v90 += 6;
  v84 = v95 + 32;
  v82 += 7;
  v81 = &v97;
  v80 = (v95 + 8);
  v88 = v21;
  v87 = v17;
  v86 = result;
  v85 = v35;
  v83 = v24;
  while (1)
  {
    if (v34 == v35)
    {
      v36 = 1;
      v34 = v35;
      goto LABEL_13;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v34 >= *(v33 + 16))
    {
      goto LABEL_19;
    }

    v37 = v95;
    v38 = v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34;
    v39 = *(v17 + 48);
    v40 = v79;
    *v79 = v34;
    (*(v37 + 16))(v40 + v39, v38, v12);
    sub_100023AD0(v40, v21, &qword_100963498);
    v36 = 0;
    ++v34;
LABEL_13:
    (*v91)(v21, v36, 1, v17);
    sub_100023AD0(v21, v24, &qword_1009634A0);
    if ((*v90)(v24, 1, v17) == 1)
    {

      v98 = 0;
      aBlock = 0u;
      v97 = 0u;
      (*(v62 + 104))(v64, enum case for FlowPage.viewController(_:), v63);
      v58 = sub_10075DB7C();
      (*(*(v58 - 8) + 56))(v65, 1, 1, v58);
      v59 = sub_10076096C();
      (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
      v101 = sub_100464654();
      v100 = v92;
      v60 = v92;
      sub_10076F4DC();
      (*(v66 + 104))(v72, enum case for FlowPresentationContext.presentModal(_:), v67);
      (*(v70 + 104))(v74, enum case for FlowAnimationBehavior.infer(_:), v71);
      (*(v73 + 104))(v76, enum case for FlowOrigin.inapp(_:), v75);
      sub_10076FA2C();
      sub_10075F63C();
      swift_allocObject();
      v61 = sub_10075F5EC();

      return v61;
    }

    v41 = *v24;
    v42 = *(v17 + 48);
    v43 = v95;
    v44 = *(v95 + 32);
    v44(v16, v24 + v42, v12);
    v45 = v12;
    v46 = v89;
    (*(v43 + 16))(v89, v16, v45);
    v47 = *(v43 + 80);
    v48 = v16;
    v49 = (v47 + 24) & ~v47;
    v50 = (v82 + v49) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    v52 = v46;
    v12 = v45;
    v44((v51 + v49), v52, v45);
    v53 = v94;
    *(v51 + v50) = v94;
    v98 = sub_10068FAAC;
    v99 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v97 = sub_1006C1A98;
    *(&v97 + 1) = &unk_10089F458;
    v54 = _Block_copy(&aBlock);
    v55 = v53;
    v16 = v48;

    [v92 addTextFieldWithConfigurationHandler:v54];
    _Block_release(v54);
    if (sub_10076602C())
    {
      v56 = v94;
      v94[v78] = 1;
      v57 = *&v56[v77];
      if (v57)
      {
        [v57 setEnabled:0];
      }
    }

    result = (*v80)(v48, v45);
    v17 = v87;
    v21 = v88;
    v24 = v83;
    v33 = v86;
    v35 = v85;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10068E294(uint64_t a1)
{
  v56 = a1;
  v2 = sub_10000A5D4(&unk_100958FE0);
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v50 - v3;
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = v50 - v7;
  v59 = sub_10076F4FC();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076608C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076810C();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_100562288(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  v63 = v14;
  v15 = v1;
  sub_1007680FC();
  v16 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (v17 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = &unk_100963000;
  if (v18)
  {
    while (v18 >= 1)
    {
      v51 = v2;
      v20 = v19[136];
      v50[1] = v15;
      v21 = *(v15 + v20);
      v65 = v17 & 0xC000000000000001;
      v66 = v21;
      v64 = v10 + 16;
      v22 = (v10 + 8);

      v15 = 0;
      v2 = v62;
      while (1)
      {
        v23 = v65 ? sub_10077149C() : *(v17 + 8 * v15 + 32);
        v24 = v23;
        v25 = sub_10076417C();
        v26 = [v24 tag];
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v26 >= *(v25 + 16))
        {
          goto LABEL_26;
        }

        (*(v10 + 16))(v2, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v9);

        v27 = [v24 text];
        if (v27)
        {
          v28 = v27;
          sub_10076FF9C();

          v2 = v62;
          sub_1007680EC();

          (*v22)(v2, v9);
        }

        else
        {
          (*v22)(v2, v9);
        }

        if (v18 == ++v15)
        {

          v2 = v51;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v18 = sub_10077158C();
      v19 = &unk_100963000;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v30 = sub_10076FD4C();
    sub_10000A61C(v30, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    swift_getErrorValue();
    v31 = v70;
    v32 = v71;
    v68 = v71;
    v33 = sub_10000DB7C(v67);
    (*(*(v32 - 8) + 16))(v33, v31, v32);
    sub_10076F32C();
    sub_10000CFBC(v67, &unk_1009434C0);
    sub_10076FBEC();

    v34 = sub_10076416C();
    if (v34)
    {
      v35 = v34;
      v36 = sub_10000A5D4(&unk_1009428E0);
      v37 = v55;
      sub_10076F5AC();
      v38 = *(v36 - 8);
      if ((*(v38 + 48))(v37, 1, v36) == 1)
      {
        (*(v60 + 8))(v63, v61);

        v39 = v37;
        return sub_10000CFBC(v39, &unk_100943200);
      }

      v68 = sub_10076B90C();
      v69 = sub_10068F9BC(&qword_10095D660, &type metadata accessor for Action);
      v67[0] = v35;
      v46 = v54;
      v47 = v53;
      (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

      sub_10076F6CC();

      (*(v46 + 8))(v47, v2);
      (*(v60 + 8))(v63, v61);
      sub_10000CD74(v67);
      return (*(v38 + 8))(v37, v36);
    }

    else
    {
      (*(v60 + 8))(v63, v61);
    }
  }

  else
  {
LABEL_15:
    v29 = v57;
    sub_10076F4DC();
    v40 = sub_10076415C();
    (*(v58 + 8))(v29, v59);
    v41 = sub_10000A5D4(&unk_1009428E0);
    v42 = v52;
    sub_10076F5AC();
    v43 = *(v41 - 8);
    v44 = (*(v43 + 48))(v42, 1, v41);
    if (v44 == 1)
    {
      (*(v60 + 8))(v63, v61);

      v39 = v42;
      return sub_10000CFBC(v39, &unk_100943200);
    }

    v68 = sub_10075F71C();
    v69 = sub_10068F9BC(&unk_10095D640, &type metadata accessor for HttpAction);
    v67[0] = v40;
    v48 = v54;
    v49 = v53;
    (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

    sub_10076F6CC();

    (*(v48 + 8))(v49, v2);
    (*(v60 + 8))(v63, v61);
    sub_10000CD74(v67);
    return (*(v43 + 8))(v42, v41);
  }
}

uint64_t sub_10068ED58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10076606C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setTag:{a2, v9}];
  sub_10076605C();
  if (v12)
  {
    v13 = sub_10076FF6C();
  }

  else
  {
    v13 = 0;
  }

  [a1 setPlaceholder:v13];

  sub_10076607C();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for HttpTemplateParameter.InputType.text(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for HttpTemplateParameter.InputType.email(_:))
  {
    v15 = 7;
  }

  else if (v14 == enum case for HttpTemplateParameter.InputType.phoneNumber(_:))
  {
    v15 = 5;
  }

  else
  {
    if (v14 != enum case for HttpTemplateParameter.InputType.decimalPad(_:))
    {
      (*(v8 + 8))(v11, v7);
LABEL_5:
      v15 = 0;
      goto LABEL_12;
    }

    v15 = 8;
  }

LABEL_12:
  [a1 setKeyboardType:v15];
  [a1 setDelegate:a4];
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a4 selector:"textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:a1];

  v17 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v18 = a1;
  sub_10077019C();
  if (*((*(a4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return swift_endAccess();
}

void sub_10068F008(void *a1, uint64_t a2)
{
  v15._countAndFlagsBits = 0x432E6E6F69746341;
  v15._object = 0xED00006C65636E61;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1007622EC(v15, v17);
  v5 = sub_10076FF6C();

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v5 style:0 handler:0];

  [a1 addAction:v7];
  v16._countAndFlagsBits = 0x4F2E6E6F69746341;
  v16._object = 0xE90000000000004BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1007622EC(v16, v18);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a2;
  v9 = v2;

  v10 = sub_10076FF6C();

  v14[4] = sub_10068F97C;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1006C1A98;
  v14[3] = &unk_10089F408;
  v11 = _Block_copy(v14);

  v12 = [v6 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [a1 addAction:v12];
  [a1 setPreferredAction:v12];
  v13 = *&v9[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction];
  *&v9[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction] = v12;
}

id sub_10068F228()
{
  v32 = sub_10076608C();
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v30 = *(v0 + v3);
  if (!(v30 >> 62))
  {
    v29 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_21:
    result = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction);
    if (result)
    {
      return [result setEnabled:1];
    }

    return result;
  }

LABEL_28:
  v29 = sub_10077158C();
  if (!v29)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_templateAction);
  v5 = v30 & 0xC000000000000001;
  v24 = v0;
  v25 = v30 & 0xFFFFFFFFFFFFFF8;
  v27 = (v1 + 8);
  v28 = v4;

  v6 = 0;
  v7 = &selRef__setPocketInsets_;
  v26 = v1;
  while (1)
  {
    if (v5)
    {
      v8 = sub_10077149C();
    }

    else
    {
      if (v6 >= *(v25 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(v30 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v0 = sub_10076417C();
    v11 = [v9 v7[445]];
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v11 >= v0[2])
    {
      goto LABEL_26;
    }

    v12 = v31;
    (*(v1 + 16))(v31, v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v32);

    v0 = v12;
    v13 = v9;
    if (sub_10076602C())
    {
      v14 = [v9 text];
      if (!v14)
      {
        break;
      }

      v0 = v14;
      v15 = sub_10076FF9C();
      v16 = v7;
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      v20 = v15 & 0xFFFFFFFFFFFFLL;
      v1 = v26;
      v21 = (v18 & 0x2000000000000000) == 0;
      v7 = v16;
      v13 = v9;
      if (v21)
      {
        v19 = v20;
      }

      if (!v19)
      {
        break;
      }
    }

    (*v27)(v31, v32);
    ++v6;
    if (v10 == v29)
    {

      v0 = v24;
      goto LABEL_21;
    }
  }

  v22 = *(v24 + OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction);
  if (v22)
  {
    [v22 setEnabled:0];
  }

  return (*v27)(v31, v32);
}

void sub_10068F54C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076608C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076417C();
  v11 = [a1 tag];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= *(v10 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6);

  sub_10076603C();
  if ((v12 & 1) == 0)
  {
    v13 = [a1 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_10076FF6C();
      v16 = [v14 stringByReplacingCharactersInRange:a2 withString:{a3, v15}];

      if (v16)
      {
        [v16 length];

        (*(v7 + 8))(v9, v6);
        return;
      }

      goto LABEL_11;
    }
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_10068F93C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10068F9A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10068F9BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10068FA10()
{
  v1 = sub_10076608C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10068FAAC(void *a1)
{
  v3 = *(sub_10076608C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10068ED58(a1, v5, v1 + v4, v6);
}

double sub_10068FBA0()
{
  v101 = sub_10000A5D4(&qword_100957BC0);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v75 - v0;
  v94 = sub_10076514C();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10076516C();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10076DD3C();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v75 - v5;
  v84 = sub_100760FDC();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10076D7FC();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v75 - v9;
  __chkstk_darwin(v10);
  v79 = &v75 - v11;
  v92 = sub_10076DA7C();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v75 - v14;
  v15 = sub_10075D99C();
  v108 = *(v15 - 8);
  v109 = v15;
  __chkstk_darwin(v15);
  v107 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076C38C();
  v105 = *(v17 - 1);
  v106 = v17;
  __chkstk_darwin(v17);
  v104 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10076B6EC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  v24 = sub_10076469C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v28 - 8);
  v111 = sub_10000A5D4(&qword_100959E28);
  v85 = *(v111 - 8);
  __chkstk_darwin(v111);
  v30 = &v75 - v29;
  sub_10076101C();
  sub_100690BA4(&qword_100959E30, &type metadata accessor for ReviewSummary);
  sub_10076332C();
  v31 = aBlock[0];
  if (!aBlock[0])
  {
    return 0.0;
  }

  sub_1007633DC();
  sub_10076FDBC();
  sub_1007632FC();
  sub_10076465C();
  (*(v25 + 8))(v27, v24);
  sub_10076B68C();
  sub_100690BA4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v32 = v103;
  v33 = sub_10077124C();
  v34 = *(v102 + 8);
  v34(v20, v32);
  v34(v23, v32);
  swift_getKeyPath();
  sub_1004C62D4();
  sub_10076FD9C();

  LODWORD(v103) = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  v35 = v104;
  sub_10076338C();

  sub_10076C2FC();
  (*(v105 + 8))(v35, v106);
  swift_getKeyPath();
  sub_10076338C();

  v36 = v117;
  v37 = v107;
  sub_100760FCC();
  v76 = v30;
  if ((v33 ^ 1))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_1007706FC();
  }

  v40 = sub_1003D9E44(v37, v38 & 1, v36);
  (*(v108 + 8))(v37, v109);
  v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v40];
  v42 = [v40 length];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = v36;
  *(v43 + 32) = v41;
  *(v43 + 40) = 1;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1000275EC;
  *(v44 + 24) = v43;
  v115 = sub_1000ACB04;
  v116 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v114 = &unk_10089F4D0;
  v45 = _Block_copy(aBlock);
  v109 = v36;
  v46 = v41;

  [v40 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

  _Block_release(v45);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v77;
  sub_10076D7EC();
  v48 = v78;
  sub_10076D79C();
  v49 = *(v80 + 8);
  v50 = v81;
  v49(v47, v81);
  sub_10076D7AC();
  v49(v48, v50);
  sub_10076DA5C();
  v107 = v46;
  sub_10076DAAC();
  v51 = sub_10076100C();
  v53 = v52;
  v54 = sub_100760FBC();
  v55 = v82;
  v108 = v31;
  sub_100760FEC();
  v56 = sub_1003DAB0C(v51, v53, v54, v55);

  (*(v83 + 8))(v55, v84);
  v106 = v56;
  v43 = v86;
  sub_10076DD2C();
  if (qword_100940D00 != -1)
  {
LABEL_13:
    swift_once();
  }

  v57 = sub_10076D3DC();
  sub_10000A61C(v57, qword_1009A14F8);
  sub_10076DCFC();
  (*(v88 + 8))(v43, v89);
  sub_10076DA5C();
  v58 = v90;
  sub_10076DABC();
  if (qword_100940390 != -1)
  {
    swift_once();
  }

  v59 = v94;
  v60 = sub_10000A61C(v94, qword_10099F7E0);
  (*(v93 + 16))(v95, v60, v59);
  v61 = v92;
  v114 = v92;
  v115 = &protocol witness table for LabelPlaceholder;
  v62 = sub_10000DB7C(aBlock);
  v63 = v91;
  v64 = *(v91 + 16);
  v65 = v110;
  v64(v62, v110, v61);
  v112[3] = v61;
  v112[4] = &protocol witness table for LabelPlaceholder;
  v66 = sub_10000DB7C(v112);
  v64(v66, v58, v61);
  v67 = v96;
  sub_10076515C();
  sub_100690BA4(&qword_100957BD0, &type metadata accessor for ReviewSummaryLayout);
  v68 = v99;
  v69 = v98;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v70 = v109;
  v71 = v101;
  sub_10076E0FC();
  v39 = v72;

  (*(v100 + 8))(v68, v71);
  (*(v97 + 8))(v67, v69);
  v73 = *(v63 + 8);
  v73(v58, v61);
  v73(v65, v61);
  (*(v85 + 8))(v76, v111);
  return v39;
}