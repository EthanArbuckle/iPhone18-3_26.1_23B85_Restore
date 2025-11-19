uint64_t sub_1002D900C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10095DCF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D9074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D908C(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  v7 = [a1 contentInset];
  v8.n128_f64[0] = fmin((v4 + v6 + v8.n128_f64[0] - *(v1 + 32)) / *(v1 + 40), 1.0);
  if (v8.n128_f64[0] < 0.0)
  {
    v8.n128_f64[0] = 0.0;
  }

  return (*(v1 + 16))(v7, v8);
}

void *sub_1002D911C(void *result, double a2)
{
  if (*(v2 + 32) != a2)
  {
    *(v2 + 32) = a2;
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentOffset];
    v7 = v6;
    v8 = [v3 contentInset];
    v9.n128_f64[0] = fmin((v5 + v7 + v9.n128_f64[0] - *(v2 + 32)) / *(v2 + 40), 1.0);
    if (v9.n128_f64[0] < 0.0)
    {
      v9.n128_f64[0] = 0.0;
    }

    return (*(v2 + 16))(v8, v9);
  }

  return result;
}

uint64_t sub_1002D91BC()
{

  return swift_deallocClassInstance();
}

double sub_1002D921C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_1007708EC() == a1 && v6 == a2)
  {

    goto LABEL_11;
  }

  v8 = sub_10077167C();

  if (v8)
  {
LABEL_11:

    sub_1007708FC();
    *(a3 + 24) = sub_10000A5D4(&qword_100950658);
    *(a3 + 32) = sub_100071820(&unk_100950660, &qword_100950658);
    sub_10000DB7C(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007D7F70 == a2 || (sub_10077167C() & 1) != 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a3 + 24) = sub_10000A5D4(&qword_100950640);
    *(a3 + 32) = sub_100071820(&qword_100950648, &qword_100950640);
    sub_10000DB7C(a3);
    sub_100016F40(0, &qword_100950650);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_10076A3BC();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1002D956C(void *a1)
{
  v2 = sub_1007621EC();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&unk_100946720);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_10076469C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10000CFBC(v10, &unk_10095DCF0);
  }

  v16 = Strong;
  v25 = v2;
  v26 = v4;
  v24 = a1;
  sub_10000A5D4(&qword_10094B630);
  sub_100071820(&qword_10094B638, &qword_10094B630);
  sub_10076A67C();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CFBC(v10, &unk_10095DCF0);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_10076468C();
  swift_getKeyPath();
  v17 = v26;
  sub_10076F49C();

  (*(v27 + 8))(v7, v5);
  v18 = v28;
  v19 = v25;
  if ((*(v28 + 88))(v17, v25) == enum case for ShelfBackground.color(_:))
  {
    (*(v18 + 96))(v17, v19);
    v20 = *v17;
    v21 = *(sub_10000A5D4(&unk_100950670) + 48);
    v22 = sub_1007659CC();
    (*(*(v22 - 8) + 8))(v17 + v21, v22);
    [v24 setBackgroundColor:v20];

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return (*(v18 + 8))(v17, v19);
  }
}

void sub_1002D99E0(void *a1)
{
  v2 = sub_1007621EC();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&unk_100946720);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_10076469C();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_100944C40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v33 = a1;
    v19 = qword_1009503C8;
    swift_beginAccess();
    v20 = *&v18[v19];
    if (!v20)
    {

      return;
    }

    v21 = v20;

    sub_10076E79C();
    v22 = sub_10076E5EC();
    (*(v14 + 8))(v16, v13);
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      if (__OFSUB__(v22, 1))
      {
        __break(1u);
        return;
      }

      v24 = v23;
      sub_10000A5D4(&qword_10094B630);
      sub_100071820(&qword_10094B638, &qword_10094B630);
      sub_10076A67C();

      v25 = v39;
      if ((*(v39 + 48))(v9, 1, v10) != 1)
      {
        (*(v25 + 32))(v12, v9, v10);
        sub_10076468C();
        swift_getKeyPath();
        v26 = v38;
        v27 = v35;
        sub_10076F49C();

        (*(v34 + 8))(v6, v27);
        v29 = v36;
        v28 = v37;
        if ((*(v36 + 88))(v26, v37) == enum case for ShelfBackground.color(_:))
        {
          (*(v29 + 96))(v26, v28);
          v30 = *v26;
          v31 = *(sub_10000A5D4(&unk_100950670) + 48);
          v32 = sub_1007659CC();
          (*(*(v32 - 8) + 8))(v26 + v31, v32);
          [v33 setBackgroundColor:v30];

          (*(v25 + 8))(v12, v10);
        }

        else
        {
          (*(v25 + 8))(v12, v10);
          (*(v29 + 8))(v26, v28);
        }

        return;
      }
    }

    else
    {
      (*(v39 + 56))(v9, 1, 1, v10);
    }

    sub_10000CFBC(v9, &unk_10095DCF0);
  }
}

uint64_t sub_1002DA030(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076F2EC();
  __chkstk_darwin(v11 - 8);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076FD4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10075E11C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v78 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v77 - v22;
  v24 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v24 - 8);
  v82 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v81 = v77 - v27;
  __chkstk_darwin(v28);
  v80 = v77 - v29;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = v77 - v32;
  v95.receiver = v5;
  v95.super_class = ObjectType;
  v87 = ObjectType;
  objc_msgSendSuper2(&v95, "frame", v31);
  IsEmpty = CGRectIsEmpty(v98);
  v88 = v5;
  v89 = v19;
  v85 = v14;
  v84 = v15;
  v83 = v17;
  if (IsEmpty || (v94.receiver = v5, v94.super_class = v87, objc_msgSendSuper2(&v94, "frame"), v36 == a3) && v35 == a4)
  {
    v37 = v80;
    (*(v19 + 56))(v80, 1, 1, v18);
    goto LABEL_14;
  }

  v38 = [v5 indexPathsForVisibleItems];
  v39 = sub_1007701BC();

  *&v92 = v39;

  sub_1002E0D70(&v92);

  v14 = v92;
  v17 = *(v92 + 16);
  if (!v17)
  {
LABEL_12:

    v37 = v80;
    (*(v89 + 56))(v80, 1, 1, v18);
    v5 = v88;
LABEL_13:
    v14 = v85;
    v15 = v84;
    v33 = v77[1];
    v17 = v83;
LABEL_14:
    v79 = v18;
    sub_100023AD0(v37, v33, &unk_10094DE60);
    if (qword_1009412E0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v5 = 0;
  v86 = v92 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v33 = (v89 + 8);
  v40 = v88;
  while (v5 < *(v14 + 16))
  {
    v15 = v18;
    (*(v89 + 16))(v23, v86 + *(v89 + 72) * v5, v18);
    isa = sub_10075E02C().super.isa;
    v42 = [v40 cellForItemAtIndexPath:isa];

    if (v42)
    {
      [v40 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v42 frame];
      v100.origin.x = v51;
      v100.origin.y = v52;
      v100.size.width = v53;
      v100.size.height = v54;
      v99.origin.x = v44;
      v99.origin.y = v46;
      v99.size.width = v48;
      v99.size.height = v50;
      v55 = CGRectContainsRect(v99, v100);

      if (v55)
      {

        v56 = v89;
        v37 = v80;
        v18 = v15;
        (*(v89 + 32))(v80, v23, v15);
        (*(v56 + 56))(v37, 0, 1, v15);
        v5 = v40;
        goto LABEL_13;
      }
    }

    ++v5;
    v18 = v15;
    (*v33)(v23, v15);
    if (v17 == v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v57 = sub_10000A61C(v14, qword_1009A25E8);
  (*(v15 + 16))(v17, v57, v14);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100785C70;
  sub_10076F27C();
  type metadata accessor for CGSize(0);
  v59 = v58;
  *(&v93 + 1) = v58;
  *&v92 = a3;
  *(&v92 + 1) = a4;
  sub_10076F30C();
  sub_10000CFBC(&v92, &unk_1009434C0);
  sub_10076F27C();
  v91.receiver = v5;
  v91.super_class = v87;
  objc_msgSendSuper2(&v91, "frame");
  *(&v93 + 1) = v59;
  *&v92 = v60;
  *(&v92 + 1) = v61;
  sub_10076F30C();
  sub_10000CFBC(&v92, &unk_1009434C0);
  sub_10076F2DC();
  v96._countAndFlagsBits = 0x6E696C6C6F726373;
  v96._object = 0xED0000206F742067;
  sub_10076F2CC(v96);
  v62 = v33;
  v63 = v33;
  v64 = v81;
  sub_100016E2C(v63, v81, &unk_10094DE60);
  v65 = v89;
  v66 = *(v89 + 48);
  v67 = v79;
  if (v66(v64, 1, v79) == 1)
  {
    sub_10000CFBC(v64, &unk_10094DE60);
    v92 = 0u;
    v93 = 0u;
  }

  else
  {
    *(&v93 + 1) = v67;
    v68 = sub_10000DB7C(&v92);
    (*(v65 + 32))(v68, v64, v67);
  }

  sub_10076F29C();
  sub_10000CFBC(&v92, &unk_1009434C0);
  v97._countAndFlagsBits = 46;
  v97._object = 0xE100000000000000;
  sub_10076F2CC(v97);
  sub_10076F2FC();
  v69 = v85;
  v70 = v83;
  sub_10076FBCC();

  (*(v84 + 8))(v70, v69);
  v71 = v88;
  v90.receiver = v88;
  v90.super_class = v87;
  objc_msgSendSuper2(&v90, "setFrame:", a1, a2, a3, a4);
  v72 = v82;
  sub_100016E2C(v62, v82, &unk_10094DE60);
  if (v66(v72, 1, v67) == 1)
  {
    sub_10000CFBC(v62, &unk_10094DE60);
  }

  else
  {
    v73 = v89;
    v74 = v78;
    (*(v89 + 32))(v78, v72, v67);
    [v71 layoutIfNeeded];
    v75 = sub_10075E02C().super.isa;
    [v71 scrollToItemAtIndexPath:v75 atScrollPosition:1 animated:0];

    (*(v73 + 8))(v74, v67);
    v72 = v62;
  }

  return sub_10000CFBC(v72, &unk_10094DE60);
}

id sub_1002DAA80()
{
  ObjectType = swift_getObjectType();
  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10076FD4C();
  sub_10000A61C(v2, qword_1009A25E8);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v5[0] = ObjectType;
  sub_10076F30C();
  sub_10000CFBC(v5, &unk_1009434C0);
  MetatypeMetadata = &type metadata for String;
  strcpy(v5, "reloadData()");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  sub_10076F30C();
  sub_10000CFBC(v5, &unk_1009434C0);
  sub_10076FBCC();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "reloadData");
}

void sub_1002DADA0(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityMedium;
  v4 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_10077088C() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_10077087C())
  {
    v5 = sub_10077088C();

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v8 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_10077088C() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_10077087C())
  {
    sub_10077088C();
  }
}

char *sub_1002DAF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  *(v2 + qword_100951310) = 0;
  *(v2 + qword_10099E450) = 0;
  *(v2 + qword_100951318) = 0;
  sub_10076486C();
  v6 = qword_100951328;
  v7 = sub_10075DD7C();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = qword_100951330;
  v9 = sub_10075E00C();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + qword_100951340) = 0;
  v10 = v3 + qword_100951348;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + qword_100951350) = 0;
  sub_10076A14C();
  sub_10076F5CC();
  *(v3 + qword_100951338) = v17;

  v11 = sub_10048462C(a1, a2);
  v12 = *&v11[qword_10099E390];

  sub_10076668C();

  sub_10000A5D4(&unk_100945BF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100784500;
  *(v13 + 32) = sub_10076E3EC();
  *(v13 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v13 + 48) = sub_10076E88C();
  *(v13 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_10077061C();
  swift_unknownObjectRelease();

  if (sub_1001E7518())
  {

LABEL_4:
    type metadata accessor for TodayDebugViews();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v15 + 71) = 0;
    *(v15 + 56) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 24) = 0u;
    swift_unknownObjectWeakAssign();
    *&v11[qword_100951350] = v15;

    return v11;
  }

  v14 = sub_1001E753C();

  if (v14)
  {
    goto LABEL_4;
  }

  return v11;
}

id sub_1002DB200()
{
  v1 = qword_100951340;
  v2 = *(v0 + qword_100951340);
  if (v2)
  {
    v3 = *(v0 + qword_100951340);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"didLongPressTitleWithGestureRecognizer:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002DB284()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = sub_10076C03C();
  v24[3] = v2;
  v24[4] = sub_1002E6D08(&qword_100947230, &type metadata accessor for Feature.iOS);
  v3 = sub_10000DB7C(v24);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v2);
  LOBYTE(v2) = sub_10076C90C();
  sub_10000CD74(v24);
  if ((v2 & 1) == 0)
  {
    v4 = [v1 view];
    if (!v4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_16;
  }

  *(v8 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  [v1 setClearsSelectionOnViewWillAppear:0];
  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 _setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:14];
  }

  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setDelaysContentTouches:0];
  }

  if ((byte_1009626A0 & 1) == 0)
  {
    v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v13 setMinimumLineHeight:13.0];
    [v13 setMaximumLineHeight:13.0];
    sub_10000A5D4(&unk_10094E7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100784500;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v15 = sub_100016F40(0, &unk_10095D790);
    *(inited + 40) = v13;
    *(inited + 64) = v15;
    *(inited + 72) = NSBaselineOffsetAttributeName;
    v16 = objc_allocWithZone(NSNumber);
    v17 = NSParagraphStyleAttributeName;
    v18 = v13;
    v19 = NSBaselineOffsetAttributeName;
    v20 = [v16 initWithDouble:2.0];
    *(inited + 104) = sub_100016F40(0, &qword_1009492D0);
    *(inited + 80) = v20;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_10000A5D4(&unk_100948B10);
    swift_arrayDestroy();
    sub_100016F40(0, &unk_10095B410);
    v21 = sub_100770F0C();
    type metadata accessor for Key(0);
    sub_1002E6D08(&qword_100943320, type metadata accessor for Key);
    isa = sub_10076FE3C().super.isa;

    [v21 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];

    v23 = [objc_allocWithZone(NSTextStorage) init];
    byte_1009626A0 = 1;
  }

  if (*&v1[qword_100951350])
  {

    sub_100189F48();
  }
}

void sub_1002DB6EC(void *a1)
{
  v1 = a1;
  sub_1002DB284();
}

uint64_t sub_1002DB734(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10076A13C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong layer];
    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    [v11 setTransform:&v13];

    swift_unknownObjectWeakAssign();
  }

  (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v4);
  sub_10076A0FC();
  (*(v5 + 8))(v8, v4);
  return sub_1002DD388();
}

void sub_1002DB8F0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002DB734(a3);
}

uint64_t sub_1002DB944()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076A13C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible", v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong layer];
    CATransform3DMakeScale(&v11, 1.0, 1.0, 1.0);
    [v9 setTransform:&v11];

    swift_unknownObjectWeakAssign();
  }

  (*(v3 + 104))(v6, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v2);
  sub_10076A0FC();
  return (*(v3 + 8))(v6, v2);
}

void sub_1002DBAEC(void *a1)
{
  v1 = a1;
  sub_1002DB944();
}

id sub_1002DBB5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100770BFC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  if (*&v0[qword_100951350])
  {

    sub_10018ABAC();
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_100770BDC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100770BEC();
  sub_10000CFBC(v5, &unk_10094FD50);
  sub_100770C3C();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_100951348];
  v19 = *&v1[qword_100951348];
  v20 = v1[qword_100951348 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController);
      return sub_10076A6CC();
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_1002DBE6C(void *a1)
{
  v1 = a1;
  sub_1002DBB5C();
}

void sub_1002DBEC8(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076A13C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10076A0FC();
  (*(v9 + 8))(v11, v8);
}

void sub_1002DC010(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076A13C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10076A0FC();
  (*(v11 + 8))(v13, v10);
}

void sub_1002DC14C(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v87);
  v13 = &v66 - v12;
  v75 = sub_10000A5D4(&unk_100946720);
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v66 - v15;
  v16 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v16 - 8);
  v96 = &v66 - v17;
  v18 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v93 = &v66 - v25;
  v26 = sub_10075E11C();
  v89 = *(v26 - 8);
  v90 = v26;
  __chkstk_darwin(v26);
  v78 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v66 - v29;
  v103.receiver = v4;
  v103.super_class = ObjectType;
  v88 = ObjectType;
  objc_msgSendSuper2(&v103, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v4 isViewLoaded])
  {
    v30 = [v4 collectionView];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v30;
    aBlock = 0x3FF0000000000000;
    v98 = 0;
    v99 = 0;
    v100 = 0x3FF0000000000000;
    v101 = 0;
    v102 = 0;
    [v30 setTransform:&aBlock];

    v32 = [v4 collectionView];
    if (v32)
    {
      v72 = v20;
      v33 = v32;
      v34 = [v32 indexPathsForSelectedItems];

      if (v34)
      {
        v86 = v4;
        v67 = a1;
        v35 = v90;
        v36 = sub_1007701BC();

        v85 = *(v36 + 16);
        if (!v85)
        {
          v77 = _swiftEmptyArrayStorage;
LABEL_26:

          if (v77[2])
          {
            v62 = v77;
            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = v62;
            v101 = sub_1002E6D00;
            v102 = v64;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_1006F5994;
            v100 = &unk_100890918;
            v65 = _Block_copy(&aBlock);

            [v67 animateAlongsideTransition:0 completion:v65];
            _Block_release(v65);
          }

          else
          {
          }

          return;
        }

        v37 = 0;
        v83 = v89 + 16;
        v71 = (v14 + 8);
        v82 = (v10 + 56);
        v81 = enum case for Shelf.ContentType.todayCard(_:);
        v80 = (v10 + 104);
        v68 = (v10 + 32);
        v70 = (v10 + 8);
        v73 = (v89 + 8);
        v76 = (v89 + 32);
        v77 = _swiftEmptyArrayStorage;
        v38 = v96;
        v94 = v23;
        v84 = v36;
        v79 = (v10 + 48);
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          v39 = v9;
          v40 = v13;
          v41 = v39;
          v42 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v91 = *(v89 + 72);
          v92 = v42;
          (*(v89 + 16))(v95, v36 + v42 + v91 * v37, v35);
          sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController);
          sub_10076A65C();
          v43 = sub_10076341C();
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(v38, 1, v43) == 1)
          {
            sub_10000CFBC(v38, &unk_1009428D0);
            v45 = 1;
            v46 = v93;
          }

          else
          {
            swift_getKeyPath();
            v47 = v74;
            sub_10076338C();

            (*(v44 + 8))(v96, v43);
            swift_getKeyPath();
            v46 = v93;
            v48 = v75;
            sub_10076F49C();

            (*v71)(v47, v48);
            v45 = 0;
          }

          v49 = *v82;
          v50 = v41;
          (*v82)(v46, v45, 1, v41);
          (*v80)(v23, v81, v41);
          v49(v23, 0, 1, v41);
          v51 = *(v87 + 48);
          v13 = v40;
          sub_100016E2C(v46, v40, &unk_1009568A0);
          sub_100016E2C(v23, v40 + v51, &unk_1009568A0);
          v52 = *v79;
          if ((*v79)(v40, 1, v50) == 1)
          {
            break;
          }

          v53 = v72;
          sub_100016E2C(v13, v72, &unk_1009568A0);
          if (v52(&v13[v51], 1, v50) == 1)
          {
            sub_10000CFBC(v94, &unk_1009568A0);
            sub_10000CFBC(v46, &unk_1009568A0);
            (*v70)(v53, v50);
            v9 = v50;
LABEL_8:
            sub_10000CFBC(v13, &qword_100942C28);
            v35 = v90;
            v38 = v96;
            goto LABEL_9;
          }

          v54 = v69;
          (*v68)(v69, &v13[v51], v50);
          sub_1002E6D08(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
          v55 = sub_10076FF1C();
          v56 = *v70;
          (*v70)(v54, v50);
          sub_10000CFBC(v94, &unk_1009568A0);
          sub_10000CFBC(v93, &unk_1009568A0);
          v56(v53, v50);
          sub_10000CFBC(v13, &unk_1009568A0);
          v35 = v90;
          v38 = v96;
          v9 = v50;
          if (v55)
          {
            goto LABEL_20;
          }

LABEL_9:
          (*v73)(v95, v35);
          v23 = v94;
LABEL_10:
          ++v37;
          v36 = v84;
          if (v85 == v37)
          {
            goto LABEL_26;
          }
        }

        sub_10000CFBC(v23, &unk_1009568A0);
        sub_10000CFBC(v46, &unk_1009568A0);
        v9 = v50;
        if (v52(&v13[v51], 1, v50) == 1)
        {
          sub_10000CFBC(v13, &unk_1009568A0);
          v35 = v90;
          v38 = v96;
LABEL_20:
          v57 = *v76;
          (*v76)(v78, v95, v35);
          v58 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v58;
          v23 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004BBCC8(0, v58[2] + 1, 1);
            v58 = aBlock;
          }

          v61 = v58[2];
          v60 = v58[3];
          if (v61 >= v60 >> 1)
          {
            sub_1004BBCC8(v60 > 1, v61 + 1, 1);
            v58 = aBlock;
          }

          v58[2] = v61 + 1;
          v77 = v58;
          v57(v58 + v92 + v61 * v91, v78, v35);
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }
  }
}

