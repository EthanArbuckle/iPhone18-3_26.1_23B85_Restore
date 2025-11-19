void *sub_10025FA28()
{
  v0 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-1] - v1;
  v3 = sub_10076182C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16[-1] - v8;
  sub_10000A5D4(&qword_100942F18);
  sub_10076333C();
  if (!v17)
  {
    sub_10000CFBC(v16, &qword_100942F20);
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_6;
  }

  sub_10000CF78(v16, v17);
  sub_1007670CC();
  sub_10000CD74(v16);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_6:
    sub_10000CFBC(v2, &unk_100952090);
    return _swiftEmptyArrayStorage;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  v11 = *(v4 + 8);
  if (v10 == enum case for ItemBackground.condensedSearch(_:))
  {
    v11(v6, v3);
    v12 = sub_10025F4FC();
    sub_10000A5D4(&unk_100942870);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007841E0;
    *(v13 + 32) = v12;
    v11(v9, v3);
    return v13;
  }

  v11(v9, v3);
  v11(v6, v3);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_10025FD44()
{
  result = qword_100942860;
  if (!qword_100942860)
  {
    sub_10075EEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942860);
  }

  return result;
}

uint64_t sub_10025FD9C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100763ADC();
  sub_10000DB18(v4, qword_10099DDA0);
  v44 = sub_10000A61C(v4, qword_10099DDA0);
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0CD0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  (v7)(v3, enum case for FontSource.useCase(_:), v0);
  v8 = v7;
  v50 = v7;
  v86 = sub_10076D9AC();
  v87 = &protocol witness table for StaticDimension;
  v9 = v86;
  v51 = v86;
  sub_10000DB7C(v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v82);
  v49 = v1[2];
  v49(v10, v3, v0);
  sub_10076D9BC();
  v46 = v1[1];
  v46(v3, v0);
  *v3 = UIFontTextStyleBody;
  v47 = enum case for FontSource.textStyle(_:);
  v8(v3);
  v48 = v1 + 13;
  v83 = v9;
  v84 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v82);
  v80 = v0;
  v81 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v79);
  v12 = v49;
  v49(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_10076D9BC();
  v14 = v46;
  v46(v3, v0);
  *v3 = v13;
  v15 = v47;
  v50(v3, v47, v0);
  v80 = v51;
  v81 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v76);
  v12(v16, v3, v0);
  v17 = v13;
  sub_10076D9BC();
  v14(v3, v0);
  *v3 = v17;
  v18 = v50;
  v50(v3, v15, v0);
  v19 = v51;
  v77 = v51;
  v78 = &protocol witness table for StaticDimension;
  v42 = sub_10000DB7C(v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v73);
  v49(v20, v3, v0);
  v21 = v17;
  sub_10076D9BC();
  v14(v3, v0);
  *v3 = v21;
  v22 = v47;
  v18(v3, v47, v0);
  v74 = v19;
  v75 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v73);
  v71 = v0;
  v72 = &protocol witness table for FontSource;
  v23 = sub_10000DB7C(v70);
  v24 = v49;
  v49(v23, v3, v0);
  v45 = v1 + 2;
  v25 = v21;
  sub_10076D9BC();
  v46(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v18(v3, v22, v0);
  v71 = v51;
  v72 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v70);
  v68 = v0;
  v69 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v67);
  v24(v26, v3, v0);
  v27 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v28 = v46;
  v46(v3, v0);
  v43 = v1 + 1;
  *v3 = v27;
  v29 = v47;
  v18(v3, v47, v0);
  v30 = v51;
  v68 = v51;
  v69 = &protocol witness table for StaticDimension;
  v42 = sub_10000DB7C(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v64);
  v24(v31, v3, v0);
  v32 = v27;
  sub_10076D9BC();
  v28(v3, v0);
  *v3 = v32;
  v50(v3, v29, v0);
  v65 = v30;
  v66 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v33 = sub_10000DB7C(v61);
  v24(v33, v3, v0);
  v34 = v32;
  sub_10076D9BC();
  v28(v3, v0);
  *v3 = v34;
  v35 = v50;
  v50(v3, v29, v0);
  v62 = v51;
  v63 = &protocol witness table for StaticDimension;
  v42 = sub_10000DB7C(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(v58);
  v24(v36, v3, v0);
  v37 = v34;
  sub_10076D9BC();
  v28(v3, v0);
  *v3 = v37;
  v35(v3, v47, v0);
  v59 = v51;
  v60 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v55);
  v49(v38, v3, v0);
  v39 = v37;
  sub_10076D9BC();
  v28(v3, v0);
  v56 = sub_10076D67C();
  v57 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v55);
  sub_10076D66C();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  v52 = 0x4024000000000000;
  return sub_10076399C();
}

uint64_t sub_100260658()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100763ADC();
  sub_10000DB18(v4, qword_10099DDB8);
  v41[0] = sub_10000A61C(v4, qword_10099DDB8);
  if (qword_100941140 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A21B8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v45 = v9;
  v10 = v8;
  v51 = enum case for FontSource.useCase(_:);
  v11 = v1[13];
  v44 = v1 + 13;
  v50 = v11;
  v11(v3);
  v47 = sub_10076D9AC();
  v84[3] = v47;
  v84[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v84);
  v82 = v0;
  v83 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v81);
  v48 = v1[2];
  v49 = v1 + 2;
  v48(v12, v3, v0);
  sub_10076D9BC();
  v43 = v1[1];
  v41[1] = v1 + 1;
  v43(v3, v0);
  v46 = v6;
  v42 = v5;
  v52 = v8;
  v8(v3, v6, v5);
  v13 = v51;
  v50(v3, v51, v0);
  v14 = v47;
  v82 = v47;
  v83 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v81);
  v79 = v0;
  v80 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v78);
  v48(v15, v3, v0);
  sub_10076D9BC();
  v16 = v43;
  v43(v3, v0);
  v10(v3, v6, v5);
  v17 = v50;
  v50(v3, v13, v0);
  v79 = v14;
  v80 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v78);
  v76 = v0;
  v77 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v75);
  v19 = v48;
  v48(v18, v3, v0);
  sub_10076D9BC();
  v16(v3, v0);
  v20 = v42;
  v52(v3, v46, v42);
  v17(v3, v51, v0);
  v76 = v47;
  v77 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v75);
  v73 = v0;
  v74 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v72);
  v19(v21, v3, v0);
  sub_10076D9BC();
  v22 = v43;
  v43(v3, v0);
  v52(v3, v46, v20);
  v50(v3, v51, v0);
  v23 = v47;
  v73 = v47;
  v74 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v72);
  v70 = v0;
  v71 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v69);
  v48(v24, v3, v0);
  sub_10076D9BC();
  v22(v3, v0);
  if (qword_100941148 != -1)
  {
    swift_once();
  }

  v25 = v42;
  v26 = sub_10000A61C(v42, qword_1009A21D0);
  v52(v3, v26, v25);
  v27 = v50;
  v50(v3, v51, v0);
  v70 = v23;
  v71 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v69);
  *(&v67 + 1) = v0;
  v68 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(&v66);
  v48(v28, v3, v0);
  sub_10076D9BC();
  v43(v3, v0);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v52(v3, v46, v42);
  v29 = v27;
  v27(v3, v51, v0);
  v30 = v47;
  v65[3] = v47;
  v65[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v62);
  v48(v31, v3, v0);
  sub_10076D9BC();
  v43(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v29(v3, enum case for FontSource.textStyle(_:), v0);
  v63 = v30;
  v64 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v59);
  v33 = v48;
  v48(v32, v3, v0);
  v34 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v35 = v43;
  v43(v3, v0);
  v36 = v42;
  v52(v3, v46, v42);
  v37 = v51;
  v50(v3, v51, v0);
  v60 = v47;
  v61 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v59);
  v57 = v0;
  v58 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v56);
  v33(v38, v3, v0);
  sub_10076D9BC();
  v35(v3, v0);
  v52(v3, v46, v36);
  v50(v3, v37, v0);
  v57 = v47;
  v58 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v56);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v53);
  v33(v39, v3, v0);
  sub_10076D9BC();
  v35(v3, v0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  v53[0] = 0x4024000000000000;
  return sub_10076399C();
}

uint64_t sub_100260FFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_10093F838 != -1)
    {
      swift_once();
    }

    v3 = sub_10076D9AC();
    v4 = v3;
    v5 = qword_10099D268;
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      a2[3] = sub_10076D67C();
      a2[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(a2);
      return sub_10076D66C();
    }

    if (qword_10093F830 != -1)
    {
      swift_once();
    }

    v3 = sub_10076D9AC();
    v4 = v3;
    v5 = qword_10099D250;
  }

  v6 = sub_10000A61C(v3, v5);
  a2[3] = v4;
  a2[4] = &protocol witness table for StaticDimension;
  v7 = sub_10000DB7C(a2);
  v8 = *(*(v4 - 8) + 16);

  return v8(v7, v6, v4);
}

void sub_100261178(char a1)
{
  v2 = v1;
  v4 = sub_10075E77C();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_iconType];
  v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_iconType] = a1 & 1;
  if (v8 != (a1 & 1))
  {
    if (a1)
    {
      v9 = [v2 traitCollection];
      sub_10077071C();

      sub_10075E6FC();
      v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
      v11 = sub_1005B7DD4(v7, 1);
      v12 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
      v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon];
      if (v13)
      {
        [v13 removeFromSuperview];
        v14 = *&v2[v12];
      }

      else
      {
        v14 = 0;
      }

      *&v2[v12] = v11;
      v18 = v11;

      [v2 addSubview:v18];
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView] setHidden:1];
    }

    else
    {
      v15 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
      v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v2[v15];
      }

      else
      {
        v17 = 0;
      }

      *&v2[v15] = 0;

      [*&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView] setHidden:0];
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_100261350@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v4 = sub_100763ADC();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_10076422C();
  v6 = v5 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v5 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(v5 + v7, v13);
    sub_10000CF78(v13, v13[3]);
    sub_100767A2C();
    v9 = v8;
    v11 = v10;
    sub_10000CD74(v13);
    *v6 = v9;
    *(v6 + 8) = v11;
    *(v6 + 16) = 0;
  }

  return sub_100763A5C();
}

uint64_t sub_1002617F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = sub_100763AFC();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763ADC();
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  sub_100261350(&v53 - v11);
  v13 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_isDisplayingSearchAd] == 1 && (v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] & 1) == 0)
  {
    sub_10076C13C();
    v14 = v62;
    (*(v62 + 8))(v12, v4);
    (*(v14 + 32))(v12, v9, v4);
    v13 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  }

  v55 = v9;
  if (v2[v13] == 1)
  {
    v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel];
    v16 = sub_1007626BC();
    *(&v80 + 1) = v16;
    v81 = &protocol witness table for UILabel;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    }

    *&v79 = v17;
    sub_10003F19C(&v79, v82);
    v20 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = &protocol witness table for UILabel;
    }

    else
    {
      v22 = 0;
    }

    v79 = v20;
    *&v80 = 0;
    *(&v80 + 1) = v21;
    v81 = v22;
    v23 = v20;
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    v19 = sub_1007626BC();
    v82[3] = v19;
    v82[4] = &protocol witness table for UILabel;
    v82[0] = v18;
    v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel];
    if (v15)
    {
      *(&v80 + 1) = type metadata accessor for SearchAdTransparencyLabel();
      v81 = &protocol witness table for UILabel;
      *&v79 = v15;
      sub_10003F19C(&v79, &v76);
    }

    else
    {
      v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
      if (v24)
      {
        v25 = &protocol witness table for UILabel;
      }

      else
      {
        v19 = 0;
        v25 = 0;
        *(&v76 + 1) = 0;
        *&v77 = 0;
      }

      *&v76 = v24;
      *(&v77 + 1) = v19;
      v78 = v25;
      v26 = v18;
      v15 = 0;
      v18 = v24;
    }

    v27 = v18;
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  v28 = v15;
  v29 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon])
  {
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView] setHidden:1];
  }

  v30 = *(v62 + 16);
  v56 = v12;
  v54 = v30;
  v30(v6, v12, v4);
  v31 = *&v2[v29];
  *(&v77 + 1) = sub_100016F40(0, &qword_1009441F0);
  v78 = &protocol witness table for UIView;
  v57 = v6;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  }

  *&v76 = v32;
  v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel];
  v34 = sub_1007626BC();
  v75[3] = v34;
  v75[4] = &protocol witness table for UILabel;
  v75[0] = v33;
  v35 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  v36 = v4;
  if (v35)
  {
    v37 = &protocol witness table for UILabel;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v74[2] = 0;
    v74[1] = 0;
  }

  v74[0] = v35;
  v74[3] = v38;
  v74[4] = v37;
  v39 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  v73[4] = &protocol witness table for UILabel;
  v73[3] = v34;
  v72[4] = &protocol witness table for UILabel;
  v73[0] = v39;
  v40 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
  v72[3] = v34;
  v72[0] = v40;
  v41 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
  v71[3] = type metadata accessor for OfferButton();
  v71[4] = &protocol witness table for UIView;
  v71[0] = v41;
  v42 = v31;
  v43 = v33;
  v44 = v35;
  v45 = v39;
  v46 = v40;
  v47 = v41;

  v48 = v57;
  v54(v55, v57, v36);
  sub_10000A570(&v76, &v70);
  sub_10000A570(v75, &v69);
  sub_100016E2C(v74, &v68, &qword_10094BB30);
  sub_10000A570(v73, &v67);
  sub_10000A570(v82, &v66);
  sub_100016E2C(&v79, &v65, &qword_10094BB30);
  sub_100016E2C(v72, &v64, &qword_10094BB30);
  sub_100016E2C(v71, &v63, &unk_10094DA00);
  v49 = v58;
  sub_100763AEC();
  sub_100262DEC();
  v50 = v61;
  sub_10076D2DC();
  (*(v59 + 8))(v49, v50);
  v51 = *(v62 + 8);
  v51(v48, v36);
  sub_10000CFBC(&v79, &qword_10094BB30);
  v51(v56, v36);
  sub_10000CD74(v82);
  sub_10000CFBC(v71, &unk_10094DA00);
  sub_10000CFBC(v72, &qword_10094BB30);
  sub_10000CD74(v73);
  sub_10000CFBC(v74, &qword_10094BB30);
  sub_10000CD74(v75);
  return sub_10000CD74(&v76);
}

uint64_t sub_100261EC0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  v9[3] = sub_10076D9AC();
  v9[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v9);
  v8[3] = v0;
  v8[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v8);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  (*(v1 + 8))(v4, v0);
  return sub_100763ABC();
}

void sub_10026202C()
{
  v1 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel);
  if (v4)
  {
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall) == 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
      v6 = v4;
      [v5 setHidden:1];
      v7 = v6;
      sub_1007625CC();
      sub_1007625DC();

      v8 = v7;
      v9 = [v5 textColor];
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
      v11 = v4;
      if (v10)
      {
        [v10 setHidden:1];
      }

      v12 = qword_100940A98;
      v13 = v4;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = sub_10076D3DC();
      v15 = sub_10000A61C(v14, qword_1009A0DD8);
      v16 = *(v14 - 8);
      (*(v16 + 16))(v3, v15, v14);
      (*(v16 + 56))(v3, 0, 1, v14);
      sub_1007625DC();

      sub_100016F40(0, &qword_100942F10);
      v17 = v13;
      v9 = sub_100770D1C();
    }

    v18 = v9;
    [v4 setTextColor:v9];
  }
}

uint64_t sub_100262280(void *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer];
  if (v4 && (sub_100016F40(0, &unk_10094F000), v7 = a1, v8 = v4, LOBYTE(a1) = sub_100770EEC(), v8, v7, (a1 & 1) != 0))
  {
    [a2 locationInView:v3];
    v9 = [v3 hitTest:0 withEvent:?];
    if (v9)
    {
      v10 = v9;
      v11 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
      sub_100016F40(0, &qword_1009441F0);
      v12 = v11;
      v13 = v10;
      v14 = sub_100770EEC();

      v15 = v14 ^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1002624F8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock])
  {
    if (v2)
    {
      return;
    }

    v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
    [v3 addTarget:v0 action:"lockupTapGestureRecognized"];
    [v3 setDelegate:v0];

    [v0 addGestureRecognizer:v3];
    v2 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = v3;
}

uint64_t sub_100262658()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  v2 = sub_100763ADC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock);

  return sub_1000167E0(v3);
}

id sub_100262704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallLockupView()
{
  result = qword_10094EFE8;
  if (!qword_10094EFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100262840()
{
  result = sub_100763ADC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1002628F8()
{
  v1 = sub_100763ADC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100261350(v4);
  [v5 layoutMargins];
  v6 = sub_100262AD0(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6;
}

unint64_t sub_100262A68()
{
  result = qword_10094EFF8;
  if (!qword_10094EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EFF8);
  }

  return result;
}

double sub_100262AD0(uint64_t a1, void *a2)
{
  v4 = sub_10076443C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_100763ADC();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  (*(v12 + 16))(v15, a1, v11);
  v17 = sub_100763A4C();
  if ((v19 & 1) == 0 && ((v17 | v18) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v20 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v20 = qword_100944CA0;
    }

    v21 = sub_10000A61C(v4, v20);
    (*(v5 + 16))(v7, v21, v4);
    (*(v5 + 32))(v10, v7, v4);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v5 + 8))(v10, v4);
  }

  sub_10076398C();
  v23 = v22;

  (*(v12 + 8))(v15, v11);
  return v23;
}

unint64_t sub_100262DEC()
{
  result = qword_10094F010;
  if (!qword_10094F010)
  {
    sub_100763AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F010);
  }

  return result;
}

