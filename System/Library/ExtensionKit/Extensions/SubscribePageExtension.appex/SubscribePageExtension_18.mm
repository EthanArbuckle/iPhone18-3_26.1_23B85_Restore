void sub_1001F9988(void (**a1)(char *, uint64_t), double a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v5 - 8);
  v94 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = v84 - v8;
  v9 = sub_1007417F4();
  v103 = *(v9 - 8);
  __chkstk_darwin(v9);
  v98 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = v84 - v12;
  __chkstk_darwin(v13);
  v99 = v84 - v14;
  __chkstk_darwin(v15);
  v100 = v84 - v16;
  __chkstk_darwin(v17);
  v101 = v84 - v18;
  v19 = sub_1007457B4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v91 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = v84 - v23;
  __chkstk_darwin(v24);
  v102 = v84 - v25;
  __chkstk_darwin(v26);
  v28 = v84 - v27;
  __chkstk_darwin(v29);
  v31 = v84 - v30;
  v32 = *(v2 + 16);
  v33 = *(v2 + 88);
  v104 = v3;
  v34 = *(v3 + 96);
  ObjectType = swift_getObjectType();
  if (v32 >= sub_1007450A4())
  {
    return;
  }

  v90 = v32;
  sub_100745074();
  (*(v20 + 104))(v28, enum case for ShelfBackground.interactive(_:), v19);
  v36 = sub_1007457A4();
  v92 = v20;
  v37 = *(v20 + 8);
  v37(v28, v19);
  v88 = v20 + 8;
  v87 = v37;
  v37(v31, v19);
  if ((v36 & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v39 = Strong;
  v84[3] = ObjectType;
  v84[2] = v33;
  v84[1] = v34;
  v85 = v19;
  v40 = *(v104 + 32);

  v105[0] = sub_100051834(v41);
  sub_1001F88B4(v105);
  v42 = v105[0];
  v89 = v9;
  if (v105[0] < 0 || (v105[0] & 0x4000000000000000) != 0)
  {
LABEL_41:
    v43 = sub_100754664();
  }

  else
  {
    v43 = *(v105[0] + 16);
  }

  v86 = v39;
  if (v43)
  {
    if (v43 < 1)
    {
      goto LABEL_43;
    }

    v44 = 0;
    v96 = (v103 + 8);
    v84[0] = v103 + 32;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v39 = sub_100754574();
      }

      else
      {
        v39 = *(v42 + 8 * v44 + 32);
        swift_unknownObjectRetain();
      }

      if ([v39 representedElementCategory])
      {
        goto LABEL_21;
      }

      [v39 frame];
      v46 = CGRectGetMinX(v106) - *(v104 + 64) - a2;
      [v39 frame];
      v47 = CGRectGetMaxX(v107) - a2;
      if (v46 > v47)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v46 > v40 || v40 >= v47)
      {
        goto LABEL_21;
      }

      v48 = v45;
      v49 = [v39 indexPath];
      v50 = v101;
      sub_100741744();

      v51 = sub_100741774();
      (*v96)(v50, v89);
      v52 = *(v104 + 56);
      if (!v52)
      {
        goto LABEL_40;
      }

      v45 = v48;
      if (v51 == 0x8000000000000000 && v52 == -1)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);

        __break(1u);
        return;
      }

      if (v51 % v52)
      {
LABEL_21:
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = [v39 indexPath];
        sub_100741744();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1002558B8(0, v48[2] + 1, 1, v48);
        }

        v55 = v45[2];
        v54 = v45[3];
        if (v55 >= v54 >> 1)
        {
          v45 = sub_1002558B8(v54 > 1, v55 + 1, 1, v45);
        }

        swift_unknownObjectRelease();
        v45[2] = v55 + 1;
        (*(v103 + 32))(v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v55, v100, v89);
      }

      if (v43 == ++v44)
      {
        goto LABEL_30;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_30:

  if (v45[2])
  {
    v56 = v103;
    v57 = v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = v95;
    v59 = v89;
    v101 = *(v103 + 16);
    (v101)(v95, v57, v89);

    v60 = v99;
    (*(v56 + 32))(v99, v58, v59);
    if (__OFADD__(sub_100741774(), *(v104 + 56)))
    {
      goto LABEL_44;
    }

    sub_100741764();
    sub_100745034();
    v61 = v97;
    sub_100745034();
    v62 = v92;
    v63 = *(v92 + 16);
    v64 = v91;
    v65 = v85;
    v63(v91, v61, v85);
    LODWORD(v62) = (*(v62 + 88))(v64, v65);
    v66 = enum case for ShelfBackground.none(_:);
    v87(v64, v65);
    v67 = 1.0;
    if (v62 != v66)
    {
      v68 = *(v104 + 64);
      v69 = [v86 collectionViewLayout];
      isa = sub_100741704().super.isa;
      v71 = [v69 layoutAttributesForItemAtIndexPath:isa];

      v60 = v99;
      if (v71)
      {
        [v71 frame];
        v72 = CGRectGetMinX(v108) - v40 - a2;
        [v71 frame];
        Width = CGRectGetWidth(v109);

        v67 = (v72 + v68 + Width) / (v68 + Width);
        if (v67 >= 1.0)
        {
          v67 = 1.0;
        }
      }
    }

    v74 = v93;
    v75 = v85;
    v63(v93, v102, v85);
    v76 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    v77 = v89;
    (v101)(v74 + v76[6], v60, v89);
    v78 = v97;
    v63((v74 + v76[7]), v97, v75);
    *(v74 + v76[5]) = v67;
    (*(*(v76 - 1) + 56))(v74, 0, 1, v76);
    v79 = OBJC_IVAR____TtC22SubscribePageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
    v80 = v104;
    swift_beginAccess();
    v81 = v94;
    sub_100016B4C(v80 + v79, v94, &unk_100924290);
    swift_beginAccess();
    sub_100052B04(v74, v80 + v79);
    swift_endAccess();
    sub_1001F7A68(v81);

    sub_10000C8CC(v81, &unk_100924290);
    sub_10000C8CC(v74, &unk_100924290);
    v82 = v87;
    v87(v78, v75);
    v82(v102, v75);
    v83 = *(v103 + 8);
    v83(v98, v77);
    v83(v60, v77);
  }

  else
  {
  }
}

uint64_t sub_1001FA45C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for InteractiveSectionBackgroundScrollCoordinator();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 64) = a6;
  swift_unknownObjectWeakAssign();
  *(v21 + 88) = a8;
  *(v21 + 96) = a12;
  *(v21 + 80) = a9;
  swift_unknownObjectRetain();
  *(v21 + 56) = sub_1007450E4();
  return v21;
}

uint64_t sub_1001FA584()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10092DB30);
  sub_10000D0FC(v0, qword_10092DB30);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

uint64_t sub_1001FA620()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097E668);
  sub_10000D0FC(v4, qword_10097E668);
  if (qword_1009213C8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981890);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1001FA800(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_1009213D0 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_1009818A8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001FA9DC()
{
  sub_10000D198();
  result = sub_100753E74();
  qword_10097E6B0 = result;
  return result;
}

void sub_1001FAA10(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074AB44();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  if (qword_1009213C8 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  v16 = sub_10000D0FC(v15, qword_100981890);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = sub_100745C84();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v46[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_descriptionLabel] = sub_100745C74();
  if (qword_1009213D0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v15, qword_1009818A8);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = sub_100745C74();
  v26 = v46;
  *&v46[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_summaryLabel] = v25;
  v27 = objc_opt_self();
  v28 = sub_100753064();
  v29 = [v27 kitImageNamed:v28];

  if (v29)
  {
    v30 = [v29 imageWithRenderingMode:2];

    v31 = [v30 imageFlippedForRightToLeftLayoutDirection];
    v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];

    *&v26[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_disclosureIndicator] = v32;
    v47.receiver = v26;
    v47.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
    [v33 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
    if (qword_1009205C8 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_10097E6B0];
    [v33 _setCornerRadius:20.0];
    [v33 addSubview:*&v33[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_descriptionLabel]];
    v34 = OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_summaryLabel;
    v35 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_summaryLabel];
    sub_10000D198();
    v36 = v35;
    v37 = sub_100753DF4();
    [v36 setTextColor:v37];

    [v33 addSubview:*&v33[v34]];
    v38 = OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_disclosureIndicator;
    v39 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_disclosureIndicator];
    v40 = sub_100753E24();
    [v39 setTintColor:v40];

    [v33 addSubview:*&v33[v38]];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001FB000()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_descriptionLabel] text];
  if (v2)
  {
    v3 = v2;
    sub_100753094();
  }

  v4 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_summaryLabel] text];
  if (v4)
  {
    v5 = v4;
    sub_100753094();
  }

  [v1 layoutMargins];
  v6 = objc_opt_self();
  v7 = sub_100753064();
  v8 = [v6 kitImageNamed:v7];

  if (v8)
  {
    v9 = [v8 imageWithRenderingMode:2];

    v10 = [v9 imageFlippedForRightToLeftLayoutDirection];
    [v10 size];

    if (qword_1009213C8 != -1)
    {
      swift_once();
    }

    v11 = sub_100750534();
    sub_10000D0FC(v11, qword_100981890);
    v12 = sub_10074F3F4();
    v20 = v12;
    v13 = sub_1001FC0C4();
    v21 = v13;
    v14 = sub_10000D134(v19);
    v15 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v16 = *(*(v12 - 8) + 104);
    v16(v14, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
    sub_10074FC74();
    sub_10000C620(v19);
    sub_10074CCB4();
    if (qword_1009213D0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v11, qword_1009818A8);
    v20 = v12;
    v21 = v13;
    v17 = sub_10000D134(v19);
    v16(v17, v15, v12);
    sub_10074FC74();
    sub_10000C620(v19);
    sub_10074CCB4();
    if (qword_1009205B0 != -1)
    {
      swift_once();
    }

    v18 = sub_100750B04();
    sub_10000D0FC(v18, qword_10097E668);
    sub_100750584();
    if (qword_1009205B8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v18, qword_10097E680);
    sub_100750584();
    if (qword_1009205C0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v18, qword_10097E698);
    sub_100750554();
  }

  else
  {
    __break(1u);
  }
}

id sub_1001FB570()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v0;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_disclosureIndicator];
  v8 = [v7 isHidden];
  sub_1007477B4();
  if (v8)
  {
    Width = CGRectGetWidth(*&v9);
  }

  else
  {
    [v7 sizeThatFits:{v11, v12}];
    v15 = v14;
    v17 = v16;
    sub_1007477B4();
    v18 = CGRectGetMaxX(v35) - v15;
    sub_1007477B4();
    v19 = CGRectGetMidY(v36) + v17 * -0.5;
    sub_1007477B4();
    sub_100753B24();
    [v7 setFrame:?];
    sub_1007477B4();
    v20 = CGRectGetWidth(v37);
    v38.origin.x = v18;
    v38.origin.y = v19;
    v38.size.width = v15;
    v38.size.height = v17;
    Width = v20 - (CGRectGetWidth(v38) + 24.0);
  }

  if (qword_1009205B0 != -1)
  {
    swift_once();
  }

  v21 = sub_100750B04();
  sub_10000D0FC(v21, qword_10097E668);
  sub_1007502D4();
  sub_100750564();
  v23 = v22;
  v24 = *(v3 + 8);
  v24(v6, v2);
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_descriptionLabel];
  sub_1007477B4();
  [v25 sizeThatFits:{Width, CGRectGetHeight(v39)}];
  v27 = v26;
  sub_1007477B4();
  MinX = CGRectGetMinX(v40);
  sub_1007477B4();
  MinY = CGRectGetMinY(v41);
  [v25 firstBaselineFromTop];
  v31 = MinY + v23 - v30;
  sub_1007477B4();
  sub_100753B24();
  [v25 setFrame:?];
  if (qword_1009205B8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v21, qword_10097E680);
  sub_1007502D4();
  sub_100750564();
  v24(v6, v2);
  v32 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_summaryLabel];
  sub_1007477B4();
  [v32 sizeThatFits:{Width, CGRectGetHeight(v42)}];
  sub_1007477B4();
  CGRectGetMinX(v43);
  v44.origin.x = MinX;
  v44.origin.y = v31;
  v44.size.width = Width;
  v44.size.height = v27;
  CGRectGetMaxY(v44);
  [v32 firstBaselineFromTop];
  sub_1007477B4();
  sub_100753B24();
  return [v32 setFrame:?];
}

id sub_1001FB9E0(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009205A8 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_10092DB30);
    v7 = v1;
    sub_100743464();

    [*&v7[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_descriptionLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_summaryLabel] setTextAlignment:v8];
  }

  return result;
}

void sub_1001FBC40()
{
  v0 = objc_opt_self();
  v1 = sub_100753064();
  v2 = [v0 kitImageNamed:v1];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode:2];

    v4 = [v3 imageFlippedForRightToLeftLayoutDirection];
    [v4 size];

    if (qword_1009213C8 != -1)
    {
      swift_once();
    }

    v5 = sub_100750534();
    sub_10000D0FC(v5, qword_100981890);
    v6 = sub_10074F3F4();
    v14 = v6;
    v7 = sub_1001FC0C4();
    v15 = v7;
    v8 = sub_10000D134(v13);
    v9 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v10 = *(*(v6 - 8) + 104);
    v10(v8, enum case for Feature.measurement_with_labelplaceholder(_:), v6);
    sub_10074FC74();
    sub_10000C620(v13);
    sub_10074CCB4();
    if (qword_1009213D0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v5, qword_1009818A8);
    v14 = v6;
    v15 = v7;
    v11 = sub_10000D134(v13);
    v10(v11, v9, v6);
    sub_10074FC74();
    sub_10000C620(v13);
    sub_10074CCB4();
    if (qword_1009205B0 != -1)
    {
      swift_once();
    }

    v12 = sub_100750B04();
    sub_10000D0FC(v12, qword_10097E668);
    sub_100750584();
    if (qword_1009205B8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v12, qword_10097E680);
    sub_100750584();
    if (qword_1009205C0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v12, qword_10097E698);
    sub_100750554();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1001FC0C4()
{
  result = qword_10092AC70;
  if (!qword_10092AC70)
  {
    sub_10074F3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092AC70);
  }

  return result;
}

uint64_t sub_1001FC11C()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10097E6D0 = sub_100752E44();
  unk_10097E6D8 = &protocol witness table for OSLogger;
  sub_10000D134(qword_10097E6B8);
  return sub_100752E34();
}

uint64_t sub_1001FC260(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000C518(&unk_10092DCE0);
    v2 = sub_1007546B4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_10000C518(&qword_10092DCF0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000C610(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000C610(v29, v30);
    result = sub_1007544B4(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10000C610(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001FC56C(uint64_t a1, uint64_t (*a2)(__n128), void *a3)
{
  v6 = sub_10000C518(&unk_100923960);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  result = a2(v7);
  if (result)
  {
    v11 = result;
    v12 = *(v3 + *a3);
    v13 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {

      return sub_10000C8CC(v9, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v11, 1, v12, v9);

      return (*(v14 + 8))(v9, v13);
    }
  }

  return result;
}

void sub_1001FC6F0(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001FC74C(a2);
  }
}

uint64_t sub_1001FC74C(uint64_t (*a1)(__n128))
{
  v3 = sub_10000C518(&unk_100923960);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_objectGraph);
    v10 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10000C8CC(v6, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_1001FD73C();
}

uint64_t sub_1001FC914(uint64_t (*a1)(__n128))
{
  v3 = sub_10000C518(&unk_100923960);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_objectGraph);
    v10 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10000C8CC(v6, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_1001FD73C();
}

void sub_1001FCAF0(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001FC56C(&OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_requestInfo, a2, &OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_objectGraph);
  }
}

void *sub_1001FCB84(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_1001FE1D0(a1, a2, a3, a4);
  v11 = v10;

  return v10;
}

void sub_1001FCDC8()
{
  v0 = sub_100741264();
  __chkstk_darwin(v0 - 8);
  sub_100741224();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1001FCF58()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_referrer);

  return v1;
}

id sub_1001FD080()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1001FD0D4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_1001FD194()
{
  v1 = [v0 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100752F44();

  return v3;
}

void sub_1001FD204(uint64_t a1)
{
  if (a1)
  {
    isa = sub_100752F34().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setMetricsOverlay:isa];
}

void (*sub_1001FD28C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1001FD2FC(v2);
  return sub_100018728;
}

void (*sub_1001FD2FC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_100752F44();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1001FD398;
}

void sub_1001FD398(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      isa = sub_100752F34().super.isa;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setMetricsOverlay:isa];
  }

  else if (v3)
  {
    isa = sub_100752F34().super.isa;

    [a1[1] setMetricsOverlay:isa];
  }

  else
  {
    isa = 0;
    [a1[1] setMetricsOverlay:0];
  }
}

void *sub_1001FD48C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = sub_1001FE1D0(a1, a2, a3, a4);
  v5 = v4;
  return v4;
}

void sub_1001FD4B8()
{
  swift_getObjectType();

  sub_10074D2C4();
}

uint64_t sub_1001FD504(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1001FEC78(&unk_10092DCD0, v5, type metadata accessor for DynamicViewController);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v6);
}

uint64_t sub_1001FD5C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_1001FEC78(&unk_10092DCD0, v4, type metadata accessor for DynamicViewController);

  return a3(ObjectType, v5);
}

uint64_t sub_1001FD73C()
{
  v0 = sub_100742A44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742AB4();
  sub_100752764();
  sub_100752D34();
  (*(v1 + 104))(v3, enum case for AppStoreEngagementEvent.didSubscribeToArcade(_:), v0);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100742A54();

  (*(v1 + 8))(v3, v0);

  type metadata accessor for InAppMessagesManager();
  sub_100752D34();
  sub_1000FCF94();
}

void sub_1001FD904(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_objectGraph);
      v7 = Strong;

      v8 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {

        sub_10000C8CC(v4, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(a1, 1, v6, v4);

        (*(v9 + 8))(v4, v8);
      }
    }
  }
}

void sub_1001FDABC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_objectGraph);
      v7 = Strong;

      v8 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {

        sub_10000C8CC(v4, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(a1, 1, v6, v4);

        (*(v9 + 8))(v4, v8);
      }
    }
  }
}

char *sub_1001FDC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_dynamicDelegate] = 0;
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_gridPresenter] = 0;
  v13 = &v6[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_gridView];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_objectGraph] = a5;
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_requestInfo] = a2;
  v14 = &v6[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_referrer];
  *v14 = a3;
  *(v14 + 1) = a4;
  sub_1007442C4();

  sub_1007526E4();
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_artworkLoader] = v38;
  sub_100744AC4();
  sub_1007526E4();
  v15 = sub_100744AB4();

  sub_100741204(v16);
  v18 = v17;
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v37, "initWithBag:URL:", v15, v17);
  swift_unknownObjectRelease();

  sub_1001FEAF4();
  v20 = v19;
  sub_1007526E4();
  v21 = v38;
  v22 = [v38 ams_activeiTunesAccount];

  [v20 setAccount:v22];
  if (sub_100748AB4())
  {
    v23.super.isa = sub_100752F34().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  [v20 setMetricsOverlay:v23.super.isa];

  [v20 setAnonymousMetrics:1];
  v24 = sub_100748AA4();
  if (v24)
  {
    sub_1001FC260(v24);

    v25.super.isa = sub_100752F34().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  [v20 setClientOptions:v25.super.isa];

  v26 = v20;
  sub_100744AD4();
  v27 = sub_100753064();

  [v26 setMediaClientIdentifier:v27];

  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = objc_allocWithZone(sub_10074CC04());
  v32 = sub_10074CBF4();

  v33 = OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_dynamicDelegate;
  *&v26[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_dynamicDelegate] = v32;
  swift_unknownObjectRelease();
  [v26 setDelegate:{*&v26[v33], v28, sub_1001FEC00, v29, sub_1001FEC30, v30}];
  sub_10074C5F4();
  v34 = sub_10074C5E4();
  [v26 setMediaContentDelegate:v34];

  v35 = sub_100741264();
  (*(*(v35 - 8) + 8))(a1, v35);
  return v26;
}

void *sub_1001FE1D0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_100748824();
  swift_allocObject();

  sub_100748804();
  v10 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v11 = sub_1004566A0(0);
  [v11 setFrame:{a1, a2, a3, a4}];
  v12 = sub_1001FEC78(&qword_10092DCC8, 255, type metadata accessor for UpsellGridView);
  v13 = (v5 + OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_gridView);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v11;
  v13[1] = v12;
  v20 = v11;

  sub_1001FEC78(&qword_10092DCC0, v15, type metadata accessor for DynamicViewController);
  swift_unknownObjectRetain();
  sub_100748814();
  sub_100744314();
  if (qword_100921ED0 != -1)
  {
    swift_once();
  }

  v16 = sub_100752E44();
  sub_10000D0FC(v16, qword_1009832E8);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  type metadata accessor for CGRect(0);
  v21[3] = v17;
  v18 = swift_allocObject();
  v21[0] = v18;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  sub_100752424();
  sub_10000C8CC(v21, &unk_100923520);
  sub_100752CE4();

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (CGRectIsEmpty(v22))
  {
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();
  }

  return *v13;
}