void sub_1002DCCE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = *(a3 + 16);
        if (v8)
        {
          v9 = *(sub_10075E11C() - 8);
          v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v11 = *(v9 + 72);
          do
          {
            isa = sub_10075E02C().super.isa;
            [v7 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v13 = sub_10075E02C().super.isa;
            v14 = [v7 cellForItemAtIndexPath:v13];

            if (v14)
            {
              [v14 setHidden:1];
            }

            v10 += v11;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v7 = v5;
      }
    }
  }
}

void sub_1002DCE70(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002DC14C(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1002DCEF0(void *a1)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewSafeAreaInsetsDidChange");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];
      v7 = v6;

      [v3 verticalScrollIndicatorInsets];
      [v3 setVerticalScrollIndicatorInsets:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1002DCFD4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = ASKDeviceTypeGetCurrent();
  v11 = sub_10076FF9C();
  v13 = v12;
  if (v11 == sub_10076FF9C() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_10077167C();

    if ((v16 & 1) == 0)
    {
      v17 = UICollectionView;
      goto LABEL_9;
    }
  }

  v17 = type metadata accessor for TodayDiffablePageViewController.ResizableCollectionView();
LABEL_9:
  v18 = objc_allocWithZone(v17);

  return [v18 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

uint64_t sub_1002DD0F0()
{
  v1 = v0;
  v2 = sub_10076A13C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v10, v14, &unk_10094E1F0);
  if (v15)
  {
    sub_10000A570(v14, v13);
    sub_10000CFBC(v14, &unk_10094E1F0);
    sub_10000CF78(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v6);
    sub_10075F2BC();
    (*(v7 + 8))(v9, v6);
    sub_10000CD74(v13);
  }

  else
  {
    sub_10000CFBC(v14, &unk_10094E1F0);
  }

  sub_100765E3C();
  sub_1002DD388();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appDidForeground(_:), v2);
  sub_10076A0FC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002DD388()
{
  v1 = sub_10076F08C();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v68 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10076F0CC();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v4 - 8);
  v76 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_10075DD7C();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v58 - v12;
  v13 = sub_10000A5D4(&qword_100951950);
  __chkstk_darwin(v13 - 8);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = sub_10075E00C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = qword_100951330;
  swift_beginAccess();
  v75 = v24;
  v25 = &v0[v24];
  v26 = v19;
  sub_100016E2C(v25, v17, &qword_100951950);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v27 = v0;
    v28 = v78;
    v29 = v9;
    sub_10000CFBC(v17, &qword_100951950);
LABEL_5:
    if (qword_1009412E0 != -1)
    {
      swift_once();
    }

    v34 = sub_10076FD4C();
    sub_10000A61C(v34, qword_1009A25E8);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    v35 = v76;
    sub_10075DD6C();
    (*(v28 + 56))(v35, 0, 1, v29);
    v36 = qword_100951328;
    swift_beginAccess();
    sub_10003837C(v35, v27 + v36, &unk_10094FA00);
    swift_endAccess();
    v37 = v77;
    sub_10075DFFC();
LABEL_8:
    (*(v26 + 56))(v37, 0, 1, v18);
    v38 = v75;
    swift_beginAccess();
    sub_10003837C(v37, v27 + v38, &qword_100951950);
    return swift_endAccess();
  }

  v65 = *(v19 + 32);
  v65(v23, v17, v18);
  v30 = qword_100951328;
  swift_beginAccess();
  sub_100016E2C(&v0[v30], v8, &unk_10094FA00);
  v28 = v78;
  v31 = (*(v78 + 48))(v8, 1, v9);
  v32 = v9;
  v33 = v23;
  v27 = v0;
  if (v31 == 1)
  {
    v29 = v9;
    (*(v26 + 8))(v33, v18);
    sub_10000CFBC(v8, &unk_10094FA00);
    goto LABEL_5;
  }

  v63 = v30;
  v40 = *(v28 + 32);
  v41 = v73;
  v64 = v32;
  v62 = v28 + 32;
  v61 = v40;
  (v40)(v73, v8);
  sub_10000CF78(&v0[qword_100951320], *&v0[qword_100951320 + 24]);
  if (sub_10076184C())
  {
    sub_10075DFFC();
    sub_10075DD6C();
    sub_1002E6D08(&qword_100951990, &type metadata accessor for TimeZone);
    v42 = sub_10076FF1C();
    v60 = v26 + 32;
    if ((v42 & 1) != 0 && !sub_1002E668C(v41, v74))
    {
      if (qword_1009412E0 != -1)
      {
        swift_once();
      }

      v54 = sub_10076FD4C();
      sub_10000A61C(v54, qword_1009A25E8);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();
    }

    else
    {
      if (qword_1009412E0 != -1)
      {
        swift_once();
      }

      v43 = sub_10076FD4C();
      sub_10000A61C(v43, qword_1009A25E8);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();

      v44 = [v0 collectionView];
      if (v44)
      {
        v45 = v44;
        [v44 _scrollToTopIfPossible:0];
      }

      sub_100016F40(0, &qword_1009471F0);
      v59 = sub_10077068C();
      v46 = swift_allocObject();
      *(v46 + 16) = v27;
      aBlock[4] = sub_1002E663C;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100890878;
      v47 = _Block_copy(aBlock);
      v48 = v27;

      v49 = v66;
      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      v58 = sub_1002E6D08(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0);
      sub_100071820(&qword_100945170, &unk_10094E1C0);
      v50 = v68;
      v51 = v71;
      sub_1007712CC();
      v52 = v59;
      sub_10077069C();
      _Block_release(v47);

      (*(v70 + 8))(v50, v51);
      (*(v67 + 8))(v49, v69);
      v28 = v78;
    }

    v55 = v64;
    (*(v28 + 8))(v41, v64);
    (*(v26 + 8))(v33, v18);
    v56 = v76;
    v61(v76, v74, v55);
    (*(v28 + 56))(v56, 0, 1, v55);
    v57 = v63;
    swift_beginAccess();
    sub_10003837C(v56, v27 + v57, &unk_10094FA00);
    swift_endAccess();
    v37 = v77;
    v65(v77, v72, v18);
    goto LABEL_8;
  }

  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v53 = sub_10076FD4C();
  sub_10000A61C(v53, qword_1009A25E8);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBCC();

  (*(v28 + 8))(v41, v64);
  return (*(v26 + 8))(v33, v18);
}

void sub_1002DE1D8(void *a1)
{
  v1 = a1;
  sub_1002DD0F0();
}

uint64_t sub_1002DE220()
{
  v1 = v0;
  v2 = sub_10076A13C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v10, v14, &unk_10094E1F0);
  if (v15)
  {
    sub_10000A570(v14, v13);
    sub_10000CFBC(v14, &unk_10094E1F0);
    sub_10000CF78(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    sub_10075F2BC();
    (*(v7 + 8))(v9, v6);
    sub_10000CD74(v13);
  }

  else
  {
    sub_10000CFBC(v14, &unk_10094E1F0);
  }

  sub_100765E2C();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appWillBackground(_:), v2);
  sub_10076A0FC();
  return (*(v3 + 8))(v5, v2);
}

void sub_1002DE4B0(void *a1)
{
  v1 = a1;
  sub_1002DE220();
}

uint64_t sub_1002DE4F8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController);
  v2 = sub_10076A6BC();
  v20[3] = swift_getObjectType();
  v20[0] = v2;
  v3 = sub_10076A6AC();
  v21[3] = swift_getObjectType();
  v21[0] = v3;
  sub_10000CD08(v20, v18);
  sub_10000CD64(v18, v17);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && v16)
  {
    v15 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10049CD38((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v15;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v21, v18);
  sub_10000CD64(v18, v17);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v16;
    if (v8 >= v7 >> 1)
    {
      v14 = sub_10049CD38((v7 > 1), v8 + 1, 1, v4);
      v9 = v16;
      v4 = v14;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  type metadata accessor for TodayCardGridTracker();
  sub_10076F5CC();
  v10 = v19;
  sub_10076A6DC();
  v11 = type metadata accessor for TodayPageLayoutSectionProvider();
  *(swift_allocObject() + qword_1009500A0) = v10;
  sub_10000A570(v18, v17);
  sub_10000A570(v17, &v16);

  v12 = sub_1007697CC();
  sub_10000CD74(v17);
  result = sub_10000CD74(v18);
  a1[3] = v11;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v12;
  return result;
}

unint64_t sub_1002DE84C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for TodayPageShelfLayoutSpacingProvider;
  result = sub_1002E65B0();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002DE880()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for TodayPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1002E6D08(&qword_100951978, &type metadata accessor for TodayDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1002E6D08(&qword_100951980, type metadata accessor for TodayPageShelfSupplementaryProvider);

  return v2;
}

id sub_1002DE980()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006DE1A8();
  sub_10076A43C();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10076A40C();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10076A42C();
  }

  sub_10000A5D4(&qword_100942480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100784500;
  sub_10000A5D4(&qword_100951968);
  swift_allocObject();
  swift_retain_n();

  v4 = sub_10076A80C();
  v5 = sub_100071820(&qword_100951970, &qword_100951968);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController);
  sub_10076A6DC();
  sub_10076848C();

  result = [v1 collectionView];
  if (result)
  {
    sub_10076AF7C();
    swift_allocObject();
    *(v3 + 48) = sub_10076AF6C();
    *(v3 + 56) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v7._rawValue = v3;
    sub_10076A3FC(v7);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002DEC18(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100951958);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10073649C(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_1002E63D4();
  }

  else if (v6 == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_10076A0DC();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void *sub_1002DED90()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v80 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v74 - v5;
  v7 = sub_10076C38C();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v9 - 8);
  v11 = &v74 - v10;
  v12 = sub_100770BFC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  *&v17 = __chkstk_darwin(v16 - 8).n128_u64[0];
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v0 traitCollection];
  v20 = sub_1007706FC();

  if (v20)
  {
    v77 = *&v1[qword_10099E360];
    sub_100768B3C();
    v21 = sub_10077117C();

    if (v21)
    {
      v22 = qword_100951318;
      v23 = *&v1[qword_100951318];
      v24 = 0.0;
      v76 = v13;
      if (v23)
      {
        [v23 sizeToFit];
        v25 = *&v1[v22];
        v26 = 0.0;
        if (v25)
        {
          [v25 frame];
          v24 = v27;
          v26 = v28;
        }
      }

      else
      {
        v26 = 0.0;
      }

      result = [v1 view];
      if (result)
      {
        v30 = result;
        v74 = v24;
        v75 = v7;
        v31 = [result traitCollection];

        sub_100570CF0(v31, v82);
        result = [v1 view];
        if (result)
        {
          v32 = result;
          v33 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
          v34 = sub_100770BDC();
          v35 = *(v34 - 8);
          (*(v35 + 104))(v11, v33, v34);
          (*(v35 + 56))(v11, 0, 1, v34);
          sub_100770BEC();
          sub_10000CFBC(v11, &unk_10094FD50);
          sub_100770BBC();
          v37 = v36;

          (*(v76 + 8))(v15, v12);
          v38 = v80;
          (*(v80 + 104))(v6, enum case for PageGrid.Direction.vertical(_:), v2);
          (*(v38 + 16))(v79, v6, v2);
          sub_1005AC334(0.0);
          v73 = v37;
          v39 = v81;
          sub_10076C33C();
          (*(v38 + 8))(v6, v2);
          if ((sub_1000735EC() & 1) == 0)
          {
            sub_1000D3EB4();
          }

          sub_10076C2EC();
          sub_10076C2EC();
          v40 = [v1 traitCollection];
          v41 = sub_1007706EC();

          if (v41)
          {
            v42 = sub_100768B8C();
          }

          else
          {
            v42 = sub_100768B3C();
          }

          v80 = v42;
          v44 = v43;
          v45 = [v1 traitCollection];
          v46 = sub_1007706EC();

          if (v46)
          {
            v47 = sub_100768B5C();
            v49 = v48;
          }

          else
          {
            v47 = 0;
            v49 = 0;
          }

          v50 = [v1 traitCollection];
          v51 = sub_1007706EC();

          if (v51)
          {
            v52 = sub_100768B6C();
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0;
          }

          sub_10076C24C();
          v56 = v55;
          sub_10076C26C();
          v58 = v57;
          result = [v1 view];
          if (result)
          {
            v59 = result;
            LOBYTE(v73) = 0;
            v60 = v82;
            sub_1002E232C(0, 0, 0, v80, v44, 0, v47, v49, v56, v58, v74, v26, v52, v54, 2, v82, v73, v59);
            v62 = v61;

            v63 = objc_opt_self();
            v64 = [v63 fractionalWidthDimension:1.0];
            v65 = [v63 absoluteDimension:v62];
            v66 = [objc_opt_self() sizeWithWidthDimension:v64 heightDimension:v65];

            v67 = v66;
            v68 = sub_10076FF6C();
            v69 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v67 elementKind:v68 alignment:1];

            v70 = v69;
            sub_10076C31C();
            [v70 setContentInsets:?];

            v71 = sub_1002E5378();
            sub_10000A5D4(&unk_100942870);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007841E0;
            *(inited + 32) = v70;
            v83 = v71;
            sub_1000F9964(inited);

            (*(v78 + 8))(v39, v75);
            sub_1002E6374(v60, type metadata accessor for TitleHeaderView.Style);
            return v83;
          }

          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }
  }

  return sub_1002E5378();
}

double sub_1002DF6B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (a1 == 0xD000000000000039 && 0x80000001007D7F90 == a2 || (sub_10077167C() & 1) != 0)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = ObjectType;
    a3[3] = sub_10000A5D4(&qword_10094A0F8);
    a3[4] = sub_100071820(&qword_10094A100, &qword_10094A0F8);
    sub_10000DB7C(a3);
    type metadata accessor for TitleHeaderView(0);

    sub_10076A3BC();
  }

  else
  {

    return sub_1002D921C(a1, a2, a3);
  }

  return result;
}

void sub_1002DF860(void *a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v46[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ((sub_1000735EC() & 1) == 0)
    {
      v10 = v9;
      sub_1000D3EB4();
    }

    sub_1007704EC();
    [a1 setLayoutMargins:?];
    *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_allowsAccessibilityLayouts) = 0;
    [a1 setNeedsLayout];
    v11 = *&v9[qword_100951318];
    v12 = v11;
    sub_10018ED24(v11);
    v13 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
    *v13 = sub_1002091B8;
    v13[1] = 0;

    v14 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
    [v14 setNumberOfLines:2];
    v15 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset);
    v16 = *&UIEdgeInsetsZero.bottom;
    *v15 = *&UIEdgeInsetsZero.top;
    v15[1] = v16;
    [a1 setNeedsLayout];
    v17 = v9;
    v18 = [v17 traitCollection];

    sub_100570CF0(v18, v7);

    sub_1002E630C(v7, v4, type metadata accessor for TitleHeaderView.Style);
    (*((swift_isaMask & *a1) + 0x1C8))(v4);
    v19 = [v17 traitCollection];

    v20 = sub_1007706EC();
    if (v20)
    {
      v21 = v17;

      sub_100768B8C();
      v23 = v22;

      if (v23)
      {
        v24 = sub_10076FF6C();
      }

      else
      {
        v24 = 0;
      }

      [v14 setText:v24];

      v28 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
      if (v28)
      {

        v29 = v28;
        sub_100768B5C();
        v31 = v30;

        if (v31)
        {
          v32 = sub_10076FF6C();
        }

        else
        {
          v32 = 0;
        }

        [v29 setText:v32];
      }

      v35 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel);
      if (v35)
      {

        v36 = v35;

        sub_100768B6C();
        v38 = v37;

        if (v38)
        {
          v39 = sub_10076FF6C();
        }

        else
        {
          v39 = 0;
        }

        [v36 setText:v39];
      }

      else
      {
      }
    }

    else
    {

      sub_100768B3C();
      v26 = v25;

      if (v26)
      {
        v27 = sub_10076FF6C();
      }

      else
      {
        v27 = 0;
      }

      [v14 setText:v27];

      v33 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
      if (v33)
      {
        [v33 setText:0];
      }

      v34 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel);
      if (v34)
      {
        [v34 setText:0];
      }
    }

    [v14 setAllowsDefaultTighteningForTruncation:1];
    [a1 setNeedsLayout];
    if (sub_1001E7584() & 1) == 0 || (v40 = [a1 gestureRecognizers]) != 0 && (v41 = v40, sub_100016F40(0, &unk_10094F000), v42 = sub_1007701BC(), v41, v43 = sub_1002DB200(), v47 = v43, __chkstk_darwin(v43), *&v46[-16] = &v47, v44 = sub_1001A5D04(sub_1002E6290, &v46[-32], v42), v43, , (v44))
    {
      sub_1002E6374(v7, type metadata accessor for TitleHeaderView.Style);
    }

    else
    {
      v45 = sub_1002DB200();
      [a1 addGestureRecognizer:v45];

      sub_1002E6374(v7, type metadata accessor for TitleHeaderView.Style);
    }
  }
}