id sub_100262E44()
{
  v1 = sub_10076E3AC();
  __chkstk_darwin(v1);
  v2 = sub_10076E8BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_iconType] = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v7 = sub_100763ADC();
  v8 = sub_10000A61C(v7, qword_10099DDA0);
  (*(*(v7 - 8) + 16))(&v0[v6], v8, v7);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_isDisplayingSearchAd] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer] = 0;
  v9 = &v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock];
  v10 = type metadata accessor for SmallLockupView();
  *v9 = 0;
  v9[1] = 0;
  v14.receiver = v0;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v3 + 104))(v5, enum case for UITypesettingLanguageAwareLineHeightRatio.legacy(_:), v2);
  v12 = v11;
  sub_100770C0C();
  sub_10076E38C();
  sub_100770C1C();

  return v12;
}

uint64_t static NSUserActivity.handle(userActivity:asPartOf:)(void *a1, uint64_t a2)
{
  v75 = a2;
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v70 = sub_100766EDC();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075F65C();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100765F6C();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v63 = &v54 - v13;
  v14 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v14 - 8);
  v60 = &v54 - v15;
  v58 = sub_10076C15C();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100760EFC();
  v55 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076096C();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&qword_10094F020);
  __chkstk_darwin(v22 - 8);
  v24 = &v54 - v23;
  v25 = sub_10075F49C();
  v73 = *(v25 - 8);
  v74 = v25;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 activityType];
  v30 = sub_10076FF9C();
  v32 = v31;

  if (sub_10076FF9C() == v30 && v33 == v32)
  {

LABEL_5:

    v35 = v75;

    return sub_100264370(a1, v35);
  }

  v54 = v5;
  v34 = sub_10077167C();

  if (v34)
  {
    goto LABEL_5;
  }

  if (sub_10076FF9C() == v30 && v37 == v32)
  {
  }

  else
  {
    v38 = sub_10077167C();

    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  v39 = a1;
  sub_10075F46C();
  v41 = v73;
  v40 = v74;
  if ((*(v73 + 48))(v24, 1, v74) == 1)
  {
    sub_10000CFBC(v24, &qword_10094F020);
    return 0;
  }

  else
  {
    v42 = v28;
    (*(v41 + 32))(v28, v24, v40);
    sub_100761FAC();
    sub_100761F8C();
    sub_10075F48C();
    sub_100761F1C();

    v43 = v56;
    (*(v56 + 8))(v21, v19);
    sub_10076148C();
    sub_10076F63C();
    if (v78)
    {
      sub_1007690DC();
    }

    (*(v55 + 104))(v72, enum case for NavigationTab.loading(_:), v17);
    sub_10000A5D4(&unk_100942870);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007841E0;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    (*(v57 + 104))(v59, enum case for FlowPage.unknown(_:), v58);
    v45 = v60;
    sub_10075F47C();
    v46 = sub_10075DB7C();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = v63;
    sub_10075F48C();
    (*(v43 + 56))(v47, 0, 1, v19);
    v76 = 0u;
    v77 = 0u;
    sub_10076F4DC();
    (*(v61 + 104))(v66, enum case for FlowAnimationBehavior.never(_:), v62);
    (*(v64 + 104))(v69, enum case for FlowOrigin.external(_:), v65);
    v48 = *(v67 + 13);
    v67 = v42;
    v48(v71, enum case for FlowPresentationContext.infer(_:), v70);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    *(v44 + 32) = sub_10075F5EC();
    sub_10076F4DC();
    sub_10076225C();
    swift_allocObject();
    v49 = sub_10076221C();
    v50 = sub_10000A5D4(&unk_1009428E0);
    v51 = v54;
    v52 = v75;
    sub_10076F5AC();
    v53 = *(v50 - 8);
    if ((*(v53 + 48))(v51, 1, v50) == 1)
    {
      (*(v73 + 8))(v67, v74);

      sub_10000CFBC(v51, &unk_100943200);
    }

    else
    {
      sub_100263C58(v49, 1, v52, v51, &type metadata accessor for TabChangeAction, &qword_10094F078, &type metadata accessor for TabChangeAction);

      (*(v73 + 8))(v67, v74);
      (*(v53 + 8))(v51, v50);
    }

    return 1;
  }
}

uint64_t sub_100263C58(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v30 = a4;
  v29 = a2;
  v8 = sub_10076F1BC();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FA1C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = sub_10000A5D4(&unk_100958FE0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v24 - v20;
  v31[3] = v26(0);
  v31[4] = sub_100264954(v27, v28);
  v31[0] = a1;
  if (v29)
  {

    sub_1005A26CC();
    (*(v12 + 16))(v15, v17, v11);
    sub_10076F19C();
    sub_10076F60C();
    (*(v24 + 8))(v10, v25);
    (*(v12 + 32))(v21, v17, v11);
    (*(v19 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v18);
  }

  else
  {
    (*(v19 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  }

  sub_10000A5D4(&unk_1009428E0);
  v22 = sub_10076F6CC();

  (*(v19 + 8))(v21, v18);
  sub_10000CD74(v31);
  return v22;
}

uint64_t sub_100264370(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = sub_10076F4FC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100760EFC();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076095C();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076096C();
  v39 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 userInfo];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v36 = v5;
  v19 = sub_10076FE4C();

  v41 = sub_10076FF9C();
  v42 = v20;
  sub_10077140C();
  if (!*(v19 + 16) || (v21 = sub_10060FEFC(v43), (v22 & 1) == 0))
  {

    sub_100016C74(v43);
LABEL_10:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_11;
  }

  sub_10000CD08(*(v19 + 56) + 32 * v21, &v44);
  sub_100016C74(v43);

  if (!*(&v45 + 1))
  {
LABEL_11:
    sub_10000CFBC(&v44, &unk_1009434C0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = v43[0];
  v23 = v43[1];
  v25 = sub_10076FF9C();
  v35[1] = v24;
  if (v25 != v24 || v26 != v23)
  {
    v29 = sub_10077167C();

    v27 = v36;
    if (v29)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v27 = v36;
LABEL_14:
  (*(v37 + 104))(v12, enum case for ReferrerData.Kind.spotlight(_:), v10);
  sub_10076094C();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F1C();

  (*(v38 + 104))(v9, enum case for NavigationTab.arcade(_:), v7);
  sub_10076F4DC();
  sub_10076225C();
  swift_allocObject();
  v30 = sub_10076221C();
  v31 = sub_10000A5D4(&unk_1009428E0);
  v32 = v40;
  sub_10076F5AC();
  v33 = v27;
  v34 = *(v31 - 8);
  if ((*(v34 + 48))(v33, 1, v31) == 1)
  {
    (*(v39 + 8))(v16, v13);

    sub_10000CFBC(v33, &unk_100943200);
  }

  else
  {
    sub_100263C58(v30, 1, v32, v33, &type metadata accessor for TabChangeAction, &qword_10094F078, &type metadata accessor for TabChangeAction);

    (*(v39 + 8))(v16, v13);
    (*(v34 + 8))(v33, v31);
  }

  return 1;
}

uint64_t sub_100264954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100264A54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100264A9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton()) init];
    sub_10076C3FC();
    sub_10076B8EC();
    v8 = v7;

    if (v8)
    {
      v9 = sub_10076FF6C();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_10094CD78];
    v15 = *&v6[qword_10094CD78];
    *v14 = sub_100265034;
    v14[1] = v13;

    sub_1000167E0(v15);
    v16 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel());
    v17 = v6;
    v18 = sub_1004CD778(v17);
    if (v3[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v19 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] text];
      if (v19)
      {
        v20 = v19;
        v21 = sub_10076FF9C();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }
    }

    else
    {
      v21 = sub_10076C3EC();
      v23 = v24;
    }

    v26 = &v18[qword_10095A010];
    *v26 = v21;
    v26[1] = v23;

    sub_1004CDE04();
    v27 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel;
    v28 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel];
    v29 = v18;
    if (v28)
    {
      [v28 removeFromSuperview];
      v28 = *&v3[v27];
    }

    *&v3[v27] = v18;
    v30 = v18;

    sub_10026202C();
    [v3 addSubview:v30];

    v31 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
    v32 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
    if (v32 && ([v32 isHidden] & 1) == 0 && (v33 = *&v3[v31]) != 0)
    {
      v34 = [v33 hasContent];
    }

    else
    {
      v34 = 0;
    }

    v35 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter;
    swift_beginAccess();
    sub_10003F0D4(&v3[v35], v37);
    v36 = v38;
    sub_10000CFBC(v37, &unk_1009434C0);
    if (v36 || v34)
    {
      [*&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    }

    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_isDisplayingSearchAd] = 0;
    [v2 setNeedsLayout];
    v10 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel;
    v11 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v3[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v3[v10] = 0;

    v25 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v25)
    {

      [v25 setHidden:0];
    }
  }
}

uint64_t sub_100264E7C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943200);
  }

  v8 = sub_10076C3FC();
  sub_100263BF0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_100264FF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10026503C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_10094F0E0 = result;
  return result;
}

char *sub_100265090(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075DDBC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  v18 = sub_10000A5D4(&qword_1009489D8);
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *&v5[v19] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v20 = &v5[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  *v21 = 0;
  v21[1] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  v23 = sub_1007604EC();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10000A5D4(&qword_10094F160);
  swift_allocObject();
  *&v5[v24] = sub_10076FE0C();
  sub_10075DDAC();
  v25 = sub_10075DD8C();
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  v41[0] = v25;
  v41[1] = v27;
  sub_10077140C();
  v5[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_allowsAutoPlay] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying] = 0;
  swift_unknownObjectWeakInit();
  v28 = type metadata accessor for HeroCarouselCollectionViewCell();
  v42.receiver = v5;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  v32 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView;
  [v31 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView]];

  v33 = *&v29[v32];
  v41[3] = v28;
  v41[4] = &off_10088EA70;
  v41[0] = v29;
  v34 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  v35 = v29;
  v36 = v33;
  sub_10003837C(v41, v33 + v34, &qword_10094F168);
  swift_endAccess();

  v37 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  [*&v35[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer] addTarget:v35 action:"handleTap:"];
  v38 = *&v35[v37];
  [v38 setDelegate:v35];

  [v35 addGestureRecognizer:*&v35[v37]];
  return v35;
}

uint64_t sub_100265560(uint64_t a1)
{
  v3 = sub_100763B6C();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100962960);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1007604EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  sub_100267A24(a1, v1 + v16);
  swift_endAccess();
  sub_100016E2C(v1 + v16, v8, &unk_100962960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(a1, &unk_100962960);
    return sub_10000CFBC(v8, &unk_100962960);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    if (qword_10093FBF0 != -1)
    {
      swift_once();
    }

    v18 = qword_10094F0E0;
    sub_100763B5C();
    sub_10076FDFC();
    sub_10000CFBC(a1, &unk_100962960);
    (*(v20 + 8))(v5, v21);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_10026589C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView];
  v3 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = &v1[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {

    v14(v15);
    return sub_1000167E0(v14);
  }

  return result;
}

void sub_100265A00()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094F150);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-1] - v3;
  v5 = type metadata accessor for HeroCarouselCollectionViewCell();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "prepareForReuse");
  v6 = sub_10000A5D4(&qword_1009489D8);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_10003837C(v4, &v0[v7], &unk_10094F150);
  swift_endAccess();
  v8 = &v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  sub_1000167E0(v9);
  v10 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView] + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);
  sub_100349CBC(_swiftEmptyArrayStorage, 0);
  v11 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker);
  *(v10 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker) = 0;
  sub_1003498A4(v11);

  *(v10 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) = 1;
  sub_100349558();
  v12 = sub_10076C03C();
  v15[3] = v12;
  v15[4] = sub_1001D7794();
  v13 = sub_10000DB7C(v15);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v12);
  LOBYTE(v12) = sub_10076C90C();
  sub_10000CD74(v15);
  if ((v12 & 1) == 0)
  {
    sub_10065D93C(0);
  }

  v1[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying] = 0;
}

void sub_100265C70(void *a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  objc_msgSendSuper2(&v30, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView];
    v26 = v3;
    v5 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_parallaxY;
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_parallaxY) = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
    v6 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_20;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v27 = a1;

    if (v7)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = &OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v12 = &OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v13 = sub_10077149C();
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            __break(1u);
LABEL_20:
            v7 = sub_10077158C();
            goto LABEL_4;
          }

          v13 = *(v6 + 8 * v8 + 32);
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_14;
          }
        }

        v14 = *(v4 + v5);
        v15 = *(*(*&v13[*v10] + *v12) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
        v16 = *&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
        *&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v14;
        if (v14 != v16)
        {
          v17 = v9;
          v18 = v6;
          v19 = v7;
          v20 = v5;
          v21 = v12;
          v22 = v10;
          v23 = v13;
          [v15 setNeedsLayout];
          v13 = v23;
          v10 = v22;
          v12 = v21;
          v5 = v20;
          v7 = v19;
          v6 = v18;
          v9 = v17;
          v11 = v28;
        }

        ++v8;
      }

      while (a1 != v7);
    }

    v24 = sub_10076C03C();
    v29[3] = v24;
    v29[4] = sub_1001D7794();
    v25 = sub_10000DB7C(v29);
    (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v24);
    LOBYTE(v24) = sub_10076C90C();
    sub_10000CD74(v29);
    if ((v24 & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding) = *(v26 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
      sub_10065DA90();
    }
  }
}

void sub_100265F78()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100767CDC();
  }

  v4 = sub_10076C03C();
  v6[3] = v4;
  v6[4] = sub_1001D7794();
  v5 = sub_10000DB7C(v6);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  LOBYTE(v4) = sub_10076C90C();
  sub_10000CD74(v6);
  if ((v4 & 1) == 0)
  {
    sub_10065D93C(1);
  }

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying) = 1;
}

void sub_100266200()
{
  v91 = sub_10076F7CC();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = v80 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v1 - 8);
  v92 = v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v80 - v4;
  __chkstk_darwin(v6);
  v8 = v80 - v7;
  __chkstk_darwin(v9);
  v11 = v80 - v10;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v88 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v80 - v16;
  __chkstk_darwin(v18);
  v20 = v80 - v19;
  __chkstk_darwin(v21);
  v23 = v80 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (!v26)
  {

    return;
  }

  v87 = v26;
  v85 = v17;
  v27 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView;
  v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView];
  if ((v28[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex + 8] & 1) == 0)
  {
    v86 = v13;
    v29 = *&v28[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex];
    v30 = v28;
    v84 = v12;
    v31 = v30;
    v32 = v29;
    v13 = v86;
    v33 = sub_10034A5F4(v32, 0);

    v12 = v84;
    if (v33)
    {
      if (!*&v33[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem])
      {

        v13 = v86;
        (*(v86 + 56))(v11, 1, 1, v12);
        goto LABEL_10;
      }

      v82 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem;
      v83 = v33;

      sub_10076276C();

      v13 = v86;
      v81 = *(v86 + 48);
      if (v81(v11, 1, v12) == 1)
      {

LABEL_10:
        sub_10000CFBC(v11, &qword_1009492E0);
        goto LABEL_19;
      }

      v80[0] = *(v13 + 32);
      (v80[0])(v23, v11, v12);
      v34 = v89;
      sub_10076F7DC();
      v96 = 0u;
      v97 = 0u;
      v98 = 1;
      v35 = sub_1007660CC();
      (*(v90 + 8))(v34, v91);
      if (!v35)
      {
        goto LABEL_18;
      }

      v80[1] = v35;
      if (*&v83[v82] && (, v36 = sub_10076279C(), , v36))
      {
        sub_10076708C();

        v37 = v84;
        v38 = v81(v8, 1, v84);
        v39 = v86;
        if (v38 != 1)
        {
          (v80[0])(v20, v8, v37);
          sub_10076610C();

          (*(v39 + 8))(v20, v37);
          goto LABEL_18;
        }
      }

      else
      {

        (*(v86 + 56))(v8, 1, 1, v84);
      }

      sub_10000CFBC(v8, &qword_1009492E0);
LABEL_18:
      sub_10076610C();

      v13 = v86;
      v12 = v84;
      (*(v86 + 8))(v23, v84);
    }
  }

