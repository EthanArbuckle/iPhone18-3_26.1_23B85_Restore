uint64_t sub_100212488(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
    if (sub_10077158C() > a1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    return 0;
  }

LABEL_4:
  result = swift_beginAccess();
  v5 = *(v1 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_10077149C();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

LABEL_7:
    swift_endAccess();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100212564(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10076F9AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v13 = sub_10076BF6C();
  __chkstk_darwin(v13 - 8);
  result = sub_10076BB5C();
  if (result)
  {
    v17 = a2;
    swift_beginAccess();
    [a3 contentMode];
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [a3 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();
    if (*(v3 + 16))
    {
      sub_10075FD2C();
      sub_10000D7F8();

      sub_100760B8C();
    }

    v19 = 0u;
    v20 = 0u;
    memset(v18, 0, sizeof(v18));
    sub_10076F95C();
    sub_1000258C0(v18);
    sub_1000258C0(&v19);
    *(&v20 + 1) = &type metadata for Int;
    *&v19 = v17;
    sub_10076F98C();
    v15 = *(v7 + 8);
    v15(v9, v6);
    sub_1000258C0(&v19);
    sub_100770B9C();

    return (v15)(v12, v6);
  }

  return result;
}

uint64_t sub_100212858()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002128BC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    return sub_10077158C();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100212948(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1002129DC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.icons(_:);
  v3 = sub_10076517C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100212A50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100212488(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100212A78()
{
  v0 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_10075FD2C();
  v3 = sub_10075FB3C();
  if (qword_10093F8E8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076BCFC();
  v5 = sub_10000A61C(v4, qword_10099D558);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  sub_10075FCDC();
  return v3;
}

uint64_t sub_100212BC4()
{
  result = sub_10075FCAC();
  if (*(v0 + 16))
  {
    sub_10075FD2C();
    sub_10000D7F8();

    sub_100760BFC();
  }

  return result;
}

uint64_t sub_100212C58()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D1C();
  qword_10099DAC0 = result;
  return result;
}

void sub_100212C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v8 = sub_10076638C();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v11 = 0;
  v39 = _swiftEmptyArrayStorage;
  v32 = a4;
  v33 = v5;
  do
  {
    v12 = a1 + 40 + 16 * v11;
    v13 = v11;
    while (1)
    {
      if (v13 >= v10)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      v14 = sub_10076FF6C();
      v15 = [objc_opt_self() _systemImageNamed:v14];

      if (v15)
      {
        break;
      }

LABEL_5:
      ++v13;
      v12 += 16;
      if (v11 == v10)
      {
        a4 = v32;
        v5 = v33;
        goto LABEL_18;
      }
    }

    if (qword_10093FAF8 != -1)
    {
      swift_once();
    }

    v16 = [v15 imageWithTintColor:{qword_10099DAC0, v32, v33, v34, v35}];

    if (!v16)
    {
      goto LABEL_5;
    }

    sub_10077019C();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v39 = v40;
    a4 = v32;
    v5 = v33;
  }

  while (v11 != v10);
LABEL_18:
  sub_100016F40(0, &qword_1009544A0);

  v17 = [v5 traitCollection];
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = NSFontAttributeName;
  v19 = NSFontAttributeName;
  v20 = [v5 font];
  *(inited + 64) = sub_10000A5D4(&qword_10094DDF8);
  *(inited + 40) = v20;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_1001E4F90(inited + 32);
  v21 = sub_10077078C();
  v22 = objc_allocWithZone(NSAttributedString);
  v23 = sub_10076FF6C();
  v24 = [v22 initWithString:v23];

  v25 = [objc_allocWithZone(NSMutableAttributedString) init];
  v27 = v36;
  v26 = v37;
  v28 = v38;
  (*(v37 + 16))(v36, a4, v38);
  v29 = (*(v26 + 88))(v27, v28);
  v30 = v21;
  v31 = v24;
  if (v29 == enum case for TertiaryIconPlacement.leading(_:) || (v30 = v24, v31 = v21, v29 == enum case for TertiaryIconPlacement.trailing(_:)))
  {

    [v25 appendAttributedString:v30];
    [v25 appendAttributedString:v31];
    [v5 setAttributedText:v25];
    [v5 setNeedsLayout];
  }

  else
  {
LABEL_23:
    sub_10077166C();
    __break(1u);
  }
}

id sub_10021311C(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_10075E11C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0;
  if (v20 && a1)
  {
    v72 = v14;
    v22 = (v3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    v23 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    *v22 = a1;
    v22[1] = v20;
    v71 = a1;

    swift_unknownObjectWeakAssign();
    v24 = sub_100376418(a3);
    v25 = &qword_10099D000;
    if (!v24)
    {
      v32 = 0;
LABEL_29:
      v48 = v71;
      v46 = v72;
      goto LABEL_33;
    }

    v26 = v24;
    v70 = a2;
    v27 = [v24 visibleViewController];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for SearchViewController();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v30 = v29;

        v31 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController);
        v32 = *&v31[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController];
        v33 = v32;

        if (!v32)
        {
          goto LABEL_32;
        }

        v34 = v33;
LABEL_13:
        v36 = v33;
        swift_unknownObjectWeakAssign();
        v37 = [v34 collectionView];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 indexPathsForSelectedItems];
          if (v39)
          {
            v40 = v39;
            v69 = v38;
            v41 = sub_1007701BC();

            if (*(v41 + 16))
            {
              v42 = v72;
              (*(v72 + 16))(v16, v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v13);

              (*(v42 + 32))(v19, v16, v13);
              v43 = v69;
              isa = sub_10075E02C().super.isa;
              v45 = [v43 cellForItemAtIndexPath:isa];

              v46 = v72;
              (*(v46 + 8))(v19, v13);
              v47 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
              *(v3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v45;

              v25 = &qword_10099D000;
              a2 = v70;
              v48 = v71;
              goto LABEL_33;
            }

            v38 = v69;
          }
        }

        v49 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_originatingView);
        if (v49)
        {
          v69 = v38;
          v50 = v49;
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            v53 = v50;
            a2 = v70;
LABEL_28:

            v56 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
            *(v3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v52;

            v25 = &qword_10099D000;
            goto LABEL_29;
          }

          v53 = v50;
          v68 = v50;
          while (1)
          {

            v54 = [v53 superview];
            if (!v54)
            {
              break;
            }

            v53 = v54;
            objc_opt_self();
            v55 = swift_dynamicCastObjCClass();
            if (v55)
            {
              v52 = v55;
              a2 = v70;
              v50 = v68;
              goto LABEL_28;
            }
          }
        }

        else
        {
        }

LABEL_32:
        a2 = v70;
        v48 = v71;
        v46 = v72;
        v25 = &qword_10099D000;
LABEL_33:
        v57 = *(v3 + v25[346]);
        if (!v57)
        {
LABEL_43:
          v64 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPagePresentationController());
          v65 = v48;
          v66 = [v64 initWithPresentedViewController:v65 presentingViewController:a2];

          return v66;
        }

        if (v32)
        {
          v58 = v57;
          v59 = [v32 collectionView];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 indexPathForCell:v58];

            if (v61)
            {
              sub_10075E06C();

              v62 = 0;
            }

            else
            {
              v62 = 1;
            }

            (*(v72 + 56))(v9, v62, 1, v13);
            sub_10021559C(v9, v12);
            goto LABEL_42;
          }
        }

        (*(v46 + 56))(v12, 1, 1, v13);
LABEL_42:
        v63 = OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
        swift_beginAccess();
        sub_10021560C(v12, v3 + v63);
        swift_endAccess();
        goto LABEL_43;
      }
    }

    v33 = [v26 visibleViewController];

    if (!v33)
    {
      v32 = 0;
      goto LABEL_32;
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {

      v32 = 0;
      goto LABEL_32;
    }

    v34 = v35;
    v32 = v35;
    goto LABEL_13;
  }

  return v21;
}

void sub_100213830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v5 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v5 || (*&v39 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_1000FEDC4(), v6 = v5, sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) == 0))
  {
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_7;
  }

  v7 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
LABEL_7:
    sub_10000CFBC(&v47, &qword_10094DE78);
    goto LABEL_8;
  }

  v8 = v49;
  sub_10000CF78(&v47, *(&v48 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_10000CD74(&v47);
  v10 = [v9 layer];

  v11 = [v10 presentationLayer];
  if (v11)
  {
    [v11 transform];

    goto LABEL_14;
  }

LABEL_8:
  v12 = *(a3 + v4);
  if (v12 && (*&v47 = *(a3 + v4), sub_1000FEDC4(), v13 = v12, sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) != 0))
  {
    v14 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v15 = v41;
      sub_10000CF78(&v39, *(&v40 + 1));
      v16 = (*(v15 + 8))(v14, v15);
      sub_10000CD74(&v39);
      v17 = [v16 layer];

      [v17 transform];
      goto LABEL_14;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10000CFBC(&v39, &qword_10094DE78);
  v18 = *&CATransform3DIdentity.m33;
  v51 = *&CATransform3DIdentity.m31;
  v52 = v18;
  v19 = *&CATransform3DIdentity.m43;
  v53 = *&CATransform3DIdentity.m41;
  v54 = v19;
  v20 = *&CATransform3DIdentity.m13;
  v47 = *&CATransform3DIdentity.m11;
  v48 = v20;
  v21 = *&CATransform3DIdentity.m23;
  v49 = *&CATransform3DIdentity.m21;
  v50 = v21;
LABEL_14:
  v22 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v22)
  {
    v23 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    *&v39 = v22;
    v25 = (*(*(v23 + 8) + 8))(ObjectType);
    v26 = [v25 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v26 setTransform:&v39];
  }

  v27 = *(a3 + v4);
  if (v27 && (sub_1000FEDC4(), v28 = v27, sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v30 = v41;
      sub_10000CF78(&v39, *(&v40 + 1));
      v31 = (*(v30 + 8))(v29, v30);
      sub_10000CD74(&v39);
      v32 = [v31 layer];

      [v32 removeAllAnimations];
      v33 = *(a3 + v4);
      if (!v33)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10000CFBC(&v39, &qword_10094DE78);
  v33 = *(a3 + v4);
  if (!v33)
  {
LABEL_26:
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_27;
  }

LABEL_23:
  sub_1000FEDC4();
  v34 = v33;
  sub_10000A5D4(&qword_10094DE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v36 = v41;
    sub_10000CF78(&v39, *(&v40 + 1));
    v37 = (*(v36 + 8))(v35, v36);
    sub_10000CD74(&v39);
    v38 = [v37 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v38 setTransform:&v39];

    return;
  }

LABEL_27:
  sub_10000CFBC(&v39, &qword_10094DE78);
}

void sub_100213D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (v4 && (*&v24 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_1000FEDC4(), v5 = v4, sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v7 = v34;
      sub_10000CF78(&v32, *(&v33 + 1));
      v8 = (*(v7 + 8))(v6, v7);
      sub_10000CD74(&v32);
      v9 = [v8 layer];

      v10 = *&CATransform3DIdentity.m33;
      v28 = *&CATransform3DIdentity.m31;
      v29 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v30 = *&CATransform3DIdentity.m41;
      v31 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v24 = *&CATransform3DIdentity.m11;
      v25 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v26 = *&CATransform3DIdentity.m21;
      v27 = v13;
      [v9 setTransform:&v24];

      goto LABEL_7;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  sub_10000CFBC(&v32, &qword_10094DE78);
LABEL_7:
  v14 = a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController;
  v15 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v15)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    *&v24 = v15;
    v18 = (*(*(v16 + 8) + 8))(ObjectType);
    v19 = [v18 layer];

    v20 = *&CATransform3DIdentity.m33;
    v28 = *&CATransform3DIdentity.m31;
    v29 = v20;
    v21 = *&CATransform3DIdentity.m43;
    v30 = *&CATransform3DIdentity.m41;
    v31 = v21;
    v22 = *&CATransform3DIdentity.m13;
    v24 = *&CATransform3DIdentity.m11;
    v25 = v22;
    v23 = *&CATransform3DIdentity.m23;
    v26 = *&CATransform3DIdentity.m21;
    v27 = v23;
    [v19 setTransform:&v24];
  }
}

void sub_100213F34(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    if (v3)
    {
      v4 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      v7 = v3;
      v6(ObjectType, v4);
    }
  }
}

char *sub_100214068(void *a1)
{
  v3 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v112 - v4;
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong collectionView];

    if (v12)
    {
      v13 = OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
      swift_beginAccess();
      sub_1000DE51C(&v1[v13], v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_10000CFBC(v5, &unk_10094DE60);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        isa = sub_10075E02C().super.isa;
        v15 = [v12 cellForItemAtIndexPath:isa];

        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell];
          *&v1[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell] = v15;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v119 = v18;
  sub_1000FEDC4();
  v21 = v18;
  sub_10000A5D4(&qword_10094DE70);
  if (swift_dynamicCast())
  {
    v22 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v23 = v122;
      sub_10000CF78(&v120, *(&v121 + 1));
      v24 = *(v23 + 8);
      v117 = v1;
      v25 = v24(v22, v23);
      v1 = v117;
      v26 = v25;
      sub_10000CD74(&v120);
      v27 = *&v1[v17];
      if (!v27)
      {

LABEL_39:
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        goto LABEL_23;
      }

      v119 = *&v1[v17];
      v28 = v27;
      if (swift_dynamicCast())
      {
        v29 = *(&v121 + 1);
        if (*(&v121 + 1))
        {
          v116 = v21;
          v30 = v122;
          sub_10000CF78(&v120, *(&v121 + 1));
          v31 = (*(v30 + 16))(v29, v30);
          v1 = v117;
          v32 = v31;
          sub_10000CD74(&v120);
          v33 = *&v1[v17];
          if (v33)
          {
            v119 = *&v1[v17];
            v34 = v33;
            if (swift_dynamicCast())
            {
              v35 = *(&v121 + 1);
              if (*(&v121 + 1))
              {
                v115 = v32;
                v36 = v122;
                sub_10000CF78(&v120, *(&v121 + 1));
                v37 = (*(v36 + 40))(v35, v36);
                v1 = v117;
                v38 = v37;
                v40 = v39;
                sub_10000CD74(&v120);
                v41 = *&v1[v17];
                if (v41)
                {
                  v119 = *&v1[v17];
                  v42 = v41;
                  v43 = swift_dynamicCast();
                  v44 = v116;
                  if (v43)
                  {
                    v45 = *(&v121 + 1);
                    if (*(&v121 + 1))
                    {
                      v46 = v122;
                      sub_10000CF78(&v120, *(&v121 + 1));
                      v47 = (*(v46 + 32))(v45, v46);
                      v1 = v117;
                      v114 = v47;
                      v113 = v48;
                      v50 = v49;
                      v52 = v51;
                      sub_10000CD74(&v120);
                      [v44 bounds];
                      v54 = v53;
                      v56 = v55;
                      v58 = v57;
                      v60 = v59;
                      v61 = [v20 view];
                      [v44 convertRect:v61 toView:{v54, v56, v58, v60}];
                      v63 = v62;
                      v65 = v64;

                      v66 = v115;
                      [v115 bounds];
                      [v66 convertRect:v44 toCoordinateSpace:?];
                      v68 = v38 + v63 + v67;
                      v70 = v40 + v65 + v69;
                      v71 = swift_unknownObjectWeakLoadStrong();
                      v72 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
                      v73 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
                      v74 = objc_allocWithZone(v73);
                      *&v74[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCardView] = v26;
                      *&v74[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = v71;
                      v75 = &v74[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toBounds];
                      v76 = v113;
                      *v75 = v114;
                      *(v75 + 1) = v76;
                      *(v75 + 2) = v50;
                      *(v75 + 3) = v52;
                      v75[32] = 0;
                      v77 = &v74[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCenter];
                      *v77 = v68;
                      v77[1] = v70;
                      *(v77 + 16) = 0;
                      *&v74[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v72;
                      v118.receiver = v74;
                      v118.super_class = v73;
                      v78 = v72;
                      v79 = v26;
                      v80 = v71;
                      v81 = objc_msgSendSuper2(&v118, "init");

                      goto LABEL_25;
                    }
                  }

                  else
                  {
                    v122 = 0;
                    v120 = 0u;
                    v121 = 0u;
                  }

                  goto LABEL_23;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v122 = 0;
              v120 = 0u;
              v121 = 0u;
            }

            goto LABEL_23;
          }

LABEL_43:
          goto LABEL_39;
        }
      }

      else
      {
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

LABEL_23:
  sub_10000CFBC(&v120, &qword_10094DE78);
LABEL_24:
  v82 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  v83 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  v84 = objc_allocWithZone(v83);
  *&v84[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCardView] = 0;
  *&v84[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = 0;
  v85 = &v84[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toBounds];
  *v85 = 0u;
  *(v85 + 1) = 0u;
  v85[32] = 1;
  v86 = &v84[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCenter];
  *v86 = 0;
  *(v86 + 1) = 0;
  v86[16] = 1;
  *&v84[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v82;
  v123.receiver = v84;
  v123.super_class = v83;
  v87 = v82;
  v81 = objc_msgSendSuper2(&v123, "init");
LABEL_25:
  v88 = swift_allocObject();
  *(v88 + 16) = v1;
  v89 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v90 = *&v81[v89];
  v91 = v81;
  v92 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v90;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v90 = sub_10049DEB4(0, *(v90 + 2) + 1, 1, v90);
    *&v81[v89] = v90;
  }

  v95 = *(v90 + 2);
  v94 = *(v90 + 3);
  if (v95 >= v94 >> 1)
  {
    v90 = sub_10049DEB4((v94 > 1), v95 + 1, 1, v90);
  }

  *(v90 + 2) = v95 + 1;
  v96 = &v90[24 * v95];
  *(v96 + 4) = sub_100215564;
  *(v96 + 5) = v88;
  v96[48] = 0;
  *&v81[v89] = v90;
  swift_endAccess();

  v97 = swift_allocObject();
  *(v97 + 16) = a1;
  swift_beginAccess();
  v98 = *&v81[v89];
  v99 = a1;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v98;
  if ((v100 & 1) == 0)
  {
    v98 = sub_10049DEB4(0, *(v98 + 2) + 1, 1, v98);
    *&v81[v89] = v98;
  }

  v102 = *(v98 + 2);
  v101 = *(v98 + 3);
  if (v102 >= v101 >> 1)
  {
    v98 = sub_10049DEB4((v101 > 1), v102 + 1, 1, v98);
  }

  *(v98 + 2) = v102 + 1;
  v103 = &v98[24 * v102];
  *(v103 + 4) = sub_10021556C;
  *(v103 + 5) = v97;
  v103[48] = 1;
  *&v81[v89] = v98;
  swift_endAccess();

  v104 = swift_allocObject();
  *(v104 + 16) = v92;
  swift_beginAccess();
  v105 = *&v81[v89];
  v106 = v92;

  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v105;
  if ((v107 & 1) == 0)
  {
    v105 = sub_10049DEB4(0, *(v105 + 2) + 1, 1, v105);
    *&v81[v89] = v105;
  }

  v109 = *(v105 + 2);
  v108 = *(v105 + 3);
  if (v109 >= v108 >> 1)
  {
    v105 = sub_10049DEB4((v108 > 1), v109 + 1, 1, v105);
  }

  *(v105 + 2) = v109 + 1;
  v110 = &v105[24 * v109];
  *(v110 + 4) = sub_100215574;
  *(v110 + 5) = v104;
  v110[48] = 2;
  *&v81[v89] = v105;
  swift_endAccess();

  return v91;
}

void sub_100214ADC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_10021557C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10009AEDC;
  v8[3] = &unk_10088D480;
  v6 = _Block_copy(v8);
  v7 = a3;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
}

void sub_100214BCC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    v5 = v1;
    v4(1, ObjectType, v2);
  }
}

void sub_100214C80(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v8 = v3;
    type metadata accessor for AppPromotionDetailPagePresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v5 + 24))
      {
        sub_10000A570(v5, v9);
        v6 = v10;
        v7 = v11;
        sub_10000CF78(v9, v10);
        (*(v7 + 24))(v6, v7);

        sub_10000CD74(v9);
        return;
      }
    }
  }
}