void *sub_1001FE580(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_100748824();
  swift_allocObject();

  sub_100748804();
  v10 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v11 = sub_1004566A0(0);
  [v11 setFrame:{a1, a2, a3, a4}];
  v12 = sub_1001FEC78(&qword_10092DCC8, 255, type metadata accessor for UpsellGridView);
  v13 = (v5 + OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_gridView);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v11;
  v13[1] = v12;
  v19 = v11;

  sub_1001FEC78(&qword_100944FE0, 255, type metadata accessor for MarketingItemViewController);
  swift_unknownObjectRetain();
  sub_100748814();
  sub_100744314();
  if (qword_100921ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_100752E44();
  sub_10000D0FC(v15, qword_1009832E8);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  type metadata accessor for CGRect(0);
  v20[3] = v16;
  v17 = swift_allocObject();
  v20[0] = v17;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_100752424();
  sub_10000C8CC(v20, &unk_100923520);
  sub_100752CE4();

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  if (CGRectIsEmpty(v21))
  {
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();
  }

  return *v13;
}

uint64_t sub_1001FE92C()
{
  if (qword_1009205D0 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10097E6B8, qword_10097E6D0);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_10000D134(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_100752424();
  sub_10000C8CC(v3, &unk_100923520);
  sub_100752D04();
}

unint64_t sub_1001FEAF4()
{
  result = qword_100939F50;
  if (!qword_100939F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100939F50);
  }

  return result;
}

uint64_t sub_1001FEC38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001FEC78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

int64x2_t sub_1001FECEC()
{
  if (qword_1009205D8 != -1)
  {
    swift_once();
  }

  v0 = qword_10092DCF8;
  qword_10097E708 = 0;
  swift_weakInit();
  qword_10097E718 = 0;
  unk_10097E720 = 0;
  result = vdupq_n_s64(0x404A000000000000uLL);
  byte_10097E728 = 1;
  xmmword_10097E6E0 = result;
  *&qword_10097E6F0 = xmmword_1007B2390;
  qword_10097E700 = v0;
  return result;
}

uint64_t sub_1001FED84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_weakInit();
  swift_weakDestroy();
  return sub_100200220(a1, a2);
}

id sub_1001FEDDC(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_iconViews] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_layoutMetrics;
  if (qword_1009205E0 != -1)
  {
    swift_once();
  }

  v13 = &v5[v12];
  v14 = qword_10097E6F0;
  v15 = xmmword_10097E6E0;
  *(v13 + 5) = &type metadata for CGFloat;
  *(v13 + 6) = &protocol witness table for CGFloat;
  *(v13 + 2) = v14;
  v16 = byte_10097E728;
  v17 = *algn_10097E6F8;
  v18 = *&qword_10097E718;
  *v13 = v15;
  *(v13 + 56) = v17;
  *(v13 + 72) = v18;
  v13[88] = v16;
  sub_100201710(&xmmword_10097E6E0, &v5[OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_config]);
  v5[OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_enablePrerenderedIcons] = a1 & 1;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v39, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v19;
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v23 setClipsToBounds:1];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_config;
  swift_beginAccess();
  v25 = sub_100201710(v23 + v24, v37);
  __chkstk_darwin(v25);
  sub_1000169F4();
  sub_10074F4B4();
  sub_100016AA4(v37);
  swift_beginAccess();
  sub_100201758(v35, v23 + v24);
  swift_endAccess();
  sub_100201710(v23 + v24, v37);
  v26 = v37[0];
  v27 = v37[1];
  v35[5] = &type metadata for CGFloat;
  v35[6] = &protocol witness table for CGFloat;
  v28 = v37[3];
  v29 = v37[4];
  v35[2] = v37[2];
  v30 = v37[7];
  v31 = v37[8];
  v32 = v38;
  sub_100016AA4(v37);
  v35[0] = v26;
  v35[1] = v27;
  v35[7] = v28;
  v35[8] = v29;
  v35[9] = v30;
  v35[10] = v31;
  v36 = v32;
  v33 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_100181224(v35, v23 + v33);
  swift_endAccess();

  return v23;
}

id sub_1001FF114(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_iconViews;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_iconViews];
  if (v4 >> 62)
  {
    result = sub_100754664();
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
      v7 = sub_100754574();
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
    result = sub_100754664();
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
            v12 = sub_100754574();
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

uint64_t sub_1001FF2C4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_config;
  swift_beginAccess();
  sub_100201710(v0 + v1, v13);
  v2 = v13[0];
  v3 = v13[1];
  v11[5] = &type metadata for CGFloat;
  v11[6] = &protocol witness table for CGFloat;
  v4 = v13[3];
  v11[2] = v13[2];
  v5 = v13[4];
  v6 = v13[7];
  v7 = v13[8];
  v8 = v14;
  sub_100016AA4(v13);
  v11[0] = v2;
  v11[1] = v3;
  v11[7] = v4;
  v11[8] = v5;
  v11[9] = v6;
  v11[10] = v7;
  v12 = v8;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_100201790(v11, v0 + v9);
  swift_endAccess();
  [v0 setNeedsLayout];
  return sub_1002015BC(v11);
}

id sub_1001FF4E0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_iconViews;
  sub_1007433C4();

  v2 = sub_1007532D4();

  if (v2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v4 = *(v0 + v1);
      if (v4 >> 62)
      {
        result = sub_100754664();
        v5 = result;
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
LABEL_5:
          if (v5 < 1)
          {
            __break(1u);
            return result;
          }

          v6 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v7 = sub_100754574();
            }

            else
            {
              v7 = *(v4 + 8 * v6 + 32);
            }

            v8 = v7;
            ++v6;
            sub_10004D658();
            sub_100744274();
          }

          while (v5 != v6);

          return sub_1001FF114(_swiftEmptyArrayStorage);
        }
      }
    }

    return sub_1001FF114(_swiftEmptyArrayStorage);
  }

  return result;
}

void sub_1001FF650(CGFloat a1, CGFloat a2)
{
  if (a1 > 0.0 && a2 > 0.0)
  {
    v4 = v2;
    v6 = v2 + OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_config;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        sub_10074F3D4();

        if ((sub_1007532D4() & 1) == 0)
        {

          return;
        }

        v8 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_layoutMetrics;
        swift_beginAccess();
        sub_1001811E4(v4 + v8, v22);
        v9 = *(sub_1002002AC(v22, 0.0, 0.0, a1, a2) + 2);

        sub_1002015BC(v22);
        v10 = _swiftEmptyArrayStorage;
        v22[0] = _swiftEmptyArrayStorage;
        if (v9)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            if (v7 >> 62)
            {
              goto LABEL_35;
            }

            for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
            {
              v20 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_enablePrerenderedIcons;
              sub_1007433C4();
              v12 = 0;
              while (1)
              {
                v13 = (*(v4 + v20) == 1 ? sub_1007431B4() : sub_1007431D4());
                v14 = v13;
                sub_100753284();
                if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100753304();
                }

                sub_100753344();
                if (i == -1 && v12 == 0x8000000000000000)
                {
                  break;
                }

                v10 = v22[0];
                sub_100754574();
                sub_10074F364();
                sub_10004D658();
                sub_100744204();

                swift_unknownObjectRelease();

                if (v9 == ++v12)
                {
                  goto LABEL_30;
                }
              }

LABEL_34:
              __break(1u);
LABEL_35:
              ;
            }

            __break(1u);
            goto LABEL_37;
          }

          v21 = v7 & 0xFFFFFFFFFFFFFF8;
          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
LABEL_37:
            __break(1u);
            return;
          }

          v19 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_enablePrerenderedIcons;
          sub_1007433C4();
          v16 = 0;
          do
          {
            if (*(v4 + v19) == 1)
            {
              v17 = sub_1007431B4();
            }

            else
            {
              v17 = sub_1007431D4();
            }

            v18 = v17;
            sub_100753284();
            if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100753304();
            }

            sub_100753344();
            if (v16 % v15 >= *(v21 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            ++v16;
            v10 = v22[0];

            sub_10074F364();
            sub_10004D658();
            sub_100744204();
          }

          while (v9 != v16);
        }

LABEL_30:

        sub_1001FF114(v10);
      }
    }
  }
}