LABEL_19:
  v40 = *&v25[v27];
  v41 = sub_10065DD9C();

  if (!v41)
  {

    return;
  }

  v42 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem;
  if (!*&v41[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem])
  {

    (*(v13 + 56))(v5, 1, 1, v12);
    goto LABEL_25;
  }

  sub_10076276C();

  v43 = v13;
  v44 = *(v13 + 48);
  if (v44(v5, 1, v12) == 1)
  {

LABEL_25:
    v45 = v5;
LABEL_26:
    sub_10000CFBC(v45, &qword_1009492E0);
    return;
  }

  v46 = *(v13 + 32);
  v47 = v85;
  v86 = v13 + 32;
  v84 = v46;
  v46(v85, v5, v12);
  [v41 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v25;
  v57 = v12;
  v58 = [v56 superview];
  [v41 convertRect:v58 toView:{v49, v51, v53, v55}];

  sub_1007660EC();
  v59 = *&v41[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (!v59)
  {

    (*(v13 + 8))(v47, v57);
    return;
  }

  if (!*&v41[v42])
  {

    v62 = v92;
LABEL_36:
    (*(v13 + 8))(v85, v57);
    (*(v13 + 56))(v62, 1, 1, v57);
    goto LABEL_37;
  }

  v60 = v59;

  v61 = sub_10076279C();

  v62 = v92;
  if (!v61)
  {

    goto LABEL_36;
  }

  sub_10076708C();

  v63 = v57;
  if (v44(v62, 1, v57) == 1)
  {

    (*(v13 + 8))(v85, v57);
LABEL_37:
    v45 = v62;
    goto LABEL_26;
  }

  v64 = v88;
  v84(v88, v62, v63);
  v65 = v89;
  v66 = v85;
  sub_10076F7DC();
  v93 = 0u;
  v94 = 0u;
  v95 = 1;
  v67 = sub_1007660CC();
  (*(v90 + 8))(v65, v91);
  v68 = v43;
  if (v67)
  {
    v69 = v60;
    [v69 bounds];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = [v56 superview];

    [v69 convertRect:v78 toView:{v71, v73, v75, v77}];
    sub_1007660EC();
  }

  else
  {
  }

  v79 = *(v68 + 8);
  v79(v64, v63);
  v79(v66, v63);
}

id sub_100266D18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeroCarouselCollectionViewCell()
{
  result = qword_10094F118;
  if (!qword_10094F118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100266EC8()
{
  sub_1002670B0(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10026704C();
    if (v1 <= 0x3F)
    {
      sub_1002670B0(319, &unk_10094F140, &type metadata accessor for TitleEffect);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10026704C()
{
  if (!qword_10094F130)
  {
    sub_10000CE78(&qword_1009489D8);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10094F130);
    }
  }
}

void sub_1002670B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100267104@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  return sub_10008C3EC(v1 + v3, a1);
}

void sub_100267170()
{
  v1 = v0;
  v2 = sub_10076C03C();
  v4[3] = v2;
  v4[4] = sub_1001D7794();
  v3 = sub_10000DB7C(v4);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v2);
  LOBYTE(v2) = sub_10076C90C();
  sub_10000CD74(v4);
  if ((v2 & 1) == 0)
  {
    sub_10065D93C(0);
  }

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying) = 0;
}

uint64_t sub_1002672BC()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10026731C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1002673B4()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_100267410(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_1002674D0())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1002676A0;
}

uint64_t sub_100267570@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  return sub_100016E2C(v3 + v4, a1, &unk_100962960);
}

uint64_t sub_1002675F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100267628()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100267660()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1002676A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_1009489D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-v8];
  v10 = sub_10000A5D4(&unk_10094F150);
  __chkstk_darwin(v10 - 8);
  v12 = &v25[-v11];
  v13 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100016E2C(v3 + v13, v12, &unk_10094F150);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_10000CFBC(v12, &unk_10094F150);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    v14 = sub_10000CFBC(v12, &unk_10094F150);
    __chkstk_darwin(v14);
    *&v25[-16] = a1;
    sub_1000F4CCC();
    sub_10076F83C();
    (*(v7 + 8))(v9, v6);
  }

  v15 = (v3 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {

    v16(v17);
    sub_1000167E0(v16);
  }

  if (a2)
  {
    v18 = *(*(*(*(a2 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView) + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v18)
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = *(v19 + qword_1009602F0);
        if (v20)
        {
          v21 = v18;
          v22 = v20;
          sub_10076056C();
        }
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_100767CDC();
  }
}

id sub_1002679D8(uint64_t a1)
{
  result = [*(*(v1 + 16) + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl) currentPage];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_100267A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100962960);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100267A94()
{
  v1 = v0;
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_itemLayoutContext;
  v7 = sub_10076341C();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView();
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  v10 = sub_10000A5D4(&qword_1009489D8);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler);
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  v13 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  v15 = sub_1007604EC();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10000A5D4(&qword_10094F160);
  swift_allocObject();
  *(v1 + v16) = sub_10076FE0C();
  sub_10075DDAC();
  v17 = sub_10075DD8C();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20[0] = v17;
  v20[1] = v19;
  sub_10077140C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_allowsAutoPlay) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying) = 0;
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

id sub_100267DCC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews] = _swiftEmptyArrayStorage;
  sub_100765A7C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_ribbonBarItemModels] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_maxRowsStandard] = 2;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_maxRowsAX] = 5;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10093FBF8 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_10094F170];
  sub_10000A5D4(&unk_100945BF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100783DD0;
  *(v16 + 32) = sub_10076E3FC();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v15;
}

id sub_10026808C(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews];
  if (v4 >> 62)
  {
    result = sub_10077158C();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = sub_10077158C();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_10077149C();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_10026823C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = sub_10076D1FC();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100765A8C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100765A9C();
  v19 = *(v21 - 8);
  *&v9 = __chkstk_darwin(v21).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v9);

  sub_10016E318(v12);

  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_metrics], v5);
  sub_100765A4C();
  sub_10076422C();
  sub_100765A6C();
  (*(v18 + 8))(v4, v20);
  v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    swift_endAccess();

    v14(v15);
    sub_1000167E0(v14);
    return (*(v19 + 8))(v11, v21);
  }

  else
  {
    (*(v19 + 8))(v11, v21);
    return swift_endAccess();
  }
}

double sub_100268598(uint64_t a1)
{
  v14[1] = a1;
  v2 = sub_100765A8C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100765A9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10016E318(v10);

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_metrics, v2);
  sub_100765A4C();
  sub_100765A5C();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  return v12;
}

id sub_100268844(void *a1, void *a2, void *a3)
{
  v4 = a1;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_maxRowsStandard) = a2;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_maxRowsAX) = a3;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_ribbonBarItemModels) = a1;

  v24 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v19 = v3;
    v20 = v4;
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v7 = sub_10077149C();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v5 = sub_10077158C();
          goto LABEL_3;
        }
      }

      v9 = [objc_allocWithZone(type metadata accessor for RibbonBarItemCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v10 = sub_10076102C();
      if (v10)
      {
        v11 = v10;
        v12 = v5;
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = v11;
        v15 = &v9[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction];
        v16 = *&v9[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction];
        *v15 = sub_100269570;
        v15[1] = v14;

        sub_1000167E0(v16);
        v5 = v12;
        v4 = v20;
      }

      sub_1001B878C(v7, v23);

      sub_10077019C();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v3 = &v24;
      sub_10077025C();
      ++v6;
      if (v8 == v5)
      {
        v17 = v24;
        v3 = v19;
        goto LABEL_18;
      }
    }
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_18:
  sub_10026808C(v17);
  return [v3 setNeedsLayout];
}

void sub_100268B6C()
{
  v0 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v35 - v1;
  v3 = sub_10076F7FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v47 = *&v8[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_ribbonBarItemModels];
      if (v47)
      {
        v11 = *&v8[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews];
        v37 = v8;
        if (v11 >> 62)
        {
          goto LABEL_39;
        }

        for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
        {

          if (!i)
          {
            break;
          }

          v45 = v11 & 0xFFFFFFFFFFFFFF8;
          v46 = v11 & 0xC000000000000001;
          v13 = v47 & 0xFFFFFFFFFFFFFF8;
          if (v47 >= 0)
          {
            v14 = v47 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v14 = v47;
          }

          v35 = v14;
          v39 = (v4 + 32);
          v40 = (v4 + 48);
          v38 = (v4 + 8);
          v15 = 4;
          v43 = v47 & 0xC000000000000001;
          v44 = v47 >> 62;
          v41 = v47 & 0xFFFFFFFFFFFFFF8;
          v42 = i;
          v36 = v2;
          while (1)
          {
            v4 = v15 - 4;
            if (v46)
            {
              v16 = sub_10077149C();
            }

            else
            {
              if (v4 >= *(v45 + 16))
              {
                goto LABEL_37;
              }

              v16 = *(v11 + 8 * v15);
            }

            v17 = v16;
            v18 = v15 - 3;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v44)
            {
              if (v4 == sub_10077158C())
              {
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (v4 == *(v13 + 16))
            {
              goto LABEL_33;
            }

            if (v43)
            {
              sub_10077149C();
            }

            else
            {
              if (v4 >= *(v13 + 16))
              {
                goto LABEL_38;
              }
            }

            sub_10076104C();
            if ((*v40)(v2, 1, v3) == 1)
            {

              sub_100269504(v2);
            }

            else
            {
              (*v39)(v6, v2, v3);
              v19 = v17;
              if ([v19 isHidden])
              {
              }

              else
              {
                [v19 frame];
                v21 = v20;
                v23 = v22;
                v25 = v24;
                v27 = v26;

                v28 = v11;
                v29 = v10;
                v30 = v3;
                v31 = v6;
                v32 = v37;
                v33 = [v37 superview];
                v34 = v32;
                v6 = v31;
                v3 = v30;
                v10 = v29;
                v11 = v28;
                v2 = v36;
                [v34 convertRect:v33 toView:{v21, v23, v25, v27}];

                sub_1007660EC();
              }

              (*v38)(v6, v3);
            }

            ++v15;
            v13 = v41;
            if (v18 == v42)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          ;
        }

LABEL_34:
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

uint64_t type metadata accessor for TagFacetRibbonView()
{
  result = qword_10094F1B8;
  if (!qword_10094F1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10026910C()
{
  result = sub_100765A8C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100269218(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002692D0()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_10026932C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_1002693EC())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1002694FC;
}

uint64_t sub_10026948C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002694C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100269504(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009492E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100269578(void *a1)
{
  sub_10000CF78(a1, a1[3]);
  v2 = sub_10076E36C();
  if (qword_10093FBF8 != -1)
  {
    swift_once();
  }

  v3 = qword_10094F170;
  if (sub_10077086C())
  {
    v3;
  }

  sub_10008B8A4(a1, a1[3]);
  return sub_10076E37C();
}

char *sub_10026964C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1480);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[v18] = sub_1007626AC();
  v24 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v25 = sub_10076341C();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  v33 = *&v30[OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v34 = v33;
  sub_10076262C();

  v35 = *&v30[v32];
  sub_1000325F0();
  v36 = v35;
  v37 = sub_100770D1C();
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v32]];

  return v30;
}

uint64_t sub_100269A7C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100767ABC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "layoutSubviews", v8);
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v14[4] = sub_1007626BC();
  v14[5] = &protocol witness table for UILabel;
  v14[1] = v11;
  v12 = v11;
  sub_100767A9C();
  [v0 bounds];
  sub_100767AAC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for PreorderDisclaimerCollectionViewCell()
{
  result = qword_10094F1F8;
  if (!qword_10094F1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100269D34()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100269DD4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A1480);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  v14 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  sub_10077156C();
  __break(1u);
}

_BYTE *sub_10026A064(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  isEscapingClosureAtFileLocation = sub_10076771C();
  v7 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v4[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_size] = a1 & 1;
  if ((a1 & 1) == 0)
  {
    if (qword_1009410B0 != -1)
    {
      swift_once();
    }

    v17 = qword_1009A2008;
    goto LABEL_7;
  }

  if (qword_1009410B8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = qword_1009A2020;
LABEL_7:
    v18 = sub_10000A61C(v10, v17);
    (*(v11 + 16))(v13, v18, v10);
    (*(v11 + 32))(v16, v13, v10);
    v19 = *(v11 + 56);
    v11 += 56;
    v19(v16, 0, 1, v10);
    v20 = *(v7 + 104);
    v7 += 104;
    v20(v9, enum case for DirectionalTextAlignment.none(_:), isEscapingClosureAtFileLocation);
    v21 = objc_allocWithZone(sub_1007626BC());
    *&v4[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel] = sub_1007626AC();
    v22 = type metadata accessor for CountBadgeView();
    v39.receiver = v4;
    v39.super_class = v22;
    v23 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v35);
    v24 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 2) = v23;
    v9[24] = a1 & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10026AC1C;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1000349FC;
    v38 = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C5148;
    aBlock[3] = &unk_10088ECB0;
    v16 = _Block_copy(aBlock);
    v13 = v38;
    v4 = v23;

    [v24 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v25 = objc_opt_self();
  v26 = [v25 redColor];
  [v4 setBackgroundColor:v26];

  v27 = OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel;
  v28 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel];
  if (v36)
  {
    v29 = v28;
    v30 = sub_10076FF6C();
  }

  else
  {
    v31 = v28;
    v30 = 0;
  }

  [v28 setText:v30];

  v32 = *&v4[v27];
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  [v4 addSubview:*&v4[v27]];
  [v4 setUserInteractionEnabled:0];

  return v4;
}

id sub_10026A628(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel];
  v5 = [v4 text];
  if (a2)
  {
    if (v5)
    {

      v6 = sub_10076FF6C();

LABEL_9:
      [v4 setText:v6];

      return [v2 setNeedsLayout];
    }

    v14 = sub_10076FF6C();

    [v4 setText:v14];

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v23 = sub_10004AE34;
    v24 = v16;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10009AEDC;
    v22 = &unk_10088EDA0;
    v9 = _Block_copy(&v19);
    v17 = v2;

    [v15 animateWithDuration:4 delay:v9 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v23 = sub_10026ACA0;
    v24 = v8;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10009AEDC;
    v22 = &unk_10088ED00;
    v9 = _Block_copy(&v19);
    v10 = v2;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v23 = sub_10026ACA8;
    v24 = v11;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000513F0;
    v22 = &unk_10088ED50;
    v12 = _Block_copy(&v19);
    v13 = v10;

    [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
    _Block_release(v12);
  }

  _Block_release(v9);
  return [v2 setNeedsLayout];
}

id sub_10026AB14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountBadgeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10026AB90()
{
  result = qword_10094F240;
  if (!qword_10094F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F240);
  }

  return result;
}

uint64_t sub_10026ABE4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10026AC1C()
{
  v1 = 9.0;
  if (*(v0 + 24))
  {
    v1 = 12.0;
  }

  return [*(v0 + 16) _setContinuousCornerRadius:v1];
}

uint64_t sub_10026AC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10026AC68()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10026ACC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel);
  result = [v1 text];
  if (result)
  {
    v3 = result;
    sub_10076FF9C();

    v4 = sub_1007700AC();

    if (v4 >= 2)
    {
      return [v1 sizeThatFits:{0.0, 0.0}];
    }
  }

  return result;
}

char *sub_10026ADD4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076C43C();
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10076771C();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_10000A5D4(&qword_10094B7E8);
  __chkstk_darwin(v16);
  v17 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView;
  v20 = type metadata accessor for IconGridView();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_10075FD2C();
  sub_10076D4CC();
  sub_100071820(&qword_10094B7F0, &qword_10094B7E8);
  sub_10076E18C();
  *&v21[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks] = 0;
  *&v21[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader] = 0;
  v22 = &v21[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_configuration];
  *v22 = vdupq_n_s64(0x4056000000000000uLL);
  *(v22 + 2) = 0x4024000000000000;
  *(v22 + 3) = 2;
  *(v22 + 2) = xmmword_100798110;
  v63.receiver = v21;
  v63.super_class = v20;
  *&v5[v19] = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *&v5[v23] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_100940A38 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D3DC();
  v26 = sub_10000A61C(v25, qword_1009A0CB8);
  v27 = *(v25 - 8);
  (*(v27 + 16))(v15, v26, v25);
  (*(v27 + 56))(v15, 0, 1, v25);
  (*(v55 + 104))(v56, enum case for DirectionalTextAlignment.none(_:), v57);
  v28 = objc_allocWithZone(sub_1007626BC());
  *&v5[v24] = sub_1007626AC();
  v29 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton;
  v30 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v29] = sub_1001E89B8(0);
  v31 = &v5[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v62.receiver = v5;
  v62.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView]];

  v34 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  v35 = *&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v36 = v59;
  v37 = v60;
  v38 = v61;
  (*(v60 + 104))(v59, enum case for Wordmark.arcade(_:), v61);
  v39 = v35;
  v40.super.isa = [v32 traitCollection];
  isa = v40.super.isa;
  v42 = sub_10076C42C(v40);

  (*(v37 + 8))(v36, v38);
  [v39 setImage:v42];

  v43 = *&v32[v34];
  sub_100016F40(0, &qword_100942F10);
  v44 = v43;
  v45 = sub_100770CFC();
  [v44 setTintColor:v45];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v34]];

  v47 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  v48 = *&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  sub_100770E7C();

  v49 = *&v32[v47];
  v50 = sub_100770D1C();
  [v49 setTextColor:v50];

  v51 = [v32 contentView];
  [v51 addSubview:*&v32[v47]];

  v52 = [v32 contentView];
  [v52 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton]];

  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v32;
}