void sub_100214D94(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v10 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v10)
  {
    goto LABEL_13;
  }

  v43 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  sub_1000FEDC4();
  v11 = v10;
  sub_10000A5D4(&qword_10094DE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_14:
    sub_10000CFBC(&v44, &qword_10094DE78);
    goto LABEL_15;
  }

  v13 = v46;
  sub_10000CF78(&v44, *(&v45 + 1));
  v14 = (*(v13 + 8))(v12, v13);
  sub_10000CD74(&v44);
  v15 = *(a3 + v9);
  if (!v15)
  {

LABEL_13:
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_14;
  }

  v43 = *(a3 + v9);
  v16 = v15;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_25;
  }

  v17 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_25:

    goto LABEL_14;
  }

  v42 = v14;
  v18 = v46;
  sub_10000CF78(&v44, *(&v45 + 1));
  v19 = *(v18 + 16);
  v20 = v18;
  v21 = v42;
  v22 = v19(v17, v20);
  sub_10000CD74(&v44);
  [v22 addSubview:v21];
  v23 = *(a3 + v9);
  if (!v23)
  {

    goto LABEL_13;
  }

  v43 = *(a3 + v9);
  v24 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_28;
  }

  v25 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_28:

    goto LABEL_14;
  }

  v26 = v46;
  sub_10000CF78(&v44, *(&v45 + 1));
  v27 = (*(v26 + 24))(v25, v26);
  [v27 setNeedsLayout];

  sub_10000CD74(&v44);
LABEL_15:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = [Strong collectionView];

    if (v30)
    {
      v31 = [v30 indexPathsForSelectedItems];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1007701BC();

        v34 = *(v33 + 16);
        if (v34)
        {
          v37 = *(v6 + 16);
          v36 = v6 + 16;
          v35 = v37;
          v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
          v42 = v33;
          v39 = v33 + v38;
          v40 = *(v36 + 56);
          do
          {
            v35(v8, v39, v5);
            isa = sub_10075E02C().super.isa;
            (*(v36 - 8))(v8, v5);
            [v30 deselectItemAtIndexPath:isa animated:{0, v42}];

            v39 += v40;
            --v34;
          }

          while (v34);
        }
      }
    }
  }
}

id sub_100215208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageTransitioningDelegate()
{
  result = qword_10094DE48;
  if (!qword_10094DE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100215330()
{
  sub_1002153E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002153E0()
{
  if (!qword_10094FD40)
  {
    sub_10075E11C();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10094FD40);
    }
  }
}

id sub_100215438(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_originatingView;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_originatingView] = 0;
  v4 = &v1[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
  v6 = sub_10075E11C();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell] = 0;
  v7 = *&v1[v3];
  *&v1[v3] = a1;
  v8 = a1;

  v10.receiver = v1;
  v10.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate();
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_10021552C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100215584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10021559C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094DE60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021560C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094DE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_10021567C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v2)
  {
    v29 = 0.0;
    v28 = 1;
    v4 = 0.0;
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = 0.0;
  if (!Strong)
  {
LABEL_10:
    v28 = 1;
    v29 = 0.0;
    v30 = *&v0[v1];
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_14:
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_15;
  }

  v5 = Strong;
  sub_1000FEDC4();
  v6 = v2;
  sub_10000A5D4(&qword_10094DE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_9;
  }

  v7 = *(&v65 + 1);
  if (!*(&v65 + 1))
  {
LABEL_9:

    sub_10000CFBC(&v64, &qword_10094DE78);
    goto LABEL_10;
  }

  v8 = v66;
  sub_10000CF78(&v64, *(&v65 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_10000CD74(&v64);
  [v6 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v5 view];
  [v6 convertRect:v18 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;

  [v9 bounds];
  [v9 convertRect:v6 toCoordinateSpace:?];
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v4 = v20 + CGRectGetMidX(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  MidY = CGRectGetMidY(v68);

  v28 = 0;
  v29 = v22 + MidY;
  v30 = *&v0[v1];
  if (!v30)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_1000FEDC4();
  v31 = v30;
  sub_10000A5D4(&qword_10094DE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v33 = v66;
    sub_10000CF78(&v64, *(&v65 + 1));
    v34 = (*(v33 + 8))(v32, v33);
    sub_10000CD74(&v64);
    goto LABEL_16;
  }

LABEL_15:
  sub_10000CFBC(&v64, &qword_10094DE78);
  v34 = 0;
LABEL_16:
  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = type metadata accessor for AppPromotionPageOpenAnimation();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCardView] = v34;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCollectionViewController] = v35;
  v38 = &v37[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCenter];
  *v38 = v4;
  v38[1] = v29;
  *(v38 + 16) = v28;
  v63.receiver = v37;
  v63.super_class = v36;
  v39 = objc_msgSendSuper2(&v63, "init");
  v40 = swift_allocObject();
  *(v40 + 16) = v0;
  v41 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v42 = *&v39[v41];
  v43 = v0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_10049DEB4(0, *(v42 + 2) + 1, 1, v42);
    *&v39[v41] = v42;
  }

  v46 = *(v42 + 2);
  v45 = *(v42 + 3);
  if (v46 >= v45 >> 1)
  {
    v42 = sub_10049DEB4((v45 > 1), v46 + 1, 1, v42);
  }

  *(v42 + 2) = v46 + 1;
  v47 = &v42[24 * v46];
  *(v47 + 4) = sub_100215C94;
  *(v47 + 5) = v40;
  v47[48] = 0;
  *&v39[v41] = v42;
  swift_endAccess();

  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  swift_beginAccess();
  v49 = *&v39[v41];
  v50 = v43;

  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v49;
  if ((v51 & 1) == 0)
  {
    v49 = sub_10049DEB4(0, *(v49 + 2) + 1, 1, v49);
    *&v39[v41] = v49;
  }

  v53 = *(v49 + 2);
  v52 = *(v49 + 3);
  if (v53 >= v52 >> 1)
  {
    v49 = sub_10049DEB4((v52 > 1), v53 + 1, 1, v49);
  }

  *(v49 + 2) = v53 + 1;
  v54 = &v49[24 * v53];
  *(v54 + 4) = sub_100215C9C;
  *(v54 + 5) = v48;
  v54[48] = 1;
  *&v39[v41] = v49;
  swift_endAccess();

  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  swift_beginAccess();
  v56 = *&v39[v41];
  v57 = v50;

  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v56;
  if ((v58 & 1) == 0)
  {
    v56 = sub_10049DEB4(0, *(v56 + 2) + 1, 1, v56);
    *&v39[v41] = v56;
  }

  v60 = *(v56 + 2);
  v59 = *(v56 + 3);
  if (v60 >= v59 >> 1)
  {
    v56 = sub_10049DEB4((v59 > 1), v60 + 1, 1, v56);
  }

  *(v56 + 2) = v60 + 1;
  v61 = &v56[24 * v60];
  *(v61 + 4) = sub_100215CA4;
  *(v61 + 5) = v55;
  v61[48] = 2;
  *&v39[v41] = v56;
  swift_endAccess();

  return v39;
}

char *sub_100215CC4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_badgeView] = [objc_allocWithZone(type metadata accessor for BadgeView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_verticalSeparatorView] = v12;
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_topSeparatorView] = v13;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_bottomSeparatorView] = v14;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_verticalSeparatorView;
  v17 = *&v15[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_verticalSeparatorView];
  sub_1000325F0();
  v18 = v15;
  v19 = v17;
  v20 = sub_100770CDC();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_topSeparatorView;
  v22 = *&v18[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_topSeparatorView];
  v23 = sub_100770CDC();
  [v22 setBackgroundColor:v23];

  v24 = OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_bottomSeparatorView;
  v25 = *&v18[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_bottomSeparatorView];
  v26 = sub_100770CDC();
  [v25 setBackgroundColor:v26];

  v27 = [v18 contentView];
  [v27 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_badgeView]];

  v28 = [v18 contentView];
  [v28 addSubview:*&v15[v16]];

  v29 = [v18 contentView];
  [v29 addSubview:*&v18[v21]];

  v30 = [v18 contentView];
  [v30 addSubview:*&v18[v24]];

  return v18;
}

id sub_100216094()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_badgeView];
  v3 = [v1 contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = [v1 contentView];
  [v12 frame];

  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v13 = sub_100765C9C();
  sub_10000A61C(v13, qword_1009A04D8);
  v14 = [v1 traitCollection];
  sub_100765BDC();
  v16 = v15;

  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  v20 = 1.0 / v19;
  v21 = [v1 traitCollection];
  LOBYTE(v14) = sub_10077070C();

  v22 = 0.0;
  if ((v14 & 1) == 0)
  {
    v23 = [v1 contentView];
    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v53.origin.x = v25;
    v53.origin.y = v27;
    v53.size.width = v29;
    v53.size.height = v31;
    v22 = CGRectGetMaxX(v53) - v20;
  }

  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_verticalSeparatorView];
  v33 = [v1 contentView];
  [v33 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v54.origin.x = v35;
  v54.origin.y = v37;
  v54.size.width = v39;
  v54.size.height = v41;
  [v32 setFrame:{v22, floor((CGRectGetHeight(v54) - (v16 + -54.0)) * 0.5), v20, v16 + -54.0}];
  v42 = [v1 traitCollection];
  [v42 displayScale];
  v44 = v43;

  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_topSeparatorView];
  v46 = 1.0 / v44;
  [v1 bounds];
  MinX = CGRectGetMinX(v55);
  [v1 bounds];
  [v45 setFrame:{MinX, 0.0, CGRectGetWidth(v56), v46}];
  v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_bottomSeparatorView];
  [v1 bounds];
  v49 = CGRectGetMinX(v57);
  [v1 bounds];
  v50 = CGRectGetMaxY(v58) - v46;
  [v1 bounds];
  return [v48 setFrame:{v49, v50, CGRectGetWidth(v59), v46}];
}

uint64_t type metadata accessor for BadgeCollectionViewCell()
{
  result = qword_10094DEC8;
  if (!qword_10094DEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002165AC()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100216650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v143 = a3;
  v11 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v11 - 8);
  v130 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v129 = &v120 - v14;
  v15 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v15 - 8);
  v128 = &v120 - v16;
  v17 = sub_1007611EC();
  __chkstk_darwin(v17 - 8);
  v127 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v120 - v20;
  v21 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v21 - 8);
  v125 = &v120 - v22;
  v123 = sub_10076121C();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v124 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10076481C();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v142 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10076664C();
  v140 = *(v25 - 8);
  v141 = v25;
  __chkstk_darwin(v25);
  v139 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076A1BC();
  v135 = *(v27 - 8);
  v136 = v27;
  __chkstk_darwin(v27);
  v134 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076A1EC();
  v137 = *(v29 - 8);
  v138 = v29;
  __chkstk_darwin(v29);
  v31 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000A5D4(&unk_10094C040);
  __chkstk_darwin(v32 - 8);
  v34 = &v120 - v33;
  v35 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v35);
  v37 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = (&v120 - v39);
  v41 = sub_10000A5D4(&unk_1009467F0);
  v145 = *(v41 - 8);
  v146 = v41;
  *&v42 = __chkstk_darwin(v41).n128_u64[0];
  v144 = &v120 - v43;
  v44 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  v147 = a1;
  sub_10076347C();
  v45 = sub_100761DCC();

  v133 = a4;
  if (v45)
  {
    if (qword_1009413B8 != -1)
    {
      swift_once();
    }

    v46 = sub_10000A61C(v35, qword_1009A27B0);
    sub_1000A9194(v46, v40);
    v47 = *v40;
    v48 = v45;

    *v40 = v45;
    sub_1000A9194(v40, v37);
    sub_10000A5D4(&unk_100943120);
    v49 = v144;
    sub_10075FE0C();

    sub_1000A91F8(v40);
  }

  else
  {
    if (qword_1009413B8 != -1)
    {
      swift_once();
    }

    v50 = sub_10000A61C(v35, qword_1009A27B0);
    sub_1000A9194(v50, v40);
    sub_10000A5D4(&unk_100943120);
    v49 = v144;
    sub_10075FE0C();
  }

  v51 = *&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
  v52 = sub_10076347C();
  v53 = v145;
  v54 = v146;
  (*(v145 + 16))(v34, v49, v146);
  (*(v53 + 56))(v34, 0, 1, v54);
  v121 = v51;
  sub_1006098B0(v52, v34, v143);

  sub_10000CFBC(v34, &unk_10094C040);
  sub_10076344C();
  v55 = v134;
  sub_10076A1CC();
  v56 = v138;
  v57 = *(v137 + 8);
  v57(v31, v138);
  v58 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  v59 = v135;
  v60 = &v7[v58];
  v61 = v136;
  (*(v135 + 24))(v60, v55, v136);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v59 + 8))(v55, v61);
  v62 = v139;
  sub_1007665EC();
  sub_1002187C4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v63 = v141;
  v64 = sub_10077124C();
  (*(v140 + 8))(v62, v63);
  sub_10076344C();
  v65 = sub_10076A1DC();
  v57(v31, v56);
  v66 = v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = ((v64 | v65) & 1) == 0;
  v67 = &OBJC_IVAR____TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView_artworkView;
  if (((v64 | v65) & 1) == v66)
  {
    if ((v64 | v65))
    {
      v68 = [v7 contentView];
      [v68 insertSubview:*&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] aboveSubview:*&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
    }
  }

  v69 = *&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
  v70 = v69[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect];
  v69[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = v64 & 1;
  if ((v64 & 1) != v70)
  {
    v71 = 0.0;
    if (v64)
    {
      *&v71 = 1.0;
    }

    [*&v69[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient] setOpacity:v71];
    [v69 setNeedsDisplay];
  }

  v72 = v69[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect];
  v69[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = v65 & 1;
  if ((v65 & 1) != v72)
  {
    v73 = 0.0;
    if (v65)
    {
      v73 = 1.0;
    }

    [*&v69[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView] setAlpha:v73];
    [v69 setNeedsDisplay];
  }

  v74 = sub_10076348C();
  v76 = v75;
  if (v75)
  {
    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v74 & 0xFFFFFFFFFFFFLL;
    }

    v78 = v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v79 = v77 == 0;
    v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = v79;
    if (v79 == v78)
    {
      goto LABEL_26;
    }

    if (v77)
    {
      v80 = [v7 contentView];
      [v80 insertSubview:*&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] belowSubview:v121];

LABEL_26:
      v81 = *&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
LABEL_30:
      v83 = sub_10076FF6C();

      goto LABEL_31;
    }
  }

  else
  {
    v82 = v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
    if (v82 == 1)
    {
      v83 = 0;
      v81 = *&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
      goto LABEL_31;
    }
  }

  [*&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] removeFromSuperview];
  v81 = *&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (v76)
  {
    goto LABEL_30;
  }

  v83 = 0;
