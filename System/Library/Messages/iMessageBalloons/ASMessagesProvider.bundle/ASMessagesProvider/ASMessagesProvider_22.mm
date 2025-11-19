uint64_t (*sub_2788DC(uint64_t *a1))()
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
  sub_278BEC(&qword_94C398, type metadata accessor for AppPromotionOfferCollectionViewCell);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_278998(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
  sub_2630C();
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_278B18(void *a1)
{
  a1[1] = sub_278BEC(&qword_94C378, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[2] = sub_278BEC(&qword_94C380, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[3] = sub_278BEC(&qword_94C388, type metadata accessor for AppPromotionOfferCollectionViewCell);
  result = sub_278BEC(&qword_94C390, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[4] = result;
  return result;
}

uint64_t sub_278BEC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_278C34()
{
  ObjectType = swift_getObjectType();
  v2 = sub_768C60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  v7 = sub_75C840();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView] = [objc_allocWithZone(type metadata accessor for AppPromotionView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView;
  v10 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  sub_768C10();
  sub_10A2C(v17, &unk_93FBD0);
  sub_10A2C(v18, &unk_93FBD0);
  sub_769E70();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

void sub_278EE8(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

uint64_t sub_278FB0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&qword_940AD0);
  __chkstk_darwin(v5 - 8);
  v52 = &v49 - v6;
  v7 = sub_BD88(&qword_944E50);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - v8;
  sub_769A00();
  sub_769A00();
  v96 = vdupq_n_s64(0x405A400000000000uLL);
  v93 = vdupq_n_s64(0x4056000000000000uLL);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for CGSize(0);
  sub_7592D0();
  v96.i64[0] = 0x402E000000000000;
  v93.i64[0] = 0x402C000000000000;
  sub_7592D0();
  *v4 = UIFontTextStyleBody;
  v62 = enum case for FontSource.textStyle(_:);
  v60 = v2[13];
  v61 = v2 + 13;
  v60(v4);
  v97 = sub_766CA0();
  v98 = &protocol witness table for StaticDimension;
  v9 = v97;
  v57 = v97;
  sub_B1B4(v96.i64);
  v94 = v1;
  v95 = &protocol witness table for FontSource;
  v10 = sub_B1B4(v93.i64);
  v58 = v2[2];
  v58(v10, v4, v1);
  v59 = v2 + 2;
  v11 = UIFontTextStyleBody;
  sub_766CB0();
  v12 = v2[1];
  v55 = v2 + 1;
  v12(v4, v1);
  v13 = v12;
  v56 = v12;
  *v4 = v11;
  v14 = v62;
  v15 = v60;
  (v60)(v4, v62, v1);
  v94 = v9;
  v95 = &protocol witness table for StaticDimension;
  v50 = sub_B1B4(v93.i64);
  v91 = v1;
  v92 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v90);
  v17 = v58;
  v58(v16, v4, v1);
  v18 = v11;
  v51 = v18;
  sub_766CB0();
  v13(v4, v1);
  *v4 = v18;
  v15(v4, v14, v1);
  v19 = v15;
  v20 = v57;
  v91 = v57;
  v92 = &protocol witness table for StaticDimension;
  sub_B1B4(v90);
  v88 = v1;
  v89 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v87);
  v17(v21, v4, v1);
  sub_766CB0();
  v22 = v56;
  v56(v4, v1);
  *v4 = v51;
  v23 = v62;
  v19(v4, v62, v1);
  v88 = v20;
  v89 = &protocol witness table for StaticDimension;
  sub_B1B4(v87);
  v85 = v1;
  v86 = &protocol witness table for FontSource;
  v24 = sub_B1B4(v84);
  v58(v24, v4, v1);
  sub_766CB0();
  v22(v4, v1);
  *v4 = UIFontTextStyleFootnote;
  v25 = v60;
  (v60)(v4, v23, v1);
  v85 = v20;
  v86 = &protocol witness table for StaticDimension;
  sub_B1B4(v84);
  v82 = v1;
  v83 = &protocol witness table for FontSource;
  v26 = sub_B1B4(v81);
  v27 = v58;
  v58(v26, v4, v1);
  v28 = UIFontTextStyleFootnote;
  sub_766CB0();
  v29 = v56;
  v56(v4, v1);
  *v4 = v28;
  v25(v4, v62, v1);
  v82 = v57;
  v83 = &protocol witness table for StaticDimension;
  sub_B1B4(v81);
  v79 = v1;
  v80 = &protocol witness table for FontSource;
  v30 = sub_B1B4(v78);
  v27(v30, v4, v1);
  v31 = v28;
  sub_766CB0();
  v29(v4, v1);
  *v4 = v31;
  v32 = v60;
  (v60)(v4, v62, v1);
  v33 = v57;
  v79 = v57;
  v80 = &protocol witness table for StaticDimension;
  sub_B1B4(v78);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v34 = sub_B1B4(v75);
  v35 = v58;
  v58(v34, v4, v1);
  v36 = v31;
  sub_766CB0();
  v56(v4, v1);
  *v4 = v36;
  v37 = v62;
  v32(v4, v62, v1);
  v76 = v33;
  v77 = &protocol witness table for StaticDimension;
  sub_B1B4(v75);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v38 = sub_B1B4(v72);
  v35(v38, v4, v1);
  v39 = v36;
  sub_766CB0();
  v40 = v56;
  v56(v4, v1);
  *v4 = v39;
  (v60)(v4, v37, v1);
  v73 = v33;
  v74 = &protocol witness table for StaticDimension;
  v50 = sub_B1B4(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v41 = sub_B1B4(v69);
  v35(v41, v4, v1);
  v42 = v39;
  v51 = v42;
  sub_766CB0();
  v40(v4, v1);
  *v4 = v42;
  v43 = v62;
  v44 = v60;
  (v60)(v4, v62, v1);
  v70 = v33;
  v71 = &protocol witness table for StaticDimension;
  sub_B1B4(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_B1B4(v66);
  v46 = v58;
  v58(v45, v4, v1);
  sub_766CB0();
  v40(v4, v1);
  *v4 = v51;
  v44(v4, v43, v1);
  v67 = v57;
  v68 = &protocol witness table for StaticDimension;
  sub_B1B4(v66);
  v64 = v1;
  v65 = &protocol witness table for FontSource;
  v47 = sub_B1B4(v63);
  v46(v47, v4, v1);
  sub_766CB0();
  v40(v4, v1);
  v64 = sub_766970();
  v65 = &protocol witness table for ZeroDimension;
  sub_B1B4(v63);
  sub_766960();
  return sub_75D670();
}

char *sub_279968(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = v60 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_itemLayoutContext;
  v18 = sub_75C840();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v20 = sub_7666D0();
  v21 = sub_BE38(v20, qword_99E758);
  v22 = *(v20 - 8);
  v23 = *(v22 + 16);
  v67 = v21;
  v69 = v22 + 16;
  v70 = v23;
  (v23)(v16);
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v66 = v25;
  v25(v16, 0, 1, v20);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v64 = *(v11 + 104);
  v65 = v11 + 104;
  v64(v13);
  v27 = v10;
  v63 = sub_75BB20();
  v28 = objc_allocWithZone(v63);
  *&v5[v19] = sub_75BB10();
  v29 = &v5[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separatorView] = 0;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separator;
  v31 = sub_767510();
  (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
  sub_759210();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_artworkView] = sub_759020();
  v62 = v5;
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v32 = sub_BE38(v20, qword_99E6F8);
  v70(v16, v32, v20);
  v33 = v66;
  v66(v16, 0, 1, v20);
  v60[1] = v24;
  v61 = v27;
  v34 = v64;
  (v64)(v13, v26, v27);
  v35 = v63;
  v36 = objc_allocWithZone(v63);
  v37 = sub_75BB10();
  v38 = v62;
  *&v62[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_titleLabel] = v37;
  v70(v16, v67, v20);
  v33(v16, 0, 1, v20);
  v34(v13, v26, v61);
  v39 = objc_allocWithZone(v35);
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_subtitleLabel] = sub_75BB10();
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerButton] = sub_1DD00C(0);
  v71.receiver = v38;
  v71.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v71, "initWithFrame:", a1, a2, a3, a4);
  v42 = [v41 contentView];
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v43 = [v41 contentView];
  [v43 addSubview:*&v41[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_artworkView]];

  v44 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_titleLabel;
  v45 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_titleLabel];
  sub_75BAD0();

  v46 = [v41 contentView];
  [v46 addSubview:*&v41[v44]];

  v47 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_subtitleLabel;
  v48 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_subtitleLabel];
  sub_BE70(0, &qword_93E540);
  v49 = v48;
  v50 = sub_769FF0();
  [v49 setTextColor:v50];

  v51 = *&v41[v47];
  sub_75BAD0();

  v52 = v41;
  v53 = [v52 contentView];
  [v53 addSubview:*&v41[v47]];

  v54 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();

  v55 = [v52 contentView];
  [v55 addSubview:*&v52[v54]];

  v56 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabel;
  [*&v52[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v52[v56] setText:0];
  [*&v52[v56] setHidden:1];
  v57 = *&v52[v56];
  sub_75BAD0();

  v58 = [v52 contentView];
  [v58 addSubview:*&v52[v56]];

  return v52;
}

double sub_27A104()
{
  v1 = v0;
  v2 = sub_BD88(&qword_944E50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = sub_75D6B0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 traitCollection];
  sub_278FB0(v10);

  sub_75D680();
  (*(v7 + 8))(v10, v6);
  v13[1] = v1;
  sub_7592B0();
  (*(v3 + 8))(v5, v2);
  return *&v13[2];
}

void sub_27A2D0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    [v2 addSubview:v7];
  }

LABEL_4:
}

uint64_t sub_27A378@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_76A920();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&qword_940AD0);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v8 = sub_BD88(&qword_944E50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v26 = sub_75D6B0();
  v24 = *(v26 - 8);
  *&v12 = __chkstk_darwin(v26).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v16 = sub_769A00();

  if (v16)
  {
    if (qword_93DF70 != -1)
    {
      swift_once();
    }

    v17 = sub_767510();
    v18 = sub_BE38(v17, qword_9A0518);
    v19 = *(*(v17 - 8) + 16);
    v20 = v30;

    return v19(v20, v18, v17);
  }

  else
  {
    v22 = [a1 traitCollection];
    sub_278FB0(v14);

    sub_75D680();
    v31 = a1;
    sub_7592B0();
    (*(v9 + 8))(v11, v8);
    sub_75D690();
    sub_766470();
    sub_759360();
    (*(v28 + 8))(v5, v29);
    (*(v25 + 8))(v7, v27);
    if (qword_93DF70 != -1)
    {
      swift_once();
    }

    v23 = sub_767510();
    sub_BE38(v23, qword_9A0518);
    sub_7674B0();
    return (*(v24 + 8))(v14, v26);
  }
}

id sub_27A7C4()
{
  v1 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_767510();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_847A4(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10A2C(v3, &qword_94C3F0);
    result = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_27ABA8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = sub_7664F0();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_75D6D0();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75D6B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = sub_767510();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  v75 = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v13);
  v16 = [v1 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v105 = v18;
  v106 = v20;
  v107 = v22;
  v108 = v24;
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separatorView];
  v76 = v10;
  v77 = v6;
  v78 = v5;
  if (v25)
  {
    v26 = v25;
    if ([v26 isHidden])
    {
    }

    else
    {
      v27 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v12 + 16);
      v28(v15, &v26[v27], v11);
      sub_7674C0();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v68 = *(v12 + 8);
      v68(v15, v11);
      [v26 setFrame:{v30, v32, v34, v36}];
      v37 = &v26[v27];
      v5 = v78;
      v28(v15, v37, v11);
      v10 = v76;
      v6 = v77;
      sub_769D40();

      v68(v15, v11);
    }
  }

  v38 = [v1 traitCollection];
  sub_278FB0(v10);

  v39 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerButton];
  v40 = &v39[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  if (v39[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v41 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v39[v41], v102);
    sub_B170(v102, v103);
    sub_760DE0();
    v43 = v42;
    v45 = v44;
    sub_BEB8(v102);
    *v40 = v43;
    *(v40 + 1) = v45;
    v40[16] = 0;
  }

  sub_75D6A0();
  (*(v6 + 16))(v79, v10, v5);
  v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_artworkView];
  v103 = sub_759210();
  v104 = &protocol witness table for UIView;
  v102[0] = v46;
  v47 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel];
  if (v47)
  {
    v48 = sub_75BB20();
    v49 = &protocol witness table for UILabel;
    v50 = v47;
  }

  else
  {
    v50 = 0;
    v48 = 0;
    v49 = 0;
    v98 = 0;
    v99 = 0;
  }

  v97 = v50;
  v100 = v48;
  v101 = v49;
  v51 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_titleLabel];
  v52 = sub_75BB20();
  v95 = v52;
  v96 = &protocol witness table for UILabel;
  v93 = &protocol witness table for UILabel;
  v94 = v51;
  v53 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_subtitleLabel];
  v92 = v52;
  v91 = v53;
  v54 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v54)
  {
    v55 = &protocol witness table for UILabel;
    v56 = v52;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v87 = 0;
    v88 = 0;
  }

  v85 = &protocol witness table for UILabel;
  v86 = v54;
  v89 = v56;
  v90 = v55;
  v57 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabel];
  v84 = v52;
  v83 = v57;
  v81 = type metadata accessor for OfferButton();
  v82 = &protocol witness table for UIView;
  v80 = v39;
  v58 = v47;
  v59 = v51;
  v60 = v53;
  v61 = v54;
  v62 = v57;
  v63 = v39;
  v64 = v46;
  v65 = v70;
  sub_75D6C0();
  v66 = v69;
  sub_75D660();
  (*(v71 + 8))(v66, v73);
  sub_27BF4C(&qword_946DB8, type metadata accessor for MediumLockupCollectionViewCell);
  sub_760A70();
  (*(v72 + 8))(v65, v74);
  return (*(v77 + 8))(v76, v78);
}

id sub_27B2DC(char a1, uint64_t a2)
{
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_93D4F0 != -1)
    {
      swift_once();
    }

    v16 = sub_7666D0();
    v17 = sub_BE38(v16, qword_99E6E0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_75BB20());
    v20 = sub_75BB10();
    v2 = v15;
    sub_27A2D0(v20, &OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_27B58C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99E7D0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_75BB20());
  v15 = sub_75BB10();
  sub_27A2D0(v15, &OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_75BAD0();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_BE70(0, &qword_93E540);
      v18 = v17;
      v19 = sub_769FE0();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for MediumLockupCollectionViewCell()
{
  result = qword_94C3C8;
  if (!qword_94C3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27B9D0()
{
  sub_839FC(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_839FC(319, &qword_94C3E0, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27BB18()
{
  sub_759050();
  sub_759210();
  sub_27BF4C(&qword_945810, &type metadata accessor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_27BBB0(uint64_t a1)
{
  result = sub_27BF4C(&qword_94C3E8, type metadata accessor for MediumLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_27BC08(void *a1)
{
  v2 = sub_75D6B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D850();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v21 - v12;
  v14 = [a1 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v15 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v15 = qword_946938;
  }

  v16 = sub_BE38(v6, v15);
  (*(v7 + 16))(v9, v16, v6);

  (*(v7 + 32))(v13, v9, v6);
  v17 = [a1 traitCollection];
  sub_278FB0(v5);

  sub_75D800();
  sub_75D830();
  sub_75D6A0();
  sub_75D6D0();
  sub_27BF4C(&qword_94C3F8, &type metadata accessor for MediumLockupLayout);
  sub_766ED0();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_27BF4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_27BF94()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99E758);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_75BB20());
  *(v1 + v11) = sub_75BB10();
  v16 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabelPresenter);
  *v16 = 0u;
  v16[1] = 0u;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separatorView) = 0;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separator;
  v18 = sub_767510();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  sub_76A840();
  __break(1u);
}

uint64_t sub_27C2B4()
{
  sub_13238(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_27C31C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CondensedSearchEditorialBackgroundView();
  if (sub_769BE0())
  {

    sub_769BD0();
    *(a1 + 24) = sub_BD88(&qword_94C4F0);
    *(a1 + 32) = sub_27C3F0();
    sub_B1B4(a1);
    sub_763760();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t sub_27C3F0()
{
  result = qword_94C4F8;
  if (!qword_94C4F8)
  {
    sub_133D8(&qword_94C4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94C4F8);
  }

  return result;
}

id sub_27C454()
{
  v35[1] = *v0;
  v1 = sub_7656C0();
  v36 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - v5;
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = 0.0;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v16 = Strong;
  v35[0] = v1;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  sub_E2E70(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_75C830();
    v17 = sub_757560();
    v18 = *(v8 + 8);
    v18(v10, v7);
    if (v17)
    {
      v15 = sub_E32C0(v16);
      swift_unknownObjectRelease();

      v18(v13, v7);
      goto LABEL_9;
    }

    v18(v13, v7);
    swift_unknownObjectRelease();
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  sub_10A2C(v6, &unk_94EE60);
LABEL_9:
  v1 = v35[0];
LABEL_10:
  v19 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{0.0, v15}];
  v20 = objc_opt_self();
  v21 = [v20 fractionalWidthDimension:1.0];
  v22 = [v20 fractionalHeightDimension:1.0];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  type metadata accessor for CondensedSearchEditorialBackgroundView();
  v24 = v23;
  sub_769BF0();
  v25 = v19;
  v26 = sub_769210();

  v27 = [objc_opt_self() supplementaryItemWithLayoutSize:v24 elementKind:v26 containerAnchor:v25];

  sub_7583C0();
  sub_27CC9C();
  sub_75C750();
  if (v37)
  {
    v28 = sub_461DE8();

    v29 = v28 + -10.0;
  }

  else
  {
    v29 = -10.0;
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_765620();
  v31 = v30;
  v33 = v32;
  (*(v36 + 8))(v3, v1);
  [v27 setContentInsets:{v29, v31 + -10.0, -10.0, v33 + -10.0}];
  [v27 setZIndex:-1];

  return v27;
}

void *sub_27C980()
{
  v0 = sub_BD88(&unk_955F20);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-1] - v1;
  v3 = sub_75ACC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16[-1] - v8;
  sub_BD88(&qword_93F908);
  sub_75C760();
  if (!v17)
  {
    sub_10A2C(v16, &qword_93F910);
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_6;
  }

  sub_B170(v16, v17);
  sub_760470();
  sub_BEB8(v16);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_6:
    sub_10A2C(v2, &unk_955F20);
    return _swiftEmptyArrayStorage;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  v11 = *(v4 + 8);
  if (v10 == enum case for ItemBackground.condensedSearch(_:))
  {
    v11(v6, v3);
    v12 = sub_27C454();
    sub_BD88(&unk_93F5C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_77D9F0;
    *(v13 + 32) = v12;
    v11(v9, v3);
    return v13;
  }

  v11(v9, v3);
  v11(v6, v3);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_27CC9C()
{
  result = qword_93F5B0;
  if (!qword_93F5B0)
  {
    sub_7583C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F5B0);
  }

  return result;
}

void sub_27CCF4()
{
  v1 = [v0 scrollEdgeAppearance];
  if (!v1)
  {
    v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v2 = [v0 standardAppearance];
  if (!v2)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v3 = v2;
  [v1 _setTitleControlHidden:0];
  [v3 _setTitleControlHidden:{objc_msgSend(v0, "largeTitleDisplayMode") != &dword_0 + 2}];
  [v0 setScrollEdgeAppearance:v1];
  [v0 setStandardAppearance:v3];
}

void sub_27CE0C()
{
  v1 = [v0 scrollEdgeAppearance];
  if (!v1)
  {
    v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v2 = [v0 standardAppearance];
  if (!v2)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v3 = v2;
  [v1 _setTitleControlHidden:1];
  [v3 _setTitleControlHidden:1];
  [v0 setScrollEdgeAppearance:v1];
  [v0 setStandardAppearance:v3];
}

char *sub_27CF10(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_gradientView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_artworkView;
  sub_759210();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_insets];
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  *(v11 + 1) = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_artworkView]];
  return v13;
}

uint64_t sub_27D0E8(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v23 = a4;
  v24 = a5;
  v21 = a3;
  v22 = a2;
  v7 = sub_75B660();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A110();
  sub_768900();
  sub_768ED0();
  (*(v8 + 16))(v10, a1, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for ShelfBackground.artwork(_:))
  {
    (*(v8 + 96))(v10, v7);
    v11 = *(sub_BD88(&qword_94B9A8) + 48);
    [v5 frame];
    sub_765330();
    sub_7651A0();
    sub_759070();
    sub_759210();
    sub_14FA38();
    sub_75A050();

    v12 = sub_75EDA0();
    (*(*(v12 - 8) + 8))(&v10[v11], v12);
  }

  else
  {
    sub_759210();
    sub_14FA38();
    sub_75A0C0();
    (*(v8 + 8))(v10, v7);
  }

  v13 = &v5[OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_insets];
  v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_insets];
  v15 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_insets + 16];
  v17 = v21.n128_f64[0];
  *&v16.f64[0] = v22.n128_u64[0];
  *v13 = v22.n128_f64[0];
  v13[1] = v17;
  *&v19.f64[0] = v23.n128_u64[0];
  v18 = v24.n128_f64[0];
  v13[2] = v23.n128_f64[0];
  v13[3] = v18;
  v16.f64[1] = v17;
  v19.f64[1] = v18;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, v16), vceqq_f64(v15, v19)))) & 1) == 0)
  {
    [v5 setNeedsLayout];
  }
}

id sub_27D42C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_27D4D4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_artworkView;
  sub_759210();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28ArtworkSectionBackgroundView_insets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  sub_76A840();
  __break(1u);
}