uint64_t sub_1002DFE98(uint64_t a1)
{
  v37 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v37);
  v3 = &v32 - v2;
  v4 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10075DB7C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  sub_1002E630C(a1, v14, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1002E6374(v14, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v34 = *(v16 + 32);
  v34(v20, v14, v15);
  sub_100765E7C();
  (*(v16 + 16))(v8, v20, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v21 = *(v37 + 48);
  sub_100016E2C(v11, v3, &unk_1009435D0);
  v37 = v21;
  sub_100016E2C(v8, &v3[v21], &unk_1009435D0);
  v22 = *(v16 + 48);
  if (v22(v3, 1, v15) != 1)
  {
    v33 = v20;
    v24 = v36;
    sub_100016E2C(v3, v36, &unk_1009435D0);
    v25 = v37;
    if (v22(&v3[v37], 1, v15) != 1)
    {
      v28 = &v3[v25];
      v29 = v35;
      v34(v35, v28, v15);
      sub_1002E6D08(&qword_100944C38, &type metadata accessor for URL);
      v30 = v24;
      v23 = sub_10076FF1C();
      v31 = *(v16 + 8);
      v31(v29, v15);
      sub_10000CFBC(v8, &unk_1009435D0);
      sub_10000CFBC(v11, &unk_1009435D0);
      v31(v33, v15);
      v31(v30, v15);
      sub_10000CFBC(v3, &unk_1009435D0);
      return v23 & 1;
    }

    sub_10000CFBC(v8, &unk_1009435D0);
    sub_10000CFBC(v11, &unk_1009435D0);
    v26 = *(v16 + 8);
    v26(v33, v15);
    v26(v24, v15);
    goto LABEL_8;
  }

  sub_10000CFBC(v8, &unk_1009435D0);
  sub_10000CFBC(v11, &unk_1009435D0);
  (*(v16 + 8))(v20, v15);
  if (v22(&v3[v37], 1, v15) != 1)
  {
LABEL_8:
    sub_10000CFBC(v3, &unk_100964140);
    goto LABEL_9;
  }

  sub_10000CFBC(v3, &unk_1009435D0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1002E0434(void *a1)
{
  v2 = sub_10076F08C();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076F0EC();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  result = sub_100768B4C();
  if (v16)
  {
    v30 = v6;
    if ([a1 state] == 1)
    {
      v17 = [objc_opt_self() generalPasteboard];
      v18 = sub_10076FF6C();

      [v17 setString:v18];

      v19 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
      [v19 prepare];
      [v19 impactOccurred];
      sub_100016F40(0, &qword_1009471F0);
      v28 = sub_10077068C();
      sub_10076F0DC();
      sub_10076F15C();
      v27 = v2;
      v29 = *(v9 + 8);
      v29(v11, v32);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      aBlock[4] = sub_1002E6C6C;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_1008908C8;
      v21 = _Block_copy(aBlock);
      v26 = v19;

      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002E6D08(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      v22 = v31;
      v25 = v5;
      sub_10000A5D4(&unk_10094E1C0);
      sub_100071820(&qword_100945170, &unk_10094E1C0);
      v23 = v27;
      sub_1007712CC();
      v24 = v28;
      sub_10077064C();
      _Block_release(v21);

      (*(v22 + 8))(v4, v23);
      (*(v30 + 8))(v8, v25);
      return (v29)(v14, v32);
    }

    else
    {
    }
  }

  return result;
}

void sub_1002E0934(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E0434(v4);
}

uint64_t sub_1002E099C()
{

  sub_10000CD74(v0 + qword_100951320);
  sub_10000CFBC(v0 + qword_100951328, &unk_10094FA00);
  sub_10000CFBC(v0 + qword_100951330, &qword_100951950);
}

uint64_t sub_1002E0A6C(uint64_t a1)
{

  sub_10000CD74(a1 + qword_100951320);
  sub_10000CFBC(a1 + qword_100951328, &unk_10094FA00);
  sub_10000CFBC(a1 + qword_100951330, &qword_100951950);
}

uint64_t type metadata accessor for TodayDiffablePageViewController()
{
  result = qword_100951380;
  if (!qword_100951380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002E0B94()
{
  sub_1002E0CC8(319, &qword_100951390, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_1002E0CC8(319, &unk_100951398, &type metadata accessor for TimeZone);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1002E0CC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1002E0D70(void **a1)
{
  v2 = *(sub_10075E11C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10043FD24(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1002E0E18(v5);
  *a1 = v3;
}

void sub_1002E0E18(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10077162C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10075E11C();
        v6 = sub_10077023C();
        v6[2] = v5;
      }

      v7 = *(sub_10075E11C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002E1208(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002E0F44(0, v2, 1, a1);
  }
}

void sub_1002E0F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10075E11C();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath);
      v26 = sub_10076FF0C();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002E1208(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_10043FB64(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1002E1C30(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10043FB64(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_10043FAD8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath);
      LODWORD(v133) = sub_10076FF0C();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_10076FF0C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10049D820(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_10049D820((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1002E1C30(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10043FB64(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_10043FAD8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath);
    v109 = sub_10076FF0C();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1002E1C30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_10075E11C();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath);
          LOBYTE(v34) = sub_10076FF0C();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath);
        LOBYTE(v21) = sub_10076FF0C();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1002E2224(&v54, &v53, &v52);
}

uint64_t sub_1002E2224(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10075E11C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_1002E232C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int *a8, double a9, double a10, double a11, double a12, uint64_t a13, char *a14, char *a15, uint64_t a16, uint64_t a17, void *a18)
{
  v338 = a8;
  v292 = a7;
  v332 = a6;
  v333 = a5;
  v327 = a4;
  v328 = a2;
  v301 = a3;
  v329 = a1;
  v324 = a9;
  v325 = a10;
  v344 = a16;
  v20 = sub_10076D39C();
  v299 = *(v20 - 8);
  v300 = v20;
  __chkstk_darwin(v20);
  v298 = v291 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_10076D1AC();
  v295 = *(v297 - 8);
  __chkstk_darwin(v297);
  v294 = v291 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_10076D9AC();
  v354 = *(v339 - 8);
  __chkstk_darwin(v339);
  v296 = v291 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = sub_100763BCC();
  v319 = *(v321 - 8);
  __chkstk_darwin(v321);
  v320 = v291 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100763BBC();
  v316 = *(v25 - 8);
  v317 = v25;
  __chkstk_darwin(v25);
  v318 = v291 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100763BAC();
  v313 = *(v27 - 8);
  v314 = v27;
  __chkstk_darwin(v27);
  v315 = v291 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_100763BFC();
  v326 = *(v323 - 8);
  __chkstk_darwin(v323);
  v322 = v291 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100763BEC();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v306 = v291 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v351 = v291 - v34;
  __chkstk_darwin(v35);
  v350 = v291 - v36;
  __chkstk_darwin(v37);
  v342 = v291 - v38;
  v39 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v39 - 8);
  v304 = v291 - v40;
  v41 = sub_10076997C();
  v335 = *(v41 - 8);
  v336 = v41;
  __chkstk_darwin(v41);
  v334 = v291 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10075D78C();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v291 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v303 = *(v47 - 1);
  __chkstk_darwin(v47);
  v343 = v291 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v307 = v291 - v50;
  __chkstk_darwin(v51);
  v53 = v291 - v52;
  v54 = sub_10000A5D4(&unk_10094BB20);
  v55 = *(v54 - 8);
  v311 = v54;
  v312 = v55;
  __chkstk_darwin(v54);
  v293 = v291 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v347 = v291 - v58;
  __chkstk_darwin(v59);
  v346 = v291 - v60;
  __chkstk_darwin(v61);
  v305 = v291 - v62;
  __chkstk_darwin(v63);
  v349 = v291 - v64;
  __chkstk_darwin(v65);
  v348 = v291 - v66;
  __chkstk_darwin(v67);
  v341 = v291 - v68;
  __chkstk_darwin(v69);
  v302 = v291 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v74 = v291 - v73;
  v331 = a18;
  v75 = [a18 traitCollection];
  v352 = v30;
  v353 = v31;
  v340 = v74;
  v345 = v47;
  v337 = v75;
  v330 = v43;
  v309 = v46;
  v310 = v44;
  if (!v328)
  {
    v88 = *(v31 + 56);
    v88(v74, 1, 1, v30);
    v89 = v339;
    goto LABEL_23;
  }

  v76 = v328;
  v77 = v344;
  sub_1002E630C(v344, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016F40(0, &qword_100942F00);
  v75 = sub_100770B3C();
  *&v390 = v329;
  *(&v390 + 1) = v76;

  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v79 = v78;
  (*(v44 + 8))(v46, v43);

  v80 = 0;
  if ((v79 & 1) == 0)
  {
    [v75 lineHeight];
    v82 = ceil(v81 * 1.3);
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 >= 9.22337204e18)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v80 = v82;
      goto LABEL_7;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_7:
  v291[1] = v80;
  v308 = v53;
  if (!v301)
  {
    goto LABEL_15;
  }

  v291[0] = v75;

  sub_10076BE2C();
  if (v83 && (v84 = [objc_opt_self() configurationWithFont:v291[0]], v85 = sub_10076FF6C(), , v86 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v85, v84), v85, v84, v47 = v345, v86))
  {
    [v86 size];
    sub_10076DDDC();
    swift_allocObject();
    v87 = sub_10076DDBC();
  }

  else
  {
    v90 = v47[6];
    v91 = sub_10076D3DC();
    v92 = v294;
    (*(*(v91 - 8) + 16))(v294, v77 + v90, v91);
    v93 = v295;
    v94 = v297;
    (*(v295 + 104))(v92, enum case for FontSource.useCase(_:), v297);
    *(&v391 + 1) = v94;
    v392 = &protocol witness table for FontSource;
    v95 = sub_10000DB7C(&v390);
    (*(v93 + 16))(v95, v92, v94);

    v96 = v296;
    sub_10076D9BC();
    (*(v93 + 8))(v92, v94);
    sub_10076D99C();
    sub_10076BEFC();
    v97 = v298;
    sub_10076D3AC();
    sub_10076D31C();

    (*(v299 + 8))(v97, v300);
    (*(v354 + 8))(v96, v339);
    sub_10076DDDC();
    swift_allocObject();
    v87 = sub_10076DDBC();
  }

  v75 = v291[0];
  if (v87)
  {
    *(&v391 + 1) = sub_10076DDDC();
    v392 = &protocol witness table for LayoutViewPlaceholder;
    v328 = v87;
    *&v390 = v87;
  }

  else
  {
LABEL_15:
    v328 = 0;
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
  }

  v389 = 0;
  v387 = 0u;
  v388 = 0u;
  v386 = 0;
  v384 = 0u;
  v385 = 0u;
  v98 = sub_10076C04C();
  v382 = v98;
  v383 = sub_1002E6D08(&qword_100943230, &type metadata accessor for Feature);
  v99 = sub_10000DB7C(v381);
  (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
  v100 = v75;

  v101 = v100;
  sub_10076C90C();
  sub_10000CD74(v381);
  v102 = v334;
  sub_10076996C();
  sub_10076994C();
  (*(v335 + 8))(v102, v336);
  sub_100016E2C(&v390, v380, &unk_10094DA00);
  v103 = v382;
  v104 = v383;
  v105 = sub_10000CF78(v381, v382);
  v378 = v103;
  v379 = *(v104 + 8);
  v106 = sub_10000DB7C(v377);
  (*(*(v103 - 8) + 16))(v106, v105, v103);
  v107 = v345;
  v108 = v308;
  v109 = *&v308[v345[8]];
  v375 = &type metadata for Float;
  v376 = &protocol witness table for Float;
  v374 = v109;
  v110 = v345[9];
  v111 = v339;
  v372 = v339;
  v373 = &protocol witness table for StaticDimension;
  v112 = sub_10000DB7C(v371);
  v113 = *(v354 + 16);
  v113(v112, &v108[v110], v111);
  v114 = v107[10];
  v369 = v111;
  v370 = &protocol witness table for StaticDimension;
  v115 = sub_10000DB7C(v368);
  v113(v115, &v108[v114], v111);
  sub_100016E2C(&v387, &v362, &qword_10094BB30);
  v116 = *(&v363 + 1);
  if (*(&v363 + 1))
  {
    v117 = v364;
    v118 = sub_10000CF78(&v362, *(&v363 + 1));
    *(&v366 + 1) = v116;
    v367 = *(v117 + 8);
    v119 = sub_10000DB7C(&v365);
    (*(*(v116 - 8) + 16))(v119, v118, v116);
    sub_10000CD74(&v362);
  }

  else
  {
    sub_10000CFBC(&v362, &qword_10094BB30);
    v365 = 0u;
    v366 = 0u;
    v367 = 0;
  }

  v120 = v302;
  sub_100016E2C(&v384, v359, &qword_10094BB30);
  v121 = v360;
  if (v360)
  {
    v122 = v361;
    v123 = sub_10000CF78(v359, v360);
    *(&v363 + 1) = v121;
    v364 = *(v122 + 8);
    v124 = sub_10000DB7C(&v362);
    (*(*(v121 - 8) + 16))(v124, v123, v121);
    sub_10000CD74(v359);
  }

  else
  {
    sub_10000CFBC(v359, &qword_10094BB30);
    v362 = 0u;
    v363 = 0u;
    v364 = 0;
  }

  v125 = v345;
  v126 = v308;
  sub_10000A570(&v308[v345[12]], v359);
  sub_10000A570(v126 + v125[13], v358);
  v357 = &protocol witness table for Double;
  v356 = &type metadata for Double;
  v355 = 0x4020000000000000;
  sub_100763BDC();

  sub_10000CFBC(&v384, &qword_10094BB30);
  v47 = v125;
  sub_10000CFBC(&v387, &qword_10094BB30);
  sub_1002E6374(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CD74(v381);

  sub_10000CFBC(&v390, &unk_10094DA00);
  v30 = v352;
  v88 = *(v353 + 56);
  v88(v120, 0, 1, v352);
  sub_100023AD0(v120, v340, &unk_10094BB20);
  v75 = v337;
  v89 = v339;
LABEL_23:
  v127 = v333;
  if (!v338)
  {
LABEL_26:
    v88(v341, 1, 1, v30);
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    goto LABEL_27;
  }

  v128 = type metadata accessor for TitleHeaderView.Style(0);
  v129 = v304;
  sub_100016E2C(v344 + *(v128 + 24), v304, &qword_100949718);
  if ((*(v303 + 48))(v129, 1, v47) == 1)
  {
    sub_10000CFBC(v129, &qword_100949718);
    goto LABEL_26;
  }

  sub_10013B084(v129, v307);
  sub_100016F40(0, &qword_100942F00);
  v133 = sub_100770B3C();
  *&v390 = v292;
  *(&v390 + 1) = v338;

  v134 = v309;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v136 = v135;
  (*(v310 + 8))(v134, v330);

  v137 = 0;
  if (v136)
  {
LABEL_37:
    v141 = v133;
    if (*(v344 + *(v128 + 36)) == 2)
    {
      v308 = a14;
      v328 = a13;
      v142 = sub_10076C04C();
      v303 = v137;
      v143 = v142;
      *(&v391 + 1) = v142;
      v304 = sub_1002E6D08(&qword_100943230, &type metadata accessor for Feature);
      v392 = v304;
      v144 = sub_10000DB7C(&v390);
      v145 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v146 = *(*(v143 - 8) + 104);
      v329 = v88;
      v146(v144, enum case for Feature.measurement_with_labelplaceholder(_:), v143);
      v147 = v141;

      v148 = v147;
      sub_10076C90C();
      sub_10000CD74(&v390);
      v149 = v334;
      sub_10076996C();
      sub_10076994C();
      v150 = v336;
      v151 = *(v335 + 8);
      v151(v149, v336);
      *(&v388 + 1) = v143;
      v389 = v304;
      v152 = sub_10000DB7C(&v387);
      v146(v152, v145, v143);
      v53 = v330;
      v89 = v339;

      v153 = v148;
      sub_10076C90C();
      sub_10000CD74(&v387);
      sub_10076996C();
      sub_10076994C();

      v151(v149, v150);
      v127 = v333;
      sub_1002E6374(v307, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v329)(v341, 1, 1, v352);
      v47 = v345;
      v75 = v337;
LABEL_28:
      v338 = type metadata accessor for TitleHeaderView.Style(0);
      v329 = (v344 + v338[5]);
      sub_1002E630C(v329, v343, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100016F40(0, &qword_100942F00);
      v333 = sub_100770B3C();
      if (!v127)
      {
        goto LABEL_43;
      }

      v130 = v89;
      v44 = v327;
      *&v384 = v327;
      *(&v384 + 1) = v127;

      v46 = v309;
      sub_10075D76C();
      sub_10002564C();
      sub_1007711EC();
      v132 = v131;
      (*(v310 + 8))(v46, v53);

      if (v132)
      {
LABEL_42:
        v89 = v130;
        if (!v332)
        {
          goto LABEL_50;
        }

LABEL_43:
        v330 = a15;

        sub_10076BE2C();
        if (v156 && (v157 = [objc_opt_self() configurationWithFont:v333], v158 = sub_10076FF6C(), , v159 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v158, v157), v158, v47 = v345, v157, v159))
        {
          [v159 size];
          sub_10076DDDC();
          swift_allocObject();
          v160 = sub_10076DDBC();
        }

        else
        {
          v161 = v89;
          v162 = v329;
          v163 = v47[6];
          v164 = sub_10076D3DC();
          v165 = &v162[v163];
          v89 = v161;
          v166 = v294;
          (*(*(v164 - 8) + 16))(v294, v165, v164);
          v167 = v295;
          v168 = v297;
          (*(v295 + 104))(v166, enum case for FontSource.useCase(_:), v297);
          *(&v385 + 1) = v168;
          v386 = &protocol witness table for FontSource;
          v169 = sub_10000DB7C(&v384);
          (*(v167 + 16))(v169, v166, v168);

          v170 = v296;
          sub_10076D9BC();
          (*(v167 + 8))(v166, v168);
          sub_10076D99C();
          sub_10076BEFC();
          v171 = v298;
          sub_10076D3AC();
          sub_10076D31C();

          (*(v299 + 8))(v171, v300);
          (*(v354 + 8))(v170, v89);
          sub_10076DDDC();
          swift_allocObject();
          v160 = sub_10076DDBC();
        }

        if (v160)
        {
          v172 = sub_10076DDDC();
          v386 = &protocol witness table for LayoutViewPlaceholder;
          *(&v385 + 1) = v172;
          v332 = v160;
          *&v384 = v160;
        }

        else
        {
LABEL_50:
          v332 = 0;
          v386 = 0;
          v384 = 0u;
          v385 = 0u;
        }

        v173 = sub_10076C04C();
        v382 = v173;
        v383 = sub_1002E6D08(&qword_100943230, &type metadata accessor for Feature);
        v174 = sub_10000DB7C(v381);
        (*(*(v173 - 8) + 104))(v174, enum case for Feature.measurement_with_labelplaceholder(_:), v173);

        v175 = v333;
        sub_10076C90C();
        sub_10000CD74(v381);
        v176 = v334;
        v333 = v175;
        sub_10076996C();
        sub_10076994C();
        (*(v335 + 8))(v176, v336);
        sub_100016E2C(&v384, v380, &unk_10094DA00);
        v177 = v382;
        v178 = v383;
        v179 = sub_10000CF78(v381, v382);
        v378 = v177;
        v379 = *(v178 + 8);
        v180 = sub_10000DB7C(v377);
        (*(*(v177 - 8) + 16))(v180, v179, v177);
        v181 = v345;
        v182 = v343;
        v183 = *(v343 + v345[8]);
        v375 = &type metadata for Float;
        v376 = &protocol witness table for Float;
        v374 = v183;
        v184 = v345[9];
        v372 = v89;
        v373 = &protocol witness table for StaticDimension;
        v185 = sub_10000DB7C(v371);
        v186 = *(v354 + 16);
        v186(v185, v182 + v184, v89);
        v187 = v181[10];
        v369 = v89;
        v370 = &protocol witness table for StaticDimension;
        v188 = sub_10000DB7C(v368);
        v186(v188, v182 + v187, v89);
        sub_100016E2C(&v390, &v362, &qword_10094BB30);
        v189 = *(&v363 + 1);
        if (*(&v363 + 1))
        {
          v190 = v364;
          v191 = sub_10000CF78(&v362, *(&v363 + 1));
          *(&v366 + 1) = v189;
          v367 = *(v190 + 8);
          v192 = sub_10000DB7C(&v365);
          (*(*(v189 - 8) + 16))(v192, v191, v189);
          sub_10000CD74(&v362);
        }

        else
        {
          sub_10000CFBC(&v362, &qword_10094BB30);
          v365 = 0u;
          v366 = 0u;
          v367 = 0;
        }

        v193 = v346;
        v194 = v344;
        sub_100016E2C(&v387, v359, &qword_10094BB30);
        v195 = v360;
        if (v360)
        {
          v196 = v361;
          v197 = sub_10000CF78(v359, v360);
          *(&v363 + 1) = v195;
          v364 = *(v196 + 8);
          v198 = sub_10000DB7C(&v362);
          (*(*(v195 - 8) + 16))(v198, v197, v195);
          sub_10000CD74(v359);
        }

        else
        {
          sub_10000CFBC(v359, &qword_10094BB30);
          v362 = 0u;
          v363 = 0u;
          v364 = 0;
        }

        v199 = v347;
        v200 = v345;
        v201 = v343;
        sub_10000A570(v343 + v345[12], v359);
        sub_10000A570(v201 + v200[13], v358);
        v357 = &protocol witness table for Double;
        v356 = &type metadata for Double;
        v355 = 0x4020000000000000;
        sub_100763BDC();
        sub_10000CD74(v381);
        sub_10000CFBC(&v384, &unk_10094DA00);
        v202 = *(v194 + v338[9]);
        sub_10000A5D4(&qword_10094BB38);
        v354 = *(v312 + 72);
        v203 = (*(v312 + 80) + 32) & ~*(v312 + 80);
        if (v202)
        {
          if (v202 != 1)
          {
            v232 = v354;
            v339 = swift_allocObject();
            v233 = v339 + v203;
            sub_100016E2C(v340, v339 + v203, &unk_10094BB20);
            v234 = v352;
            v235 = v353;
            (*(v353 + 16))(v233 + v232, v342, v352);
            (*(v235 + 56))(v233 + v232, 0, 1, v234);
            v236 = v305;
            sub_100016E2C(v233, v305, &unk_10094BB20);
            v237 = v293;
            sub_100023AD0(v236, v293, &unk_10094BB20);
            v238 = *(v235 + 48);
            v239 = (v235 + 32);
            v240 = v238(v237, 1, v234);
            v351 = (v235 + 32);
            if (v240 == 1)
            {
              sub_10000CFBC(v237, &unk_10094BB20);
              v241 = _swiftEmptyArrayStorage;
            }

            else
            {
              v242 = *v239;
              (*v239)(v306, v237, v234);
              v241 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v244 = *(v241 + 2);
              v243 = *(v241 + 3);
              if (v244 >= v243 >> 1)
              {
                v241 = sub_10049E330(v243 > 1, v244 + 1, 1, v241);
              }

              *(v241 + 2) = v244 + 1;
              v245 = &v241[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v244];
              v234 = v352;
              v242(v245, v306, v352);
              v237 = v293;
            }

            v246 = v305;
            sub_100016E2C(v233 + v354, v305, &unk_10094BB20);
            sub_100023AD0(v246, v237, &unk_10094BB20);
            if (v238(v237, 1, v234) == 1)
            {
              sub_10000CFBC(v237, &unk_10094BB20);
              v231 = v344;
              v75 = v340;
            }

            else
            {
              v247 = v234;
              v248 = *v351;
              (*v351)(v306, v237, v247);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v231 = v344;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v241 = sub_10049E330(0, *(v241 + 2) + 1, 1, v241);
              }

              v75 = v340;
              v251 = *(v241 + 2);
              v250 = *(v241 + 3);
              if (v251 >= v250 >> 1)
              {
                v241 = sub_10049E330(v250 > 1, v251 + 1, 1, v241);
              }

              *(v241 + 2) = v251 + 1;
              v248(&v241[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v251], v306, v352);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
LABEL_94:
            swift_deallocClassInstance();
            v53 = v322;
            if (a11 == 0.0 && a12 == 0.0)
            {
              v252 = 0;
              v253 = 0;
              v254 = 0;
              *&v385 = 0;
              *(&v384 + 1) = 0;
            }

            else
            {
              v253 = sub_10076DDDC();
              swift_allocObject();
              v252 = sub_10076DDBC();
              v254 = &protocol witness table for LayoutViewPlaceholder;
            }

            *&v384 = v252;
            *(&v385 + 1) = v253;
            v386 = v254;
            sub_100016E2C(&v384, v381, &unk_10094DA00);
            v255 = v338;
            v256 = *(v231 + v338[14]);
            v380[3] = &type metadata for CGFloat;
            v380[4] = &protocol witness table for CGFloat;
            v380[0] = v256;
            (*(v313 + 16))(v315, v231 + v338[10], v314);
            (*(v316 + 16))(v318, v231 + v255[11], v317);
            (*(v319 + 104))(v320, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v321);
            sub_100763B7C();
            sub_100770ACC();
            sub_1002E6D08(&unk_10094BB40, &type metadata accessor for TitleHeaderLayout);
            v44 = v323;
            sub_10076D2AC();
            v381[0] = v257;
            v381[1] = v258;
            sub_100770ADC();
            if (JUScreenClassGetMain() != 1)
            {

              (*(v326 + 8))(v53, v44);
              (*(v353 + 8))(v342, v352);
              sub_1002E6374(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000CFBC(&v387, &qword_10094BB30);
              sub_10000CFBC(&v390, &qword_10094BB30);
              sub_10000CFBC(v341, &unk_10094BB20);
              sub_10000CFBC(v75, &unk_10094BB20);
              return sub_10000CFBC(&v384, &unk_10094DA00);
            }

            v259 = v352;
            v47 = v353;
            v46 = v337;
            if (qword_10093FC38 != -1)
            {
              swift_once();
            }

            v260 = sub_10000A61C(v345, qword_10099DF58);
            if (sub_10019942C(v329, v260))
            {

              (*(v326 + 8))(v53, v44);
              (*(v47 + 1))(v342, v259);
              sub_1002E6374(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000CFBC(&v387, &qword_10094BB30);
              sub_10000CFBC(&v390, &qword_10094BB30);
              sub_10000CFBC(v341, &unk_10094BB20);
              sub_10000CFBC(v75, &unk_10094BB20);
              return sub_10000CFBC(&v384, &unk_10094DA00);
            }

            if (qword_10093FC40 == -1)
            {
LABEL_105:
              v261 = sub_10000A61C(v345, qword_10099DF70);
              sub_10019942C(v329, v261);

              (*(v326 + 8))(v53, v44);
              (*(v47 + 1))(v342, v352);
              sub_1002E6374(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000CFBC(&v387, &qword_10094BB30);
              sub_10000CFBC(&v390, &qword_10094BB30);
              sub_10000CFBC(v341, &unk_10094BB20);
              sub_10000CFBC(v75, &unk_10094BB20);
              return sub_10000CFBC(&v384, &unk_10094DA00);
            }

LABEL_120:
            swift_once();
            goto LABEL_105;
          }

          v204 = v354;
          v339 = swift_allocObject();
          v205 = v339 + v203;
          sub_100016E2C(v340, v339 + v203, &unk_10094BB20);
          v207 = v352;
          v206 = v353;
          (*(v353 + 16))(v205 + v204, v342, v352);
          v208 = *(v206 + 56);
          v206 += 56;
          v208(v205 + v204, 0, 1, v207);
          sub_100016E2C(v341, v205 + 2 * v204, &unk_10094BB20);
          v209 = (v206 - 8);
          v350 = (v206 - 24);
          v210 = v207;
          v211 = _swiftEmptyArrayStorage;
          v212 = 3;
          v348 = v205;
          do
          {
            v213 = v349;
            sub_100016E2C(v205, v349, &unk_10094BB20);
            sub_100023AD0(v213, v199, &unk_10094BB20);
            if ((*v209)(v199, 1, v210) == 1)
            {
              sub_10000CFBC(v199, &unk_10094BB20);
            }

            else
            {
              v214 = *v350;
              (*v350)(v351, v199, v210);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v211 = sub_10049E330(0, *(v211 + 2) + 1, 1, v211);
              }

              v216 = *(v211 + 2);
              v215 = *(v211 + 3);
              if (v216 >= v215 >> 1)
              {
                v211 = sub_10049E330(v215 > 1, v216 + 1, 1, v211);
              }

              *(v211 + 2) = v216 + 1;
              v210 = v352;
              v214(&v211[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v216], v351, v352);
              v199 = v347;
            }

            v205 += v354;
            --v212;
          }

          while (v212);
        }

        else
        {
          v217 = v354;
          v218 = 2 * v354;
          v339 = swift_allocObject();
          v219 = v339 + v203;
          sub_100016E2C(v340, v339 + v203, &unk_10094BB20);
          sub_100016E2C(v341, v219 + v217, &unk_10094BB20);
          v221 = v352;
          v220 = v353;
          (*(v353 + 16))(v219 + v218, v342, v352);
          v222 = *(v220 + 56);
          v220 += 56;
          v222(v219 + v218, 0, 1, v221);
          v223 = (v220 - 8);
          v351 = (v220 - 24);
          v224 = v221;
          v225 = _swiftEmptyArrayStorage;
          v226 = 3;
          v349 = v219;
          do
          {
            v227 = v348;
            sub_100016E2C(v219, v348, &unk_10094BB20);
            sub_100023AD0(v227, v193, &unk_10094BB20);
            if ((*v223)(v193, 1, v224) == 1)
            {
              sub_10000CFBC(v193, &unk_10094BB20);
            }

            else
            {
              v228 = *v351;
              (*v351)(v350, v193, v224);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v225 = sub_10049E330(0, *(v225 + 2) + 1, 1, v225);
              }

              v230 = *(v225 + 2);
              v229 = *(v225 + 3);
              if (v230 >= v229 >> 1)
              {
                v225 = sub_10049E330(v229 > 1, v230 + 1, 1, v225);
              }

              *(v225 + 2) = v230 + 1;
              v224 = v352;
              v228(&v225[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v230], v350, v352);
              v193 = v346;
            }

            v219 += v354;
            --v226;
          }

          while (v226);
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v231 = v344;
        v75 = v340;
        goto LABEL_94;
      }

      [v333 lineHeight];
      v155 = ceil(v154 * 1.3);
      if ((*&v155 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v155 > -9.22337204e18)
        {
          if (v155 < 9.22337204e18)
          {
            goto LABEL_42;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_116;
    }

    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v389 = 0;
    v387 = 0u;
    v388 = 0u;
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
    v262 = sub_10076C04C();
    v382 = v262;
    v383 = sub_1002E6D08(&qword_100943230, &type metadata accessor for Feature);
    v263 = sub_10000DB7C(v381);
    (*(*(v262 - 8) + 104))(v263, enum case for Feature.measurement_with_labelplaceholder(_:), v262);

    v264 = v133;
    sub_10076C90C();
    sub_10000CD74(v381);
    v265 = v334;
    v338 = v264;
    sub_10076996C();
    sub_10076994C();
    (*(v335 + 8))(v265, v336);
    sub_100016E2C(&v390, v380, &unk_10094DA00);
    v266 = v382;
    v267 = v383;
    v268 = sub_10000CF78(v381, v382);
    v378 = v266;
    v379 = *(v267 + 8);
    v269 = sub_10000DB7C(v377);
    (*(*(v266 - 8) + 16))(v269, v268, v266);
    v270 = v345;
    v271 = v307;
    v272 = *(v307 + v345[8]);
    v375 = &type metadata for Float;
    v376 = &protocol witness table for Float;
    v374 = v272;
    v273 = v345[9];
    v372 = v89;
    v373 = &protocol witness table for StaticDimension;
    v274 = sub_10000DB7C(v371);
    v275 = v89;
    v276 = *(v354 + 16);
    v276(v274, v271 + v273, v275);
    v277 = v270[10];
    v369 = v275;
    v370 = &protocol witness table for StaticDimension;
    v278 = sub_10000DB7C(v368);
    v276(v278, v271 + v277, v275);
    sub_100016E2C(&v387, &v362, &qword_10094BB30);
    v279 = *(&v363 + 1);
    if (*(&v363 + 1))
    {
      v280 = v364;
      v281 = sub_10000CF78(&v362, *(&v363 + 1));
      *(&v366 + 1) = v279;
      v367 = *(v280 + 8);
      v282 = sub_10000DB7C(&v365);
      (*(*(v279 - 8) + 16))(v282, v281, v279);
      sub_10000CD74(&v362);
    }

    else
    {
      sub_10000CFBC(&v362, &qword_10094BB30);
      v365 = 0u;
      v366 = 0u;
      v367 = 0;
    }

    v283 = v353;
    sub_100016E2C(&v384, v359, &qword_10094BB30);
    v284 = v360;
    if (v360)
    {
      v285 = v361;
      v286 = sub_10000CF78(v359, v360);
      *(&v363 + 1) = v284;
      v364 = *(v285 + 8);
      v287 = sub_10000DB7C(&v362);
      (*(*(v284 - 8) + 16))(v287, v286, v284);
      sub_10000CD74(v359);
    }

    else
    {
      sub_10000CFBC(v359, &qword_10094BB30);
      v362 = 0u;
      v363 = 0u;
      v364 = 0;
    }

    v288 = v345;
    v289 = v307;
    sub_10000A570(v307 + v345[12], v359);
    sub_10000A570(v289 + v288[13], v358);
    v357 = &protocol witness table for Double;
    v356 = &type metadata for Double;
    v355 = 0x4020000000000000;
    v290 = v341;
    sub_100763BDC();
    sub_10000CFBC(&v384, &qword_10094BB30);
    sub_10000CFBC(&v387, &qword_10094BB30);
    sub_10000CFBC(&v390, &unk_10094DA00);
    sub_1002E6374(v289, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000CD74(v381);

    v47 = v288;
    (*(v283 + 56))(v290, 0, 1, v352);
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    v75 = v337;
    v89 = v339;
    v127 = v333;
LABEL_27:
    v53 = v330;
    goto LABEL_28;
  }

  result = [v133 lineHeight];
  v140 = ceil(v139 * 1.3);
  if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_122;
  }

  if (v140 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v140 < 9.22337204e18)
  {
    v137 = v140;
    goto LABEL_37;
  }

LABEL_123:
  __break(1u);
  return result;
}

void *sub_1002E5378()
{
  v1 = v0;
  v102 = sub_1007621EC();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = (&v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v92 = (&v88 - v4);
  v5 = sub_10000A5D4(&unk_100946720);
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v88 - v8;
  v9 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v88 - v13;
  v14 = sub_10076469C();
  v103 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v88 - v18;
  v19 = sub_10000A5D4(&qword_100944C40);
  v104 = *(v19 - 8);
  __chkstk_darwin(v19);
  v101 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  v24 = sub_10076903C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = _swiftEmptyArrayStorage;
  sub_100765DFC();
  v28 = (*(v25 + 88))(v27, v24);
  v97 = v16;
  if (v28 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    v90 = v14;
    (*(v25 + 96))(v27, v24);
    sub_10000CD74(v27);
    v29 = [v0 traitCollection];
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v30 = sub_10076D9AC();
    sub_10000A61C(v30, qword_1009A2380);
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1007841E0;
    *(v31 + 32) = v29;
    v32 = v29;
    v33 = sub_10076DEEC();
    sub_10076D3EC();
    v35 = v34;

    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension:1.0];
    v38 = [v36 absoluteDimension:v35];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    type metadata accessor for InfiniteScrollFooterView();
    v40 = v39;
    sub_1007708EC();
    v41 = sub_10076FF6C();

    v42 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:v41 alignment:5];

    v43 = v42;
    sub_10077019C();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v44 = v105;
    v14 = v90;
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = qword_1009503C8;
  swift_beginAccess();
  v46 = *&v1[v45];
  if (v46)
  {
    v47 = v46;
    sub_10076E79C();

    v48 = sub_10076E5EC();
    v49 = *(v104 + 8);
    v104 += 8;
    v49(v23, v19);
    if (v48 > 0)
    {
      sub_10000A5D4(&qword_10094B630);
      sub_100071820(&qword_10094B638, &qword_10094B630);
      sub_10076A67C();
      v50 = v103;
      if ((*(v103 + 48))(v11, 1, v14) != 1)
      {
        v88 = v44;
        v89 = v49;
        v90 = v19;
        v58 = v97;
        (*(v50 + 32))(v97, v11, v14);
        v59 = v94;
        sub_10076468C();
        swift_getKeyPath();
        v60 = v14;
        v61 = v95;
        v62 = v99;
        sub_10076F49C();

        (*(v98 + 8))(v59, v62);
        v63 = v100;
        v51 = v102;
        if ((*(v100 + 88))(v61, v102) == enum case for ShelfBackground.color(_:))
        {
          (*(v63 + 96))(v61, v51);

          v64 = *(sub_10000A5D4(&unk_100950670) + 48);
          v65 = sub_1007659CC();
          (*(*(v65 - 8) + 8))(v61 + v64, v65);
          v66 = objc_opt_self();
          v67 = [v66 fractionalWidthDimension:1.0];
          v68 = [v66 absoluteDimension:2000.0];
          v69 = [objc_opt_self() sizeWithWidthDimension:v67 heightDimension:v68];

          v70 = sub_10076FF6C();
          v71 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v69 elementKind:v70 alignment:1 absoluteOffset:{0.0, -2000.0}];

          [v71 setExtendsBoundary:0];
          v72 = v71;
          sub_10077019C();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

          v14 = v60;
          (*(v103 + 8))(v97, v60);
          v44 = v105;
          v19 = v90;
          v49 = v89;
        }

        else
        {
          (*(v50 + 8))(v58, v60);
          (*(v63 + 8))(v61, v51);
          v14 = v60;
          v19 = v90;
          v49 = v89;
          v44 = v88;
        }

        goto LABEL_13;
      }

      sub_10000CFBC(v11, &unk_10095DCF0);
    }

    v51 = v102;
LABEL_13:
    v52 = *&v1[v45];
    if (v52)
    {
      v53 = v52;
      v54 = v101;
      sub_10076E79C();

      v55 = sub_10076E5EC();
      v49(v54, v19);
      if (v55 > 0)
      {
        sub_10000A5D4(&qword_10094B630);
        v56 = v103;
        sub_100071820(&qword_10094B638, &qword_10094B630);
        v57 = v96;
        sub_10076A67C();
        if ((*(v56 + 48))(v57, 1, v14) == 1)
        {
          sub_10000CFBC(v57, &unk_10095DCF0);
        }

        else
        {
          v73 = v93;
          (*(v56 + 32))(v93, v57, v14);
          v74 = v91;
          sub_10076468C();
          swift_getKeyPath();
          v75 = v92;
          v76 = v99;
          sub_10076F49C();

          (*(v98 + 8))(v74, v76);
          v77 = v100;
          if ((*(v100 + 88))(v75, v51) == enum case for ShelfBackground.color(_:))
          {
            (*(v77 + 96))(v75, v51);

            v78 = *(sub_10000A5D4(&unk_100950670) + 48);
            v79 = sub_1007659CC();
            (*(*(v79 - 8) + 8))(v75 + v78, v79);
            v80 = objc_opt_self();
            v81 = [v80 fractionalWidthDimension:1.0];
            v82 = [v80 absoluteDimension:2000.0];
            v83 = [objc_opt_self() sizeWithWidthDimension:v81 heightDimension:v82];

            v84 = sub_10076FF6C();
            v85 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v83 elementKind:v84 alignment:5 absoluteOffset:{0.0, 2000.0}];

            [v85 setExtendsBoundary:0];
            v86 = v85;
            sub_10077019C();
            if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();

            (*(v103 + 8))(v73, v14);
            return v105;
          }

          else
          {
            (*(v56 + 8))(v73, v14);
            (*(v77 + 8))(v75, v51);
          }
        }
      }
    }
  }

  return v44;
}

uint64_t sub_1002E6218()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002E6250()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E6374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1002E63D4()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setTitle:0];
  sub_100768B7C();
  if (v2)
  {
    result = [v0 tabBarItem];
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = sub_10076FF6C();

    [v4 setTitle:v5];
  }

  v6 = [v0 navigationItem];
  sub_100768B8C();
  if (v7)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitle:v8];

  v9 = [v1 navigationItem];
  sub_1002B3AB4();

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result bounds];

  sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController);

  return sub_10076A6CC();
}

unint64_t sub_1002E65B0()
{
  result = qword_100951988;
  if (!qword_100951988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951988);
  }

  return result;
}

uint64_t sub_1002E6604()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002E6674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1002E668C(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v67 = a1;
  v2 = sub_10075D8BC();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v54 - v5;
  v6 = sub_10075DEAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10075DF6C();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v6, v11);
  sub_10075DEBC();
  (*(v7 + 8))(v9, v6);
  v14 = sub_10000A5D4(&qword_100951998);
  v15 = sub_10075DF5C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v61 = 3 * v17;
  v62 = v14;
  v19 = swift_allocObject();
  v59 = xmmword_100783C60;
  *(v19 + 16) = xmmword_100783C60;
  v20 = *(v16 + 104);
  v60 = enum case for Calendar.Component.year(_:);
  v20(v19 + v18);
  v58 = enum case for Calendar.Component.month(_:);
  v20(v19 + v18 + v17);
  v63 = 2 * v17;
  v57 = enum case for Calendar.Component.day(_:);
  v20(v19 + v18 + 2 * v17);
  sub_1001799AC(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = v66;
  sub_10075DEEC();
  v22 = v21;

  v23 = sub_10075D88C();
  if (v24 & 1) != 0 || (v25 = v23, v67 = sub_10075D89C(), (v26) || (v27 = sub_10075D87C(), (v28))
  {
    (*(v70 + 8))(v22, v71);
    (*(v68 + 8))(v13, v69);
    return 0;
  }

  v55 = v27;
  v56 = v25;
  v30 = swift_allocObject();
  v62 = v13;
  v31 = v30;
  *(v30 + 16) = v59;
  v32 = v30 + v18;
  (v20)(v30 + v18, v60, v15);
  (v20)(v32 + v17, v58, v15);
  (v20)(v32 + v63, v57, v15);
  sub_1001799AC(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = v62;
  swift_deallocClassInstance();
  v34 = v65;
  sub_10075DEEC();

  v35 = sub_10075D88C();
  if (v36)
  {
    v37 = v71;
    v38 = v33;
    v39 = *(v70 + 8);
    v39(v34, v71);
    v39(v22, v37);
    (*(v68 + 8))(v38, v69);
    return 0;
  }

  v40 = v35;
  v41 = sub_10075D89C();
  if (v42)
  {
    v43 = v71;
    v44 = *(v70 + 8);
    v44(v34, v71);
    v44(v22, v43);
    (*(v68 + 8))(v62, v69);
    return 0;
  }

  v45 = v41;
  v46 = sub_10075D87C();
  v48 = v47;
  v49 = *(v70 + 8);
  v50 = v34;
  v51 = v71;
  v49(v50, v71);
  v49(v22, v51);
  (*(v68 + 8))(v62, v69);
  if (v48)
  {
    return 0;
  }

  return v56 < v40 || v67 < v45 || v55 < v46;
}

id sub_1002E6C6C()
{
  v1 = *(v0 + 16);
  [v1 prepare];

  return [v1 impactOccurred];
}

uint64_t sub_1002E6CC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E6D08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002E6D9C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940F08 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1B10);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002E6F78()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009519E8);
  sub_10000A61C(v4, qword_1009519E8);
  *v3 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002E70E4()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_100951A00);
  sub_10000A61C(v0, qword_100951A00);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_1002E7180()
{
  v1 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100768FEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946750);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(v0 + qword_10099E460))
  {
    v14 = *(v0 + qword_10099E458);
    if (v14)
    {
      v19 = *(v0 + qword_100951A38);

      v18 = sub_10076BB3C();
      v15 = sub_10076BA2C();
      v16 = sub_10000A5D4(&qword_100945590);
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      (*(v5 + 104))(v7, enum case for OfferButtonSubtitlePosition.below(_:), v4);
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_1002E9BB8(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
      sub_10076759C();
      sub_1001F12C8(v18, v15, 0, v13, v10, v14, 0, 0);

      (*(v20 + 8))(v10, v8);
      sub_10000CFBC(v13, &unk_100946760);
    }
  }
}

uint64_t sub_1002E750C(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = sub_100768FEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946750);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v13 - 8);
  v15 = v21 - v14;
  v16 = qword_10099E458;
  *(v1 + qword_10099E458) = a1;

  if (*(v1 + qword_10099E460) && (v17 = *(v1 + v16)) != 0)
  {
    v21[1] = *(v1 + qword_100951A38);

    v21[0] = sub_10076BB3C();
    v18 = sub_10076BA2C();
    v19 = sub_10000A5D4(&qword_100945590);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    (*(v7 + 104))(v9, enum case for OfferButtonSubtitlePosition.below(_:), v6);
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_1002E9BB8(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    sub_10076759C();
    sub_1001F12C8(v21[0], v18, 0, v15, v12, v17, 0, 0);

    (*(v22 + 8))(v12, v23);
    return sub_10000CFBC(v15, &unk_100946760);
  }

  else
  {
  }
}

id sub_1002E78E8()
{
  v1 = v0;
  v2 = *&v0[qword_10099E460];
  if (v2 && (v3 = *&v0[qword_10099E458]) != 0)
  {
    v4 = *&v0[qword_100951A20];

    sub_10076BB6C();
    if (v5)
    {
      v6 = sub_10076FF6C();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    if (qword_100940F08 != -1)
    {
      swift_once();
    }

    v7 = sub_10076D3DC();
    v8 = sub_10000A61C(v7, qword_1009A1B10);
    sub_1006EDDF4(v2, v8, v3);
    v9 = *&v1[qword_100951A30];
    sub_10075E64C();
    if (v10)
    {
      v11 = sub_10076FF6C();
    }

    else
    {
      v11 = 0;
    }

    [v9 setText:v11];
  }

  else
  {
    [*&v0[qword_100951A20] setText:0];
    sub_10050C548();
    [*&v0[qword_100951A30] setText:0];
  }

  sub_1002E7180();

  return [v1 setNeedsLayout];
}

char *sub_1002E7AC0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v69 = *(v10 - 8);
  v70 = v10;
  __chkstk_darwin(v10);
  v68 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D3DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v67 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076771C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v72 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v18 - 8);
  v20 = v62 - v19;
  v21 = sub_10075E77C();
  __chkstk_darwin(v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_10099E458] = 0;
  *&v5[qword_10099E460] = 0;
  sub_10075E6FC();
  v24 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[qword_100951A18] = sub_1005B7DD4(v23, 1);
  if (qword_100940F08 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v12, qword_1009A1B10);
  v26 = *(v13 + 16);
  v26(v20, v25, v12);
  v27 = *(v13 + 56);
  v62[1] = v13 + 56;
  v66 = v27;
  v27(v20, 0, 1, v12);
  v28 = *(v16 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v28;
  v28(v72);
  v29 = sub_1007626BC();
  v62[0] = v15;
  v30 = v29;
  v31 = objc_allocWithZone(v29);
  v32 = sub_1007626AC();
  v65 = qword_100951A20;
  *&v5[qword_100951A20] = v32;
  v33 = v67;
  v26(v67, v25, v12);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  v35 = sub_10050BDFC(v33, 1, 4);
  v36 = qword_100951A28;
  *&v5[qword_100951A28] = v35;
  if (qword_100940F10 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v12, qword_1009A1B28);
  v26(v20, v37, v12);
  v66(v20, 0, 1, v12);
  v63(v72, v64, v62[0]);
  v38 = objc_allocWithZone(v30);
  v39 = sub_1007626AC();
  v40 = qword_100951A30;
  *&v5[qword_100951A30] = v39;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[qword_100951A38] = sub_1001E89B8(0);
  v42 = *&v5[v65];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v43 = v42;
  v44 = v68;
  sub_10076F95C();
  sub_10000CFBC(&v74, &unk_1009434C0);
  sub_10000CFBC(&v76, &unk_1009434C0);
  sub_100770B9C();

  v45 = v70;
  v46 = *(v69 + 8);
  v46(v44, v70);
  v47 = *&v5[v36];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v48 = v47;
  sub_10076F95C();
  sub_10000CFBC(&v74, &unk_1009434C0);
  sub_10000CFBC(&v76, &unk_1009434C0);
  sub_100770B9C();

  v46(v44, v45);
  v49 = *&v5[v40];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = v49;
  sub_10076F95C();
  sub_10000CFBC(&v74, &unk_1009434C0);
  sub_10000CFBC(&v76, &unk_1009434C0);
  sub_100770B9C();

  v46(v44, v45);
  v73.receiver = v5;
  v73.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v73, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 addSubview:*&v51[qword_100951A18]];

  v53 = [v51 contentView];
  [v53 addSubview:*&v51[qword_100951A20]];

  v54 = [v51 contentView];
  [v54 addSubview:*&v51[qword_100951A28]];

  v55 = qword_100951A30;
  v56 = *&v51[qword_100951A30];
  sub_100016F40(0, &qword_100942F10);
  v57 = v56;
  v58 = sub_100770D1C();
  [v57 setTextColor:v58];

  v59 = [v51 contentView];
  [v59 addSubview:*&v51[v55]];

  v60 = [v51 contentView];
  [v60 addSubview:*&v51[qword_100951A38]];

  return v51;
}

void sub_1002E8358()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101.receiver = v1;
  v101.super_class = ObjectType;
  objc_msgSendSuper2(&v101, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[qword_100951A38];
  v18 = &v17[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v17[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v19 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v17[v19], v100);
    sub_10000CF78(v100, v100[3]);
    sub_100767A2C();
    v21 = v20;
    v23 = v22;
    sub_10000CD74(v100);
    v97 = v21;
    *v18 = v21;
    v18[1] = v23;
    v96 = v23;
    *(v18 + 16) = 0;
  }

  else
  {
    v24 = *v18;
    v96 = v18[1];
    v97 = v24;
  }

  if (qword_10093FD70 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D9AC();
  sub_10000A61C(v25, qword_1009519B8);
  sub_10076D17C();
  sub_10076D40C();
  v90 = v26;
  v27 = *(v4 + 8);
  v27(v7, v3);
  if (qword_10093FD80 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v25, qword_1009519E8);
  sub_10076D17C();
  sub_10076D40C();
  v29 = v28;
  v27(v7, v3);
  v30 = *&v1[qword_100951A18];
  sub_10075E73C();
  v32 = v31;
  v34 = v33;
  v102.origin.x = v10;
  v102.origin.y = v12;
  v102.size.width = v14;
  v102.size.height = v16;
  v87 = CGRectGetMidX(v102) + v32 * -0.5;
  v89 = v32;
  v88 = v34;
  sub_100770A4C();
  [v30 setFrame:?];
  v103.origin.x = v10;
  v103.origin.y = v12;
  v103.size.width = v14;
  v103.size.height = v16;
  v35 = CGRectGetWidth(v103) - v97 - v29;
  v36 = *&v1[qword_100951A30];
  v104.origin.x = v10;
  v104.origin.y = v12;
  v104.size.width = v14;
  v104.size.height = v16;
  [v36 sizeThatFits:{v35, CGRectGetHeight(v104)}];
  v105.origin.x = v10;
  v105.origin.y = v12;
  v105.size.width = v14;
  v105.size.height = v16;
  CGRectGetMaxY(v105);
  v106.origin.x = v10;
  v106.origin.y = v12;
  v106.size.width = v14;
  v106.size.height = v16;
  CGRectGetMinX(v106);
  [v36 lastBaselineFromBottom];
  Width = v35;
  sub_100770A4C();
  [v36 setFrame:?];
  v37 = [v36 text];
  if (v37)
  {

    [v36 lastBaselineMaxY];
    v39 = v38;
  }

  else
  {
    v107.origin.x = v10;
    v107.origin.y = v12;
    v107.size.width = v14;
    v107.size.height = v16;
    v39 = CGRectGetMaxY(v107) + -20.0;
  }

  v108.origin.x = v10;
  v108.origin.y = v12;
  v108.size.width = v14;
  v108.size.height = v16;
  MaxX = CGRectGetMaxX(v108);
  v92 = v10;
  v91 = v12;
  v94 = MaxX - v97;
  v93 = v39 - v96;
  sub_100770A4C();
  v42 = v41;
  v44 = v43;
  v86 = v14;
  v85 = v16;
  v46 = v45;
  v48 = v47;
  v49 = type metadata accessor for OfferButton();
  v99.receiver = v17;
  v99.super_class = v49;
  objc_msgSendSuper2(&v99, "frame");
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v98.receiver = v17;
  v98.super_class = v49;
  objc_msgSendSuper2(&v98, "setFrame:", v42, v44, v46, v48);
  sub_1001E8144(v51, v53, v55, v57);
  if (qword_10093FD78 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v25, qword_1009519D0);
  sub_10076D17C();
  sub_10076D40C();
  v59 = v58;
  v27(v7, v3);
  v60 = *&v1[qword_100951A20];
  v61 = v86;
  v62 = v85;
  [v60 sizeThatFits:{v86, v85}];
  v64 = v63;
  v109.origin.y = 70.0;
  v109.origin.x = v87;
  v109.size.width = v89;
  v109.size.height = v88;
  MaxY = CGRectGetMaxY(v109);
  if (qword_10093FD68 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v25, qword_1009519A0);
  sub_10076D17C();
  v66 = [v60 traitCollection];
  sub_10076D97C();
  v68 = v67;

  [v60 firstBaselineFromTop];
  v70 = v69;
  v27(v7, v3);
  v89 = v59;
  v71 = v59 + v64 + MaxY + v68 - v70;
  v110.origin.x = v94;
  v110.origin.y = v93;
  v110.size.width = v97;
  v110.size.height = v96;
  MinY = CGRectGetMinY(v110);
  v73 = v92;
  v74 = v91;
  if (MinY >= v71)
  {
    v111.origin.x = v92;
    v111.origin.y = v91;
    v111.size.width = v61;
    v111.size.height = v62;
    CGRectGetWidth(v111);
  }

  v112.origin.x = v73;
  v112.origin.y = v74;
  v112.size.width = v61;
  v112.size.height = v62;
  CGRectGetMinX(v112);
  sub_100770A4C();
  [v60 setFrame:?];
  v75 = *&v1[qword_100951A28];
  [v75 sizeThatFits:{v61, v62}];
  v77 = v76;
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940F08 != -1)
  {
    swift_once();
  }

  v78 = sub_10076D3DC();
  sub_10000A61C(v78, qword_1009A1B10);
  v79 = [v1 traitCollection];
  v80 = sub_100770B3C();

  [v60 lastBaselineMaxY];
  v82 = v90 + v81;
  sub_100770B4C();
  v84 = v89 + v77 + v82 - v83;
  v113.origin.x = v94;
  v113.origin.y = v93;
  v113.size.width = v97;
  v113.size.height = v96;
  if (CGRectGetMinY(v113) >= v84)
  {
    v114.origin.x = v73;
    v114.origin.y = v74;
    v114.size.width = v61;
    v114.size.height = v62;
    Width = CGRectGetWidth(v114);
  }

  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v61;
  v115.size.height = v62;
  CGRectGetMinX(v115);
  sub_100770A4C();
  [v75 setFrame:?];
}

void sub_1002E8CF4(void *a1)
{
  v1 = a1;
  sub_1002E8358();
}

uint64_t sub_1002E8D3C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_1005D3ACC(a1, a2, a3 & 1);
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    v10 = a1;
    v11 = [v4 backgroundView];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 backgroundView];
      v14 = [v13 backgroundColor];

      [v12 setBackgroundColor:v14];
    }

    v15 = *&v9[qword_100951A18];
    sub_1005B7AE4(v15);

    *&v4[qword_10099E460] = *&v9[qword_10099E460];
    swift_retain_n();

    sub_1002E78E8();
  }

  return result;
}

void sub_1002E8EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10075E57C();
  v60 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v50 - v14;
  v15 = sub_10076C7EC();
  v58 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = &v50 - v18;
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v50 - v24;
  sub_1005D5228(a1, a2, a3, a4, v23);
  v26 = sub_10076C7FC();
  sub_10075E36C();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v61 = v27;
    v51 = v12;
    v52 = v26;
    v53 = v10;
    sub_100760C4C();
    sub_10076F64C();
    v54 = a4;
    sub_10076FC1C();
    v62 = v64;
    v63 = v5;
    [*&v5[qword_10099C9F8] setText:0];
    v57 = a1;
    sub_10076C80C();
    v28 = v58;
    v50 = *(v58 + 104);
    v50(v21, enum case for TodayCard.Style.dark(_:), v15);
    sub_1002E9BB8(&qword_100944B98, &type metadata accessor for TodayCard.Style);
    sub_10077018C();
    sub_10077018C();
    if (v64 == v66 && v65 == v67)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_10077167C();
    }

    v30 = *(v28 + 8);
    v30(v21, v15);
    v30(v25, v15);

    if (v29)
    {
      v31 = 2;
      v32 = v63;
    }

    else
    {
      v33 = v56;
      sub_10076C80C();
      v34 = v55;
      v50(v55, enum case for TodayCard.Style.light(_:), v15);
      sub_10077018C();
      sub_10077018C();
      v32 = v63;
      if (v64 == v66 && v65 == v67)
      {
        v30(v34, v15);
        v30(v33, v15);

        v31 = 1;
      }

      else
      {
        v35 = sub_10077167C();
        v30(v34, v15);
        v30(v33, v15);

        v31 = v35 & 1;
      }
    }

    [v32 setOverrideUserInterfaceStyle:v31];
    v36 = sub_10076C70C();
    if (!v36)
    {
      sub_100016F40(0, &qword_100942F10);
      v36 = sub_100770D8C();
    }

    v37 = v36;
    v38 = [v32 backgroundView];
    if (v38)
    {
      v39 = v38;
      [v38 setBackgroundColor:v37];
    }

    v40 = *&v32[qword_100951A18];
    v58 = sub_10075E35C();
    v57 = v37;
    v41 = v59;
    sub_10075E65C();
    v42 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v43 = v60;
    v44 = v53;
    (*(v60 + 24))(&v40[v42], v41, v53);
    swift_endAccess();
    v56 = *(v43 + 16);
    v45 = v51;
    (v56)(v51, &v40[v42], v44);
    sub_1005B84F8(v45);
    v46 = *(v43 + 8);
    v46(v45, v44);
    v46(v41, v44);
    v47 = v57;
    [v40 setBackgroundColor:v57];
    sub_1006EC184(v58, v40, v62);
    (v56)(v41, &v40[v42], v44);
    sub_1005B84F8(v41);
    v46(v41, v44);
    [v40 setNeedsLayout];

    v49 = v63;
    sub_1002E750C(v48);
    *&v49[qword_10099E460] = sub_10075E35C();

    sub_1002E78E8();

    [v49 setNeedsLayout];
  }

  else
  {
  }
}

uint64_t sub_1002E95B8(uint64_t a1, uint64_t a2)
{
  sub_10051A43C();
  sub_10000A570(a1, v8);
  sub_10000A5D4(&unk_100942830);
  sub_10076C84C();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10076C7FC();

    sub_10075E36C();
    if (swift_dynamicCastClass())
    {
      v6 = *(v2 + qword_100951A18);
      v7 = sub_10075E35C();
      sub_1006EC184(v7, v6, a2);
    }
  }

  return result;
}