LABEL_31:
  [v81 setText:v83];

  sub_100229568();
  if (sub_10076345C())
  {
    (*(v122 + 104))(v124, enum case for VideoFillMode.scaleAspectFill(_:), v123);
    sub_10076B84C();
    sub_10076BEFC();
    v84 = v125;
    sub_10076D3AC();

    v85 = sub_10076D39C();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    v86 = v148[0];
    sub_10076B7CC();
    v87 = v128;
    sub_10076B85C();
    v88 = sub_10075DB7C();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    v141 = v7;
    v89 = v129;
    sub_10076B81C();
    v90 = v130;
    sub_10076B80C();
    v91 = type metadata accessor for VideoView();
    sub_1002187C4(&qword_100942810, type metadata accessor for VideoView);
    v140 = v91;
    v143 = v86;
    v92 = sub_100762EEC();
    sub_10000CFBC(v90, &unk_10094C030);
    v7 = v141;
    sub_10000CFBC(v89, &unk_10094C030);
    v93 = v87;
    v67 = &OBJC_IVAR____TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView_artworkView;
    sub_10000CFBC(v93, &unk_1009435D0);
    sub_10000CFBC(v148, &qword_100943310);
    v94 = *&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v95 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
    v96 = *(v94 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    if (v92)
    {
      v97 = v92;
      v98 = [v97 superview];
      if (v98)
      {
        v99 = v98;
        sub_100016F40(0, &qword_1009441F0);
        v100 = v96;
        v101 = sub_100770EEC();

        v67 = &OBJC_IVAR____TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView_artworkView;
        if (v101)
        {
          [v97 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v106 = *&v96[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v96[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v92;
    v107 = v92;
    sub_100453A30(v106);

    v108 = *(*(v94 + v95) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v108 && (v109 = swift_dynamicCastClass()) != 0)
    {
      v110 = v109;
      v111 = v108;
      [v110 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v131 + 8))(v142, v132);
  }

  else if (sub_10076346C())
  {

    v102 = *&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
    v103 = *(*&v7[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v104 = *(v103 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    *(v103 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = v102;
    v105 = v102;
    sub_100453A30(v104);

    sub_1004526E4();
  }

  v112 = sub_10076343C();
  v113 = v144;
  if (!v112)
  {
    v112 = [objc_opt_self() clearColor];
  }

  v114 = v112;
  v115 = *&v7[v67[103]];
  v116 = type metadata accessor for MediaView();
  v149.receiver = v115;
  v149.super_class = v116;
  objc_msgSendSuper2(&v149, "setBackgroundColor:", v114);
  [*(*&v115[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v114];
  v117 = *&v115[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v117)
  {
    v118 = v117;
    [v118 setBackgroundColor:v114];
  }

  [v7 setNeedsLayout];
  return (*(v145 + 8))(v113, v146);
}

uint64_t sub_10021776C()
{
  result = sub_10076342C();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_1002177A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10076A1BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076710C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v6, v12);
  sub_100228E74(v9, a5, v14);
  (*(v7 + 8))(v9, v6);
  sub_10076712C();
  sub_1002187C4(&unk_10094DF40, &type metadata accessor for LargeHeroBreakoutLayout);
  sub_10076DBDC();
  (*(v11 + 8))(v14, v10);
  v15 = [objc_opt_self() fractionalWidthDimension:1.0];
  v16 = sub_1007665BC();

  return v16;
}

double sub_100217A88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = sub_10076A1BC();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076A1EC();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076710C();
  __chkstk_darwin(v10 - 8);
  v36 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10076712C();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076997C();
  v13 = *(v32 - 8);
  *&v14 = __chkstk_darwin(v32).n128_u64[0];
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a4;
  v17 = [a4 traitCollection];
  v18 = sub_10076DDDC();
  swift_allocObject();
  v19 = sub_10076DDBC();
  v35 = a1;
  sub_10076348C();
  sub_100016F40(0, &qword_100942F00);
  if (qword_100941020 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  sub_10000A61C(v20, qword_1009A1E58);
  sub_100770B3C();
  v21 = sub_10076C04C();
  v31 = v17;
  v22 = v21;
  v50[3] = v21;
  v50[4] = sub_1002187C4(&qword_100943230, &type metadata accessor for Feature);
  v23 = sub_10000DB7C(v50);
  (*(*(v22 - 8) + 104))(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v22);
  sub_10076C90C();
  sub_10000CD74(v50);
  sub_10076996C();
  sub_10076994C();
  (*(v13 + 8))(v16, v32);
  sub_10076344C();
  sub_10076A1CC();
  (*(v33 + 8))(v9, v34);
  sub_100228E74(v7, v42, v36);
  (*(v37 + 8))(v7, v39);
  swift_allocObject();
  v24 = sub_10076DDBC();
  v48 = v18;
  v49 = &protocol witness table for LayoutViewPlaceholder;
  v47 = v24;
  sub_10000A570(v50, v46);
  v44 = v18;
  v45 = &protocol witness table for LayoutViewPlaceholder;
  v43 = v19;

  v25 = v38;
  sub_10076711C();
  sub_1002187C4(&qword_10094DF38, &type metadata accessor for LargeHeroBreakoutLayout);
  v26 = v41;
  sub_10076D2AC();
  v28 = v27;

  (*(v40 + 8))(v25, v26);
  sub_10000CD74(v50);
  return v28;
}

uint64_t sub_10021809C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - v8;
  v10 = sub_10076481C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D39C();
  v35 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v37);
  sub_10000A5D4(&unk_100942830);
  sub_10076349C();
  result = swift_dynamicCast();
  if (result)
  {
    v34 = a2;
    v18 = v36;
    v19 = sub_10076345C();
    if (v19)
    {
      v33 = v3;
      v20 = *(*(*&v3[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v20 && (v32[4] = v19, v21 = type metadata accessor for VideoView(), (v22 = swift_dynamicCastClass()) != 0))
      {
        v32[2] = v21;
        v32[3] = v18;
        v23 = qword_1009A2558;
        v24 = v22;
        swift_beginAccess();
        v25 = *(v11 + 16);
        v32[1] = v24;
        v25(v13, v24 + v23, v10);
        v26 = v20;
        sub_10076476C();
        (*(v11 + 8))(v13, v10);
        v27 = v35;
        if ((*(v35 + 48))(v9, 1, v14) != 1)
        {
          (*(v27 + 32))(v16, v9, v14);
          [v33 bounds];
          sub_10076D30C();
          sub_10076B84C();
          sub_10076BFCC();

          sub_1002187C4(&unk_100942840, type metadata accessor for VideoView);
          sub_100760B8C();

          return (*(v27 + 8))(v16, v14);
        }

        sub_10000CFBC(v9, &unk_1009467E0);
      }

      else
      {
      }

      v3 = v33;
    }

    if (sub_10076346C())
    {
      [v3 bounds];
      sub_10076BFCC();
      v28 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_artworkView;
      v29 = *&v3[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
      sub_10076BF7C();
      sub_10075FCCC();
      [v29 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v30 = *&v3[v28];
      sub_10075FD2C();
      sub_1002187C4(&qword_100941820, &type metadata accessor for ArtworkView);
      v31 = v30;
      sub_100760B8C();
    }
  }

  return result;
}

void sub_10021864C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_artworkView);
  sub_10075FD2C();
  sub_1002187C4(&qword_100941820, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100760BFC();

  v3 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v3)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_1002187C4(&unk_100942840, type metadata accessor for VideoView);
      v4 = v3;
      sub_100760BFC();
    }
  }
}

uint64_t sub_1002187C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021880C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B76C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *sub_100218838(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v38 = v4;
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_currentState];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v16[40] = 1;
  if (qword_100940C68 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_1009A1330);
  v19 = *(v17 - 8);
  v35 = *(v19 + 16);
  v36 = v18;
  v35(v15, v18, v17);
  v34 = *(v19 + 56);
  v34(v15, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v33 = *(v10 + 104);
  v33(v12, enum case for DirectionalTextAlignment.none(_:), v9);
  v21 = sub_1007626BC();
  v22 = objc_allocWithZone(v21);
  v23 = sub_1007626AC();
  v24 = v9;
  v25 = v38;
  *&v38[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel] = v23;
  v35(v15, v36, v17);
  v34(v15, 0, 1, v17);
  v33(v12, v20, v24);
  v26 = objc_allocWithZone(v21);
  *&v25[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel] = sub_1007626AC();
  *&v25[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth] = 0;
  *&v25[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_interColumnSpace] = 0;
  v39.receiver = v25;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel]];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel]];

  return v31;
}

uint64_t sub_100218D44(uint64_t a1)
{
  v2 = sub_10076C38C();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B66C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_100766B9C();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17 = *(v9 + 8);
  v17(v13, v8);
  if ((*(v5 + 88))(v7, v4) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v18 = *(v40 + 32);
  v33 = v14;
  v18(v16, v7, v14);
  v19 = v37;
  v20 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel);
  sub_100766B8C();
  v21 = sub_10076FF6C();

  [v20 setText:v21];

  v22 = *(v19 + OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel);
  v23 = v34;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17(v23, v8);
  if (v41)
  {
    v24 = sub_10076FF6C();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v26 = v36;
  sub_10076460C();
  sub_10076C22C();
  v28 = v27;
  v29 = v39;
  v30 = *(v38 + 8);
  v30(v26, v39);
  *(v19 + OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth) = v28;
  sub_10076460C();
  sub_10076C2BC();
  v32 = v31;
  v30(v26, v29);
  result = (*(v40 + 8))(v16, v33);
  *(v19 + OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_interColumnSpace) = v32;
  return result;
}

id sub_1002191F4()
{
  swift_getObjectType();
  if (v0[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 40])
  {
    v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth];
  }

  else
  {
    v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 24];
  }

  v2 = *v1;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel];
  sub_10076422C();
  [v3 measurementsWithFitting:v0 in:{v2, CGRectGetHeight(v26)}];
  v4 = [v0 traitCollection];
  sub_10076422C();
  sub_1007709CC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel];
  sub_10076422C();
  Width = CGRectGetWidth(v27);
  sub_10076422C();
  [v13 measurementsWithFitting:v0 in:{Width, CGRectGetHeight(v28)}];
  v15 = [v0 traitCollection];
  sub_10076422C();
  sub_1007709CC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [v13 setFrame:{v17, v19, v21, v23}];
}

uint64_t sub_1002194E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B76C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_10021950C(void (*a1)(char *, char *, uint64_t))
{
  v57 = a1;
  v1 = sub_10077164C();
  v68 = *(v1 - 8);
  v69 = v1;
  __chkstk_darwin(v1);
  v66 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076220C();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v51 - v6;
  v73 = sub_10076DA7C();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v67 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v51 - v9;
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076DD3C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  sub_10076DD2C();
  if (qword_100940C68 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  sub_10000A61C(v21, qword_1009A1330);
  v56 = v20;
  sub_10076DCFC();
  v22 = *(v15 + 8);
  v61 = v15 + 8;
  v62 = v22;
  v22(v17, v14);
  sub_10076460C();
  sub_10076C2FC();
  v72 = v14;
  v52 = *(v11 + 8);
  v51 = v10;
  v52(v13, v10);
  sub_100766B8C();
  v57 = *(v15 + 16);
  v57(v17, v20, v14);
  sub_10076DA5C();
  sub_10076DA9C();
  v23 = sub_10076461C();
  v54 = sub_10076DEDC();
  v55 = sub_10000A5D4(&unk_100942870);
  v24 = swift_allocObject();
  v53 = xmmword_1007841E0;
  *(v24 + 16) = xmmword_1007841E0;
  *(v24 + 32) = v23;
  v25 = v23;
  v26 = sub_10076DEEC();
  sub_10076D2AC();
  v28 = v27;

  sub_10076460C();
  sub_10076C8BC();
  sub_10076C2FC();
  v52(v13, v51);
  v29 = v58;
  sub_10076468C();
  swift_getKeyPath();
  v30 = v60;
  sub_10076F49C();

  (*(v59 + 8))(v29, v30);
  v31 = v56;
  v57(v17, v56, v72);
  sub_10076DA5C();
  v32 = v67;
  sub_10076DA9C();
  v33 = sub_10076461C();
  v34 = swift_allocObject();
  *(v34 + 16) = v53;
  *(v34 + 32) = v33;
  v35 = v33;
  v36 = sub_10076DEEC();
  v37 = v73;
  sub_10076D2AC();
  v39 = v38;

  if (v28 > v39)
  {
    v39 = v28;
  }

  v40 = v63;
  sub_1007621FC();
  sub_10076462C();
  v41 = v66;
  sub_10076D17C();
  sub_100219D24();
  v42 = v65;
  sub_10076D40C();
  v44 = v43;
  swift_unknownObjectRelease();
  (*(v68 + 8))(v41, v69);
  (*(v64 + 8))(v40, v42);
  v45 = objc_opt_self();
  v46 = [v45 fractionalWidthDimension:1.0];
  v47 = [v45 absoluteDimension:v39 + v44];
  v48 = [objc_opt_self() sizeWithWidthDimension:v46 heightDimension:v47];

  v49 = *(v70 + 8);
  v49(v32, v37);
  v49(v71, v37);
  v62(v31, v72);
  return v48;
}

unint64_t sub_100219D24()
{
  result = qword_10094DFA0;
  if (!qword_10094DFA0)
  {
    sub_10076220C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094DFA0);
  }

  return result;
}

uint64_t sub_100219D7C()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099DAE0);
  sub_10000A61C(v0, qword_10099DAE0);
  return sub_10076F54C();
}

char *sub_100219DF4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_10076F73C();
  sub_10076F70C();
  if (qword_10093FB00 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A5D4(&unk_100955860);
  sub_10000A61C(v10, qword_10099DAE0);
  sub_10076F41C();

  if (v25 == 2 || (v25 & 1) == 0)
  {
    v11 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v11 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v12 = [objc_allocWithZone(v11) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_materialView] = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  *&v5[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_currentState;
  v17 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  v24.receiver = v5;
  v24.super_class = type metadata accessor for InteractiveSectionBackgroundView();
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  sub_100016F40(0, &qword_100942F10);
  v19 = v18;
  v20 = sub_100770D2C();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  [*&v19[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  [v19 addSubview:*&v19[v21]];
  v22 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  [*&v19[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  [*&v19[v22] setAlpha:1.0];
  [v19 addSubview:*&v19[v22]];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_materialView]];

  return v19;
}

id sub_10021A0F0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InteractiveSectionBackgroundView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_materialView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_topBackgroundView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_bottomBackgroundView];
  [v0 bounds];
  return [v3 setFrame:?];
}

uint64_t sub_10021A1F4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for InteractiveSectionBackgroundView();
  v10.receiver = v0;
  v10.super_class = v5;
  objc_msgSendSuper2(&v10, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  sub_10075FCAC();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  sub_10075FCAC();
  v6 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  sub_10021C684(v4, &v1[v7]);
  return swift_endAccess();
}

uint64_t sub_10021A3AC(uint64_t a1)
{
  v136 = a1;
  v113 = sub_10076D39C();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v107 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1007621EC();
  v130 = *(v2 - 8);
  __chkstk_darwin(v2);
  v114 = (&v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v115 = (&v107 - v5);
  __chkstk_darwin(v6);
  v110 = &v107 - v7;
  v131 = sub_10000A5D4(&qword_10094E088);
  __chkstk_darwin(v131);
  v128 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  v12 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v16 - 8);
  v123 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v107 - v19;
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  v23 = sub_10000A5D4(&qword_10094E090);
  __chkstk_darwin(v23 - 8);
  v109 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v127 = &v107 - v26;
  __chkstk_darwin(v27);
  v126 = &v107 - v28;
  __chkstk_darwin(v29);
  v108 = &v107 - v30;
  __chkstk_darwin(v31);
  v33 = &v107 - v32;
  __chkstk_darwin(v34);
  v36 = &v107 - v35;
  sub_100760C4C();
  sub_10076F64C();
  v37 = v137;
  sub_10076FC1C();
  v129 = v138;
  v38 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  v132 = v38;
  sub_100016E2C(&v37[v38], v22, &unk_100957590);
  v124 = v13;
  v39 = *(v13 + 48);
  v134 = v12;
  v119 = v13 + 48;
  v118 = v39;
  v40 = v39(v22, 1, v12);
  v125 = v15;
  if (v40)
  {
    sub_10000CFBC(v22, &unk_100957590);
    v41 = v130;
    v42 = *(v130 + 56);
    v43 = (v130 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v36, 1, 1, v2);
    v44 = *(v41 + 16);
    v45 = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    sub_10021C620(v22, v15);
    sub_10000CFBC(v22, &unk_100957590);
    v41 = v130;
    v44 = *(v130 + 16);
    v45 = (v130 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v36, v15, v2);
    sub_10021C73C(v15);
    v42 = *(v41 + 56);
    v43 = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v36, 0, 1, v2);
  }

  v133 = v44;
  v135 = v45;
  v44(v33, v136, v2);
  v121 = v42;
  v120 = v43;
  v42(v33, 0, 1, v2);
  v46 = *(v131 + 48);
  sub_100016E2C(v36, v11, &qword_10094E090);
  sub_100016E2C(v33, &v11[v46], &qword_10094E090);
  v47 = v41;
  v48 = *(v41 + 48);
  v49 = v48(v11, 1, v2);
  v117 = v48;
  v116 = v41 + 48;
  if (v49 == 1)
  {
    sub_10000CFBC(v33, &qword_10094E090);
    sub_10000CFBC(v36, &qword_10094E090);
    v50 = v41;
    if (v48(&v11[v46], 1, v2) == 1)
    {
      sub_10000CFBC(v11, &qword_10094E090);
      v51 = v127;
      v52 = v128;
      v53 = v125;
      v54 = v126;
      v55 = v133;
      v56 = v134;
      goto LABEL_18;
    }
  }

  else
  {
    v107 = v36;
    v57 = v108;
    sub_100016E2C(v11, v108, &qword_10094E090);
    if (v48(&v11[v46], 1, v2) != 1)
    {
      v69 = v41;
      v70 = v110;
      (*(v41 + 32))(v110, &v11[v46], v2);
      sub_10021C6F4(&qword_100949730, &type metadata accessor for ShelfBackground);
      v71 = sub_10076FF1C();
      v72 = *(v47 + 8);
      v72(v70, v2);
      sub_10000CFBC(v33, &qword_10094E090);
      sub_10000CFBC(v107, &qword_10094E090);
      v72(v57, v2);
      v50 = v69;
      v56 = v134;
      sub_10000CFBC(v11, &qword_10094E090);
      v51 = v127;
      v52 = v128;
      v53 = v125;
      v54 = v126;
      v55 = v133;
      if (v71)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    sub_10000CFBC(v33, &qword_10094E090);
    sub_10000CFBC(v107, &qword_10094E090);
    v50 = v41;
    (*(v41 + 8))(v57, v2);
  }

  sub_10000CFBC(v11, &qword_10094E088);
  v51 = v127;
  v52 = v128;
  v54 = v126;
  v55 = v133;
LABEL_10:
  v58 = *&v137[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_topBackgroundView];
  v59 = v115;
  v55(v115, v136, v2);
  v60 = (*(v50 + 88))(v59, v2);
  if (v60 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v50 + 96))(v59, v2);
    v61 = *(sub_10000A5D4(&qword_10094E098) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_10021C6F4(&qword_10094E0A0, type metadata accessor for InteractiveBackgroundContentView);
    sub_100760BFC();
    sub_10075FCAC();
    [v137 frame];
    v62 = v111;
    sub_10076D3AC();
    sub_10076D31C();
    (*(v112 + 8))(v62, v113);
    sub_10076BFCC();
    v63 = sub_10076BE1C();
    [v58 setBackgroundColor:v63];

    v56 = v134;
    v54 = v126;
    v51 = v127;
    sub_100760B8C();
    v53 = v125;
    v55 = v133;

    v52 = v128;

    v64 = sub_1007659CC();
    (*(*(v64 - 8) + 8))(v115 + v61, v64);
  }

  else
  {
    if (v60 == enum case for ShelfBackground.color(_:))
    {
      (*(v50 + 96))(v59, v2);
      v65 = *v59;
      v66 = *(sub_10000A5D4(&unk_100950670) + 48);
      sub_10075FCAC();
      [v58 setBackgroundColor:v65];

      v55 = v133;
      v67 = sub_1007659CC();
      v68 = v59 + v66;
      v56 = v134;
      v51 = v127;
      (*(*(v67 - 8) + 8))(v68, v67);
    }

    else
    {
      v73 = v59;
      sub_10075FCAC();
      sub_100016F40(0, &qword_100942F10);
      v74 = sub_100770D2C();
      [v58 setBackgroundColor:v74];

      v75 = v73;
      v56 = v134;
      (*(v50 + 8))(v75, v2);
    }

    v53 = v125;
  }

LABEL_18:
  v76 = v122;
  sub_100016E2C(&v137[v132], v122, &unk_100957590);
  if (v118(v76, 1, v56))
  {
    sub_10000CFBC(v76, &unk_100957590);
    v77 = 1;
  }

  else
  {
    sub_10021C620(v76, v53);
    sub_10000CFBC(v76, &unk_100957590);
    v55(v54, v53 + *(v56 + 28), v2);
    sub_10021C73C(v53);
    v77 = 0;
  }

  v78 = v121;
  v121(v54, v77, 1, v2);
  v127 = *(v56 + 28);
  v55(v51, v136 + v127, v2);
  v78(v51, 0, 1, v2);
  v79 = *(v131 + 48);
  sub_100016E2C(v54, v52, &qword_10094E090);
  sub_100016E2C(v51, v52 + v79, &qword_10094E090);
  v80 = v117;
  if (v117(v52, 1, v2) == 1)
  {
    sub_10000CFBC(v51, &qword_10094E090);
    sub_10000CFBC(v54, &qword_10094E090);
    v81 = v80(v52 + v79, 1, v2);
    v82 = v130;
    if (v81 == 1)
    {
      sub_10000CFBC(v52, &qword_10094E090);
      goto LABEL_35;
    }
  }

  else
  {
    v83 = v109;
    sub_100016E2C(v52, v109, &qword_10094E090);
    if (v80(v52 + v79, 1, v2) != 1)
    {
      v82 = v130;
      v94 = v52 + v79;
      v95 = v110;
      (*(v130 + 32))(v110, v94, v2);
      sub_10021C6F4(&qword_100949730, &type metadata accessor for ShelfBackground);
      v96 = v54;
      v97 = sub_10076FF1C();
      v98 = *(v82 + 8);
      v98(v95, v2);
      sub_10000CFBC(v51, &qword_10094E090);
      sub_10000CFBC(v96, &qword_10094E090);
      v98(v83, v2);
      sub_10000CFBC(v128, &qword_10094E090);
      v84 = v114;
      if (v97)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    sub_10000CFBC(v51, &qword_10094E090);
    sub_10000CFBC(v54, &qword_10094E090);
    v82 = v130;
    (*(v130 + 8))(v83, v2);
  }

  sub_10000CFBC(v52, &qword_10094E088);
  v84 = v114;
LABEL_27:
  v85 = *&v137[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_bottomBackgroundView];
  v133(v84, (v136 + v127), v2);
  v86 = (*(v82 + 88))(v84, v2);
  if (v86 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v82 + 96))(v84, v2);
    v87 = *(sub_10000A5D4(&qword_10094E098) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_10021C6F4(&qword_10094E0A0, type metadata accessor for InteractiveBackgroundContentView);
    sub_100760BFC();
    sub_10075FCAC();
    [v137 frame];
    v88 = v111;
    sub_10076D3AC();
    sub_10076D31C();
    (*(v112 + 8))(v88, v113);
    sub_10076BFCC();
    v89 = sub_10076BE1C();
    [v85 setBackgroundColor:v89];

    sub_100760B8C();

    v90 = sub_1007659CC();
    (*(*(v90 - 8) + 8))(v84 + v87, v90);
  }

  else if (v86 == enum case for ShelfBackground.color(_:))
  {
    (*(v82 + 96))(v84, v2);
    v91 = *v84;
    v92 = *(sub_10000A5D4(&unk_100950670) + 48);
    sub_10075FCAC();
    [v85 setBackgroundColor:v91];

    v93 = sub_1007659CC();
    (*(*(v93 - 8) + 8))(v84 + v92, v93);
  }

  else
  {
    sub_10075FCAC();
    sub_100016F40(0, &qword_100942F10);
    v99 = sub_100770D2C();
    [v85 setBackgroundColor:v99];

    (*(v82 + 8))(v84, v2);
  }

LABEL_35:
  v100 = v136;
  v101 = v137;
  v102 = v134;
  [*&v137[OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_topBackgroundView] setAlpha:*(v136 + *(v134 + 20))];

  v103 = v100;
  v104 = v123;
  sub_10021C620(v103, v123);
  (*(v124 + 56))(v104, 0, 1, v102);
  v105 = v132;
  swift_beginAccess();
  sub_10021C684(v104, &v101[v105]);
  return swift_endAccess();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundView()
{
  result = qword_10094DFE8;
  if (!qword_10094DFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021B828()
{
  sub_10021B8CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10021B8CC()
{
  if (!qword_10094DFF8)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(255);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10094DFF8);
    }
  }
}

uint64_t sub_10021B924@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  return sub_100016E2C(v3 + v4, a1, &unk_100957590);
}

char *sub_10021B9B4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView_artworkView;
  sub_10075FD2C();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView_artworkView];
  v13 = v10;
  [v12 setContentMode:4];
  v14 = [*&v10[v11] layer];
  CGAffineTransformMakeScale(&v16, 3.0, 3.0);
  [v14 setAffineTransform:&v16];

  [v13 addSubview:*&v10[v11]];
  return v13;
}