void *sub_27D59C(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_94F1F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v15 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v8 + 8))(v10, v7);
  if ((*(v4 + 88))(v6, v3) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v11 = sub_27D7D4(a1, v14);
    sub_10A4A4(v11);
  }

  else
  {
    v12 = sub_61AD24(a1);
    sub_10A4A4(v12);
    (*(v4 + 8))(v6, v3);
  }

  return v15;
}

unint64_t sub_27D7D4(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v3 = sub_75D3C0();
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3);
  v126 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_7656C0();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_764930();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_BD88(&qword_945828);
  __chkstk_darwin(v118);
  v120 = &v107 - v7;
  v8 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v8 - 8);
  v111 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v132 = &v107 - v11;
  __chkstk_darwin(v12);
  v133 = &v107 - v13;
  v14 = sub_764590();
  v131 = *(v14 - 8);
  __chkstk_darwin(v14);
  v107 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_BD88(&qword_940BD8);
  __chkstk_darwin(v114);
  v17 = &v107 - v16;
  v18 = sub_BD88(&qword_940BE0);
  __chkstk_darwin(v18 - 8);
  v110 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  __chkstk_darwin(v23);
  v130 = &v107 - v24;
  v25 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v25);
  v117 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v107 - v28;
  v30 = sub_BD88(&qword_963790);
  __chkstk_darwin(v30 - 8);
  v116 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v107 - v33;
  v139 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v134 = a1;
  sub_75C7B0();

  v115 = v25;
  v35 = *(v25 + 48);
  sub_109C4(v29, v34, &qword_963790);
  v36 = sub_BD88(&unk_94F1F0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v113 = v37 + 48;
  v112 = v38;
  v39 = v38(v34, 1, v36);
  v109 = v37;
  if (v39 == 1)
  {
    sub_10A2C(&v29[v35], &qword_963790);
    sub_10A2C(v34, &qword_963790);
    v136 = 0u;
    v137 = 0u;
    v138 = 0;
    v40 = v130;
LABEL_10:
    sub_10A2C(&v136, &unk_963040);
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_768750();

  v41 = v135;
  (*(v37 + 8))(v34, v36);
  if (*(v41 + 16))
  {
    sub_134D8(v41 + 32, &v136);
  }

  else
  {

    v138 = 0;
    v136 = 0u;
    v137 = 0u;
  }

  v40 = v130;
  sub_10A2C(&v29[v35], &qword_963790);
  if (!*(&v137 + 1))
  {
    goto LABEL_10;
  }

  sub_BD88(&unk_944DA0);
  sub_75C040();
  if (swift_dynamicCast())
  {
    v42 = sub_75BFE0();

    if (v42)
    {
      v43 = v36;

      sub_7645B0();
      v122 = v42;

      v44 = 0;
      goto LABEL_12;
    }
  }

LABEL_11:
  v43 = v36;
  v122 = 0;
  v44 = 1;
LABEL_12:
  v45 = v131;
  v46 = *(v131 + 56);
  v46(v40, v44, 1, v14);
  (*(v45 + 104))(v22, enum case for Uber.Style.inline(_:), v14);
  v46(v22, 0, 1, v14);
  v47 = *(v114 + 48);
  sub_1ED18(v40, v17, &qword_940BE0);
  sub_1ED18(v22, &v17[v47], &qword_940BE0);
  v48 = v40;
  v49 = *(v45 + 48);
  if (v49(v17, 1, v14) == 1)
  {
    sub_10A2C(v22, &qword_940BE0);
    sub_10A2C(v48, &qword_940BE0);
    v50 = v49(&v17[v47], 1, v14);
    v51 = v119;
    v52 = v116;
    v53 = v43;
    if (v50 == 1)
    {
      sub_10A2C(v17, &qword_940BE0);
      LODWORD(v114) = 1;
LABEL_18:
      v55 = v120;
      v57 = v132;
      v56 = v133;
      goto LABEL_20;
    }

LABEL_17:
    sub_10A2C(v17, &qword_940BD8);
    LODWORD(v114) = 0;
    goto LABEL_18;
  }

  v54 = v110;
  sub_1ED18(v17, v110, &qword_940BE0);
  v53 = v43;
  if (v49(&v17[v47], 1, v14) == 1)
  {
    sub_10A2C(v22, &qword_940BE0);
    sub_10A2C(v130, &qword_940BE0);
    (*(v131 + 8))(v54, v14);
    v51 = v119;
    v52 = v116;
    goto LABEL_17;
  }

  v58 = v131;
  v59 = v107;
  (*(v131 + 32))(v107, &v17[v47], v14);
  sub_28009C(&qword_940BE8, &type metadata accessor for Uber.Style);
  LODWORD(v114) = sub_7691C0();
  v60 = *(v58 + 8);
  v60(v59, v14);
  sub_10A2C(v22, &qword_940BE0);
  sub_10A2C(v130, &qword_940BE0);
  v60(v54, v14);
  sub_10A2C(v17, &qword_940BE0);
  v56 = v133;
  v55 = v120;
  v51 = v119;
  v57 = v132;
  v52 = v116;
LABEL_20:
  swift_getKeyPath();
  v61 = v117;
  sub_75C7B0();

  sub_109C4(v61 + *(v115 + 48), v52, &qword_963790);
  if (v112(v52, 1, v53) == 1)
  {
    sub_10A2C(v61, &qword_963790);
    sub_10A2C(v52, &qword_963790);
    v62 = *(v51 + 56);
    v63 = v121;
    v62(v56, 1, 1, v121);
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    (*(v109 + 8))(v52, v53);
    v62 = *(v51 + 56);
    v63 = v121;
    v62(v56, 0, 1, v121);
    sub_10A2C(v61, &qword_963790);
  }

  (*(v51 + 104))(v57, enum case for Shelf.ContentType.productMediaItem(_:), v63);
  v62(v57, 0, 1, v63);
  v64 = *(v118 + 48);
  sub_1ED18(v56, v55, &qword_951BE0);
  sub_1ED18(v57, v55 + v64, &qword_951BE0);
  v65 = v57;
  v66 = *(v51 + 48);
  if (v66(v55, 1, v63) == 1)
  {
    sub_10A2C(v65, &qword_951BE0);
    sub_10A2C(v56, &qword_951BE0);
    v67 = v66(v55 + v64, 1, v63);
    v68 = v134;
    if (v67 == 1)
    {
      sub_10A2C(v55, &qword_951BE0);
      v69 = 1;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v70 = v111;
  sub_1ED18(v55, v111, &qword_951BE0);
  v71 = v66(v55 + v64, 1, v63);
  v68 = v134;
  if (v71 == 1)
  {
    sub_10A2C(v132, &qword_951BE0);
    sub_10A2C(v133, &qword_951BE0);
    (*(v51 + 8))(v70, v63);
LABEL_28:
    sub_10A2C(v55, &qword_945828);
    v69 = 0;
    goto LABEL_30;
  }

  v72 = v108;
  (*(v51 + 32))(v108, v55 + v64, v63);
  sub_28009C(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
  v69 = sub_7691C0();
  v73 = *(v51 + 8);
  v73(v72, v63);
  sub_10A2C(v132, &qword_951BE0);
  sub_10A2C(v133, &qword_951BE0);
  v73(v70, v63);
  sub_10A2C(v55, &qword_951BE0);
LABEL_30:
  v74 = objc_opt_self();
  v75 = [v74 fractionalWidthDimension:1.0];
  swift_getKeyPath();
  sub_75C7B0();

  v76 = v136;
  sub_75D3F0();
  v78 = v77;

  v79 = [v74 absoluteDimension:v78];
  v80 = [objc_opt_self() sizeWithWidthDimension:v75 heightDimension:v79];

  if ((v114 & 1) == 0)
  {
    LODWORD(v133) = v69;
    swift_getKeyPath();
    v81 = v123;
    sub_75C7B0();

    sub_765570();
    v83 = v82;
    (*(v124 + 8))(v81, v125);
    v84 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v83 * -0.5}];
    type metadata accessor for SeparatorSupplementaryView();
    v86 = v127;
    v85 = v128;
    v87 = v126;
    (*(v127 + 104))(v126, enum case for ComponentSeparator.Position.top(_:), v128);
    *&v136 = 0;
    *(&v136 + 1) = 0xE000000000000000;
    v88 = v80;
    sub_76A7F0();
    v140._countAndFlagsBits = 95;
    v140._object = 0xE100000000000000;
    sub_769370(v140);
    v141._countAndFlagsBits = sub_769BF0();
    sub_769370(v141);

    (*(v86 + 8))(v87, v85);
    v89 = v84;
    v90 = sub_769210();

    v91 = [objc_opt_self() supplementaryItemWithLayoutSize:v88 elementKind:v90 containerAnchor:v89];

    v92 = v91;
    sub_769440();
    if (*(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v139 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v68 = v134;
    LOBYTE(v69) = v133;
  }

  if ((v69 & 1) == 0)
  {
    swift_getKeyPath();
    v93 = v123;
    sub_75C7B0();

    sub_765570();
    v95 = v94;
    (*(v124 + 8))(v93, v125);
    v96 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v95 * 0.5}];
    type metadata accessor for SeparatorSupplementaryView();
    v98 = v126;
    v97 = v127;
    v99 = v128;
    (*(v127 + 104))(v126, enum case for ComponentSeparator.Position.bottom(_:), v128);
    *&v136 = 0;
    *(&v136 + 1) = 0xE000000000000000;
    v100 = v80;
    sub_76A7F0();
    v142._countAndFlagsBits = 95;
    v142._object = 0xE100000000000000;
    sub_769370(v142);
    v143._countAndFlagsBits = sub_769BF0();
    sub_769370(v143);

    (*(v97 + 8))(v98, v99);
    v101 = v96;
    v102 = sub_769210();

    v103 = [objc_opt_self() supplementaryItemWithLayoutSize:v100 elementKind:v102 containerAnchor:v101];

    v104 = v103;
    sub_769440();
    if (*(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v139 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  v105 = sub_61AD24(v68);
  sub_10A4A4(v105);

  return v139;
}

void sub_27EBD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v36 = a1;
  v37 = a2;
  v35 = a5;
  v6 = sub_75C840();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_764930();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_94F1F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v13 + 8))(v15, v12);
  v16 = *(v9 + 88);
  v32 = v8;
  if (v16(v11, v8) == enum case for Shelf.ContentType.productBadge(_:))
  {
    sub_27EFB8(v36, v37, a3, v33, v35);
  }

  else
  {
    v17 = a3;
    type metadata accessor for SeparatorSupplementaryView();
    if (sub_769BE0())
    {

      v34 = sub_769BD0();
      v28 = v18;
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v29;
      v21 = v30;
      v22 = v31;
      (*(v30 + 16))(v29, v17, v31);
      v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      (*(v21 + 32))(v24 + v23, v20, v22);
      *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
      v25 = sub_BD88(&qword_94C620);
      v26 = v35;
      v35[3] = v25;
      v26[4] = sub_27FE44();
      sub_B1B4(v26);

      sub_763760();
    }

    else
    {
      v27 = v35;
      v35[4] = 0;
      *v27 = 0u;
      *(v27 + 1) = 0u;
    }

    (*(v9 + 8))(v11, v32);
  }
}

double sub_27EFB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v78 = a5;
  v7 = sub_75C840();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v66 = v8;
  v67 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_75D3C0();
  v73 = *(v83 - 8);
  __chkstk_darwin(v83);
  v70 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_BD88(&qword_94C608);
  __chkstk_darwin(v72);
  v11 = v64 - v10;
  v12 = sub_BD88(&qword_94C610);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - v13;
  v15 = sub_75D400();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&qword_94C618);
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  __chkstk_darwin(v19 - 8);
  v75 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v71 = v64 - v22;
  __chkstk_darwin(v23);
  v25 = v64 - v24;
  __chkstk_darwin(v26);
  v28 = v64 - v27;
  v29 = type metadata accessor for SeparatorSupplementaryView();
  v82 = a1;
  v79 = a2;
  v77 = v29;
  sub_31D1A4(a1, a2, v28);
  v30 = *(v76 + 56);
  sub_61B9D4(v14);
  v31 = *(v16 + 48);
  v76 = v15;
  if (v31(v14, 1, v15) == 1)
  {
    sub_10A2C(v14, &qword_94C610);
LABEL_10:

    sub_769BD0();
    v38 = v75;
    sub_1ED18(v28, v75, &qword_94C618);
    v39 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v40 = swift_allocObject();
    sub_109C4(v38, v40 + v39, &qword_94C618);
    v41 = sub_BD88(&qword_94C620);
    v42 = v28;
    v43 = v78;
    v78[3] = v41;
    v43[4] = sub_27FE44();
    sub_B1B4(v43);
    sub_763760();
    v44 = v42;
    goto LABEL_11;
  }

  v64[1] = v30;
  (*(v16 + 32))(v18, v14, v76);
  v65 = v18;
  sub_75D3E0();
  v32 = v73;
  v33 = v83;
  (*(v73 + 56))(v25, 0, 1, v83);
  v34 = *(v72 + 48);
  sub_1ED18(v25, v11, &qword_94C618);
  sub_1ED18(v28, &v11[v34], &qword_94C618);
  v35 = *(v32 + 48);
  if (v35(v11, 1, v33) != 1)
  {
    v37 = v71;
    sub_1ED18(v11, v71, &qword_94C618);
    if (v35(&v11[v34], 1, v83) != 1)
    {
      v46 = &v11[v34];
      v47 = v70;
      v48 = v37;
      v49 = v83;
      (*(v32 + 32))(v70, v46, v83);
      sub_28009C(&qword_94C628, &type metadata accessor for ComponentSeparator.Position);
      LODWORD(v72) = sub_7691C0();
      v50 = *(v32 + 8);
      v50(v47, v49);
      sub_10A2C(v25, &qword_94C618);
      v50(v48, v49);
      sub_10A2C(v11, &qword_94C618);
      v36 = v65;
      if (v72)
      {
        goto LABEL_14;
      }

LABEL_9:
      (*(v16 + 8))(v36, v76);
      goto LABEL_10;
    }

    sub_10A2C(v25, &qword_94C618);
    (*(v32 + 8))(v37, v83);
LABEL_8:
    sub_10A2C(v11, &qword_94C608);
    v36 = v65;
    goto LABEL_9;
  }

  sub_10A2C(v25, &qword_94C618);
  if (v35(&v11[v34], 1, v83) != 1)
  {
    goto LABEL_8;
  }

  sub_10A2C(v11, &qword_94C618);
  v36 = v65;
LABEL_14:
  if ((sub_769BE0() & 1) == 0)
  {
    (*(v16 + 8))(v36, v76);
    sub_10A2C(v28, &qword_94C618);
    result = 0.0;
    v63 = v78;
    *v78 = 0u;
    *(v63 + 1) = 0u;
    v63[4] = 0;
    return result;
  }

  v51 = sub_769BD0();
  v83 = v28;
  v79 = v51;
  v75 = v52;
  v53 = swift_allocObject();
  swift_weakInit();
  v55 = v67;
  v54 = v68;
  v56 = v69;
  (*(v68 + 16))(v67, v80, v69);
  v57 = v16;
  v58 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v59 = (v66 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  (*(v54 + 32))(v60 + v58, v55, v56);
  *(v60 + v59) = v81;
  v61 = sub_BD88(&qword_94C620);
  v62 = v78;
  v78[3] = v61;
  v62[4] = sub_27FE44();
  sub_B1B4(v62);

  sub_763760();
  (*(v57 + 8))(v65, v76);
  v44 = v83;
LABEL_11:
  sub_10A2C(v44, &qword_94C618);
  return result;
}

uint64_t sub_27F8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a5;
  v5 = sub_75D400();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_BD88(&qword_94C618);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_75D3C0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  sub_1ED18(v28, v14, &qword_94C618);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10A2C(v14, &qword_94C618);
  }

  (*(v16 + 32))(v21, v14, v15);
  (*(v16 + 16))(v18, v21, v15);
  sub_75D3D0();
  (*(v6 + 16))(v8, v11, v5);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
  v24 = v27;
  swift_beginAccess();
  (*(v6 + 24))(v24 + v23, v8, v5);
  swift_endAccess();
  sub_31D6C4();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_27FC1C()
{
  sub_BEB8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_27FC88()
{
  v1 = *(sub_BD88(&qword_94C618) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_75D3C0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_27FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_BD88(&qword_94C618) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_27F8F0(a1, a2, a3, a4, v10);
}

unint64_t sub_27FE44()
{
  result = qword_963780;
  if (!qword_963780)
  {
    sub_133D8(&qword_94C620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_963780);
  }

  return result;
}

uint64_t sub_27FEA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_27FEF0()
{
  v1 = sub_75C840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_27FFC8(uint64_t a1)
{
  sub_75C840();

  return sub_61BBAC(a1);
}

uint64_t sub_28009C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_2800F0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_280110(char a1)
{
  v3 = a1 & 1;
  result = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) = a1;
  if (result == v3)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory);
  if (v5 != 7)
  {
    v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory);
    if (v6 != 7)
    {
      switch(v5)
      {
        case 6:
          if (v6 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 5:
          if (v6 == 5)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 4:
          if (v6 == 4)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (a1)
          {
            v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory);
          }

          else
          {
            v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory);
          }

          v8 = result;
          (*(&stru_1A8.size + (swift_isaMask & *v1)))(v7);
          result = v8;
          goto LABEL_20;
      }

      if (v5 != v6 || (v6 - 7) >= 0xFDu)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_20:
  v9 = *&stru_1A8.segname[(swift_isaMask & *v1) + 16];

  return v9(result);
}

uint64_t sub_28026C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory) = a1;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) & 1) != 0 || ((*(&stru_108.offset + (swift_isaMask & *v1)))())
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) != 7)
    {
      goto LABEL_7;
    }

    v5 = 7;
  }

  else
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory);
  }

  *(v1 + v4) = a1;
  (*(&stru_1A8.offset + (swift_isaMask & *v1)))(v5);