uint64_t sub_1001FFA40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v5);
  [v1 bounds];
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  result = CGRectIsEmpty(v57);
  if ((result & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_iconViews;
    v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_iconViews];
    if (!(v14 >> 62))
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v15 = *&v1[v13];
      *&v43 = v7;
      if (v15 >> 62)
      {
        v16 = sub_100754664();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v13;
      v17 = _swiftEmptyArrayStorage;
      if (v16)
      {
        v39 = v4;
        *&v41 = v3;
        *&v42 = v1;
        v45[0] = _swiftEmptyArrayStorage;

        result = sub_10001E208(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v18 = 0;
        v17 = v45[0];
        v51 = 0x3FF0000000000000;
        v52 = 0;
        v53 = 0;
        v54 = 0x3FF0000000000000;
        v55 = 0;
        v56 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = sub_100754574();
          }

          else
          {
            v19 = *(v15 + 8 * v18 + 32);
          }

          v20 = v19;
          [v20 transform];
          if (sub_100753714())
          {
            *&v44.d = sub_100009D34();
            *&v44.tx = &protocol witness table for UIView;
            *&v44.a = v20;
            v21 = v20;
          }

          else
          {
            sub_100753C84();
          }

          sub_100012160(&v44, v46);

          v45[0] = v17;
          v23 = v17[2];
          v22 = v17[3];
          if (v23 >= v22 >> 1)
          {
            sub_10001E208((v22 > 1), v23 + 1, 1);
          }

          ++v18;
          v24 = v47;
          v25 = v48;
          v26 = sub_10007271C(v46, v47);
          v27 = __chkstk_darwin(v26);
          v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v29, v27);
          sub_10027C48C(v23, v29, v45, v24, v25);
          sub_10000C620(v46);
          v17 = v45[0];
        }

        while (v16 != v18);

        v1 = v42;
        v3 = v41;
        v4 = v39;
      }

      v31 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_layoutMetrics;
      swift_beginAccess();
      sub_1001811E4(&v1[v31], v46);
      v49 = v17;
      v32 = v43;
      IconArtworkGridLayout.placeChildren(relativeTo:in:)(x, y, width, height);
      (*(v4 + 8))(v32, v3);
      v33 = &v1[OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_config];
      swift_beginAccess();
      result = CGAffineTransformMakeRotation(&v44, v33[4]);
      v42 = *&v44.c;
      v43 = *&v44.a;
      v41 = *&v44.tx;
      v34 = *&v1[v40];
      if (v34 >> 62)
      {
        result = sub_100754664();
        v35 = result;
        if (result)
        {
LABEL_21:
          if (v35 >= 1)
          {

            v36 = 0;
            do
            {
              if ((v34 & 0xC000000000000001) != 0)
              {
                v37 = sub_100754574();
              }

              else
              {
                v37 = *(v34 + 8 * v36 + 32);
              }

              v38 = v37;
              ++v36;
              *&v44.a = v43;
              *&v44.c = v42;
              *&v44.tx = v41;
              [v37 setTransform:&v44];
            }

            while (v35 != v36);

            return sub_100200258(v46);
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          goto LABEL_21;
        }
      }

      return sub_100200258(v46);
    }

    result = sub_100754664();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_100200030(uint64_t a1, uint64_t a2, double a3, double a4)
{

  *(a1 + 40) = a2;
  result = swift_weakAssign();
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_10020014C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1002001A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

char *sub_1002002AC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v206, v182);
  v207.origin.x = a4 * -0.5;
  v207.origin.y = a5 * -0.5;
  v207.size.width = a4;
  v207.size.height = a5;
  v208 = CGRectApplyAffineTransform(v207, &v206);
  x = v208.origin.x;
  y = v208.origin.y;
  width = v208.size.width;
  v204 = v208.size.width;
  height = v208.size.height;
  v200 = v208.size.height;
  MinX = CGRectGetMinX(v208);
  v195 = a2;
  v209.origin.x = a2;
  v196 = a3;
  v209.origin.y = a3;
  v209.size.width = a4;
  v209.size.height = a5;
  v197 = a5;
  v203 = MinX + CGRectGetMidX(v209);
  v210.origin.x = x;
  v210.origin.y = y;
  v210.size.width = width;
  v210.size.height = height;
  MinY = CGRectGetMinY(v210);
  v211.origin.x = a2;
  v211.origin.y = a3;
  v211.size.width = a4;
  v19 = a4;
  v211.size.height = a5;
  v202 = MinY + CGRectGetMidY(v211);
  v21 = *a1;
  v20 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v206, v182);
  v212.origin.x = v21 * -0.5;
  v212.origin.y = v20 * -0.5;
  v212.size.width = v21;
  v212.size.height = v20;
  v194 = v20;
  v213 = CGRectApplyAffineTransform(v212, &v206);
  v22 = v213.origin.x;
  v23 = v213.origin.y;
  v24 = v213.size.width;
  v25 = v213.size.height;
  v26 = CGRectGetMinX(v213);
  v214.origin.x = 0.0;
  v214.origin.y = 0.0;
  v214.size.width = v21;
  v214.size.height = v20;
  v199 = v26 + CGRectGetMidX(v214);
  v215.origin.x = v22;
  v215.origin.y = v23;
  v215.size.width = v24;
  v215.size.height = v25;
  v27 = CGRectGetMinY(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v21;
  v216.size.height = v20;
  v201 = v27 + CGRectGetMidY(v216);
  sub_10000C888((a1 + 16), *(a1 + 40));
  sub_100536120();
  sub_100750564();
  v29 = v28;
  v189 = v28;
  (*(v11 + 8))(v13, v10);
  v30 = *(a1 + 56);
  v192 = v21;
  v31 = v21 + v29;
  v32 = floor(v31 * v30);
  v33 = v195;
  v217.origin.x = v195;
  v34 = v196;
  v217.origin.y = v196;
  v217.size.width = v19;
  v35 = v197;
  v217.size.height = v197;
  MidX = CGRectGetMidX(v217);
  v218.origin.x = v33;
  v218.origin.y = v34;
  v193 = v19;
  v218.size.width = v19;
  v218.size.height = v35;
  MidY = CGRectGetMidY(v218);
  v36 = v182;
  v37 = __sincos_stret(v182);
  v188 = v37.__cosval * v31;
  v187 = v37.__sinval * v31;
  v38 = __sincos_stret(v36 + 3.14159265);
  v191 = v38.__cosval * v31;
  v190 = v38.__sinval * v31;
  v179 = v37.__cosval * v32;
  v178 = v37.__sinval * v32;
  v39 = __sincos_stret(v36 + 1.57079633);
  sinval = v39.__sinval;
  cosval = v39.__cosval;
  v40 = v194 + v189;
  v41 = v199;
  v219.origin.x = v199;
  v42 = v201;
  v219.origin.y = v201;
  v219.size.width = v24;
  v219.size.height = v25;
  v43 = MidX + CGRectGetMidX(v219);
  v220.origin.x = v41;
  v220.origin.y = v42;
  v220.size.width = v24;
  v220.size.height = v25;
  v44 = v43 + CGRectGetWidth(v220) * -0.5;
  v221.origin.x = v41;
  v221.origin.y = v42;
  v221.size.width = v24;
  v221.size.height = v25;
  v45 = MidY + CGRectGetMidY(v221);
  v222.origin.x = v41;
  v222.origin.y = v42;
  v222.size.width = v24;
  v222.size.height = v25;
  v223.origin.y = v45 + CGRectGetHeight(v222) * -0.5;
  v299.origin.x = v203;
  v299.size.width = v204;
  v223.origin.x = v44;
  v299.origin.y = v202;
  v223.size.width = v24;
  v223.size.height = v25;
  v299.size.height = v200;
  v46 = CGRectIntersectsRect(v223, v299);
  v177 = v40;
  MinX = v24;
  v198 = v25;
  if (v46)
  {
    v184 = cosval * v40 + v179;
    v183 = sinval * v40 + v178;
    v47 = _swiftEmptyArrayStorage;
    v48 = 0.5;
    v49 = MidX;
    v50 = MidY;
    v51 = v200;
    v52 = v201;
    v53 = v199;
    do
    {
      cosval = v49;
      v229.origin.x = v53;
      v229.origin.y = v52;
      v229.size.width = v24;
      v229.size.height = v25;
      v56 = v49 + CGRectGetMidX(v229);
      v230.origin.x = v53;
      v230.origin.y = v52;
      v230.size.width = v24;
      v230.size.height = v25;
      v57 = v56 - CGRectGetWidth(v230) * v48;
      v231.origin.x = v53;
      v231.origin.y = v52;
      v231.size.width = v24;
      v231.size.height = v25;
      v189 = v50 + CGRectGetMidY(v231);
      v232.origin.x = v53;
      v232.origin.y = v52;
      v232.size.width = v24;
      v232.size.height = v25;
      v58 = v189 - CGRectGetHeight(v232) * v48;
      v233.origin.x = v57;
      v233.origin.y = v58;
      v233.size.width = v24;
      v233.size.height = v25;
      v301.origin.y = v202;
      v301.origin.x = v203;
      v301.size.width = v204;
      v301.size.height = v51;
      v59 = CGRectIntersectsRect(v233, v301);
      sinval = v50;
      if (v59)
      {
        v189 = cosval;
        v60 = v50;
        do
        {
          v239.origin.x = v57;
          v239.origin.y = v58;
          v239.size.width = v24;
          v239.size.height = v25;
          v303.origin.x = v195;
          v303.origin.y = v196;
          v303.size.width = v193;
          v303.size.height = v197;
          if (CGRectIntersectsRect(v239, v303))
          {
            v240.origin.x = 0.0;
            v240.origin.y = 0.0;
            v70 = v192;
            v240.size.width = v192;
            v71 = v194;
            v240.size.height = v194;
            v72 = CGRectGetMidX(v240);
            v241.origin.x = 0.0;
            v241.origin.y = 0.0;
            v241.size.width = v70;
            v241.size.height = v71;
            v73 = CGRectGetWidth(v241);
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v242.size.width = v70;
            v242.size.height = v71;
            v74 = CGRectGetMidY(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v70;
            v243.size.height = v71;
            v75 = CGRectGetHeight(v243);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100254AF0(0, *(v47 + 2) + 1, 1, v47);
            }

            v77 = *(v47 + 2);
            v76 = *(v47 + 3);
            v62 = v189;
            if (v77 >= v76 >> 1)
            {
              v47 = sub_100254AF0((v76 > 1), v77 + 1, 1, v47);
            }

            v61 = 0.5;
            *(v47 + 2) = v77 + 1;
            v78 = &v47[32 * v77];
            v78[4] = v62 + v72 - v73 * 0.5;
            v78[5] = v60 + v74 - v75 * 0.5;
            v79 = v194;
            v78[6] = v192;
            v78[7] = v79;
          }

          else
          {
            v61 = 0.5;
            v62 = v189;
          }

          v63 = v188 + v62;
          v60 = v187 + v60;
          v25 = v198;
          v64 = v199;
          v234.origin.x = v199;
          v65 = v201;
          v234.origin.y = v201;
          v24 = MinX;
          v234.size.width = MinX;
          v234.size.height = v198;
          v66 = CGRectGetMidX(v234);
          v189 = v63;
          v67 = v63 + v66;
          v235.origin.x = v64;
          v235.origin.y = v65;
          v235.size.width = v24;
          v235.size.height = v25;
          v57 = v67 - CGRectGetWidth(v235) * v61;
          v236.origin.x = v64;
          v236.origin.y = v65;
          v236.size.width = v24;
          v236.size.height = v25;
          v68 = v60 + CGRectGetMidY(v236);
          v237.origin.x = v64;
          v237.origin.y = v65;
          v237.size.width = v24;
          v237.size.height = v25;
          v58 = v68 - CGRectGetHeight(v237) * v61;
          v238.origin.x = v57;
          v238.origin.y = v58;
          v238.size.width = v24;
          v238.size.height = v25;
          v302.origin.y = v202;
          v302.origin.x = v203;
          v302.size.width = v204;
          v302.size.height = v200;
          v69 = CGRectIntersectsRect(v238, v302);
          v50 = sinval;
        }

        while (v69);
      }

      v80 = v191 + cosval;
      v81 = v190 + v50;
      v244.size.height = v198;
      v82 = v199;
      v244.origin.x = v199;
      v83 = v201;
      v244.origin.y = v201;
      v244.size.width = v24;
      v84 = v80 + CGRectGetMidX(v244);
      v245.origin.x = v82;
      v245.origin.y = v83;
      v245.size.width = v24;
      v245.size.height = v198;
      v85 = v84 - CGRectGetWidth(v245) * 0.5;
      v246.origin.x = v82;
      v246.origin.y = v83;
      v246.size.width = v24;
      v246.size.height = v198;
      v86 = v81 + CGRectGetMidY(v246);
      v247.origin.x = v82;
      v247.origin.y = v83;
      v25 = v198;
      v247.size.width = v24;
      v247.size.height = v198;
      v87 = v86 - CGRectGetHeight(v247) * 0.5;
      v248.origin.x = v85;
      v248.origin.y = v87;
      v248.size.width = v24;
      v248.size.height = v25;
      v304.origin.y = v202;
      v304.origin.x = v203;
      v304.size.width = v204;
      v304.size.height = v200;
      if (CGRectIntersectsRect(v248, v304))
      {
        do
        {
          v254.origin.x = v85;
          v254.origin.y = v87;
          v254.size.width = v24;
          v254.size.height = v25;
          v306.origin.x = v195;
          v306.origin.y = v196;
          v306.size.width = v193;
          v306.size.height = v197;
          if (CGRectIntersectsRect(v254, v306))
          {
            v255.origin.x = 0.0;
            v255.origin.y = 0.0;
            v94 = v192;
            v255.size.width = v192;
            v95 = v194;
            v255.size.height = v194;
            v96 = CGRectGetMidX(v255);
            v256.origin.x = 0.0;
            v256.origin.y = 0.0;
            v256.size.width = v94;
            v256.size.height = v95;
            v97 = CGRectGetWidth(v256);
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v257.size.width = v94;
            v257.size.height = v95;
            v189 = CGRectGetMidY(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v94;
            v258.size.height = v95;
            v98 = CGRectGetHeight(v258);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100254AF0(0, *(v47 + 2) + 1, 1, v47);
            }

            v100 = *(v47 + 2);
            v99 = *(v47 + 3);
            if (v100 >= v99 >> 1)
            {
              v47 = sub_100254AF0((v99 > 1), v100 + 1, 1, v47);
            }

            v88 = 0.5;
            v101 = v81 + v189 - v98 * 0.5;
            *(v47 + 2) = v100 + 1;
            v102 = &v47[32 * v100];
            v102[4] = v80 + v96 - v97 * 0.5;
            v102[5] = v101;
            v103 = v194;
            v102[6] = v192;
            v102[7] = v103;
          }

          else
          {
            v88 = 0.5;
          }

          v80 = v191 + v80;
          v81 = v190 + v81;
          v89 = v199;
          v249.origin.x = v199;
          v90 = v201;
          v249.origin.y = v201;
          v249.size.width = v24;
          v91 = v198;
          v249.size.height = v198;
          v92 = v80 + CGRectGetMidX(v249);
          v250.origin.x = v89;
          v250.origin.y = v90;
          v250.size.width = MinX;
          v250.size.height = v91;
          v85 = v92 - CGRectGetWidth(v250) * v88;
          v251.origin.x = v89;
          v251.origin.y = v90;
          v251.size.width = MinX;
          v251.size.height = v91;
          v93 = v81 + CGRectGetMidY(v251);
          v252.origin.x = v89;
          v252.origin.y = v90;
          v25 = v91;
          v24 = MinX;
          v252.size.width = MinX;
          v252.size.height = v25;
          v87 = v93 - CGRectGetHeight(v252) * v88;
          v253.origin.x = v85;
          v253.origin.y = v87;
          v253.size.width = v24;
          v253.size.height = v25;
          v305.origin.y = v202;
          v305.origin.x = v203;
          v305.size.width = v204;
          v305.size.height = v200;
        }

        while (CGRectIntersectsRect(v253, v305));
      }

      v49 = v184 + cosval;
      v50 = v183 + sinval;
      v53 = v199;
      v224.origin.x = v199;
      v52 = v201;
      v224.origin.y = v201;
      v224.size.width = v24;
      v224.size.height = v25;
      v54 = v49 + CGRectGetMidX(v224);
      v225.origin.x = v53;
      v225.origin.y = v52;
      v225.size.width = v24;
      v225.size.height = v25;
      v48 = 0.5;
      v189 = v54 - CGRectGetWidth(v225) * 0.5;
      v226.origin.x = v53;
      v226.origin.y = v52;
      v226.size.width = v24;
      v226.size.height = v25;
      v55 = v50 + CGRectGetMidY(v226);
      v227.origin.x = v53;
      v227.origin.y = v52;
      v227.size.width = v24;
      v227.size.height = v25;
      v228.origin.y = v55 - CGRectGetHeight(v227) * 0.5;
      v228.origin.x = v189;
      v228.size.width = v24;
      v228.size.height = v25;
      v300.origin.y = v202;
      v300.origin.x = v203;
      v300.size.width = v204;
      v51 = v200;
      v300.size.height = v200;
    }

    while (CGRectIntersectsRect(v228, v300));
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    v52 = v201;
    v53 = v199;
  }

  v104 = __sincos_stret(v182 + -1.57079633);
  v184 = v104.__cosval * v177 - v179;
  v105 = MidX + v184;
  v183 = v104.__sinval * v177 - v178;
  v106 = MidY + v183;
  v259.origin.x = v53;
  v259.origin.y = v52;
  v259.size.width = v24;
  v259.size.height = v25;
  v107 = CGRectGetMidX(v259);
  sinval = v105;
  v108 = v105 + v107;
  v260.origin.x = v53;
  v260.origin.y = v52;
  v260.size.width = v24;
  v260.size.height = v25;
  v109 = v53;
  v110 = v108 - CGRectGetWidth(v260) * 0.5;
  v261.origin.x = v109;
  v261.origin.y = v52;
  v261.size.width = v24;
  v261.size.height = v25;
  v111 = CGRectGetMidY(v261);
  cosval = v106;
  v112 = v106 + v111;
  v262.origin.x = v109;
  v262.origin.y = v52;
  v262.size.width = v24;
  v262.size.height = v25;
  v263.origin.y = v112 - CGRectGetHeight(v262) * 0.5;
  v307.size.height = v200;
  v263.origin.x = v110;
  v263.size.width = v24;
  v263.size.height = v25;
  v307.origin.y = v202;
  v307.origin.x = v203;
  v307.size.width = v204;
  if (CGRectIntersectsRect(v263, v307))
  {
    v113 = sinval;
    v114 = cosval;
    v115 = v199;
    do
    {
      v269.origin.x = v115;
      v269.origin.y = v52;
      v269.size.width = v24;
      v269.size.height = v25;
      v119 = v113 + CGRectGetMidX(v269);
      v270.origin.x = v115;
      v270.origin.y = v52;
      v270.size.width = v24;
      v270.size.height = v25;
      v120 = v119 - CGRectGetWidth(v270) * 0.5;
      v271.origin.x = v115;
      v271.origin.y = v52;
      v271.size.width = v24;
      v271.size.height = v25;
      v121 = v114 + CGRectGetMidY(v271);
      v272.origin.x = v115;
      v272.origin.y = v52;
      v272.size.width = v24;
      v272.size.height = v25;
      v122 = v121 - CGRectGetHeight(v272) * 0.5;
      v273.origin.x = v120;
      v273.origin.y = v122;
      v273.size.width = v24;
      v273.size.height = v25;
      v309.origin.y = v202;
      v309.origin.x = v203;
      v309.size.width = v204;
      v309.size.height = v200;
      v123 = CGRectIntersectsRect(v273, v309);
      sinval = v113;
      cosval = v114;
      if (v123)
      {
        v189 = v113;
        do
        {
          v279.origin.x = v120;
          v279.origin.y = v122;
          v279.size.width = v24;
          v279.size.height = v25;
          v311.origin.x = v195;
          v311.origin.y = v196;
          v311.size.width = v193;
          v311.size.height = v197;
          if (CGRectIntersectsRect(v279, v311))
          {
            v280.origin.x = 0.0;
            v280.origin.y = 0.0;
            v132 = v192;
            v280.size.width = v192;
            v133 = v194;
            v280.size.height = v194;
            v134 = CGRectGetMidX(v280);
            v281.origin.x = 0.0;
            v281.origin.y = 0.0;
            v281.size.width = v132;
            v281.size.height = v133;
            v135 = CGRectGetWidth(v281);
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v282.size.width = v132;
            v282.size.height = v133;
            v136 = CGRectGetMidY(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v132;
            v283.size.height = v133;
            v137 = CGRectGetHeight(v283);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100254AF0(0, *(v47 + 2) + 1, 1, v47);
            }

            v139 = *(v47 + 2);
            v138 = *(v47 + 3);
            v140 = 0.5;
            v125 = v189;
            if (v139 >= v138 >> 1)
            {
              v145 = sub_100254AF0((v138 > 1), v139 + 1, 1, v47);
              v140 = 0.5;
              v47 = v145;
            }

            v141 = v125 + v134 - v135 * v140;
            v142 = v114 + v136;
            v124 = 0.5;
            *(v47 + 2) = v139 + 1;
            v143 = &v47[32 * v139];
            v143[4] = v141;
            v143[5] = v142 - v137 * 0.5;
            v144 = v194;
            v143[6] = v192;
            v143[7] = v144;
          }

          else
          {
            v124 = 0.5;
            v125 = v189;
          }

          v126 = v188 + v125;
          v114 = v187 + v114;
          v25 = v198;
          v127 = v199;
          v274.origin.x = v199;
          v128 = v201;
          v274.origin.y = v201;
          v24 = MinX;
          v274.size.width = MinX;
          v274.size.height = v198;
          v129 = CGRectGetMidX(v274);
          v189 = v126;
          v130 = v126 + v129;
          v275.origin.x = v127;
          v275.origin.y = v128;
          v275.size.width = v24;
          v275.size.height = v25;
          v120 = v130 - CGRectGetWidth(v275) * v124;
          v276.origin.x = v127;
          v276.origin.y = v128;
          v276.size.width = v24;
          v276.size.height = v25;
          v131 = v114 + CGRectGetMidY(v276);
          v277.origin.x = v127;
          v277.origin.y = v128;
          v277.size.width = v24;
          v277.size.height = v25;
          v122 = v131 - CGRectGetHeight(v277) * v124;
          v278.origin.x = v120;
          v278.origin.y = v122;
          v278.size.width = v24;
          v278.size.height = v25;
          v310.origin.y = v202;
          v310.origin.x = v203;
          v310.size.width = v204;
          v310.size.height = v200;
        }

        while (CGRectIntersectsRect(v278, v310));
      }

      v146 = v191 + sinval;
      v147 = v190 + cosval;
      v148 = v199;
      v284.origin.x = v199;
      v284.origin.y = v201;
      v284.size.width = v24;
      v284.size.height = v25;
      v149 = CGRectGetMidX(v284);
      v189 = v146;
      v150 = v146 + v149;
      v285.origin.x = v148;
      v285.origin.y = v201;
      v285.size.width = v24;
      v285.size.height = v25;
      v151 = v150 - CGRectGetWidth(v285) * 0.5;
      v286.origin.x = v148;
      v286.origin.y = v201;
      v286.size.width = v24;
      v286.size.height = v25;
      v152 = v147 + CGRectGetMidY(v286);
      v287.origin.x = v148;
      v52 = v201;
      v287.origin.y = v201;
      v287.size.width = v24;
      v287.size.height = v25;
      v153 = v152 - CGRectGetHeight(v287) * 0.5;
      v288.origin.x = v151;
      v288.origin.y = v153;
      v288.size.width = v24;
      v288.size.height = v25;
      v312.origin.y = v202;
      v312.origin.x = v203;
      v312.size.width = v204;
      v312.size.height = v200;
      if (CGRectIntersectsRect(v288, v312))
      {
        do
        {
          v294.origin.x = v151;
          v294.origin.y = v153;
          v294.size.width = v24;
          v294.size.height = v25;
          v314.origin.x = v195;
          v314.origin.y = v196;
          v314.size.width = v193;
          v314.size.height = v197;
          if (CGRectIntersectsRect(v294, v314))
          {
            v295.origin.x = 0.0;
            v295.origin.y = 0.0;
            v161 = v192;
            v295.size.width = v192;
            v162 = v194;
            v295.size.height = v194;
            v163 = CGRectGetMidX(v295);
            v296.origin.x = 0.0;
            v296.origin.y = 0.0;
            v296.size.width = v161;
            v296.size.height = v162;
            v164 = CGRectGetWidth(v296);
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v297.size.width = v161;
            v297.size.height = v162;
            v165 = CGRectGetMidY(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v161;
            v298.size.height = v162;
            v166 = CGRectGetHeight(v298);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100254AF0(0, *(v47 + 2) + 1, 1, v47);
            }

            v168 = *(v47 + 2);
            v167 = *(v47 + 3);
            v169 = 0.5;
            v155 = v189;
            if (v168 >= v167 >> 1)
            {
              v174 = sub_100254AF0((v167 > 1), v168 + 1, 1, v47);
              v169 = 0.5;
              v47 = v174;
            }

            v170 = v155 + v163 - v164 * v169;
            v171 = v147 + v165;
            v154 = 0.5;
            *(v47 + 2) = v168 + 1;
            v172 = &v47[32 * v168];
            v172[4] = v170;
            v172[5] = v171 - v166 * 0.5;
            v173 = v194;
            v172[6] = v192;
            v172[7] = v173;
          }

          else
          {
            v154 = 0.5;
            v155 = v189;
          }

          v156 = v191 + v155;
          v147 = v190 + v147;
          v25 = v198;
          v157 = v199;
          v289.origin.x = v199;
          v52 = v201;
          v289.origin.y = v201;
          v24 = MinX;
          v289.size.width = MinX;
          v289.size.height = v198;
          v158 = CGRectGetMidX(v289);
          v189 = v156;
          v159 = v156 + v158;
          v290.origin.x = v157;
          v290.origin.y = v52;
          v290.size.width = v24;
          v290.size.height = v25;
          v151 = v159 - CGRectGetWidth(v290) * v154;
          v291.origin.x = v157;
          v291.origin.y = v52;
          v291.size.width = v24;
          v291.size.height = v25;
          v160 = v147 + CGRectGetMidY(v291);
          v292.origin.x = v157;
          v292.origin.y = v52;
          v292.size.width = v24;
          v292.size.height = v25;
          v153 = v160 - CGRectGetHeight(v292) * v154;
          v293.origin.x = v151;
          v293.origin.y = v153;
          v293.size.width = v24;
          v293.size.height = v25;
          v313.origin.y = v202;
          v313.origin.x = v203;
          v313.size.width = v204;
          v313.size.height = v200;
        }

        while (CGRectIntersectsRect(v293, v313));
      }

      v113 = v184 + sinval;
      v114 = v183 + cosval;
      v115 = v199;
      v264.origin.x = v199;
      v264.origin.y = v52;
      v264.size.width = v24;
      v264.size.height = v25;
      v116 = v113 + CGRectGetMidX(v264);
      v265.origin.x = v115;
      v265.origin.y = v52;
      v265.size.width = v24;
      v265.size.height = v25;
      v117 = v116 - CGRectGetWidth(v265) * 0.5;
      v266.origin.x = v115;
      v266.origin.y = v52;
      v266.size.width = v24;
      v266.size.height = v25;
      v118 = v114 + CGRectGetMidY(v266);
      v267.origin.x = v115;
      v267.origin.y = v52;
      v267.size.width = v24;
      v267.size.height = v25;
      v268.origin.y = v118 - CGRectGetHeight(v267) * 0.5;
      v268.origin.x = v117;
      v268.size.width = v24;
      v268.size.height = v25;
      v308.origin.y = v202;
      v308.origin.x = v203;
      v308.size.width = v204;
      v308.size.height = v200;
    }

    while (CGRectIntersectsRect(v268, v308));
  }

  return v47;
}

void sub_100201610()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_iconViews) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_layoutMetrics;
  if (qword_1009205E0 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_10097E6F0;
  v4 = xmmword_10097E6E0;
  *(v2 + 40) = &type metadata for CGFloat;
  *(v2 + 48) = &protocol witness table for CGFloat;
  *(v2 + 16) = v3;
  v5 = byte_10097E728;
  v6 = *algn_10097E6F8;
  v7 = *&qword_10097E718;
  *v2 = v4;
  *(v2 + 56) = v6;
  *(v2 + 72) = v7;
  *(v2 + 88) = v5;
  sub_100201710(&xmmword_10097E6E0, v0 + OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_config);
  sub_100754644();
  __break(1u);
}

__n128 sub_100201748(uint64_t a1)
{
  result = v1[2];
  *(a1 + 56) = result;
  *(a1 + 72) = 0;
  return result;
}

id sub_1002017EC()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{0.0, 1.0, 1.0}];
  qword_10092DD48 = result;
  return result;
}

id sub_100201830()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:38.0 initialVelocity:{0.0, 0.0}];
  qword_10092DD50 = result;
  return result;
}

void sub_10020191C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  [v2 setHidden:{objc_msgSendSuper2(&v7, "isSelected") ^ 1}];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isSelected"))
  {
    v4 = [objc_opt_self() systemWhiteColor];
  }

  else
  {
    sub_100016C60(0, &qword_100923500);
    v4 = sub_100753DD4();
  }

  v5 = v4;
  [v3 setTextColor:v4];
}

id sub_100201A68(char a1)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setEnabled:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel];
  v10.receiver = v1;
  v10.super_class = ObjectType;
  if (objc_msgSendSuper2(&v10, "isEnabled"))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.4;
  }

  [v4 setAlpha:v5];
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_artworkView];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isEnabled"))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.4;
  }

  return [v6 setAlpha:v7];
}