uint64_t sub_1002E96B4(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  if (*(v3 + qword_10099CA08))
  {
    v5 = *(v3 + qword_10099CA08 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_10075FCEC(v10, a3);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_10075FCEC(v11, v8);
  sub_10075FD2C();
  sub_1002E9BB8(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  return sub_100760BFC();
}

id sub_1002E9804(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10093FD88 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_100951A00);
    v7 = v1;
    sub_10075FDCC();

    [*&v7[qword_100951A20] setTextAlignment:{v8, v1}];
    [*&v7[qword_100951A28] setTextAlignment:v8];
    return [*&v7[qword_100951A30] setTextAlignment:v8];
  }

  return result;
}

void sub_1002E9970(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002E9804(a3);
}

uint64_t sub_1002E99DC()
{
}

uint64_t sub_1002E9A6C(uint64_t a1)
{
}

uint64_t type metadata accessor for InAppPurchaseTodayCardCollectionViewCell()
{
  result = qword_100951A68;
  if (!qword_100951A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E9BB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002E9C00()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel);
  if (qword_10093F800 != -1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel);
    swift_once();
    v2 = v4;
  }

  [v2 setTextColor:qword_100949F38];
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron) = 0;
  sub_100133E3C(v3);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight) = 0;
}

char *sub_1002E9CD4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView]];

  return v13;
}