LABEL_7:
  v6 = *(&stru_1A8.size + (swift_isaMask & *v1));

  return v6(v3);
}

void sub_280398()
{
  v1 = [v0 backgroundView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  Width = CGRectGetWidth(v17);
  v10 = [v2 subviews];
  sub_BE70(0, &qword_93E550);
  v11 = sub_769460();

  if (v11 >> 62)
  {
    v12 = sub_76A860();
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
LABEL_4:
      if (v12 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_76A770();
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        [v14 setFrame:{v4, v6, Width, v8}];
      }
    }
  }
}

void sub_28053C()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = 0;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v1 = v3 == &dword_0 + 2;
  }

  v4 = [v0 layer];
  v5 = v4;
  v6 = 0.0;
  v7 = 1.0;
  if (!v1)
  {
    v7 = 0.0;
  }

  [v4 setBorderWidth:v7];

  v8 = [v0 layer];
  if (v1)
  {
    v9 = [objc_opt_self() systemWhiteColor];
    v10 = [v9 colorWithAlphaComponent:0.1];

    v11 = [v10 CGColor];
    v6 = 20.0;
  }

  else
  {
    v11 = 0;
  }

  [v8 setBorderColor:v11];

  v12 = [v0 layer];
  [v12 setCornerRadius:v6];

  v13 = [v0 layer];
  [v13 setNeedsDisplay];
}

uint64_t sub_280714()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2846CC;
  *(v4 + 24) = v3;
  v9[4] = sub_2EC28;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1EB578;
  v9[3] = &unk_88AC90;
  v5 = _Block_copy(v9);
  v6 = v0;
  v7 = v1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2808A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  swift_getKeyPath();
  sub_75C7B0();

  (*(v5 + 56))(v13, 0, 1, v4);
  (*(&stru_B8.size + (swift_isaMask & *v2)))(v13);
  type metadata accessor for TodayCardGridTracker();
  sub_768900();
  sub_768ED0();
  v14 = sub_352874();
  sub_28026C(v14);
  sub_765B70();
  sub_284644(&qword_94CAB0, &type metadata accessor for TodayCard);
  v15 = sub_75C750();
  v16 = v21;
  if (!v21)
  {
  }

  (*&stru_B8.segname[(swift_isaMask & *v2) + 16])(v15);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {

    return sub_10A2C(v10, &unk_955AA0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v18 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v18 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v19 = *(v2 + *v18);
    if (v19 == 7)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(&stru_1A8.reloff + (swift_isaMask & *v2)))(v16, v19, v7, a2);
      [v2 setNeedsLayout];

      return (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_280C98(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4, NSString *a5)
{
  if (a3)
  {
    sub_7E8B0(a2, a4, a5);
  }

  else
  {
    sub_7ED24(a2, a4, a5);
  }
}

id sub_280CC8()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) == 4)
  {
    v1 = [v0 contentView];
    [v1 setClipsToBounds:1];
  }

  return [v0 setNeedsLayout];
}

void sub_280D44(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    (*(&stru_B8.size + (swift_isaMask & *v3)))(v8);
    v10 = (*(a2 + 160))(ObjectType, a2);
    v11 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory);
    *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) = v10;
    (*(&stru_1A8.offset + (swift_isaMask & *v3)))(v11);
    v12 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v12);
  }
}

void sub_280EE4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(&stru_B8.size + (swift_isaMask & *v3)))(v8);
  sub_28026C(a2);
  v11 = [v3 backgroundView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_765A30();
    if (!v13)
    {
      sub_BE70(0, &qword_93E540);
      v13 = sub_76A060();
    }

    v14 = v13;
    [v12 setBackgroundColor:v13];
  }
}

uint64_t sub_281090(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v5 = (*&stru_248.segname[(swift_isaMask & *v2) + 16])(a1, a2);
  v7 = v6;
  v8 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v9 = *v8;
  *v8 = v5;
  v8[1] = v7;
  sub_F714(v5);
  result = sub_F704(v9);
  if (v5)
  {
    v5(result);
    return sub_F704(v5);
  }

  return result;
}

uint64_t sub_2811A8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_75F4E0();
  }

  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  return sub_F704(v2);
}

uint64_t sub_281248@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_955AA0);
}

uint64_t sub_2812B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_955AA0);
  return swift_endAccess();
}

id sub_281340()
{
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  [v0 setIsAccessibilityElement:0];
  v1 = [v0 contentView];
  [v1 setIsAccessibilityElement:1];

  v2 = [v0 contentView];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v11 = sub_284624;
  v12 = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_282788;
  v10 = &unk_88AC18;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v2 setAutomationElementsBlock:v4];
  _Block_release(v4);

  v6 = sub_7653A0();
  v10 = v6;
  v11 = sub_284644(&qword_947D00, &type metadata accessor for Feature.iOS);
  v7 = sub_B1B4(v9);
  (*(*(v6 - 8) + 104))(v7, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v6);
  LOBYTE(v6) = sub_765C30();
  result = sub_BEB8(v9);
  if ((v6 & 1) == 0)
  {
    return [v5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  return result;
}

__n128 sub_281568(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

void *sub_281588(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v54[1] = swift_getObjectType();
  v10 = sub_7593D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v14 - 8);
  v16 = v54 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v18 = sub_75C840();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  v20 = sub_7656C0();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory] = 7;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] = 7;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled] = 1;
  v21 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  swift_weakInit();
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock];
  v23 = sub_758E80();
  *v22 = 0;
  v22[1] = 0;
  v24 = [objc_allocWithZone(v23) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_shadowView] = v24;
  v25 = type metadata accessor for BaseTodayCardCollectionViewCell();
  v55.receiver = v5;
  v55.super_class = v25;
  v26 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = [v30 layer];
  [v32 setAllowsGroupOpacity:0];

  v33 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_shadowView;
  v34 = qword_93C528;
  v35 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_shadowView);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_765080();
  v37 = sub_BE38(v36, qword_99B4D8);
  v38 = *(v36 - 8);
  (*(v38 + 16))(v16, v37, v36);
  (*(v38 + 56))(v16, 0, 1, v36);
  sub_758E60();

  v39 = *(v30 + v33);
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  v40 = v39;
  sub_758E70();

  (*(v11 + 8))(v13, v10);
  [v30 insertSubview:*(v30 + v33) atIndex:0];
  v41 = [objc_allocWithZone(UIView) init];
  [v30 setBackgroundView:v41];

  v42 = [v30 backgroundView];
  [v42 setClipsToBounds:0];

  v43 = [v30 backgroundView];
  [v43 _setContinuousCornerRadius:20.0];

  v44 = [v30 backgroundView];
  if (v44)
  {
    v45 = v44;
    sub_BE70(0, &qword_93E540);
    v46 = sub_76A060();
    [v45 setBackgroundColor:v46];
  }

  v47 = [v30 contentView];
  v48 = [v47 layer];

  [v48 setAllowsGroupBlending:0];
  v49 = [v30 contentView];
  [v49 setClipsToBounds:1];

  v50 = [v30 backgroundView];
  if (v50)
  {
    v51 = [v50 layer];

    [v51 setAllowsGroupBlending:0];
  }

  (*(&stru_248.offset + (swift_isaMask & *v30)))();
  sub_BD88(&qword_9477F0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_77B6D0;
  *(v52 + 32) = sub_7676F0();
  *(v52 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v30;
}

uint64_t sub_281CF4()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [v0 bounds];
    sub_75F4C0();
  }

  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_shadowView);
  [v1 bounds];
  [v2 setFrame:?];
  v3 = [v1 sendSubviewToBack:v2];
  (*&stru_1A8.sectname[swift_isaMask & *v1])(v3);
  v4 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {

    v6(v7);
    return sub_F704(v6);
  }

  return result;
}

id sub_281F88(void *a1, void *a2)
{
  [a1 frame];
  [a2 setFrame:?];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v5 = sub_280110(*(a1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded));
  v6 = (*(&stru_108.offset + (swift_isaMask & *a1)))(v5);
  v7 = (*(&stru_108.reloff + (swift_isaMask & *a2)))(v6 & 1);
  v8 = (*(&stru_108.reserved2 + (swift_isaMask & *a1)))(v7);
  (*&stru_158.sectname[swift_isaMask & *a2])(v8 & 1);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v10 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory);
  *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory);
  (*(&stru_1A8.offset + (swift_isaMask & *a2)))(v10);
  if (*(a1 + v4))
  {
    v11 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_28026C(*(a1 + v11));
  v13 = (*(&stru_158.reloff + (swift_isaMask & *a1)))(v12);
  (*(&stru_158.flags + (swift_isaMask & *a2)))(v13 & 1);
  v14 = sub_284644(&qword_94C6C8, type metadata accessor for BaseTodayCardCollectionViewCell);
  (*(&stru_1A8.flags + (swift_isaMask & *a2)))(a1, v14, 0);

  return [a2 layoutIfNeeded];
}

double sub_2822A4()
{
  v1 = sub_7656C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCardGridTracker();
  sub_768900();
  sub_768ED0();
  v5 = sub_352874();
  sub_765B70();
  sub_284644(&qword_94CAB0, &type metadata accessor for TodayCard);
  sub_75C750();
  v6 = v13;
  if (v13)
  {
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_75C7B0();

    v7 = v13;
    v8 = (*(v0 + 528))(v6, v5, 0, v4, v13, 0);
  }

  else
  {
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_75C7B0();

    v9 = v13;
    sub_7ED24(v5, v4, v13);
    v8 = v10;
  }

  (*(v2 + 8))(v4, v1);
  return v8;
}

_BYTE *sub_28252C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = type metadata accessor for BaseTodayCardCollectionViewCell();
  if (v7)
  {
    v12.receiver = v3;
    v12.super_class = v8;
    return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = v8;
    result = objc_msgSendSuper2(&v13, "hitTest:withEvent:", a1, a2, a3);
    if (result)
    {
      v10 = result;
      [v3 bounds];
      v14.x = a2;
      v14.y = a3;
      if (!CGRectContainsPoint(v15, v14))
      {
        return v10;
      }

      sub_BE70(0, &qword_93E550);
      if (sub_76A1C0())
      {
        return v10;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v10;
      }

      type metadata accessor for SearchAdTransparencyLabel();
      if (swift_dynamicCastClass())
      {
        return v10;
      }

      else
      {

        v11 = v3;
        return v3;
      }
    }
  }

  return result;
}

char *sub_2826F4(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 subviews];

  sub_BE70(0, &qword_93E550);
  v3 = sub_769460();

  v4 = sub_140CA0(v3);

  return v4;
}

Class sub_282788(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = sub_769450().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_282804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayCardCollectionViewCell()
{
  result = qword_94C660;
  if (!qword_94C660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_282930()
{
  sub_282A74(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_282A74(319, qword_942ED0, &type metadata accessor for PageGrid);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_282A74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_282B14()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  return *(v0 + *v1);
}

double sub_282BCC@<D0>(uint64_t a1@<X8>)
{
  (*&stru_158.segname[(swift_isaMask & *v1) + 8])(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_282DB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620);
}

uint64_t sub_282E20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_93F620);
  return swift_endAccess();
}

uint64_t sub_282EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_283054()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_2830B4(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_28314C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_2831A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

uint64_t sub_2833C0(void *a1)
{
  a1[3] = sub_284644(&qword_94C670, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[4] = sub_284644(&qword_94C678, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[5] = sub_284644(&qword_941188, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[6] = sub_284644(&qword_94C680, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[7] = sub_284644(&qword_94C688, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[8] = sub_284644(&qword_94C690, type metadata accessor for BaseTodayCardCollectionViewCell);
  result = sub_284644(&qword_941198, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[9] = result;
  return result;
}

uint64_t sub_283514()
{
  v1 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*&stru_B8.segname[(swift_isaMask & *v0) + 16])(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10A2C(v3, &unk_955AA0);
  }

  (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v10 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = *(v0 + *v10);
  if (v11 != 7)
  {
    v12 = [v0 traitCollection];
    sub_2A6464(v11, v12);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_28377C(uint64_t a1, void *a2)
{
  v4 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ED18(a1, v6, &unk_955AA0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_955AA0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_765650();
  sub_765650();
  [a2 layoutDirection];
  sub_769BB0();
  return (*(v8 + 8))(v10, v7);
}

id sub_28399C()
{
  v1 = v0;
  v2 = sub_7656C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v17 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_shadowView);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) != 1)
  {
    [v17 setHidden:{0, v13}];
    v22 = [v0 backgroundView];
    if (v22)
    {
      v23 = v22;
      [v22 _setContinuousCornerRadius:20.0];
    }

    v24 = [v1 contentView];
    [v24 _setContinuousCornerRadius:20.0];

    (*&stru_B8.segname[(swift_isaMask & *v1) + 16])();
    if ((*(v3 + 48))(v11, 1, v2))
    {
      v21 = v11;
      goto LABEL_10;
    }

    (*(v3 + 16))(v5, v11, v2);
    sub_10A2C(v11, &unk_955AA0);
    if (*(v1 + v16))
    {
      v34 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v34 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v35 = *(v1 + *v34);
    v36 = [v1 traitCollection];
    if (v35 != 4)
    {
      sub_765650();
      sub_765650();
    }

    [v36 layoutDirection];
    sub_769BB0();
    v27 = v37;
    v29 = v38;
    v31 = v39;
    v33 = v40;

    (*(v3 + 8))(v5, v2);
LABEL_18:
    [v1 setLayoutMargins:{v27, v29, v31, v33}];
    return [v1 setNeedsLayout];
  }

  [v17 setHidden:{1, v13}];
  v18 = [v0 backgroundView];
  if (v18)
  {
    v19 = v18;
    [v18 _setContinuousCornerRadius:0.0];
  }

  v20 = [v1 contentView];
  [v20 _setContinuousCornerRadius:0.0];

  (*&stru_B8.segname[(swift_isaMask & *v1) + 16])();
  if (!(*(v3 + 48))(v15, 1, v2))
  {
    (*(v3 + 16))(v8, v15, v2);
    sub_10A2C(v15, &unk_955AA0);
    v25 = [v1 traitCollection];
    sub_765650();
    sub_765650();
    [v25 layoutDirection];
    sub_769BB0();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    (*(v3 + 8))(v8, v2);
    goto LABEL_18;
  }

  v21 = v15;
LABEL_10:
  sub_10A2C(v21, &unk_955AA0);
  return [v1 setNeedsLayout];
}

uint64_t sub_283ECC(uint64_t result, char a2)
{
  if (result)
  {

    sub_765B20();
    v3 = sub_75B080();

    if (v3 <= 6)
    {
      if (v3 > 3)
      {
        if (v3 == 4)
        {

          v4 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell();
          v5 = &unk_94C6D0;
          v6 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
          goto LABEL_37;
        }

        if (v3 != 5)
        {
          goto LABEL_16;
        }

        if (a2 == 4)
        {
          goto LABEL_35;
        }

        v8 = type metadata accessor for RiverTodayCardCollectionViewCell();
        goto LABEL_36;
      }

      if (v3 >= 2)
      {
        if (v3 != 2)
        {
          if (v3 != 3)
          {
            goto LABEL_32;
          }

LABEL_16:

          v4 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
          v5 = &unk_94C6B8;
          v6 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
          goto LABEL_37;
        }

        if (a2 == 4)
        {
          sub_765B20();
          sub_75DB40();
          if (swift_dynamicCastClass())
          {
            v7 = sub_75DB00();

            if (v7)
            {
              v4 = type metadata accessor for ListTodayCardCollectionViewCell();
              v5 = &unk_949788;
              v6 = type metadata accessor for ListTodayCardCollectionViewCell;
              goto LABEL_37;
            }
          }

          else
          {
          }

LABEL_35:
          v8 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
          goto LABEL_36;
        }

        v8 = type metadata accessor for ListTodayCardCollectionViewCell();
LABEL_36:
        v4 = v8;
        v5 = &unk_94C6C8;
        v6 = type metadata accessor for BaseTodayCardCollectionViewCell;
        goto LABEL_37;
      }

LABEL_21:

      v4 = type metadata accessor for StoryCardCollectionViewCell();
      v5 = &unk_947B30;
      v6 = type metadata accessor for StoryCardCollectionViewCell;
      goto LABEL_37;
    }

    if (v3 > 10)
    {
      switch(v3)
      {
        case 11:

          v4 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell();
          v5 = &unk_94C6A8;
          v6 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
          goto LABEL_37;
        case 12:

          v4 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
          v5 = &unk_94C6A0;
          v6 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
        case 13:

          v4 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
          v5 = &unk_94C698;
          v6 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
      }
    }

    else
    {
      switch(v3)
      {
        case 7:

          v4 = type metadata accessor for GridTodayCardCollectionViewCell();
          v5 = &unk_94C6C0;
          v6 = type metadata accessor for GridTodayCardCollectionViewCell;
          goto LABEL_37;
        case 8:
          goto LABEL_21;
        case 10:

          v4 = type metadata accessor for AppEventTodayCardCollectionViewCell();
          v5 = &unk_94C6B0;
          v6 = type metadata accessor for AppEventTodayCardCollectionViewCell;
LABEL_37:
          sub_284644(v5, v6);
          return v4;
      }
    }

LABEL_32:

    return 0;
  }

  return result;
}

uint64_t sub_28423C(uint64_t a1, char a2, void *a3)
{
  v6 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ED18(a1, v8, &unk_955AA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10A2C(v8, &unk_955AA0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a2 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [a3 layoutDirection];
  sub_769BB0();
  return (*(v10 + 8))(v12, v9);
}

void sub_284478()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  v4 = sub_7656C0();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled) = 1;
  v5 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  v6 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_2845EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_28462C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_284644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28468C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_2846F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_75CF00();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_materialBackground;
  *&v5[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView();
  *&v5[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = &v5[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_selectionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v50.receiver = v5;
  v50.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v25 = v21;
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v25 setOverrideUserInterfaceStyle:2];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView;
  v27 = qword_93C670;
  v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v14, qword_99B8B0);
  (*(v15 + 16))(v17, v29, v14);
  v30 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v15 + 24))(&v28[v30], v17, v14);
  swift_endAccess();
  [v28 setNeedsLayout];

  (*(v15 + 8))(v17, v14);
  v31 = qword_93DBF0;
  v32 = *(*&v25[v26] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_7666D0();
  v34 = sub_BE38(v33, qword_99FBC8);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v36(v13, v34, v33);
  v37 = *(v35 + 56);
  v37(v13, 0, 1, v33);
  sub_75BA40();

  v38 = qword_93DBF8;
  v39 = *(*&v25[v26] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = sub_BE38(v33, qword_99FBE0);
  v36(v13, v40, v33);
  v37(v13, 0, 1, v33);
  sub_75BA40();

  v41 = [*(*&v25[v26] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  [*(*&v25[v26] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v25[v26] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  v42 = [*&v25[v26] layer];
  [v42 setAllowsGroupBlending:0];

  v43 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_materialBackground;
  v44 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_materialBackground];
  sub_6EC1FC(20.0);

  [v25 addSubview:*&v25[v43]];
  v45 = [*&v25[v43] contentView];
  [v45 addSubview:*&v25[v26]];

  v46 = [*&v25[v43] contentView];
  v47 = [v46 layer];

  [v47 setAllowsGroupBlending:0];
  return v25;
}

uint64_t sub_284D0C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7672A0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_materialBackground];
  sub_75D650();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView];
  v15[3] = type metadata accessor for SmallLockupView();
  v15[4] = sub_243BD0(&qword_94B118, type metadata accessor for SmallLockupView);
  v15[0] = v8;
  sub_134D8(v15, v13);
  v14[3] = sub_767340();
  v14[4] = &protocol witness table for Margins;
  sub_B1B4(v14);
  v9 = v8;
  sub_767330();
  sub_767280();
  sub_7672B0();
  sub_BEB8(v15);
  sub_75D650();
  v10 = [v0 traitCollection];
  sub_7673E0();

  return (*(v3 + 8))(v6, v2);
}

double sub_284F8C(double a1, double a2)
{
  v5 = sub_7672A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1FD068(v14);
  sub_134D8(v14, v12);
  v13[3] = sub_767340();
  v13[4] = &protocol witness table for Margins;
  sub_B1B4(v13);
  sub_767330();
  sub_767280();
  sub_7672B0();
  sub_BEB8(v14);
  v9 = sub_285C70(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

id sub_285158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_BD88(&unk_948730);
  __chkstk_darwin(v17 - 8);
  v19 = &v35 - v18;
  v20 = sub_760440();
  if (v20)
  {
    v21 = v20;
    v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView];
    [v22 setHidden:0];
    v23 = sub_BD88(&unk_948740);
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v24 = sub_758C70();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = sub_75BD30();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_BD88(&unk_9457F0);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = sub_765870();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_4A18A4(v21, v22, v19, a2, 0, 0, v16, v13, v7, v10);
    sub_10A2C(v7, &unk_9457D0);
    v22[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v22 setNeedsLayout];
    sub_10A2C(v10, &unk_94AC40);
    sub_10A2C(v13, &unk_9457E0);
    sub_10A2C(v16, &unk_94A780);
    sub_10A2C(v19, &unk_948730);
    v28 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
    if (v28)
    {
      [v28 setHidden:1];
    }

    v29 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
    v30 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel];
    sub_396E8();
    v31 = v30;
    v32 = sub_769FF0();
    [v31 setTextColor:v32];

    [*&v22[v29] _setTextColorFollowsTintColor:0];
    v33 = [*&v22[v29] layer];
    [v33 setCompositingFilter:kCAFilterPlusL];

    [v3 setNeedsLayout];
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView] setHidden:1];

    return [v2 setNeedsLayout];
  }
}

void sub_285694()
{
  v1 = sub_7652D0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_765240();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_760440())
  {
    v6 = sub_764F20();

    if (v6)
    {
      sub_765250();
      sub_765210();
      (*(v3 + 8))(v5, v2);
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v7 = sub_75CF00();
      sub_BE38(v7, qword_99B898);
      sub_75CDD0();
      sub_765330();
      v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView);
      v9 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v10 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v10 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();

      v11 = *(v8 + v9);
      sub_759210();
      sub_243BD0(&qword_945810, &type metadata accessor for ArtworkView);
      v12 = v11;
      sub_75A050();
    }
  }
}

uint64_t sub_2859E8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_selectionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_F704(v4);
}

void sub_285A10()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_243BD0(&qword_945810, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_75A0C0();
}

double sub_285B00(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == &dword_0 + 2)
  {
    v7 = [v2 traitCollection];
    v8 = type metadata accessor for SnapshotPageTraitEnvironment();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
    *v10 = a1;
    v10[1] = a2;
    *&v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v7;
    v27.receiver = v9;
    v27.super_class = v8;
    v11 = objc_msgSendSuper2(&v27, "init");
    v12 = [v11 traitCollection];
    v13 = sub_7699B0();

    if (v13)
    {
      [v11 pageContainerSize];
      sub_24988C(v14, v15);
      v17 = v16 + v16;
      PageTraitEnvironment.pageColumnMargin.getter();
      v19 = v18;

      return v17 + v19;
    }

    else
    {
      [v11 pageMarginInsets];
      v21 = v20;
      v23 = v22;
      [v11 pageContainerSize];
      v25 = v24;

      return v25 - v21 - v23;
    }
  }

  return a1;
}

double sub_285C70(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_7672E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_7672A0();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_B1B4(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_285B00(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == &dword_0 + 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_134D8(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_7672F0();
    v46 = &protocol witness table for Resize;
    sub_B1B4(v44);
    sub_767300();
  }

  else
  {
    sub_766DC0();
    v28 = v27;
    v30 = v29;
    sub_134D8(v47, v43);
    sub_766DC0();
    v32 = v31;
    v34 = v33;
    v45 = sub_7673C0();
    v46 = &protocol witness table for Constrain;
    sub_B1B4(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_7673D0();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_766DE0();
  }

  sub_B170(v44, v45);
  v37 = [a2 traitCollection];
  sub_7673F0();
  v39 = v38;

  sub_BEB8(v44);
  sub_BEB8(v47);
  return v39;
}

void sub_28607C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_76A840();
  __break(1u);
}

double sub_28617C(uint64_t a1, void *a2)
{
  sub_B170(a2, a2[3]);
  sub_7665A0();
  return v2;
}

void sub_286200(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    v8 = [v2 contentView];
    [v8 addSubview:v7];
  }

LABEL_4:
}

void sub_2862C4()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_productTapToRateView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }

  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    [v7 setFrame:?];
  }
}

id sub_286578(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  v4 = sub_75C840();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_productTapToRateView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_productReviewActionsView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_28666C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewActionCollectionViewCell()
{
  result = qword_94C740;
  if (!qword_94C740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_286754()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_286948(void *a1)
{
  v3 = sub_769210();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (!v4)
  {
    v5 = objc_allocWithZone(UITableViewCell);
    v6 = sub_769210();
    v4 = [v5 initWithStyle:0 reuseIdentifier:v6];
  }

  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33GladiatorValidationViewController_ruleNames);
  v8 = v4;
  result = sub_7575A0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = [v8 textLabel];

  if (v10)
  {
    v11 = sub_769210();

    [v10 setText:v11];
  }

  else
  {
  }

  return v8;
}

unint64_t sub_286D9C()
{
  v1 = v0;
  v2 = sub_75ADB0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33GladiatorValidationViewController_rules];
  result = sub_7575A0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v6 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v2);
  v8 = sub_7657A0();
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33GladiatorValidationViewController_events];
  v10 = type metadata accessor for RuleResultsViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_textView] = 0;
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_rule] = v8;
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_events] = v9;
  v15.receiver = v11;
  v15.super_class = v10;

  v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_286FD0(void *a1)
{
  sub_287808();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&v1[qword_94C798];
    if (v4)
    {
      v5 = *&v1[qword_94C798];
    }

    else
    {
      v5 = [v1 contentView];
      v4 = 0;
    }

    v6 = v4;
    [v5 addSubview:v3];
    [v1 setNeedsLayout];
  }
}