void (*sub_10021BDA8(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView_artworkView);
  *a1 = sub_10075FC9C();
  return sub_10021BDFC;
}

void sub_10021BDFC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_10075FCAC();
  }

  else
  {
    sub_10075FCAC();
  }
}

id sub_10021BE90()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SemiLightMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = sub_10076C8AC().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10000A5D4(&unk_1009434B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  *(v9 + 56) = sub_100016F40(0, &qword_100948AC8);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_1007701AC().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100016F40(0, &qword_100942F10);
  v13 = sub_100770E4C(1.0, 1.0, 1.0, 0.4).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  LODWORD(v17) = 1.0;
  [v16 setOpacity:v17];

  return v5;
}

id sub_10021C210()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AccessoryDarkMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = sub_10076C8AC().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10000A5D4(&unk_1009434B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  *(v9 + 56) = sub_100016F40(0, &qword_100948AC8);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_1007701AC().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100016F40(0, &qword_100942F10);
  v13 = sub_100770E4C(0.58824, 0.58824, 0.58824, 0.15).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  if (v16)
  {
    LODWORD(v17) = 1.0;
    [v16 setOpacity:v17];
  }

  return v5;
}

id sub_10021C574(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10021C620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021C684(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100957590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021C6F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021C73C(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021C798()
{
  v1 = v0;
  sub_10076F73C();
  sub_10076F70C();
  if (qword_10093FB00 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A5D4(&unk_100955860);
  sub_10000A61C(v2, qword_10099DAE0);
  sub_10076F41C();

  if (v11 == 2 || (v11 & 1) == 0)
  {
    v3 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v3 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v4 = [objc_allocWithZone(v3) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_materialView) = v4;
  v5 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC20ProductPageExtension32InteractiveSectionBackgroundView_currentState;
  v9 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  result = sub_10077156C();
  __break(1u);
  return result;
}

uint64_t sub_10021C9AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076F08C();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076F0CC();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_10021E110;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088D610;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  swift_errorRetain();

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021E11C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_10021CC90(void *a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v43 = a2;
  v4 = sub_10076583C();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076FBBC();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = sub_10076F2EC();
  __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v14);
  v15 = sub_10076FD4C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    v20 = [v19 request];
    if (v20)
    {
      v21 = v20;
      sub_10076F64C();
      v22 = v47;
      v43 = v19;
      v23 = v45;
      sub_10076FC1C();
      sub_100016F40(0, &qword_100944EF0);
      sub_10076FC1C();
      v24 = aBlock;
      v25 = v46;
      (*(v46 + 16))(v9, v12, v22);
      sub_10076582C();
      v26 = sub_10076581C();
      (*(v44 + 8))(v6, v4);
      v27 = v24;
      v28 = [v24 ams_activeiTunesAccount];
      [v21 setAccount:v28];

      [v21 setAnonymousMetrics:v26 & 1];
      v29 = v21;
      v30 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v29 bag:sub_10076FB7C()];

      swift_unknownObjectRelease();
      v31 = [v30 canPresent];
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v23;
      v50 = sub_10021E1A4;
      v51 = v32;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v49 = sub_1005F04D8;
      *(&v49 + 1) = &unk_10088D660;
      v33 = _Block_copy(&aBlock);
      v34 = v30;

      [v31 addFinishBlock:v33];
      _Block_release(v33);

      return (*(v25 + 8))(v12, v22);
    }

    else
    {
      if (qword_1009412E8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v15, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F2DC();
      v54._countAndFlagsBits = 0xD000000000000049;
      v54._object = 0x80000001007DA4E0;
      sub_10076F2CC(v54);
      *(&v49 + 1) = sub_100016F40(0, &qword_10094D7D8);
      *&aBlock = v19;
      v41 = v19;
      sub_10076F29C();
      sub_1000258C0(&aBlock);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      sub_10076F2CC(v55);
      sub_10076F2FC();
      sub_10076FBCC();
    }
  }

  else
  {
    v36 = v43;
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v37 = sub_10000A61C(v15, qword_1009A2600);
    (*(v16 + 16))(v18, v37, v15);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v52._object = 0x80000001007D9610;
    v52._countAndFlagsBits = 0xD00000000000003BLL;
    sub_10076F2CC(v52);
    aBlock = 0u;
    v49 = 0u;
    sub_10076F29C();
    sub_1000258C0(&aBlock);
    v53._countAndFlagsBits = 0x3A726F727265202CLL;
    v53._object = 0xE900000000000020;
    sub_10076F2CC(v53);
    v38 = v36;
    if (v36)
    {
      swift_getErrorValue();
      v38 = sub_1007716EC();
      v40 = &type metadata for String;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      *&v49 = 0;
    }

    *&aBlock = v38;
    *(&aBlock + 1) = v39;
    *(&v49 + 1) = v40;
    sub_10076F29C();
    sub_1000258C0(&aBlock);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_10076F2CC(v56);
    sub_10076F2FC();
    sub_10076FBCC();

    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_10021D49C(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v39 = a3;
  v6 = sub_10076F2EC();
  __chkstk_darwin(v6 - 8);
  v48 = sub_10075F65C();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100765F6C();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100766EDC();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_10076C15C();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v39;
    v24 = [v39 startEngagement];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v53 = sub_1001D1F90;
    v54 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_1001FA544;
    *(&v52 + 1) = &unk_10088D6B0;
    v26 = _Block_copy(&aBlock);
    v38 = v8;
    v27 = v23;

    [v24 addFinishBlock:v26];
    _Block_release(v26);

    v53 = 0;
    aBlock = 0u;
    v52 = 0u;
    (*(v19 + 104))(v22, enum case for FlowPage.viewController(_:), v18);
    v28 = sub_10075DB7C();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = sub_10076096C();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v50 = sub_100016F40(0, &unk_10094E0B0);
    v49 = v27;
    v30 = v27;
    sub_10076F4DC();
    (*(v40 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v41);
    (*(v42 + 104))(v47, enum case for FlowAnimationBehavior.infer(_:), v43);
    (*(v46 + 104))(v38, enum case for FlowOrigin.inapp(_:), v48);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v31 = sub_10075F5EC();
    sub_100563FF8(v31, 1, v45);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v33 = sub_10076FD4C();
    sub_10000A61C(v33, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v56._object = 0x80000001007DA590;
    v56._countAndFlagsBits = 0xD000000000000047;
    sub_10076F2CC(v56);
    swift_getErrorValue();
    v34 = sub_1007716EC();
    *(&v52 + 1) = &type metadata for String;
    *&aBlock = v34;
    *(&aBlock + 1) = v35;
    sub_10076F29C();
    sub_1000258C0(&aBlock);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    sub_10076F2CC(v57);
    sub_10076F2FC();
    sub_10076FBCC();
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v36 = sub_10076FD4C();
    sub_10000A61C(v36, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();
  }
}

uint64_t sub_10021DDD0(uint64_t a1)
{
  v2 = sub_10076F50C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v6 = sub_10076FD4C();
  sub_10000A61C(v6, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBCC();

  v7 = [objc_opt_self() engagementRequestForFullSheet];
  aBlock[4] = sub_10021E0A8;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001FA544;
  aBlock[3] = &unk_10088D5C0;
  v8 = _Block_copy(aBlock);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
  sub_10000A5D4(&qword_100942C70);
  (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
  v9 = sub_10076FC8C();

  return v9;
}

uint64_t sub_10021E0B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10021E0C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021E11C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021E164()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021E1AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10021E284()
{
  v1 = sub_10075DD7C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_10094E100))
  {

    sub_10075DD6C();
    sub_10076210C();

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_10021E36C()
{
  v1 = v0;
  v2 = sub_10075DD7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000CF08(v1 + v10, v14);
  if (v15)
  {
    sub_10000A570(v14, v13);
    sub_10000CFBC(v14, &unk_10094E1F0);
    sub_10000CF78(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    sub_10075F2BC();
    (*(v7 + 8))(v9, v6);
    result = sub_10000CD74(v13);
  }

  else
  {
    result = sub_10000CFBC(v14, &unk_10094E1F0);
  }

  if (*(v1 + qword_10094E100))
  {

    sub_10075DD6C();
    sub_1007620FC();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_10021E5FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a3;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_10076B5CC();
  v14 = sub_10041329C();
  if (v14)
  {
    v16 = v14;
    v26 = v15;
    if (sub_100761A5C())
    {
      v25 = sub_1006BA354(a2);
    }

    else
    {
      v25 = 0;
    }

    v17 = sub_10076B5FC();
    (*(v8 + 16))(v10, v13, v7);
    v18 = (*(v8 + 88))(v10, v7);
    if (v18 != enum case for Shelf.ContentType.smallLockup(_:) && v18 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_12:
        v20 = 1;
        goto LABEL_13;
      }

      if (v18 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v18 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v18 != enum case for Shelf.ContentType.action(_:))
      {
        if (v18 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_12;
        }

        if (v18 != enum case for Shelf.ContentType.editorialCard(_:) && v18 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v20 = 1;
          if (v18 == enum case for Shelf.ContentType.brick(_:) || v18 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_13;
          }

          if (v18 != enum case for Shelf.ContentType.reviews(_:) && v18 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v18 != enum case for Shelf.ContentType.framedVideo(_:) && v18 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v18 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v18 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v18 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_13;
            }

            if (v18 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v18 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v18 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v18 != enum case for Shelf.ContentType.posterLockup(_:) && v18 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v20 = v17;
                if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v8 + 8))(v10, v7);
                  v20 = 0;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }

    v20 = v17;
LABEL_13:
    sub_1006AAC1C(v13, v20 & 1, v25, v4, v27);
    (*(v26 + 24))(a1, v20 & 1, v4, *&v4[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_artworkLoader], v16);
  }

  return (*(v8 + 8))(v13, v7);
}

void *sub_10021EA60()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_1007621EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v6);
  v9 = (&v34 - v8);
  v10 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v11 = (*(v1 + 1240))(v7);
  v12 = sub_1001C9924(v11);
  if (v12)
  {
    v13 = v12;
    sub_10077019C();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v10 = v35;
  }

  v14 = sub_1006AD7D8(v0);
  if (v14)
  {
    v15 = v14;
    sub_10077019C();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v10 = v35;
  }

  if (sub_100761A9C() < 1)
  {
    goto LABEL_14;
  }

  sub_100761A6C();
  if ((*(v3 + 88))(v9, v2) != enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 8))(v9, v2);
    goto LABEL_14;
  }

  (*(v3 + 96))(v9, v2);

  v16 = *(sub_10000A5D4(&unk_100950670) + 48);
  v17 = sub_1007659CC();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = sub_10076FF6C();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v9 = v23;
  sub_10077019C();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_10077025C();

    v10 = v35;
LABEL_14:
    if (sub_100761A9C() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_100761A9C(), 1))
    {
      sub_100761A6C();
      if ((*(v3 + 88))(v5, v2) == enum case for ShelfBackground.color(_:))
      {
        (*(v3 + 96))(v5, v2);

        v24 = *(sub_10000A5D4(&unk_100950670) + 48);
        v25 = sub_1007659CC();
        (*(*(v25 - 8) + 8))(v5 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = sub_10076FF6C();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        sub_10077019C();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        return v35;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
      }

      return v10;
    }

    __break(1u);
LABEL_23:
    sub_10077021C();
  }

  return v10;
}

void sub_10021F138()
{
  v0 = sub_100222318();
  if (v0)
  {
    v4 = v0;
    v1 = [v4 configuration];
    sub_100016F40(0, &unk_10094E1E0);
    v2 = sub_10077116C();

    sub_10021EA60();
    sub_100016F40(0, &qword_100948C70);
    isa = sub_1007701AC().super.isa;

    [v2 setBoundarySupplementaryItems:isa];

    [v4 setConfiguration:v2];
  }
}

void sub_10021F254()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_10076DE6C();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10076857C();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10076856C();

        sub_100618A1C();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10021F368(uint64_t a1)
{
  v3 = [v1 collectionView];
  sub_1006BA410(a1, v3);

  sub_10021F138();
}

uint64_t sub_10021F420()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = (swift_isaMask & *v0);
  v4 = sub_10000A5D4(&unk_10094E1D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = *((v2 & v1) + 0x3E0);
  v8 = *((v2 & v1) + 0x408);
  sub_100761A9C();
  sub_1006BA820();
  v9 = [v0 collectionView];
  [v9 reloadData];

  v10 = *((v2 & v1) + 0x3F8);
  if (sub_10076579C())
  {
    sub_10076366C();
  }

  v11 = sub_100222318();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v7;
    *(v14 + 3) = v3[125];
    *(v14 + 4) = v3[126];
    *(v14 + 5) = v10;
    *(v14 + 6) = v3[128];
    *(v14 + 7) = v8;
    *(v14 + 8) = v13;
    v15 = &v12[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v16 = *&v12[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v15 = sub_10022480C;
    v15[1] = v14;

    sub_1000167E0(v16);
  }

  v17 = sub_100222318();
  v18 = sub_10075DFDC();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1006BA87C(v6);

  sub_10000CFBC(v6, &unk_10094E1D0);
  sub_10076578C();
}

uint64_t sub_10021F6DC(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_10094E1D0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    sub_10000A5D4(&qword_100944C48);
    v12 = sub_10075E11C();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100783DD0;
    (*(v13 + 16))(v15 + v14, a1, v12);
    isa = sub_1007701AC().super.isa;

    [v11 reloadItemsAtIndexPaths:isa];
  }

  v17 = sub_100222318();
  v18 = sub_10075DFDC();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1006BA87C(v6);

  return sub_10000CFBC(v6, &unk_10094E1D0);
}

uint64_t sub_10021F930(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v28 = swift_isaMask & *v1;
  v3 = sub_10075DFDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = v5;
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_10094E1D0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v26 - v8;
  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }

  v13 = sub_100222318();
  v14 = *(v4 + 16);
  v15 = v29;
  v14(v9, v29, v3);
  (*(v4 + 56))(v9, 0, 1, v3);
  sub_1006BA87C(v9);

  sub_10000CFBC(v9, &unk_10094E1D0);
  v16 = objc_opt_self();
  v17 = v27;
  v14(v27, v15, v3);
  v18 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = *(v28 + 992);
  *(v19 + 32) = *(v20 + 1008);
  *(v19 + 40) = *(v20 + 1016);
  *(v19 + 56) = *(v20 + 1032);
  *(v19 + 64) = v2;
  (*(v4 + 32))(v19 + v18, v17, v3);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100224798;
  *(v21 + 24) = v19;
  aBlock[4] = sub_1000B9014;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C5148;
  aBlock[3] = &unk_10088D960;
  v22 = _Block_copy(aBlock);
  v23 = v2;

  [v16 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10021FCEC()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = *(v2 + 0x3E0);
  v4 = *(v2 + 0x408);
  if (sub_100761A9C())
  {
    if (qword_1009412E0 != -1)
    {
      swift_once();
    }

    v5 = sub_10076FD4C();
    sub_10000A61C(v5, qword_1009A25E8);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783C60;
    v25 = v3;
    v26 = *(v2 + 1000);
    v27 = *(v2 + 1016);
    v28 = v4;
    *&v27 = type metadata accessor for BaseShelfViewController();
    v25 = v0;
    v6 = v0;
    sub_10076F30C();
    sub_10000CFBC(&v25, &unk_1009434C0);
    sub_10076F27C();
    swift_getErrorValue();
    *&v27 = v24;
    v7 = sub_10000DB7C(&v25);
    (*(*(v24 - 8) + 16))(v7);
    sub_10076F32C();
    sub_10000CFBC(&v25, &unk_1009434C0);
    sub_10076FBEC();
  }

  else
  {
    sub_10076DF3C();
    swift_errorRetain();
    swift_unknownObjectRetain();
    v8 = sub_10076DEFC();
    v9 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    v11 = v8;
    sub_10076857C();

    v12 = *&v1[v9];
    *&v1[v9] = v8;
    v23 = v11;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v25 = v16;
      *&v26 = v18;
      *(&v26 + 1) = v20;
      *&v27 = v22;
      BYTE8(v27) = 0;
      sub_10076856C();

      sub_100618A1C();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002200E4()
{
  v1 = [v0 collectionView];
  sub_1006BACC0();

  sub_10021F138();
}

void sub_10022014C()
{
  v1 = [v0 collectionView];
  sub_1006ACCC4(v1);

  sub_10021F138();
}

uint64_t sub_1002201B4()
{
  v1 = (swift_isaMask & *v0);
  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10076FD4C();
  sub_10000A61C(v2, qword_1009A25E8);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  v3 = v1[63];
  v8 = v1[62];
  v9 = v3;
  v10 = v1[64];
  *(&v9 + 1) = type metadata accessor for BaseShelfViewController();
  *&v8 = v0;
  v4 = v0;
  sub_10076F30C();
  sub_10000CFBC(&v8, &unk_1009434C0);
  sub_10076F27C();
  swift_getErrorValue();
  *(&v9 + 1) = v7;
  v5 = sub_10000DB7C(&v8);
  (*(*(v7 - 8) + 16))(v5);
  sub_10076F32C();
  sub_10000CFBC(&v8, &unk_1009434C0);
  sub_10076FBEC();
}

uint64_t sub_100220418(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200);
  }

  sub_100263BF0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_100220568(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_isaMask & *v1;
    sub_10076213C();
    swift_allocObject();

    *(v1 + qword_10094E100) = sub_10076212C();

    if (!*(v1 + qword_10094E100))
    {
      return result;
    }

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = *(v2 + 992);
    *(v5 + 32) = *(v2 + 1008);
    *(v5 + 40) = *(v2 + 1016);
    *(v5 + 56) = *(v2 + 1032);
    *(v5 + 64) = v4;

    sub_1007620DC();
  }

  else
  {
    *(v1 + qword_10094E100) = 0;
  }
}

uint64_t sub_1002206E8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v28 = swift_isaMask & *v0;
  v3 = sub_10076F08C();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076F0EC();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  aBlock[0] = *(v0 + qword_10094E0C8);
  swift_unknownObjectRetain();
  sub_10076364C();
  v13 = *((v2 & v1) + 0x3E0);
  v14 = *((v2 & v1) + 0x3E8);
  sub_100763F4C();
  swift_unknownObjectRelease();
  if (*(*(v0 + qword_10094E0D0) + 112))
  {

    sub_10076611C();
  }

  sub_100223F88();
  sub_100016F40(0, &qword_1009471F0);
  v25 = sub_10077068C();
  sub_10076F0DC();
  sub_10076365C();
  sub_10076F15C();
  v26 = *(v7 + 8);
  v15 = v27;
  v26(v9, v27);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = v28;
  *(v17 + 32) = *(v28 + 1008);
  *(v17 + 40) = *(v18 + 1016);
  *(v17 + 56) = *(v18 + 1032);
  *(v17 + 64) = v16;
  aBlock[4] = sub_100224660;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088D8C0;
  v19 = _Block_copy(aBlock);

  v20 = v29;
  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100224674(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100048C98(&qword_100945170, &unk_10094E1C0);
  v21 = v32;
  v22 = v34;
  sub_1007712CC();
  v23 = v25;
  sub_10077064C();
  _Block_release(v19);

  (*(v33 + 8))(v21, v22);
  (*(v30 + 8))(v20, v31);
  return (v26)(v12, v15);
}

void sub_100220BCC()
{
  v1 = v0;
  v16 = *((swift_isaMask & *v0) + 0x3F8);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v2 = *(v0 + qword_10094E0F8);
  if (v2)
  {
    sub_100016F40(0, &unk_10094E1B0);
    type metadata accessor for FlowPreviewing();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = v2;
    v5 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v4];
    v6 = [v1 collectionView];
    if (!v6)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 addInteraction:v5];
  }

  v8 = [v1 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = sub_100220E40();
  [v9 setCollectionViewLayout:v10];

  sub_10076474C();
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setAlwaysBounceVertical:1];
  }

  v13 = [v1 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 setPrefetchDataSource:v1];
  }

  v15 = [v1 collectionView];
  sub_100439688(v15);
}

id sub_100220E40()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  sub_10021EA60();
  sub_100016F40(0, &qword_100948C70);
  isa = sub_1007701AC().super.isa;

  [v4 setBoundarySupplementaryItems:isa];

  v6 = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = *(v3 + 992);
  *(v8 + 32) = *((v2 & v1) + 0x3F0);
  *(v8 + 40) = *(v3 + 1016);
  *(v8 + 56) = *((v2 & v1) + 0x408);
  *(v8 + 64) = v7;
  v9 = objc_allocWithZone(v6);
  v13[4] = sub_10022462C;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1002BAFEC;
  v13[3] = &unk_10088D870;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithSectionProvider:v10 configuration:v4];

  _Block_release(v10);

  return v11;
}