uint64_t sub_100201B40@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_100751144();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v30 - v6;
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v36 = sub_100750A34();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v32 = &v30 - v16;
  sub_100750A04();
  v30 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_artworkView);
  v17 = v30;
  v48 = sub_1007433C4();
  v49 = sub_100203318();
  v47[0] = v17;
  *(v12 + 3) = &type metadata for CGFloat;
  *(v12 + 4) = &protocol witness table for CGFloat;
  *v12 = 0x4046000000000000;
  v18 = enum case for Resize.Rule.replaced(_:);
  v19 = *(v3 + 104);
  v19(v12, enum case for Resize.Rule.replaced(_:), v2);
  *(v9 + 3) = &type metadata for CGFloat;
  *(v9 + 4) = &protocol witness table for CGFloat;
  *v9 = 0x4046000000000000;
  v19(v9, v18, v2);
  v20 = enum case for Resize.Rule.unchanged(_:);
  v19(v31, enum case for Resize.Rule.unchanged(_:), v2);
  v19(v34, v20, v2);
  v51 = sub_100751154();
  v52 = &protocol witness table for Resize;
  sub_10000D134(v50);
  v21 = v30;
  sub_100751164();
  v22 = v32;
  sub_100750A14();
  v23 = *(v35 + 8);
  v24 = v36;
  v23(v14, v36);
  sub_10000C620(v50);
  v25 = *(v33 + OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel);
  v48 = sub_100745C84();
  v49 = &protocol witness table for UILabel;
  v47[0] = v25;
  v51 = v24;
  v52 = &protocol witness table for HorizontalStack;
  sub_10000D134(v50);
  v26 = v25;
  sub_100750A14();
  v23(v22, v24);
  sub_10000C620(v47);
  v49 = &protocol witness table for CGFloat;
  v48 = &type metadata for CGFloat;
  v46 = &protocol witness table for CGFloat;
  v47[0] = 0x4024000000000000;
  v45 = &type metadata for CGFloat;
  v43 = &protocol witness table for CGFloat;
  v44 = 0x4024000000000000;
  v42 = &type metadata for CGFloat;
  v40 = &protocol witness table for CGFloat;
  v41 = 0x4024000000000000;
  v39 = &type metadata for CGFloat;
  v38 = 0x4024000000000000;
  v27 = sub_1007511A4();
  v28 = v37;
  v37[3] = v27;
  v28[4] = &protocol witness table for Margins;
  sub_10000D134(v28);
  return sub_1007511B4();
}

id sub_1002020C8()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  sub_100201B40(v7);
  sub_10000C888(v7, v7[3]);
  sub_1007477B4();
  v2 = [v0 traitCollection];
  sub_100751244();

  sub_10000C620(v7);
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_shadowView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_backgroundView];
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  [v4 bounds];
  return [v5 setFrame:?];
}

void sub_1002023C8(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1009205E8 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10092DD48 timingParameters:0.08];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = ObjectType;
  v7[4] = sub_100203810;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000CF7B0;
  v7[3] = &unk_10086C608;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 addAnimations:v5];
  _Block_release(v5);
  [v3 startAnimation];
}

double sub_100202788()
{
  sub_100201B40(v3);
  sub_10000C888(v3, v3[3]);
  sub_100751254();
  v1 = v0;
  sub_10000C620(v3);
  return v1;
}

char *sub_10020287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v83 = a3;
  v91 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_100743584();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v7 - 8);
  v86 = &v80 - v8;
  v9 = sub_100752AC4();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v15 - 8);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel;
  *v17 = UIFontTextStyleSubheadline;
  *(v17 + 1) = UIFontWeightSemibold;
  v19 = enum case for FontUseCase.preferredFontDerivative(_:);
  v20 = sub_100750534();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v22 = objc_allocWithZone(sub_100745C84());
  v23 = UIFontTextStyleSubheadline;
  *&v4[v18] = sub_100745C74();
  v24 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_shadowView;
  sub_100743034();
  *&v4[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_artworkView;
  sub_1007433C4();
  *&v4[v25] = sub_1007431D4();
  v26 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_backgroundView;
  sub_100746ED4();
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *&v4[v27] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v28 = &v4[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_action];
  v29 = v83;
  *v28 = v82;
  *(v28 + 1) = v29;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_category] = v91;
  v95.receiver = v4;
  v95.super_class = ObjectType;

  v30 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  v31 = sub_10074B9F4();
  v33 = v32;

  v94 = &type metadata for String;
  v93[0] = v31;
  v93[1] = v33;
  memset(v92, 0, sizeof(v92));
  v34 = v81;
  sub_100752AB4();
  sub_1000277BC(v92);
  sub_1000277BC(v93);
  sub_100753C74();
  (*(v84 + 8))(v34, v85);
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_shadowView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_shadowView]];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_backgroundView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_backgroundView]];
  v37 = *&v30[v36];
  v84 = v36;
  v85 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  [v37 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView]];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_artworkView]];
  v39 = *&v30[v38];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  sub_100743264();

  v83 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel]];
  v43 = qword_100920500;
  v44 = *&v30[v35];
  if (v43 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v45 = sub_10074F0C4();
    v46 = sub_10000D0FC(v45, qword_10097E2C0);
    v47 = *(v45 - 8);
    v48 = v86;
    (*(v47 + 16))(v86, v46, v45);
    (*(v47 + 56))(v48, 0, 1, v45);
    sub_100743014();

    v49 = *&v30[v35];
    v50 = enum case for CornerStyle.continuous(_:);
    v51 = v87;
    v52 = v88;
    v86 = *(v88 + 104);
    v53 = v89;
    (v86)(v87, enum case for CornerStyle.continuous(_:), v89);
    v54 = v49;
    sub_100743024();

    v55 = *(v52 + 8);
    v55(v51, v53);
    v56 = v84;
    v57 = *&v30[v84];
    v88 = sub_100016C60(0, &qword_100923500);
    v58 = v57;
    v59 = sub_100753E94();
    [v58 setBackgroundColor:v59];

    v60 = *&v30[v56];
    (v86)(v51, v50, v53);
    v61 = v60;
    sub_100746E34();

    v55(v51, v53);
    v62 = v83;
    v63 = *&v30[v83];
    sub_10074BA04();
    v64 = sub_100753064();

    [v63 setText:v64];

    v65 = *&v30[v62];
    v66 = sub_100753DD4();
    [v65 setTextColor:v66];

    v67 = v85;
    [*&v30[v85] setHidden:1];
    v68 = *&v30[v67];
    sub_10000C518(&unk_1009231A0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1007A7210;
    v70 = v68;
    *(v69 + 32) = sub_10074B9E4();
    *(v69 + 40) = sub_10074B9C4();
    *&v70[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v69;

    sub_100037ED0();

    v71 = [v30 subviews];
    sub_100016C60(0, &qword_100922300);
    v72 = sub_1007532A4();

    if (v72 >> 62)
    {
      break;
    }

    v44 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v44)
    {
      goto LABEL_16;
    }

LABEL_4:
    v35 = 0;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v73 = sub_100754574();
      }

      else
      {
        if (v35 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v73 = *(v72 + 8 * v35 + 32);
      }

      v74 = v73;
      v75 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v73 setUserInteractionEnabled:0];

      ++v35;
      if (v75 == v44)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v44 = sub_100754664();
  if (v44)
  {
    goto LABEL_4;
  }

LABEL_16:

  v76 = v30;
  [v76 addTarget:v76 action:"didTap" forControlEvents:64];
  [v76 addTarget:v76 action:"didPress:" forControlEvents:1];

  [v76 addTarget:v76 action:"didRelease:" forControlEvents:480];
  sub_10000C518(&unk_1009249D0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007A5A00;
  *(v77 + 32) = sub_1007519E4();
  *(v77 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v94 = ObjectType;
  v93[0] = v76;
  v78 = v76;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v93);
  return v78;
}

unint64_t sub_100203318()
{
  result = qword_10092E370;
  if (!qword_10092E370)
  {
    sub_1007433C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E370);
  }

  return result;
}

void sub_100203370()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel;
  *v8 = UIFontTextStyleSubheadline;
  *(v8 + 1) = UIFontWeightSemibold;
  v10 = enum case for FontUseCase.preferredFontDerivative(_:);
  v11 = sub_100750534();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  objc_allocWithZone(sub_100745C84());
  v13 = UIFontTextStyleSubheadline;
  *(v1 + v9) = sub_100745C74();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_shadowView;
  sub_100743034();
  *(v1 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_artworkView;
  sub_1007433C4();
  *(v1 + v15) = sub_1007431D4();
  v16 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_backgroundView;
  sub_100746ED4();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  sub_100754644();
  __break(1u);
}

void sub_100203640(void *a1)
{
  if (qword_1009205F0 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10092DD50 timingParameters:0.5];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_10011C1DC;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000CF7B0;
  v6[3] = &unk_10086C5B8;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
}

uint64_t sub_100203788()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002037C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002037D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100203820(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10074F7B4();
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10074AB44();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_10000C518(&qword_10092DE18);
  __chkstk_darwin(v16);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v18 = sub_1007469A4();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView;
  v20 = type metadata accessor for IconGridView();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_1007433C4();
  sub_100750624();
  sub_10002DDC8(&qword_10092DE20, &qword_10092DE18);
  sub_1007512E4();
  *&v21[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_impressionableArtworks] = 0;
  *&v21[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkLoader] = 0;
  v22 = &v21[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_configuration];
  *v22 = vdupq_n_s64(0x4056000000000000uLL);
  *(v22 + 2) = 0x4024000000000000;
  *(v22 + 3) = 2;
  *(v22 + 2) = xmmword_1007B24E0;
  v63.receiver = v21;
  v63.super_class = v20;
  *&v5[v19] = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *&v5[v23] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_100920EC8 != -1)
  {
    swift_once();
  }

  v25 = sub_100750534();
  v26 = sub_10000D0FC(v25, qword_1009809A8);
  v27 = *(v25 - 8);
  (*(v27 + 16))(v15, v26, v25);
  (*(v27 + 56))(v15, 0, 1, v25);
  (*(v55 + 104))(v56, enum case for DirectionalTextAlignment.none(_:), v57);
  v28 = objc_allocWithZone(sub_100745C84());
  *&v5[v24] = sub_100745C74();
  v29 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerButton;
  v30 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v29] = sub_100154454(0);
  v31 = &v5[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v62.receiver = v5;
  v62.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView]];

  v34 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  v35 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v36 = v59;
  v37 = v60;
  v38 = v61;
  (*(v60 + 104))(v59, enum case for Wordmark.arcade(_:), v61);
  v39 = v35;
  v40.super.isa = [v32 traitCollection];
  isa = v40.super.isa;
  v42 = sub_10074F7A4(v40);

  (*(v37 + 8))(v36, v38);
  [v39 setImage:v42];

  v43 = *&v32[v34];
  sub_100016C60(0, &qword_100923500);
  v44 = v43;
  v45 = sub_100753DD4();
  [v44 setTintColor:v45];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v34]];

  v47 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  v48 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  sub_100753F54();

  v49 = *&v32[v47];
  v50 = sub_100753DF4();
  [v49 setTextColor:v50];

  v51 = [v32 contentView];
  [v51 addSubview:*&v32[v47]];

  v52 = [v32 contentView];
  [v52 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerButton]];

  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v32;
}

uint64_t sub_100203FA8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10092DDB8);
  sub_10000D0FC(v4, qword_10092DDB8);
  if (qword_100920EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009809A8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10020417C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v71 = sub_100750354();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100748884();
  v94 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1007488A4();
  v95 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1007488C4();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1007504F4();
  v9 = *(v92 - 8);
  __chkstk_darwin(v92);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100745F54();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1007488F4();
  v65 = *(v66 - 8);
  *&v16 = __chkstk_darwin(v66).n128_u64[0];
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v68 = ObjectType;
  objc_msgSendSuper2(&v107, "layoutSubviews", v16);
  v90 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v61 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v63 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
  sub_100745F44();
  sub_100745F74();
  sub_100205D00(&qword_10092DE08, &type metadata accessor for OffsetGridLayout);
  v72 = v1;
  sub_100750D34();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  v76 = v18;
  v21 = [v18 image];
  if (v21)
  {
    v22 = v21;
    [v21 size];
    sub_100750504();
    sub_1007504B4();

    (*(v9 + 8))(v11, v92);
  }

  sub_10000C518(&qword_10092C0B8);
  v23 = *(sub_1007488D4() - 8);
  v91 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A97A0;
  v62 = v25;
  v92 = v25 + v24;
  *&v98 = v90;
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v20;
  v102 = sub_100750FD4();
  v103 = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134(&v101);
  sub_100750FE4();
  sub_100016C60(0, &qword_100922300);
  sub_1007503D4();
  sub_10000C620(&v101);
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
  v86 = sub_10000C518(&unk_100931370);
  v29 = v8;
  v30 = v94;
  v31 = *(v94 + 80);
  v60 = *(v94 + 72);
  v75 = ((v31 + 32) & ~v31) + v60;
  v77 = (v31 + 32) & ~v31;
  v32 = swift_allocObject();
  v74 = xmmword_1007A5A00;
  *(v32 + 16) = xmmword_1007A5A00;
  sub_100748854();
  v97 = v32;
  v82 = sub_100205D00(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v85 = sub_10000C518(&unk_100931380);
  v84 = sub_10002DDC8(&qword_10092C0C8, &unk_100931380);
  v33 = v79;
  v34 = v67;
  sub_1007543A4();
  v35 = v29;
  sub_1007488B4();
  v83 = *(v30 + 8);
  v83(v33, v34);
  sub_10000C8CC(&v98, &qword_100931390);
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
  sub_10000C620(&v104);
  sub_10000C620(&v101);
  v101 = v76;
  sub_100016C60(0, &qword_10092BFC0);
  sub_1007503F4();
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
  sub_100748854();
  v97 = v43;
  sub_1007543A4();
  sub_1007488B4();
  v94 = v30 + 8;
  v83(v33, v34);
  sub_10000C8CC(&v98, &qword_100931390);
  v81(v6, v37);
  v44 = v93;
  v73 = v38;
  v38(v40, v93);
  sub_10000C620(&v104);
  sub_10000C620(&v101);
  v101 = v61;
  sub_100745C84();
  sub_1007503C4();
  v89(v40, enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:), v44);
  LODWORD(v61) = v42;
  v87(v6, v42, v37);
  if (qword_1009205F8 != -1)
  {
    swift_once();
  }

  v45 = sub_100750B04();
  v46 = sub_10000D0FC(v45, qword_10092DDB8);
  v102 = v45;
  v103 = &protocol witness table for StaticDimension;
  v47 = sub_10000D134(&v101);
  (*(*(v45 - 8) + 16))(v47, v46, v45);
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007A6580;
  sub_100748854();
  sub_100748864();
  v97 = v48;
  v49 = v79;
  sub_1007543A4();
  sub_1007488B4();
  v83(v49, v34);
  sub_10000C8CC(&v98, &qword_100931390);
  v81(v6, v37);
  v50 = v40;
  v51 = v40;
  v52 = v93;
  v73(v50);
  sub_10000C620(&v104);
  sub_10000C620(&v101);
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
  sub_100748854();
  v97 = v54;
  sub_1007543A4();
  sub_1007488B4();
  v83(v49, v34);
  sub_10000C8CC(&v98, &qword_100931390);
  v81(v6, v37);
  (v73)(v51, v52);
  sub_10000C620(&v101);
  sub_10000C620(&v104);
  v56 = v64;
  sub_100748894();
  sub_1007477B4();
  sub_100205D00(&qword_10092C0D0, &type metadata accessor for _VerticalFlowLayout);
  v57 = v69;
  v58 = v66;
  sub_100751124();
  (*(v70 + 8))(v57, v71);
  return (*(v65 + 8))(v56, v58);
}

uint64_t type metadata accessor for ArcadeShowcaseCollectionViewCell()
{
  result = qword_10092DDF8;
  if (!qword_10092DDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10020539C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100205448(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = a2;
  v51 = a1;
  v48 = sub_100750A94();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750AB4();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100750FD4();
  v52 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007479B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_100745F54();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745F44();
  sub_100745F74();
  sub_100205D00(&qword_10092DE08, &type metadata accessor for OffsetGridLayout);
  sub_100750D34();
  v21 = v20;
  (*(v17 + 8))(v19, v16);
  v22 = [a3 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v23 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v23 = qword_10093FF58;
  }

  v24 = sub_10000D0FC(v9, v23);
  (*(v10 + 16))(v12, v24, v9);

  (*(v10 + 32))(v15, v12, v9);
  sub_100747994();
  v26 = v25;
  (*(v10 + 8))(v15, v9);
  sub_10000C518(&qword_10092DE10);
  v27 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v28 = 7 * *(v52 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007A79C0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4044000000000000;
  sub_100750FE4();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = v21;
  sub_100750FE4();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4034000000000000;
  sub_100750FE4();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0;
  sub_100750FE4();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4033000000000000;
  sub_100750FE4();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4032000000000000;
  sub_100750FE4();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = v26;
  sub_100750FE4();
  if ((sub_100753114() & 1) == 0)
  {
    if (qword_100920EC8 != -1)
    {
      swift_once();
    }

    v30 = sub_100750534();
    sub_10000D0FC(v30, qword_1009809A8);
    v31 = sub_10074F3F4();
    v54 = v31;
    v55 = sub_100205D00(&qword_10092AC70, &type metadata accessor for Feature);
    v32 = sub_10000D134(v53);
    (*(*(v31 - 8) + 104))(v32, enum case for Feature.measurement_with_labelplaceholder(_:), v31);
    sub_10074FC74();
    sub_10000C620(v53);
    sub_10074CCB4();
    v34 = v33;
    if (qword_1009205F8 != -1)
    {
      swift_once();
    }

    v35 = sub_100750B04();
    sub_10000D0FC(v35, qword_10092DDB8);
    sub_100750584();
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *v53 = v34 + v36;
    v37 = v43;
    sub_100750FE4();
    v29 = sub_100254FCC(1uLL, 8, 1, v29);
    *(v29 + 16) = 8;
    (*(v52 + 32))(v29 + v27 + v28, v37, v44);
  }

  (*(v46 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v48);
  sub_100157720(v29);

  sub_100750AA4();
  v38 = v50;
  sub_100750404();
  v40 = v39;
  (*(v49 + 8))(v7, v38);
  return v40;
}

uint64_t sub_100205D00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100205D48()
{
  v1 = v0;
  v25 = sub_10074AB44();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10000C518(&qword_10092DE18);
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v8 = sub_1007469A4();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView;
  v10 = type metadata accessor for IconGridView();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_1007433C4();
  sub_100750624();
  sub_10002DDC8(&qword_10092DE20, &qword_10092DE18);
  sub_1007512E4();
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_impressionableArtworks] = 0;
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkLoader] = 0;
  v12 = &v11[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_configuration];
  *v12 = vdupq_n_s64(0x4056000000000000uLL);
  *(v12 + 2) = 0x4024000000000000;
  *(v12 + 3) = 2;
  *(v12 + 2) = xmmword_1007B24E0;
  v26.receiver = v11;
  v26.super_class = v10;
  *(v0 + v9) = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_100920EC8 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  v16 = sub_10000D0FC(v15, qword_1009809A8);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v5, v16, v15);
  (*(v17 + 56))(v5, 0, 1, v15);
  (*(v23 + 104))(v24, enum case for DirectionalTextAlignment.none(_:), v25);
  v18 = objc_allocWithZone(sub_100745C84());
  *(v1 + v14) = sub_100745C74();
  v19 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerButton;
  v20 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v19) = sub_100154454(0);
  v21 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002061C8(uint64_t a1, uint64_t a2)
{
  v32[1] = a2;
  v3 = sub_10074A304();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32[0] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = v32 - v6;
  __chkstk_darwin(v7);
  v35 = v32 - v8;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v36 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  v17 = type metadata accessor for FlowDestination();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v32 - v22;

  sub_10074EC44();
  sub_1001362FC(a1, &v39, v16);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v24(v16, 1, v17) != 1)
    {
      sub_10000C8CC(v16, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v16, v23);
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v25 = 0;
  }

  else
  {
    sub_100742C54();
    sub_100742C44();

    sub_10074EC44();
    sub_1001362FC(a1, &v39, v13);
    if (v24(v13, 1, v17) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v17) != 1)
      {
        sub_10000C8CC(v13, &unk_100925750);
      }
    }

    else
    {
      sub_100068B98(v13, v20);
    }

    sub_1006C1C84(v35);
    sub_100207DD0(v20, type metadata accessor for FlowDestination);
    v26 = v33;
    v27 = *(v33 + 104);
    v27(v34, enum case for FlowPresentationContext.push(_:), v3);
    sub_100207EA0(&qword_100925248);
    sub_100753274();
    sub_100753274();
    if (v39 == v37 && v40 == v38)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_100754754();
    }

    v29 = *(v26 + 8);
    v29(v34, v3);

    if (v28)
    {
      v29(v35, v3);
      sub_100207DD0(v36, type metadata accessor for FlowPresentationHints);
      v25 = 1;
    }

    else
    {
      v30 = v32[0];
      v27(v32[0], enum case for FlowPresentationContext.replace(_:), v3);
      sub_100753274();
      sub_100753274();
      if (v39 == v37 && v40 == v38)
      {
        v25 = 1;
      }

      else
      {
        v25 = sub_100754754();
      }

      v29(v30, v3);
      v29(v35, v3);
      sub_100207DD0(v36, type metadata accessor for FlowPresentationHints);
    }
  }

  sub_100207DD0(v23, type metadata accessor for FlowDestination);
  return v25 & 1;
}