uint64_t sub_10026B55C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10094F248);
  sub_10000A61C(v4, qword_10094F248);
  if (qword_100940A38 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0CB8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10026B730()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v71 = sub_10076D1FC();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1007653CC();
  v94 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1007653EC();
  v95 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10076540C();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076D39C();
  v9 = *(v92 - 8);
  __chkstk_darwin(v92);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076299C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10076543C();
  v65 = *(v66 - 8);
  *&v16 = __chkstk_darwin(v66).n128_u64[0];
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v68 = ObjectType;
  objc_msgSendSuper2(&v107, "layoutSubviews", v16);
  v90 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v61 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v63 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
  sub_10076298C();
  sub_1007629BC();
  sub_10026D2B4(&qword_10094F298, &type metadata accessor for OffsetGridLayout);
  v72 = v1;
  sub_10076DBDC();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  v76 = v18;
  v21 = [v18 image];
  if (v21)
  {
    v22 = v21;
    [v21 size];
    sub_10076D3AC();
    sub_10076D35C();

    (*(v9 + 8))(v11, v92);
  }

  sub_10000A5D4(&qword_10094F2A8);
  v23 = *(sub_10076541C() - 8);
  v91 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100788B20;
  v62 = v25;
  v92 = v25 + v24;
  *&v98 = v90;
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v20;
  v102 = sub_10076DE7C();
  v103 = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C(&v101);
  sub_10076DE8C();
  sub_100016F40(0, &qword_1009441F0);
  sub_10076D27C();
  sub_10000CD74(&v101);
  v78 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v26 = *(v96 + 104);
  v90 = v96 + 104;
  v89 = v26;
  v26(v8);
  v27 = v95;
  v28 = *(v95 + 104);
  v88 = v95 + 104;
  v87 = v28;
  v28(v6, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:), v80);
  v102 = &type metadata for CGFloat;
  v103 = &protocol witness table for CGFloat;
  v100 = 0;
  v101 = 0x4044000000000000;
  v98 = 0u;
  v99 = 0u;
  v86 = sub_10000A5D4(&unk_100959500);
  v29 = v8;
  v30 = v94;
  v31 = *(v94 + 80);
  v60 = *(v94 + 72);
  v75 = ((v31 + 32) & ~v31) + v60;
  v77 = (v31 + 32) & ~v31;
  v32 = swift_allocObject();
  v74 = xmmword_100783DD0;
  *(v32 + 16) = xmmword_100783DD0;
  sub_10076539C();
  v97 = v32;
  v82 = sub_10026D2B4(&qword_10094F2B0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v85 = sub_10000A5D4(&qword_100959510);
  v84 = sub_100071820(&qword_10094F2B8, &qword_100959510);
  v33 = v79;
  v34 = v67;
  sub_1007712CC();
  v35 = v29;
  sub_1007653FC();
  v83 = *(v30 + 8);
  v83(v33, v34);
  sub_10000CFBC(&v98, &unk_100943240);
  v36 = *(v27 + 8);
  v95 = v27 + 8;
  v81 = v36;
  v37 = v80;
  v36(v6, v80);
  v38 = *(v96 + 8);
  v96 += 8;
  v39 = v35;
  v40 = v35;
  v41 = v93;
  v38(v39, v93);
  sub_10000CD74(&v104);
  sub_10000CD74(&v101);
  v101 = v76;
  sub_100016F40(0, &qword_10094A280);
  sub_10076D29C();
  v89(v40, v78, v41);
  v42 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v87(v6, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:), v37);
  v103 = &protocol witness table for CGFloat;
  v102 = &type metadata for CGFloat;
  v100 = 0;
  v101 = 0x4034000000000000;
  v98 = 0u;
  v99 = 0u;
  v76 = v31;
  v43 = swift_allocObject();
  *(v43 + 16) = v74;
  sub_10076539C();
  v97 = v43;
  sub_1007712CC();
  sub_1007653FC();
  v94 = v30 + 8;
  v83(v33, v34);
  sub_10000CFBC(&v98, &unk_100943240);
  v81(v6, v37);
  v44 = v93;
  v73 = v38;
  v38(v40, v93);
  sub_10000CD74(&v104);
  sub_10000CD74(&v101);
  v101 = v61;
  sub_1007626BC();
  sub_10076D26C();
  v89(v40, enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:), v44);
  LODWORD(v61) = v42;
  v87(v6, v42, v37);
  if (qword_10093FC00 != -1)
  {
    swift_once();
  }

  v45 = sub_10076D9AC();
  v46 = sub_10000A61C(v45, qword_10094F248);
  v102 = v45;
  v103 = &protocol witness table for StaticDimension;
  v47 = sub_10000DB7C(&v101);
  (*(*(v45 - 8) + 16))(v47, v46, v45);
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100784500;
  sub_10076539C();
  sub_1007653AC();
  v97 = v48;
  v49 = v79;
  sub_1007712CC();
  sub_1007653FC();
  v83(v49, v34);
  sub_10000CFBC(&v98, &unk_100943240);
  v81(v6, v37);
  v50 = v40;
  v51 = v40;
  v52 = v93;
  v73(v50);
  sub_10000CD74(&v104);
  sub_10000CD74(&v101);
  v105 = type metadata accessor for OfferButton();
  v106 = &protocol witness table for UIView;
  v53 = v63;
  v104 = v63;
  v89(v51, v78, v52);
  v87(v6, v61, v37);
  v103 = &protocol witness table for CGFloat;
  v102 = &type metadata for CGFloat;
  v100 = 0;
  v101 = 0x4032000000000000;
  v98 = 0u;
  v99 = 0u;
  v54 = swift_allocObject();
  *(v54 + 16) = v74;
  v55 = v53;
  sub_10076539C();
  v97 = v54;
  sub_1007712CC();
  sub_1007653FC();
  v83(v49, v34);
  sub_10000CFBC(&v98, &unk_100943240);
  v81(v6, v37);
  (v73)(v51, v52);
  sub_10000CD74(&v101);
  sub_10000CD74(&v104);
  v56 = v64;
  sub_1007653DC();
  sub_10076422C();
  sub_10026D2B4(&unk_10094F2C0, &type metadata accessor for _VerticalFlowLayout);
  v57 = v69;
  v58 = v66;
  sub_10076DFCC();
  (*(v70 + 8))(v57, v71);
  return (*(v65 + 8))(v56, v58);
}

uint64_t type metadata accessor for ArcadeShowcaseCollectionViewCell()
{
  result = qword_10094F288;
  if (!qword_10094F288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10026C950()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10026C9FC(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = a2;
  v51 = a1;
  v48 = sub_10076D93C();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D95C();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076DE7C();
  v52 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076443C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_10076299C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076298C();
  sub_1007629BC();
  sub_10026D2B4(&qword_10094F298, &type metadata accessor for OffsetGridLayout);
  sub_10076DBDC();
  v21 = v20;
  (*(v17 + 8))(v19, v16);
  v22 = [a3 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v23 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v23 = qword_100944CA0;
  }

  v24 = sub_10000A61C(v9, v23);
  (*(v10 + 16))(v12, v24, v9);

  (*(v10 + 32))(v15, v12, v9);
  sub_10076441C();
  v26 = v25;
  (*(v10 + 8))(v15, v9);
  sub_10000A5D4(&qword_10094F2A0);
  v27 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v28 = 7 * *(v52 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100783DE0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4044000000000000;
  sub_10076DE8C();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = v21;
  sub_10076DE8C();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4034000000000000;
  sub_10076DE8C();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0;
  sub_10076DE8C();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4033000000000000;
  sub_10076DE8C();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4032000000000000;
  sub_10076DE8C();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = v26;
  sub_10076DE8C();
  if ((sub_10077002C() & 1) == 0)
  {
    if (qword_100940A38 != -1)
    {
      swift_once();
    }

    v30 = sub_10076D3DC();
    sub_10000A61C(v30, qword_1009A0CB8);
    v31 = sub_10076C04C();
    v54 = v31;
    v55 = sub_10026D2B4(&qword_100943230, &type metadata accessor for Feature);
    v32 = sub_10000DB7C(v53);
    (*(*(v31 - 8) + 104))(v32, enum case for Feature.measurement_with_labelplaceholder(_:), v31);
    sub_10076C90C();
    sub_10000CD74(v53);
    sub_10076991C();
    v34 = v33;
    if (qword_10093FC00 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D9AC();
    sub_10000A61C(v35, qword_10094F248);
    sub_10076D42C();
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *v53 = v34 + v36;
    v37 = v43;
    sub_10076DE8C();
    v29 = sub_10049D44C(1uLL, 8, 1, v29);
    *(v29 + 16) = 8;
    (*(v52 + 32))(v29 + v27 + v28, v37, v44);
  }

  (*(v46 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v48);
  sub_10016D72C(v29);

  sub_10076D94C();
  v38 = v50;
  sub_10076D2AC();
  v40 = v39;
  (*(v49 + 8))(v7, v38);
  return v40;
}

uint64_t sub_10026D2B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10026D2FC()
{
  v1 = v0;
  v25 = sub_10076771C();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10000A5D4(&qword_10094B7E8);
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView;
  v10 = type metadata accessor for IconGridView();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_10075FD2C();
  sub_10076D4CC();
  sub_100071820(&qword_10094B7F0, &qword_10094B7E8);
  sub_10076E18C();
  *&v11[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks] = 0;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader] = 0;
  v12 = &v11[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_configuration];
  *v12 = vdupq_n_s64(0x4056000000000000uLL);
  *(v12 + 2) = 0x4024000000000000;
  *(v12 + 3) = 2;
  *(v12 + 2) = xmmword_100798110;
  v26.receiver = v11;
  v26.super_class = v10;
  *(v0 + v9) = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_100940A38 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v16 = sub_10000A61C(v15, qword_1009A0CB8);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v5, v16, v15);
  (*(v17 + 56))(v5, 0, 1, v15);
  (*(v23 + 104))(v24, enum case for DirectionalTextAlignment.none(_:), v25);
  v18 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v14) = sub_1007626AC();
  v19 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton;
  v20 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v19) = sub_1001E89B8(0);
  v21 = (v1 + OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  sub_10077156C();
  __break(1u);
}

void sub_10026D764(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_10076AFBC();
  swift_allocObject();
  v6 = sub_10076AFAC();
  v7 = sub_100273BC0(v5, v6, a3);

  v8 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController);
  *(a2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController) = v7;
}

void (*sub_10026D7F4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100275590;
}

id sub_10026D88C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchResultsMessageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setPreservesSuperviewLayoutMargins:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_10026D924()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect];
    v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect];
    *v6 = sub_100275A88;
    v6[1] = v5;

    sub_1000167E0(v7);

    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_10026DA1C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_100765FAC();
  }

  return result;
}

uint64_t sub_10026DB08(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(*(result + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController) && (type metadata accessor for StoreCollectionViewController(), (v4 = swift_dynamicCastClass()) != 0))
    {
      v5 = &OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph;
      v4 = v3;
    }

    v6 = *(v4 + *v5);
    sub_1007698AC();
    v7 = swift_dynamicCastClass() == 0;

    sub_100563DC4(a1, v7, v6);
  }

  return result;
}

void sub_10026DC04(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {

    v3 = sub_10026D88C();

    sub_1003768E4(v4);

    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
    v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView);
    v63[3] = type metadata accessor for SearchResultsMessageView();
    v63[4] = &protocol witness table for UIView;
    v63[0] = v6;
    sub_10000A570(v63, v62);
    sub_10000A570(v62, v61);
    v7 = swift_allocObject();
    sub_100012498(v62, v7 + 16);
    v8 = swift_allocObject();
    v8[2] = sub_100275A3C;
    v8[3] = v7;
    v8[4] = 0x3FD999999999999ALL;
    v9 = v6;

    sub_10000CD74(v63);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_10000CD74(v61);

LABEL_28:
      v54 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v54)
      {
        v55 = [v54 collectionView];
        if (v55)
        {
          v56 = v55;
          sub_1000E01E8(v55);
          v57 = UIAccessibilityScreenChangedNotification;
          v58 = v56;
          UIAccessibilityPostNotification(v57, v58);
        }
      }

      return;
    }

    v11 = Strong;
    v59 = v6;
    v12 = *(v5 + 24);
    if (v12)
    {
      [v12 setHidden:1];
    }

    v13 = v9;
    [v13 setHidden:0];
    v14 = [v13 superview];
    v15 = [v11 contentView];
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        sub_100016F40(0, &qword_1009441F0);
        v17 = sub_100770EEC();

        v18 = &selRef_initWithTabBarSystemItem_tag_;
        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v16 = v14;
      v18 = &selRef_initWithTabBarSystemItem_tag_;
    }

    else
    {
      v18 = &selRef_initWithTabBarSystemItem_tag_;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

LABEL_24:
    v27 = [v11 v18[115]];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v13 setFrame:{v29, v31, v33, v35}];
    [v13 setAutoresizingMask:18];
    v36 = [v11 v18[115]];
    [v36 addSubview:v13];

LABEL_25:
    v37 = *(v5 + 24);
    *(v5 + 24) = v59;
    v38 = v13;

    if (*(v5 + 65))
    {
      v39 = [v11 v18[115]];
      sub_100016F40(0, &qword_1009441F0);
      sub_10076422C();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v65.origin.x = v41;
      v65.origin.y = v43;
      v65.size.width = v45;
      v65.size.height = v47;
      CGRectGetWidth(v65);
      v48 = [v11 v18[115]];
      sub_10000CF78(v61, v61[3]);
      sub_10076D2AC();
      v50 = v49;

      [v11 setPreferredHeight:v50];
      [v11 setMinimumHeight:0.0];
    }

    v51 = *(v5 + 32);
    v52 = *(v5 + 40);
    v53 = *(v5 + 48);
    *(v5 + 32) = sub_100275A3C;
    *(v5 + 40) = v7;
    *(v5 + 48) = sub_100275A7C;
    *(v5 + 56) = v8;
    *(v5 + 64) = 1;
    sub_1000E0788(v51, v52, v53);
    sub_10000CD74(v61);

    goto LABEL_28;
  }

  v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
  v20 = sub_10026D88C();
  if (*(v19 + 65) == 1 && (v21 = *(v19 + 24)) != 0)
  {
    v60 = v20;
    sub_100016F40(0, &qword_1009441F0);
    v22 = v21;
    v23 = sub_100770EEC();

    if (v23)
    {
      v24 = *(v19 + 24);
      if (v24)
      {
        if (*(v19 + 65) == 1)
        {
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            [v24 setHidden:1];
            [v26 setMinimumHeight:0.0];
            [v26 setPreferredHeight:0.0];

            *(v19 + 65) = 0;
          }
        }
      }
    }
  }

  else
  {
  }
}

void sub_10026E1E0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
  v3 = sub_10026D924();
  if (*(v2 + 65) != 1 || (v4 = *(v2 + 24)) == 0)
  {

LABEL_6:
    v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette);
    v48[3] = type metadata accessor for GuidedSearchTokenPaletteView();
    v48[4] = &protocol witness table for UIView;
    v48[0] = v8;
    sub_10000A570(v48, v47);
    sub_10000A570(v47, v46);
    v9 = swift_allocObject();
    sub_100012498(v47, v9 + 16);
    v10 = v8;
    sub_10000CD74(v48);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_10000CD74(v46);
LABEL_22:

      sub_1000DFBB4();
      return;
    }

    v12 = Strong;
    v13 = *(v2 + 24);
    if (v13)
    {
      [v13 setHidden:1];
    }

    v14 = v10;
    [v14 setHidden:0];
    v15 = [v14 superview];
    v16 = [v12 contentView];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_100016F40(0, &qword_1009441F0);
        v18 = sub_100770EEC();

        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v17 = v15;
    }

    else if (!v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = [v12 contentView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [v14 setFrame:{v21, v23, v25, v27}];
    [v14 setAutoresizingMask:18];
    v28 = [v12 contentView];
    [v28 addSubview:v14];

LABEL_19:
    v29 = *(v2 + 24);
    *(v2 + 24) = v8;
    v30 = v14;

    if (*(v2 + 65))
    {
      v31 = [v12 contentView];
      sub_100016F40(0, &qword_1009441F0);
      sub_10076422C();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v49.origin.x = v33;
      v49.origin.y = v35;
      v49.size.width = v37;
      v49.size.height = v39;
      CGRectGetWidth(v49);
      v40 = [v12 contentView];
      sub_10000CF78(v46, v46[3]);
      sub_10076D2AC();
      v42 = v41;

      [v12 setPreferredHeight:v42];
      [v12 preferredHeight];
      [v12 setMinimumHeight:?];
    }

    v43 = *(v2 + 32);
    v44 = *(v2 + 40);
    v45 = *(v2 + 48);
    *(v2 + 32) = sub_100275A3C;
    *(v2 + 40) = v9;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    sub_1000E0788(v43, v44, v45);
    sub_10000CD74(v46);

    goto LABEL_22;
  }

  v5 = v3;
  sub_100016F40(0, &qword_1009441F0);
  v6 = v4;
  v7 = sub_100770EEC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_10026E5D0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
  v3 = sub_10026D924();
  if (*(v2 + 65) == 1 && (v4 = *(v2 + 24)) != 0)
  {
    v14 = v3;
    sub_100016F40(0, &qword_1009441F0);
    v5 = v4;
    v6 = sub_100770EEC();

    if (v6)
    {
      v7 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette;
      v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette);
      sub_1002517E4(_swiftEmptyArrayStorage);

      v9 = *(v1 + v7);
      *&v9[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
      v10 = v9;

      *&v10[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1002759FC;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088F0A0;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.3];
      _Block_release(v13);
    }
  }

  else
  {
  }
}

uint64_t sub_10026E7B8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
    v2 = result;

    v3 = *(v1 + 24);
    if (v3 && *(v1 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        [v3 setHidden:1];
        [v5 setMinimumHeight:0.0];
        [v5 setPreferredHeight:0.0];

        *(v1 + 65) = 0;
      }
    }
  }

  return result;
}