uint64_t sub_2870A4(void *a1)
{
  v3 = *&v1[qword_94C798];
  if (v3)
  {
    v4 = *&v1[qword_94C798];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = v3;
    goto LABEL_7;
  }

  v4 = [v1 contentView];
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v3;
  v6 = [a1 superview];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  sub_2630C();
  v8 = sub_76A1C0();

  v4 = v7;
LABEL_8:

  return v8 & 1;
}

void sub_287160(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_286FD0(0);
}

void sub_2871BC(double *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setFrame:{*a1, a1[1], a1[2], a1[3]}];
  }
}

void sub_287234(void *a1)
{
  v3 = *(v1 + qword_94C798);
  *(v1 + qword_94C798) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = a1;
  if (Strong)
  {
    [v4 addSubview:Strong];
  }
}

id sub_2872C4(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v11 = &a1[qword_99C4E0];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a1[qword_94C798] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

void sub_287368()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + qword_94C798);
}

void sub_2873A8(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = *(a1 + qword_94C798);
}

uint64_t type metadata accessor for FramedVideoCollectionViewCell()
{
  result = qword_94C7C8;
  if (!qword_94C7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_2874B4(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_287508;
}

void sub_287508(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_286FD0(v2);
  }

  else
  {
    sub_286FD0(*a1);
  }
}

uint64_t sub_287570()
{
  ObjectType = swift_getObjectType();
  v1 = sub_287970(&qword_94C968, type metadata accessor for FramedVideoCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_2875E4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_287970(&qword_94C968, type metadata accessor for FramedVideoCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

void (*sub_287670(uint64_t *a1))(void *a1)
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
  sub_287970(&qword_94C968, type metadata accessor for FramedVideoCollectionViewCell);
  *(v3 + 32) = sub_75DC50();
  return sub_215A4;
}

void sub_287808()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *&v0[qword_94C798];
  if (v2)
  {
    v9 = *&v0[qword_94C798];
    if (Strong)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = v2;
    goto LABEL_11;
  }

  v9 = [v0 contentView];
  if (!Strong)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_287970(&qword_93F500, type metadata accessor for VideoView);
  v3 = v2;
  v4 = [Strong superview];
  if (v4)
  {
    v5 = v4;
    sub_2630C();
    v6 = sub_76A1C0();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v9 = v7;
    [v7 removeFromSuperview];
  }

  else
  {
  }

LABEL_11:
}

uint64_t sub_287970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2879B8(__int32 a1)
{
  v54.i32[0] = a1;
  v1 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v1 - 8);
  v56 = v40 - v2;
  v55 = sub_765610();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v48 = (v40 - v6);
  __chkstk_darwin(v7);
  v9 = (v40 - v8);
  v10 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v10 - 8);
  v51 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = v40 - v13;
  __chkstk_darwin(v14);
  v49 = v40 - v15;
  __chkstk_darwin(v16);
  v45 = v40 - v17;
  __chkstk_darwin(v18);
  v44 = v40 - v19;
  __chkstk_darwin(v20);
  v43 = v40 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  sub_BD88(&qword_940A70);
  v26 = *(sub_765540() - 8);
  v42 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v46 = 2 * v42;
  v28 = swift_allocObject();
  v47 = v28;
  *(v28 + 16) = xmmword_77DC20;
  v29 = v28 + v27;
  v57 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  sub_7655C0();
  v57 = 0x4034000000000000;
  sub_7655D0();
  v30 = vdup_n_s32((v54.i8[0] & 1) == 0);
  v31.i64[0] = v30.u32[0];
  v31.i64[1] = v30.u32[1];
  v54 = vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL));
  *v9 = vbslq_s8(v54, xmmword_790190, xmmword_790180);
  v41 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = *(v3 + 104);
  v40[2] = v3 + 104;
  v53 = v32;
  v33 = v9;
  v34 = v55;
  (v32)(v33);
  LOBYTE(v57) = 0;
  sub_7655D0();
  v57 = 0;
  sub_7655D0();
  v40[1] = v29;
  sub_765500();
  v57 = 0x3FF0000000000000;
  sub_7655D0();
  sub_7655C0();
  v57 = 0x4034000000000000;
  sub_7655D0();
  v35 = v48;
  *v48 = vbslq_s8(v54, xmmword_7901B0, xmmword_7901A0);
  v36 = v41;
  v53(v35, v41, v34);
  LOBYTE(v57) = 0;
  sub_7655D0();
  v57 = 0;
  sub_7655D0();
  sub_765500();
  v57 = 0x3FF0000000000000;
  sub_7655D0();
  sub_7655C0();
  v57 = 0x4034000000000000;
  sub_7655D0();
  v38 = v52;
  v37 = v53;
  *v52 = vbslq_s8(v54, xmmword_7901D0, xmmword_7901C0);
  v37(v38, v36, v55);
  LOBYTE(v57) = 0;
  sub_7655D0();
  v57 = 0;
  sub_7655D0();
  sub_765500();
  return v47;
}

uint64_t sub_288100@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F4D8);
  v7 = *(v5 - 8);
  v22 = *(v7 + 16);
  v21 = v7 + 16;
  v22(v4, v6, v5);
  v8 = v2[13];
  v20 = enum case for FontSource.useCase(_:);
  v19 = v8;
  v8(v4);
  v9 = sub_766CA0();
  v30[3] = v9;
  v30[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v30);
  v28 = v1;
  v29 = &protocol witness table for FontSource;
  v10 = sub_B1B4(v27);
  v11 = v2[2];
  v11(v10, v4, v1);
  sub_766CB0();
  v12 = v2[1];
  v12(v4, v1);
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v5, qword_99F4F0);
  v22(v4, v13, v5);
  v19(v4, v20, v1);
  v28 = v9;
  v29 = &protocol witness table for StaticDimension;
  sub_B1B4(v27);
  v25 = v1;
  v26 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v24);
  v11(v14, v4, v1);
  sub_766CB0();
  v12(v4, v1);
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v5, qword_99F568);
  v22(v4, v15, v5);
  v19(v4, v20, v1);
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_B1B4(v24);
  v23[3] = v1;
  v23[4] = &protocol witness table for FontSource;
  v16 = sub_B1B4(v23);
  v11(v16, v4, v1);
  sub_766CB0();
  v12(v4, v1);
  return sub_760AF0();
}

UIColor sub_288544()
{
  sub_396E8();
  result.super.isa = sub_76A120(0.0, 0.0, 0.0, 1.0).super.isa;
  qword_99C4F0 = result.super.isa;
  return result;
}

void sub_2885B4(uint64_t a1, void *a2, id *a3, void *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  v6 = [v5 colorWithAlphaComponent:0.8];

  *a4 = v6;
}

UIColor sub_288634()
{
  sub_396E8();
  result.super.isa = sub_76A120(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_99C500 = result.super.isa;
  return result;
}

char *sub_288678(double a1, double a2, double a3, double a4)
{
  v9 = sub_7593D0();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v11 - 8);
  v99 = v93 - v12;
  v13 = sub_7666D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v106 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_760AD0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = v93 - v20;
  v21 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v21 - 8);
  v23 = v93 - v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v25 = sub_75C840();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_artworkView;
  v98 = sub_759210();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v108 = v4;
  *&v4[v26] = v27;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v13, qword_99F4D8);
  v30 = v14 + 16;
  v105 = *(v14 + 16);
  v105(v23, v29, v13);
  v97 = v14;
  v31 = v14 + 56;
  v104 = *(v14 + 56);
  v104(v23, 0, 1, v13);
  v32 = enum case for DirectionalTextAlignment.leading(_:);
  v96 = v17;
  v103 = *(v17 + 104);
  v103(v109, enum case for DirectionalTextAlignment.leading(_:), v16);
  v33 = sub_75BB20();
  v107 = v16;
  v34 = v33;
  v35 = objc_allocWithZone(v33);
  *&v108[v28] = sub_75BB10();
  v36 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v13, qword_99F4F0);
  v105(v23, v37, v13);
  v104(v23, 0, 1, v13);
  v103(v109, v32, v107);
  v38 = objc_allocWithZone(v34);
  *&v108[v36] = sub_75BB10();
  v94 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_descriptionLabel;
  v93[2] = v31;
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v39 = sub_BE38(v13, qword_99F568);
  v40 = v105;
  v41 = v106;
  v105(v106, v39, v13);
  v42 = v107;
  v43 = v13;
  v93[0] = v13;
  v44 = v103;
  v103(v109, v32, v107);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v45[qword_94B338] = UIContentSizeCategoryExtraExtraExtraLarge;
  v40(v23, v41, v43);
  v93[1] = v30;
  v46 = v104;
  v104(v23, 0, 1, v43);
  v47 = v95;
  v44(v95, enum case for DirectionalTextAlignment.none(_:), v42);
  v48 = UIContentSizeCategoryExtraExtraExtraLarge;
  v49 = sub_75BB10();
  v50 = v106;
  v51 = v93[0];
  v40(v23, v106, v93[0]);
  v46(v23, 0, 1, v51);
  v52 = v49;
  sub_75BA40();
  v53 = v50;
  sub_75BA20();
  [v52 setNumberOfLines:0];
  v54 = v96;
  v55 = v109;
  v56 = v107;
  (*(v96 + 16))(v47, v109, v107);
  sub_75BA90();

  (*(v54 + 8))(v55, v56);
  (*(v97 + 8))(v53, v51);
  v57 = v108;
  *&v108[v94] = v52;
  *&v57[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_pageTraits] = 0;
  v58 = type metadata accessor for EditorialStoryCardCollectionViewCell();
  v110.receiver = v57;
  v110.super_class = v58;
  v59 = objc_msgSendSuper2(&v110, "initWithFrame:", a1, a2, a3, a4);
  [v59 setClipsToBounds:0];
  v60 = [v59 contentView];
  [v60 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v61 = [v59 contentView];
  [v61 setClipsToBounds:0];

  v62 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_artworkView;
  [*&v59[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_artworkView] setContentMode:2];
  v63 = qword_93C538;
  v64 = *&v59[v62];
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = sub_765080();
  v66 = sub_BE38(v65, qword_99B508);
  v67 = *(v65 - 8);
  v68 = v99;
  (*(v67 + 16))(v99, v66, v65);
  (*(v67 + 56))(v68, 0, 1, v65);
  sub_7591C0();

  v69 = *&v59[v62];
  v71 = v100;
  v70 = v101;
  v72 = v102;
  (*(v101 + 104))(v100, enum case for CornerStyle.arc(_:), v102);
  v73 = v69;
  sub_759200();

  (*(v70 + 8))(v71, v72);
  v74 = *&v59[v62];
  sub_759080();
  sub_75CD00();

  v75 = *&v59[v62];
  sub_759090();
  sub_75CD10();

  v76 = [v59 contentView];
  [v76 addSubview:*&v59[v62]];

  v77 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_headingLabel;
  v78 = qword_93C890;
  v79 = *&v59[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_headingLabel];
  if (v78 != -1)
  {
    swift_once();
  }

  [v79 setTextColor:qword_99C4F8];

  v80 = [v59 contentView];
  [v80 addSubview:*&v59[v77]];

  v81 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_titleLabel;
  v82 = qword_93C898;
  v83 = *&v59[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_titleLabel];
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_99C500;
  [v83 setTextColor:qword_99C500];

  v85 = [v59 contentView];
  [v85 addSubview:*&v59[v81]];

  v86 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_descriptionLabel;
  [*&v59[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_descriptionLabel] setTextColor:v84];
  v87 = [v59 contentView];
  [v87 addSubview:*&v59[v86]];

  v88 = objc_opt_self();
  v89 = [v88 clearColor];
  [v59 setBackgroundColor:v89];

  v90 = [v59 contentView];
  v91 = [v88 clearColor];
  [v90 setBackgroundColor:v91];

  return v59;
}