uint64_t sub_1002067CC(uint64_t a1, void *a2)
{
  v4 = sub_1007493D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074A304();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_100016C60(0, &qword_10092B0C0);
  v14 = sub_1007532A4();

  if (v14 >> 62)
  {
    v15 = sub_100754664();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_100207EA0(&qword_100925258);
    v16 = sub_100753014();
    (*(v9 + 8))(v12, v8);
    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for FlowPresentationHints();
  (*(v5 + 16))(v7, a1 + *(v18 + 20), v4);
  v19 = (*(v5 + 88))(v7, v4);
  if (v19 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v19 == enum case for FlowAnimationBehavior.never(_:))
    {
      v17 = 0;
    }

    else if (v19 == enum case for FlowAnimationBehavior.always(_:))
    {
      v17 = 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v17 & 1;
}

uint64_t sub_100206AB4(uint64_t a1, void *a2, void *a3)
{
  v108 = a3;
  v103 = sub_100752624();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v6 - 8);
  v107 = &v100 - v7;
  v111 = sub_10074A304();
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v100 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v100 - v10;
  __chkstk_darwin(v11);
  v113 = &v100 - v12;
  v13 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v13);
  v114 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v15 - 8);
  v105 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v100 - v18;
  v20 = type metadata accessor for FlowDestination();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = &v100 - v25;

  sub_10074EC44();
  sub_1001362FC(a1, &v116, v19);
  v27 = *(v21 + 48);
  v28 = v27(v19, 1, v20);
  v106 = v23;
  v104 = v27;
  if (v28 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v20) != 1)
    {
      sub_10000C8CC(v19, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v19, v26);
  }

  sub_100742C54();
  sub_100742C44();
  v29 = [a2 traitCollection];
  v30 = v113;
  v110 = v26;
  sub_1006C1C84(v113);

  v31 = sub_1003787A4(a2);
  if (!v31)
  {
    sub_10000C518(&qword_100930CA0);
    sub_100207D7C();
    swift_allocError();
    v41 = sub_100752D74();
    (*(v112 + 8))(v30, v111);
LABEL_69:
    v98 = v110;
    sub_100207DD0(v114, type metadata accessor for FlowPresentationHints);
    sub_100207DD0(v98, type metadata accessor for FlowDestination);
    return v41;
  }

  v32 = v31;
  v33 = [v32 traitCollection];
  v122 = v32;
  sub_100016C60(0, &qword_100924658);
  v34 = v32;
  sub_10000C518(&qword_100924660);
  v35 = swift_dynamicCast();
  v36 = v106;
  if ((v35 & 1) == 0)
  {
    *&v118 = 0;
    v116 = 0u;
    v117 = 0u;
  }

  sub_10074EC44();
  v37 = v105;
  sub_1001362FC(a1, v115, v105);
  v38 = v104;
  if (v104(v37, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v39 = v38(v37, 1, v20);
    v40 = v112;
    if (v39 != 1)
    {
      sub_10000C8CC(v37, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v37, v36);
    v40 = v112;
  }

  v42 = sub_100742C14();
  v44 = v43;
  v45 = v107;
  sub_100742C34();
  v46 = sub_100470520(v36, v33, v42, v44, v45, &v116, v108, 1);

  sub_10000C8CC(v45, &qword_10092C1F0);
  sub_100207DD0(v36, type metadata accessor for FlowDestination);
  sub_10000C8CC(&v116, &unk_100925760);
  if (!v46)
  {

    sub_10000C518(&qword_100930CA0);
    (*(v102 + 104))(v101, enum case for ActionOutcome.unsupported(_:), v103);
    v41 = sub_100752D84();

    (*(v40 + 8))(v113, v111);
    goto LABEL_69;
  }

  v47 = [v34 presentingViewController];

  v48 = v111;
  v108 = v34;
  if (!v47)
  {
    goto LABEL_33;
  }

  v49 = [v34 viewControllers];
  sub_100016C60(0, &qword_10092B0C0);
  v50 = sub_1007532A4();

  if (!(v50 >> 62))
  {
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_32:

LABEL_33:
    v63 = sub_1002067CC(v114, v34);
    v64 = *(v40 + 104);
    v64(v109, enum case for FlowPresentationContext.push(_:), v48);
    sub_100207EA0(&qword_100925248);
    sub_100753274();
    sub_100753274();
    LODWORD(v112) = v63;
    if (v116 == v115[0])
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_100754754();
    }

    v33 = *(v40 + 8);
    (v33)(v109, v48);

    if (v65)
    {
      [v46 setModalPresentationCapturesStatusBarAppearance:1];
      v116 = xmmword_100931310;
      v117 = xmmword_100931320;
      v118 = xmmword_100931330;
      v119 = xmmword_100931340;
      v120 = xmmword_100931350;
      v66 = qword_100931360;
      v121 = qword_100931360;
      v67 = BYTE8(xmmword_100931330);
      v68 = v113;
      v69 = v108;
      if (BYTE8(xmmword_100931330) != 255)
      {
        v70 = v116;
        v72 = v117;
        v71 = *&v118;
        v73 = v119;
        v74 = v120;
        v75 = v116;
        v76 = [v46 popoverPresentationController];
        if (v76)
        {
          v77 = v76;
          if (v67)
          {
            sub_100173514(&v116, v115);
            v78 = v77;
            [v78 setSourceView:v70];
            v79 = v78;
            v69 = v108;
            [v79 setSourceRect:{*(&v70 + 1), v72, v71}];
            sub_10000C8CC(&v116, &unk_1009308C0);
          }

          else
          {
            [v76 setBarButtonItem:v70];
          }

          [v77 setPopoverLayoutMargins:{v73, v74}];
          [v77 setPermittedArrowDirections:v66];
        }

        else
        {
          if (qword_100921EE0 != -1)
          {
            swift_once();
          }

          v97 = sub_100752E44();
          sub_10000D0FC(v97, qword_100983318);
          sub_10000C518(&qword_100923930);
          sub_100752454();
          *(swift_allocObject() + 16) = xmmword_1007A5A00;
          sub_1007523A4();
          sub_100752D14();
        }

        sub_10000C8CC(&v116, &unk_1009308C0);
      }

      [v69 pushViewController:v46 animated:v112 & 1];
      goto LABEL_68;
    }

    v80 = v100;
    v64(v100, enum case for FlowPresentationContext.replace(_:), v48);
    v68 = v113;
    sub_100753274();
    sub_100753274();
    if (v116 == v115[0])
    {
      (v33)(v80, v48);

      v69 = v108;
    }

    else
    {
      v81 = sub_100754754();
      (v33)(v80, v48);

      v69 = v108;
      if ((v81 & 1) == 0)
      {
LABEL_68:
        sub_10000C518(&qword_100930CA0);
        (*(v102 + 104))(v101, enum case for ActionOutcome.performed(_:), v103);
        v41 = sub_100752D84();

        (v33)(v68, v48);
        goto LABEL_69;
      }
    }

    objc_opt_self();
    v82 = swift_dynamicCastObjCClass();
    if (!v82)
    {
      v90 = [v69 viewControllers];
      sub_100016C60(0, &qword_10092B0C0);
      v49 = sub_1007532A4();

      v44 = (v49 >> 62);
      if (!(v49 >> 62))
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_55:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v44 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v49 = sub_10025F2C0(v49);
        }

        v92 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v92)
        {
          v93 = v92 - 1;
          v44 = *((v49 & 0xFFFFFFFFFFFFFF8) + 8 * v93 + 0x20);
          *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) = v93;
          *&v116 = v49;
          v94 = [v44 tabBarItem];
          [v46 setTabBarItem:v94];

          v95 = v46;
          sub_100753284();
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_60:
            sub_100753344();
            isa = sub_100753294().super.isa;

            v69 = v108;
            [v108 setViewControllers:isa animated:v112 & 1];

            goto LABEL_68;
          }

LABEL_78:
          sub_100753304();
          goto LABEL_60;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_75:
      if (!sub_100754664())
      {
        goto LABEL_76;
      }

      goto LABEL_55;
    }

    v50 = v82;
    v49 = v46;
    v83 = [v69 viewControllers];
    v44 = sub_100016C60(0, &qword_10092B0C0);
    v34 = sub_1007532A4();

    v45 = v34 >> 62;
    if (!(v34 >> 62))
    {
      v84 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:
      v68 = v113;
      if (v84)
      {
        v85 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v45 || (v85 & 1) == 0)
        {
          v34 = sub_10025F2C0(v34);
        }

        v86 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v86)
        {
          v87 = v86 - 1;
          v88 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v87 + 0x20);
          *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) = v87;

          v89 = sub_100753294().super.isa;

          v69 = v108;
          [v108 setViewControllers:v89];

          [v69 presentViewController:v50 animated:0 completion:0];
          goto LABEL_68;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_75;
    }

LABEL_72:
    v84 = sub_100754664();
    goto LABEL_47;
  }

  if (!sub_100754664())
  {
    goto LABEL_32;
  }

LABEL_17:
  if ((v50 & 0xC000000000000001) != 0)
  {
    v51 = sub_100754574();
  }

  else
  {
    if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_72;
    }

    v51 = *(v50 + 32);
  }

  v52 = v51;

  if ((sub_1003CC490(v52) & 1) == 0)
  {
    goto LABEL_23;
  }

  v53 = swift_allocObject();
  v54 = v108;
  *(v53 + 16) = v108;
  v55 = v54;
  if (sub_1003CC490(v46))
  {

LABEL_23:

LABEL_30:
    v34 = v108;
    goto LABEL_33;
  }

  v56 = [v46 navigationItem];
  v57 = [v56 rightBarButtonItems];
  if (v57)
  {
    v58 = v57;
    sub_100016C60(0, &qword_100925250);
    v59 = sub_1007532A4();
  }

  else
  {
    v59 = _swiftEmptyArrayStorage;
  }

  *&v116 = v59;
  sub_100016C60(0, &qword_100925250);
  sub_100016C60(0, &qword_100929CC0);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_100086E24;
  *(v60 + 24) = v53;

  v123.value.super.super.isa = sub_100753FF4();
  v123.is_nil = 0;
  v61.super.super.isa = sub_100753634(UIBarButtonSystemItemClose, v123, v124).super.super.isa;
  if (!(v59 >> 62) || (result = sub_100754664(), (result & 0x8000000000000000) == 0))
  {
    sub_10015D700(0, 0, v61.super.super.isa);
    v62 = sub_100753294().super.isa;

    [v56 setRightBarButtonItems:v62];

    v40 = v112;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_100207D7C()
{
  result = qword_10092DE28;
  if (!qword_10092DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092DE28);
  }

  return result;
}

uint64_t sub_100207DD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100207E30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100207E68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100207EA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10074A304();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100207EF8()
{
  result = qword_10092DE30;
  if (!qword_10092DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092DE30);
  }

  return result;
}

void sub_100207F4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  sub_10020870C(a1, &v25 - v5);
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380);
LABEL_8:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_9;
  }

  v9 = sub_100752904();
  (*(v8 + 8))(v6, v7);
  if (!*(v9 + 16) || (v10 = sub_1003861D0(0x6973736572706D69, 0xEF7865646E496E6FLL), (v11 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_10000C5B4(*(v9 + 56) + 32 * v10, &v25);

  if (*(&v26 + 1))
  {
    sub_10000C610(&v25, v27);
    v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ImpressionMetricsDebugOverlay_metricsLabel];
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    sub_1007531B4(v28);
    sub_1007545F4();
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_1007531B4(v29);
    v13 = sub_100753064();

    [v12 setText:v13];

    sub_10000C620(v27);
    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ImpressionMetricsDebugOverlay_overlayColor];
    goto LABEL_10;
  }

LABEL_9:
  sub_10000C8CC(&v25, &unk_100923520);
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ImpressionMetricsDebugOverlay_metricsLabel];
  v15 = sub_100753064();
  [v12 setText:v15];

  v14 = [objc_opt_self() yellowColor];
LABEL_10:
  v16 = v14;
  v17 = [v16 colorWithAlphaComponent:0.2];
  [v2 setBackgroundColor:v17];

  v18 = [v2 layer];
  v19 = [v16 colorWithAlphaComponent:0.2];

  v20 = [v19 CGColor];
  [v18 setBorderColor:v20];

  [v12 sizeToFit];
  v21 = [v12 layer];
  [v12 frame];
  Height = CGRectGetHeight(v30);
  [v12 frame];
  Width = CGRectGetWidth(v31);
  if (Width >= Height)
  {
    Width = Height;
  }

  [v21 setCornerRadius:{Width * 0.5, v25, v26}];

  v24 = [v12 layer];
  [v24 setMasksToBounds:1];
}

char *sub_10020836C(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29ImpressionMetricsDebugOverlay_metricsLabel;
  *&v5[v12] = [objc_allocWithZone(UILabel) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29ImpressionMetricsDebugOverlay_overlayColor] = a1;
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v28, "initWithFrame:", a2, a3, a4, a5);
  [v14 setTag:{58236912, v28.receiver, v28.super_class}];
  [v14 setUserInteractionEnabled:0];
  v15 = [v14 layer];
  [v15 setBorderWidth:5.0];

  v16 = OBJC_IVAR____TtC22SubscribePageExtension29ImpressionMetricsDebugOverlay_metricsLabel;
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension29ImpressionMetricsDebugOverlay_metricsLabel] setNumberOfLines:0];
  v17 = *&v14[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 boldSystemFontOfSize:20.0];
  [v19 setFont:v20];

  [*&v14[v16] setTextColor:*&v14[OBJC_IVAR____TtC22SubscribePageExtension29ImpressionMetricsDebugOverlay_overlayColor]];
  v21 = *&v14[v16];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 whiteColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v14[v16];
  [v25 frame];
  Width = CGRectGetWidth(v29);
  [*&v14[v16] frame];
  [v25 setFrame:{10.0, 10.0, Width, CGRectGetHeight(v30)}];

  [v14 addSubview:*&v14[v16]];
  return v14;
}