void sub_10026E894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput);
  if (v3 && v3[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled] != 1)
  {
    v6 = OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField;
    v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField];
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && v7 != 0)
    {
      v10 = v8;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 40);
      v20 = v3;
      v13 = v7;
      v14 = v12(a1, a2, ObjectType, v10);

      if ((v14 & 1) == 0 || ((v15 = *&v3[v6], swift_getObjectType(), (v16 = swift_conformsToProtocol2()) != 0) ? (v17 = v15 == 0) : (v17 = 1), v17))
      {
      }

      else
      {
        v18 = v16;
        v19 = v15;

        sub_100467AD8(v20, v19, v18, a1, a2);
      }
    }
  }
}

uint64_t (*sub_10026EA54(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100275B3C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100275B7C;
}

id sub_10026EAE4(id result)
{
  v2 = v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
  v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = result;
  if (v2 != (result & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
    if (result)
    {
      [v1 addChildViewController:*&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController]];
      result = [v1 view];
      if (result)
      {
        v4 = result;
        result = [v3 view];
        if (result)
        {
          v5 = result;
          [v4 addSubview:result];

          v6 = "didMoveToParentViewController:";
          v7 = v3;
          v8 = v1;

          return [v7 v6];
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] willMoveToParentViewController:0];
      result = [v3 view];
      if (result)
      {
        v9 = result;
        [result removeFromSuperview];

        v6 = "removeFromParentViewController";
        v7 = v3;

        return [v7 v6];
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

id sub_10026EC4C()
{
  v1 = v0;
  v2 = sub_10076F9AC();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10094F4D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SearchViewController();
  v41.receiver = v0;
  v41.super_class = v8;
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v9 = [v0 navigationItem];
  sub_1000DF9B0(v9, 2, 1);

  sub_1007651DC();
  v10 = sub_100016F40(0, &qword_1009471F0);
  v11 = sub_10077068C();
  *(&v39 + 1) = v10;
  v40 = &protocol witness table for OS_dispatch_queue;
  *&v38 = v11;
  sub_10000A5D4(&qword_10094F4E0);
  sub_100071820(&qword_10094F4E8, &qword_10094F4E0);
  sub_10076F46C();

  (*(v5 + 8))(v7, v4);
  sub_10000CD74(&v38);
  sub_10026FC20();
  v12 = [v1 navigationItem];
  result = [v1 tabBarItem];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result title];

  if (v15 || (v15 = [v1 title]) != 0)
  {
    sub_10076FF9C();

    v15 = sub_10076FF6C();
  }

  [v12 setTitle:v15];

  v16 = [v1 navigationItem];
  sub_1002B3AB4();

  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController];
  [v17 setSearchResultsUpdater:v1];
  [v17 setDelegate:v1];
  [v17 setObscuresBackgroundDuringPresentation:0];
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = &v17[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  v20 = *&v17[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  *v19 = sub_100275B18;
  v19[1] = v18;
  v21 = v1;
  sub_1000167E0(v20);
  v22 = [v21 navigationItem];
  [v22 setLargeTitleDisplayMode:3];

  v23 = [v21 navigationItem];
  [v23 setSearchController:v17];

  v24 = [v21 navigationItem];
  [v24 setPreferredSearchBarPlacement:2];

  v25 = [v21 navigationItem];
  [v25 setHidesSearchBarWhenScrolling:0];

  [v21 setDefinesPresentationContext:1];
  sub_1001ACE74();
  result = [v21 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v26 = result;
  sub_100016F40(0, &qword_100942F10);
  v27 = sub_100770D2C();
  [v26 setBackgroundColor:v27];

  result = [v21 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = result;
  v38 = 0u;
  v39 = 0u;
  v29 = v35;
  sub_10076F96C();
  sub_10000CFBC(&v38, &unk_1009434C0);
  sub_100770B9C();

  result = (*(v36 + 8))(v29, v37);
  v30 = v21[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
  v21[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 1;
  if (v30 == 1)
  {
    return result;
  }

  v31 = *&v21[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
  [v21 addChildViewController:v31];
  result = [v21 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v32 = result;
  result = [v31 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = result;
  [v32 addSubview:result];

  return [v31 didMoveToParentViewController:v21];
}

uint64_t sub_10026F2F8(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  v4 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] + OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput);
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput] = v4;
  v6 = v4;

  if (v4)
  {
    v4 = type metadata accessor for SearchTextInputSourceTextField();
    v7 = sub_100275A98(&qword_10094F4D0, type metadata accessor for SearchTextInputSourceTextField);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(&v11 + 1) = 0;
    *&v12 = 0;
  }

  *&v11 = v6;
  *(&v12 + 1) = v4;
  v13 = v7;
  result = sub_1007651CC();
  v9 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction])
  {
    v11 = 0u;
    v12 = 0u;

    sub_1002714A0(v10);

    sub_10000CFBC(&v11, &unk_1009434C0);
    *&v2[v9] = 0;
  }

  return result;
}

id sub_10026F50C(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v7, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  if ([a1 horizontalSizeClass] == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController];
    if (v5)
    {
      [v5 dismissViewControllerAnimated:0 completion:0];
    }
  }

  return [*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] willTransitionToTraitCollection:a1 withTransitionCoordinator:a2];
}

void sub_10026F63C(void *a1)
{
  v2 = v1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] traitCollectionDidChange:a1];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController];
  v5 = [v4 traitCollection];
  v6 = [v5 horizontalSizeClass];
  if (a1 && v6 == [a1 horizontalSizeClass])
  {

LABEL_7:
    v12 = [a1 preferredContentSizeCategory];
    goto LABEL_11;
  }

  v7 = sub_1007706CC();
  v8 = sub_1001ACDAC();
  [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
  v10 = v9;

  v11 = 0.0;
  if ((v7 & 1) == 0)
  {
    if (v10 == 0.0)
    {
      goto LABEL_6;
    }

LABEL_9:
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:v11];

    if (a1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  [*&v4[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v11 = v13 + 15.0;
  if (v11 != v10)
  {
    goto LABEL_9;
  }

LABEL_6:

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!v12)
  {

LABEL_17:
    sub_1000DFD68();
    return;
  }

  v16 = sub_10076FF9C();
  v18 = v17;
  if (v16 == sub_10076FF9C() && v18 == v19)
  {

    return;
  }

  v20 = sub_10077167C();

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }
}

void sub_10026FA54()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v14 setFrame:{v18, v20, v22, v24}];
    sub_1000DFD68();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10026FC20()
{
  v1 = sub_10000A5D4(&unk_10094F490);
  v14 = *(v1 - 8);
  v15 = v1;
  __chkstk_darwin(v1);
  v13 = &v11 - v2;
  v12 = sub_10000A5D4(&qword_100964180);
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - v4;
  v11 = v0;
  sub_100764EDC();
  v6 = sub_100016F40(0, &qword_1009471F0);
  v7 = sub_10077068C();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v7;
  sub_10000A5D4(&unk_10094F4A0);
  type metadata accessor for SearchViewController();
  sub_100071820(&unk_1009641B0, &unk_10094F4A0);
  sub_10076F46C();

  (*(v3 + 8))(v5, v12);
  sub_10000CD74(v16);
  sub_100764E8C();
  v8 = sub_10077068C();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v8;
  sub_10000A5D4(&unk_10094F4B0);
  sub_100071820(&qword_1009641C0, &unk_10094F4B0);
  v9 = v13;
  sub_10076F46C();

  (*(v14 + 8))(v9, v15);
  return sub_10000CD74(v16);
}

id sub_10026FF3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_10094F4C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController);
  sub_100764EAC();
  v7 = sub_10075F8EC();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_10000CFBC(v5, &unk_10094F4C0);
  return [*(v6 + OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton) setEnabled:v8];
}

id (*sub_10027004C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002759F4;
}

uint64_t sub_1002700B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph);
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

uint64_t (*sub_100270200(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1002759E4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1002759EC;
}

void sub_100270290(void *a1)
{
  v2 = v1;
  v4 = sub_10075F65C();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v69 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100765F6C();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100766EDC();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F4FC();
  __chkstk_darwin(v8 - 8);
  v60[2] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v10 - 8);
  v71 = v60 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v12 - 8);
  v70 = v60 - v13;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v18 - 8);
  v20 = v60 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetsPresenter);
  v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph);
  v23 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v24 = sub_10067A804(v21, 1, v22);

  v25 = v22;

  *&v24[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate + 8] = &off_10088EDD8;
  swift_unknownObjectWeakAssign();
  v26 = objc_allocWithZone(UINavigationController);
  v72 = v24;
  v27 = [v26 initWithRootViewController:v24];
  v28 = [v27 navigationBar];
  [v28 setPrefersLargeTitles:0];

  v29 = v27;
  [v29 setModalPresentationStyle:7];
  v30 = [v29 presentationController];
  if (v30)
  {
    v31 = v30;
    [v30 setDelegate:v2];
  }

  v32 = [v29 popoverPresentationController];
  if (v32)
  {
    v33 = v32;
    [v32 setSourceView:a1];
  }

  v73 = v2;
  v34 = [v29 popoverPresentationController];
  if (v34)
  {
    v35 = v34;
    [v34 setPermittedArrowDirections:1];
  }

  v36 = [v29 popoverPresentationController];

  if (v36)
  {
    v37 = [a1 titleLabel];
    if (v37)
    {
      v38 = v37;
      [v37 frame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = v46;
      v48 = v44;
      v49 = v42;
      v50 = v40;
    }

    else
    {
      [a1 bounds];
    }

    MidX = CGRectGetMidX(*&v50);
    [a1 bounds];
    [v36 setSourceRect:{MidX, CGRectGetMaxY(v79), 10.0, 10.0}];
  }

  v52 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v20, 1, v52) == 1)
  {
    sub_10000CFBC(v20, &unk_100943200);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v54 = *(v15 + 104);
    v60[1] = v17;
    v54(v17, enum case for FlowPage.viewController(_:), v14);
    v55 = sub_10075DB7C();
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    v56 = sub_10076096C();
    (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
    v75 = sub_100016F40(0, &qword_100944C68);
    v74 = v29;
    v57 = v29;
    v60[0] = v25;
    sub_10076F4DC();
    (*(v61 + 104))(v62, enum case for FlowPresentationContext.infer(_:), v63);
    (*(v65 + 104))(v64, enum case for FlowAnimationBehavior.infer(_:), v66);
    (*(v67 + 104))(v69, enum case for FlowOrigin.inapp(_:), v68);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v58 = sub_10075F5EC();
    sub_100263C24(v58, 1, v60[0], v20);

    (*(v53 + 8))(v20, v52);
  }

  v59 = *(v73 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
  *(v73 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = v29;
}

void sub_100270BCC(void *a1)
{
  v2 = [a1 searchResultsController];
  if (!v2)
  {
    return;
  }

  v7 = v2;
  [v1 addChildViewController:?];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v7 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v7 didMoveToParentViewController:v1];
}

void sub_100270D2C(void *a1)
{
  sub_1000E0404();
  v2 = [a1 searchResultsController];
  if (v2)
  {
    v5 = v2;
    [v2 willMoveToParentViewController:0];
    v3 = [v5 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      [v5 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100270F38(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController))
  {
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = a1(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph);
      v10 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_10000CFBC(v5, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }
}

void sub_1002710EC(void *a1)
{
  v2 = v1;
  v4 = [a1 searchBar];
  v5 = [v4 text];

  if (!v5)
  {
LABEL_8:
    if ([a1 isActive] && *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController))
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    sub_100602B64(v11);
    sub_100764EFC();
    v12 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
    *(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
    if (v12)
    {
      v13 = [v12 presentingViewController];
      if (v13)
      {
        v14 = v13;
        [v13 dismissViewControllerAnimated:1 completion:0];
      }
    }

    goto LABEL_17;
  }

  v6 = sub_10076FF9C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = sub_100602340(v6, v8);

  if (v10)
  {
    return;
  }

  sub_100602B64(1);
  sub_100764EFC();
LABEL_17:

  sub_10026DC04(0);
}

uint64_t sub_100271300()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) == 2 && *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100271364()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection))
  {
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v2 && (sub_100016F40(0, &qword_100960AD0), v3 = v2, sub_10000A5D4(&unk_10094F480), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v9 + 1))
      {
        sub_100012498(&v8, v11);
        v4 = v12;
        v5 = v13;
        sub_10000CF78(v11, v12);
        v6 = (*(v5 + 8))(v4, v5);
        sub_10000CD74(v11);
        return v6;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_10000CFBC(&v8, &unk_10094F470);
  }

  return 0;
}

void sub_1002714A0(uint64_t a1)
{
  v3 = sub_100760A6C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v19 - v9;
  if ([v1 isViewLoaded])
  {
    sub_100760A2C();
    (*(v4 + 104))(v6, enum case for SearchOrigin.tabBar(_:), v3);
    sub_100275A98(&qword_10094F468, &type metadata accessor for SearchOrigin);
    sub_10077018C();
    sub_10077018C();
    if (v19[2] == v19[0] && v19[3] == v19[1])
    {
      v11 = *(v4 + 8);
      v11(v6, v3);
      v11(v10, v3);

LABEL_9:
      sub_10027529C();
      return;
    }

    v12 = sub_10077167C();
    v13 = *(v4 + 8);
    v13(v6, v3);
    v13(v10, v3);

    if (v12)
    {
      goto LABEL_9;
    }

    v14 = sub_1007609FC();
    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = v14;
    v17 = v15;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_100271BB8(a1);
    }

    else
    {
LABEL_16:
      sub_10027177C(0);
    }
  }

  else
  {
    *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction] = a1;
  }
}

uint64_t sub_10027177C(char a1)
{
  v3 = sub_10076F08C();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076F0CC();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController);
  v11 = [v10 searchBar];
  [v11 becomeFirstResponder];

  sub_100016F40(0, &qword_1009471F0);
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1002759D8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088F000;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100275A98(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v9, v17);
}

void sub_100271AAC(void *a1, char a2)
{
  [a1 setActive:1];
  v4 = [a1 searchBar];
  v5 = v4;
  if (a2)
  {
    v7 = [v4 searchField];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 selectAll];
  }

  else
  {
    v6 = [v4 isFirstResponder];

    if (v6)
    {
      return;
    }

    v7 = [a1 searchBar];
    [v7 becomeFirstResponder];
  }
}

uint64_t sub_100271BB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076F08C();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076F0CC();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026DC04(0);
  v10 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] searchBar];
  [v10 resignFirstResponder];

  sub_100016F40(0, &qword_1009471F0);
  v11 = sub_10077068C();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100275998;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088EFB0;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100275A98(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_100271EF4(char *a1, uint64_t a2)
{
  sub_100601ACC(a2);
  sub_100602B64(2);
  v3 = [a1 navigationController];
  v4 = [v3 topViewController];

  if (!v4 || (sub_100016F40(0, &qword_1009453B0), v5 = a1, v6 = sub_100770EEC(), v4, v5, (v6 & 1) == 0))
  {
    v7 = [a1 navigationController];
    if (v7)
    {
      v8 = v7;
    }
  }

  v9 = *&a1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController];
  v10 = [v9 searchBar];
  sub_1007609FC();
  if (v11)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  [v9 setActive:1];
  *&a1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction] = 0;
}

void sub_10027209C(uint64_t a1)
{
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100768EFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if ([*(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController) isActive] && *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    v19 = v4;
    v20 = v1;
    sub_100275A98(&qword_10094F450, &type metadata accessor for GuidedSearchTokenCollection);
    sub_1007703DC();
    sub_10077040C();
    if (aBlock[0] == aBlock[6])
    {
      sub_10026E5D0();
    }

    else
    {
      sub_10026E1E0();
      sub_100016F40(0, &qword_1009471F0);
      v18 = sub_10077068C();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = sub_1002756E8;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088EF60;
      v16 = _Block_copy(aBlock);

      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100275A98(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0);
      sub_100071820(&qword_100945170, &unk_10094E1C0);
      sub_1007712CC();
      v17 = v18;
      sub_10077069C();
      _Block_release(v16);

      (*(v19 + 8))(v6, v3);
      (*(v21 + 8))(v9, v22);
    }
  }
}

void sub_100272530(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_100768EFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v11 = Strong;
  v12 = sub_100271364();

  if (!v12)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_8;
  }

  sub_10076615C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_10076612C();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {

LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v16 = v15;
  v17 = sub_10026D924();

  (*(v7 + 16))(v9, a2, v6);
  sub_100275A98(&unk_10094F458, &type metadata accessor for GuidedSearchTokenCollection);
  v18 = sub_10077017C();
  v19 = sub_10016E518(v18);

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
    v22 = v20;
    swift_beginAccess();
    sub_100016E2C(v22 + v21, v5, &qword_1009492E0);
  }

  else
  {
    v23 = sub_10076F7FC();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  }

  sub_10024F848(v14, v19, v5);
  swift_unknownObjectRelease();

  sub_10000CFBC(v5, &qword_1009492E0);
LABEL_11:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = sub_10026D924();

    sub_10071DC1C();
  }
}

char *sub_1002728C8(unint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100945140);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10075F37C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v35 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v35 = sub_10077158C();
  if (!v35)
  {
    return 0;
  }