void sub_100221064(void *a1)
{
  v1 = a1;
  sub_100220BCC();
}

uint64_t sub_1002210AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomeFullyVisible");
  if (*(*&v0[qword_10094E0D0] + 112))
  {

    sub_10076614C();
  }

  sub_100761FAC();
  sub_100761F8C();
  sub_1007657DC();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

void sub_100221218(void *a1)
{
  v1 = a1;
  sub_1002210AC();
}

id sub_100221260()
{
  v1 = (swift_isaMask & *v0);
  v2 = sub_10075DD7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[63];
  v9[0] = v1[62];
  v9[1] = v6;
  v9[2] = v1[64];
  v7 = type metadata accessor for BaseShelfViewController();
  v10.receiver = v0;
  v10.super_class = v7;
  result = objc_msgSendSuper2(&v10, "as_viewWillBecomeFullyVisible");
  if (*(v0 + qword_10094E100))
  {

    sub_10075DD6C();
    sub_1007620EC();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_1002213BC(void *a1)
{
  v1 = a1;
  sub_100221260();
}

id sub_100221404(char a1)
{
  v3 = (swift_isaMask & *v1);
  v4 = sub_10075DD7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v3[63];
  v11[0] = v3[62];
  v11[1] = v8;
  v11[2] = v3[64];
  v9 = type metadata accessor for BaseShelfViewController();
  v12.receiver = v1;
  v12.super_class = v9;
  result = objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if (*(v1 + qword_10094E100))
  {

    sub_10075DD6C();
    sub_1007620EC();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_100221568(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100221404(a3);
}

uint64_t sub_1002215BC(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_10075DD7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v5 & v4) + 0x3F0);
  v12 = *((v5 & v4) + 0x408);
  v16 = *(v6 + 992);
  v17 = v16;
  v18 = v11;
  v15 = *(v6 + 1016);
  v19 = v15;
  v20 = v12;
  v13 = type metadata accessor for BaseShelfViewController();
  v21.receiver = v2;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1);
  if (sub_10076579C())
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v8 + 8))(v10, v7);
    sub_10076367C();
  }

  if (*(*(v2 + qword_10094E0D0) + 112))
  {

    sub_10076614C();
  }

  sub_100761FAC();
  sub_100761F8C();
  sub_1007657DC();
  sub_100761F6C();
}

void sub_100221810(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002215BC(a3);
}

uint64_t sub_100221864()
{
  v1 = v0;
  v2 = (swift_isaMask & *v0);
  v3 = sub_10075DD7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[63];
  v10[0] = v2[62];
  v10[1] = v7;
  v10[2] = v2[64];
  v8 = type metadata accessor for BaseShelfViewController();
  v11.receiver = v1;
  v11.super_class = v8;
  objc_msgSendSuper2(&v11, "as_viewWillBecomePartiallyVisible");
  if (*(*&v1[qword_10094E0D0] + 112))
  {

    sub_10076614C();
  }

  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();

  if (*&v1[qword_10094E100])
  {

    sub_10075DD6C();
    sub_10076211C();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_100221A38(void *a1)
{
  v1 = a1;
  sub_100221864();
}

uint64_t sub_100221A80(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_10075DD7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FAAC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100946A10);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = *((v5 & v4) + 0x3F0);
  v16 = *((v5 & v4) + 0x408);
  v22 = *(v6 + 992);
  v23 = v22;
  v24 = v15;
  v21 = *(v6 + 1016);
  v25 = v21;
  v26 = v16;
  v17 = type metadata accessor for BaseShelfViewController();
  v27.receiver = v2;
  v27.super_class = v17;
  objc_msgSendSuper2(&v27, "viewWillDisappear:", a1 & 1);
  if (sub_10076579C())
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v8 + 8))(v10, v7);
    sub_10076369C();
    v18 = sub_1007636AC();
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    sub_10076368C();
  }

  if (*(v2 + qword_10094E0E8) == 1)
  {
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v19 = v23;
    sub_100767CAC();
  }

  if (*(*(v2 + qword_10094E0D0) + 112))
  {

    sub_10076614C();
  }

  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();

  if (*(v2 + qword_10094E100))
  {

    sub_10075DD6C();
    sub_10076211C();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_100221E60(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100221A80(a3);
}

void sub_100221EB4()
{
  v1 = *((swift_isaMask & *v0) + 0x3E0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomePartiallyVisible");
  if (*(v0 + qword_10094E0E8) == 1)
  {
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_100767CAC();
  }
}

void sub_100221F98(void *a1)
{
  v1 = a1;
  sub_100221EB4();
}

void sub_100221FE0(uint64_t a1)
{
  v4 = *((swift_isaMask & *v1) + 0x3E0);
  v5 = *((swift_isaMask & *v1) + 0x3F0);
  v6 = *((swift_isaMask & *v1) + 0x400);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1, v4, v5, v6);
  if ([v1 isViewLoaded])
  {
    sub_10021F138();
    v3 = [v1 collectionView];
    sub_1006BADE8(v3);
  }
}

void sub_1002220C8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100221FE0(a3);
}

void sub_100222134(uint64_t a1, double a2, double a3)
{
  v7 = (swift_isaMask & *v3);
  v8 = v7[63];
  v15[1] = v7[62];
  v15[2] = v8;
  v15[3] = v7[64];
  v16.receiver = v3;
  v16.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v16, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v9 = [v3 traitCollection];
    v10 = type metadata accessor for SnapshotPageTraitEnvironment();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v12 = a2;
    v12[1] = a3;
    *&v11[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v9;
    v15[0].receiver = v11;
    v15[0].super_class = v10;
    v13 = [(objc_super *)v15 init];
    v14 = [v3 collectionView];
    sub_1006BAE28(v14);
  }
}

void sub_100222298(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100222134(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_100222318()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result collectionViewLayout];

    result = 0;
    if (v3)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_100222394(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        v11 = sub_100761B4C();
        sub_10021E5FC(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_100222548(void *a1, uint64_t a2, void *a3)
{
  sub_10075E11C();
  v5 = sub_1007701BC();
  v6 = a3;
  v7 = a1;
  sub_100223DB4(v5);
}

id sub_1002225C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;

  v4 = v3;
  result = [v4 collectionView];
  if (result)
  {
    v6 = result;
    v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];

    v8 = sub_1006AD0A8(a1, v6, v4, v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002226B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1003B5688();
    sub_100222394(v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();

    v5 = sub_10076579C();
    result = swift_unknownObjectRelease();
    if (v5)
    {
      sub_10076366C();
    }
  }

  return result;
}

void sub_1002227A8(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v3 = v1;
    sub_10075DF9C(v2);
    v5 = v4;
    [v3 reloadSections:v4];
  }
}

void sub_100222830(void *a1, uint64_t a2)
{
  v4 = sub_10075DFDC();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 collectionView];
  if (v9)
  {
    v10 = v9;
    sub_10000A5D4(&qword_100952110);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100783DD0;
    *(v11 + 32) = a2;
    v15[1] = v11;
    sub_100224674(&qword_10094E190, &type metadata accessor for IndexSet);
    sub_10000A5D4(&qword_10094E198);
    sub_100048C98(&unk_10094E1A0, &qword_10094E198);
    sub_1007712CC();
    sub_10075DF9C(v12);
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    [v10 reloadSections:v14];
  }
}

void sub_100222A0C(void *a1)
{
  v1 = a1;
  sub_1002200E4();
}

void sub_100222A54(void *a1)
{
  v1 = a1;
  sub_10022014C();
}

void sub_100222A9C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = a1;
  sub_1002201B4();
}

uint64_t sub_100222AF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100224488();

  return v6;
}

uint64_t sub_100222B40(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1002244B4(a4);

  return v8;
}

void sub_100222B94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1002206E8();
  }
}

uint64_t sub_100222BF0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();

    sub_10076473C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100222C80(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  LOBYTE(a5) = sub_100224428(a5);

  return a5 & 1;
}

double sub_100222CEC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = sub_100224458(a5);

  return v11;
}

id sub_100222DC0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076FF9C();
  v11 = v10;
  sub_10075E06C();
  v12 = a3;
  v13 = a1;
  v14 = sub_100222D80(v12, v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v14;
}

uint64_t sub_100222F00(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FF9C();
  v13 = v12;
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1002244E0(v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

id sub_100223078(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v9 = a3;
  v10 = a1;
  v11 = sub_100223040(v9, v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

uint64_t sub_1002231EC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_10022318C(v11, v12, v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100223304(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10075E06C();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_10022456C(v12, v10);

  return (*(v8 + 8))(v10, v7);
}

BOOL sub_100223418(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v9 = a3;
  v10 = a1;
  isa = sub_10075E02C().super.isa;
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    swift_getObjectType();
    v13 = swift_conformsToProtocol2() == 0;

    v9 = v10;
    v10 = v12;
  }

  else
  {
    v13 = 0;
  }

  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_1002235C8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v9 = a3;
  v10 = a1;
  sub_100223580(v9, v8);

  return (*(v6 + 8))(v8, v5);
}

void sub_1002236E0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002236C4(v4);
}

void sub_100223764(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100223748(v4);
}

id sub_1002237CC(uint64_t a1)
{
  v4 = *((swift_isaMask & *v1) + 0x3E0);
  v5 = *((swift_isaMask & *v1) + 0x3F0);
  v6 = *((swift_isaMask & *v1) + 0x400);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v7, "scrollViewDidScroll:", a1, v4, v5, v6);
  return [*(v1 + qword_10094E0D8) scrollViewDidScroll:a1];
}

void sub_10022387C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002237CC(v4);
}

void sub_100223900(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002238E4(v4);
}

void sub_10022398C(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_100223968(v6, a4);
}

void sub_1002239FC(void *a1)
{
  v1 = a1;
  sub_10021E284();
}

void sub_100223A44(void *a1)
{
  v1 = a1;
  sub_10021E36C();
}

uint64_t sub_100223A8C()
{
  swift_unknownObjectRelease();
}

id sub_100223B1C()
{
  v2 = *((swift_isaMask & *v0) + 0x3E0);
  v3 = *((swift_isaMask & *v0) + 0x3F0);
  v4 = *((swift_isaMask & *v0) + 0x400);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BaseShelfViewController();
  return objc_msgSendSuper2(&v5, "dealloc", v2, v3, v4);
}

uint64_t sub_100223B9C(uint64_t a1)
{
  swift_unknownObjectRelease();
}

uint64_t sub_100223D40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1007703AC();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100178A0C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100223DB4(uint64_t a1)
{
  v22 = sub_10075E11C();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v19[1] = v1;
    v23 = _swiftEmptyArrayStorage;
    sub_1004BBC28(0, v6, 0);
    v7 = v23;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v20 = *(v8 + 56);
    v21 = v9;
    v11 = (v8 - 8);
    do
    {
      v12 = v22;
      v13 = v8;
      v21(v5, v10, v22);
      v14 = sub_10075E0AC();
      (*v11)(v5, v12);
      v23 = v7;
      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        sub_1004BBC28((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      v7[2] = v16 + 1;
      v7[v16 + 4] = v14;
      v10 += v20;
      --v6;
      v8 = v13;
    }

    while (v6);
  }

  v17 = sub_100223D40(v7);

  sub_100222394(v17);
}

void sub_100223F88()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100761A9C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  if (!v3)
  {
    if (v5)
    {
      sub_10076DE6C();
      if (swift_dynamicCastClass())
      {
        return;
      }
    }

    sub_10076578C();
    sub_10076DE3C();
    v10 = objc_allocWithZone(sub_10076DE6C());
    v11 = sub_10076DE5C();
    v12 = *&v1[v4];
    v13 = v11;
    sub_10076857C();

    v14 = *&v1[v4];
    *&v1[v4] = v11;
    v15 = v13;

    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      [v16 bounds];

      sub_10076856C();
      sub_100618A1C();

      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_10076857C();

  v7 = *&v1[v4];
  *&v1[v4] = 0;

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  [v8 bounds];

  sub_10076856C();

  sub_100618A1C();
}

void *sub_10022425C(void *result)
{
  if (result)
  {
    v2 = [result integerValue];
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_100224408;
    *(v5 + 24) = v4;
    v9[4] = sub_1000349FC;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1001C5148;
    v9[3] = &unk_10088D7F8;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002243D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100224410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002244E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_10075E0BC() < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_10075E0AC();
  }

  sub_1006B0878(a1, a2, a3, v7, v3, *&v3[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph]);
}

uint64_t sub_1002245BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002245F4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100224674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002246D4()
{
  v1 = sub_10075DFDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100224798()
{
  sub_10075DFDC();
  v1 = *(v0 + 64);

  sub_1002227A8(v1);
}

uint64_t sub_100224868@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:);
  v3 = sub_1007669EC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002248DC(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView);
    v4 = [a1 superview];
    if (v4)
    {
      v5 = v4;
      sub_100016F40(0, &qword_1009441F0);
      v6 = v3;
      v7 = sub_100770EEC();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_100224990(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100226C8C(&qword_100942810, type metadata accessor for VideoView);
    v5 = v2;
    v6 = [v4 superview];
    if (v6)
    {
      v7 = v6;
      sub_100016F40(0, &qword_1009441F0);
      v8 = v5;
      v9 = sub_100770EEC();

      if (v9)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          [v10 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v12 = v2;
  }

  swift_unknownObjectWeakAssign();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v2 addSubview:v13];
  }

  sub_10057E5D8();
  [v2 setNeedsLayout];
}

void (*sub_100224B30(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100224B94;
}

void sub_100224B94(uint64_t a1, char a2)
{
  v4 = *a1;
  v29 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100226C8C(&qword_100942810, type metadata accessor for VideoView);
      v7 = v4;
      v8 = v29;
      v9 = [v6 superview];
      if (v9)
      {
        v10 = v9;
        sub_100016F40(0, &qword_1009441F0);
        v11 = v8;
        v12 = sub_100770EEC();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
      v22 = v29;
    }

    swift_unknownObjectWeakAssign();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      [v29 addSubview:v24];
    }

    sub_10057E5D8();
    [v29 setNeedsLayout];

    v26 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_100226C8C(&qword_100942810, type metadata accessor for VideoView);
      v15 = v29;
      v16 = [v6 superview];
      if (v16)
      {
        v17 = v16;
        sub_100016F40(0, &qword_1009441F0);
        v18 = v15;
        v19 = sub_100770EEC();

        if (v19)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v23 = v29;
    }

    swift_unknownObjectWeakAssign();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      [v29 addSubview:v27];
    }

    sub_10057E5D8();
    [v29 setNeedsLayout];

    v26 = v29;
  }
}