id sub_289284()
{
  v1 = v0;
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760B00();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_760B20();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_76A920();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EditorialStoryCardCollectionViewCell();
  v43.receiver = v1;
  v43.super_class = v15;
  result = objc_msgSendSuper2(&v43, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v27 = v3;
    v28 = v2;
    swift_unknownObjectRetain();
    [v1 bounds];
    CGRectGetWidth(v44);
    [v1 bounds];
    CGRectGetHeight(v45);
    if (qword_93DCF0 != -1)
    {
      swift_once();
    }

    v17 = sub_766CA0();
    sub_BE38(v17, qword_99FE18);
    sub_766470();
    sub_766700();
    (*(v12 + 8))(v14, v11);
    sub_288100(v8);
    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_artworkView];
    v41 = sub_759210();
    v42 = &protocol witness table for UIView;
    v40 = v18;
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_headingLabel];
    v38 = sub_75BB20();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v19;
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_titleLabel];
    v35 = v38;
    v34 = v20;
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_descriptionLabel];
    v33 = &protocol witness table for UILabel;
    v32 = v38;
    v31 = v21;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_760B10();
    sub_760AE0();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v5, v28);
    return (*(v29 + 8))(v10, v30);
  }

  return result;
}

id sub_2896FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_759190();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_headingLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_titleLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_descriptionLabel] setText:0];
}

id sub_2897E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EditorialStoryCardCollectionViewCell()
{
  result = qword_94C998;
  if (!qword_94C998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_289900()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2899BC()
{
  v1 = sub_7666D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_760AD0();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v13 = sub_75C840();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_artworkView;
  sub_759210();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v62 = v0;
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v1, qword_99F4D8);
  v18 = v2 + 16;
  v59 = *(v2 + 16);
  v59(v11, v17, v1);
  v57 = v2;
  v20 = *(v2 + 56);
  v19 = v2 + 56;
  v60 = v20;
  v20(v11, 0, 1, v1);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v56 = v4;
  v23 = *(v4 + 104);
  v22 = v4 + 104;
  v58 = v23;
  v23(v8, enum case for DirectionalTextAlignment.leading(_:), v63);
  v24 = sub_75BB20();
  v25 = objc_allocWithZone(v24);
  *(v62 + v16) = sub_75BB10();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v27 = sub_BE38(v1, qword_99F4F0);
  v59(v11, v27, v1);
  v54 = v19;
  v60(v11, 0, 1, v1);
  v51 = v22;
  v58(v8, v21, v63);
  v28 = objc_allocWithZone(v24);
  *(v62 + v26) = sub_75BB10();
  v53 = OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_descriptionLabel;
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v1, qword_99F568);
  v30 = v61;
  v31 = v59;
  v59(v61, v29, v1);
  v32 = v8;
  v52 = v8;
  v33 = v63;
  v34 = v58;
  v58(v32, v21, v63);
  v35 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v35[qword_94B338] = UIContentSizeCategoryExtraExtraExtraLarge;
  v31(v11, v30, v1);
  v36 = v1;
  v49 = v1;
  v50 = v18;
  v37 = v60;
  v60(v11, 0, 1, v36);
  v38 = v55;
  v34(v55, enum case for DirectionalTextAlignment.none(_:), v33);
  v39 = UIContentSizeCategoryExtraExtraExtraLarge;
  v40 = sub_75BB10();
  v41 = v61;
  v42 = v49;
  v31(v11, v61, v49);
  v37(v11, 0, 1, v42);
  v43 = v40;
  sub_75BA40();
  sub_75BA20();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v52;
  v46 = v63;
  (*(v56 + 16))(v38, v52, v63);
  sub_75BA90();

  (*(v44 + 8))(v45, v46);
  (*(v57 + 8))(v41, v42);
  v47 = v62;
  *(v62 + v53) = v43;
  *(v47 + OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_pageTraits) = 0;
  sub_76A840();
  __break(1u);
}

id sub_28A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_iconView;
  *&v5[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = &v5[OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_continueCallback];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_manageCallback];
  *v13 = a3;
  *(v13 + 1) = a4;

  v20._object = 0x80000000007D7D90;
  v20._countAndFlagsBits = 0xD00000000000002BLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_75B750(v20, v22);
  v21._countAndFlagsBits = 0xD00000000000002CLL;
  v21._object = 0x80000000007D7DC0;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_75B750(v21, v23);
  v14 = sub_769210();

  v15 = sub_769210();

  v19.receiver = v5;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:icon:contentLayout:", v14, v15, 0, 2);

  v17 = v16;
  [v17 setModalInPresentation:1];

  return v17;
}

void sub_28A1C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_759950();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "viewDidLoad", v9);
  v12 = [objc_opt_self() configurationWithPointSize:54.0];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_iconView];
  v25 = v12;
  [v13 setPreferredSymbolConfiguration:?];
  (*(v8 + 104))(v11, enum case for SystemImage.locationSquareFill(_:), v7);
  v14 = sub_759930();
  (*(v8 + 8))(v11, v7);
  [v13 setImage:v14];

  v15 = [v1 headerView];
  v16 = [v15 customIconContainerView];

  if (v16)
  {
    [v16 addSubview:v13];
  }

  v17 = [objc_opt_self() boldButton];
  v31._countAndFlagsBits = 0xD00000000000002ELL;
  v31._object = 0x80000000007D7E30;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_75B750(v31, v33);
  v18 = sub_769210();

  [v17 setTitle:v18 forState:0];

  [v17 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sub_768BB0();
  sub_BDD0(&v26);
  sub_BDD0(&v28);
  sub_769E70();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v20 = [v1 buttonTray];
  [v20 addButton:v17];

  v21 = [objc_opt_self() linkButton];
  v32._object = 0x80000000007D7E60;
  v32._countAndFlagsBits = 0xD00000000000002CLL;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_75B750(v32, v34);
  v22 = sub_769210();

  [v21 setTitle:v22 forState:0];

  [v21 addTarget:v1 action:"didTapManage" forControlEvents:64];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sub_768BB0();
  sub_BDD0(&v26);
  sub_BDD0(&v28);
  sub_769E70();
  v19(v6, v3);
  v23 = [v1 buttonTray];
  [v23 addButton:v21];
}

uint64_t sub_28A6E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_768380();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7683C0();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_28A994();
  sub_12EA98();
  v12 = sub_769970();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_28AF38;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88AD18;
  v14 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_28A994()
{
  v1 = [v0 headerView];
  v8 = [v1 customIconContainerView];

  if (v8)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_iconView];
    [v2 sizeToFit];
    [v8 bounds];
    MidX = CGRectGetMidX(v10);
    [v2 frame];
    v4 = MidX - CGRectGetWidth(v11) * 0.5;
    [v8 bounds];
    MidY = CGRectGetMidY(v12);
    [v2 frame];
    v6 = MidY - CGRectGetHeight(v13) * 0.5;
    [v2 frame];
    Width = CGRectGetWidth(v14);
    [v2 frame];
    [v2 setFrame:{v4, v6, Width, CGRectGetHeight(v15)}];
  }
}

void sub_28AB04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v2 = Strong, v3 = [Strong headerView], v2, v4 = objc_msgSend(v3, "customIconContainerView"), v3, v4))
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MidX = CGRectGetMidX(v28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_iconView);

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  if (MidX == CGRectGetMidX(v29))
  {
    v25 = v13;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_28A994();
    }
  }
}

uint64_t sub_28AF00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_28AF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_28AF58()
{
  v1 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_1ED18(v0 + v11, v3, &unk_94EE60);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10A2C(v3, &unk_94EE60);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = sub_757550().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

id sub_28B184()
{
  v1 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_1ED18(v0 + v11, v3, &unk_94EE60);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10A2C(v3, &unk_94EE60);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = sub_757550().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    if (!v13)
    {
      return 0;
    }

    ObjectType = swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = (*(v15 + 312))(ObjectType, v15);
    }

    else
    {
      v16 = [v13 snapshotViewAfterScreenUpdates:0];
    }

    v17 = v16;

    return v17;
  }

  return result;
}

void sub_28B424(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = 0uLL;
  width = 0.0;
  if (!Strong)
  {
    v20 = 1;
    height = 0.0;
LABEL_15:
    *a2 = v13;
    *(a2 + 16) = width;
    *(a2 + 24) = height;
    *(a2 + 32) = v20;
    return;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 collectionView];

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_1ED18(v2 + v19, v7, &unk_94EE60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_10A2C(v7, &unk_94EE60);
LABEL_14:
    v20 = 1;
    height = 0.0;
    v13 = 0uLL;
    goto LABEL_15;
  }

  (*(v9 + 32))(v11, v7, v8);
  isa = sub_757550().super.isa;
  v23 = [v18 cellForItemAtIndexPath:isa];

  (*(v9 + 8))(v11, v8);
  if (!v23)
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v24 superview];
  if (!v25)
  {

LABEL_18:
    goto LABEL_14;
  }

  v26 = v25;
  v27 = [v15 collectionView];
  if (!v27)
  {

    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    v39 = v27;
    [v39 transform];
    tx = v68.tx;
    ty = v68.ty;
    v66 = *&v68.c;
    origin = *&v68.a;
    v68.a = 1.0;
    v68.b = 0.0;
    v68.c = 0.0;
    v68.d = 1.0;
    v68.tx = 0.0;
    v68.ty = 0.0;
    [v39 setTransform:&v68];
    [v24 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    [v26 convertRect:0 toView:{v43, v45, v47, v49}];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    *&v68.a = origin;
    *&v68.c = v66;
    v68.tx = tx;
    v68.ty = ty;
    [v39 setTransform:&v68];
    [v39 safeAreaInsets];
    v58.x = v51 + 0.0;
    origin = v58;
    v60 = v53 - v59;
    v61 = [v39 superview];

    if (v61)
    {
      [v61 safeAreaInsets];
      v63 = v62;
    }

    else
    {

      v63 = 0.0;
    }

    v20 = 0;
    width = v55 + 0.0;
    height = v57 + 0.0;
    *&v64 = origin.x;
    *(&v64 + 1) = v60 + v63;
    v13 = v64;
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v15 view];
  if (v29)
  {
    v30 = v29;
    [v24 bounds];
    [v30 convertRect:v24 fromCoordinateSpace:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    [v24 transform];
    v66 = *&v68.c;
    origin = *&v68.a;
    v65 = *&v68.tx;

    *&v68.a = origin;
    *&v68.c = v66;
    *&v68.tx = v65;
    v69.origin.x = v32;
    v69.origin.y = v34;
    v69.size.width = v36;
    v69.size.height = v38;
    v70 = CGRectApplyAffineTransform(v69, &v68);
    v66 = *&v70.origin.y;
    origin = v70.origin;
    width = v70.size.width;
    height = v70.size.height;

    *&v13 = origin.x;
    v20 = 0;
    *(&v13 + 1) = v66;
    goto LABEL_15;
  }

  __break(1u);
}

id sub_28B94C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_BD88(&qword_94CAA8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v87 - v10;
  v99 = sub_7656C0();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_9435D0);
  __chkstk_darwin(v13 - 8);
  v94 = &v87 - v14;
  v96 = sub_769ED0();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v16 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = sub_75C840();
  v105 = *(v25 - 8);
  v106 = v25;
  __chkstk_darwin(v25);
  v102 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_28E158(a1);
  if (!v27)
  {
    return 0;
  }

  v100 = a1;
  v101 = v11;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_presentedViewController + 8) = v28;
  v104 = v27;
  swift_unknownObjectWeakAssign();
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v103 = OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) = IsReduceMotionEnabled;
  swift_getObjectType();
  v30 = swift_conformsToProtocol2();
  if (!v30 || !a3)
  {
    goto LABEL_6;
  }

  v31 = v30;
  v92 = v4;
  v89 = a2;
  v90 = v9;
  v91 = v8;
  ObjectType = swift_getObjectType();
  v33 = *(v31 + 16);
  v34 = a3;
  v35 = v33(ObjectType, v31);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  swift_beginAccess();
  sub_1ED18(v35 + v36, v24, &unk_93F620);

  v38 = v105;
  v37 = v106;
  if ((*(v105 + 48))(v24, 1, v106) == 1)
  {

    sub_10A2C(v24, &unk_93F620);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v4 = v92;
LABEL_6:
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_presentingViewController + 8) = 0;
    swift_unknownObjectWeakAssign();
    v39 = sub_757640();
    (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
    v40 = OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_127C68(v18, v4 + v40);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = v100;
    v43 = v103;
    if (Strong)
    {
      v44 = Strong;
      v45 = *(Strong + qword_99A4E8);
      v44[qword_99A4E8] = 0;
      sub_A9864(v45);
    }

    goto LABEL_25;
  }

  v47 = v102;
  (*(v38 + 32))(v102, v24, v37);
  v48 = v92;
  *(v92 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_presentingViewController + 8) = v31;
  swift_unknownObjectWeakAssign();
  v43 = v103;
  v8 = v91;
  v9 = v90;
  v49 = v38;
  a2 = v89;
  if (*(v48 + v103))
  {
    (*(v49 + 8))(v47, v37);

    v42 = v100;
    v4 = v92;
LABEL_25:
    v81 = *(v4 + v43);
    v82 = objc_allocWithZone(type metadata accessor for ArticlePagePresentationController());
    v83 = a2;
    sub_648D40(v42, a2, v81);
    v46 = v84;
    *(v84 + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_transitioningViewProvider + 8) = &off_88AD40;
    swift_unknownObjectWeakAssign();
    v85 = v104;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_BD88(&qword_9434F0);
    sub_28E8A4();

    sub_768710();
    v86 = v101;
    sub_768730();

    sub_BEB8(v107);
    (*(v9 + 8))(v86, v8);
    return v46;
  }

  v88 = v34;
  v50 = [v34 collectionView];
  v42 = v100;
  if (v50 && (v51 = v50, v52 = [v50 indexPathsForSelectedItems], v51, v52))
  {
    v53 = sub_757640();
    v54 = sub_769460();

    v4 = v92;
    if (*(v54 + 16))
    {
      v55 = *(v53 - 8);
      (*(v55 + 16))(v21, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v53);

      (*(v55 + 56))(v21, 0, 1, v53);
    }

    else
    {

      (*(*(v53 - 8) + 56))(v21, 1, 1, v53);
    }
  }

  else
  {
    v56 = sub_757640();
    (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
    v4 = v92;
  }

  v57 = OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_127C68(v21, v4 + v57);
  swift_endAccess();
  sub_765B70();
  sub_28E908();
  v58 = v102;
  sub_75C750();
  v59 = v107[0];
  if (!v107[0])
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v60 = sub_28B184();
  if (!v60)
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v61 = v60;
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  if (!v62)
  {

    (*(v105 + 8))(v102, v106);
    goto LABEL_25;
  }

  v63 = v62;
  result = [v88 view];
  if (result)
  {
    v65 = result;
    v92 = swift_getObjectType();
    v66 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
    v67 = sub_769EB0();
    v68 = *(v67 - 8);
    v69 = v94;
    (*(v68 + 104))(v94, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = v93;
    sub_769EC0();
    sub_10A2C(v69, &unk_9435D0);
    sub_769E90();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    (*(v95 + 8))(v70, v96);
    v108[0] = v72;
    v108[1] = v74;
    v108[2] = v76;
    v108[3] = v78;
    v109 = 0;
    (*(v63 + 224))(v108, v92, v63);
    swift_getKeyPath();
    v79 = v97;
    v80 = v102;
    sub_75C7B0();

    sub_AED94(v59, v61, v63, v79);

    (*(v98 + 8))(v79, v99);
    (*(v105 + 8))(v80, v106);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v43 = v103;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_28C688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(Strong + qword_99A4E8);
      v5[qword_99A4E8] = 0;
      sub_A9864(v6);
    }
  }

  v7 = a3 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_presentingViewController;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    sub_4C53D0(1, ObjectType, v10);
  }

  v12 = sub_28AF58();
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  v14 = sub_28C7FC();
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = swift_getObjectType();
    (*(v17 + 248))(1, v18, v17);
  }

  v19 = sub_28C880();
  if (v19)
  {
    v21 = v20;
    v23 = v19;
    v22 = swift_getObjectType();
    (*(v21 + 248))(1, v22, v21);
  }
}

char *sub_28C7FC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[qword_942E50];
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_28C880()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + qword_942E50);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_28C908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_99A4E8);
    v5[qword_99A4E8] = 0;
    sub_A9864(v6);
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 view];

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = [v9 layer];

    v11 = *&CATransform3DIdentity.m33;
    v24[4] = *&CATransform3DIdentity.m31;
    v24[5] = v11;
    v12 = *&CATransform3DIdentity.m43;
    v24[6] = *&CATransform3DIdentity.m41;
    v24[7] = v12;
    v13 = *&CATransform3DIdentity.m13;
    v24[0] = *&CATransform3DIdentity.m11;
    v24[1] = v13;
    v14 = *&CATransform3DIdentity.m23;
    v24[2] = *&CATransform3DIdentity.m21;
    v24[3] = v14;
    [v10 setTransform:v24];
  }

  type metadata accessor for ArticleContainerViewController();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    *(v15 + OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_allowTraitCollectionOverrides) = 1;
  }

  v16 = sub_28AF58();
  if (v16)
  {
    v17 = v16;
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();

    if (v18)
    {
      v19 = a3 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_presentingViewController;
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v22 + 32))(0, ObjectType, v22);
      }
    }
  }
}

void sub_28CAB0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_presentingViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (Strong)
    {
      v14 = *(v12 + 8);
      v15 = Strong;
      ObjectType = swift_getObjectType();
      sub_4C5474(0, ObjectType, v14);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v12 + 8);
      v20 = swift_getObjectType();
      sub_4C54EC(v20, v19);
    }

    v21 = sub_28C7FC();
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v25 = swift_getObjectType();
      (*(v24 + 248))(0, v25, v24);
    }

    v26 = sub_28C880();
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v30 = swift_getObjectType();
      (*(v29 + 248))(0, v30, v29);
    }

    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v43 = v31;
      v32 = swift_unknownObjectWeakLoadStrong();
      sub_A923C(v32, *(v12 + 8));

      v33 = v43;
    }
  }

  else
  {
    if (Strong)
    {
      v34 = Strong;
      v35 = [Strong collectionView];

      if (v35)
      {
        v36 = OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_selectedIndexPath;
        swift_beginAccess();
        sub_1ED18(a3 + v36, v7, &unk_94EE60);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {

          sub_10A2C(v7, &unk_94EE60);
        }

        else
        {
          (*(v9 + 32))(v11, v7, v8);
          isa = sub_757550().super.isa;
          v38 = [v35 cellForItemAtIndexPath:isa];

          (*(v9 + 8))(v11, v8);
          if (v38)
          {
            [v38 setHidden:0];
          }
        }
      }
    }

    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = *(v12 + 8);
      v42 = swift_getObjectType();
      sub_4C53D0(0, v42, v41);
    }
  }
}