uint64_t sub_10020870C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10020888C(void *a1, double a2, double a3)
{
  v7 = *v3;
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007A5CF0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_100751044();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell()
{
  result = qword_10092DEC0;
  if (!qword_10092DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100208A90()
{
  if (qword_100921960 != -1)
  {
    swift_once();
  }

  v0 = sub_100741E54();
  sub_10000D0FC(v0, qword_100982740);
  return sub_100741DC4();
}

void sub_100208B00()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView;
  v3 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
  sub_100743204();

  v4 = *(*(v1 + v2) + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
  sub_1007433C4();
  sub_100208C58(&qword_100925570, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100744274();
}

uint64_t sub_100208C00(uint64_t a1)
{
  result = sub_100208C58(&qword_10092DED0, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100208C58(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100208CEC()
{
  v0 = sub_10074F704();
  v51 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10074A5B4();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A5D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10074CD14();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746C64();
  sub_1002094D4(&qword_10092C230, &type metadata accessor for PrivacyDefinition);
  sub_1007468B4();
  v10 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v7;
  v43 = v5;
  v44 = v0;
  v45 = v4;
  v11 = sub_100038D38();
  if (qword_100921290 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  sub_10000D0FC(v12, qword_1009814E8);
  swift_getKeyPath();
  sub_100746914();

  v13 = v56[0];
  v14 = sub_100753C14();

  v52 = v10;
  sub_100746C54();
  v15 = sub_10074F3F4();
  v39 = v11;
  v16 = v15;
  v56[3] = v15;
  v38 = sub_1002094D4(&qword_10092AC70, &type metadata accessor for Feature);
  v56[4] = v38;
  v17 = sub_10000D134(v56);
  v18 = *(v16 - 8);
  v19 = *(v18 + 104);
  v37 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = v19;
  v35[1] = v18 + 104;
  v19(v17);
  v20 = v14;
  sub_10074FC74();
  sub_10000C620(v56);
  v40 = v20;
  sub_10074CD04();
  sub_10074CCE4();
  v21 = *(v46 + 8);
  v22 = v47;
  v21(v9, v47);
  if (qword_100921298 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v12, qword_100981500);
  swift_getKeyPath();
  sub_100746914();

  v23 = v55[0];
  v24 = sub_100753C14();

  sub_100746C44();
  v55[3] = v16;
  v55[4] = v38;
  v25 = sub_10000D134(v55);
  v36(v25, v37, v16);
  v26 = v24;
  sub_10074FC74();
  sub_10000C620(v55);
  sub_10074CD04();
  sub_10074CCE4();
  v21(v9, v22);
  if (qword_100920348 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = sub_10000D0FC(v49, qword_10097DCE0);
  (*(v48 + 16))(v50, v28, v27);
  sub_10000C824(v56, v54);
  sub_10000C824(v55, v53);
  v29 = v42;
  sub_10074A5C4();
  swift_getKeyPath();
  v30 = v41;
  sub_100746914();

  sub_10074F674();
  (*(v51 + 8))(v30, v44);
  sub_10007DC04();
  sub_1002094D4(&unk_100933220, &type metadata accessor for PrivacyDefinitionLayout);
  v31 = v45;
  sub_100750404();
  v33 = v32;

  swift_unknownObjectRelease();

  (*(v43 + 8))(v29, v31);
  sub_10000C620(v55);
  sub_10000C620(v56);
  return v33;
}

uint64_t sub_1002094D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10020951C()
{
  v1 = sub_100741494();
  v59 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10000C518(&unk_1009231A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007A5CF0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v62 = type metadata accessor for NavigationActionDebugSetting();
  v7 = swift_allocObject();
  v7[7] = 0xD000000000000012;
  v7[8] = 0x8000000100770E30;
  v7[10] = 0;
  v7[11] = 0;
  v7[9] = 0;
  v7[12] = sub_10020AF84;
  v7[13] = v6;
  v8 = v0;

  sub_100741484();
  v9 = sub_100741464();
  v11 = v10;
  v12 = *(v2 + 8);
  v12(v4, v1);
  v65 = v9;
  v66 = v11;
  sub_1007544E4();

  *(v5 + 32) = v7;
  v67 = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for ActionDebugSetting();
  v14 = swift_allocObject();
  strcpy((v14 + 56), "Reset Welcome");
  *(v14 + 70) = -4864;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_10020AF8C;
  *(v14 + 112) = v13;
  v15 = v8;

  sub_100741484();
  v16 = sub_100741464();
  v18 = v17;
  v19 = v59;
  (v12)(v4);
  v65 = v16;
  v66 = v18;
  sub_1007544E4();

  sub_100753284();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000018;
  *(v21 + 64) = 0x8000000100770E50;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_10020AF94;
  *(v21 + 112) = v20;
  v22 = v15;

  sub_100741484();
  v23 = sub_100741464();
  v25 = v24;
  v12(v4, v19);
  v65 = v23;
  v66 = v25;
  sub_1007544E4();

  sub_100753284();
  v26 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v64 = v12;
  if (v26 >= v27 >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  v29 = swift_allocObject();
  *(v29 + 56) = 0xD000000000000017;
  *(v29 + 64) = 0x8000000100770E70;
  *(v29 + 72) = 0u;
  *(v29 + 88) = 0u;
  *(v29 + 104) = sub_10020AF9C;
  *(v29 + 112) = v28;
  v30 = v22;

  sub_100741484();
  v31 = sub_100741464();
  v33 = v32;
  v64(v4, v19);
  v65 = v31;
  v66 = v33;
  sub_1007544E4();

  sub_100753284();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  v61 = v67;
  v34 = swift_allocObject();
  v60 = xmmword_1007A7210;
  *(v34 + 16) = xmmword_1007A7210;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v35 = swift_allocObject();
  *(v35 + 56) = 0xD00000000000001ELL;
  *(v35 + 64) = 0x8000000100770E90;
  *(v35 + 72) = 0;
  *(v35 + 80) = 0xD00000000000001FLL;
  *(v35 + 88) = 0x8000000100770EB0;
  *(v35 + 96) = 0;
  sub_100741484();
  v36 = sub_100741464();
  v38 = v37;
  v39 = v19;
  v40 = v19;
  v41 = v64;
  v64(v4, v39);
  v65 = v36;
  v66 = v38;
  sub_1007544E4();
  *(v34 + 32) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  v43 = swift_allocObject();
  strcpy((v43 + 56), "Edit Triggers");
  *(v43 + 70) = -4864;
  *(v43 + 80) = 0;
  *(v43 + 88) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = sub_10020AFA4;
  *(v43 + 104) = v42;
  v44 = v30;

  sub_100741484();
  v45 = sub_100741464();
  v47 = v46;
  v41(v4, v40);
  v65 = v45;
  v66 = v47;
  sub_1007544E4();

  *(v34 + 40) = v43;
  v48 = swift_allocObject();
  *(v48 + 16) = v60;
  type metadata accessor for DebugSection();
  v49 = swift_allocObject();
  sub_100741484();
  v50 = sub_100741464();
  v52 = v51;
  v41(v4, v40);
  v49[2] = v50;
  v49[3] = v52;
  v49[4] = 0x737465656853;
  v49[5] = 0xE600000000000000;
  v49[6] = v61;
  *(v48 + 32) = v49;
  v53 = swift_allocObject();
  sub_100741484();
  v54 = sub_100741464();
  v56 = v55;
  v41(v4, v40);
  v53[2] = v54;
  v53[3] = v56;
  v53[4] = 0x7364726143;
  v53[5] = 0xE500000000000000;
  v53[6] = v34;
  *(v48 + 40) = v53;
  return v48;
}

uint64_t sub_100209D00(uint64_t a1)
{
  v2 = sub_100742CF4();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007493D4();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10074A304();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752614();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10074F4D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000C518(&unk_100923210);
  v39 = a1;
  sub_1007526C4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_100052F00(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.onboarding(_:), v14);
  v25 = sub_100741264();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_100743FE4();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v41 = &type metadata for OnboardingConfiguration;
  v40 = 0;
  sub_1007525F4();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v28 = sub_100742C84();
  sub_1003C1424(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_10020A2DC()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100753064();
  v10 = [v0 initWithSuiteName:v1];

  v2 = v10;
  if (!v10)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v11 = v2;
  sub_1007498D4();
  v3 = sub_100753064();
  v4 = sub_100753064();
  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = sub_100753064();
  v7 = [objc_opt_self() actionWithTitle:v6 style:1 handler:0];

  [v5 addAction:v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t sub_10020A4C0()
{
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  type metadata accessor for AdPrivacyOnboardingStep();
  inited = swift_initStackObject();
  *(inited + 24) = 0;

  sub_1007544E4();
  v1 = sub_1004DE5E4();
  [v1 setAcknowledgedVersionForPersonalizedAds:0];

  swift_setDeallocating();
  sub_100016994(inited + 32);
  v2 = sub_100753064();
  v3 = sub_100753064();
  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = sub_100753064();
  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v6];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }
}

void sub_10020A6E0()
{
  v0 = sub_10000C518(&qword_10092DF08);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100752854();
  sub_100752844();
  if (qword_1009207A0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_10092FD38);
  (*(v1 + 16))(v3, v4, v0);
  v12 = 0;
  v13 = 0;
  sub_100752544();

  v5 = sub_100753064();
  v6 = sub_100753064();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = sub_100753064();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t sub_10020A954(uint64_t a1)
{
  v2 = sub_100742CF4();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007493D4();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10074A304();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752614();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10074F4D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000C518(&unk_100923210);
  v39 = a1;
  sub_1007526C4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_100052F00(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugTodayCardTriggers(_:), v14);
  v25 = sub_100741264();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_100743FE4();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  sub_1007525F4();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v28 = sub_100742C84();
  sub_1003C1424(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

uint64_t sub_10020AF4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10020AFD0()
{
  result = qword_10092DF10;
  if (!qword_10092DF10)
  {
    sub_100742FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092DF10);
  }

  return result;
}

uint64_t sub_10020B030(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v85 = a1;
  v58 = sub_100752614();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100742FD4();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v67 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = v55 - v5;
  v6 = sub_1007494E4();
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100742284();
  v63 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v84 = sub_10074ED34();
  v13 = *(v84 - 1);
  __chkstk_darwin(v84);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10074B514();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0);
  v59 = sub_100752DE4();
  sub_10038664C(_swiftEmptyArrayStorage);
  sub_10038664C(_swiftEmptyArrayStorage);
  sub_100386760(_swiftEmptyArrayStorage);
  sub_10038664C(_swiftEmptyArrayStorage);
  v76 = v17;
  sub_10074B504();
  sub_10000C518(&unk_100925780);
  sub_100752764();
  sub_100752D34();
  swift_getObjectType();
  sub_100742F94();
  v18 = sub_1007424E4();
  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v84);
  swift_getObjectType();
  v74 = v12;
  v55[1] = v18;
  sub_1007423D4();
  v19 = sub_100747704();
  v20 = *(v19 + 16);
  if (v20)
  {
    v84 = *(v81 + 16);
    v21 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v55[0] = v19;
    v22 = v19 + v21;
    v83 = *(v81 + 72);
    v68 = enum case for RateAction.Parameter.rating(_:);
    v77 = v82 + 1;
    v78 = (v82 + 13);
    v82 = (v81 + 8);
    v72 = (v63 + 16);
    v71 = (v63 + 88);
    v70 = enum case for LegacyAppState.openable(_:);
    v66 = (v63 + 8);
    v65 = (v63 + 96);
    v64 = enum case for RateAction.Parameter.version(_:);
    v79 = v6;
    v81 += 16;
    v84(v8, v19 + v21, v6);
    while (1)
    {
      v23 = sub_100742FA4();
      if ((v24 & 1) == 0)
      {
        v38 = v23;
        v39 = sub_1007494A4();
        v41 = v40;
        v42 = v69;
        v43 = v80;
        (*v78)(v69, v68, v80);
        v44 = sub_100742FC4();
        v46 = v45;
        (*v77)(v42, v43);
        if (v39 == v44 && v41 == v46)
        {

          v6 = v79;
LABEL_15:
          v86 = v38;
          sub_100754714();
          sub_10074B4F4();

          (*v82)(v8, v6);
          goto LABEL_4;
        }

        v47 = sub_100754754();

        v6 = v79;
        if (v47)
        {
          goto LABEL_15;
        }
      }

      v25 = v73;
      v26 = v75;
      (*v72)(v73, v74, v75);
      v27 = (*v71)(v25, v26);
      if (v27 != v70)
      {
        (*v82)(v8, v6);
        (*v66)(v25, v26);
        goto LABEL_4;
      }

      (*v65)(v25, v26);
      v28 = *&v25[*(sub_10000C518(&unk_100930D20) + 48)];
      v29 = sub_100748314();
      (*(*(v29 - 8) + 8))(v25, v29);
      v30 = sub_1007494A4();
      v32 = v31;
      v33 = v67;
      v34 = v80;
      (*v78)(v67, v64, v80);
      v35 = sub_100742FC4();
      v37 = v36;
      (*v77)(v33, v34);
      if (v30 == v35 && v32 == v37)
      {
        break;
      }

      v48 = sub_100754754();

      v6 = v79;
      if (v48)
      {
        goto LABEL_17;
      }

      (*v82)(v8, v79);

LABEL_4:
      v22 += v83;
      if (!--v20)
      {
        goto LABEL_19;
      }

      v84(v8, v22, v6);
    }

    v6 = v79;
LABEL_17:
    v49 = [v28 stringValue];
    sub_100753094();

    sub_10074B4F4();

    (*v82)(v8, v6);
    goto LABEL_4;
  }

LABEL_19:

  v50 = v56;
  sub_1007525F4();
  sub_1007476E4();
  v51 = v63;
  v52 = v59;
  (*(v57 + 8))(v50, v58);

  sub_10052ADDC(v53, 1, v62);

  sub_100752D54();

  swift_unknownObjectRelease();

  (*(v51 + 8))(v74, v75);
  (*(v60 + 8))(v76, v61);
  return v52;
}

char *sub_10020BC38(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory] = 7;
  v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory] = 7;
  v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_numberOfLines] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 0;
  v6 = &v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_textAfterFontTransition];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeOutDelay] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInDelay] = 0;
  sub_100745C84();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label] = v8;
  [v8 setContentMode:3];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fontForSizeCategory] = a1;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_defaultFont] = a2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for TodayTransitioningLabelView();
  v9 = a2;
  v10 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  v13 = v10;
  v14 = [v12 layer];
  v15 = [v13 traitCollection];
  sub_1007537F4();

  [v14 setAnchorPoint:{0.0, 0.0}];
  [v13 addSubview:*&v10[v11]];
  sub_10000C518(&unk_1009249D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007A5A00;
  *(v16 + 32) = sub_100751544();
  *(v16 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100753D24();
  swift_unknownObjectRelease();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A5A00;
  *(v17 + 32) = sub_100751554();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v13;
}

id sub_10020BF7C()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TodayTransitioningLabelView();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory] != 4 || (v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange] & 1) != 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    [v0 bounds];
    [v1 setFrame:?];
    v2 = sub_10020C454();
    v3 = "setLineBreakMode:";
    if (v2)
    {
      v4 = v1;
      v5 = 4;
    }

    else
    {
      [v1 setLineBreakMode:0];
      v3 = "setLineBreakStrategy:";
      v4 = v1;
      v5 = 1;
    }

    return [v4 v3];
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] == 1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v9 = swift_allocObject();
    v10 = sub_10020DE60;
    *(v9 + 16) = sub_10020DE60;
    *(v9 + 24) = v8;
    v29 = sub_1000C0C28;
    v30 = v9;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10011B528;
    v28 = &unk_10086CB10;
    v11 = _Block_copy(&v25);
    v12 = v0;

    [v7 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] == 1)
  {
    if ((v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      v15 = swift_allocObject();
      v16 = sub_10020DE48;
      *(v15 + 16) = sub_10020DE48;
      *(v15 + 24) = v14;
      v29 = sub_100045E0C;
      v30 = v15;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_10011B528;
      v28 = &unk_10086CA98;
      v17 = _Block_copy(&v25);
      v18 = v0;

      [v13 performWithoutAnimation:v17];
      _Block_release(v17);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
        return result;
      }

      v10 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    [v0 bounds];
    [v19 setFrame:?];
  }

  v10 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  v21 = sub_10020C454();
  v22 = "setLineBreakMode:";
  if (v21)
  {
    v23 = v20;
    v24 = 4;
  }

  else
  {
    [v20 setLineBreakMode:0];
    v22 = "setLineBreakStrategy:";
    v23 = v20;
    v24 = 1;
  }

  [v23 v22];
  sub_1000164A8(v10);
  return sub_1000164A8(v16);
}

void sub_10020C394(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v3 = v1;
    [a1 bounds];
    [v3 setFrame:?];
  }
}

id sub_10020C454()
{
  result = [v0 text];
  if (result)
  {
    v2 = result;
    v3 = [v0 font];
    if (v3)
    {
      v4 = v3;
      sub_10000C518(&unk_100929CA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007A5A00;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = sub_100038D38();
      *(inited + 40) = v4;
      v6 = NSFontAttributeName;
      v7 = sub_100413A18(inited);
      swift_setDeallocating();
      sub_100168AA4(inited + 32);
      [v0 bounds];
      v9 = v8;
      if (v7)
      {
        type metadata accessor for Key(0);
        sub_100168B0C();
        v10.super.isa = sub_100752F34().super.isa;

LABEL_7:
        [v2 boundingRectWithSize:1 options:v10.super.isa attributes:0 context:{v9, 1.79769313e308}];
        v13 = v12;

        [v0 bounds];
        return (v14 < v13);
      }
    }

    else
    {
      [v0 bounds];
      v9 = v11;
    }

    v10.super.isa = 0;
    goto LABEL_7;
  }

  return result;
}

void sub_10020C5F8(unsigned __int8 a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory);
  if (v4 == 7)
  {
    return;
  }

  if (a1 == 7)
  {
    goto LABEL_4;
  }

  switch(v4)
  {
    case 6:
      if (a1 != 6)
      {
        goto LABEL_4;
      }

      break;
    case 5:
      if (a1 != 5)
      {
        goto LABEL_4;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        break;
      }

LABEL_4:
      v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fontForSizeCategory);
      if (*(v6 + 16) && (v7 = sub_10041218C(v4), (v8 & 1) != 0))
      {
        v9 = (*(v6 + 56) + 8 * v7);
      }

      else
      {
        v9 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_defaultFont);
      }

      v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
      v26 = *v9;
      v11 = [v10 font];
      v12 = v11;
      if (v11)
      {
      }

      v13 = [v10 font];
      if (v13)
      {
        v14 = v13;
        sub_100038D38();
        v15 = v26;
        v16 = sub_100753FC4();
      }

      else
      {
        v16 = 0;
      }

      [objc_opt_self() inheritedAnimationDuration];
      if (a1 == 6 || a2 == 6 || (v12 == 0) | v16 & 1 || v17 <= 0.0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) ^ 1;
      }

      sub_10020C8D4(v26, v18 & 1);
      v19 = v26;
      goto LABEL_25;
    default:
      if ((a1 - 7) > 0xFCu || v4 != a1)
      {
        goto LABEL_4;
      }

      break;
  }

  v20 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory);
  v21 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v19 = [v21 font];
  if (v19)
  {
LABEL_25:

    return;
  }

  v22 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fontForSizeCategory);
  if (*(v22 + 16))
  {
    v23 = sub_10041218C(v20);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      [v21 setFont:v25];
    }
  }
}

void sub_10020C8D4(void *a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label], (v5 = [v4 text]) != 0))
  {

    v6 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel;
    if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel] && (v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v8 = sub_10020DBAC(v4);
      [v8 setAlpha:0.0];
      [v8 setFont:a1];
      [v8 setNumberOfLines:*&v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_numberOfLines]];
      v9 = objc_opt_self();
      [v9 setAnimationsEnabled:0];
      v10 = [v8 layer];
      v11 = [v2 traitCollection];
      v12 = v2;
      sub_1007537F4();

      [v10 setAnchorPoint:{0.0, 0.0}];
      [v9 setAnimationsEnabled:1];
      v13 = *&v2[v6];
      *&v12[v6] = v8;
      v22 = v8;

      [v12 addSubview:v22];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = a1;
      v16 = &v12[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange];
      v17 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange];
      *v16 = sub_10020DDB0;
      v16[1] = v15;

      v18 = a1;
      sub_1000164A8(v17);

      if (v12[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning])
      {
      }

      else
      {
        v19 = *v16;
        if (*v16)
        {

          v19(v20);

          sub_1000164A8(v19);
        }

        else
        {
        }

        v21 = *v16;
        *v16 = 0;
        v16[1] = 0;

        sub_1000164A8(v21);
      }
    }
  }

  else
  {
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];

    [v7 setFont:a1];
  }
}

void sub_10020CBF0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 1;
    v4 = Strong;
    v5 = objc_opt_self();
    [v5 inheritedAnimationDuration];
    v7 = v6 * 0.8;
    v8 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeOutDelay];
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    v25 = sub_10020DDB8;
    v26 = v9;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000CF7B0;
    v24 = &unk_10086C980;
    v10 = _Block_copy(&aBlock);
    v11 = v4;

    [v5 animateWithDuration:131684 delay:v10 options:0 animations:v7 completion:v8];
    _Block_release(v10);
    [v5 inheritedAnimationDuration];
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v25 = sub_10020DDD8;
    v26 = v14;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000CF7B0;
    v24 = &unk_10086C9D0;
    v15 = _Block_copy(&aBlock);
    v16 = v11;

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a2;
    v25 = sub_10020DE40;
    v26 = v17;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100144DD8;
    v24 = &unk_10086CA20;
    v18 = _Block_copy(&aBlock);
    v19 = v16;
    v20 = a2;

    [v5 animateWithDuration:66148 delay:v15 options:v18 animations:v13 completion:0.0];
    _Block_release(v18);
    _Block_release(v15);
    sub_10020CED0();
  }
}

void sub_10020CED0()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    v3 = v1;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v38 = v3;
    [v38 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    if (CGRectIsEmpty(v42) || (v43.origin.x = v13, v43.origin.y = v15, v43.size.width = v17, v43.size.height = v19, CGRectIsEmpty(v43)))
    {
    }

    else
    {
      v44.origin.x = v13;
      v44.origin.y = v15;
      v44.size.width = v17;
      v44.size.height = v19;
      Height = CGRectGetHeight(v44);
      v45.origin.x = v5;
      v45.origin.y = v7;
      v45.size.width = v9;
      v45.size.height = v11;
      v21 = Height / CGRectGetHeight(v45);
      [v38 transform];
      CGAffineTransformScale(&aBlock, &v40, 1.0 / v21, 1.0 / v21);
      tx = aBlock.tx;
      ty = aBlock.ty;
      v36 = *&aBlock.c;
      v37 = *&aBlock.a;
      v24 = objc_opt_self();
      [v24 setAnimationsEnabled:0];
      *&v40.a = v37;
      *&v40.c = v36;
      v40.tx = tx;
      v40.ty = ty;
      [v38 setTransform:&v40];

      [v24 setAnimationsEnabled:1];
      [v2 transform];
      aBlock = v40;
      CGAffineTransformScale(&v40, &aBlock, v21, v21);
      [v24 inheritedAnimationDuration];
      v26 = v25;
      v27 = swift_allocObject();
      v28 = *&v40.c;
      *(v27 + 24) = *&v40.a;
      *(v27 + 16) = v0;
      *(v27 + 40) = v28;
      *(v27 + 56) = *&v40.tx;
      *&aBlock.tx = sub_10020DABC;
      *&aBlock.ty = v27;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1000CF7B0;
      *&aBlock.d = &unk_10086C890;
      v29 = _Block_copy(&aBlock);
      v30 = v0;

      [v24 animateWithDuration:197220 delay:v29 options:0 animations:v26 completion:0.0];
      _Block_release(v29);
      [v24 inheritedAnimationDuration];
      v32 = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = v30;
      *&aBlock.tx = sub_10020DB5C;
      *&aBlock.ty = v33;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1000CF7B0;
      *&aBlock.d = &unk_10086C8E0;
      v34 = _Block_copy(&aBlock);
      v35 = v30;

      [v24 animateWithDuration:197220 delay:v34 options:0 animations:v32 completion:0.0];

      _Block_release(v34);
    }
  }
}