uint64_t sub_100224EB8()
{
  v1 = sub_10076FF9C();
  v3 = v2;
  if (v1 == sub_10076FF9C() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = sub_10077167C();

  if (v6)
  {
LABEL_15:
    v14 = *(v0 + 144);

    return v14();
  }

  v7 = sub_10076FF9C();
  v9 = v8;
  if (v7 == sub_10076FF9C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_10077167C();

    if ((v12 & 1) == 0)
    {

      return sub_10076D37C();
    }
  }

  return sub_10076D3AC();
}

uint64_t sub_100225048()
{
  result = sub_10076BAAC();
  if (!v1)
  {
    return sub_10076BA9C();
  }

  return result;
}

uint64_t sub_1002250A4(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A1D68);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_10076D9AC();
  *a3 = &protocol witness table for StaticDimension;
  sub_10000DB7C(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_10076D9BC();
  return (*(v8 + 8))(v10, v7);
}

char *sub_10022529C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView;
  *&v5[v19] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v21 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_taglineLabel;
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D3DC();
  v23 = sub_10000A61C(v22, qword_1009A1D68);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v16, v23, v22);
  (*(v24 + 56))(v16, 0, 1, v22);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v25 = objc_allocWithZone(sub_1007626BC());
  *&v5[v21] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_pageTraits] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  v27 = sub_1007669EC();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v5[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = 1;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_searchAdTransparencyButton] = 0;
  v28 = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v36.receiver = v5;
  v36.super_class = v28;
  v29 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView]];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView]];

  v32 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_taglineLabel;
  v33 = *&v29[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_taglineLabel];
  sub_10076266C();

  v34 = [v29 contentView];
  [v34 addSubview:*&v29[v32]];

  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v29;
}

uint64_t sub_100225748()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v60 = sub_10076D1FC();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100766A4C();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007669EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_10000A5D4(&qword_1009451E8);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v54 = sub_100766A2C();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  v24 = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v67.receiver = v1;
  v67.super_class = v24;
  v51 = v24;
  objc_msgSendSuper2(&v67, "layoutSubviews");
  v61 = v1[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace];
  v25 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_100072E70(&v1[v25], v19);
  v49 = v19;
  sub_100072E70(v19, v16);
  v26 = *(v6 + 48);
  if (v26(v16, 1, v5) == 1)
  {
    (*(ObjectType + 224))();
    if (v26(v16, 1, v5) != 1)
    {
      sub_10000CFBC(v16, &qword_1009451E8);
    }
  }

  else
  {
    (*(v6 + 32))(v13, v16, v5);
  }

  v27 = *(v6 + 16);
  v27(v10, v13, v5);
  v28 = (*(v6 + 88))(v10, v5);
  v29 = v23;
  if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v30 = v50;
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, v66);
  }

  else
  {
    v30 = v50;
    if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_10093FB08 != -1)
      {
        swift_once();
      }

      sub_10000A570(qword_10099DB00, v66);
    }

    else
    {
      if (qword_10093FB10 != -1)
      {
        swift_once();
      }

      sub_10000A570(qword_10099DB28, v66);
      (*(v6 + 8))(v10, v5);
    }
  }

  v27(v30, v13, v5);
  sub_10000A570(v66, v65);
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v31 = sub_10076D3DC();
  sub_10000A61C(v31, qword_1009A1D68);
  v32 = [v1 traitCollection];
  sub_100770B3C();

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v33 = sub_10076D9AC();
  v34 = sub_10000A61C(v33, qword_1009A2350);
  v63 = v33;
  v64 = &protocol witness table for StaticDimension;
  v35 = sub_10000DB7C(v62);
  (*(*(v33 - 8) + 16))(v35, v34, v33);
  sub_100766A0C();
  sub_10000CD74(v66);
  (*(v6 + 8))(v13, v5);
  sub_10000CFBC(v49, &qword_1009451E8);
  v36 = v53;
  v37 = v54;
  (*(v53 + 16))(v52, v29, v54);
  v38 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView];
  v66[3] = type metadata accessor for SmallLockupView();
  v66[4] = &protocol witness table for UIView;
  v66[0] = v38;
  v39 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView];
  v65[3] = type metadata accessor for LockupMediaView();
  v65[4] = &protocol witness table for UIView;
  v65[0] = v39;
  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_taglineLabel];
  v41 = v38;
  v42 = v39;
  if ([v40 hasContent])
  {
    v43 = sub_1007626BC();
    v44 = v40;
    v45 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v40 = 0;
    v62[1] = 0;
    v62[2] = 0;
  }

  v63 = v43;
  v64 = v45;
  v62[0] = v40;
  v46 = v55;
  sub_100766A3C();
  sub_10076422C();
  v47 = v57;
  sub_1007669FC();
  (*(v59 + 8))(v47, v60);
  (*(v56 + 8))(v46, v58);
  return (*(v36 + 8))(v29, v37);
}

uint64_t sub_10022608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v12 - 8);
  v14 = &v44[-v13];
  v15 = sub_10076350C();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v47 = &v44[-v19];
  if (sub_1007673BC())
  {
    v46 = a6;
    if (a2 | a1)
    {
      v28 = v47;
      sub_10076D3AC();
      (*(v48 + 104))(v28, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v15);
      return (*(v48 + 32))(v46, v28, v15);
    }

    v20 = sub_10057F8EC(a3, a4, 0, 1);
    v21 = v20;
    v22 = v20 >> 62;
    if (v20 >> 62)
    {
      v23 = sub_10077158C();
      if (a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
LABEL_5:
        v24 = sub_1007601CC();
        goto LABEL_12;
      }
    }

    v24 = 0;
LABEL_12:
    v45 = sub_10057FC34(v24);

    if (a3)
    {
      v29 = sub_1007601CC();
    }

    else
    {
      v29 = 0;
    }

    v30 = sub_1007673CC();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v14, a5, v30);
    (*(v31 + 56))(v14, 0, 1, v30);
    v32 = sub_10058015C(v29, v14);

    sub_10000CFBC(v14, &qword_10094E260);
    if (v22)
    {
      result = sub_10077158C();
      if (result)
      {
LABEL_17:
        if ((v21 & 0xC000000000000001) != 0)
        {
          sub_10077149C();
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        v33 = sub_10076BDCC();

        if (v33)
        {
          v34 = v47;
          (*(v48 + 104))(v47, enum case for LockupMediaLayout.DisplayType.landscape(_:), v15);
          return (*(v48 + 32))(v46, v34, v15);
        }

LABEL_24:
        v35 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v36 = *(v48 + 104);
        v36(v17, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v15);
        v37 = sub_1007634FC();
        v38 = *(v48 + 8);
        v38(v17, v15);
        if (((v23 >= v37) & v32) != 0 || (v35 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v15), v39 = sub_1007634FC(), v38(v17, v15), ((v23 >= v39) & v45) != 0) || (v35 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v15), v40 = sub_1007634FC(), v38(v17, v15), v23 >= v40) || (v35 = enum case for LockupMediaLayout.DisplayType.oneUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v15), v41 = sub_1007634FC(), v38(v17, v15), v23 == v41))
        {
          v34 = v47;
          v42 = v47;
          v43 = v35;
        }

        else
        {
          v43 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v34 = v47;
          v42 = v47;
        }

        v36(v42, v43, v15);
        return (*(v48 + 32))(v46, v34, v15);
      }
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_24;
  }

  v25 = enum case for LockupMediaLayout.DisplayType.none(_:);
  v26 = *(v48 + 104);

  return v26(a6, v25, v15);
}

id sub_1002266FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupCollectionViewCell()
{
  result = qword_10094E228;
  if (!qword_10094E228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100226844()
{
  sub_10022696C(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10022696C(319, &qword_10094E240, &type metadata accessor for MixedMediaLockupLayout.LockupPosition);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10022696C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t (*sub_1002269E4(uint64_t **a1))()
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
  v2[4] = sub_100224B30(v2);
  return sub_100019A4C;
}

uint64_t sub_100226A54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100226AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100226B14(uint64_t *a1))()
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
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100226C8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100226CD4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView;
  *(v1 + v11) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView;
  *(v1 + v12) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_taglineLabel;
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A1D68);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v13) = sub_1007626AC();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_pageTraits) = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  v19 = sub_1007669EC();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_searchAdTransparencyButton) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_100227054(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell_currentLinkView;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell_currentLinkView];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell_currentLinkView] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setHidden:1];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setHidden:0];
    v7 = [v1 contentView];
    sub_1000ACA5C();
    sub_10076422C();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame:{v9, v11, v13, v15}];
  }

LABEL_4:
}

id sub_100227188(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    swift_unknownObjectWeakInit();
    a2(0);
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v7 setHidden:1];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong addSubview:v7];
    }

    swift_unknownObjectWeakDestroy();
    v10 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_10022726C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell____lazy_storage___standardLinkView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell____lazy_storage___presentationLinkView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell_currentLinkView] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v12;
}

void sub_100227494()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell_currentLinkView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    sub_1000ACA5C();
    sub_10076422C();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t type metadata accessor for LinkCollectionViewCell()
{
  result = qword_10094E2A8;
  if (!qword_10094E2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002276C0()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100227760()
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2350);
  qword_10099DBB0 = v0;
  unk_10099DBB8 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10099DB98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_10022781C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
  v13 = type metadata accessor for AppEventSearchResultCollectionViewCell();
  *v12 = 0;
  *(v12 + 1) = 0;
  v25.receiver = v4;
  v25.super_class = v13;
  v14 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_lockupView]];

  v20 = [v18 contentView];
  v21 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView;
  [v20 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView]];

  v22 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  [*&v18[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer] addTarget:v18 action:"handleTapWithGestureRecognizer:"];
  v23 = *&v18[v22];
  [v23 setDelegate:v18];

  [*&v18[v21] addGestureRecognizer:*&v18[v22]];
  return v18;
}

id sub_100227A74()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100227BA0()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppEventSearchResultCollectionViewCell();
  v26.receiver = v0;
  v26.super_class = v5;
  objc_msgSendSuper2(&v26, "layoutSubviews");
  v6 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_lockupView];
  sub_10052225C();
  sub_100770A4C();
  [v15 setFrame:?];
  if (qword_10093FB18 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10099DB98, qword_10099DBB0);
  v16 = [v1 traitCollection];
  sub_10076D41C();
  v18 = v17;

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  CGRectGetMinX(v27);
  [v15 frame];
  MaxY = CGRectGetMaxY(v28);
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  Width = CGRectGetWidth(v29);
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  v21 = CGRectGetMaxY(v30);
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView];
  if (qword_100940640 != -1)
  {
    v25 = v21;
    swift_once();
    v21 = v25;
  }

  sub_100244030(&unk_10099FD58, v22, Width, v21 - (v18 + MaxY));
  v23 = *&v22[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView];
  sub_100159754(v4);
  sub_100242754(v23, v4);
  sub_10001D3B8(v4);
  [v1 bounds];
  sub_100770A4C();
  return [v22 setFrame:?];
}

void sub_100227FCC(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100228870(&qword_100942810, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    sub_1000ACA5C();
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
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_10022816C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10001913C;
}

id sub_1002281E0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  sub_100522870();
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView];
  sub_1004B1B8C();
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  sub_10015A6F0();
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t (*sub_10022837C(uint64_t **a1))()
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
  v2[4] = sub_10022816C(v2);
  return sub_100019A4C;
}