char *sub_28CED8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_presentingViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = *(v3 + 1);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v7[qword_99E1E8] = 0;
  }

  sub_28B424(0, v41);
  v8 = v1[OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
  v9 = type metadata accessor for TodayTransitionDismissAnimation();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_destinationRect];
  v11[32] = v42;
  v12 = v41[1];
  *v11 = v41[0];
  *(v11 + 1) = v12;
  v10[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition] = v8;
  v40.receiver = v10;
  v40.super_class = v9;
  v13 = objc_msgSendSuper2(&v40, "init");
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v5;
  v14[4] = v6;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v16 = *&v13[v15];
  v17 = v1;
  v18 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_7BB70(0, *(v16 + 2) + 1, 1, v16);
    *&v13[v15] = v16;
  }

  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = sub_7BB70((v20 > 1), v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  v22 = &v16[24 * v21];
  *(v22 + 4) = sub_28E0B8;
  *(v22 + 5) = v14;
  v22[48] = 0;
  *&v13[v15] = v16;
  swift_endAccess();

  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v17;
  swift_beginAccess();
  v24 = *&v13[v15];
  v25 = v17;
  v26 = a1;

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v24;
  if ((v27 & 1) == 0)
  {
    v24 = sub_7BB70(0, *(v24 + 2) + 1, 1, v24);
    *&v13[v15] = v24;
  }

  v29 = *(v24 + 2);
  v28 = *(v24 + 3);
  if (v29 >= v28 >> 1)
  {
    v24 = sub_7BB70((v28 > 1), v29 + 1, 1, v24);
  }

  *(v24 + 2) = v29 + 1;
  v30 = &v24[24 * v29];
  *(v30 + 4) = sub_28E104;
  *(v30 + 5) = v23;
  v30[48] = 1;
  *&v13[v15] = v24;
  swift_endAccess();

  v31 = swift_allocObject();
  v31[2] = v18;
  v31[3] = v6;
  v31[4] = v25;
  swift_beginAccess();
  v32 = *&v13[v15];
  v33 = v25;
  v34 = v18;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v32;
  if ((v35 & 1) == 0)
  {
    v32 = sub_7BB70(0, *(v32 + 2) + 1, 1, v32);
    *&v13[v15] = v32;
  }

  v37 = *(v32 + 2);
  v36 = *(v32 + 3);
  if (v37 >= v36 >> 1)
  {
    v32 = sub_7BB70((v36 > 1), v37 + 1, 1, v32);
  }

  *(v32 + 2) = v37 + 1;
  v38 = &v32[24 * v37];
  *(v38 + 4) = sub_28E14C;
  *(v38 + 5) = v31;
  v38[48] = 2;
  *&v13[v15] = v32;
  swift_endAccess();

  return v13;
}

void sub_28D2AC()
{
  v0 = sub_28C7FC();
  if (v0)
  {
    v2 = v0;
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 248))(1, ObjectType, v3);
  }

  v5 = sub_28C880();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_getObjectType();
    (*(v8 + 248))(1, v9, v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    *&v11[qword_942E48] = 0;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = v12, v14 = [v12 traitCollection], v13, v15 = objc_msgSend(v14, "horizontalSizeClass"), v14, v15 != &dword_0 + 1))
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationController];

      if (v18)
      {
        v31 = v18;
        v19 = [v18 viewControllers];
        sub_3C80C();
        v20 = sub_769460();

        if (v20 >> 62)
        {
          goto LABEL_27;
        }

        for (i = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
        {
          v22 = 0;
          while (1)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v26 = sub_76A770();
            }

            else
            {
              if (v22 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_26;
              }

              v26 = *(v20 + 8 * v22 + 32);
            }

            v25 = v26;
            v27 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            objc_opt_self();
            v28 = swift_dynamicCastObjCClass();
            if (v28)
            {
              v29 = [v28 collectionView];
              if (!v29)
              {
                __break(1u);
                return;
              }

              v23 = v29;
              v24 = [v29 collectionViewLayout];

              [v24 invalidateLayout];
              v25 = v24;
            }

            ++v22;
            if (v27 == i)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          ;
        }

LABEL_28:

        v30 = [v31 navigationBar];
        [v30 setHidden:1];
      }
    }
  }
}

void sub_28D5F0(int a1, int a2, id a3, uint64_t a4)
{
  v5 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for ArticlePagePresentationController();
    v7 = swift_dynamicCastClass();
    v8 = v7;
    if (v7)
    {
      v9 = v7 + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v9 + 24))
      {
        sub_134D8(v9, v15);
        v10 = v16;
        v11 = v17;
        sub_B170(v15, v16);
        (*(v11 + 24))(v10, v11);
        sub_BEB8(v15);
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*(a4 + OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(Strong + qword_99A4E8);
      v13[qword_99A4E8] = 1;
      sub_A9864(v14);
    }
  }
}

void sub_28D734(uint64_t a1, char a2, void *a3, id a4, uint64_t a5)
{
  v9 = sub_757640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    sub_4C53D0(0, ObjectType, a4);
    v14 = sub_28C7FC();
    if (v14)
    {
      v16 = v14;
      v17 = v15;
      v18 = swift_getObjectType();
      (*(v17 + 248))(0, v18, v17);
    }

    v19 = sub_28C880();
    if (v19)
    {
      v21 = v19;
      v22 = v20;
      v23 = swift_getObjectType();
      (*(v22 + 248))(0, v23, v22);
    }

    v24 = sub_28AF58();
    if (v24)
    {
      v25 = v24;
      v82 = v10;
      swift_getObjectType();
      v26 = swift_conformsToProtocol2();
      if (v26)
      {
        v27 = v25;
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v86 = OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_presentedViewController;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = Strong;
        v36 = *&Strong[qword_942E50];
        if (v36)
        {
          v80 = v9;
          v85 = v28;
          v37 = v36 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
          v38 = *v37;
          v79 = *(v37 + 8);
          v39 = v38;

          swift_getObjectType();
          v78 = swift_conformsToProtocol2();
          v81 = v39;
          if (v78)
          {
            v40 = v39 == 0;
          }

          else
          {
            v40 = 1;
          }

          v83 = ObjectType;
          v84 = v25;
          if (!v40)
          {
            v41 = swift_unknownObjectWeakLoadStrong();
            if (v41)
            {
              v77 = v26;
              v42 = v41;
              v76 = v81;

              v43 = v85;
              if (v85)
              {
                swift_getObjectType();
                v44 = swift_conformsToProtocol2();
                if (v44)
                {
                  v45 = v43;
                  v44 = v43;
                }
              }

              else
              {
                v44 = 0;
              }

              v75 = v44 == 0;
              swift_unknownObjectRelease();
              sub_761120();
              sub_768900();
              sub_768ED0();
              v74 = v87;
              v46 = v76;
              swift_getObjectType();
              v47 = sub_75EF20();
              v48 = v46;
              v49 = v74;
              sub_7610C0();

              ObjectType = v83;
              v25 = v84;
              v26 = v77;
            }
          }

          v28 = v85;
          if (v85)
          {
            v50 = swift_getObjectType();
            v51 = a5;
            v52 = a3;
            v53 = *(v26 + 304);
            v54 = v85;
            v55 = v81;
            v56 = v50;
            v28 = v85;
            v53(v81, v79, 1, v56, v26);
            a3 = v52;
            a5 = v51;
            ObjectType = v83;
            v25 = v84;
          }

          else
          {
          }

          v9 = v80;
        }

        else
        {
        }
      }

      [v25 setHidden:0];
      v57 = [a3 collectionView];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 indexPathsForSelectedItems];
        if (v59)
        {
          v84 = v25;
          v60 = v59;
          v61 = sub_769460();

          v62 = v61;
          v63 = *(v61 + 16);
          if (v63)
          {
            v85 = v28;
            v83 = ObjectType;
            v79 = a5;
            v80 = a3;
            v81 = a4;
            v65 = v82 + 16;
            v64 = *(v82 + 16);
            v66 = (*(v82 + 80) + 32) & ~*(v82 + 80);
            v82 = v62;
            v67 = v62 + v66;
            v68 = *(v65 + 56);
            do
            {
              v64(v12, v67, v9);
              isa = sub_757550().super.isa;
              (*(v65 - 8))(v12, v9);
              [v58 deselectItemAtIndexPath:isa animated:0];

              v67 += v68;
              --v63;
            }

            while (v63);

            a4 = v81;
            ObjectType = v83;
            v25 = v84;
            v28 = v85;
          }

          else
          {

            v25 = v84;
          }
        }
      }

      sub_4C5474(1, ObjectType, a4);
      (*(a4 + 4))(1, ObjectType, a4);
      v70 = swift_unknownObjectWeakLoadStrong();
      if (!v70)
      {
        goto LABEL_44;
      }

      if (v28)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          (*(a4 + 1))(ObjectType, a4);
          sub_761120();
          sub_768900();
          sub_768ED0();
          v71 = v87;
          swift_getObjectType();
          v72 = v28;
          v28 = sub_75EF20();
          v73 = v72;
          sub_761100();
        }

LABEL_44:

        return;
      }
    }
  }

  else
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      v31 = *(v29 + qword_99A4E8);
      v30[qword_99A4E8] = 0;
      sub_A9864(v31);
    }

    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v32[qword_99E1E8] = 1;
    }

    v33 = swift_getObjectType();
    sub_4C5474(0, v33, a4);
  }
}

uint64_t type metadata accessor for TodayArticleTransitioningDelegate()
{
  result = qword_94CA90;
  if (!qword_94CA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_28DFD4()
{
  sub_127A0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_28E078()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_28E0C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_28E10C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_28E158(void *a1)
{
  type metadata accessor for ArticleContainerViewController();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_articleViewController);
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v3 != 0)
    {
      v12 = v3;
      return v3;
    }
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
LABEL_19:
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v13 = sub_768FF0();
    sub_BE38(v13, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v15[3] = sub_3C80C();
    v15[0] = a1;
    v14 = a1;
    sub_7685E0();
    sub_10A2C(v15, &unk_93FBD0);
    sub_768E90();

    return 0;
  }

  v6 = v5;
  v7 = a1;
  v8 = [v6 viewControllers];
  sub_3C80C();
  v9 = sub_769460();

  if (!(v9 >> 62))
  {
    result = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:

LABEL_18:

    goto LABEL_19;
  }

  result = sub_76A860();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = sub_76A770();
LABEL_13:
    v3 = v11;

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v3)
    {
      return v3;
    }

    v7 = v3;
    goto LABEL_18;
  }

  if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
    v11 = *(v9 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *sub_28E460(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_28B424(1, v38);
    v4 = v1[OBJC_IVAR____TtC18ASMessagesProvider33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
    v5 = type metadata accessor for TodayTransitionPresentAnimation();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionPresentAnimation_originRect];
    v7[32] = v39;
    v8 = v38[1];
    *v7 = v38[0];
    *(v7 + 1) = v8;
    v6[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionPresentAnimation_shouldUseReducedMotionTransition] = v4;
    v37.receiver = v6;
    v37.super_class = v5;
    v9 = objc_msgSendSuper2(&v37, "init");
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
    swift_beginAccess();
    v12 = *&v9[v11];
    v13 = v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_7BB70(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_7BB70((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[24 * v16];
    *(v17 + 4) = sub_28E84C;
    *(v17 + 5) = v10;
    v17[48] = 0;
    *&v9[v11] = v12;
    swift_endAccess();

    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = a1;
    swift_beginAccess();
    v19 = *&v9[v11];
    v20 = v13;
    v21 = a1;

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v19;
    if ((v22 & 1) == 0)
    {
      v19 = sub_7BB70(0, *(v19 + 2) + 1, 1, v19);
      *&v9[v11] = v19;
    }

    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    if (v24 >= v23 >> 1)
    {
      v19 = sub_7BB70((v23 > 1), v24 + 1, 1, v19);
    }

    *(v19 + 2) = v24 + 1;
    v25 = &v19[24 * v24];
    *(v25 + 4) = sub_28E854;
    *(v25 + 5) = v18;
    v25[48] = 1;
    *&v9[v11] = v19;
    swift_endAccess();

    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    swift_beginAccess();
    v27 = *&v9[v11];
    v28 = v20;

    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v27;
    if ((v29 & 1) == 0)
    {
      v27 = sub_7BB70(0, *(v27 + 2) + 1, 1, v27);
      *&v9[v11] = v27;
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_7BB70((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    v32 = &v27[24 * v31];
    *(v32 + 4) = sub_28E85C;
    *(v32 + 5) = v26;
    v32[48] = 2;
    *&v9[v11] = v27;
    swift_endAccess();
  }

  else
  {
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + qword_99A4E8);
      v34[qword_99A4E8] = 0;
      sub_A9864(v35);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_28E814()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_28E864()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_28E8A4()
{
  result = qword_93F270;
  if (!qword_93F270)
  {
    sub_133D8(&qword_9434F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F270);
  }

  return result;
}

unint64_t sub_28E908()
{
  result = qword_94CAB0;
  if (!qword_94CAB0)
  {
    sub_765B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94CAB0);
  }

  return result;
}

char *sub_28E96C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_pageView;
  type metadata accessor for ArcadeDownloadPackCategoriesPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_continueButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_skipButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_presenter] = a1;
  v8 = *&v2[v5];
  swift_retain_n();
  v9 = v8;

  v10 = sub_312F4C(a1, v9, a2, v2);
  sub_28F35C(&unk_94CB10);
  v11 = v10;

  sub_764130();

  [*&v11[OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_continueButton] addTarget:v11 action:"didTapContinueButton" forControlEvents:64];
  [*&v11[OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_skipButton] addTarget:v11 action:"didTapSkipButton" forControlEvents:64];

  return v11;
}

void sub_28ECA0(uint64_t a1)
{
  v2 = v1;
  sub_75A110();
  sub_768900();
  sub_768ED0();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_E6A80(a1, v17, sub_28F354, v4);

  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_continueButton];
  sub_763520();
  sub_764C60();
  v7 = v6;

  if (v7)
  {
    v8 = sub_769210();
  }

  else
  {
    v8 = 0;
  }

  [v5 setTitle:v8 forState:0];

  v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_skipButton];
  sub_763510();
  sub_764C60();
  v11 = v10;

  if (v11)
  {
    v12 = sub_769210();
  }

  else
  {
    v12 = 0;
  }

  [v9 setTitle:v12 forState:0];

  v13 = sub_769210();
  [v5 setAccessibilityIdentifier:v13];

  v14 = sub_769210();
  [v9 setAccessibilityIdentifier:v14];

  v15 = [v2 buttonTray];
  [v15 addButton:v5];

  v16 = [v2 buttonTray];
  [v16 addButton:v9];

  sub_6B1A0();
}

uint64_t sub_28EF40()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_764140();
  }

  return result;
}

id sub_28EFC0()
{
  v1 = [v0 buttonTray];
  sub_764620();
  v2 = sub_769210();

  [v1 setCaptionText:v2 style:2];

  v3 = sub_764640();
  sub_6E0624(v3 & 1);
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_continueButton];
  v5 = sub_764630() & 1;

  return [v4 setEnabled:v5];
}

uint64_t sub_28F0A8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_objectGraph];
  sub_764210();
  swift_allocObject();
  swift_retain_n();

  sub_7641C0();
  v3 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackSuggestionsViewController());

  v5 = sub_311C24(v4, v2);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
  }
}

void sub_28F1B8()
{

  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider42ArcadeDownloadPackCategoriesViewController_skipButton);
}

uint64_t sub_28F31C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_28F35C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_28F39C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v48 = a3;
  v46 = sub_760490();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_7664A0();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_75F0C0();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_763560();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  swift_getObjectType();
  v18 = [a2 traitCollection];
  v19 = sub_7699D0();

  v41 = v13;
  v20 = *(v13 + 16);
  v21 = v42;
  v42 = v12;
  v22 = v12;
  v23 = v20;
  v20(v17, v21, v22);
  [a2 pageMarginInsets];
  [a2 pageMarginInsets];
  if ((v19 & 1) == 0)
  {
    v52 = &type metadata for Double;
    v53 = &protocol witness table for Double;
    v51[0] = 0x4083100000000000;
    PageTraitEnvironment.pageColumnWidth.getter();
    v27 = v26;
    PageTraitEnvironment.pageColumnMargin.getter();
    v25 = v27 - v28;
    *(v11 + 3) = &type metadata for CGFloat;
    *(v11 + 4) = &protocol witness table for CGFloat;
    v24 = &enum case for BreakoutDetailsLayout.DetailDimension.static(_:);
    goto LABEL_5;
  }

  if (JUScreenClassGetMain() == 1)
  {
    v52 = &type metadata for Double;
    v53 = &protocol witness table for Double;
    v51[0] = 0x407E000000000000;
    v24 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
    v25 = 1.0;
LABEL_5:
    v29 = v44;
    goto LABEL_10;
  }

  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  v52 = &type metadata for Double;
  v53 = &protocol witness table for Double;
  v29 = v44;
  if (HasRoundedCorners)
  {
    v31 = 0x4083100000000000;
  }

  else
  {
    v31 = 0x4081800000000000;
  }

  v51[0] = v31;
  v24 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
  v25 = 1.0;
LABEL_10:
  *v11 = v25;
  (*(v7 + 104))(v11, *v24, v29);
  if (qword_93DAD0 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  v33 = sub_BE38(v32, qword_99F868);
  (*(*(v32 - 8) + 16))(v6, v33, v32);
  (*(v38 + 104))(v6, enum case for FontSource.useCase(_:), v39);
  v50[3] = sub_761250();
  v50[4] = sub_2929A0(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension);
  sub_B1B4(v50);
  v34 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_761240();
  if (qword_93C8A8 != -1)
  {
    swift_once();
  }

  v35 = sub_BD88(&unk_94CBA0);
  sub_BE38(v35, qword_99C540);
  v49 = a2;
  swift_unknownObjectRetain();
  sub_7592B0();
  swift_unknownObjectRelease();
  v36 = v42;
  v23(v40, v17, v42);
  (*(v7 + 16))(v43, v11, v29);
  (*(v45 + 104))(v47, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v46);
  sub_134D8(v51, &v49);
  sub_7604A0();
  (*(v41 + 8))(v17, v36);
  (*(v7 + 8))(v11, v29);
  return sub_BEB8(v51);
}

void sub_28FA90()
{
  v1 = sub_BD88(&qword_94CB98);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = v21 - v3;
  v5 = [v0 traitCollection];
  v6 = [v5 accessibilityContrast];

  v7 = v6 == &dword_0 + 1;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (qword_93C8A0 != -1)
  {
    v20 = IsReduceTransparencyEnabled;
    swift_once();
    IsReduceTransparencyEnabled = v20;
  }

  v10 = v7 || IsReduceTransparencyEnabled;
  v11 = sub_BD88(&unk_93F8F0);
  sub_BE38(v11, qword_94CB20);
  v21[3] = v0;
  v12 = v0;
  sub_7592B0();

  [v9 setTextAlignment:v21[0]];
  v13 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailsView];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_292930(v13 + v14, v4);
  v15 = sub_75B240();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_10A2C(v4, &qword_94CB98);
    v17 = 0;
  }

  else
  {
    v17 = sub_655D9C(v10);
    (*(v16 + 8))(v4, v15);
  }

  [v9 setTextColor:v17];

  v18 = [v9 layer];
  sub_769240();
  v19 = sub_769210();

  [v18 setCompositingFilter:v19];
}