void sub_10020D2C4(char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_textAfterFontTransition + 8))
    {
      v3 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);

      v4 = sub_100753064();

      [v3 setText:v4];
    }

    v5 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
    [v5 setFont:?];
    [v5 setAlpha:1.0];
    [v5 setNumberOfLines:*(a2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_numberOfLines)];
    v9[0] = 0x3FF0000000000000;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v9[4] = 0;
    v9[5] = 0;
    [v5 setTransform:v9];
    v6 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel;
    v7 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *(a2 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(a2 + v6) = 0;

    *(a2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  }
}

uint64_t sub_10020D42C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(a2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  }

  return result;
}

id sub_10020D440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (a2)
  {
    v5 = sub_100753064();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v6)
  {
    v7 = v6;
    if (v3)
    {
      v3 = sub_100753064();
    }

    [v7 setText:v3];
  }

  v8 = &v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_textAfterFontTransition];
  *v8 = 0;
  *(v8 + 1) = 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_10020D538(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a4)
  {
    v8 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v8)
    {
      v9 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
      if (a2)
      {

        v10 = v8;
        v5 = sub_100753064();
      }

      else
      {

        v15 = v8;
      }

      [v9 setText:v5];

      v16 = sub_100753064();
      [v8 setText:v16];

      v17 = (v4 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_textAfterFontTransition);
      *v17 = a3;
      v17[1] = a4;
      goto LABEL_17;
    }

    v13 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);

    v14 = sub_100753064();

    [v13 setText:v14];
  }

  else
  {
    v11 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
    if (a2)
    {
      v12 = sub_100753064();
    }

    else
    {
      v12 = 0;
    }

    [v11 setText:v12];

    v18 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v18)
    {
      v19 = v18;
      if (v5)
      {
        v20 = sub_100753064();
      }

      else
      {
        v20 = 0;
      }

      [v19 setText:v20];
    }
  }

  v21 = (v4 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_textAfterFontTransition);
  *v21 = 0;
  v21[1] = 0;
LABEL_17:
}

uint64_t sub_10020D728()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory) = 7;
  sub_10020C5F8(v4, 7);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  *v5 = 0;
  v5[1] = 0;

  return sub_1000164A8(v6);
}

id sub_10020D7E4()
{
  v1 = objc_opt_self();
  [v1 setAnimationsEnabled:0];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = sub_1007537F4();

    v6 = 0.0;
    if (v5)
    {
      v6 = 1.0;
    }

    [v3 setAnchorPoint:{v6, 0.0}];
  }

  return [v1 setAnimationsEnabled:1];
}

id sub_10020D92C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitioningLabelView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10020DA18()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  if (v1)
  {

    v1(v2);

    sub_1000164A8(v1);
  }
}

uint64_t sub_10020DA84()
{

  return _swift_deallocObject(v0, 72, 7);
}

id sub_10020DABC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform:v4];
}

uint64_t sub_10020DB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10020DB24()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10020DB5C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_10020DBAC(void *a1)
{
  v2 = sub_10074AB44();
  __chkstk_darwin(v2 - 8);
  sub_100745C84();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setNumberOfLines:{objc_msgSend(a1, "numberOfLines")}];
  [v3 setLineBreakMode:{objc_msgSend(a1, "lineBreakMode")}];
  [v3 setLineBreakStrategy:{objc_msgSend(a1, "lineBreakStrategy")}];
  [v3 setUserInteractionEnabled:{objc_msgSend(a1, "isUserInteractionEnabled")}];

  sub_100745BE4();
  sub_100745BF4();
  sub_100745C04();
  sub_100745C14();
  v4 = [a1 text];
  [v3 setText:v4];

  return v3;
}

uint64_t sub_10020DD38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10020DD70()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10020DDD8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_10020DE00()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10020DE60()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  [v1 bounds];

  return [v2 setFrame:?];
}

void sub_10020DEB4()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_numberOfLines) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_textAfterFontTransition);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeOutDelay) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInDelay) = 0;
  sub_100754644();
  __break(1u);
}

id sub_10020DFF0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded] = 0;
  v9 = &v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics] = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_pageGrid;
  v11 = sub_10074F704();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory] = 7;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for RevealingVideoView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  [v12 setClipsToBounds:1];
  return v12;
}

id sub_10020E198()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + qword_100982C58) = v1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded];
    sub_10066563C();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    (*((swift_isaMask & *v4) + 0xA0))(v1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded]);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_10020E270(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_10020FB98(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100037990(v1 + v6, v5);
    (*((swift_isaMask & *v8) + 0x100))(v5);
  }

  return sub_1000E94F8(a1);
}

void sub_10020E398(void *a1)
{
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v16 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize);
      v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize + 8);
      v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize + 16);
      v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics);
      v12 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_pageGrid;
      swift_beginAccess();
      sub_100037990(v1 + v12, v5);
      v13 = *((swift_isaMask & *v16) + 0x150);
      v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory);
      v15 = v16;

      v13(v7, v8, v9, v10, v11, v5, v14);

      sub_1000E94F8(v5);
    }
  }
}

uint64_t sub_10020E57C(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for RevealingVideoView();
  v12.receiver = v1;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "willMoveToWindow:", a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_pageGrid;
    v9 = result;
    swift_beginAccess();
    sub_100037990(v9 + v8, v5);
    v10 = v9;
    sub_10020F130(v9, v5);

    sub_1000E94F8(v5);
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_10020E760()
{
  v1 = sub_10074DAE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_10074F704();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics] || (v16 = &v0[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize], (v0[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize + 16] & 1) != 0))
  {

    return;
  }

  v46 = v2;
  v47 = Strong;
  v18 = *v16;
  v17 = v16[1];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_100037990(&v0[v19], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1000E94F8(v10);
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  v20 = v0[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory];
  if (v20 == 7)
  {
    v21 = *(v12 + 8);

    v21(v14, v11);
LABEL_13:

    return;
  }

  [v0 bounds];
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = 0.0;
  v50.size.height = 0.0;
  if (CGRectEqualToRect(v49, v50))
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_13;
  }

  v45 = v0;
  sub_1006E88C4(v20);
  v22 = v46;
  v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v20 != 6)
  {
    v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v20 != 4)
  {
    v23 = v24;
  }

  (*(v46 + 104))(v4, *v23, v1);
  (*(v22 + 32))(v7, v4, v1);
  v25 = sub_1007532B4();

  (*(v22 + 8))(v7, v1);
  v26 = v45;
  v27 = v45[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded];
  v28 = v47;
  [v26 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [v26 traitCollection];
  v38 = sub_1005824A4(v37, v30, v32, v34, v36, v18, v17, v25, v27);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [v28 setFrame:{v38, v40, v42, v44}];

  (*(v12 + 8))(v14, v11);
}

void sub_10020EC38()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [v0 bounds];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    [v0 convertPoint:v14 toCoordinateSpace:{MidX, CGRectGetMidY(v17)}];
    v9 = &v14[qword_100982240];
    v10 = *&v14[qword_100982240];
    v11 = *&v14[qword_100982240 + 8];
    v12 = v14[qword_100982240 + 16];
    *v9 = v7;
    v9[1] = v8;
    *(v9 + 16) = 0;
    if ((v12 & 1) != 0 || (v7 == v10 ? (v13 = v8 == v11) : (v13 = 0), !v13))
    {
      sub_10051A1A4();
    }
  }
}

void sub_10020ED5C(void *a1)
{
  v2 = v1;
  v4 = sub_100747D94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10020FB50(&qword_1009295B8, type metadata accessor for TodayCardVideoView);
    v10 = v9;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100009D34();
      v13 = v2;
      v14 = sub_100753FC4();

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    [v10 removeFromSuperview];
    [v2 addSubview:v10];
LABEL_13:
    v10[qword_100982C58] = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded);
    sub_10066563C();
    v19 = qword_100982288;
    swift_beginAccess();
    (*(v5 + 16))(v7, &v10[v19], v4);
    v20 = v10;
    sub_100747D34();
    sub_1005192C8(v7);

    [v2 setNeedsLayout];
    return;
  }

  if (a1)
  {
    sub_10020FB50(&qword_1009295B8, type metadata accessor for TodayCardVideoView);
    v15 = [a1 superview];
    if (v15)
    {
      v16 = v15;
      sub_100009D34();
      v17 = v1;
      v18 = sub_100753FC4();

      if (v18)
      {

        [a1 removeFromSuperview];
      }
    }
  }
}

void (*sub_10020F044(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10020F098;
}

void sub_10020F098(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_10020ED5C(Strong);

    Strong = v4;
  }

  else
  {
    sub_10020ED5C(Strong);
  }
}

void sub_10020F130(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics];
    if (v9)
    {
      v10 = &a1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize];
      if ((a1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize + 16] & 1) == 0)
      {
        v11 = v3[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory];
        if (v11 != 7)
        {
          v45 = a2;
          v46 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory;
          v47 = v11;
          v12 = *v10;
          v44 = *(v10 + 1);
          v50 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_videoView;
          Strong = swift_unknownObjectWeakLoadStrong();
          v14 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_videoView;
          v15 = swift_unknownObjectWeakLoadStrong();
          v51 = v14;
          v48 = Strong;
          swift_unknownObjectWeakAssign();
          v49 = a1;

          sub_10020ED5C(v15);

          v16 = &v3[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize];
          v17 = v12;
          *v16 = v12;
          v18 = v44;
          *(v16 + 1) = v44;
          v16[16] = 0;
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            (*((swift_isaMask & *v19) + 0xE8))(v17, v18, 0);
          }

          *&v3[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v9;

          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = *((swift_isaMask & *v21) + 0xD0);
            swift_bridgeObjectRetain_n();
            v23(v9);
          }

          else
          {
          }

          v24 = v45;
          sub_100037990(v45, v8);
          sub_10020E270(v8);
          v25 = v47;
          v3[v46] = v47;
          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            v27 = v26;
            (*((swift_isaMask & *v26) + 0x118))(v25);
          }

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = v28;
            v30 = swift_unknownObjectWeakLoadStrong();
            (*((swift_isaMask & *v29) + 0x150))(v30, *v16, *(v16 + 1), v16[16], v9, v24, v25);
          }

          [v3 setNeedsLayout];

          v31 = swift_unknownObjectWeakLoadStrong();
          if (v31)
          {
            v32 = v31;
            v33 = swift_unknownObjectWeakLoadStrong();
            if (v33)
            {
              v34 = v33;
              v35 = [v33 isHidden];
            }

            else
            {
              v35 = 0;
            }

            [v32 setHidden:v35];
          }

          v36 = swift_unknownObjectWeakLoadStrong();
          if (v36)
          {
            v37 = v36;
            v38 = swift_unknownObjectWeakLoadStrong();
            v39 = v38;
            if (v38)
            {
              v37[qword_100982C50] = *(v38 + qword_100982C50);
              sub_100665360();
              v40 = qword_100982C58;
              v41 = v39[qword_100982C58];
            }

            else
            {
              v37[qword_100982C50] = 7;
              sub_100665360();
              v41 = 0;
              v40 = qword_100982C58;
            }

            v37[v40] = v41;
            sub_10066563C();
          }

          v42 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          v43 = v49;
          sub_10020ED5C(v42);
        }
      }
    }
  }
}

id sub_10020F57C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoView()
{
  result = qword_10092E000;
  if (!qword_10092E000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10020F684()
{
  sub_10020F754();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10020F754()
{
  if (!qword_1009265D0[0])
  {
    sub_10074F704();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, qword_1009265D0);
    }
  }
}

void sub_10020F7BC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(Strong);
}

uint64_t (*sub_10020F82C(uint64_t **a1))()
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
  v2[4] = sub_10020F044(v2);
  return sub_10001BB78;
}

uint64_t sub_10020F89C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10020F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10020F95C(uint64_t *a1))()
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
  return sub_1000181A8;
}

uint64_t sub_10020F9F8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100009D34();
  v4 = v1;
  v5 = sub_100753FC4();

  return v5 & 1;
}

uint64_t sub_10020FB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10020FB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100926C40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10020FC08()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded) = 0;
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_pageGrid;
  v3 = sub_10074F704();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

double sub_10020FD7C(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = sub_1007504F4();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F6E4();
  v72 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_10074F704();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  sub_100743644();
  sub_100210A48(&qword_10092E030, &type metadata accessor for FramedVideo);
  sub_1007468B4();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v70 = v5;
  v68 = v4;

  v19 = sub_1007435E4();
  swift_getKeyPath();
  sub_100746914();

  v20 = (v13 + 8);
  v69 = a1;
  if (v19)
  {
    sub_10074F674();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_10074F5C4();
    v24 = *v20;
    (*v20)(v18, v12);
    v67 = v24;
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5E4();
    v24(v15, v12);
    v25 = v72;
    (*(v72 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5D4();
    v26 = v67;
    v67(v15, v12);
    (*(v25 + 16))(v71, v11, v7);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v25 + 8))(v11, v7);
    sub_10074F674();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_100743634();
  v29 = v70;
  if (v28)
  {
    sub_10074F2A4();
    v30 = v73;
    sub_100750504();
    sub_1007504C4();
    v32 = v31;
    (*(v74 + 8))(v30, v29);
    v33 = sub_1007435E4();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_100743604();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  sub_100753BA4();
  sub_100743614();
  if (v37)
  {
    if (qword_1009213F8 != -1)
    {
      swift_once();
    }

    v38 = sub_100750534();
    sub_10000D0FC(v38, qword_100981920);
    swift_getKeyPath();
    sub_100746914();

    v39 = sub_10074F3F4();
    v77 = v39;
    v78 = sub_100210A48(&qword_10092AC70, &type metadata accessor for Feature);
    v40 = sub_10000D134(aBlock);
    (*(*(v39 - 8) + 104))(v40, enum case for Feature.measurement_with_labelplaceholder(_:), v39);
    sub_10074FC74();
    sub_10000C620(aBlock);
    sub_10074CCB4();
    swift_unknownObjectRelease();
  }

  v41 = sub_100743604();

  swift_getKeyPath();
  sub_100746914();

  v42 = v80;
  v43 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v41];
  v44 = [v41 length];
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  *(v45 + 40) = 1;
  v46 = swift_allocObject();
  v46[2] = sub_100047814;
  v46[3] = v45;
  v78 = sub_1000B18A8;
  v79 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v77 = &unk_10086CB88;
  v47 = _Block_copy(aBlock);
  v48 = v42;
  v49 = v43;

  [v41 enumerateAttributesInRange:0 options:v44 usingBlock:{0x100000, v47}];

  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_29;
  }

  v50 = qword_1009213F0;
  v46 = v49;
  if (v50 != -1)
  {
LABEL_29:
    swift_once();
  }

  v51 = sub_100750534();
  v52 = sub_10000D0FC(v51, qword_100981908);
  v53 = *(v51 - 8);
  v54 = v68;
  (*(v53 + 16))(v68, v52, v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  swift_getKeyPath();
  sub_100746914();

  v55 = sub_10074F3F4();
  v77 = v55;
  v78 = sub_100210A48(&qword_10092AC70, &type metadata accessor for Feature);
  v56 = sub_10000D134(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_10074FC74();
  sub_10000C620(aBlock);
  sub_10074CCA4();
  v58 = v57;

  swift_unknownObjectRelease();
  sub_10006A144(v54);
  if (qword_100921F08 != -1)
  {
    swift_once();
  }

  v59 = sub_100750B04();
  sub_10000D0FC(v59, qword_1009833D8);
  swift_getKeyPath();
  sub_100746914();

  sub_100750584();
  v61 = v60;
  swift_unknownObjectRelease();
  v62 = v58 + v23 + v61;
  if (qword_100921F10 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v59, qword_1009833F0);
  swift_getKeyPath();
  sub_100746914();

  sub_100750554();
  v64 = v63;
  swift_unknownObjectRelease();

  return v62 + v64;
}

uint64_t sub_1002109D4()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100210A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100210A48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100210A90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v2 + OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(v3, ObjectType, v5);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100210B60()
{
  v1 = v0;
  v2 = sub_100748354();
  if (*(v2 + 16) && (v3 = sub_100412840(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_facet), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_selectedFacetOptions);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_selectedFacetOptions) = v5;

  sub_100212F08(v7, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {

    sub_100210D30();
  }
}

void (*sub_100210C2C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100213778;
}

void sub_100210D30()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10092E0A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_diffableDataSource;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_diffableDataSource];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  sub_1007518F4();

  v17[0] = 0xD000000000000030;
  v17[1] = 0x8000000100764C90;
  v9._rawValue = sub_100751734();
  sub_100751714(v9);

  v10 = *&v1[v6];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  sub_1007518C4();

  v12 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_preselectionContentOffset + 16])
  {
    (*(v3 + 8))(v5, v2);
    return;
  }

  v14 = *v12;
  v13 = v12[1];
  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    [v15 setContentOffset:{v14, v13}];

    (*(v3 + 8))(v5, v2);
    *v12 = 0.0;
    v12[1] = 0.0;
    *(v12 + 16) = 1;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100210F20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10000C518(&qword_10092E0A0);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v35 - v3;
  v37 = sub_10000C518(&qword_10092E0A8);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v37);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v35 - v9;
  v45.receiver = v0;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "viewDidLoad", v8);
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 systemBackgroundColor];
  [v12 setBackgroundColor:v14];

  v15 = [v0 collectionView];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v13 systemBackgroundColor];
  [v16 setBackgroundColor:v17];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016C60(0, &qword_100925218);
  sub_100742F54();
  sub_100753674();
  if (![v0 collectionView])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v36;
  v18 = v37;
  (*(v5 + 16))(v36, v10, v37);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v5 + 32))(v21 + v20, v19, v18);
  v22 = objc_allocWithZone(sub_10000C518(&qword_10092E0B0));
  v23 = sub_100751884();
  (*(v5 + 8))(v10, v18);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_diffableDataSource;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_diffableDataSource] = v23;

  sub_100213978(&qword_100925BC0, &type metadata accessor for PageFacets.Facet.Option);
  sub_100751784();
  v26._rawValue = &off_1008627E0;
  v27 = v38;
  sub_100751724(v26);
  sub_100742F64();
  aBlock = 0;
  v40 = 0;
  sub_100751704();

  v28 = *&v1[v24];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  sub_1007518C4();

  (*(v35 + 8))(v4, v27);
  v30 = [v1 collectionView];
  if (v30)
  {
    v31 = v30;
    v32 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v43 = sub_1002114E0;
    v44 = 0;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_1002B6430;
    v42 = &unk_10086CC78;
    v33 = _Block_copy(&aBlock);
    v34 = [v32 initWithSectionProvider:v33];
    _Block_release(v33);

    [v31 setCollectionViewLayout:v34];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1002114E0()
{
  v0 = sub_100751974();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007519D4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v0, v6);
  sub_1007519A4();
  sub_100016C60(0, &unk_10093FE00);
  v9 = sub_100753A54();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_100211684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C518(&qword_100925220);
  __chkstk_darwin(v5 - 8);
  v27 = v26 - v6;
  v7 = sub_1007513C4();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100751394();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007516E4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007516B4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v26[2] = a1;
    sub_100742F44();
    sub_1007516C4();
    v20 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_selectedFacetOptions];

    v21 = sub_1002A4FE8(a3, v20);

    if (v21)
    {
      sub_10000C518(&qword_100925228);
      v22 = *(sub_100751484() - 8);
      v26[1] = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
      v23 = sub_1007513A4();
      (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
      sub_1007513B4();
      sub_100751474();
      (*(v28 + 8))(v9, v29);
      (*(v11 + 8))(v13, v10);
    }

    sub_100753A14();
  }

  v30[3] = v14;
  v30[4] = &protocol witness table for UIListContentConfiguration;
  v24 = sub_10000D134(v30);
  (*(v15 + 16))(v24, v17, v14);
  sub_1007538E4();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_100211ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&qword_100925BB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_100742F54();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100016C60(0, &qword_100925218);
  v9 = sub_100753694();
  sub_10021379C(v6);
  return v9;
}