LABEL_3:
  if (v35 < 1)
  {
    __break(1u);
LABEL_33:
    result = sub_10077158C();
    v21 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v26 = v8;
  v9 = 0;
  v31 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph;
  v10 = v36 & 0xC000000000000001;
  v11 = (v6 + 48);
  v28 = (v6 + 8);
  v29 = (v6 + 32);
  v32 = v36 & 0xC000000000000001;
  v30 = (v6 + 48);
  v27 = v4;
  do
  {
    if (v10)
    {
      v12 = sub_10077149C();
    }

    else
    {
      v12 = *(v36 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v34 = v14;
      sub_100016E2C(v14 + qword_10099CB18, v4, &qword_100945140);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10000CFBC(v4, &qword_100945140);
      }

      else
      {
        v15 = v33;
        (*v29)(v33, v4, v5);
        sub_10076A38C();
        sub_10076F64C();
        sub_10076FC1C();
        v16 = v37;
        v4 = v27;
        v11 = v30;
        sub_10076A37C();

        v17 = v15;
        v10 = v32;
        (*v28)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v35 != v9);
  if (!v26)
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = sub_10077158C();
  if (result == 1)
  {
LABEL_25:
    if (v10)
    {
      return sub_10077149C();
    }

    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    return *(v36 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_10000A5D4(&qword_1009453C0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_10095D510] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_10095D518] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_10095D520] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_10095D528] = 0;
  [v6 setNeedsLayout];
  sub_10000A5D4(&qword_1009453C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = v36;

  v8 = sub_1006CDE94(inited);
  swift_setDeallocating();
  result = sub_10000CFBC(inited + 32, &unk_1009453D0);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v23 = sub_10077149C();
      }

      else
      {
        v23 = *(v8 + 8 * i + 32);
      }

      v24 = v23;
      [v6 addSubview:{v23, v26}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_100272E1C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories];

  v3 = [v0 traitCollection];
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph];
  v5 = v3;

  v6 = sub_100273E2C(v2, v5, 0, v4);

  v27 = sub_1002728C8(v6);

  v7 = [v0 navigationItem];
  v8 = *&v0[v1];

  v9 = [v0 traitCollection];

  v10 = v9;
  v11 = sub_100273E2C(v8, v10, 1u, v4);

  v12 = sub_1002728C8(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setLeftBarButtonItem:{v13, v27}];

  v14 = [v0 navigationItem];
  v15 = *&v0[v1];

  v16 = [v0 traitCollection];

  v17 = v16;
  v18 = sub_100273E2C(v15, v17, 2u, v4);

  v19 = sub_1002728C8(v18);

  if (v19)
  {
    v20 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v19];
  }

  else
  {
    v20 = 0;
  }

  [v14 setRightBarButtonItem:v20];

  v21 = [v0 navigationItem];
  v22 = [v21 rightBarButtonItem];

  if (v22)
  {
    [v22 setHidesSharedBackground:1];
  }

  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
  v24 = [v0 traitCollection];
  v25 = sub_1007706EC();

  v26 = *(v23 + qword_10099E3A8);
  *(v23 + qword_10099E3A8) = v25 & 1;
  sub_100273A80(v26);
}

uint64_t sub_10027315C()
{
  v1 = v0;
  v2 = sub_10076F08C();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F0CC();
  v5 = *(v15 - 8);
  *&v6 = __chkstk_darwin(v15).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] searchBar];
  [v9 resignFirstResponder];

  sub_100016F40(0, &qword_1009471F0);
  v10 = sub_10077068C();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_1002755B4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088EEE8;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100275A98(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v8, v15);
}

id sub_1002734B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchViewController()
{
  result = qword_10094F3E8;
  if (!qword_10094F3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027368C()
{
  sub_10024FD5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002737D0(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005C684(a1, v4);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    result = *v4;
    if (*v4)
    {

      return 1;
    }
  }

  else
  {
    sub_10005C6E8(v4);
    return 0;
  }

  return result;
}

uint64_t sub_1002738CC(uint64_t a1)
{
  v3 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_100016E2C(a1, &v8 - v4, &qword_1009492E0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  swift_beginAccess();
  sub_100273A10(v5, v1 + v6);
  return swift_endAccess();
}

id sub_1002739A0(id result)
{
  if (!result)
  {
    sub_10026EAE4(1);
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController);

    return [v2 setShowsSearchResultsController:0];
  }

  return result;
}

uint64_t sub_100273A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100273A80(uint64_t result)
{
  v2 = qword_10099E3A8;
  v3 = *(v1 + qword_10099E3A8);
  if (v3 != (result & 1))
  {
    v4 = qword_1009503E8;
    if ((v3 & 1) != 0 && !*(v1 + qword_1009503E8))
    {
      type metadata accessor for BarButtonItemHidingScrollObserver();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v1 + v4) = v6;
      *(v6 + 24) = 0;
      sub_100275A98(&qword_10094F448, type metadata accessor for BarButtonItemHidingScrollObserver);

      sub_10076668C();

      v5 = *(v1 + qword_1009503E8);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v5 = *(v1 + qword_1009503E8);
      if (!v5)
      {
        return result;
      }
    }

    *(v5 + 24) = *(v1 + v2);

    sub_1001E5134();
  }

  return result;
}

char *sub_100273BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = sub_10076AFBC();
  v13[4] = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
  v13[0] = a2;
  sub_10000A570(v13, v12);
  sub_10076A24C();
  swift_allocObject();

  v5 = sub_10076A23C();
  v6 = sub_100275A98(&qword_10094F440, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_10000A5D4(&qword_10094F420);
  sub_10076F1BC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100783DD0;
  sub_10076A14C();
  sub_10000A570(v13, v12);
  swift_allocObject();

  v12[0] = sub_10076A12C();
  sub_10076F19C();
  v8 = sub_1006C7080(a3, v5, v6, v7, 0x6F46686372616573, 0xEF65676150737563);

  v9 = objc_allocWithZone(type metadata accessor for SearchFocusDiffablePageViewController());
  v10 = sub_1000574A0(v5, v8);
  sub_10000CD74(v13);
  return v10;
}

void *sub_100273E2C(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v6 = _swiftEmptyArrayStorage;
    v7 = &unk_1009453D0;
    v31 = v4;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077149C();
        v8 = isUniquelyReferenced_nonNull_bridgeObject;
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        v8 = *(v33 + 8 * v5);

        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      v10 = _swiftEmptyArrayStorage;
      if ((*(v8 + 16))(a2) == a3)
      {
        v10 = sub_100529FCC(a4);
      }

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? sub_10077158C() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_42;
      }

LABEL_15:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_10077158C();
        goto LABEL_22;
      }

      if (v13)
      {
        goto LABEL_21;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = v6;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007714AC();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077158C();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v17 >> 1) - v16) < v12)
          {
            goto LABEL_46;
          }

          v20 = v15 + 8 * v16 + 32;
          v38 = v5;
          v32 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            sub_100071820(&qword_100948B80, v7);
            v21 = v7;
            for (i = 0; i != v18; ++i)
            {
              sub_10000A5D4(v7);
              v23 = sub_1000FBD70(v39, i, v10);
              v25 = *v24;
              (v23)(v39, 0);
              *(v20 + 8 * i) = v25;
            }
          }

          else
          {
            sub_100016F40(0, &qword_1009441F0);
            swift_arrayInitWithCopy();
            v21 = v7;
          }

          v4 = v31;
          v7 = v21;
          v5 = v38;
          v6 = v40;
          if (v12 >= 1)
          {
            v26 = *(v32 + 16);
            v9 = __OFADD__(v26, v12);
            v27 = v26 + v12;
            if (v9)
            {
              goto LABEL_47;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      v6 = v40;
      if (v12 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_10077158C();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_10077158C();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1002741EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v41[1] = ObjectType;
  v7 = sub_10000A5D4(&qword_10094F3F8);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v41 - v8;
  v9 = sub_10000A5D4(&qword_10094F400);
  v43 = *(v9 - 8);
  *&v44 = v9;
  __chkstk_darwin(v9);
  v42 = v41 - v10;
  v11 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v12 + 50) = 0u;
  *(v12 + 40) = 0u;
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController] = 0;
  *(v12 + 24) = 0u;
  v13 = &v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  v15 = sub_10076F7FC();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_prefersLargeTitle] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetsPresenter] = a1;
  sub_10076148C();

  sub_10076F5CC();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_bag] = v50[0];

  sub_10076131C();
  v17 = v16;

  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_paletteImpressionableThreshold] = v17;
  sub_100765FDC();
  sub_10076F5CC();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchPresenter] = v50[0];
  sub_100769A9C();
  sub_10076F63C();
  sub_1007651FC();
  swift_allocObject();
  v18 = sub_1007651EC();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextPresenter] = v18;
  v19 = objc_allocWithZone(type metadata accessor for SearchResultsContainerViewController());

  v20 = sub_1006028D4(a1, v18, a2);

  v21 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] = v20;
  v22 = [objc_allocWithZone(type metadata accessor for SearchController()) initWithSearchResultsController:v20];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] = v22;
  [v22 setShowsSearchResultsController:0];
  v23 = sub_10076AFBC();
  swift_allocObject();
  v24 = sub_10076AFAC();
  v50[3] = v23;
  v50[4] = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
  v50[0] = v24;
  sub_10000A570(v50, v49);
  sub_10076A57C();
  swift_allocObject();

  v25 = sub_10076A56C();
  sub_10076A55C();
  v26 = *&v3[v21];
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a2;
  v27[4] = ObjectType;
  sub_10000A5D4(&qword_10094F408);
  sub_100071820(&qword_10094F410, &qword_10094F408);

  v28 = v26;
  sub_10076F45C();
  v29 = v42;
  sub_10076F47C();

  sub_10000CD74(v49);
  (*(v43 + 8))(v29, v44);
  v30 = sub_100275A98(&qword_10094F418, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_10000A5D4(&qword_10094F420);
  sub_10076F1BC();
  v31 = swift_allocObject();
  v44 = xmmword_100783DD0;
  *(v31 + 16) = xmmword_100783DD0;
  sub_10076A14C();
  sub_10000A570(v50, v49);
  swift_allocObject();
  swift_retain_n();
  v49[0] = sub_10076A12C();
  sub_10076F19C();
  v32 = sub_1006C7080(a2, v25, v30, v31, 0xD000000000000011, 0x80000001007DC1D0);

  v33 = objc_allocWithZone(type metadata accessor for SearchLandingDiffablePageViewController());
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] = sub_10000B53C(v25, v32);
  v34 = type metadata accessor for SearchViewController();
  v48.receiver = v3;
  v48.super_class = v34;
  v35 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v36 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController;
  *(*&v35[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8) = &off_10088EE10;
  swift_unknownObjectWeakAssign();
  *(*&v35[v36] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate + 8) = &off_10088EDE8;
  swift_unknownObjectWeakAssign();
  *(*&v35[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] + qword_10099C880 + 8) = &off_10088EE00;
  swift_unknownObjectWeakAssign();
  v37 = v35;

  sub_100765FBC();

  sub_10000A5D4(&qword_10094F428);
  sub_100071820(&unk_10094F430, &qword_10094F428);
  sub_10076F45C();
  v38 = v45;
  sub_10076F46C();

  sub_10000CD74(v49);
  (*(v46 + 8))(v38, v47);
  sub_10000A5D4(&unk_100945BF0);
  v39 = swift_allocObject();
  *(v39 + 16) = v44;
  *(v39 + 32) = sub_10076E59C();
  *(v39 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_10077061C();

  swift_unknownObjectRelease();

  sub_10000CD74(v50);
  return v37;
}

uint64_t sub_100274B00(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  sub_10000A5D4(&qword_1009453E0);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100783DD0;
  v8 = (v7 + v6);
  v9 = *(sub_10000A5D4(&qword_1009453E8) + 48);
  *v8 = 1;
  sub_100016E2C(a2, &v8[v9], &qword_100945140);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1000FC424(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100076AA0;
  v11[3] = v10;
  sub_100529FCC(a1);

  *(v4 + 32) = v11;
  return v4;
}

id sub_100274CBC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController];
  v5 = [v4 searchBar];
  v6 = v5;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      [v5 _setDisableDictationButton:1];

      v24 = v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
      v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 0;
      if (v24)
      {
        v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
        [v25 willMoveToParentViewController:0];
        result = [v25 view];
        if (!result)
        {
LABEL_41:
          __break(1u);
          return result;
        }

        v26 = result;
        [result removeFromSuperview];

        [v25 removeFromParentViewController];
      }

      [v4 setShowsSearchResultsController:1];
      v27 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v27)
      {
        v27 = [v27 collectionView];
      }

      v7 = v27;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    [v5 _setDisableDictationButton:1];

    v10 = v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 0;
    if (v10)
    {
      v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
      [v11 willMoveToParentViewController:0];
      result = [v11 view];
      if (!result)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v13 = result;
      [result removeFromSuperview];

      [v11 removeFromParentViewController];
    }

    [v4 setShowsSearchResultsController:1];
    v14 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v14)
    {
      v14 = [v14 collectionView];
    }

    v7 = v14;
    v15 = [v2 navigationItem];
    v16 = [v2 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      v19 = [v18 standardAppearance];
    }

    else
    {
      v19 = 0;
    }

    [v15 setScrollEdgeAppearance:v19];

    goto LABEL_31;
  }

  if (a1)
  {
    [v5 _setDisableDictationButton:0];

    v20 = v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }

    v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
    [v21 willMoveToParentViewController:0];
    result = [v21 view];
    if (result)
    {
      v22 = result;
      [result removeFromSuperview];

      [v21 removeFromParentViewController];
LABEL_16:
      [v4 setShowsSearchResultsController:1];
      v23 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v23)
      {
        v23 = [v23 collectionView];
      }

      v7 = v23;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

LABEL_27:
      v30 = 0;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  [v5 _setDisableDictationButton:0];

  v7 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] collectionView];
  v8 = [v2 navigationItem];
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_26:
  v28 = v9;
  v29 = [v9 navigationBar];

  v30 = [v29 scrollEdgeAppearance];
LABEL_28:
  [v8 setScrollEdgeAppearance:v30];

  sub_10026E5D0();
LABEL_31:
  v31 = [v2 navigationItem];
  sub_1002B3AB4();

  [v2 setContentScrollView:v7 forEdge:15];
  v32 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v32)
  {
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v35 = &v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController];
  *v35 = v32;
  v35[1] = v33;

  return swift_unknownObjectRelease();
}

void sub_10027529C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController);
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v3)
  {
    type metadata accessor for SearchResultsDiffablePageViewController();
    if (swift_dynamicCastClass())
    {
      v17 = v3;
      sub_100602B64(1);
      sub_100764EFC();
      v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
      *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
      if (v4)
      {
        v5 = [v4 presentingViewController];
        if (v5)
        {
          v6 = v5;
          [v5 dismissViewControllerAnimated:1 completion:0];
        }
      }

      sub_10026DC04(0);
      sub_10027177C(1);
LABEL_8:

      return;
    }

    type metadata accessor for SearchHintsViewController();
    if (swift_dynamicCastClass())
    {
      v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController);
      v17 = v3;
      if (v7)
      {
        sub_100602B64(3);
        sub_100764EFC();
        v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
        if (v8)
        {
          v9 = [v8 presentingViewController];
          if (v9)
          {
            v10 = v9;
            [v9 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_10026DC04(0);
      }

      else
      {
        sub_100602B64(0);
        sub_100764EFC();
        v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
        if (v14)
        {
          v15 = [v14 presentingViewController];
          if (v15)
          {
            v16 = v15;
            [v15 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_10026DC04(0);
        sub_10027315C();
      }

      goto LABEL_8;
    }

    sub_100602B64(0);
    sub_100764EFC();
    v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
    if (v11)
    {
      v12 = [v11 presentingViewController];
      if (v12)
      {
        v13 = v12;
        [v12 dismissViewControllerAnimated:1 completion:0];
      }
    }

    sub_10026DC04(0);

    sub_10027315C();
  }

  else
  {

    sub_10027177C(0);
  }
}

uint64_t sub_1002755D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002755EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100275624()
{
  v1 = sub_100768EFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002756E8()
{
  v1 = *(sub_100768EFC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100272530(v2, v3);
}

void sub_10027574C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 50) = 0u;
  *(v2 + 40) = 0u;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
  *(v2 + 24) = 0u;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  v5 = sub_10076F7FC();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_prefersLargeTitle) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  sub_10077156C();
  __break(1u);
}

void sub_1002758B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
  if (v1)
  {
    v4 = v1;
    v2 = [v1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_10027594C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1002759A0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100275A04()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100275A44()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100275A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100275AE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100275B44()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100275BF8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  v11 = sub_10076C38C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory] = 7;
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isTransitioning] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  v16 = v14;
  [v16 addSubview:v15];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView]];

  return v16;
}

void sub_100275DD8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory);
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  v7 = *(v1 + v2);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory) = v7;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    (*((swift_isaMask & *v8) + 0x118))(v7);
  }
}

void sub_100275F40()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100277464(&qword_10094F540, type metadata accessor for TodayCardVideoView);
    v4 = [v9 superview];
    if (v4)
    {
      v5 = v4;
      sub_1000ACA5C();
      v6 = v2;
      v7 = sub_100770EEC();

      if ((v7 & 1) == 0)
      {
        return;
      }

      v8 = swift_unknownObjectWeakLoadStrong();
      if (!v8)
      {
        return;
      }

      *(v8 + qword_10099F298) = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory);
      v9 = v8;
      sub_10039DEFC();
    }
  }
}