void sub_28FD60(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  if (a1)
  {
    sub_2929A0(&qword_93F500, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_93E550);
      v9 = v5;
      v10 = sub_76A1C0();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = a1;
  v16 = a1;
  sub_1F92A8(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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

uint64_t sub_28FF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v63 = a2;
  v61 = sub_760490();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_7664A0();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_75F0C0();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v47 - v6;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_763560();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = sub_75DA30();
  v21 = sub_7699D0();

  v55 = v15;
  v22 = *(v15 + 16);
  v54 = v19;
  v23 = v56;
  v56 = v14;
  v49 = v22;
  v22(v19, v23, v14);
  sub_75DA20();
  sub_765620();
  v25 = v24;
  v26 = *(v8 + 8);
  v26(v13, v7);
  sub_75DA20();
  sub_765620();
  v28 = v27;
  v26(v10, v7);
  if ((v21 & 1) == 0)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x4083100000000000;
    sub_75DA20();
    sub_765560();
    v35 = v34;
    v26(v13, v7);
    v33 = v35 - v25 - v28;
    v31 = v48;
    *(v48 + 3) = &type metadata for CGFloat;
    *(v31 + 4) = &protocol witness table for CGFloat;
    v32 = &enum case for BreakoutDetailsLayout.DetailDimension.static(_:);
    v30 = v59;
    goto LABEL_5;
  }

  Main = JUScreenClassGetMain();
  v30 = v59;
  v31 = v48;
  if (Main == 1)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x407E000000000000;
    v32 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
    v33 = 1.0;
LABEL_5:
    v36 = v58;
    goto LABEL_10;
  }

  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  v67 = &type metadata for Double;
  v68 = &protocol witness table for Double;
  v36 = v58;
  if (HasRoundedCorners)
  {
    v38 = 0x4083100000000000;
  }

  else
  {
    v38 = 0x4081800000000000;
  }

  v66 = v38;
  v32 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
  v33 = 1.0;
LABEL_10:
  *v31 = v33;
  (*(v36 + 104))(v31, *v32, v30);
  if (qword_93DAD0 != -1)
  {
    swift_once();
  }

  v39 = sub_7666D0();
  v40 = sub_BE38(v39, qword_99F868);
  v41 = v52;
  (*(*(v39 - 8) + 16))(v52, v40, v39);
  (*(v50 + 104))(v41, enum case for FontSource.useCase(_:), v51);
  v65[3] = sub_761250();
  v65[4] = sub_2929A0(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension);
  sub_B1B4(v65);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_761240();
  if (qword_93C8A8 != -1)
  {
    swift_once();
  }

  v43 = sub_BD88(&unk_94CBA0);
  sub_BE38(v43, qword_99C540);
  v64[0] = sub_75DA40();
  sub_7592B0();
  swift_unknownObjectRelease();
  v44 = v54;
  v45 = v56;
  v49(v53, v54, v56);
  (*(v36 + 16))(v57, v31, v30);
  (*(v60 + 104))(v62, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v61);
  sub_134D8(&v66, v64);
  sub_7604A0();
  (*(v55 + 8))(v44, v45);
  (*(v36 + 8))(v31, v30);
  return sub_BEB8(&v66);
}

uint64_t sub_29072C()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_94CB20);
  sub_BE38(v0, qword_94CB20);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

uint64_t sub_2907C8()
{
  v0 = sub_BD88(&unk_94CBA0);
  sub_161DC(v0, qword_99C540);
  sub_BE38(v0, qword_99C540);
  sub_BD88(&qword_93FBE0);
  sub_BD88(&unk_93F9C0);
  return sub_7592D0();
}

char *sub_29088C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v96 = sub_768C60();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v91 = &v86 - v11;
  v100 = sub_760AD0();
  v98 = *(v100 - 1);
  __chkstk_darwin(v100);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v99 = &v86 - v14;
  v15 = sub_7666D0();
  v103 = *(v15 - 8);
  __chkstk_darwin(v15);
  v97 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v86 - v18;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&unk_95CF90);
  __chkstk_darwin(v22 - 8);
  v24 = &v86 - v23;
  v25 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v26 = sub_75C840();
  v27 = *(*(v26 - 8) + 56);
  v101 = v4;
  v27(&v4[v25], 1, 1, v26);
  v28 = type metadata accessor for MediaView();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0;
  v30 = type metadata accessor for UberContentContainer();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v31[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v32 = &v31[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v31[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v33[32] = 1;
  *&v31[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = 0;
  v110.receiver = v31;
  v110.super_class = v30;
  v34 = objc_msgSendSuper2(&v110, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = v34;
  if (*&v34[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    [v34 addSubview:?];
  }

  v36 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = v35;
  v109.receiver = v29;
  v109.super_class = v28;
  v37 = objc_msgSendSuper2(&v109, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v37 setClipsToBounds:1];
  [v37 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  v38 = v101;
  *&v101[v36] = v37;
  v39 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *&v38[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v40 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_93CA58 != -1)
  {
    swift_once();
  }

  v41 = sub_BE38(v19, qword_99CA30);
  sub_FCD60(v41, v21);
  sub_BD88(&qword_93FBE0);
  sub_7592F0();
  v42 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v38[v40] = sub_637704(v24);
  v43 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v44 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v45 = sub_763560();
  (*(*(v45 - 8) + 104))(&v38[v43], v44, v45);
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_pageTraits] = 0;
  v38[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  v38[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{a1, a2, a3, a4}];
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_93DAD8 != -1)
    {
      swift_once();
    }

    v46 = qword_99F880;
  }

  else
  {
    if (qword_93DAD0 != -1)
    {
      swift_once();
    }

    v46 = qword_99F868;
  }

  v47 = v15;
  v48 = sub_BE38(v15, v46);
  v49 = v102;
  v50 = v103;
  v51 = *(v103 + 16);
  v51(v102, v48, v15);
  v52 = v97;
  v51(v97, v49, v47);
  v87 = UIContentSizeCategoryExtraExtraExtraLarge;
  v53 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v98 + 104);
  v54(v99, enum case for DirectionalTextAlignment.none(_:), v100);
  v89 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v89[qword_94B338] = UIContentSizeCategoryExtraExtraExtraLarge;
  v55 = v91;
  v51(v91, v52, v47);
  v56 = v47;
  v88 = *(v50 + 56);
  v88(v55, 0, 1, v47);
  v57 = v92;
  v58 = v100;
  v54(v92, v53, v100);
  v59 = v87;
  v60 = sub_75BB10();
  v61 = v97;
  v51(v55, v97, v56);
  v90 = v56;
  v88(v55, 0, 1, v56);
  v62 = v60;
  sub_75BA40();
  sub_75BA20();
  [v62 setNumberOfLines:2];
  v63 = v98;
  v64 = v99;
  (*(v98 + 16))(v57, v99, v58);
  sub_75BA90();

  (*(v63 + 8))(v64, v58);
  v65 = *(v103 + 8);
  v103 += 8;
  v100 = v65;
  (v65)(v61, v56);
  v66 = v101;
  *&v101[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel] = v62;
  v108.receiver = v66;
  v108.super_class = ObjectType;
  v67 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  v68 = [v67 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v69 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel;
  [*&v67[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel] setNumberOfLines:2];
  v70 = *&v67[v69];
  sub_75BAD0();

  v71 = *&v67[v69];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v72 = v71;
  v73 = v94;
  sub_768C10();
  sub_10A2C(&v104, &unk_93FBD0);
  sub_10A2C(&v106, &unk_93FBD0);
  sub_769E70();

  v74 = *(v95 + 8);
  v75 = v96;
  v74(v73, v96);
  v76 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_artworkView;
  v77 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_artworkView];
  sub_7590D0();

  v78 = *&v67[v76];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v79 = v78;
  sub_768C10();
  sub_10A2C(&v104, &unk_93FBD0);
  sub_10A2C(&v106, &unk_93FBD0);
  sub_769E70();

  v74(v73, v75);
  sub_BE70(0, &qword_93E540);
  v80 = sub_76A030();
  [v67 setBackgroundColor:v80];

  v81 = [v67 contentView];
  v82 = [v81 layer];

  [v82 setAllowsGroupBlending:0];
  v83 = [v67 contentView];
  [v83 addSubview:*&v67[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];

  v84 = [v67 contentView];
  [v84 addSubview:*&v67[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailsView]];

  sub_28FA90();
  (v100)(v102, v90);
  return v67;
}

void (*sub_291570(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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
  return sub_29160C;
}

void sub_29160C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_2929A0(&qword_93F500, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_BE70(0, &qword_93E550);
        v8 = v4;
        v9 = sub_76A1C0();

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
    v17 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v18 = v3;
    sub_1F92A8(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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
      sub_2929A0(&qword_93F500, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_BE70(0, &qword_93E550);
        v13 = v4;
        v14 = sub_76A1C0();

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
    v26 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v31 = v3;
    sub_1F92A8(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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

id sub_291908()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_763560();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7604B0();
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_7604D0();
  v13 = *(v29 - 8);
  *&v14 = __chkstk_darwin(v29).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  result = objc_msgSendSuper2(&v40, "layoutSubviews", v14);
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_pageTraits];
  if (v18)
  {
    v28 = v3;
    v19 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailPosition;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v1[v19], v6);
    swift_unknownObjectRetain();
    sub_28F39C(v9, v18, v12);
    (*(v7 + 8))(v9, v6);
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v38 = type metadata accessor for MediaView();
    v39 = &protocol witness table for UIView;
    v37 = v20;
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel];
    v35 = sub_75BB20();
    v36 = &protocol witness table for UILabel;
    v34 = v21;
    v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailsView];
    v32 = type metadata accessor for BreakoutDetailsView(0);
    v33 = &protocol witness table for UIView;
    v31 = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_7604C0();
    v26 = [v1 contentView];
    [v26 bounds];

    sub_760480();
    (*(v30 + 8))(v5, v28);
    v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
    [v1 bounds];
    [v27 setFrame:?];
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v16, v29);
  }

  return result;
}

void sub_291D54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_763560();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "prepareForReuse", v5);
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailsView];
  sub_636480();
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
  v10 = type metadata accessor for MediaView();
  v26.receiver = v9;
  v26.super_class = v10;
  objc_msgSendSuper2(&v26, "setBackgroundColor:", 0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  [*(*&v9[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:0];
  v12 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (v12)
  {
    [v12 setBackgroundColor:0];
  }

  (*(v4 + 104))(v7, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v3);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  (*(v4 + 24))(&v1[v13], v7, v3);
  swift_endAccess();
  [v1 setNeedsLayout];
  (*(v4 + 8))(v7, v3);
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel];
  [v14 setText:0];
  v15 = (v8 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler);
  v16 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_F704(v16);
  v17 = *&v9[v11];
  v18 = *(v17 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  *(v17 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = 0;
  sub_1F92A8(v18);

  if (*(*&v9[v11] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      [v19 setUserInteractionEnabled:0];
    }
  }

  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_artworkView];
  sub_759190();

  v21 = *&v9[v11];
  v22 = *(v21 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  *(v21 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = 0;
  sub_1F92A8(v22);

  sub_1F7F5C();
  v23 = v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
  v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  if (v23 != 1)
  {
    [v14 removeFromSuperview];
  }

  v24 = v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  if ((v24 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
  }
}

char *sub_2921BC(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY];
    result = *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v5 = *&result[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
    *&result[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = v4;
    if (v4 != v5)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeHeroBreakoutCollectionViewCell()
{
  result = qword_94CB68;
  if (!qword_94CB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_292420()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_763560();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_292514()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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

uint64_t (*sub_292588(uint64_t **a1))()
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
  v2[4] = sub_291570(v2);
  return sub_21028;
}

uint64_t sub_2925F8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2929A0(&qword_94CBB0, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_29266C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2929A0(&qword_94CBB0, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_2926F8(uint64_t *a1))()
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
  sub_2929A0(&qword_94CBB0, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_2927B4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  sub_BE70(0, &qword_93E550);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_292930(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94CB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2929A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2929E8()
{
  v1 = v0;
  v27 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_95CF90);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v8 = sub_75C840();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_93CA58 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v27, qword_99CA30);
  sub_FCD60(v21, v3);
  sub_BD88(&qword_93FBE0);
  sub_7592F0();
  v22 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v20) = sub_637704(v6);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v24 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v25 = sub_763560();
  (*(*(v25 - 8) + 104))(v1 + v23, v24, v25);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_pageTraits) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden) = 1;
  sub_76A840();
  __break(1u);
}

uint64_t sub_292DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94F1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_764860();
  sub_293238(&unk_957F80, &type metadata accessor for Badge);
  result = sub_75C750();
  v9 = v13;
  if (v13)
  {
    v10 = sub_75C7F0();
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    (*(v5 + 8))(v7, v4);
    v11 = *(v13 + 16);

    sub_4B1D00(v9, v10, 0, v11, 0, a2);
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_topSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_bottomSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_verticalSeparatorView] setHidden:1];
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_293020@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_29307C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_293144()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_4AEC2C();
}

uint64_t sub_293198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_293238(&qword_9413E0, type metadata accessor for BadgeCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_293238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_293280(uint64_t a1, uint64_t a2)
{
  v22[2] = a1;
  v22[3] = a2;
  v2 = sub_765240();
  __chkstk_darwin(v2 - 8);
  v22[0] = sub_7652D0();
  v3 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_BD88(&qword_94CBB8);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  v12 = sub_765120();
  __chkstk_darwin(v12 - 8);
  v13 = sub_756D80();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756D70();
  sub_7650F0();
  sub_756D50();
  sub_756D40();
  sub_756D60();
  if (v17)
  {
    sub_765100();
    v18 = sub_7650B0();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = sub_768AB0();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    (*(v3 + 104))(v5, enum case for Artwork.Style.unspecified(_:), v22[0]);
    sub_765200();
    v20 = sub_7651F0();
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  return v20;
}

_BYTE *sub_293654(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  isEscapingClosureAtFileLocation = sub_760AD0();
  v7 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v4[OBJC_IVAR____TtC18ASMessagesProvider14CountBadgeView_size] = a1 & 1;
  if ((a1 & 1) == 0)
  {
    if (qword_93DB60 != -1)
    {
      swift_once();
    }

    v17 = qword_99FA18;
    goto LABEL_7;
  }

  if (qword_93DB68 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = qword_99FA30;
LABEL_7:
    v18 = sub_BE38(v10, v17);
    (*(v11 + 16))(v13, v18, v10);
    (*(v11 + 32))(v16, v13, v10);
    v19 = *(v11 + 56);
    v11 += 56;
    v19(v16, 0, 1, v10);
    v20 = *(v7 + 104);
    v7 += 104;
    v20(v9, enum case for DirectionalTextAlignment.none(_:), isEscapingClosureAtFileLocation);
    v21 = objc_allocWithZone(sub_75BB20());
    *&v4[OBJC_IVAR____TtC18ASMessagesProvider14CountBadgeView_countLabel] = sub_75BB10();
    v22 = type metadata accessor for CountBadgeView();
    v39.receiver = v4;
    v39.super_class = v22;
    v23 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v35);
    v24 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 2) = v23;
    v9[24] = a1 & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_29420C;
    *(v10 + 24) = v9;
    aBlock[4] = sub_2EC28;
    v38 = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1EB578;
    aBlock[3] = &unk_88AFB8;
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

  v27 = OBJC_IVAR____TtC18ASMessagesProvider14CountBadgeView_countLabel;
  v28 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14CountBadgeView_countLabel];
  if (v36)
  {
    v29 = v28;
    v30 = sub_769210();
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

id sub_293C18(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14CountBadgeView_countLabel];
  v5 = [v4 text];
  if (a2)
  {
    if (v5)
    {

      v6 = sub_769210();

LABEL_9:
      [v4 setText:v6];

      return [v2 setNeedsLayout];
    }

    v14 = sub_769210();

    [v4 setText:v14];

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v23 = sub_C354;
    v24 = v16;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_23F0CC;
    v22 = &unk_88B0A8;
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
    v23 = sub_294290;
    v24 = v8;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_23F0CC;
    v22 = &unk_88B008;
    v9 = _Block_copy(&v19);
    v10 = v2;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v23 = sub_294298;
    v24 = v11;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_3D6D80;
    v22 = &unk_88B058;
    v12 = _Block_copy(&v19);
    v13 = v10;

    [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
    _Block_release(v12);
  }

  _Block_release(v9);
  return [v2 setNeedsLayout];
}

id sub_294104()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountBadgeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_294180()
{
  result = qword_94CBF8;
  if (!qword_94CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94CBF8);
  }

  return result;
}

uint64_t sub_2941D4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_29420C()
{
  v1 = 9.0;
  if (*(v0 + 24))
  {
    v1 = 12.0;
  }

  return [*(v0 + 16) _setContinuousCornerRadius:v1];
}

uint64_t sub_294240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_294258()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_2942B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14CountBadgeView_countLabel);
  result = [v1 text];
  if (result)
  {
    v3 = result;
    sub_769240();

    v4 = sub_769350();

    if (v4 >= 2)
    {
      return [v1 sizeThatFits:{0.0, 0.0}];
    }
  }

  return result;
}

uint64_t type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver()
{
  result = qword_94CC18;
  if (!qword_94CC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_294470()
{
  v1 = qword_94CC10;
  v2 = *(v0 + qword_94CC10);
  if (v2)
  {
    v3 = *(v0 + qword_94CC10);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2944E4(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v114 = a3;
  v115 = a2;
  v113 = a1;
  v98 = sub_758B40();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_75F340();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v97 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_760280();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7687B0();
  __chkstk_darwin(v8 - 8);
  v92 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v10 - 8);
  v105 = &v82 - v11;
  v12 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v12 - 8);
  v104 = &v82 - v13;
  v89 = sub_765490();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v103 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v15 - 8);
  v108 = &v82 - v16;
  v17 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v17 - 8);
  v102 = &v82 - v18;
  v19 = sub_75C840();
  v111 = *(v19 - 8);
  v112 = v19;
  __chkstk_darwin(v19);
  v101 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v82 - v22;
  v23 = sub_75A430();
  v109 = *(v23 - 8);
  v110 = v23;
  __chkstk_darwin(v23);
  v100 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v82 - v26;
  v28 = sub_7656C0();
  v106 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_764A60();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v82 - v36;
  v116 = v4;
  sub_B170(&v4[qword_94CC08], *&v4[qword_94CC08 + 24]);
  v38 = v115;
  v39 = sub_763770();
  if (!v39 || (v43 = v39, v84 = v42, v85 = v41, v86 = v40, sub_75A450(), sub_2955F0(&qword_944D00, &type metadata accessor for ProductReview), sub_75C750(), !v120))
  {
    sub_7642A0();
    v52 = sub_7642B0();
    return v52(v113, v38, v114, v117);
  }

  v83 = v43;
  v87 = v120;
  swift_getKeyPath();
  sub_75C7B0();

  sub_764A00();
  sub_2955F0(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v44 = sub_76A520();
  v45 = *(v32 + 8);
  v45(v34, v31);
  v45(v37, v31);
  if (v44)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765550();
    v47 = v46;
    (*(v106 + 8))(v30, v28);
    v48 = v117;
    v50 = v111;
    v49 = v112;
    v51 = v38;
    if (v47 <= 1.0)
    {
LABEL_11:
      sub_7642A0();
      v77 = sub_7642B0();
      v77(v113, v51, v114, v48);
    }
  }

  else
  {
    sub_75A440();
    v55 = v109;
    v54 = v110;
    v56 = (*(v109 + 88))(v27, v110);
    v57 = enum case for ProductReview.ReviewSource.editorsChoice(_:);
    (*(v55 + 8))(v27, v54);
    v48 = v117;
    v50 = v111;
    v49 = v112;
    v51 = v38;
    if (v56 == v57)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    sub_75C7B0();

    v58 = v120;
    v59 = sub_7699E0();

    if ((v59 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v60 = v100;
  sub_75A440();
  v62 = v109;
  v61 = v110;
  v63 = (*(v109 + 88))(v60, v110) == enum case for ProductReview.ReviewSource.reviewSummary(_:);
  (*(v62 + 8))(v60, v61);
  v64 = v107;
  sub_75C730();
  v65 = v101;
  (*(v50 + 16))(v101, v64, v49);
  v66 = sub_6A0B30(v48, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000011, 0x80000000007CE650);
  v115 = type metadata accessor for ProductPageReviewsOverflowViewController();
  v67 = objc_allocWithZone(v115);
  v68 = sub_655948(v65, v83, v86, v85, v84, v66, v63);

  v69 = sub_294470();
  v70 = v102;
  sub_75C830();
  v71 = sub_757640();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v72 = OBJC_IVAR____TtC18ASMessagesProvider34ComponentViewOverflowTransitioning_selectedIndexPath;
  swift_beginAccess();
  sub_127C68(v70, &v69[v72]);
  swift_endAccess();
  v69[OBJC_IVAR____TtC18ASMessagesProvider34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
  v73 = v68;
  [v73 setTransitioningDelegate:v69];
  [v73 setModalPresentationStyle:4];

  v74 = sub_BD88(&unk_93F630);
  v75 = v108;
  sub_768860();
  v76 = *(v74 - 8);
  if ((*(v76 + 48))(v75, 1, v74) == 1)
  {
    (*(v50 + 8))(v64, v49);

    return sub_268C8(v75);
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    (*(v88 + 104))(v103, enum case for FlowPage.viewController(_:), v89);
    v78 = sub_7570A0();
    (*(*(v78 - 8) + 56))(v104, 1, 1, v78);
    v79 = sub_759E30();
    (*(*(v79 - 8) + 56))(v105, 1, 1, v79);
    v119 = v115;
    v118 = v73;
    v116 = v73;
    sub_768790();
    (*(v90 + 104))(v95, enum case for FlowPresentationContext.infer(_:), v91);
    (*(v93 + 104))(v97, enum case for FlowAnimationBehavior.infer(_:), v94);
    (*(v96 + 104))(v99, enum case for FlowOrigin.inapp(_:), v98);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v80 = sub_758AD0();
    v81 = v108;
    sub_32AC14(v80, 1, v117, v108);

    (*(v50 + 8))(v107, v112);
    return (*(v76 + 8))(v81, v74);
  }
}

uint64_t sub_2953B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_75FA00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_75F980();
  sub_295EC4(v10, v7);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  return (*(v5 + 16))(a2, a1, v4);
}

void sub_295518()
{
  swift_unknownObjectWeakDestroy();
  sub_BEB8(v0 + qword_94CC08);
  v1 = *(v0 + qword_94CC10);
}

uint64_t sub_295568()
{
  v0 = sub_7642C0();

  swift_unknownObjectWeakDestroy();
  sub_BEB8(v0 + qword_94CC08);
  v1 = *(v0 + qword_94CC10);

  return swift_deallocClassInstance();
}

uint64_t sub_2955F0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_295640(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_295674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2956BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_295738(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_295780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_2957DC(double a1)
{
  v2 = v1;
  sub_B170((v1 + 56), *(v1 + 80));
  sub_7673F0();
  sub_B170(v2 + 12, v2[15]);
  sub_7673F0();
  sub_B170(v2 + 17, v2[20]);
  sub_7673F0();
  sub_295E34(v1, v5);
  sub_B170(v5, v5[3]);
  sub_766710();
  sub_BEB8(v5);
  return a1;
}

uint64_t sub_295948(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_B170((v4 + 56), *(v4 + 80));
  sub_7673F0();
  v11 = v10 + 4.0;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v12 = CGRectGetWidth(v31) - v11 - *(v4 + 40);
  sub_B170(v5 + 12, v5[15]);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetHeight(v32);
  sub_7673F0();
  v28 = v13;
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetHeight(v33);
  v29 = *(v4 + 48);
  sub_B170(v5 + 17, v5[20]);
  sub_7673F0();
  v27 = v14;
  v16 = v15;
  v25 = v15;
  v26 = v17;
  v18 = v17;
  sub_295E34(v4, v30);
  sub_B170(v30, v30[3]);
  sub_766710();
  v20 = v19;
  sub_BEB8(v30);
  if (v20 <= v28 + v29 + v16 - v18)
  {
    v20 = v28 + v29 + v16 - v18;
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetMinX(v34);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  CGRectGetMinY(v35);
  if (v27 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v27;
  }

  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v22 = CGRectGetWidth(v36) - v21;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v23 = v26 + v20 + CGRectGetMinY(v37) - v25;
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetWidth(v38);
  v39.origin.x = v22;
  v39.origin.y = v23;
  v39.size.width = v27;
  v39.size.height = v25;
  CGRectGetMinY(v39);
  sub_B170((v4 + 56), *(v4 + 80));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v4 + 136), *(v4 + 160));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v4 + 96), *(v4 + 120));
  sub_769CA0();
  return sub_7673E0();
}

uint64_t sub_295CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_295E6C();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_295D34()
{
  result = qword_94CC68;
  if (!qword_94CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94CC68);
  }

  return result;
}

unint64_t sub_295D8C()
{
  result = qword_94CC70;
  if (!qword_94CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94CC70);
  }

  return result;
}

unint64_t sub_295E6C()
{
  result = qword_94CC78;
  if (!qword_94CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94CC78);
  }

  return result;
}

uint64_t sub_295EC4(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_BD88(&qword_94CE58);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_75FA00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_29A9C8(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  sub_76A530();
  v17 = v27;
  sub_29A9C8(&qword_94CE60, &type metadata accessor for ComponentLayoutOptions);
  v25 = a2;
  v18 = sub_7691C0();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_76A570();
  }

  v21 = v28;
  sub_109C4(v7, v28, &qword_94CE58);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_2961C8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_BD88(&qword_94CE40);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_75A6B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_29A9C8(&qword_9406B8, &type metadata accessor for VideoControls);
  sub_76A530();
  v17 = v27;
  sub_29A9C8(&unk_9406C0, &type metadata accessor for VideoControls);
  v25 = a2;
  v18 = sub_7691C0();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_76A570();
  }

  v21 = v28;
  sub_109C4(v7, v28, &qword_94CE40);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

void sub_2964CC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (Strong)
    {
      type metadata accessor for ProductLockupCollectionViewCell();
      v4 = Strong;
      v5 = sub_76A1C0();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_298E58();
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void sub_29659C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_99E1D8);

    if (a1)
    {
      sub_29A9C8(&qword_94CE48, type metadata accessor for ChevronView);
    }

    sub_75FA30();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + qword_99E1D8);

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      sub_29A9C8(&qword_94CE48, type metadata accessor for ChevronView);
    }

    sub_75FA40();
  }
}