void sub_100211C04(void *a1, uint64_t a2)
{
  v124 = a1;
  v4 = sub_1007521E4();
  v121 = *(v4 - 8);
  v122 = v4;
  __chkstk_darwin(v4);
  v119 = &v91[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = sub_100752224();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_1007417F4();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = v7;
  v112 = &v91[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = sub_100752244();
  v116 = *(v125 - 8);
  __chkstk_darwin(v125);
  v110 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v115 = &v91[-v10];
  v11 = sub_10000C518(&qword_100925220);
  __chkstk_darwin(v11 - 8);
  v97 = &v91[-v12];
  v99 = sub_1007513C4();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_100751394();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v91[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100742E74();
  v128 = *(v15 - 8);
  __chkstk_darwin(v15);
  v105 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v106 = &v91[-v18];
  __chkstk_darwin(v19);
  v123 = &v91[-v20];
  __chkstk_darwin(v21);
  v126 = &v91[-v22];
  __chkstk_darwin(v23);
  v25 = &v91[-v24];
  __chkstk_darwin(v26);
  v28 = &v91[-v27];
  v29 = sub_10000C518(&qword_100925BB8);
  __chkstk_darwin(v29 - 8);
  v31 = &v91[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v91[-v33];
  v35 = sub_100742F54();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v127 = &v91[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_diffableDataSource);
  if (!v38)
  {
    __break(1u);
    return;
  }

  v39 = v2;
  v40 = v38;
  v109 = a2;
  sub_1007518A4();

  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_10021379C(v34);
    return;
  }

  v107 = v36;
  v41 = *(v36 + 32);
  v108 = v35;
  v41(v127, v34, v35);
  v103 = OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_facet;
  sub_100742E84();
  v42 = *(v128 + 104);
  v92 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v102 = v128 + 104;
  v101 = v42;
  v42(v25);
  v43 = sub_100213978(&qword_100925BA0, &type metadata accessor for PageFacets.Facet.DisplayType);
  sub_100753274();
  v100 = v43;
  sub_100753274();
  if (aBlock == v135 && v130 == v136)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_100754754();
  }

  v45 = v128 + 8;
  v46 = *(v128 + 8);
  v46(v25, v15);
  v128 = v45;
  v104 = v46;
  v46(v28, v15);

  if ((v44 & 1) != 0 || (v47 = *(v39 + OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_selectedFacetOptions), , v48 = sub_1002A4FE8(v127, v47), , (v48 & 1) == 0))
  {
    v50 = v124;
    [v124 contentOffset];
    v52 = v39 + OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_preselectionContentOffset;
    *v52 = v53;
    *(v52 + 8) = v54;
    *(v52 + 16) = 0;
    v55 = v107;
    v56 = v108;
    (*(v107 + 16))(v31, v127, v108);
    v57 = *(v55 + 56);
    v49 = 1;
    v57(v31, 0, 1, v56);
    sub_1007483C4();
    sub_10021379C(v31);
    v51 = v123;
  }

  else
  {
    v49 = 0;
    v51 = v123;
    v50 = v124;
  }

  sub_100742E84();
  v101(v51, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v15);
  sub_100753274();
  sub_100753274();
  if (aBlock == v135 && v130 == v136)
  {
    v58 = v51;
    v59 = v104;
    v104(v58, v15);
    v60 = v126;
LABEL_15:
    v59(v60, v15);

    goto LABEL_17;
  }

  v61 = sub_100754754();
  v62 = v104;
  v104(v51, v15);
  v62(v126, v15);

  if (v61)
  {
    goto LABEL_17;
  }

  v67 = v106;
  sub_100742E84();
  v68 = v105;
  v101(v105, v92, v15);
  sub_100753274();
  sub_100753274();
  if (aBlock == v135 && v130 == v136)
  {
    v69 = v68;
    v59 = v104;
    v104(v69, v15);
    v60 = v67;
    goto LABEL_15;
  }

  v70 = sub_100754754();
  v71 = v104;
  v104(v68, v15);
  v71(v67, v15);

  if (v70)
  {
LABEL_17:
    v63 = v109;
    if (v49)
    {
      isa = sub_100741704().super.isa;
      v65 = [v50 cellForItemAtIndexPath:isa];

      if (v65)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v66 = *(sub_100753A04() + 16);

          if (!v66)
          {
            sub_10000C518(&qword_100925228);
            v72 = *(sub_100751484() - 8);
            v128 = (*(v72 + 80) + 32) & ~*(v72 + 80);
            *(swift_allocObject() + 16) = xmmword_1007A5A00;
            v73 = v94;
            v74 = v93;
            v75 = v96;
            (*(v94 + 104))(v93, enum case for UICellAccessory.DisplayedState.always(_:), v96);
            v76 = sub_1007513A4();
            (*(*(v76 - 8) + 56))(v97, 1, 1, v76);
            v77 = v95;
            sub_1007513B4();
            sub_100751474();
            (*(v98 + 8))(v77, v99);
            (*(v73 + 8))(v74, v75);
          }

          sub_100753A14();
        }
      }
    }

    sub_100016C60(0, &qword_100926D00);
    v78 = sub_100753774();
    v79 = v110;
    sub_100752234();
    v80 = v115;
    sub_1007522B4();
    v128 = *(v116 + 8);
    (v128)(v79, v125);
    v81 = v113;
    v82 = v112;
    v83 = v114;
    (*(v113 + 16))(v112, v63, v114);
    v84 = (*(v81 + 80) + 24) & ~*(v81 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v50;
    (*(v81 + 32))(v85 + v84, v82, v83);
    v133 = sub_1002138C8;
    v134 = v85;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_1000CF7B0;
    v132 = &unk_10086CC28;
    v86 = _Block_copy(&aBlock);
    v87 = v50;

    v88 = v117;
    sub_100752204();
    aBlock = _swiftEmptyArrayStorage;
    sub_100213978(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
    v89 = v119;
    v90 = v122;
    sub_1007543A4();
    sub_100753734();
    _Block_release(v86);

    (*(v121 + 8))(v89, v90);
    (*(v118 + 8))(v88, v120);
    (v128)(v80, v125);
  }

  (*(v107 + 8))(v127, v108);
}

uint64_t type metadata accessor for PageFacetOptionsViewController()
{
  result = qword_10092E090;
  if (!qword_10092E090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100212E40()
{
  result = sub_100742F74();
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

void sub_100212F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100742F54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v33 - v9;
  v12 = __chkstk_darwin(v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_100213978(&qword_100925BC0, &type metadata accessor for PageFacets.Facet.Option);
        v26 = sub_100752FA4();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_100213978(&qword_100925BC8, &type metadata accessor for PageFacets.Facet.Option);
          v31 = sub_100753014();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id sub_1002132B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&qword_1009324C0);
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_diffableDataSource] = 0;
  v12 = &v3[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_preselectionContentOffset];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_facet;
  v14 = sub_100742F74();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a1, v14);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_facetsPresenter] = a2;

  v16 = sub_100748384();
  if (*(v16 + 16) && (v17 = sub_100412840(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PageFacetOptionsViewController_selectedFacetOptions] = v19;
  v20 = [objc_allocWithZone(UICollectionViewLayout) init];
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v31, "initWithCollectionViewLayout:", v20, ObjectType);

  if (a3)
  {
    v22 = [v21 navigationItem];
    sub_100016C60(0, &qword_100925250);
    sub_100016C60(0, &qword_100929CC0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v32.value.super.super.isa = sub_100753FF4();
    v32.is_nil = 0;
    isa = sub_100753634(UIBarButtonSystemItemDone, v32, v33).super.super.isa;
    [v22 setRightBarButtonItem:isa];
  }

  v24 = [v21 navigationItem];
  sub_100742F04();
  v25 = sub_100753064();

  [v24 setTitle:v25];

  sub_1007483A4();
  sub_10000C518(&unk_10093EC80);
  sub_10002DDC8(&unk_1009324F0, &unk_10093EC80);
  sub_100752574();
  sub_100752584();

  (*(v15 + 8))(a1, v14);
  sub_10000C620(v30);
  (*(v28 + 8))(v11, v29);
  return v21;
}

uint64_t sub_100213700()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100213740()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021379C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100925BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100213804()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002138C8()
{
  sub_1007417F4();
  v1 = *(v0 + 16);
  isa = sub_100741704().super.isa;
  [v1 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_100213960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100213978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002139C8()
{
  v1 = sub_10000C518(&qword_10092E0A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100213A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C518(&qword_10092E0A8);

  return sub_100211ABC(a1, a2, a3);
}

unint64_t sub_100213B0C()
{
  result = qword_10092E0B8;
  if (!qword_10092E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E0B8);
  }

  return result;
}

unint64_t sub_100213B64()
{
  result = qword_10092E0C0;
  if (!qword_10092E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E0C0);
  }

  return result;
}

uint64_t sub_100213BB8(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_100743E14();
  if (v5 >> 62)
  {
    v6 = sub_100754664();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 <= a1)
  {
    return result;
  }

  result = sub_100743E14();
  if ((result & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_8;
    }

    __break(1u);
    return result;
  }

  sub_100754574();
LABEL_8:

  v8 = sub_100745D04();

  if (v8)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v4, 1, v11) == 1)
      {

        return sub_100052F00(v4);
      }

      else
      {
        sub_1003C0E00(v8, 1, v10, v4);

        return (*(v12 + 8))(v4, v11);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100213E00(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
  if (v2 >> 62)
  {
    result = sub_100754664();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 & 0xC000000000000001;

    v5 = 0;
    v6 = &OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView;
    v15 = v2 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = sub_100754574();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = *&v7[*v6];
      v10 = *(*(*&v9[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v10)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_1002151A0(&qword_1009230E0, type metadata accessor for VideoView);
          sub_1002151A0(&qword_1009248C0, type metadata accessor for HeroCarouselItemBackgroundView);
          v16 = v10;
          v11 = v6;
          v12 = v2;
          v13 = v3;
          v14 = v9;
          sub_10074B164();
          v4 = v15;

          v8 = v14;
          v3 = v13;
          v2 = v12;
          v6 = v11;
        }
      }

      ++v5;
    }

    while (v3 != v5);
  }

  return result;
}

uint64_t sub_100214048(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
  if (v2 >> 62)
  {
    result = sub_100754664();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 & 0xC000000000000001;

    v5 = 0;
    v6 = &OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView;
    v15 = v2 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = sub_100754574();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = *&v7[*v6];
      v10 = *(*(*&v9[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v10)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_1002151A0(&qword_1009230E0, type metadata accessor for VideoView);
          sub_1002151A0(&qword_1009248C0, type metadata accessor for HeroCarouselItemBackgroundView);
          v16 = v10;
          v11 = v6;
          v12 = v2;
          v13 = v3;
          v14 = v9;
          sub_10074B124();
          v4 = v15;

          v8 = v14;
          v3 = v13;
          v2 = v12;
          v6 = v11;
        }
      }

      ++v5;
    }

    while (v3 != v5);
  }

  return result;
}

unint64_t sub_1002143A0()
{
  result = qword_100939460;
  if (!qword_100939460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939460);
  }

  return result;
}

uint64_t sub_1002143F4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_10074A204();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092E118);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  sub_100743E04();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  sub_100214908(&v46, &v3[v15]);
  swift_endAccess();
  v16 = sub_10000C518(&unk_10092E120);
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v44 = a2;
  v18(v14, a2, v16);
  v19 = *(v17 + 56);
  v42 = v16;
  v19(v14, 0, 1, v16);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100214964(v14, &v4[v20]);
  swift_endAccess();
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v43 = v46;
  swift_unknownObjectWeakAssign();
  v21 = sub_100743E14();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_100754664();
    v45 = v11;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_11:

    v28 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v11;
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  result = sub_1007545C4();
  if (v23 < 0)
  {
    __break(1u);
    return result;
  }

  v38 = v9;
  v39 = v8;
  v40 = v4;
  v41 = a1;
  type metadata accessor for HeroCarouselItemView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v27 = sub_100754574();
    }

    else
    {
      v27 = *(v22 + 8 * v26 + 32);
    }

    ++v26;
    [objc_allocWithZone(ObjCClassFromMetadata) init];
    sub_1005EB118(v27, a3);

    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
  }

  while (v23 != v26);

  v28 = v46;
  v4 = v40;
  a1 = v41;
  v9 = v38;
  v8 = v39;
LABEL_12:
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  v29 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView];
  sub_1002143A0();
  sub_100752964();
  if (v47)
  {
    v30 = 0;
  }

  else
  {
    v30 = v46;
  }

  sub_10023204C(v28, v30);

  v31 = v45;
  sub_100743DF4();
  v32 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollConfiguration;
  swift_beginAccess();
  (*(v9 + 40))(v29 + v32, v31, v8);
  swift_endAccess();
  LOBYTE(v31) = sub_100743DD4();
  v33 = sub_100743DE4();
  sub_100232334(v31 & 1, v33 & 1);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v34;
  v36 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v37 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  *v36 = sub_100214A4C;
  v36[1] = v35;

  sub_100046F70(v37);
}

uint64_t sub_100214964(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092E118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002149D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100214A0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100214A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000C824(a1, v35);
  sub_10000C518(&unk_100923100);
  sub_100743E24();
  result = swift_dynamicCast();
  if (result)
  {
    v6 = sub_100743E14();
    v7 = v6;
    v8 = *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_34;
    }

    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      v33 = v7 & 0xFFFFFFFFFFFFFF8;
      v34 = v7 & 0xC000000000000001;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      v11 = 4;
      v31 = v8 & 0xC000000000000001;
      v32 = v8 >> 62;
      v29 = v8 & 0xFFFFFFFFFFFFFF8;
      v30 = v9;
      v26 = v8;
      v27 = v3;
      v25 = v7;
      do
      {
        v12 = v11 - 4;
        if (v34)
        {
          v13 = sub_100754574();
          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v12 >= *(v33 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v7 + 8 * v11);

          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v9 = sub_100754664();
            goto LABEL_4;
          }
        }

        if (v32)
        {
          if (v12 == sub_100754664())
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        else if (v12 == *(v10 + 16))
        {
          goto LABEL_28;
        }

        if (v31)
        {
          v15 = sub_100754574();
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_33;
          }

          v15 = *(v8 + 8 * v11);
        }

        v16 = v15;
        type metadata accessor for HeroCarouselCollectionViewCell();
        sub_1007477B4();
        sub_10006FAC4(v13, a2);
        v17 = sub_100745D64();
        if (v17)
        {
          v18 = v17;
          v19 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
          if (v19)
          {
            v20 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView + 8];
            ObjectType = swift_getObjectType();
            v28 = *(v20 + 40);
            v22 = v19;
            v23 = ObjectType;
            v24 = v20;
            v8 = v26;
            v3 = v27;
            v28(v18, a2, v23, v24);
            v7 = v25;

            goto LABEL_8;
          }
        }

        else
        {
        }

LABEL_8:
        v10 = v29;
        ++v11;
      }

      while (v14 != v30);
    }

LABEL_29:
  }

  return result;
}

uint64_t sub_100214D60(uint64_t a1, char a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_100921710 != -1)
    {
      swift_once();
    }

    v7 = qword_1009820B0;
  }

  else
  {
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v7 = qword_1009820C8;
  }

  v8 = sub_100750B04();
  sub_10000D0FC(v8, v7);
  sub_1007502D4();
  sub_100750564();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_100214EF0(uint64_t a1, char a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView];
      v10 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_artworkView);
      sub_1007433C4();
      sub_1002151A0(&qword_100925570, &type metadata accessor for ArtworkView);
      v11 = v10;
      sub_100744274();

      v12 = *(*(*(v9 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v12)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_1002151A0(&unk_100923110, type metadata accessor for VideoView);
          v13 = v12;
          sub_100744274();
        }
      }

      v14 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
      if (v14)
      {
        v15 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView + 8];
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 48);
        v18 = v14;
        v17(a1, a2 & 1, ObjectType, v15);
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:
}

uint64_t sub_1002151A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002151E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - v11;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_100749AF4());
  *&v4[v14] = sub_100749AE4();
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_iconHeadingView;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_iconHeadingView] = v17;
  v19 = qword_100920600;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView];
  v22 = qword_10092E130;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100016C60(0, &qword_10092B280), v25 = v22, v26 = sub_100753FC4(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_100920608;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  v30 = sub_10000D0FC(v29, qword_10092E138);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_10037FD1C(v12);

  v34 = qword_100920610;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_10021AC00(&qword_10092E150, v69);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_10021AC5C(v69, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_10021ACB8(v69);
  [*(*&v5[v18] + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_titleHeadingView;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_titleHeadingView] = v37;
  v39 = qword_100920618;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v29, qword_10092E178);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_1001BBA8C(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for LockupCollectionSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v47 setClipsToBounds:0];
  v48 = sub_100216C14();
  v49 = [objc_allocWithZone(UICollectionView) initWithFrame:v48 collectionViewLayout:{a1, a2, a3, a4}];

  v50 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  v51 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  *&v47[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView] = v49;
  v52 = v49;

  if (!v52)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v53 = *&v47[v50];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v53 setClipsToBounds:0];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_iconHeadingView]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_titleHeadingView]];
  v54 = *&v47[v50];
  if (!v54)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v54 setDelegate:v47];
  v55 = *&v47[v50];
  if (!v55)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 clearColor];
  [v57 setBackgroundColor:v58];

  v59 = *&v47[v50];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = v59;
  sub_1007539D4();
  v62 = sub_100753064();

  [v61 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v62];

  v63 = *&v47[v50];
  if (!v63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v64 = swift_getObjCClassFromMetadata();
  v65 = v63;
  sub_1007539D4();
  v66 = sub_100753064();

  sub_1007539D4();
  v67 = sub_100753064();

  [v65 registerClass:v64 forSupplementaryViewOfKind:v66 withReuseIdentifier:v67];

  if (*&v47[v50])
  {
    [v47 addSubview:?];

    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1002159BC()
{
  v1 = v0;
  swift_beginAccess();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    sub_10074B544();
    swift_allocObject();

    v2 = sub_10074B554();

    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = v2;
  }
}

void (*sub_100215A78(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100215B10;
}

void sub_100215B10(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (swift_weakLoadStrong())
    {
      v4 = v3[4];
      sub_10074B544();
      swift_allocObject();
      *(v4 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = sub_10074B554();
    }
  }

  free(v3);
}

uint64_t sub_100215BE4()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_10092E130 = v5;
  return result;
}

void sub_100215CF0()
{
  qword_10092E168 = &type metadata for CGFloat;
  unk_10092E170 = &protocol witness table for CGFloat;
  qword_10092E150 = 0x4008000000000000;
}

id sub_100215D2C(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_100750534();
  sub_100039C50(v5, a2);
  v6 = sub_10000D0FC(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  *(v6 + 8) = UIFontWeightSemibold;
  (*(*(v5 - 8) + 104))();

  return v8;
}

uint64_t sub_100215DE8()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10092E190);
  v1 = sub_10000D0FC(v0, qword_10092E190);
  if (qword_100920EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100980930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100215EB0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_100920620 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_10092E190);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_100750B04();
  v12 = &protocol witness table for StaticDimension;
  sub_10000D134(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_10000D134(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  sub_100012160(&v13, &unk_10092E1A8);
  return sub_100012160(&v10, &unk_10092E1D0);
}

id sub_1002160D8(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}