id sub_1002EA0A8(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, "isHighlighted");
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted) = v5;
  if (v5 && *(v4 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight) == 1)
  {
    if (qword_10093F808 != -1)
    {
      swift_once();
    }

    v6 = &qword_100949F40;
  }

  else
  {
    if (qword_10093F800 != -1)
    {
      swift_once();
    }

    v6 = &qword_100949F38;
  }

  return [*(v4 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel) setTextColor:*v6];
}

uint64_t type metadata accessor for FootnoteCollectionViewCell()
{
  result = qword_100951E50;
  if (!qword_100951E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002EA29C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a2;
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100946720);
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v74 = &v68 - v9;
  v10 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v10 - 8);
  v75 = &v68 - v11;
  v77 = sub_10076182C();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10076B5BC();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v78);
  v84 = &v68 - v14;
  v15 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v24 - 8);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  if ((sub_1007645FC() & 1) == 0)
  {
    v68 = v6;
    v69 = v4;
    v70 = v3;
    v71 = a1;
    sub_10076463C();
    sub_10000CFBC(v17, &qword_1009499A0);
    sub_100023AD0(v20, v23, &qword_1009499A0);
    v40 = v81;
    v41 = v82;
    if ((*(v82 + 48))(v23, 1, v81) == 1)
    {
      sub_10000CFBC(v23, &qword_1009499A0);
      v42 = 1;
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      (*(v41 + 8))(v23, v40);
      v42 = 0;
    }

    v46 = v79;
    v45 = v80;
    v47 = v83;
    v48 = *(v83 + 56);
    v48(v31, v42, 1, v80);
    (*(v47 + 104))(v28, enum case for Shelf.ContentType.searchResultsContextCard(_:), v45);
    v48(v28, 0, 1, v45);
    v49 = *(v78 + 48);
    v50 = v84;
    sub_10002ABBC(v31, v84);
    sub_10002ABBC(v28, v50 + v49);
    v51 = *(v47 + 48);
    if (v51(v50, 1, v45) == 1)
    {
      sub_10000CFBC(v28, &unk_1009568A0);
      v52 = v84;
      sub_10000CFBC(v31, &unk_1009568A0);
      if (v51(v52 + v49, 1, v45) == 1)
      {
        sub_10000CFBC(v52, &unk_1009568A0);
        v53 = v85;
        goto LABEL_17;
      }
    }

    else
    {
      sub_10002ABBC(v50, v46);
      if (v51(v50 + v49, 1, v45) != 1)
      {
        v54 = v83;
        v55 = v73;
        (*(v83 + 32))(v73, v50 + v49, v45);
        sub_100077514();
        v56 = v50;
        v57 = sub_10076FF1C();
        v58 = *(v54 + 8);
        v58(v55, v45);
        sub_10000CFBC(v28, &unk_1009568A0);
        sub_10000CFBC(v31, &unk_1009568A0);
        v58(v46, v45);
        sub_10000CFBC(v56, &unk_1009568A0);
        v53 = v85;
        if ((v57 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_17:
        v59 = v74;
        sub_10076468C();
        swift_getKeyPath();
        v60 = v81;
        sub_10076F49C();

        (*(v82 + 8))(v59, v60);
        if (*(v86 + 16))
        {
          sub_10000A570(v86 + 32, v87);

          sub_10000A5D4(&qword_1009575A0);
          sub_10000A5D4(&qword_100942F18);
          v61 = swift_dynamicCast();
          v62 = v77;
          v63 = v76;
          v64 = v75;
          if (v61)
          {
            if (*(&v89 + 1))
            {
              sub_10000CF78(&v88, *(&v89 + 1));
              v53 = v85;
              sub_1007670CC();
              sub_10000CD74(&v88);
              if ((*(v63 + 48))(v64, 1, v62) != 1)
              {
                v65 = v72;
                (*(v63 + 32))(v72, v64, v62);
                if (sub_10076181C())
                {
                  v66 = v68;
                  sub_10076460C();
                  v67 = sub_10023E590(v66, v65);
                  (*(v69 + 8))(v66, v70);
                  *(&v89 + 1) = &type metadata for CGFloat;
                  v90 = &protocol witness table for CGFloat;
                  *&v88 = -v67;
                  (*(v63 + 8))(v65, v62);
                  return sub_10003F19C(&v88, v53);
                }

                (*(v63 + 8))(v65, v62);
LABEL_27:
                *(&v89 + 1) = &type metadata for Double;
                v90 = &protocol witness table for Double;
                *&v88 = 0;
                return sub_10003F19C(&v88, v53);
              }

LABEL_26:
              sub_10000CFBC(v64, &unk_100952090);
              goto LABEL_27;
            }
          }

          else
          {
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
          }
        }

        else
        {

          v88 = 0u;
          v89 = 0u;
          v90 = 0;
          v62 = v77;
          v63 = v76;
          v64 = v75;
        }

        sub_10000CFBC(&v88, &qword_100942F20);
        (*(v63 + 56))(v64, 1, 1, v62);
        goto LABEL_26;
      }

      sub_10000CFBC(v28, &unk_1009568A0);
      v52 = v84;
      sub_10000CFBC(v31, &unk_1009568A0);
      (*(v83 + 8))(v46, v45);
    }

    sub_10000CFBC(v52, &qword_100942C28);
    v53 = v85;
    goto LABEL_27;
  }

  v32 = v85;
  sub_10076460C();
  sub_10076C21C();
  v34 = v33;
  v35 = *(v4 + 8);
  v35(v6, v3);
  if (v34 <= 1.0)
  {
    sub_10076460C();
    sub_10076C23C();
    v44 = v43;
    result = (v35)(v6, v3);
    v32[3] = &type metadata for CGFloat;
    v32[4] = &protocol witness table for CGFloat;
    *v32 = v44 * 0.5;
  }

  else
  {
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v36 = sub_10076D9AC();
    v37 = sub_10000A61C(v36, qword_1009A2380);
    v32[3] = v36;
    v32[4] = &protocol witness table for StaticDimension;
    v38 = sub_10000DB7C(v32);
    return (*(*(v36 - 8) + 16))(v38, v37, v36);
  }

  return result;
}

uint64_t sub_1002EAE3C@<X0>(void *a1@<X8>)
{
  v59 = a1;
  v1 = sub_10076C38C();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10000A5D4(&qword_100942F28);
  __chkstk_darwin(v55);
  v58 = &v48 - v3;
  v4 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v13 - 8);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  v17 = sub_10076B5BC();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100946720);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v48 - v22;
  sub_10076468C();
  swift_getKeyPath();
  v53 = v19;
  sub_10076F49C();

  v24 = *(v21 + 8);
  v24(v23, v20);
  sub_10076463C();
  sub_10000CFBC(v9, &qword_1009499A0);
  sub_100023AD0(v6, v12, &qword_1009499A0);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_10000CFBC(v12, &qword_1009499A0);
    v25 = 1;
    v26 = v54;
  }

  else
  {
    swift_getKeyPath();
    v26 = v54;
    sub_10076F49C();

    v24(v12, v20);
    v25 = 0;
  }

  v28 = v56;
  v27 = v57;
  (*(v56 + 56))(v26, v25, 1, v57);
  v29 = *(v55 + 48);
  v30 = v58;
  (*(v28 + 32))(v58, v53, v27);
  sub_100023AD0(v26, v30 + v29, &unk_1009568A0);
  v31 = *(v28 + 88);
  v32 = v31(v30, v27);
  v33 = v32;
  if (v32 == enum case for Shelf.ContentType.searchResult(_:))
  {
    if ((*(v28 + 48))(v30 + v29, 1, v27) != 1)
    {
      v34 = v49;
      sub_10002ABBC(v30 + v29, v49);
      if (v31(v34, v27) == v33)
      {
        v35 = v50;
        sub_10076460C();
        sub_10076C23C();
        v37 = v36;
        (*(v51 + 8))(v35, v52);
        v38 = v59;
        v59[3] = &type metadata for CGFloat;
        v38[4] = &protocol witness table for CGFloat;
        *v38 = v37;
LABEL_10:
        sub_10000CFBC(v30 + v29, &unk_1009568A0);
        return (*(v28 + 8))(v30, v27);
      }

      (*(v28 + 8))(v34, v27);
    }
  }

  else if (v32 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v39 = v50;
    sub_10076460C();
    sub_10076C23C();
    v41 = v40;
    (*(v51 + 8))(v39, v52);
    v42 = v59;
    v59[3] = &type metadata for CGFloat;
    *(v42 + 4) = &protocol witness table for CGFloat;
    *v42 = v41 * 0.5;
    goto LABEL_10;
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v44 = sub_10076D9AC();
  v45 = sub_10000A61C(v44, qword_1009A2380);
  v46 = v59;
  v59[3] = v44;
  v46[4] = &protocol witness table for StaticDimension;
  v47 = sub_10000DB7C(v46);
  (*(*(v44 - 8) + 16))(v47, v45, v44);
  return sub_10000CFBC(v30, &qword_100942F28);
}