void sub_10027608C(uint64_t a1, double a2)
{
  v5 = sub_10075FEEC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for CornerStyle.continuous(_:))
  {
    [v2 _setContinuousCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] _setContinuousCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView] _setContinuousCornerRadius:a2];
  }

  else
  {
    v11 = v10;
    v12 = enum case for CornerStyle.arc(_:);
    [v2 _setCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] _setCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView] _setCornerRadius:a2];
    if (v11 != v12)
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  sub_100276264();
}

void sub_100276264()
{
  v1 = [v0 layer];
  [v1 setMaskedCorners:sub_1007704FC()];

  v2 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] layer];
  [v2 setMaskedCorners:sub_1007704FC()];

  v3 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView] layer];
  [v3 setMaskedCorners:sub_1007704FC()];
}

id sub_100276360(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&qword_100943190);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v35 - v12;
  if ((a2 & 1) == 0)
  {
    v36 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
    v21 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
    [v21 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v21, "isHidden")}];
    v22 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_100016E2C(&v21[v22], v13, &qword_100943190);
    v23 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_10003837C(v13, v14 + v23, &qword_100943190);
    swift_endAccess();
    v24 = [*&v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView] image];
    if (v24)
    {
      v25 = &v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize];
      if ((v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 16] & 1) != 0 || (v26 = *&v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v28 = *v25;
        v27 = v25[1];
        v29 = v24;

        v30 = v29;
        sub_1003955EC(v29, v28, v27, 0, v26, a3, v36);
      }
    }

    v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
    v20 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
    [v20 frame];
    [v15 setFrame:?];
    [v15 setHidden:{objc_msgSend(v20, "isHidden")}];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      swift_unknownObjectWeakAssign();
    }

    goto LABEL_11;
  }

  v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
  v16 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = v16;

    v20 = v19;
    sub_10056A60C(v19, a3);

LABEL_11:
  }

  v32 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded;
  v33 = a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded];
  v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded] = v33;
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded) = v33;
  [v14 setNeedsLayout];
  *(v15 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = v5[v32];
  sub_10056970C();
  result = [v5 setHidden:{objc_msgSend(a1, "isHidden")}];
  v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] = a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia];
  return result;
}

id sub_1002767A0()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094B040);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_10000A5D4(&qword_100943190);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  v9 = sub_10076BD9C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
  swift_beginAccess();
  sub_10003837C(v7, &v8[v10], &qword_100943190);
  swift_endAccess();
  v11 = sub_10075DDBC();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_10003837C(v4, &v8[v12], &qword_10094B040);
  swift_endAccess();
  [*&v8[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView] setImage:0];
  v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    *(Strong + qword_10099F298) = 7;
    sub_10039DEFC();
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(v16);

  v17 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded) = 0;
  v8[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded] = 0;
  [v8 setNeedsLayout];
  *(v13 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = *(v1 + v17);
  result = sub_10056970C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 0;
  return result;
}

void sub_100276A68(uint64_t a1, int a2)
{
  v17[1] = a2;
  v3 = sub_10000A5D4(&qword_10094B040);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_10075DDBC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v18 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  v14 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_100016E2C(v13 + v14, v5, &qword_10094B040);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CFBC(v5, &qword_10094B040);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_100277464(&qword_10094F558, &type metadata accessor for UUID);
    sub_10077140C();
    sub_100760BEC();
    sub_100016C74(v19);
    (*(v7 + 8))(v12, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    type metadata accessor for TodayCardVideoView();
    sub_100277464(&qword_10094F550, type metadata accessor for TodayCardVideoView);
    sub_100760BFC();
  }
}

void (*sub_100276D68(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100276DCC;
}

void sub_100276DCC(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_10056A2D0(Strong);

    Strong = v4;
  }

  else
  {
    sub_10056A2D0(Strong);
  }
}

uint64_t type metadata accessor for StoryCardMediaView()
{
  result = qword_10094F520;
  if (!qword_10094F520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100276F24()
{
  sub_100276FE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100276FE0()
{
  if (!qword_100946AC0[0])
  {
    sub_10076C38C();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, qword_100946AC0);
    }
  }
}

void sub_100277058(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong);
}

uint64_t (*sub_1002770D8(uint64_t **a1))()
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
  v2[4] = sub_100276D68(v2);
  return sub_100019A4C;
}

uint64_t sub_100277148()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100277464(&qword_10094F548, type metadata accessor for StoryCardMediaView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1002771BC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100277464(&qword_10094F548, type metadata accessor for StoryCardMediaView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100277248(uint64_t *a1))()
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
  sub_100277464(&qword_10094F548, type metadata accessor for StoryCardMediaView);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100277304(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000ACA5C();
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_100277464(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002774AC()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded) = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  v2 = sub_10076C38C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1002775E4()
{
  v0 = sub_10000A5D4(&unk_10094F600);
  sub_10000DB18(v0, qword_10094F560);
  sub_10000A61C(v0, qword_10094F560);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for ContentMode(0);
  return sub_10075FDDC();
}

uint64_t sub_100277688()
{
  v0 = sub_10000A5D4(&qword_10094F5F8);
  sub_10000DB18(v0, qword_10094F578);
  sub_10000A61C(v0, qword_10094F578);
  swift_getKeyPath();
  sub_1005A5DB8(0xD00000000000001ELL, 0x80000001007DC3B0, 0);
  sub_1005A5DB8(0xD000000000000017, 0x80000001007DC3D0, 0);
  sub_100016F40(0, &qword_10094F610);
  return sub_10075FE1C();
}

uint64_t sub_10027779C()
{
  v0 = sub_10000A5D4(&qword_10094F5F0);
  sub_10000DB18(v0, qword_10094F590);
  sub_10000A61C(v0, qword_10094F590);
  swift_getKeyPath();
  sub_100016F40(0, &qword_100942F10);
  v1 = sub_100770DDC();
  v2.super.isa = sub_100770DDC();
  v3.super.isa = v1;
  sub_100770DEC(v3, v2);
  v4 = sub_100770DDC();
  v5.super.isa = sub_100770DDC();
  v6.super.isa = v4;
  sub_100770DEC(v6, v5);
  return sub_10075FE1C();
}

char *sub_1002778CC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  *&v4[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer;
  *&v4[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v55.receiver = v4;
  v55.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = qword_10093FC18;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A5D4(&qword_10094F5F0);
  sub_10000A61C(v17, qword_10094F590);
  v18 = v16;
  sub_10075FDCC();

  [v18 setBackgroundColor:v54];
  v19 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView;
  v20 = qword_10093FC10;
  v21 = *&v18[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView];
  if (v20 != -1)
  {
    swift_once();
  }

  v53 = ObjectType;
  v22 = sub_10000A5D4(&qword_10094F5F8);
  sub_10000A61C(v22, qword_10094F578);
  v23 = v18;
  sub_10075FDCC();

  [v21 setImage:v54];
  v24 = qword_10093FC08;
  v25 = *&v18[v19];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A5D4(&unk_10094F600);
  sub_10000A61C(v26, qword_10094F560);
  sub_10075FDCC();

  [v25 setContentMode:v54];
  [v23 addSubview:*&v18[v19]];
  v27 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  v28 = *&v23[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  v32 = [v31 CGColor];

  [v30 setBackgroundColor:v32];
  v33 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer;
  v34 = *&v23[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer];
  sub_10000A5D4(&unk_1009434B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100784500;
  v36 = v34;
  v37 = [v29 blackColor];
  v38 = [v37 CGColor];

  type metadata accessor for CGColor(0);
  v40 = v39;
  *(v35 + 56) = v39;
  *(v35 + 32) = v38;
  v41 = [v29 clearColor];
  v42 = [v41 CGColor];

  *(v35 + 88) = v40;
  *(v35 + 64) = v42;
  isa = sub_1007701AC().super.isa;

  [v36 setColors:isa];

  v44 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  [*&v23[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer] addSublayer:*&v23[v27]];
  [*&v23[v44] addSublayer:*&v23[v33]];
  sub_10000A5D4(&unk_100945BF0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100783DD0;
  *(v45 + 32) = sub_10076E4BC();
  *(v45 + 40) = &protocol witness table for UITraitUserInterfaceLevel;
  *(swift_allocObject() + 16) = v53;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v46 = [v23 traitCollection];

  LOBYTE(v45) = sub_1007706EC();
  if (v45 & 1) != 0 || (v47 = [v23 traitCollection], v48 = sub_10077071C(), v47, (v48))
  {
    v49 = [*&v18[v19] layer];
    [v49 setMask:*&v23[v44]];
  }

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100784500;
  *(v50 + 32) = sub_10076E59C();
  *(v50 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v50 + 48) = sub_10076E88C();
  *(v50 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100783DD0;
  *(v51 + 32) = sub_10076E3EC();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(swift_allocObject() + 16) = v53;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v23;
}

void sub_100277FE0(void *a1)
{
  if (qword_10093FC18 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A5D4(&qword_10094F5F0);
  sub_10000A61C(v2, qword_10094F590);
  v7 = a1;
  v3 = a1;
  sub_10075FDCC();

  [v3 setBackgroundColor:{v9, v7}];
  v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView];
  if (qword_10093FC10 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A5D4(&qword_10094F5F8);
  sub_10000A61C(v5, qword_10094F578);
  v8 = v3;
  v6 = v3;
  sub_10075FDCC();

  [v4 setImage:{v9, v8}];
}

id sub_10027814C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView];
  if (qword_10093FC08 != -1)
  {
    swift_once();
  }

  v3 = sub_10000A5D4(&unk_10094F600);
  sub_10000A61C(v3, qword_10094F560);
  v4 = a1;
  sub_10075FDCC();

  return [v2 setContentMode:{v6, a1}];
}

void sub_10027826C()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v0 traitCollection];
  v4 = sub_10077070C();

  v5 = [v1 traitCollection];
  v6 = sub_1007706FC();

  v7 = 100.0;
  if ((v6 & 1) == 0)
  {
    v7 = 20.0;
  }

  if (v4)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  [v2 frame];
  [v2 setFrame:v8 + v9];
  v10 = [v1 traitCollection];
  v11 = sub_1007706EC();

  if (v11 & 1) != 0 || (v12 = [v1 traitCollection], v13 = sub_10077071C(), v12, (v13))
  {
    [v2 setClipsToBounds:1];
    if (v4)
    {
      v14 = -100.0;
    }

    else
    {
      v14 = 100.0;
    }

    [v2 frame];
    [v2 setFrame:v14 + v15];
    v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer];
    [v1 bounds];
    [v16 setFrame:{0.0, 0.0, CGRectGetWidth(v20), 68.0}];
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer];
    [v16 frame];
    MaxY = CGRectGetMaxY(v21);
    [v1 bounds];
    [v17 setFrame:{0.0, MaxY, CGRectGetWidth(v22), 110.0}];
  }
}

void sub_100278594(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_1007706EC();

  if (v3 & 1) != 0 || (v4 = [a1 traitCollection], v5 = sub_10077071C(), v4, (v5))
  {
    v6 = [*&a1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:*&a1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer]];
  }

  else
  {
    v6 = [*&a1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:0];
  }
}

void sub_100278698()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer;
  *(v0 + v3) = [objc_allocWithZone(CAGradientLayer) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  *(v0 + v4) = [objc_allocWithZone(CALayer) init];
  sub_10077156C();
  __break(1u);
}

id sub_1002787A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

id sub_1002787E4@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 userInterfaceLevel];
  *a2 = result == 1;
  return result;
}

uint64_t sub_100278824(void *a1)
{
  v2 = sub_10076443C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  if (qword_100941430 != -1)
  {
    swift_once();
  }

  if (sub_10077071C())
  {
    v9 = &xmmword_1009A2E90;
  }

  else
  {
    v9 = &xmmword_1009A2D20;
  }

  sub_10015E5E0(v9, v19);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v10 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v10 = qword_100944CA0;
  }

  v11 = sub_10000A61C(v2, v10);
  (*(v3 + 16))(v5, v11, v2);
  (*(v3 + 32))(v8, v5, v2);
  if ((v22 & 1) == 0 && v20 == 0.0 && v21 == 0.0)
  {
    sub_1007643EC();
    v13 = v12;
    sub_1007643EC();
    v20 = v13;
    v21 = v14;
    v22 = 0;
  }

  v15 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v19, a1, 0.0);
  (*(v3 + 8))(v8, v2, v15);
  sub_10015E58C(v19);
  sub_10027D020(a1);
  v16 = [a1 preferredContentSizeCategory];
  sub_10077085C();

  sub_1007704EC();
  return sub_10076752C();
}

id sub_100278B70(double a1, double a2, double a3, double a4)
{
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] = 0;
  swift_weakInit();
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_impressionsUpdateBlock];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lastContentWidth] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
  *&v4[v10] = sub_1000FE0F4(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_prefetchedLockupImages] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_currentTouch] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isDragging] = 0;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_indexForHighlightedLockup];
  *v11 = 0;
  v11[8] = 1;
  v12 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100279A70();
  sub_10000A5D4(&unk_100945BF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100783DD0;
  *(v18 + 32) = sub_10076E88C();
  *(v18 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v20[3] = v12;
  v20[0] = v17;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v20);
  return v17;
}

void sub_100278EA4(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "frame");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, "setFrame:", a1, a2, a3, a4);
  [v4 frame];
  Height = CGRectGetHeight(v22);
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  if (Height != CGRectGetHeight(v23))
  {
    v19 = v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
    v4[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_100278F98(v19);
  }
}

uint64_t sub_100278F98(uint64_t result)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] == 1 && (result & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = [*(*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) + OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView) setNeedsLayout])
    {
      v9 = i;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return [v1 setNeedsLayout];
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1002790D4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076753C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayListCardLockupContainer();
  v19.receiver = v0;
  v19.super_class = v6;
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups];
  if (v7 >> 62)
  {
    v8 = sub_10077158C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v0[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded];
  sub_10076422C();
  v10 = [v0 traitCollection];
  if (v9 == 1)
  {
  }

  else
  {
    v11 = v10;
    sub_100278824(v10);
    v12 = sub_10076750C();
    v14 = v13;

    (*(v3 + 8))(v5, v2);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    if (v8 >= v15)
    {
      v8 = v15;
    }
  }

  v16 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lastContentWidth;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lastContentWidth];
  sub_10076422C();
  if (v17 != CGRectGetWidth(v20) || *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit] != v8)
  {
    v18 = v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
    v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_100278F98(v18);
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] == 1)
  {
    if (swift_weakLoadStrong())
    {

      *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit] = v8;
      sub_100279E7C(v8);
      sub_100279384();
      sub_10076422C();
      *&v1[v16] = CGRectGetWidth(v21);
    }
  }
}

void sub_100279384()
{
  v2 = v0;
  swift_getObjectType();
  v3 = sub_10076753C();
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076755C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] != 1)
  {
    return;
  }

  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v51 = v7;
    v52 = v5;
    v47 = v8;
    v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid;
    v50 = v11;
    v8 = _swiftEmptyArrayStorage;
    *&aBlock = _swiftEmptyArrayStorage;
    v1 = v2;
    v13 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (v12 != v13)
    {
      if (v13 >= v12)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      if (sub_10027A00C(v13++))
      {
        sub_10077019C();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v5 = aBlock;
        v13 = v14;
      }
    }

    v16 = [v1 traitCollection];
    sub_100278824(v16);

    swift_getKeyPath();
    v44 = v2;
    v45 = v5 >> 62;
    v49 = v6;
    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v17 = sub_10077158C();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_14:
  v59 = v8;
  sub_1004BBC88(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v18 = 0;
  v19 = v59;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = sub_10077149C();
    }

    else
    {
      v20 = *(v5 + 8 * v18 + 32);
    }

    v58 = v20;
    v21 = v20;
    swift_getAtKeyPath();

    v59 = v19;
    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      sub_1004BBC88((v22 > 1), v23 + 1, 1);
      v19 = v59;
    }

    ++v18;
    v19[2] = v23 + 1;
    sub_100012498(&aBlock, &v19[5 * v23 + 4]);
  }

  while (v17 != v18);

  v6 = v49;