double sub_100228474()
{
  [*(*(*v0 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  sub_10076422C();
  CGRectGetHeight(v3);
  sub_10076422C();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_100228500()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  sub_10076422C();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_100228590(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1002285E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100228650(uint64_t *a1))()
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
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1002286EC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
  sub_1000ACA5C();
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_100228870(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1002288B8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1002289B4(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView] + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  [a1 locationInView:v1];
  v7 = v6;
  v9 = v8;
  v10 = [v1 hitTest:0 withEvent:?];
  [a1 locationInView:v2];
  v12 = v11;
  v14 = v13;
  [a1 locationInView:v5];
  v16 = v15;
  v18 = v17;
  [v2 bounds];
  v21.x = v12;
  v21.y = v14;
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction])
  {
    [v1 bounds];
    v23.x = v7;
    v23.y = v9;
    v19 = CGRectContainsPoint(v26, v23);

    if (v19)
    {
      if (!v10)
      {
        return 1;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass() == 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

void sub_100228B5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076A1BC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "prepareForReuse", v5);
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
  sub_100637778();
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
  v10 = type metadata accessor for MediaView();
  v26.receiver = v9;
  v26.super_class = v10;
  objc_msgSendSuper2(&v26, "setBackgroundColor:", 0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  [*(*&v9[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:0];
  v12 = *&v9[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v12)
  {
    [v12 setBackgroundColor:0];
  }

  (*(v4 + 104))(v7, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v3);
  v13 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  (*(v4 + 24))(&v1[v13], v7, v3);
  swift_endAccess();
  [v1 setNeedsLayout];
  (*(v4 + 8))(v7, v3);
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
  [v14 setText:0];
  v15 = (v8 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  v16 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_1000167E0(v16);
  v17 = *&v9[v11];
  v18 = *(v17 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  *(v17 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = 0;
  sub_100453A30(v18);

  if (*(*&v9[v11] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      [v19 setUserInteractionEnabled:0];
    }
  }

  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
  sub_10075FCAC();

  v21 = *&v9[v11];
  v22 = *(v21 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  *(v21 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = 0;
  sub_100453A30(v22);

  sub_1004526E4();
  v23 = v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
  v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  if (v23 != 1)
  {
    [v14 removeFromSuperview];
  }

  v24 = v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  if ((v24 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
  }
}

uint64_t sub_100228E74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v48 = a3;
  v46 = sub_1007670EC();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10076D1AC();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100765CEC();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_10076A1BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  swift_getObjectType();
  v18 = [a2 traitCollection];
  v19 = sub_1007706EC();

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
  if (qword_100941020 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  v33 = sub_10000A61C(v32, qword_1009A1E58);
  (*(*(v32 - 8) + 16))(v6, v33, v32);
  (*(v38 + 104))(v6, enum case for FontSource.useCase(_:), v39);
  v50[3] = sub_100767EAC();
  v50[4] = sub_10022C198(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension);
  sub_10000DB7C(v50);
  v34 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_100767E9C();
  if (qword_10093FB28 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A5D4(&unk_10094E3A0);
  sub_10000A61C(v35, qword_10099DBC0);
  v49 = a2;
  swift_unknownObjectRetain();
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v36 = v42;
  v23(v40, v17, v42);
  (*(v7 + 16))(v43, v11, v29);
  (*(v45 + 104))(v47, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v46);
  sub_10000A570(v51, &v49);
  sub_1007670FC();
  (*(v41 + 8))(v17, v36);
  (*(v7 + 8))(v11, v29);
  return sub_10000CD74(v51);
}

void sub_100229568()
{
  v1 = sub_10000A5D4(&qword_10094E398);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = v21 - v3;
  v5 = [v0 traitCollection];
  v6 = [v5 accessibilityContrast];

  v7 = v6 == 1;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (qword_10093FB20 != -1)
  {
    v20 = IsReduceTransparencyEnabled;
    swift_once();
    IsReduceTransparencyEnabled = v20;
  }

  v10 = v7 || IsReduceTransparencyEnabled;
  v11 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v11, qword_10094E320);
  v21[3] = v0;
  v12 = v0;
  sub_10075FDCC();

  [v9 setTextAlignment:v21[0]];
  v13 = *&v12[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
  v14 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_10022C128(v13 + v14, v4);
  v15 = sub_100761DAC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_10000CFBC(v4, &qword_10094E398);
    v17 = 0;
  }

  else
  {
    v17 = sub_100666460(v10);
    (*(v16 + 8))(v4, v15);
  }

  [v9 setTextColor:v17];

  v18 = [v9 layer];
  sub_10076FF9C();
  v19 = sub_10076FF6C();

  [v18 setCompositingFilter:v19];
}

void sub_100229838(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  if (a1)
  {
    sub_10022C198(&qword_100942810, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0);
      v9 = v5;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = a1;
  v16 = a1;
  sub_100453A30(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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

uint64_t sub_1002299DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v63 = a2;
  v61 = sub_1007670EC();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076D1AC();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100765CEC();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v47 - v6;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_10076A1BC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = sub_10076461C();
  v21 = sub_1007706EC();

  v55 = v15;
  v22 = *(v15 + 16);
  v54 = v19;
  v23 = v56;
  v56 = v14;
  v49 = v22;
  v22(v19, v23, v14);
  sub_10076460C();
  sub_10076C2EC();
  v25 = v24;
  v26 = *(v8 + 8);
  v26(v13, v7);
  sub_10076460C();
  sub_10076C2EC();
  v28 = v27;
  v26(v10, v7);
  if ((v21 & 1) == 0)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x4083100000000000;
    sub_10076460C();
    sub_10076C22C();
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
  if (qword_100941020 != -1)
  {
    swift_once();
  }

  v39 = sub_10076D3DC();
  v40 = sub_10000A61C(v39, qword_1009A1E58);
  v41 = v52;
  (*(*(v39 - 8) + 16))(v52, v40, v39);
  (*(v50 + 104))(v41, enum case for FontSource.useCase(_:), v51);
  v65[3] = sub_100767EAC();
  v65[4] = sub_10022C198(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension);
  sub_10000DB7C(v65);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_100767E9C();
  if (qword_10093FB28 != -1)
  {
    swift_once();
  }

  v43 = sub_10000A5D4(&unk_10094E3A0);
  sub_10000A61C(v43, qword_10099DBC0);
  v64[0] = sub_10076462C();
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v44 = v54;
  v45 = v56;
  v49(v53, v54, v56);
  (*(v36 + 16))(v57, v31, v30);
  (*(v60 + 104))(v62, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v61);
  sub_10000A570(&v66, v64);
  sub_1007670FC();
  (*(v55 + 8))(v44, v45);
  (*(v36 + 8))(v31, v30);
  return sub_10000CD74(&v66);
}

uint64_t sub_10022A204()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_10094E320);
  sub_10000A61C(v0, qword_10094E320);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_10022A2A0()
{
  v0 = sub_10000A5D4(&unk_10094E3A0);
  sub_10000DB18(v0, qword_10099DBC0);
  sub_10000A61C(v0, qword_10099DBC0);
  sub_10000A5D4(&unk_100943120);
  sub_10000A5D4(&unk_100943240);
  return sub_10075FDEC();
}

char *sub_10022A364(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v96 = sub_10076F9AC();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v91 = &v86 - v11;
  v100 = sub_10076771C();
  v98 = *(v100 - 1);
  __chkstk_darwin(v100);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v99 = &v86 - v14;
  v15 = sub_10076D3DC();
  v103 = *(v15 - 8);
  __chkstk_darwin(v15);
  v97 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v86 - v18;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&unk_1009467F0);
  __chkstk_darwin(v22 - 8);
  v24 = &v86 - v23;
  v25 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v26 = sub_10076341C();
  v27 = *(*(v26 - 8) + 56);
  v101 = v4;
  v27(&v4[v25], 1, 1, v26);
  v28 = type metadata accessor for MediaView();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v30 = type metadata accessor for UberContentContainer();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v32 = &v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v33[32] = 1;
  *&v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v110.receiver = v31;
  v110.super_class = v30;
  v34 = objc_msgSendSuper2(&v110, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = v34;
  if (*&v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v34 addSubview:?];
  }

  v36 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v35;
  v109.receiver = v29;
  v109.super_class = v28;
  v37 = objc_msgSendSuper2(&v109, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v37 setClipsToBounds:1];
  [v37 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  v38 = v101;
  *&v101[v36] = v37;
  v39 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *&v38[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v38[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v40 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_1009413B8 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v19, qword_1009A27B0);
  sub_1000A9194(v41, v21);
  sub_10000A5D4(&unk_100943120);
  sub_10075FE0C();
  v42 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v38[v40] = sub_1006389FC(v24);
  v43 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v44 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v45 = sub_10076A1BC();
  (*(*(v45 - 8) + 104))(&v38[v43], v44, v45);
  *&v38[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits] = 0;
  v38[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  v38[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  *&v38[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{a1, a2, a3, a4}];
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100941028 != -1)
    {
      swift_once();
    }

    v46 = qword_1009A1E70;
  }

  else
  {
    if (qword_100941020 != -1)
    {
      swift_once();
    }

    v46 = qword_1009A1E58;
  }

  v47 = v15;
  v48 = sub_10000A61C(v15, v46);
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
  *&v89[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v55 = v91;
  v51(v91, v52, v47);
  v56 = v47;
  v88 = *(v50 + 56);
  v88(v55, 0, 1, v47);
  v57 = v92;
  v58 = v100;
  v54(v92, v53, v100);
  v59 = v87;
  v60 = sub_1007626AC();
  v61 = v97;
  v51(v55, v97, v56);
  v90 = v56;
  v88(v55, 0, 1, v56);
  v62 = v60;
  sub_1007625DC();
  sub_1007625BC();
  [v62 setNumberOfLines:2];
  v63 = v98;
  v64 = v99;
  (*(v98 + 16))(v57, v99, v58);
  sub_10076262C();

  (*(v63 + 8))(v64, v58);
  v65 = *(v103 + 8);
  v103 += 8;
  v100 = v65;
  (v65)(v61, v56);
  v66 = v101;
  *&v101[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] = v62;
  v108.receiver = v66;
  v108.super_class = ObjectType;
  v67 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  v68 = [v67 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v69 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel;
  [*&v67[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] setNumberOfLines:2];
  v70 = *&v67[v69];
  sub_10076266C();

  v71 = *&v67[v69];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v72 = v71;
  v73 = v94;
  sub_10076F95C();
  sub_10000CFBC(&v104, &unk_1009434C0);
  sub_10000CFBC(&v106, &unk_1009434C0);
  sub_100770B9C();

  v74 = *(v95 + 8);
  v75 = v96;
  v74(v73, v96);
  v76 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_artworkView;
  v77 = *&v67[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
  sub_10075FBEC();

  v78 = *&v67[v76];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v79 = v78;
  sub_10076F95C();
  sub_10000CFBC(&v104, &unk_1009434C0);
  sub_10000CFBC(&v106, &unk_1009434C0);
  sub_100770B9C();

  v74(v73, v75);
  sub_100016F40(0, &qword_100942F10);
  v80 = sub_100770D5C();
  [v67 setBackgroundColor:v80];

  v81 = [v67 contentView];
  v82 = [v81 layer];

  [v82 setAllowsGroupBlending:0];
  v83 = [v67 contentView];
  [v83 addSubview:*&v67[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];

  v84 = [v67 contentView];
  [v84 addSubview:*&v67[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView]];

  sub_100229568();
  (v100)(v102, v90);
  return v67;
}

void (*sub_10022B048(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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
  return sub_10022B0E4;
}

void sub_10022B0E4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_10022C198(&qword_100942810, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0);
        v8 = v4;
        v9 = sub_100770EEC();

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
    v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v18 = v3;
    sub_100453A30(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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
      sub_10022C198(&qword_100942810, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0);
        v13 = v4;
        v14 = sub_100770EEC();

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
    v26 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v31 = v3;
    sub_100453A30(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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

id sub_10022B3E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076A1BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076710C();
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076712C();
  v13 = *(v29 - 8);
  *&v14 = __chkstk_darwin(v29).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  result = objc_msgSendSuper2(&v40, "layoutSubviews", v14);
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits];
  if (v18)
  {
    v28 = v3;
    v19 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v1[v19], v6);
    swift_unknownObjectRetain();
    sub_100228E74(v9, v18, v12);
    (*(v7 + 8))(v9, v6);
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v38 = type metadata accessor for MediaView();
    v39 = &protocol witness table for UIView;
    v37 = v20;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
    v35 = sub_1007626BC();
    v36 = &protocol witness table for UILabel;
    v34 = v21;
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
    v32 = type metadata accessor for BreakoutDetailsView(0);
    v33 = &protocol witness table for UIView;
    v31 = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_10076711C();
    v26 = [v1 contentView];
    [v26 bounds];

    sub_1007670DC();
    (*(v30 + 8))(v5, v28);
    v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
    [v1 bounds];
    [v27 setFrame:?];
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v16, v29);
  }

  return result;
}

char *sub_10022B97C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY];
    result = *(*&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v5 = *&result[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
    *&result[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v4;
    if (v4 != v5)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeHeroBreakoutCollectionViewCell()
{
  result = qword_10094E368;
  if (!qword_10094E368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022BBE0()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_10076A1BC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10022BCD4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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

uint64_t (*sub_10022BD48(uint64_t **a1))()
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
  v2[4] = sub_10022B048(v2);
  return sub_100019A4C;
}

double sub_10022BDBC()
{
  [v0 bounds];

  return CGRectGetMaxY(*&v1);
}

uint64_t sub_10022BDF0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10022C198(&unk_10094E3B0, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10022BE64(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10022C198(&unk_10094E3B0, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10022BEF0(uint64_t *a1))()
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
  sub_10022C198(&unk_10094E3B0, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10022BFAC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_10022C128(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094E398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022C198(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10022C1E0()
{
  v1 = v0;
  v27 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009467F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v20 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_1009413B8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v27, qword_1009A27B0);
  sub_1000A9194(v21, v3);
  sub_10000A5D4(&unk_100943120);
  sub_10075FE0C();
  v22 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v20) = sub_1006389FC(v6);
  v23 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v24 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v25 = sub_10076A1BC();
  (*(*(v25 - 8) + 104))(v1 + v23, v24, v25);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden) = 1;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10022C600@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10076D1AC();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946720);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v29 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v12 + 8))(v14, v11);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v15 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v17 = sub_10076D9AC();
    v18 = v17;
    v19 = qword_1009A2350;
    goto LABEL_9;
  }

  if (v15 == enum case for Shelf.ContentType.singleColumnList(_:) || v15 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    if (qword_100941370 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v15 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    if (qword_100941370 == -1)
    {
LABEL_19:
      v24 = qword_1009A2720;
      *v6 = qword_1009A2720;
      v26 = v30;
      v25 = v31;
      (*(v30 + 104))(v6, enum case for FontSource.textStyle(_:), v31);
      a2[3] = sub_10076D9AC();
      a2[4] = &protocol witness table for StaticDimension;
      sub_10000DB7C(a2);
      v32[3] = v25;
      v32[4] = &protocol witness table for FontSource;
      v27 = sub_10000DB7C(v32);
      (*(v26 + 16))(v27, v6, v25);
      v28 = v24;
      sub_10076D9BC();
      return (*(v26 + 8))(v6, v25);
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  if (v15 == enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v17 = sub_10076D9AC();
    v18 = v17;
    v19 = qword_1009A23B0;
LABEL_9:
    v20 = sub_10000A61C(v17, v19);
    a2[3] = v18;
    a2[4] = &protocol witness table for StaticDimension;
    v21 = sub_10000DB7C(a2);
    return (*(*(v18 - 8) + 16))(v21, v20, v18);
  }

  sub_100642F38(v29, a2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10022CB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v116 = sub_10076D1AC();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = (&v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v4 - 8);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v99 - v7;
  __chkstk_darwin(v8);
  v10 = &v99 - v9;
  __chkstk_darwin(v11);
  v109 = &v99 - v12;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v117 = sub_10076B5BC();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v105 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v106 = &v99 - v21;
  __chkstk_darwin(v22);
  v103 = &v99 - v23;
  __chkstk_darwin(v24);
  v104 = &v99 - v25;
  __chkstk_darwin(v26);
  v110 = &v99 - v27;
  __chkstk_darwin(v28);
  v111 = &v99 - v29;
  __chkstk_darwin(v30);
  v118 = &v99 - v31;
  v32 = sub_10000A5D4(&unk_100946720);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v107 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v99 - v36;
  __chkstk_darwin(v38);
  v113 = &v99 - v39;
  __chkstk_darwin(v40);
  v42 = &v99 - v41;
  __chkstk_darwin(v43);
  v45 = &v99 - v44;
  v121 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v46 = *(v33 + 8);
  v120 = v32;
  v46(v45, v32);
  if (!*(v123 + 16))
  {

    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    goto LABEL_10;
  }

  v102 = v46;
  sub_10000A570(v123 + 32, &v124);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&unk_1009520F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_10;
  }

  if (!*(&v128 + 1))
  {
LABEL_10:
    result = sub_10000CFBC(&v127, &qword_10094D3E8);
LABEL_11:
    v55 = v122;
    v122[3] = &type metadata for Double;
    v55[4] = &protocol witness table for Double;
    *v55 = 0;
    return result;
  }

  sub_100012498(&v127, v130);
  sub_10000CF78(v130, v130[3]);
  if ((sub_10076968C() & 1) == 0)
  {
    result = sub_10000CD74(v130);
    goto LABEL_11;
  }

  v100 = v37;
  sub_10076468C();
  swift_getKeyPath();
  v47 = v118;
  v48 = v120;
  sub_10076F49C();

  v49 = v42;
  v50 = v48;
  v101 = v33 + 8;
  v102(v49, v48);
  v51 = v119;
  v52 = v117;
  v53 = (*(v119 + 88))(v47, v117);
  if (v53 != enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
  {
    v56 = (v33 + 48);
    if (v53 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v57 = v109;
      sub_10076463C();
      sub_10000CFBC(v10, &qword_1009499A0);
      if ((*v56)(v57, 1, v50) == 1)
      {
        sub_10000CFBC(v57, &qword_1009499A0);
        goto LABEL_31;
      }

      v58 = v100;
      (*(v33 + 32))(v100, v57, v50);
      swift_getKeyPath();
      v67 = v104;
      sub_10076F49C();

      v68 = v103;
      (*(v51 + 104))(v103, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
      sub_10022DD04();
      sub_10077018C();
      sub_10077018C();
      if (v127 == v124)
      {
        v69 = *(v51 + 8);
        v69(v68, v52);
        v69(v67, v52);
      }

      else
      {
        v74 = v51;
        v75 = sub_10077167C();
        v76 = *(v74 + 8);
        v76(v68, v52);
        v76(v67, v52);
        v50 = v120;

        if ((v75 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      sub_10076F49C();

      if ((v127 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v102(v58, v50);
      goto LABEL_31;
    }

    v62 = v112;
    v63 = v108;
    sub_10076463C();
    sub_10000CFBC(v63, &qword_1009499A0);
    if ((*v56)(v62, 1, v50) == 1)
    {
      sub_10000CFBC(v62, &qword_1009499A0);
LABEL_40:
      v94 = v114;
      *v114 = UIFontTextStyleBody;
      v95 = v115;
      v96 = v116;
      (*(v115 + 104))(v94, enum case for FontSource.textStyle(_:), v116);
      v125 = sub_10076D9AC();
      v126 = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v124);
      *(&v128 + 1) = v96;
      v129 = &protocol witness table for FontSource;
      v97 = sub_10000DB7C(&v127);
      (*(v95 + 16))(v97, v94, v96);
      v98 = UIFontTextStyleBody;
      sub_10076D9BC();
      (*(v95 + 8))(v94, v96);
      goto LABEL_41;
    }

    v70 = v107;
    (*(v33 + 32))(v107, v62, v50);
    swift_getKeyPath();
    v71 = v106;
    sub_10076F49C();

    v72 = v105;
    (*(v51 + 104))(v105, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_10022DD04();
    sub_10077018C();
    sub_10077018C();
    if (v127 == v124)
    {
      v73 = *(v51 + 8);
      v73(v72, v52);
      v73(v71, v52);
    }

    else
    {
      v82 = v51;
      v83 = sub_10077167C();
      v84 = *(v82 + 8);
      v84(v72, v52);
      v84(v71, v52);

      if ((v83 & 1) == 0)
      {
        v86 = v70;
        v87 = v120;
LABEL_39:
        v102(v86, v87);
        goto LABEL_40;
      }
    }

    swift_getKeyPath();
    v85 = v120;
    sub_10076F49C();

    if ((v127 & 1) == 0)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = 0x4020000000000000;
      v102(v70, v85);
LABEL_41:
      sub_100012498(&v124, &v127);
      (*(v119 + 8))(v118, v52);
      goto LABEL_42;
    }

    v86 = v70;
    v87 = v85;
    goto LABEL_39;
  }

  sub_10076463C();
  sub_10000CFBC(v15, &qword_1009499A0);
  if ((*(v33 + 48))(v18, 1, v50) != 1)
  {
    v58 = v113;
    (*(v33 + 32))(v113, v18, v50);
    swift_getKeyPath();
    v59 = v111;
    sub_10076F49C();

    v60 = v110;
    (*(v51 + 104))(v110, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_10022DD04();
    sub_10077018C();
    sub_10077018C();
    if (v127 == v124)
    {
      v61 = *(v51 + 8);
      v61(v60, v52);
      v61(v59, v52);

      goto LABEL_21;
    }

    v64 = v51;
    v65 = sub_10077167C();
    v66 = *(v64 + 8);
    v66(v60, v52);
    v66(v59, v52);
    v50 = v120;

    if (v65)
    {
LABEL_21:
      swift_getKeyPath();
      sub_10076F49C();

      if (v127)
      {
        goto LABEL_30;
      }

LABEL_36:
      v88 = v114;
      *v114 = UIFontTextStyleBody;
      v89 = v50;
      v90 = v115;
      v91 = v116;
      (*(v115 + 104))(v88, enum case for FontSource.textStyle(_:), v116);
      v125 = sub_10076D9AC();
      v126 = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v124);
      *(&v128 + 1) = v91;
      v129 = &protocol witness table for FontSource;
      v92 = sub_10000DB7C(&v127);
      (*(v90 + 16))(v92, v88, v91);
      v93 = UIFontTextStyleBody;
      sub_10076D9BC();
      (*(v90 + 8))(v88, v91);
      v102(v58, v89);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  sub_10000CFBC(v18, &qword_1009499A0);
LABEL_31:
  v77 = v114;
  *v114 = UIFontTextStyleBody;
  v78 = v115;
  v79 = v116;
  (*(v115 + 104))(v77, enum case for FontSource.textStyle(_:), v116);
  v125 = sub_10076D9AC();
  v126 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v124);
  *(&v128 + 1) = v79;
  v129 = &protocol witness table for FontSource;
  v80 = sub_10000DB7C(&v127);
  (*(v78 + 16))(v80, v77, v79);
  v81 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v78 + 8))(v77, v79);
LABEL_32:
  sub_100012498(&v124, &v127);
LABEL_42:
  sub_100012498(&v127, v122);
  return sub_10000CD74(v130);
}

unint64_t sub_10022DD04()
{
  result = qword_10094C660;
  if (!qword_10094C660)
  {
    sub_10076B5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C660);
  }

  return result;
}

uint64_t sub_10022DD60@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1AC8);
  v7 = *(v5 - 8);
  v22 = *(v7 + 16);
  v21 = v7 + 16;
  v22(v4, v6, v5);
  v8 = v2[13];
  v20 = enum case for FontSource.useCase(_:);
  v19 = v8;
  v8(v4);
  v9 = sub_10076D9AC();
  v30[3] = v9;
  v30[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v30);
  v28 = v1;
  v29 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v27);
  v11 = v2[2];
  v11(v10, v4, v1);
  sub_10076D9BC();
  v12 = v2[1];
  v12(v4, v1);
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v5, qword_1009A1AE0);
  v22(v4, v13, v5);
  v19(v4, v20, v1);
  v28 = v9;
  v29 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v27);
  v25 = v1;
  v26 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v24);
  v11(v14, v4, v1);
  sub_10076D9BC();
  v12(v4, v1);
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v5, qword_1009A1B58);
  v22(v4, v15, v5);
  v19(v4, v20, v1);
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v24);
  v23[3] = v1;
  v23[4] = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v23);
  v11(v16, v4, v1);
  sub_10076D9BC();
  v12(v4, v1);
  return sub_10076773C();
}

UIColor sub_10022E1A4()
{
  sub_1000325F0();
  result.super.isa = sub_100770E4C(0.0, 0.0, 0.0, 1.0).super.isa;
  qword_10099DC30 = result.super.isa;
  return result;
}

void sub_10022E214(uint64_t a1, void *a2, id *a3, void *a4)
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

UIColor sub_10022E294()
{
  sub_1000325F0();
  result.super.isa = sub_100770E4C(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_10099DC40 = result.super.isa;
  return result;
}

char *sub_10022E2D8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10075FEEC();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v11 - 8);
  v99 = v93 - v12;
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v106 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076771C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = v93 - v20;
  v21 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v21 - 8);
  v23 = v93 - v22;
  v24 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v25 = sub_10076341C();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  v98 = sub_10075FD2C();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v108 = v4;
  *&v4[v26] = v27;
  v28 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v13, qword_1009A1AC8);
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
  v33 = sub_1007626BC();
  v107 = v16;
  v34 = v33;
  v35 = objc_allocWithZone(v33);
  *&v108[v28] = sub_1007626AC();
  v36 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v13, qword_1009A1AE0);
  v105(v23, v37, v13);
  v104(v23, 0, 1, v13);
  v103(v109, v32, v107);
  v38 = objc_allocWithZone(v34);
  *&v108[v36] = sub_1007626AC();
  v94 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  v93[2] = v31;
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v13, qword_1009A1B58);
  v40 = v105;
  v41 = v106;
  v105(v106, v39, v13);
  v42 = v107;
  v43 = v13;
  v93[0] = v13;
  v44 = v103;
  v103(v109, v32, v107);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v45[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v40(v23, v41, v43);
  v93[1] = v30;
  v46 = v104;
  v104(v23, 0, 1, v43);
  v47 = v95;
  v44(v95, enum case for DirectionalTextAlignment.none(_:), v42);
  v48 = UIContentSizeCategoryExtraExtraExtraLarge;
  v49 = sub_1007626AC();
  v50 = v106;
  v51 = v93[0];
  v40(v23, v106, v93[0]);
  v46(v23, 0, 1, v51);
  v52 = v49;
  sub_1007625DC();
  v53 = v50;
  sub_1007625BC();
  [v52 setNumberOfLines:0];
  v54 = v96;
  v55 = v109;
  v56 = v107;
  (*(v96 + 16))(v47, v109, v107);
  sub_10076262C();

  (*(v54 + 8))(v55, v56);
  (*(v97 + 8))(v53, v51);
  v57 = v108;
  *&v108[v94] = v52;
  *&v57[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits] = 0;
  v58 = type metadata accessor for EditorialStoryCardCollectionViewCell();
  v110.receiver = v57;
  v110.super_class = v58;
  v59 = objc_msgSendSuper2(&v110, "initWithFrame:", a1, a2, a3, a4);
  [v59 setClipsToBounds:0];
  v60 = [v59 contentView];
  [v60 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v61 = [v59 contentView];
  [v61 setClipsToBounds:0];

  v62 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  [*&v59[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView] setContentMode:2];
  v63 = qword_10093F888;
  v64 = *&v59[v62];
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = sub_10076BCFC();
  v66 = sub_10000A61C(v65, qword_10099D438);
  v67 = *(v65 - 8);
  v68 = v99;
  (*(v67 + 16))(v99, v66, v65);
  (*(v67 + 56))(v68, 0, 1, v65);
  sub_10075FCDC();

  v69 = *&v59[v62];
  v71 = v100;
  v70 = v101;
  v72 = v102;
  (*(v101 + 104))(v100, enum case for CornerStyle.arc(_:), v102);
  v73 = v69;
  sub_10075FD1C();

  (*(v70 + 8))(v71, v72);
  v74 = *&v59[v62];
  sub_10075FB9C();
  sub_1007638DC();

  v75 = *&v59[v62];
  sub_10075FBAC();
  sub_1007638EC();

  v76 = [v59 contentView];
  [v76 addSubview:*&v59[v62]];

  v77 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  v78 = qword_10093FB40;
  v79 = *&v59[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
  if (v78 != -1)
  {
    swift_once();
  }

  [v79 setTextColor:qword_10099DC38];

  v80 = [v59 contentView];
  [v80 addSubview:*&v59[v77]];

  v81 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  v82 = qword_10093FB48;
  v83 = *&v59[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_10099DC40;
  [v83 setTextColor:qword_10099DC40];

  v85 = [v59 contentView];
  [v85 addSubview:*&v59[v81]];

  v86 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  [*&v59[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel] setTextColor:v84];
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

id sub_10022EEE4()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076774C();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10076776C();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EditorialStoryCardCollectionViewCell();
  v43.receiver = v1;
  v43.super_class = v15;
  result = objc_msgSendSuper2(&v43, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v27 = v3;
    v28 = v2;
    swift_unknownObjectRetain();
    [v1 bounds];
    CGRectGetWidth(v44);
    [v1 bounds];
    CGRectGetHeight(v45);
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v17 = sub_10076D9AC();
    sub_10000A61C(v17, qword_1009A2380);
    sub_10076D17C();
    sub_10076D40C();
    (*(v12 + 8))(v14, v11);
    sub_10022DD60(v8);
    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView];
    v41 = sub_10075FD2C();
    v42 = &protocol witness table for UIView;
    v40 = v18;
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
    v38 = sub_1007626BC();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v19;
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
    v35 = v38;
    v34 = v20;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel];
    v33 = &protocol witness table for UILabel;
    v32 = v38;
    v31 = v21;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_10076775C();
    sub_10076772C();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v5, v28);
    return (*(v29 + 8))(v10, v30);
  }

  return result;
}

id sub_10022F35C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_10075FCAC();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel] setText:0];
}

id sub_10022F448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EditorialStoryCardCollectionViewCell()
{
  result = qword_10094E3E8;
  if (!qword_10094E3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022F560()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10022F61C()
{
  v1 = sub_10076D3DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10076771C();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v13 = sub_10076341C();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  sub_10075FD2C();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v62 = v0;
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v1, qword_1009A1AC8);
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
  v24 = sub_1007626BC();
  v25 = objc_allocWithZone(v24);
  *(v62 + v16) = sub_1007626AC();
  v26 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v1, qword_1009A1AE0);
  v59(v11, v27, v1);
  v54 = v19;
  v60(v11, 0, 1, v1);
  v51 = v22;
  v58(v8, v21, v63);
  v28 = objc_allocWithZone(v24);
  *(v62 + v26) = sub_1007626AC();
  v53 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v1, qword_1009A1B58);
  v30 = v61;
  v31 = v59;
  v59(v61, v29, v1);
  v32 = v8;
  v52 = v8;
  v33 = v63;
  v34 = v58;
  v58(v32, v21, v63);
  v35 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v35[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v31(v11, v30, v1);
  v36 = v1;
  v49 = v1;
  v50 = v18;
  v37 = v60;
  v60(v11, 0, 1, v36);
  v38 = v55;
  v34(v55, enum case for DirectionalTextAlignment.none(_:), v33);
  v39 = UIContentSizeCategoryExtraExtraExtraLarge;
  v40 = sub_1007626AC();
  v41 = v61;
  v42 = v49;
  v31(v11, v61, v49);
  v37(v11, 0, 1, v42);
  v43 = v40;
  sub_1007625DC();
  sub_1007625BC();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v52;
  v46 = v63;
  (*(v56 + 16))(v38, v52, v63);
  sub_10076262C();

  (*(v44 + 8))(v45, v46);
  (*(v57 + 8))(v41, v42);
  v47 = v62;
  *(v62 + v53) = v43;
  *(v47 + OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10022FC8C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton);
  sub_10003F0D4(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000CF78(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_10077165C();
    (*(v7 + 8))(v10, v5);
    sub_10000CD74(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

uint64_t sub_10022FDE4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton);
  sub_10003F0D4(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10000CF78(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_10077165C();
    (*(v5 + 8))(v8, v3);
    sub_10000CD74(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 removeTarget:v9 action:0 forControlEvents:64];
  return swift_unknownObjectRelease();
}

id sub_10022FF30(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView];
  if (v5)
  {
    goto LABEL_2;
  }

  v10 = [objc_allocWithZone(type metadata accessor for InstallProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = *&v2[v4];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v4];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v4] = v10;
  v13 = v10;

  if (v13)
  {
    [v2 addSubview:v13];
  }

  [v2 setNeedsLayout];

  v14 = *&v2[v4];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler];
    v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler + 8];
    v17 = &v14[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
    v18 = *&v14[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
    *v17 = v15;
    v17[1] = v16;
    v19 = v14;
    sub_10001CE50(v15);
    sub_1000167E0(v18);

    v20 = *&v2[v4];
    if (v20)
    {
      [v20 setClipsToBounds:1];
      v5 = *&v2[v4];
      if (v5)
      {
LABEL_2:
        v6 = v5;
        sub_10076390C();
        [v6 _setCornerRadius:?];

        v7 = *&v2[v4];
        if (v7)
        {
          v8 = *&v7[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progress];
          *&v7[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progress] = a1;
          v9 = v7;
          sub_1005CA4D4(v8);
        }
      }
    }
  }

  return [v2 setNeedsLayout];
}

void sub_1002300FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler);
  *v3 = a1;
  v3[1] = a2;
  sub_1000167E0(v4);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView);
  if (v5)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = &v5[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
    v9 = *&v5[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
    *v8 = v6;
    v8[1] = v7;
    v10 = v5;
    sub_10001CE50(v6);
    sub_1000167E0(v9);
  }
}

uint64_t sub_1002301BC@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v1 - 8);
  v47 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v37[-v4];
  __chkstk_darwin(v6);
  v8 = &v37[-v7];
  v9 = sub_10076D1AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10076443C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v46 = &v37[-v18];
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

  v20 = v10;
  v48 = v5;
  v21 = sub_10000A61C(v13, v19);
  (*(v14 + 16))(v16, v21, v13);
  v40 = v14;
  v41 = v13;
  (*(v14 + 32))(v46, v16, v13);
  v68[13] = &type metadata for Double;
  v68[14] = &protocol witness table for Double;
  v68[9] = &protocol witness table for Double;
  v68[10] = 0x4024000000000000;
  v68[8] = &type metadata for Double;
  v68[5] = 0x4000000000000000;
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D3DC();
  v23 = sub_10000A61C(v22, qword_1009A1858);
  v39 = *(v22 - 8);
  v45 = *(v39 + 16);
  v45(v12, v23, v22);
  v24 = *(v10 + 104);
  v25 = enum case for FontSource.useCase(_:);
  v50 = v20 + 104;
  v54 = v24;
  v24(v12);
  v53 = sub_10076D9AC();
  v68[3] = v53;
  v68[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v68);
  v66 = v9;
  v67 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v65);
  v51 = *(v20 + 16);
  v52 = v20 + 16;
  v51(v26, v12, v9);
  sub_10076D9BC();
  v49 = *(v20 + 8);
  v44 = v20 + 8;
  v49(v12, v9);
  v65[0] = 0x405C000000000000;
  v62[0] = 0x4044000000000000;
  sub_10000A5D4(&unk_100943120);
  v42 = v8;
  sub_10075FDEC();
  if (qword_100940E28 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v22, qword_1009A1870);
  v45(v12, v27, v22);
  v54(v12, v25, v9);
  v66 = v53;
  v67 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v9;
  v64 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v62);
  v51(v28, v12, v9);
  sub_10076D9BC();
  v49(v12, v9);
  v62[0] = 0x405C000000000000;
  v59[0] = 0x4044000000000000;
  sub_10075FDEC();
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v22, qword_1009A1828);
  v45(v12, v29, v22);
  v54(v12, v25, v9);
  v63 = v53;
  v64 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v62);
  v60 = v9;
  v61 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v59);
  v51(v30, v12, v9);
  sub_10076D9BC();
  v49(v12, v9);
  v59[0] = 0x4052000000000000;
  v56[0] = 0x4034000000000000;
  v38 = v25;
  sub_10075FDEC();
  *v12 = UIFontTextStyleBody;
  *(v12 + 2) = 0;
  LODWORD(v45) = enum case for FontUseCase.preferredFont(_:);
  v39 = *(v39 + 104);
  (v39)(v12);
  v54(v12, v25, v9);
  v60 = v53;
  v61 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v59);
  v57 = v9;
  v58 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v56);
  v51(v31, v12, v9);
  v32 = UIFontTextStyleBody;
  sub_10076D9BC();
  v33 = v49;
  v49(v12, v9);
  v34 = v46;
  sub_1007643EC();
  sub_10076441C();
  *v12 = v32;
  *(v12 + 2) = 0;
  (v39)(v12, v45, v22);
  v54(v12, v38, v9);
  v57 = v53;
  v58 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v56);
  v55[3] = v9;
  v55[4] = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v55);
  v51(v35, v12, v9);
  sub_10076D9BC();
  v33(v12, v9);
  sub_100769FAC();
  return (*(v40 + 8))(v34, v41);
}