uint64_t sub_1002EB540(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return type metadata accessor for TodayCardArcadeLockupOverlayView();
      }

      if (a1 != 7)
      {
        goto LABEL_17;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 4)
    {
      return type metadata accessor for TodayCardActionOverlayView();
    }

    else
    {
      return type metadata accessor for TodayCardThreeLineOverlayView();
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return type metadata accessor for TodayCardMarketingLockupOverlayView();
        }

LABEL_17:
        result = sub_10077156C();
        __break(1u);
        return result;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 2)
    {
      return type metadata accessor for TodayCardChinLockupListView(0);
    }

    else
    {
      return type metadata accessor for TodayCardParagraphOverlayView();
    }
  }
}

uint64_t sub_1002EB674@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
  v3 = sub_1007669EC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ScreenshotsLockupCollectionViewCell()
{
  result = qword_100951E88;
  if (!qword_100951E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002EB7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v71 = a2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B96C();
  v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v64 - v11;
  v12 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - v13;
  v15 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v21 - 8);
  v23 = &v64 - v22;
  v24 = sub_10000A5D4(&unk_100946760);
  *&v25 = __chkstk_darwin(v24 - 8).n128_u64[0];
  v27 = &v64 - v26;
  v28 = OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView;
  v29 = *&v4[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView];
  v77 = a1;
  if (v29 || (v30 = [v4 traitCollection], v31 = v8, v32 = v4, v33 = sub_100494A30(v30), v30, v34 = v33, v4 = v32, v8 = v31, sub_100494194(v34), sub_1004941A0(0), (v29 = *&v4[v28]) != 0))
  {
    v35 = sub_10000A5D4(&qword_100945590);
    v36 = *(*(v35 - 8) + 56);
    v76 = v27;
    v36(v27, 1, 1, v35);
    v69 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
    v37 = *&v29[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView];
    v75 = v29;
    v38 = sub_10076BB5C();
    if (v38)
    {
    }

    [v37 setHidden:v38 == 0];
    v39 = v75;
    v40 = *&v75[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
    v41 = sub_10075F78C();
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    v42 = sub_1007628DC();
    (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
    v43 = sub_10000A5D4(&unk_100946750);
    (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
    v44 = sub_10076C54C();
    (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
    sub_1004D0A60(v77, v40, v76, v73, 1, 0, v23, v20, v14, v17);
    sub_10000CFBC(v14, &unk_100949290);
    v40[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v40 setNeedsLayout];
    sub_10000CFBC(v17, &qword_10094F730);
    sub_10000CFBC(v20, &unk_1009492A0);
    sub_10000CFBC(v23, &unk_10094D210);
    v45 = v74;
    sub_10076BB7C();
    v46 = sub_10076BA5C();
    v48 = v47;
    v67 = sub_10076BABC();
    v50 = v49;
    v51 = sub_10076BA7C();
    if (v48 && v50)
    {
      v52 = v51;
      v66 = v46;
      v53 = v72;
      v54 = v68;
      (*(v72 + 16))(v68, v45, v8);
      sub_10000A5D4(&unk_10094A8C0);
      sub_10076F64C();
      sub_10076FC1C();
      v65 = v8;
      v55 = v78[0];
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v56 = v75;
      v73 = v4;
      v57 = v56;
      v39 = v75;
      v58 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v54, v66, v48, v67, v50, v52 & 1, v29, &off_1008922A8, v55, *(&v55 + 1));
      (*(v53 + 8))(v74, v65);
      sub_10000CFBC(v76, &unk_100946760);
      v59 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v57[v59] = v58;
      v4 = v73;
    }

    else
    {

      v60 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v39[v60] = 0;

      sub_100354258(0, 0);
      (*(v72 + 8))(v45, v8);
      sub_10000CFBC(v76, &unk_100946760);
    }

    if (sub_10076BB5C())
    {
      if (qword_1009405C0 != -1)
      {
        swift_once();
      }

      v61 = sub_100763ADC();
      sub_10000A61C(v61, qword_10099FBD0);
      sub_1007639AC();
      v62 = v69;
      [*&v29[v69] contentMode];
      sub_10076BFCC();
      v63 = *&v29[v62];
      sub_10076BF7C();
      sub_10075FCCC();
      [v63 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      v79 = 0;
      memset(v78, 0, sizeof(v78));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100760B7C();

      sub_10000CFBC(v78, &qword_100943310);
    }

    [v4 setNeedsLayout];
  }
}

void sub_1002EC11C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100763E9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView])
  {
    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView];
    if (v18)
    {
      goto LABEL_9;
    }
  }

  sub_100494194(0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v10, qword_1009A0D90);
  (*(v11 + 16))(v13, v14, v10);
  if (qword_1009405C8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v6, qword_10099FBE8);
  (*(v7 + 16))(v9, v15, v6);
  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  v17 = sub_1001AB12C(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  [v17 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];
  sub_1004941A0(v17);
  v18 = *&v3[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView];
  if (v18)
  {
LABEL_9:
    v19 = v18;
    sub_10068A7F8(a1, a2);
    [v3 setNeedsLayout];
  }
}

void sub_1002EC3E0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);

    v5 = a1;
    sub_10075FCAC();
  }
}

uint64_t sub_1002EC464()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double static AppPromotionFormattedDateLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1002ECDCC(a1, a2);
}

void AppPromotionFormattedDateLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

uint64_t AppPromotionFormattedDateLayout.Metrics.init(textTopSpace:textBottomSpace:liveIndicatorTrailingMargin:liveIndicatorSize:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  sub_100012498(a1, a4);
  sub_100012498(a2, (a4 + 5));
  result = sub_100012498(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  a4[19] = a9;
  a4[20] = a10;
  return result;
}

uint64_t AppPromotionFormattedDateLayout.init(metrics:textLabel:liveIndicatorView:backgroundView:vibrancyView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a6;
  v11 = sub_10075DE9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002ED13C(a1, v22);
  sub_10075DE6C();
  v15 = sub_10075DE7C();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_10000CF78(a2, a2[3]);
    sub_10076D72C();
    sub_1002ED174(a1);
  }

  else
  {
    sub_1002ED174(a1);
    sub_10000A570(a2, &v22[10] + 8);
  }

  v16 = *(a3 + 16);
  v22[13] = *a3;
  v22[14] = v16;
  *&v22[15] = *(a3 + 32);
  v17 = *a4;
  *(&v22[16] + 8) = a4[1];
  *(&v22[15] + 8) = v17;
  *(&v22[17] + 1) = *(a4 + 4);
  *&v22[20] = *(a5 + 32);
  v18 = *(a5 + 16);
  v22[18] = *a5;
  v22[19] = v18;
  memcpy(v21, v22, 0x148uLL);
  return sub_10000CD74(a2);
}

uint64_t AppPromotionFormattedDateLayout.measurements(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1002ED1A4(a1, v1);
}

uint64_t AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100102958(v4 + 248, v54);
  if (v55)
  {
    sub_10000CF78(v54, v55);
    sub_10076D23C();
    sub_10000CD74(v54);
  }

  else
  {
    sub_1001029C8(v54);
  }

  sub_100102958(v4 + 288, v54);
  if (v55)
  {
    sub_10000CF78(v54, v55);
    sub_10076D23C();
    sub_10000CD74(v54);
  }

  else
  {
    sub_1001029C8(v54);
  }

  sub_100770A3C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_100102958(v4 + 208, &v52);
  v50 = a1;
  v51 = a3;
  v48 = a2;
  v49 = a4;
  v45 = v14;
  v44 = v16;
  v43 = v18;
  v42 = v20;
  if (!v53)
  {
    sub_1001029C8(&v52);
    goto LABEL_11;
  }

  sub_100012498(&v52, v54);
  sub_10000CF78(v54, v55);
  if (sub_10076D24C())
  {
    sub_10000CD74(v54);
LABEL_11:
    v47 = v14;
    v21 = v16;
    Height = v20;
    goto LABEL_13;
  }

  v23 = *(v4 + 120);
  sub_10000CF78((v4 + 80), *(v4 + 104));
  sub_1000FF02C();
  sub_10076D40C();
  v25 = v24;
  (*(v10 + 8))(v12, v9);
  v26 = v23 + v25;
  v56.origin.x = v14;
  v56.origin.y = v16;
  v56.size.width = v18;
  v56.size.height = v20;
  v47 = v26 + CGRectGetMinX(v56);
  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  Width = CGRectGetWidth(v58);
  v59.size.width = v18;
  v18 = Width - v26;
  v59.origin.x = v14;
  v21 = MinY;
  v59.origin.y = v16;
  v59.size.height = v20;
  Height = CGRectGetHeight(v59);
  sub_10000CD74(v54);
LABEL_13:
  sub_10000CF78((v4 + 168), *(v4 + 192));
  sub_10076D2AC();
  v30 = v29;
  v32 = v31;
  sub_10000CF78(v4, *(v4 + 24));
  sub_10076D42C();
  v46 = v33;
  v34 = v47;
  v60.origin.x = v47;
  v60.origin.y = v21;
  v60.size.width = v18;
  v60.size.height = Height;
  MinX = CGRectGetMinX(v60);
  v61.origin.x = v34;
  v61.origin.y = v21;
  v61.size.width = v18;
  v61.size.height = Height;
  v36 = CGRectGetMinY(v61);
  v62.origin.x = v34;
  v62.origin.y = v21;
  v62.size.width = v18;
  v62.size.height = Height;
  v37 = CGRectGetWidth(v62);
  if (v37 >= v30)
  {
    v38 = v30;
  }

  else
  {
    v38 = v37;
  }

  v39 = v46 + v36;
  sub_10000CF78((v4 + 168), *(v4 + 192));
  v47 = v32;
  sub_100770A4C();
  sub_10076D23C();
  sub_100102958(v4 + 208, &v52);
  if (v53)
  {
    sub_100012498(&v52, v54);
    v46 = *(v4 + 120);
    v63.origin.x = MinX;
    v63.origin.y = v39;
    v63.size.width = v38;
    v40 = v47;
    v63.size.height = v47;
    CGRectGetMinY(v63);
    v64.origin.x = MinX;
    v64.origin.y = v39;
    v64.size.width = v38;
    v64.size.height = v40;
    CGRectGetHeight(v64);
    v65.origin.x = v45;
    v65.origin.y = v44;
    v65.size.width = v43;
    v65.size.height = v42;
    CGRectGetMinX(v65);
    sub_10000CF78(v54, v55);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v54);
  }

  else
  {
    sub_1001029C8(&v52);
  }

  return sub_10076D1BC();
}

double sub_1002ECDCC(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_10076DEBC();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D93C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D95C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for StackMeasurable.Axis.vertical(_:), v6, v12);
  sub_10000A5D4(&unk_10094D050);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100784500;
  sub_10000A570(a1, v31);
  v16 = sub_10076DE7C();
  *(v15 + 56) = v16;
  *(v15 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((v15 + 32));
  sub_10076DE8C();
  sub_10000A570(a1 + 40, v31);
  *(v15 + 96) = v16;
  *(v15 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((v15 + 72));
  sub_10076DE8C();
  sub_10076D94C();
  v31[3] = v10;
  v31[4] = &protocol witness table for StackMeasurable;
  v17 = sub_10000DB7C(v31);
  (*(v11 + 16))(v17, v14, v10);
  v18 = *(a1 + 136);
  v29 = &type metadata for CGFloat;
  v30 = &protocol witness table for CGFloat;
  v28 = v18;
  v19 = *(a1 + 152);
  v26 = &type metadata for CGFloat;
  v27 = &protocol witness table for CGFloat;
  v25 = v19;
  sub_10076DEAC();
  sub_10076DE9C();
  v21 = v20;
  (*(v3 + 8))(v5, v24);
  (*(v11 + 8))(v14, v10);
  return v21;
}

uint64_t sub_1002ED1A4(uint64_t a1, void *a2)
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
    sub_1001029C8(&v10);
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

uint64_t sub_1002ED498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_1002ED4E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002ED5DC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D39C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100768D1C();
  sub_10000DB18(v4, a2);
  sub_10000A61C(v4, a2);
  sub_10076D3AC();
  return sub_100768D0C();
}

uint64_t sub_1002ED72C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D39C();
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  return sub_10076D3AC();
}

uint64_t sub_1002ED78C()
{
  v0 = sub_10076D39C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_100951F70);
  sub_10000DB18(v7, qword_100951F00);
  sub_10000A61C(v7, qword_100951F00);
  if (qword_10093FDA8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_100951EE8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10093FDA0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_100951ED0);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

char *sub_1002ED96C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artwork] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkLoader] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork] = 0;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel] = v12;
  sub_10075FD2C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel]];
  v16 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView]];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v15[v16];
  sub_10075FB8C();

  sub_1002EDB10();
  return v15;
}

id sub_1002EDB10()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();

  if (v8)
  {
    v9 = enum case for DirectionalTextAlignment.leading(_:);
    v10 = *(v3 + 104);
    v10(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_10076262C();
    v10(v6, v9, v2);
    return sub_10076262C();
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel] setTextAlignment:1];
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel];

    return [v12 setTextAlignment:1];
  }
}

uint64_t sub_1002EDEB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100768D3C();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100768D1C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v36 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v14);
  if (sub_10013EEE8())
  {
    if (qword_10093FD98 != -1)
    {
      swift_once();
    }

    v17 = qword_100951EB8;
  }

  else
  {
    if (qword_10093FD90 != -1)
    {
      swift_once();
    }

    v17 = qword_100951EA0;
  }

  v18 = sub_10000A61C(v6, v17);
  v19 = *(v7 + 16);
  v20 = v19(v12, v18, v6);
  __chkstk_darwin(v20);
  *(&v31 - 2) = v1;
  sub_10076C13C();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v19(v9, v16, v6);
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel];
  v46 = sub_1007626BC();
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel];
  v43 = v46;
  v42 = v23;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView];
  v40 = sub_10075FD2C();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v32;
  sub_100768D2C();
  sub_10076422C();
  v29 = v34;
  sub_100768CEC();
  (*(v37 + 8))(v29, v38);
  sub_1002EE368();
  (*(v33 + 8))(v28, v35);
  return (v21)(v16, v6);
}

uint64_t sub_1002EE308()
{
  swift_getObjectType();
  sub_10076422C();
  CGRectGetWidth(v1);
  return sub_100768CFC();
}

uint64_t sub_1002EE368()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076422C();
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  result = CGRectEqualToRect(v15, v16);
  if ((result & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork;
    if (v0[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork] == 1)
    {
      if (*&v0[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artwork])
      {
        v8 = qword_10093FDB0;

        if (v8 != -1)
        {
          swift_once();
        }

        v9 = sub_10000A5D4(&qword_100951F70);
        sub_10000A61C(v9, qword_100951F00);
        v14 = v1;
        v10 = v1;
        sub_10075FDCC();

        sub_10076422C();
        sub_10076D31C();
        (*(v3 + 8))(v5, v2);
        sub_10076BFBC();
        if (*&v10[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkLoader])
        {
          v13 = *&v10[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView];
          v11 = v13;
          sub_10075FD2C();
          sub_1002EEDD8();

          v12 = v11;
          sub_10077140C();
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_100760B7C();

          sub_10002CBB4(&v14);
        }

        else
        {
        }
      }

      *(v1 + v7) = 0;
    }
  }

  return result;
}

double sub_1002EE688(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v34 = a1;
  v35 = sub_100768D3C();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100768D1C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (sub_10013EEE8())
  {
    if (qword_10093FD98 != -1)
    {
      swift_once();
    }

    v18 = qword_100951EB8;
  }

  else
  {
    if (qword_10093FD90 != -1)
    {
      swift_once();
    }

    v18 = qword_100951EA0;
  }

  v19 = sub_10000A61C(v9, v18);
  v20 = *(v10 + 16);
  v21 = v20(v14, v19, v9);
  __chkstk_darwin(v21);
  *(&v32 - 2) = a2;
  *(&v32 - 1) = a3;
  sub_10076C13C();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v20(v32, v17, v9);
  v23 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel);
  v43 = sub_1007626BC();
  v44 = &protocol witness table for UILabel;
  v41 = &protocol witness table for UILabel;
  v42 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel);
  v40 = v43;
  v39 = v24;
  v25 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView);
  v37 = sub_10075FD2C();
  v38 = &protocol witness table for UIView;
  v36 = v25;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  sub_100768D2C();
  sub_100768CDC();
  v30 = v29;
  (*(v33 + 8))(v8, v35);
  v22(v17, v9);
  return v30;
}

void sub_1002EEACC(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView;
      v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView);
      v5 = Strong;
      v6 = a1;
      v7 = v4;
      [v6 size];
      sub_10075FCFC();
      sub_100770A9C();
      sub_10075FD0C();

      v8 = *&v5[v3];
      v9 = v6;
      v10 = v8;
      v12.value.super.isa = a1;
      v12.is_nil = 0;
      sub_10075FCEC(v12, v11);
    }
  }
}

id sub_1002EEBC4(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077071C();

  if (!a1 || (sub_10077071C() & 1) != (v5 & 1))
  {
    sub_1002EDB10();
  }

  return [v2 setNeedsLayout];
}

unint64_t sub_1002EEDD8()
{
  result = qword_100951F78;
  if (!qword_100951F78)
  {
    sub_10075FD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951F78);
  }

  return result;
}

uint64_t sub_1002EEE30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002EEE70(double a1, double a2, double a3, double a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a6 >> 62)
  {
    v11 = sub_10077158C();
    if (v11 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 == 3)
    {
      goto LABEL_8;
    }
  }

  if (v11 == 2)
  {
    sub_1002EF240(a6, a7, v13, a3, a4);
    goto LABEL_9;
  }

  if (v11 != 1)
  {
LABEL_8:
    sub_1002EF614(a6, a7, v13, a3, a4);
    goto LABEL_9;
  }

  sub_1002EF0E0(a6, a7, v13);
LABEL_9:
  sub_100012498(v13, v14);
  sub_10000CF78(v14, v14[3]);
  sub_10076E0EC();
  return sub_10000CD74(v14);
}

double sub_1002EEFA0(double a1, double a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a4 >> 62)
  {
    v9 = sub_10077158C();
    if (v9 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 == 3)
    {
      goto LABEL_8;
    }
  }

  if (v9 == 2)
  {
    sub_1002EF240(a4, a5, v13, a1, a2);
    goto LABEL_9;
  }

  if (v9 != 1)
  {
LABEL_8:
    sub_1002EF614(a4, a5, v13, a1, a2);
    goto LABEL_9;
  }

  sub_1002EF0E0(a4, a5, v13);
LABEL_9:
  sub_100012498(v13, v14);
  sub_10000CF78(v14, v14[3]);
  sub_10076E0FC();
  v11 = v10;
  sub_10000CD74(v14);
  return v11;
}

uint64_t sub_1002EF0E0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(result + 32);
  }

  v6 = v5;
  if (a2 != 4)
  {
    sub_100770A8C();
  }

  sub_1000ACA5C();
  sub_10076D28C();
  sub_10000CF78(v7, v7[3]);
  sub_10076D2DC();
  sub_10076DF8C();
  a3[3] = sub_10076DFAC();
  a3[4] = &protocol witness table for Center;
  sub_10000DB7C(a3);
  sub_10076DFBC();

  return sub_10000CD74(v7);
}