LABEL_28:
  v24 = v50;
  sub_10076754C();
  v25 = objc_opt_self();
  v26 = v51;
  v27 = v48;
  (*(v51 + 16))(v48, v24, v6);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v28, v27, v6);
  *(v30 + v29) = v1;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10027D914;
  *(v31 + 24) = v30;
  v56 = sub_1000349FC;
  v57 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_1001C5148;
  v55 = &unk_10088F308;
  v32 = _Block_copy(&aBlock);
  v33 = v1;

  [v25 performWithoutAnimation:v32];
  _Block_release(v32);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v45)
  {
    v34 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v34 = sub_10077158C();
  if (v34)
  {
LABEL_33:
    v35 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v36 = sub_10077149C();
      }

      else
      {
        if (v35 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v36 = *(v5 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      sub_10027BC6C(v36, v35);

      ++v35;
      if (v38 == v34)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:

  v39 = &v33[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_impressionsUpdateBlock];
  swift_beginAccess();
  v40 = *v39;
  if (*v39)
  {

    v40(v41);
    sub_1000167E0(v40);
  }

  v42 = v44[v46];
  v44[v46] = 0;
  sub_100278F98(v42);
  (*(v51 + 8))(v50, v49);
}

void sub_1002799D0(int a1, id a2)
{
  [a2 bounds];
  v3 = [a2 traitCollection];
  sub_10076751C();
}

uint64_t sub_100279A70()
{
  v1 = [v0 traitCollection];
  v2 = [(NSString *)v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v4 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_10077088C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_10077087C())
  {
    v6 = sub_10077088C();

    if (v6)
    {
      v7 = v3;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = [(NSString *)v1 preferredContentSizeCategory];
  v9 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_10077088C();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_10077087C())
  {
    v11 = sub_10077088C();

    if (v11)
    {
      v7 = UIContentSizeCategoryAccessibilityLarge;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 0;
    v1 = v9;
  }

LABEL_12:

  [v0 setMaximumContentSizeCategory:v7];
  v12 = v0[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
  v0[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_100278F98(v12);

  return [v0 setNeedsLayout];
}

uint64_t sub_100279CAC()
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_14:

LABEL_15:
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;

    *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_prefetchedLockupImages) = 0;

    swift_weakAssign();
    v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid);
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid) = 1;
    return sub_100278F98(v13);
  }

  v1 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_10000CD74(v14))
  {
    v9 = i;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
    v14[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
    v14[0] = v11;
    v12 = v11;
    sub_10076756C();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      goto LABEL_14;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100279E7C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
  result = swift_beginAccess();
  v6 = *(*(v1 + v4) + 16);
  if (v6 > a1)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      if (swift_weakLoadStrong())
      {
        do
        {
          swift_beginAccess();
          v7 = sub_10060FF40(a1);
          if (v8)
          {
            v9 = v7;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v11 = *(v2 + v4);
            v16 = v11;
            *(v2 + v4) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_10024D0A4();
              v11 = v16;
            }

            v12 = v9;
            v13 = *(*(v11 + 56) + 8 * v9);
            sub_1001E2904(v12, v11);
            *(v2 + v4) = v11;
            swift_endAccess();
            v15[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
            v15[0] = v13;
            v14 = v13;
            sub_10076756C();
            sub_10000CD74(v15);
            [v14 removeFromSuperview];
          }

          else
          {
            swift_endAccess();
          }

          ++a1;
        }

        while (v6 != a1);
      }
    }
  }

  return result;
}

uint64_t sub_10027A00C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = sub_10076664C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups;
  v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups];
  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v52 = v20;
  v46 = v22;
  result = sub_10077158C();
  v22 = v46;
  v20 = v52;
  if (result <= a1)
  {
    return 0;
  }

LABEL_3:
  v51 = v12;
  v26 = *&v2[v23];
  v53 = v22;
  if ((v26 & 0xC000000000000001) != 0)
  {

    v52 = sub_10077149C();

LABEL_7:
    v50 = v9;
    v27 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v28 = *&v2[v27];
    if (*(v28 + 16) && (v29 = sub_10060FF40(a1), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      v32 = sub_10027D4E4();
      [v32 setAutoresizingMask:2];
      [v2 addSubview:v32];
      swift_beginAccess();
      v31 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *&v2[v27];
      *&v2[v27] = 0x8000000000000000;
      sub_10024ABB0(v31, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v27] = v54;
      swift_endAccess();
    }

    v34 = [v31 contentView];
    [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      sub_10000A5D4(&unk_10094F738);
      v36 = v6;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100784500;
      sub_1007665FC();
      sub_10076660C();
      v55 = v37;
      sub_10027D774(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
      sub_10000A5D4(&qword_10094F748);
      sub_10027D7BC();
      sub_1007712CC();

      v38 = *&v31[OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView];
      v39 = sub_10000A5D4(&qword_100945590);
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
      v40 = sub_10075F78C();
      (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
      v41 = sub_1007628DC();
      v42 = v51;
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      v43 = sub_10076C54C();
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      v45 = sub_10000A5D4(&unk_100946750);
      (*(*(v45 - 8) + 56))(v36, 1, 1, v45);
      v48 = v19;
      sub_1004D0A60(v52, v38, v18, v49, 0, 0, v15, v42, v44, v36);
      v38[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1006582B8();
      [v38 setNeedsLayout];
      sub_1006582B8();
      sub_10000CFBC(v36, &qword_10094F730);
      sub_10000CFBC(v44, &unk_100949290);
      sub_10000CFBC(v42, &unk_1009492A0);
      sub_10000CFBC(v15, &unk_10094D210);
      sub_10000CFBC(v18, &unk_100946760);
      [v31 setNeedsLayout];

      (*(v20 + 8))(v53, v48);
    }

    else
    {
    }

    return v31;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v52 = *(v26 + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_10027A7A8()
{
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded) & 1) == 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_10027A968(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_10027AA08()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v12, "didMoveToSuperview");
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        break;
      }

      v4 = [v2 superview];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v7 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_100016F40(0, &unk_10094D220);
      v10 = v2;
      v11 = sub_100770EEC();

      if (v11)
      {

        return;
      }
    }

    v6 = v7;
  }

  else
  {
LABEL_5:
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v6 = 0;
  }

  sub_10027A968(v6);
}

unint64_t sub_10027ABF0(unint64_t result, char a2)
{
  v4 = result;
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_indexForHighlightedLockup;
  if ((*(v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_indexForHighlightedLockup + 8) & 1) == 0)
  {
    v6 = *v5;
    v7 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
    result = swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {
      result = sub_10060FF40(v6);
      if (v9)
      {
        result = [*(*(v8 + 56) + 8 * result) setHighlighted:0];
      }
    }
  }

  *v5 = v4;
  *(v5 + 8) = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
    result = swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16))
    {
      result = sub_10060FF40(v4);
      if (v12)
      {
        return [*(*(v11 + 56) + 8 * result) setHighlighted:1];
      }
    }
  }

  return result;
}

void sub_10027ACFC(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 56) + ((v14 << 9) | (8 * v15)));
    [v16 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v17 = [v16 pointInside:a1 withEvent:?];

    if (v17)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10027AE64(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  sub_10077149C();

LABEL_5:
  v8 = sub_10076B9FC();
  if (v8)
  {
    v9 = v8;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v6, 1, v12) == 1)
      {

        sub_10000CFBC(v6, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v9, 1, v11, v6);

        (*(v13 + 8))(v6, v12);
      }

      return;
    }
  }
}

void sub_10027B0AC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded) == 1)
  {
    v5 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_currentTouch;
    v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_currentTouch);
    if (!v6 || [v6 phase] == 3 || (v7 = *(v2 + v5)) != 0 && objc_msgSend(v7, "phase") == 4)
    {
      v8 = sub_1005EBD8C(a1);
      if (v8)
      {
        v9 = v8;
        [v8 locationInView:v2];
        sub_10027ACFC(a2, v10, v11);
        sub_10027ABF0(v13, v12 & 1);
        v14 = *(v2 + v5);
        *(v2 + v5) = v9;

        sub_100016F40(0, &qword_10094F760);
        sub_10027D9C8();
        v15.super.isa = sub_10077038C().super.isa;
        v17.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v17, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v2, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }

      else
      {
        sub_100016F40(0, &qword_10094F760);
        sub_10027D9C8();
        v15.super.isa = sub_10077038C().super.isa;
        v18.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v2, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100016F40(0, &qword_10094F760);
      sub_10027D9C8();
      v15.super.isa = sub_10077038C().super.isa;
      v16.super_class = type metadata accessor for TodayListCardLockupContainer();
      objc_msgSendSuper2(&v16, "touchesBegan:withEvent:", v15.super.isa, a2, v2, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v15.super.isa = sub_10077038C().super.isa;
    v19.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v2, v19.super_class);
  }
}

void sub_10027B2C4(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] != 1)
  {
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v15.super.isa = sub_10077038C().super.isa;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v18, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v5 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_currentTouch;
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_currentTouch];
  if (!v6)
  {
LABEL_14:
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v15.super.isa = sub_10077038C().super.isa;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v17, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v7 = v6;
  if ((sub_1006937A4(v7, a1) & 1) == 0)
  {

    goto LABEL_14;
  }

  v8 = *&v2[v5];
  *&v2[v5] = 0;

  v9 = &v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_indexForHighlightedLockup];
  if ((v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
  {
    v10 = *v9;
    if (v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isDragging])
    {
LABEL_8:
      v11 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v12 = *&v2[v11];
      if (*(v12 + 16))
      {
        v13 = sub_10060FF40(v10);
        if (v14)
        {
          [*(*(v12 + 56) + 8 * v13) setHighlighted:0];
        }
      }

      goto LABEL_11;
    }

    sub_10027AE64(*v9);
    if ((v9[8] & 1) == 0)
    {
      v10 = *v9;
      goto LABEL_8;
    }
  }

LABEL_11:
  *v9 = 0;
  v9[8] = 1;

  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v15.super.isa = sub_10077038C().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v16, "touchesEnded:withEvent:", v15.super.isa, a2);
LABEL_15:
}

uint64_t sub_10027B4FC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v8 = sub_10077039C();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_10027B5AC(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] == 1)
  {
    v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_currentTouch];
    *&v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_currentTouch] = 0;

    v5 = &v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_indexForHighlightedLockup];
    if ((v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
    {
      v6 = *v5;
      v7 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v8 = *&v2[v7];
      if (*(v8 + 16))
      {
        v9 = sub_10060FF40(v6);
        if (v10)
        {
          [*(*(v8 + 56) + 8 * v9) setHighlighted:0];
        }
      }
    }

    *v5 = 0;
    v5[8] = 1;
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v11.super.isa = sub_10077038C().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v12, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }

  else
  {
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v11.super.isa = sub_10077038C().super.isa;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v13, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }
}

void sub_10027B748(uint64_t a1, void *a2)
{
  v5 = sub_10076443C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if (a1 >= 1)
  {
    __chkstk_darwin(v10);
    *(&v20 - 2) = v2;
    *(&v20 - 1) = a2;
    v21 = sub_10077073C();
    if (qword_100941428 != -1)
    {
      swift_once();
    }

    if (qword_100941430 != -1)
    {
      swift_once();
    }

    if (sub_10077071C())
    {
      v13 = &xmmword_1009A2E90;
    }

    else
    {
      v13 = &xmmword_1009A2D20;
    }

    sub_10015E5E0(v13, v22);
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v14 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v14 = qword_100944CA0;
    }

    v15 = sub_10000A61C(v5, v14);
    (*(v6 + 16))(v8, v15, v5);
    (*(v6 + 32))(v12, v8, v5);
    if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
    {
      sub_1007643EC();
      v17 = v16;
      sub_1007643EC();
      v23 = v17;
      v24 = v18;
      v25 = 0;
    }

    v19 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a2, 0.0);
    (*(v6 + 8))(v12, v5, v19);
    sub_10015E58C(v22);
  }
}

void sub_10027BA94(uint64_t a1, int a2, id a3)
{
  v5 = [a3 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v7 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_10077088C() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_10077087C())
  {
    v8 = sub_10077088C();

    if (v8)
    {
LABEL_10:
      v12 = v6;
      sub_10008B8A4(a1, *(a1 + 24));
      sub_10076E37C();
      return;
    }
  }

  else
  {
  }

  v9 = [a3 preferredContentSizeCategory];
  v13 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_10077088C() & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (sub_10077087C())
  {
    v11 = sub_10077088C();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v6 = UIContentSizeCategoryAccessibilityLarge;
    goto LABEL_10;
  }
}

uint64_t sub_10027BC6C(char *a1, unint64_t a2)
{
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10076BEDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups);
    v25 = result;
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v12 = *(v11 + 8 * a2 + 32);

LABEL_7:
        v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_prefetchedLockupImages);
        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = sub_10060FF40(a2);
            if (v15)
            {
              v16 = *(*(v13 + 56) + 8 * v14);
              if (sub_10076BB9C())
              {
                sub_10076BEEC();
                v17 = sub_10076BE9C();
                v18 = v9;
                v19 = v17;
                (*(v7 + 8))(v18, v6);
                v20 = *&a1[OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView];
                swift_beginAccess();
                sub_10076BFCC();
                v21 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
                sub_10076BF7C();
                sub_10075FCCC();
                [v21 setContentMode:{sub_10076BDBC(), v25}];
                sub_100764ADC();
                sub_10075FD0C();
                if (!sub_10076BE1C())
                {
                  sub_100016F40(0, &qword_100942F10);
                  sub_100770D5C();
                }

                sub_10075FB8C();
                [v21 setContentMode:v19];
                v22 = v16;
                v29.value.super.isa = v16;
                v29.is_nil = 0;
                sub_10075FCEC(v29, v23);
              }
            }
          }
        }

        v27[3] = sub_10076BC0C();
        v27[4] = sub_10027D774(&qword_100950870, &type metadata accessor for Lockup);
        v27[0] = v12;
        v26[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
        v26[0] = a1;

        v24 = a1;
        sub_10075FA0C();

        sub_10000CD74(v26);
        return sub_10000CFBC(v27, &unk_10094F720);
      }

      __break(1u);
      return result;
    }

    v12 = sub_10077149C();

    goto LABEL_7;
  }
}

id sub_10027C09C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups] = a1;

  swift_weakAssign();
  swift_weakAssign();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit] = 0;
  v2 = v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
  v1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_100278F98(v2);

  return [v1 setNeedsLayout];
}

id sub_10027C14C(char *a1)
{
  v2 = v1;
  v4 = [a1 maximumContentSizeCategory];
  [v2 setMaximumContentSizeCategory:v4];

  *&v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups] = *&a1[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups];

  swift_weakLoadStrong();
  swift_weakAssign();

  swift_weakLoadStrong();
  swift_weakAssign();

  *&v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit] = 0;
  v5 = v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
  v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_100278F98(v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v7 = *&a1[v6];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v38 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (v12 << 9) | (8 * v14);
    v16 = *(*(v7 + 48) + v15);
    v17 = *(*(v7 + 56) + v15);
    v18 = *(*&v17[OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    v19 = v17;
    v20 = v18;
    v21 = sub_10075FC9C();

    if (v21)
    {
      v37 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v38;
      v23 = sub_10060FF40(v16);
      v25 = v38[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        result = sub_1007716DC();
        __break(1u);
        return result;
      }

      if (v38[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v23;
          v35 = v24;
          sub_10024C864();
          v24 = v35;
          v23 = v40;
        }
      }

      else
      {
        v39 = v24;
        sub_100247E00(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_10060FF40(v16);
        v30 = v29 & 1;
        v24 = v39;
        if ((v39 & 1) != v30)
        {
          goto LABEL_26;
        }
      }

      v38 = v41;
      if (v24)
      {
        v31 = v41[7];
        v32 = *(v31 + 8 * v23);
        *(v31 + 8 * v23) = v37;
      }

      else
      {
        v41[(v23 >> 6) + 8] |= 1 << v23;
        *(v41[6] + 8 * v23) = v16;
        *(v41[7] + 8 * v23) = v37;

        v33 = v41[2];
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v41[2] = v34;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v38[2])
  {
    *&v2[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_prefetchedLockupImages] = v38;
  }

  return [v2 setNeedsLayout];
}

void sub_10027C4D4()
{
  v1 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v1 - 8);
  v41 = &v32 - v2;
  v3 = sub_10076F7FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = *&v7[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit];
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v40 = v3;
      v0 = _swiftEmptyArrayStorage;
      v42 = _swiftEmptyArrayStorage;
      v7 = v7;
      v9 = 0;
      while (1)
      {
        if (v8 == v9)
        {

          if (v0 >> 62)
          {
            goto LABEL_35;
          }

          v12 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_14;
          }

          goto LABEL_36;
        }

        if (v9 >= v8)
        {
          break;
        }

        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

        if (sub_10027A00C(v9++))
        {
          sub_10077019C();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
          v0 = v42;
          v9 = v10;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v12 = sub_10077158C();
        if (!v12)
        {
          break;
        }

LABEL_14:
        v36 = v0;
        v37 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups;
        v38 = v0 & 0xFFFFFFFFFFFFFF8;
        v39 = v0 & 0xC000000000000001;
        v13 = (v4 + 48);
        v32 = (v4 + 8);
        v33 = (v4 + 32);
        v14 = 4;
        while (1)
        {
          v15 = v14 - 4;
          if (v39)
          {
            v16 = sub_10077149C();
          }

          else
          {
            if (v15 >= *(v38 + 16))
            {
              goto LABEL_32;
            }

            v16 = *(v0 + 8 * v14);
          }

          v4 = v16;
          v17 = v14 - 3;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v18 = *&v7[v37];
          if ((v18 & 0xC000000000000001) != 0)
          {

            sub_10077149C();
          }

          else
          {
            if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }
          }

          v19 = v41;
          sub_10076BACC();
          v20 = v40;
          if ((*v13)(v19, 1, v40) == 1)
          {

            sub_10000CFBC(v19, &qword_1009492E0);
          }

          else
          {
            v21 = v19;
            v22 = v35;
            (*v33)(v35, v21, v20);
            [v4 frame];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v31 = [v7 superview];
            [v7 convertRect:v31 toView:{v24, v26, v28, v30}];

            sub_1007660EC();

            (*v32)(v22, v20);
          }

          ++v14;
          v0 = v36;
          if (v17 == v12)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_36:
    }

    else
    {
    }
  }
}