char *sub_100230ACC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView] = 0;
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler];
  sub_10075FD2C();
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView] = sub_10075FB3C();
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A1858);
  v20 = *(v18 - 8);
  v51 = *(v20 + 16);
  v51(v16, v19, v18);
  v50 = *(v20 + 56);
  v50(v16, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v49 = *(v11 + 104);
  v49(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = sub_1007626BC();
  v48 = v10;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940E28 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v18, qword_1009A1870);
  v51(v16, v25, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v26 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel] = sub_1007626AC();
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v18, qword_1009A1828);
  v51(v16, v27, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v28 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel] = sub_1007626AC();
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton] = sub_1001E89B8(0);
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v34 setScrollEnabled:1];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel] setTextAlignment:1];
  v36 = OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel] setTextAlignment:1];
  v37 = OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel] setTextAlignment:1];
  v38 = *&v34[v35];
  sub_1000325F0();
  v39 = v38;
  v40 = sub_100770D1C();
  [v39 setTextColor:v40];

  v41 = *&v34[v36];
  v42 = sub_100770CFC();
  [v41 setTextColor:v42];

  v43 = *&v34[v37];
  v44 = sub_100770D0C();
  [v43 setTextColor:v44];

  [v34 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView]];
  [v34 addSubview:*&v34[v35]];
  [v34 addSubview:*&v34[v36]];
  [v34 addSubview:*&v34[v37]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView]];

  return v34;
}

double sub_1002311E0()
{
  v1 = sub_100769FCC();
  __chkstk_darwin(v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100769FEC();
  v30 = *(v4 - 8);
  v31 = v4;
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v29[1] = v3;
  sub_1002301BC(v3);

  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView];
  v53 = sub_10075FD2C();
  v54 = &protocol witness table for UIView;
  v52 = v8;
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView];
  if (v9)
  {
    v10 = type metadata accessor for InstallProgressView();
    v11 = &protocol witness table for UIView;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v48 = 0;
    v49 = 0;
  }

  v47 = v9;
  v50 = v10;
  v51 = v11;
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel];
  v45 = sub_1007626BC();
  v46 = &protocol witness table for UILabel;
  v43 = &protocol witness table for UILabel;
  v44 = v12;
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel];
  v42 = v45;
  v40 = &protocol witness table for UILabel;
  v41 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel];
  v39 = v45;
  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView];
  v36 = type metadata accessor for AgeRatingBadgeView();
  v37 = &protocol witness table for UIView;
  v35 = v15;
  v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton];
  v33 = type metadata accessor for OfferButton();
  v34 = &protocol witness table for UIView;
  v32 = v16;
  v17 = v8;
  v18 = v9;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v29[0];
  sub_100769FDC();
  sub_10023198C();
  v25 = v31;
  sub_10076D2AC();
  v27 = v26;
  (*(v30 + 8))(v24, v25);
  return v27;
}

uint64_t sub_1002314E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100769FCC();
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100769FEC();
  v33 = *(v8 - 8);
  v34 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v32[0] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.receiver = v1;
  v61.super_class = ObjectType;
  v32[2] = ObjectType;
  objc_msgSendSuper2(&v61, "layoutSubviews", v9);
  v11 = [v1 traitCollection];
  v32[1] = v7;
  sub_1002301BC(v7);

  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView];
  v59 = sub_10075FD2C();
  v60 = &protocol witness table for UIView;
  v58 = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView];
  if (v13)
  {
    v14 = type metadata accessor for InstallProgressView();
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v13;
  v56 = v14;
  v57 = v15;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel];
  v51 = sub_1007626BC();
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v16;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel];
  v48 = v51;
  v46 = &protocol witness table for UILabel;
  v47 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel];
  v45 = v51;
  v44 = v18;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView];
  v42 = type metadata accessor for AgeRatingBadgeView();
  v43 = &protocol witness table for UIView;
  v41 = v19;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v20;
  v21 = v12;
  v22 = v13;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v32[0];
  sub_100769FDC();
  sub_10076422C();
  v29 = v35;
  sub_100769F9C();
  [v1 frame];
  Width = CGRectGetWidth(v62);
  sub_10076D1DC();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v29, v37);
  return (*(v33 + 8))(v28, v34);
}

unint64_t sub_10023198C()
{
  result = qword_10094E470;
  if (!qword_10094E470)
  {
    sub_100769FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094E470);
  }

  return result;
}