void sub_1002EF240(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_10076D58C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = sub_10077149C();
    v19 = sub_10077149C();
    goto LABEL_5;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 == 1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v18 = *(a1 + 40);
  v31 = *(a1 + 32);
  v19 = v18;
LABEL_5:
  v20 = v19;
  if (a2 == 4)
  {
    v21 = 33.0;
  }

  else
  {
    v22 = a5 / 224.0;
    v23 = fmin(a5 / 224.0, 1.0);
    if (a5 / 224.0 >= a4 / 224.0)
    {
      v22 = a4 / 224.0;
    }

    if (a4 / 224.0 >= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    sub_100770A8C();
    v21 = v24 * 80.0;
  }

  sub_10076D55C();
  v32[0] = v20;
  sub_1000ACA5C();
  sub_10076D28C();
  v30 = v20;
  sub_10000CF78(v33, v34);
  sub_10076D2DC();
  sub_10076D57C();
  sub_10000CD74(v32);
  v25 = *(v11 + 8);
  v25(v13, v10);
  sub_10000CD74(v33);
  v26 = v31;
  v32[0] = v31;
  sub_10076D28C();
  sub_10000CF78(v33, v34);
  sub_10076D2DC();
  *(swift_allocObject() + 16) = v21;
  a3[3] = v10;
  a3[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(a3);
  sub_10076D57C();

  sub_10000CD74(v32);
  v25(v16, v10);
  sub_10000CD74(v33);
  v27 = [v26 layer];
  [v27 setZPosition:2.0];

  v28 = v30;
  v29 = [v30 layer];
  [v29 setZPosition:1.0];
}

void sub_1002EF614(unint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_10076D8DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = sub_10077149C();
    v25 = sub_10077149C();
    v26 = sub_10077149C();
    goto LABEL_6;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v20 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v20 < 3)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = v21;
  v25 = v22;
  v26 = v23;
LABEL_6:
  v37 = v26;
  v38 = a3;
  v35 = v24;
  if (a2 == 4)
  {
    v27 = 10.0;
  }

  else
  {
    v28 = a5 / 127.0;
    v29 = fmin(a5 / 127.0, 1.0);
    if (a5 / 127.0 >= a4 / 421.0)
    {
      v28 = a4 / 421.0;
    }

    if (a4 / 421.0 >= 1.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    sub_100770A8C();
    v27 = v30 * 20.0;
  }

  sub_10076D8AC();
  v39[0] = v25;
  sub_1000ACA5C();
  sub_10076D28C();
  v36 = v25;
  sub_10000CF78(v40, v41);
  sub_10076D2DC();
  *(swift_allocObject() + 16) = v27;
  sub_10076D8BC();

  sub_10000CD74(v39);
  v31 = *(v11 + 8);
  v31(v13, v10);
  sub_10000CD74(v40);
  v32 = v35;
  v39[0] = v35;
  sub_10076D28C();
  sub_10000CF78(v40, v41);
  sub_10076D2DC();
  *(swift_allocObject() + 16) = v27;
  sub_10076D8BC();

  sub_10000CD74(v39);
  v31(v16, v10);
  sub_10000CD74(v40);
  v33 = v37;
  v39[0] = v37;
  sub_10076D28C();
  sub_10000CF78(v40, v41);
  sub_10076D2DC();
  v34 = v38;
  v38[3] = v10;
  v34[4] = &protocol witness table for HorizontalStack;
  sub_10000DB7C(v34);
  sub_10076D8BC();

  sub_10000CD74(v39);
  v31(v19, v10);
  sub_10000CD74(v40);
}

uint64_t sub_1002EFA78()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_10076D53C();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_10076D50C();
}

uint64_t sub_1002EFB9C(double a1)
{
  v2 = sub_10076D54C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v7 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v8 = *(v3 + 104);
  (v8)(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v2, v4);
  sub_10076D53C();
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v8(v6, v7, v2);
  return sub_10076D50C();
}

double sub_1002EFD44(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *a1;
  ObjectType = swift_getObjectType();

  return sub_1002EFEE4(a2, v9, a7, ObjectType);
}

uint64_t sub_1002EFDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100761EDC();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_1002F017C(v5, a3);
  }

  else
  {
    sub_10076C52C();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = result;

    sub_1002F0400(v7, a3);
  }
}

double sub_1002EFEE4(double a1, uint64_t a2, void *a3, void *a4)
{
  sub_100761EDC();
  if (swift_dynamicCastClass())
  {

    sub_100761EBC();
    v7 = sub_10076C5AC();

    v8 = sub_100761E9C();
    v10 = v9;
    v11 = sub_100761ECC();
    v13 = v12;
    v14 = sub_100761E2C();
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    sub_1002ECDCC(&unk_10099FD58, a3);
    v15 = type metadata accessor for AppPromotionCardView();
    sub_1003444C8(v7, v8, v10, v11, v13, v14, a3, a1, v15, a4);
  }

  else
  {
    sub_10076C52C();
    if (swift_dynamicCastClass())
    {

      sub_10076C50C();
      v16 = sub_10076C5AC();

      v17 = sub_10076C4FC();
      v19 = v18;
      v20 = sub_10076C51C();
      v22 = v21;
      if (qword_100940640 != -1)
      {
        swift_once();
      }

      sub_1002ECDCC(&unk_10099FD58, a3);
      v23 = type metadata accessor for AppPromotionCardView();
      sub_1003444C8(v16, v17, v19, v20, v22, 0, a3, a1, v23, a4);
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_1002F017C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_10075F27C();
  if (v9)
  {
    v16[1] = v9;
    sub_10076B90C();
    sub_10076F64C();
    sub_1002F07F4(&qword_100956710, &type metadata accessor for Action);
    sub_10076F56C();

    v10 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_1002F0390(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_100761EAC();
  sub_1004B1D04(v13, v14);
  return sub_100345560(a1, a2);
}

uint64_t sub_1002F0390(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100952650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F0400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_10075F27C();
  if (v9)
  {
    v16[1] = v9;
    sub_10076B90C();
    sub_10076F64C();
    sub_1002F07F4(&qword_100956710, &type metadata accessor for Action);
    sub_10076F56C();

    v10 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_1002F0390(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_10076C4EC();
  sub_1004B1D04(v13, v14);
  return sub_1003463C4(a1, a2);
}

void sub_1002F0614(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_10075FCEC(v8, a3);
  sub_10075FD2C();
  sub_1002F07F4(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  sub_100760BFC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = qword_1009602D0;
    v6 = Strong;
    v5 = [*(Strong + qword_1009602D0) layer];
    [v5 removeAllAnimations];

    [*&v6[v4] setImage:0];
    type metadata accessor for VideoView();
    sub_1002F07F4(&unk_100942840, type metadata accessor for VideoView);
    sub_100760BFC();
  }
}

uint64_t sub_1002F07F4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002F08E4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_artworkLoader);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits;
  v10 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits);
  v11 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_objectGraph);
  swift_unknownObjectRetain();
  sub_1002F3914(a2, a3, v8, v10, v11, a1);
  swift_unknownObjectRelease();
  v12 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v12 layoutMargins];
  [v12 setLayoutMargins:?];

  v13 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v13 layoutMargins];
  [v13 setLayoutMargins:?];

  type metadata accessor for SmallLockupCollectionViewTableCell();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setSelectionStyle:0];
  }

  return result;
}

void sub_1002F0E34(void *a1, uint64_t a2)
{
  v5 = sub_10075E11C();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&unk_1009520C0);
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_shelfDataSource);
  v32 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_objectGraph);
  isa = sub_10075E02C().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v31 = v9;
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v15;
      v30 = a1;
      v17 = sub_10076830C();
      sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
      v27[1] = v17;
      sub_100761B3C();
      v28 = *(v34 + 16);
      v29 = v34 + 16;
      v28(v7, a2, v35);
      sub_10076FDDC();
      v36 = *(v12 + 24);

      sub_10000A5D4(&unk_1009520B0);
      sub_100071820(&qword_1009564C0, &unk_1009520B0);
      sub_10076F82C();
      ObjectType = swift_getObjectType();
      v19 = (*(v16 + 88))(v37, v11, v32, ObjectType, v16);
      v20 = v19;
      if (v19)
      {
        sub_100761ACC();
        v21 = v30;
        if ((v20 & 2) == 0)
        {
LABEL_5:
          if ((v20 & 4) == 0)
          {
LABEL_7:

            (*(v33 + 8))(v11, v31);
            sub_10000CD74(v37);
            return;
          }

LABEL_6:
          sub_10000A5D4(&qword_100944C48);
          v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_100783DD0;
          v28((v23 + v22), a2, v35);
          v24 = sub_1007701AC().super.isa;

          [v21 reloadItemsAtIndexPaths:v24];

          v14 = v24;
          goto LABEL_7;
        }
      }

      else
      {
        v21 = v30;
        if ((v19 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v26 = sub_10075E02C().super.isa;
      [v21 deselectItemAtIndexPath:v26 animated:1];

      if ((v20 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
  sub_100761ACC();
  v35 = sub_10075E02C().super.isa;
  [a1 deselectItemAtIndexPath:v35 animated:1];
  v25 = v35;
}

id sub_1002F1470()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002F173C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1002F17BC();
  }

  return a3(1);
}

uint64_t sub_1002F17BC()
{
  v0 = sub_10076593C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  sub_10076829C();
  (*(v1 + 104))(v3, enum case for PurchasesContentMode.hidden(_:), v0);
  sub_1002F90A4(&qword_100952088, &type metadata accessor for PurchasesContentMode);
  sub_10077018C();
  sub_10077018C();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);

    return sub_10076828C();
  }

  v8 = sub_10077167C();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);

  if (v8)
  {
    return sub_10076828C();
  }

  return sub_10076826C();
}

uint64_t sub_1002F1B2C()
{
  v1 = sub_10076F7CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_10076F7FC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B6FC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CFBC(v7, &qword_1009492E0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(v0 + 112))
    {

      sub_1007660EC();

      if (*(v0 + 112))
      {

        sub_10076F7DC();
        v12 = sub_1007660DC();

        (*(v2 + 8))(v4, v1);
        (*(v9 + 8))(v11, v8);
        return v12;
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

double sub_1002F1DF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v53 = a4;
  v48 = a2;
  v55 = a1;
  v5 = sub_1007621EC();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v46 - v8;
  v9 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_10076B5BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
  v19 = sub_100761B4C();
  v54 = v18;
  v55 = v19;
  sub_10076B5CC();
  if (a3)
  {
    v20 = v11;
    (*(v13 + 56))(v11, 1, 1, v12);
    v22 = v49;
    v21 = v50;
    v23 = v51;
    (*(v50 + 104))(v49, enum case for ShelfBackground.none(_:), v51);
  }

  else
  {
    sub_100761A7C();
    v20 = v11;
    (*(v13 + 56))(v11, 0, 1, v12);
    v24 = v49;
    sub_100761A6C();
    v21 = v50;
    v23 = v51;
    v22 = v24;
  }

  v25 = v13;
  v26 = *(v13 + 16);
  v27 = v54;
  v26(v15, v54, v12);
  v28 = (*(v25 + 88))(v15, v12);
  v29 = v53;
  v52 = v25;
  if (v28 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v30 = &off_1008A1710;
  }

  else
  {
    if (v28 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v25 + 8))(v15, v12);
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v30 = &off_100891580;
  }

  v31 = (v30[2])();
  if ((v32 & 1) == 0)
  {
    v33 = *&v31;

    v34 = v33;
    (*(v21 + 8))(v22, v23);
    sub_10000CFBC(v20, &unk_1009568A0);
    (*(v52 + 8))(v27, v12);
    return v34;
  }

LABEL_11:
  v35 = sub_10041329C();
  if (v35)
  {
    v37 = v35;
    v38 = v36;
    v39 = v23;
    v40 = v47;
    v51 = v12;
    sub_10076B57C();
    *&v41 = COERCE_DOUBLE((*(v38 + 48))(v20, v22, v40, v29, v37, v38));
    v43 = v42;

    v44 = *(v21 + 8);
    v44(v40, v39);
    v44(v22, v39);
    sub_10000CFBC(v20, &unk_1009568A0);
    (*(v52 + 8))(v54, v51);
    v34 = 0.0;
    if ((v43 & 1) == 0)
    {
      return *&v41;
    }
  }

  else
  {

    (*(v21 + 8))(v22, v23);
    sub_10000CFBC(v20, &unk_1009568A0);
    (*(v52 + 8))(v27, v12);
    return 0.0;
  }

  return v34;
}

double sub_1002F2380(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
  v11 = 0.0;
  if (sub_100761A9C() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_100761B5C();
  if (v17)
  {
    v52 = v16;
    v53 = v17;
    v18 = sub_100761AAC();
    if (v18)
    {
      v50 = v18;
      sub_10076B8EC();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_10093F988 != -1)
      {
        swift_once();
      }

      v21 = qword_10094C0F0;
      v48 = v4;
      v49 = v20;
      if (v20)
      {
        v20 = sub_10076FF6C();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v47 = v22;
        v24 = [v47 font];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v26 = 0;
        }

        v30 = v47;
        [v47 setFont:v26];
      }

      v27 = a2;
      v28 = v10;
      [v21 sizeThatFits:{v13, v15}];
      v32 = v31;
      v11 = v33;

      v29 = v32 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];
    }

    else
    {
      v27 = a2;
      v28 = v10;
      v29 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [v27 pageMarginInsets];
    if (a1 >= 1)
    {
      v34 = a1 - 1;
    }

    else
    {
      v34 = 0;
    }

    sub_1002F1DF4(a1, v34, a1 < 1, v27);
    v35 = sub_100761ABC();
    v36 = sub_100761B6C();
    v49 = v37;
    v50 = v36;
    v38 = sub_100761AFC();
    v39 = [v27 traitCollection];
    v40 = sub_10077071C();

    if (v35)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    if (v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_100628B9C(a1, v27, v28);
    LOBYTE(v45) = 1;
    sub_1001963E0(v50, v49, v38, v52, v53, v35, 0, 0, v13, v15, v29, v11, 0, 0, v42, v28, v45, v27);
    v13 = v43;

    sub_10011636C(v28);
  }

  return v13;
}

void sub_1002F2840(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v133 = a3;
  v126 = a2;
  v116 = sub_10076B6EC();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = v107 - v9;
  v10 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v10 - 8);
  v123 = v107 - v11;
  v125 = sub_10076664C();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v137 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v136 = v107 - v14;
  __chkstk_darwin(v15);
  v135 = v107 - v16;
  v121 = sub_10075E11C();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v18 - 8);
  v122 = v107 - v19;
  v118 = sub_10000A5D4(&unk_1009520A0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v134 = v107 - v20;
  v21 = sub_10076B5BC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v108 = v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v107 - v25;
  __chkstk_darwin(v27);
  v29 = v107 - v28;
  v128 = v4;
  sub_10075E0AC();
  v30 = sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
  sub_100761A7C();
  v31 = sub_10041329C();
  if (!v31)
  {
    (*(v22 + 8))(v29, v21);
    return;
  }

  v111 = v32;
  v112 = v31;
  v131 = v29;
  sub_10075E0AC();
  v33 = sub_100761A5C();
  v129 = v22;
  v138 = a1;
  if (v33)
  {
    v34 = sub_10075E0AC();
    v35 = v30;
    if (v34 >= sub_100761A9C())
    {
      v110 = 0;
      v37 = v133;
    }

    else
    {
      v36 = sub_100761A4C();
      v37 = v133;
      if (v36)
      {
        v110 = 0;
      }

      else
      {
        v38 = sub_100761A8C();
        if (sub_10062B9AC(v34))
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        v110 = v39;
        v22 = v129;
        v37 = v133;
      }
    }
  }

  else
  {
    v110 = 0;
    v35 = v30;
    v37 = v133;
  }

  sub_10075E0AC();
  v40 = sub_100761A5C();
  v132 = v21;
  v109 = v26;
  if (v40)
  {
    sub_10075E0AC();
    v127 = sub_100761B4C();
  }

  else
  {
    v127 = 0;
  }

  [a4 bounds];
  [a4 safeAreaInsets];
  sub_100770ACC();
  v42 = v41;
  v44 = v43;
  v45 = v131;
  v46 = sub_10041329C();
  v48 = v132;
  v130 = v35;
  if (!v46)
  {
    goto LABEL_30;
  }

  v49 = v46;
  v50 = v47;
  v107[1] = swift_getObjectType();
  [v37 pageMarginInsets];
  v52 = (*(v50 + 32))(0, v37, v49, v50, v51);
  v42 = v42 - (v52 + v53);
  v54 = [v37 traitCollection];
  v55 = *(v22 + 16);
  v56 = v109;
  v55(v109, v45, v48);
  v57 = *(v22 + 88);
  v58 = v57(v56, v48);
  if (v58 != enum case for Shelf.ContentType.artwork(_:) && v58 != enum case for Shelf.ContentType.ribbonBar(_:) && v58 != enum case for Shelf.ContentType.ribbonFlow(_:) && v58 != enum case for Shelf.ContentType.paragraph(_:) && v58 != enum case for Shelf.ContentType.footnote(_:) && v58 != enum case for Shelf.ContentType.titledParagraph(_:) && v58 != enum case for Shelf.ContentType.reviewsContainer(_:) && v58 != enum case for Shelf.ContentType.reviewSummary(_:) && v58 != enum case for Shelf.ContentType.editorialLink(_:) && v58 != enum case for Shelf.ContentType.quote(_:) && v58 != enum case for Shelf.ContentType.framedArtwork(_:) && v58 != enum case for Shelf.ContentType.screenshots(_:))
  {
    if (v58 == enum case for Shelf.ContentType.appShowcase(_:))
    {

      goto LABEL_78;
    }

    v107[0] = v54;
    if (v58 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v58 == enum case for Shelf.ContentType.linkableText(_:) || v58 == enum case for Shelf.ContentType.framedVideo(_:) || v58 == enum case for Shelf.ContentType.productDescription(_:) || v58 == enum case for Shelf.ContentType.banner(_:) || v58 == enum case for Shelf.ContentType.roundedButton(_:) || v58 == enum case for Shelf.ContentType.titledButtonStack(_:) || v58 == enum case for Shelf.ContentType.smallStoryCard(_:) || v58 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) || v58 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v58 == enum case for Shelf.ContentType.upsellBreakout(_:) || v58 == enum case for Shelf.ContentType.smallBreakout(_:) || v58 == enum case for Shelf.ContentType.arcadeFooter(_:) || v58 == enum case for Shelf.ContentType.editorialQuote(_:) || v58 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v58 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v58 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v58 == enum case for Shelf.ContentType.privacyHeader(_:) || v58 == enum case for Shelf.ContentType.privacyFooter(_:) || v58 == enum case for Shelf.ContentType.privacyCategory(_:) || v58 == enum case for Shelf.ContentType.privacyDefinition(_:) || v58 == enum case for Shelf.ContentType.heroCarousel(_:) || v58 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v96 = v55, v109 = *(v129 + 8), v109(v56, v132), (sub_1007706FC() & 1) == 0))
    {

      goto LABEL_78;
    }

    v97 = v107[0];
    v98 = sub_10077071C();

    if (v98)
    {
LABEL_78:
      v37 = v133;
      v22 = v129;
      goto LABEL_30;
    }

    v99 = v131;
    v100 = sub_1002F6B5C(v131, v110, v133);
    v101 = v108;
    v102 = v99;
    v103 = v132;
    v96(v108, v102, v132);
    v104 = v57(v101, v103);
    if (v104 == enum case for Shelf.ContentType.annotation(_:) || v104 == enum case for Shelf.ContentType.productCapability(_:) || v104 == enum case for Shelf.ContentType.productPageLink(_:) || v104 == enum case for Shelf.ContentType.privacyType(_:))
    {
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 + (v100 - 1) * -30.0;
        goto LABEL_81;
      }
    }

    else
    {
      v109(v108, v132);
      PageTraitEnvironment.pageColumnMargin.getter();
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 - v105 * (v100 - 1);
LABEL_81:
        v42 = v106 / v100;
        goto LABEL_78;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v37 = v133;
  v22 = v129;
LABEL_30:
  if (v42 <= 0.0)
  {
    v42 = 0.0;
  }

  v59 = v138;
  sub_100761B3C();
  (*(v120 + 16))(v119, v59, v121);
  sub_10076FDDC();
  v139 = *(v128 + 24);

  sub_10000A5D4(&unk_1009520B0);
  sub_100071820(&qword_1009564C0, &unk_1009520B0);
  sub_10076FD7C();
  v60 = v135;
  sub_10076663C();
  v61 = sub_1002F67C8(v59, v37);
  v62 = v125;
  v63 = v124;
  if (v61)
  {
    v64 = v136;
    v65 = v137;
    sub_1007665FC();
    sub_10038C52C(v64, v65);
    v66 = *(v63 + 8);
    v22 = v129;
    v66(v65, v62);
    v66(v64, v62);
    v60 = v135;
  }

  v67 = v123;
  sub_100761B0C();
  v68 = sub_10076182C();
  v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
  sub_10000CFBC(v67, &unk_100952090);
  if (v69 != 1)
  {
    v70 = v137;
    sub_1007665DC();
    v71 = v136;
    sub_10038C52C(v136, v70);
    v72 = *(v63 + 8);
    v72(v70, v62);
    v72(v71, v62);
  }

  v73 = [v37 traitCollection];
  v74 = sub_1007706EC();

  v75 = v127;
  v76 = v37;
  if (v74)
  {
    v77 = v137;
    sub_10076662C();
    v78 = v136;
    sub_10038C52C(v136, v77);
    v79 = *(v63 + 8);
    v79(v77, v62);
    v80 = v78;
    v37 = v76;
    v79(v80, v62);
  }

  if (!sub_10075E0AC())
  {
    v81 = v137;
    sub_1007665EC();
    v82 = v136;
    sub_10038C52C(v136, v81);
    v83 = *(v63 + 8);
    v83(v81, v62);
    v84 = v82;
    v37 = v76;
    v83(v84, v62);
  }

  if (v75)
  {

    v85 = v113;
    sub_10076B70C();

    v86 = v114;
    sub_10076B6AC();
    sub_1002F90A4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
    v87 = v116;
    v88 = sub_10077124C();
    v89 = *(v115 + 8);
    v89(v86, v87);
    v90 = v85;
    v37 = v76;
    v22 = v129;
    v89(v90, v87);
    v60 = v135;
    if (v88)
    {
      v91 = v137;
      sub_10076661C();
      v92 = v136;
      sub_10038C52C(v136, v91);
      v93 = *(v63 + 8);
      v93(v91, v62);
      v94 = v92;
      v37 = v76;
      v93(v94, v62);
    }
  }

  v95 = v134;
  (*(v111 + 72))(v140, v110, v134, v126, v60, v37, v42, v44);

  (*(v63 + 8))(v60, v62);
  (*(v117 + 8))(v95, v118);
  sub_10000CD74(v140);
  (*(v22 + 8))(v131, v132);
}