uint64_t sub_296704()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ProductScrollObserver();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 32) = sub_29AB58;
    *(v1 + 40) = v2;
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_2967B8(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2989E0(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_29683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_296CC8(a4, a1, a2);
  }

  return result;
}

uint64_t sub_2968C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      memset(v2, 0, sizeof(v2));
      sub_7628F0();

      return sub_10A2C(v2, &unk_93FBD0);
    }
  }

  return result;
}

void sub_29695C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v6 = sub_75A6B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_BD88(&qword_947B60);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v28 - v20;
  v22 = *(v7 + 16);
  v22(a4, a1, v6, v19);
  sub_75A680();
  (v22)(v11, a4, v6);
  sub_29A9C8(&qword_9406B8, &type metadata accessor for VideoControls);
  sub_76A530();
  if (sub_76A550())
  {
    v23 = *(v7 + 8);
    v23(v14, v6);
    v23(v17, v6);
    v24 = 1;
  }

  else
  {
    sub_76A560();
    v23 = *(v7 + 8);
    v23(v17, v6);
    (*(v7 + 32))(v21, v14, v6);
    v24 = 0;
  }

  (*(v7 + 56))(v21, v24, 1, v6);
  sub_10A2C(v21, &qword_947B60);
  if (v31)
  {
    v25 = [v30 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 == &dword_0 + 2)
    {
      v27 = v29;
      sub_75A6A0();
      sub_2961C8(v11, v27);
      v23(v27, v6);
      v23(v11, v6);
    }
  }
}

uint64_t sub_296CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v87 = a1;
  v3 = sub_BD88(&qword_955640);
  __chkstk_darwin(v3 - 8);
  v80 = &v74 - v4;
  v85 = sub_758040();
  v88 = *(v85 - 8);
  __chkstk_darwin(v85);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v74 - v7;
  v8 = sub_BD88(&unk_957130);
  __chkstk_darwin(v8 - 8);
  v10 = &v74 - v9;
  v11 = sub_7580D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v75 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v74 - v15;
  __chkstk_darwin(v16);
  v82 = &v74 - v17;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  v90 = sub_BD88(&qword_94CE50);
  v83 = *(v90 - 8);
  __chkstk_darwin(v90);
  v22 = &v74 - v21;
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v78 = sub_75A830();

  sub_768ED0();
  v74 = sub_75A870();

  sub_BD88(&qword_94CE68);
  sub_768880();
  sub_B170(v93, v93[3]);
  v77 = sub_75ACE0();
  sub_BEB8(v93);
  v23 = sub_29A844();
  v91 = v22;
  v89 = v23;
  sub_75C7C0();
  swift_getObjectType();
  v24 = v20;
  sub_758220();
  sub_758240();
  v25 = sub_7572A0();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10A2C(v10, &unk_957130);
    v27 = 0.0;
  }

  else
  {
    sub_757260();
    v27 = v28;
    (*(v26 + 8))(v10, v25);
  }

  swift_getKeyPath();
  sub_768B10();

  v29 = v93[0];
  v30 = *(v12 + 16);
  v31 = v82;
  v30(v82, v20, v11);
  v32 = (*(v12 + 88))(v31, v11);
  v34 = v84;
  v33 = v85;
  if (v32 != enum case for LegacyAppState.downloading(_:))
  {
    if (v32 != enum case for LegacyAppState.installing(_:))
    {
      goto LABEL_12;
    }

    v39 = v75;
    v30(v75, v31, v11);
    (*(v12 + 96))(v39, v11);
    v40 = v76;
    (*(v88 + 32))(v76, v39, v33);
    v41 = v90;
    if ((v29 & 1) != 0 && (sub_758020() & 1) == 0)
    {
      v94._object = 0x80000000007D8450;
      v94._countAndFlagsBits = 0xD000000000000024;
      v95._countAndFlagsBits = 0;
      v95._object = 0xE000000000000000;
      v54 = sub_75B750(v94, v95);
      v55 = v33;
      v43 = v54;
      v44 = v56;
      (*(v88 + 8))(v40, v55);
      goto LABEL_21;
    }

    (*(v88 + 8))(v40, v33);
LABEL_19:
    v42 = *(v12 + 8);
    v42(v24, v11);
    v43 = 0;
    v44 = 0;
    goto LABEL_22;
  }

  v35 = v78;
  v36 = v79;
  v30(v79, v31, v11);
  (*(v12 + 96))(v36, v11);
  (*(v88 + 32))(v86, v36, v33);
  if ((v77 & (v35 < -v27)) != 0)
  {
    *&v37 = COERCE_DOUBLE(sub_758090());
    if ((v38 & 1) == 0)
    {
      v45 = *&v37;
      v46 = sub_758020();
      v41 = v90;
      if ((v46 & 1) == 0 || (v47 = sub_758030()) == 0 || (v48 = v47, v49 = [v47 completedUnitCount], v48, v50 = v49 <= 0, v33 = v85, !v50))
      {
        if ((v74 < v45) | v29 & 1)
        {
          v51 = sub_7580A0();
          v52 = v33;
          v43 = v51;
          v44 = v53;
          (*(v88 + 8))(v86, v52);
LABEL_21:
          v42 = *(v12 + 8);
          v42(v24, v11);
          goto LABEL_22;
        }
      }

      (*(v88 + 8))(v86, v33);
      goto LABEL_19;
    }
  }

  (*(v88 + 8))(v86, v33);
LABEL_12:
  v42 = *(v12 + 8);
  v42(v24, v11);
  v43 = 0;
  v44 = 0;
  v41 = v90;
LABEL_22:
  v42(v31, v11);
  swift_getKeyPath();
  sub_768B10();

  if ((v44 != 0) == LOBYTE(v93[0]) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v60 = 0;
  }

  else
  {
    v58 = Strong;
    v59 = [Strong traitCollection];

    v60 = sub_769A00();
  }

  __chkstk_darwin(Strong);
  *(&v74 - 32) = v61;
  *(&v74 - 3) = v43;
  *(&v74 - 2) = v44;
  v62 = v91;
  sub_768AF0();

  if (v60)
  {
    v63 = sub_769590();
    v64 = v80;
    (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
    sub_769570();

    v65 = sub_769560();
    v66 = swift_allocObject();
    v66[2] = v65;
    v66[3] = &protocol witness table for MainActor;
    v66[4] = v34;
    sub_54A398(0, 0, v64, &unk_790CB0, v66);
  }

  else
  {
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      v68 = v67;
      swift_getKeyPath();
      sub_768B10();

      v69 = v93[0];
      v70 = v93[1];
      swift_getKeyPath();
      sub_768B10();

      v71 = v92;
      v72 = sub_527DE4();
      swift_getObjectType();
      sub_2DCDEC(v69, v70, v71, v72, v68);
      swift_unknownObjectRelease();
    }
  }

  return (*(v83 + 8))(v62, v41);
}

uint64_t sub_297754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_769570();
  v4[4] = sub_769560();
  v6 = sub_769540();

  return _swift_task_switch(sub_2977EC, v6, v5);
}

uint64_t sub_2977EC()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_762850();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_297878(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v2 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v2 - 8);
  v103 = &v83 - v3;
  v4 = sub_7623A0();
  v98 = *(v4 - 8);
  __chkstk_darwin(v4);
  v100 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_9457F0);
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v99 = &v83 - v7;
  v8 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v8 - 8);
  v96 = &v83 - v9;
  v95 = sub_763750();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_948730);
  __chkstk_darwin(v11 - 8);
  v97 = &v83 - v12;
  v13 = sub_BD88(&unk_95F4E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v83 - v17;
  v19 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v19 - 8);
  v21 = &v83 - v20;
  v22 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v22 - 8);
  v108 = &v83 - v23;
  v24 = sub_BD88(&unk_948720);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  v30 = sub_766690();
  v106 = *(v30 - 8);
  v107 = v30;
  __chkstk_darwin(v30);
  v105 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C040();
  sub_29A9C8(&qword_95F4F0, &type metadata accessor for ProductTopLockup);
  result = sub_75C750();
  v33 = *&v109[0];
  if (*&v109[0])
  {
    v92 = v21;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v90 = v15;
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v83 = v18;
        v89 = v4;
        v38 = v33;
        v39 = v37;
        v40 = *(v37 + qword_99B770);

        v84 = sub_75C000();
        v42 = v41;
        sub_40B0E0();
        v43 = v105;
        sub_7666A0();
        v91 = sub_762930();
        v86 = v38;
        v44 = v40;
        v85 = sub_75BF00();
        v88 = v35;
        v45 = sub_7628E0();
        v46 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView;
        sub_5B6F24(v84, v42);
        v48 = v106;
        v47 = v107;
        (*(v106 + 16))(v29, v43, v107);
        (*(v48 + 56))(v29, 0, 1, v47);
        v49 = *&v44[v46];
        sub_29A8E8(v29, v26);
        v50 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconAspectRatio;
        swift_beginAccess();
        sub_29A958(v26, v49 + v50);
        swift_endAccess();
        [v49 setNeedsLayout];
        sub_10A2C(v26, &unk_948720);
        sub_10A2C(v29, &unk_948720);
        v51 = &v44[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapHandler];
        v52 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapHandler];
        *v51 = sub_29A8E0;
        v51[1] = v36;
        swift_retain_n();
        sub_F704(v52);
        v53 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapGestureRecognizer];

        [v53 setEnabled:1];

        v54 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton;
        LODWORD(v84) = [*&v44[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton] isHidden];
        *&v44[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButtonMode] = v45;
        if (sub_75FF00())
        {
          v55 = *&v44[v54];
          v56 = 1;
          v57 = v108;
        }

        else
        {
          v58 = sub_760F30();
          v59 = sub_760F30();
          v55 = *&v44[v54];
          v57 = v108;
          if (v58 == v59)
          {
            v56 = 1;
          }

          else
          {
            v56 = v44[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1];
          }
        }

        v60 = v91;
        [v55 setHidden:v56];
        v61 = sub_75FEF0();
        v87 = v36;
        if (v61)
        {
          v62 = enum case for OfferStyle.disabled(_:);
          v63 = sub_758C70();
          v64 = *(v63 - 8);
          (*(v64 + 104))(v57, v62, v63);
          (*(v64 + 56))(v57, 0, 1, v63);
          if (v60)
          {
            v65 = v83;
LABEL_16:
            v67 = sub_75BD30();
            v68 = v92;
            (*(*(v67 - 8) + 56))(v92, 1, 1, v67);
            v69 = sub_765870();
            (*(*(v69 - 8) + 56))(v65, 1, 1, v69);
            v70 = sub_75B490();
            v71 = v90;
            (*(*(v70 - 8) + 56))(v90, 1, 1, v70);
            memset(v109, 0, 32);
            v72 = v65;
            v73 = sub_75FE10();
            sub_10A2C(v109, &unk_93FBD0);
            sub_10A2C(v71, &unk_95F4E0);
            sub_10A2C(v72, &unk_9457D0);
            sub_10A2C(v68, &unk_9457E0);
LABEL_19:
            v75 = v93;
            v76 = v95;
            (*(v93 + 104))(v94, enum case for OfferButtonPresenterViewAlignment.right(_:), v95);
            v77 = 1;
            (*(v75 + 56))(v96, 1, 1, v76);
            sub_29A9C8(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
            v78 = v97;
            sub_760940();
            v79 = sub_BD88(&unk_948740);
            (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
            v80 = v98;
            v81 = v89;
            (*(v98 + 104))(v100, enum case for OfferButtonSubtitlePosition.left(_:), v89);
            (*(v80 + 56))(v103, 1, 1, v81);
            sub_29A9C8(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
            v82 = v99;
            sub_760940();
            sub_1DFEBC(v73, v85, 0, v78, v82, v104, 0, 0);
            (*(v101 + 8))(v82, v102);
            sub_10A2C(v78, &unk_948730);
            if ((v84 & 1) == 0)
            {
              v77 = v44[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1];
            }

            [*&v44[v54] setHidden:v77];

            sub_10A2C(v108, &unk_94A780);
            (*(v106 + 8))(v105, v107);
          }
        }

        else
        {
          v65 = v83;
          if (v60)
          {
            sub_75FE70();
            v66 = sub_758C70();
            (*(*(v66 - 8) + 56))(v57, 0, 1, v66);
            goto LABEL_16;
          }

          v74 = sub_758C70();
          (*(*(v74 - 8) + 56))(v57, 1, 1, v74);
        }

        v73 = 0;
        goto LABEL_19;
      }
    }
  }

  return result;
}