uint64_t sub_1002F3914(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v239 = a6;
  v271 = a5;
  v270 = a4;
  v263 = a3;
  v273 = a2;
  v265 = sub_10076F7FC();
  v264 = *(v265 - 1);
  __chkstk_darwin(v265);
  v232 = v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v224 - v10;
  __chkstk_darwin(v12);
  v237 = v224 - v13;
  __chkstk_darwin(v14);
  v227 = v224 - v15;
  __chkstk_darwin(v16);
  v230 = v224 - v17;
  v235 = sub_10075DFDC();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_1007621EC();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10076B6EC();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = v224 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v21 - 8);
  v23 = v224 - v22;
  v267 = sub_10076664C();
  v266 = *(v267 - 8);
  __chkstk_darwin(v267);
  v25 = v224 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v224 - v27;
  __chkstk_darwin(v29);
  v262 = v224 - v30;
  v255 = sub_10075E11C();
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v238 = v31;
  v253 = v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v32 - 8);
  v252 = sub_10000A5D4(&unk_1009520C0);
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v261 = v224 - v33;
  v269 = sub_10076B5BC();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v244 = v224 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v256 = v224 - v36;
  __chkstk_darwin(v37);
  v260 = v224 - v38;
  v257 = sub_10076F7CC();
  v258 = *(v257 - 8);
  __chkstk_darwin(v257);
  v240 = v224 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v259 = v224 - v41;
  v42 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v42 - 8);
  v236 = v224 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v243 = v224 - v45;
  __chkstk_darwin(v46);
  v242 = v224 - v47;
  __chkstk_darwin(v48);
  v228 = v224 - v49;
  __chkstk_darwin(v50);
  v229 = v224 - v51;
  __chkstk_darwin(v52);
  v54 = v224 - v53;
  v55 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v55 - 8);
  v231 = v224 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v241 = v224 - v58;
  __chkstk_darwin(v59);
  v61 = v224 - v60;
  *&v63 = __chkstk_darwin(v62).n128_u64[0];
  v65 = v224 - v64;
  [a1 setBackgroundColor:{0, v63}];
  swift_getObjectType();
  v66 = swift_conformsToProtocol2();
  v272 = v6;
  v274 = *(v6 + 16);
  if (!v66 || *&a1 == 0.0)
  {
    v74 = sub_10076830C();
    v75 = sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
    v76 = v273;
    v260 = v74;
    v259 = v75;
    result = sub_100761AEC();
    if ((result & 1) == 0)
    {
      return result;
    }

    v225 = v11;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v226 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_100761B3C();
    v78 = *(v254 + 16);
    v224[1] = v254 + 16;
    v224[0] = v78;
    v78(v253, v76, v255);
    sub_10076FDDC();
    v280 = *(v272 + 24);

    sub_10000A5D4(&unk_1009520B0);
    sub_100071820(&qword_1009564C0, &unk_1009520B0);
    v79 = v273;
    sub_10076F82C();
    sub_10076663C();
    if (sub_1002F6264(v79, v270))
    {
      sub_1007665FC();
      sub_10038C52C(v28, v25);
      v80 = v266[1];
      v81 = v267;
      v80(v25, v267);
      v80(v28, v81);
    }

    sub_100761B0C();
    v82 = sub_10076182C();
    v83 = (*(*(v82 - 8) + 48))(v23, 1, v82);
    sub_10000CFBC(v23, &unk_100952090);
    if (v83 != 1)
    {
      sub_1007665DC();
      sub_10038C52C(v28, v25);
      v84 = v266[1];
      v85 = v267;
      v84(v25, v267);
      v84(v28, v85);
    }

    if (!sub_10075E0AC())
    {
      sub_1007665EC();
      sub_10038C52C(v28, v25);
      v86 = v266[1];
      v87 = v267;
      v86(v25, v267);
      v86(v28, v87);
    }

    sub_10075E0AC();
    v88 = v256;
    sub_100761A7C();
    sub_10075E0AC();
    v89 = sub_100761A3C();
    v90 = v268;
    v91 = v244;
    v92 = v269;
    (*(v268 + 16))(v244, v88, v269);
    v93 = (*(v90 + 88))(v91, v92);
    if (v93 == enum case for Shelf.ContentType.smallLockup(_:) || v93 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v93 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v93 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v93 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v93 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v93 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v93 == enum case for Shelf.ContentType.editorialCard(_:) || v93 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v93 == enum case for Shelf.ContentType.brick(_:) || v93 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v93 == enum case for Shelf.ContentType.reviews(_:) || v93 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v93 == enum case for Shelf.ContentType.framedVideo(_:) || v93 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v93 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v93 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v93 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v93 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v93 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v93 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v93 == enum case for Shelf.ContentType.posterLockup(_:) || v93 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v93 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v93 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v268 + 8))(v91, v269);
              goto LABEL_50;
            }

LABEL_38:
            if (v89)
            {
              goto LABEL_39;
            }

LABEL_50:
            v118 = [v270 traitCollection];
            v119 = sub_1007706EC();

            if ((v119 & 1) == 0)
            {
              LODWORD(v244) = 0;
              v120 = v262;
LABEL_53:
              ObjectType = swift_getObjectType();
              sub_10075E0AC();
              sub_100761B4C();
              v124 = v245;
              sub_10076B70C();

              (*(v226 + 80))(&v282, v261, v271, v120, v124, v270, ObjectType);
              (*(v246 + 8))(v124, v247);
              v125 = a1;
              sub_10075E0AC();
              v126 = v248;
              sub_100761A6C();
              v127 = sub_1004751F8();
              (*(v249 + 8))(v126, v250);
              if ([a1 overrideUserInterfaceStyle] != v127)
              {
                [a1 setOverrideUserInterfaceStyle:v127];
              }

              sub_10000A570(&v282, &v280);
              *(&v278 + 1) = sub_100016F40(0, &qword_10094D1D0);
              *&v277 = a1;
              v128 = a1;
              sub_10075FA0C();
              sub_10000CFBC(&v280, &unk_10094F720);
              sub_10000CD74(&v277);
              swift_getObjectType();
              v129 = swift_conformsToProtocol2();
              v130 = v272;
              if (v129 && *&a1 != 0.0)
              {
                v131 = v129;
                v132 = swift_getObjectType();
                v133 = *(v131 + 8);
                v134 = v128;
                v135 = v133(v132, v131);
                v79 = v273;
                v136 = v135;
                v137 = (v135 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
                v138 = *(v135 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
                *v137 = 0;
                v137[1] = 0;
                sub_1000167E0(v138);
                [*&v136[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && *&a1 != 0.0)
              {
                v139 = swift_allocObject();
                swift_weakInit();
                v271 = a1;
                v140 = v130;
                v141 = v253;
                v142 = v255;
                (v224[0])(v253, v79, v255);
                v143 = v254;
                v144 = (*(v254 + 80) + 16) & ~*(v254 + 80);
                v145 = (v238 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
                v146 = swift_allocObject();
                v147 = v141;
                v130 = v140;
                v125 = v271;
                (*(v143 + 32))(v146 + v144, v147, v142);
                *(v146 + v145) = v139;
                v148 = &v128[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v149 = *&v128[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                *v148 = sub_1002F9230;
                v148[1] = v146;
                v150 = v128;

                sub_1000167E0(v149);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                sub_100767D5C();
                sub_10076F64C();
                v151 = v128;
                sub_10076FC1C();
                v152 = v280;
                swift_getObjectType();
                v153 = sub_100765B4C();
                v154 = v151;
                sub_100767D3C();
              }

              *&v275[0] = v128;
              *(&v275[0] + 1) = v226;
              v155 = v128;
              sub_10000A5D4(&qword_1009520D0);
              sub_10000A5D4(&qword_1009520D8);
              if (swift_dynamicCast())
              {
                sub_100012498(&v277, &v280);
                sub_100767D5C();
                sub_10076F64C();
                sub_10076FC1C();
                v156 = v277;
                sub_10000CF78(&v280, v281);
                sub_10076817C();

                sub_10000CD74(&v280);
              }

              else
              {
                v279 = 0;
                v278 = 0u;
                v277 = 0u;
                sub_10000CFBC(&v277, &unk_1009520E0);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                sub_100764FAC();
                v157 = v155;
                sub_10076F63C();
                v158 = v280;
                if (v280)
                {
                  v159 = v157;
                  v160 = v158;
                  sub_100764F9C();

                  v157 = v160;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                sub_10000A570(&v282, &v277);
                v161 = v155;
                sub_10000A5D4(&qword_1009575A0);
                sub_10000A5D4(&unk_1009520F0);
                if (swift_dynamicCast())
                {
                  sub_100012498(v275, &v280);
                  sub_10000CF78(&v280, v281);
                  if (sub_10076967C())
                  {
                    sub_10076518C();
                  }

                  swift_getObjectType();
                  sub_10076457C();

                  sub_10000CD74(&v280);
                }

                else
                {

                  v276 = 0;
                  memset(v275, 0, sizeof(v275));
                  sub_10000CFBC(v275, &qword_10094D3E8);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                swift_getObjectType();
                v162 = v155;
                sub_100768BEC();
              }

              sub_10075E0AC();
              sub_100761B4C();
              if (v244)
              {
                v163 = [v239 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v164 = swift_dynamicCastClass();
                if (v164)
                {
                  v165 = v164;
                  v166 = [v164 _orthogonalScrollingSections];
                  v167 = v233;
                  sub_10075DFAC();

                  v168 = sub_10075E0AC();
                  LOBYTE(v166) = sub_10075DFCC(v168);
                  (*(v234 + 8))(v167, v235);
                  if (v166)
                  {
                    [v155 frame];
                    v170 = v169;
                    v172 = v171;
                    v174 = v173;
                    v176 = v175;
                    v177 = v229;
                    sub_10076B6FC();
                    v178 = v264;
                    v179 = *(v264 + 6);
                    v180 = v265;
                    if (v179(v177, 1, v265) == 1)
                    {

                      (*(v268 + 8))(v256, v269);
                      (v266[1])(v262, v267);
                      (*(v251 + 8))(v261, v252);
                      sub_10000CD74(&v282);
                      return sub_10000CFBC(v177, &qword_1009492E0);
                    }

                    v274 = *(v178 + 4);
                    v274(v230, v177, v180);
                    sub_10000A570(&v282, &v280);
                    sub_10000CF78(&v280, v281);
                    v200 = v228;
                    sub_10076FE2C();
                    if (v179(v200, 1, v180) == 1)
                    {

                      (*(v178 + 1))(v230, v180);
                      (*(v268 + 8))(v256, v269);
                      (v266[1])(v262, v267);
                      (*(v251 + 8))(v261, v252);
                      sub_10000CD74(&v282);
                      v188 = v200;
                      goto LABEL_99;
                    }

                    v270 = v172;
                    v271 = v170;
                    v201 = v227;
                    v274(v227, v200, v180);
                    [v165 _layoutFrameForSection:sub_10075E0AC()];
                    v203 = v202;
                    v205 = v204;
                    v207 = v206;
                    v209 = v208;
                    [v165 _offsetForOrthogonalScrollingSection:sub_10075E0AC()];
                    v211 = v272;
                    v212 = *(v272 + 112);
                    v213 = v180;
                    v214 = v262;
                    if (v212)
                    {
                      v215 = v210;

                      v216 = v230;
                      v217 = v203;
                      sub_1007660EC();

                      v218 = v205;
                      if (*(v211 + 112))
                      {

                        v219 = v240;
                        sub_10076F7DC();
                        v277 = v215;
                        *&v278 = v207;
                        *(&v278 + 1) = v209;
                        LOBYTE(v279) = 0;
                        v212 = sub_1007660CC();

                        (*(v258 + 8))(v219, v257);
                      }

                      else
                      {
                        v212 = 0;
                      }

                      v220 = *&v271;
                    }

                    else
                    {
                      v217 = v203;
                      v216 = v230;
                      v220 = *&v271;
                      v218 = v205;
                    }

                    v221 = *&v270;
                    v283.origin.x = v217;
                    v283.origin.y = v218;
                    v283.size.width = v207;
                    v283.size.height = v209;
                    v222 = -CGRectGetMinY(v283);
                    v284.origin.x = v220;
                    v284.origin.y = v221;
                    v284.size.width = v174;
                    v284.size.height = v176;
                    CGRectOffset(v284, 0.0, v222);
                    if (v212)
                    {

                      sub_1007660EC();
                    }

                    sub_1002F7034(&v280, v212);

                    v223 = *(v178 + 1);
                    v223(v201, v213);
                    v223(v216, v213);
                    (*(v268 + 8))(v256, v269);
                    (v266[1])(v214, v267);
                    goto LABEL_109;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                v181 = v155;
                [v181 frame];
                sub_1002F1B2C();
                swift_getObjectType();
                sub_10076A01C();
              }

              v182 = v242;
              sub_10076B6FC();
              v183 = v264;
              v184 = *(v264 + 6);
              v185 = v265;
              if (v184(v182, 1, v265) == 1)
              {
                sub_10000CFBC(v182, &qword_1009492E0);
                v186 = v243;
              }

              else
              {
                v187 = v237;
                (*(v183 + 4))(v237, v182, v185);
                v186 = v243;
                if (*(v130 + 112))
                {

                  [v155 frame];
                  sub_10076613C();
                }

                (*(v183 + 1))(v187, v185);
              }

              sub_10000A570(&v282, &v280);
              sub_10000CF78(&v280, v281);
              sub_10076FE2C();
              if (v184(v186, 1, v185) == 1)
              {

                (*(v268 + 8))(v256, v269);
                (v266[1])(v262, v267);
                (*(v251 + 8))(v261, v252);
                sub_10000CD74(&v282);
                v188 = v186;
LABEL_99:
                sub_10000CFBC(v188, &qword_1009492E0);
                return sub_10000CD74(&v280);
              }

              (*(v183 + 4))(v225, v186, v185);
              v189 = v236;
              sub_10076B6FC();
              if (v184(v189, 1, v185) == 1)
              {
                sub_10000CFBC(v189, &qword_1009492E0);
                v190 = 1;
                v191 = v258;
                v192 = v241;
              }

              else
              {
                v192 = v241;
                sub_10076F7DC();
                (*(v183 + 1))(v189, v185);
                v190 = 0;
                v191 = v258;
              }

              v193 = v257;
              (*(v191 + 56))(v192, v190, 1, v257);
              if (*(v130 + 112))
              {
                v194 = v192;
                v195 = v231;
                sub_1002F90EC(v194, v231);
                v196 = v191;
                v197 = (*(v191 + 48))(v195, 1, v193);

                if (v197 == 1)
                {
                  sub_10000CFBC(v195, &qword_1009632C0);
                }

                else
                {
                  sub_10076F7BC();
                  (*(v196 + 8))(v195, v193);
                }

                v198 = v232;
                sub_10076F78C();

                [v155 frame];
                sub_1007660EC();

                (*(v183 + 1))(v198, v185);
                v192 = v241;
              }

              [v155 frame];
              v199 = *(v130 + 112);

              sub_1002F7034(&v280, v199);

              sub_10000CFBC(v192, &qword_1009632C0);
              (*(v183 + 1))(v225, v185);
              (*(v268 + 8))(v256, v269);
              (v266[1])(v262, v267);
LABEL_109:
              (*(v251 + 8))(v261, v252);
              sub_10000CD74(&v282);
              return sub_10000CD74(&v280);
            }

            sub_10076662C();
            LODWORD(v244) = 0;
LABEL_52:
            v120 = v262;
            sub_10038C52C(v28, v25);
            v121 = v266[1];
            v122 = v267;
            v121(v25, v267);
            v121(v28, v122);
            goto LABEL_53;
          }
        }
      }
    }

LABEL_39:
    sub_10076660C();
    LODWORD(v244) = 1;
    goto LABEL_52;
  }

  v267 = v66;
  v67 = a1;
  sub_10075E0AC();
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
  v68 = sub_100761B4C();
  v266 = v67;
  [v67 frame];
  v69 = v272;
  v262 = sub_1002F1B2C();
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v70 = v282;
  sub_100764FAC();
  sub_10076F63C();
  v256 = v282;
  v261 = v68;
  sub_10076B6FC();
  v71 = v264;
  v72 = v265;
  if ((*(v264 + 6))(v54, 1, v265) == 1)
  {
    sub_10000CFBC(v54, &qword_1009492E0);
    v73 = 1;
  }

  else
  {
    sub_10076F7DC();
    (*(v71 + 1))(v54, v72);
    v73 = 0;
  }

  v94 = v258;
  v95 = v257;
  (*(v258 + 56))(v65, v73, 1, v257);
  v96 = objc_allocWithZone(sub_1007666AC());
  v97 = v70;
  v98 = sub_10076669C();
  if (*(v69 + 112))
  {
    sub_1002F90EC(v65, v61);
    if ((*(v94 + 48))(v61, 1, v95) == 1)
    {
      sub_10000CFBC(v61, &qword_1009632C0);
    }

    else
    {
      v99 = v259;
      (*(v94 + 32))(v259, v61, v95);
      (*(v94 + 16))(v240, v99, v95);
      sub_10076888C();
      swift_allocObject();
      swift_retain_n();
      sub_10076889C();
      sub_10076668C();

      (*(v94 + 8))(v99, v95);
    }
  }

  sub_10076911C();
  swift_allocObject();
  v100 = v97;
  sub_10076912C();
  sub_10076668C();

  v101 = v256;
  v265 = v100;
  if (v256)
  {
    sub_100766B3C();
    swift_allocObject();
    v102 = v101;
    sub_100766B4C();
    sub_10076668C();

    v264 = v102;
  }

  else
  {

    v264 = 0;
  }

  v103 = v98;
  sub_10000CFBC(v65, &qword_1009632C0);
  v104 = v274;

  v105 = sub_10075E0AC();
  v106 = v260;
  v107 = v261;
  sub_10076B5CC();
  v108 = sub_10076B58C();
  (*(v268 + 8))(v106, v269);
  v109 = *(v272 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10000A5D4(&qword_100952100);
  v111 = swift_allocObject();
  *(v111 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v111 + 16) = v104;
  *(v111 + 24) = v105;
  *(v111 + 32) = v108 & 1;
  *(v111 + 40) = v109;
  *(v111 + 64) = v103;
  *(v111 + 72) = &protocol witness table for CompoundScrollObserver;
  *(v111 + 80) = v262;
  swift_unknownObjectWeakAssign();

  v274 = v103;

  v112 = v266;
  v113 = swift_getObjectType();
  v114 = sub_10075E0AC();
  v115 = sub_100071820(&qword_100952108, &qword_100952100);
  v116 = v267;
  v117 = *(v267 + 32);

  v117(v107, v114, v263, v271, v111, v115, v270, v113, v116);
}

uint64_t sub_1002F6264(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v27 = v2;
  sub_10075E0AC();
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
  sub_100761A7C();
  sub_10075E0AC();
  v13 = sub_100761A3C();
  (*(v4 + 32))(v9, v12, v3);
  v14 = (*(v4 + 88))(v9, v3);
  if (v14 == enum case for Shelf.ContentType.smallLockup(_:) || v14 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_11;
  }

  v20 = v14 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v14 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v20 || v14 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.editorialCard(_:) || v14 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.brick(_:) || v14 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.reviews(_:) || v14 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v14 == enum case for Shelf.ContentType.framedVideo(_:) || v14 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v14 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v14 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v14 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v14 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v14 == enum case for Shelf.ContentType.posterLockup(_:) || v14 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_6:
    if (v13)
    {
LABEL_11:
      sub_10075E0AC();
      v18 = sub_100761ADC();
      result = sub_10075E09C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else if (v18)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v18 != -1)
        {
          return (result + 1) % v18 == 0;
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v16 = sub_10075E0AC();
  if (v16 >= sub_100761A9C() || (sub_100761A4C() & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_100761A8C();
    if (sub_10062B9AC(v16))
    {
      v17 = 1;
    }
  }

  sub_10075E0AC();
  sub_100761A7C();
  sub_10075E0AC();
  v23 = sub_100761A8C();
  v24 = sub_1002F6B5C(v6, v23, v28);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v17, 1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v24)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v17 == 0x8000000000000001 && v24 == -1)
  {
    goto LABEL_62;
  }

  v25 = (v17 - 1) % v24;
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    goto LABEL_59;
  }

  result = sub_10075E09C();
  if (__OFSUB__(v17, v26))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  return result >= v17 - v26;
}