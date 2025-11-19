void sub_10003D5B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_10003E110;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000CF7B0;
  v8[3] = &unk_1008647C8;
  v6 = _Block_copy(v8);
  v7 = a3;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
}

void sub_10003D6A4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    v5 = v1;
    v4(1, ObjectType, v2);
  }
}

void sub_10003D758(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v8 = v3;
    type metadata accessor for AppPromotionDetailPagePresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v5 + 24))
      {
        sub_10000C824(v5, v9);
        v6 = v10;
        v7 = v11;
        sub_10000C888(v9, v10);
        (*(v7 + 24))(v6, v7);

        sub_10000C620(v9);
        return;
      }
    }
  }
}

void sub_10003D86C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v10 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v10)
  {
    goto LABEL_13;
  }

  v43 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  sub_10003E054();
  v11 = v10;
  sub_10000C518(&qword_100923C10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_14:
    sub_10000C8CC(&v44, &qword_100923C18);
    goto LABEL_15;
  }

  v13 = v46;
  sub_10000C888(&v44, *(&v45 + 1));
  v14 = (*(v13 + 8))(v12, v13);
  sub_10000C620(&v44);
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
  sub_10000C888(&v44, *(&v45 + 1));
  v19 = *(v18 + 16);
  v20 = v18;
  v21 = v42;
  v22 = v19(v17, v20);
  sub_10000C620(&v44);
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
  sub_10000C888(&v44, *(&v45 + 1));
  v27 = (*(v26 + 24))(v25, v26);
  [v27 setNeedsLayout];

  sub_10000C620(&v44);
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
        v33 = sub_1007532A4();

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
            isa = sub_100741704().super.isa;
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

id sub_10003DCE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageTransitioningDelegate()
{
  result = qword_100923BE8;
  if (!qword_100923BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003DE08()
{
  sub_10003DEB8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003DEB8()
{
  if (!qword_10092B0B0)
  {
    sub_1007417F4();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10092B0B0);
    }
  }
}

id sub_10003DF10(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_originatingView;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_originatingView] = 0;
  v4 = &v1[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
  v6 = sub_1007417F4();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell] = 0;
  v7 = *&v1[v3];
  *&v1[v3] = a1;
  v8 = a1;

  v10.receiver = v1;
  v10.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate();
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_10003E004()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10003E054()
{
  result = qword_100925390;
  if (!qword_100925390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100925390);
  }

  return result;
}

uint64_t sub_10003E0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003E130(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E1A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_10003E210()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell];
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
  sub_10003E054();
  v6 = v2;
  sub_10000C518(&qword_100923C10);
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

    sub_10000C8CC(&v64, &qword_100923C18);
    goto LABEL_10;
  }

  v8 = v66;
  sub_10000C888(&v64, *(&v65 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_10000C620(&v64);
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
  sub_10003E054();
  v31 = v30;
  sub_10000C518(&qword_100923C10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v33 = v66;
    sub_10000C888(&v64, *(&v65 + 1));
    v34 = (*(v33 + 8))(v32, v33);
    sub_10000C620(&v64);
    goto LABEL_16;
  }

LABEL_15:
  sub_10000C8CC(&v64, &qword_100923C18);
  v34 = 0;
LABEL_16:
  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = type metadata accessor for AppPromotionPageOpenAnimation();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCardView] = v34;
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCollectionViewController] = v35;
  v38 = &v37[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCenter];
  *v38 = v4;
  v38[1] = v29;
  *(v38 + 16) = v28;
  v63.receiver = v37;
  v63.super_class = v36;
  v39 = objc_msgSendSuper2(&v63, "init");
  v40 = swift_allocObject();
  *(v40 + 16) = v0;
  v41 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v42 = *&v39[v41];
  v43 = v0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_100255160(0, *(v42 + 2) + 1, 1, v42);
    *&v39[v41] = v42;
  }

  v46 = *(v42 + 2);
  v45 = *(v42 + 3);
  if (v46 >= v45 >> 1)
  {
    v42 = sub_100255160((v45 > 1), v46 + 1, 1, v42);
  }

  *(v42 + 2) = v46 + 1;
  v47 = &v42[24 * v46];
  *(v47 + 4) = sub_10003E828;
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
    v49 = sub_100255160(0, *(v49 + 2) + 1, 1, v49);
    *&v39[v41] = v49;
  }

  v53 = *(v49 + 2);
  v52 = *(v49 + 3);
  if (v53 >= v52 >> 1)
  {
    v49 = sub_100255160((v52 > 1), v53 + 1, 1, v49);
  }

  *(v49 + 2) = v53 + 1;
  v54 = &v49[24 * v53];
  *(v54 + 4) = sub_10003E830;
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
    v56 = sub_100255160(0, *(v56 + 2) + 1, 1, v56);
    *&v39[v41] = v56;
  }

  v60 = *(v56 + 2);
  v59 = *(v56 + 3);
  if (v60 >= v59 >> 1)
  {
    v56 = sub_100255160((v59 > 1), v60 + 1, 1, v56);
  }

  *(v56 + 2) = v60 + 1;
  v61 = &v56[24 * v60];
  *(v61 + 4) = sub_10003E838;
  *(v61 + 5) = v55;
  v61[48] = 2;
  *&v39[v41] = v56;
  swift_endAccess();

  return v39;
}

uint64_t sub_10003E858(double a1, double a2, double a3, double a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a6 >> 62)
  {
    v11 = sub_100754664();
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
    sub_10003EC28(a6, a7, v13, a3, a4);
    goto LABEL_9;
  }

  if (v11 != 1)
  {
LABEL_8:
    sub_10003EFFC(a6, a7, v13, a3, a4);
    goto LABEL_9;
  }

  sub_10003EAC8(a6, a7, v13);
LABEL_9:
  sub_100012160(v13, v14);
  sub_10000C888(v14, v14[3]);
  sub_100751244();
  return sub_10000C620(v14);
}

double sub_10003E988(double a1, double a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a4 >> 62)
  {
    v9 = sub_100754664();
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
    sub_10003EC28(a4, a5, v13, a1, a2);
    goto LABEL_9;
  }

  if (v9 != 1)
  {
LABEL_8:
    sub_10003EFFC(a4, a5, v13, a1, a2);
    goto LABEL_9;
  }

  sub_10003EAC8(a4, a5, v13);
LABEL_9:
  sub_100012160(v13, v14);
  sub_10000C888(v14, v14[3]);
  sub_100751254();
  v11 = v10;
  sub_10000C620(v14);
  return v11;
}

uint64_t sub_10003EAC8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = sub_100754574();
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
    sub_100753B64();
  }

  sub_100009D34();
  sub_1007503E4();
  sub_10000C888(v7, v7[3]);
  sub_100750434();
  sub_1007510E4();
  a3[3] = sub_100751104();
  a3[4] = &protocol witness table for Center;
  sub_10000D134(a3);
  sub_100751114();

  return sub_10000C620(v7);
}

void sub_10003EC28(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1007506E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = sub_100754574();
    v19 = sub_100754574();
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

    sub_100753B64();
    v21 = v24 * 80.0;
  }

  sub_1007506B4();
  v32[0] = v20;
  sub_100009D34();
  sub_1007503E4();
  v30 = v20;
  sub_10000C888(v33, v34);
  sub_100750434();
  sub_1007506D4();
  sub_10000C620(v32);
  v25 = *(v11 + 8);
  v25(v13, v10);
  sub_10000C620(v33);
  v26 = v31;
  v32[0] = v31;
  sub_1007503E4();
  sub_10000C888(v33, v34);
  sub_100750434();
  *(swift_allocObject() + 16) = v21;
  a3[3] = v10;
  a3[4] = &protocol witness table for DisjointStack;
  sub_10000D134(a3);
  sub_1007506D4();

  sub_10000C620(v32);
  v25(v16, v10);
  sub_10000C620(v33);
  v27 = [v26 layer];
  [v27 setZPosition:2.0];

  v28 = v30;
  v29 = [v30 layer];
  [v29 setZPosition:1.0];
}

void sub_10003EFFC(unint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_100750A34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = sub_100754574();
    v25 = sub_100754574();
    v26 = sub_100754574();
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

    sub_100753B64();
    v27 = v30 * 20.0;
  }

  sub_100750A04();
  v39[0] = v25;
  sub_100009D34();
  sub_1007503E4();
  v36 = v25;
  sub_10000C888(v40, v41);
  sub_100750434();
  *(swift_allocObject() + 16) = v27;
  sub_100750A14();

  sub_10000C620(v39);
  v31 = *(v11 + 8);
  v31(v13, v10);
  sub_10000C620(v40);
  v32 = v35;
  v39[0] = v35;
  sub_1007503E4();
  sub_10000C888(v40, v41);
  sub_100750434();
  *(swift_allocObject() + 16) = v27;
  sub_100750A14();

  sub_10000C620(v39);
  v31(v16, v10);
  sub_10000C620(v40);
  v33 = v37;
  v39[0] = v37;
  sub_1007503E4();
  sub_10000C888(v40, v41);
  sub_100750434();
  v34 = v38;
  v38[3] = v10;
  v34[4] = &protocol witness table for HorizontalStack;
  sub_10000D134(v34);
  sub_100750A14();

  sub_10000C620(v39);
  v31(v19, v10);
  sub_10000C620(v40);
}

uint64_t sub_10003F460()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_100750694();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_100750664();
}

uint64_t sub_10003F584(double a1)
{
  v2 = sub_1007506A4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v7 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v8 = *(v3 + 104);
  (v8)(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v2, v4);
  sub_100750694();
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v8(v6, v7, v2);
  return sub_100750664();
}

__n128 sub_10003F72C()
{
  v0 = sub_10000C518(&unk_100923C30);
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin(v0);
  v43 = &v40 - v1;
  v2 = sub_10000C518(&unk_1009249B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v40 - v7;
  __chkstk_darwin(v8);
  v47 = &v40 - v9;
  __chkstk_darwin(v10);
  v46 = &v40 - v11;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_100039C50(v15, qword_10097CAA8);
  v16 = sub_10000D0FC(v15, qword_10097CAA8);
  if (qword_10091FF40 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v2, qword_10097CDE0);
  v42 = v3;
  v18 = *(v3 + 16);
  v18(v14, v17, v2);
  if (qword_10091FF30 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v2, qword_10097CDB0);
  v18(v46, v19, v2);
  if (qword_10091FF58 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v2, qword_10097CE28);
  v18(v47, v20, v2);
  v69 = &type metadata for CGFloat;
  v70 = &protocol witness table for CGFloat;
  *&v68 = 0x4031000000000000;
  if (qword_10091FEF8 != -1)
  {
    swift_once();
  }

  v41 = v14;
  v49 = v5;
  v21 = sub_10000D0FC(v2, qword_10097CD08);
  v18(v48, v21, v2);
  v67 = &protocol witness table for CGFloat;
  v66 = &type metadata for CGFloat;
  *&v65 = 0x4034000000000000;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  *&v62 = 0;
  v60 = &type metadata for Double;
  v61 = &protocol witness table for Double;
  *&v59 = 0;
  if (qword_10091FFA0 != -1)
  {
    swift_once();
  }

  v22 = sub_100750B04();
  v23 = sub_10000D0FC(v22, qword_10097CF00);
  v57 = v22;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_10000D134(&v56);
  v25 = *(*(v22 - 8) + 16);
  v25(v24, v23, v22);
  if (qword_10091FFA8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v22, qword_10097CF18);
  v54 = v22;
  v55 = &protocol witness table for StaticDimension;
  v27 = sub_10000D134(&v53);
  v25(v27, v26, v22);
  if (qword_10091FF00 != -1)
  {
    swift_once();
  }

  v28 = v45;
  v29 = sub_10000D0FC(v45, qword_10097CD20);
  v31 = v43;
  v30 = v44;
  (*(v44 + 16))(v43, v29, v28);
  v52 = &protocol witness table for CGFloat;
  v51 = &type metadata for CGFloat;
  *&v50 = 0x4080E00000000000;
  v32 = v49;
  if (qword_10091FF10 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v2, qword_10097CD50);
  v18(v32, v33, v2);
  if (qword_10091FF18 != -1)
  {
    swift_once();
  }

  v34 = sub_10000D0FC(v2, qword_10097CD68);
  v18((v16 + v15[19]), v34, v2);
  v35 = (v16 + v15[20]);
  v35[3] = &type metadata for CGFloat;
  v35[4] = &protocol witness table for CGFloat;
  *v35 = 0x4080580000000000;
  v36 = (v16 + v15[21]);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x4077000000000000;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v37 = *(v42 + 32);
  v37(v16 + v15[7], v41, v2);
  v37(v16 + v15[6], v46, v2);
  v37(v16 + v15[8], v47, v2);
  sub_100012160(&v68, v16 + v15[9]);
  v37(v16 + v15[10], v48, v2);
  sub_100012160(&v65, v16 + v15[14]);
  sub_100012160(&v62, v16 + v15[15]);
  sub_100012160(&v59, v16 + v15[16]);
  sub_100012160(&v56, v16 + v15[11]);
  sub_100012160(&v53, v16 + v15[12]);
  (*(v30 + 32))(v16 + v15[13], v31, v28);
  sub_100012160(&v50, v16 + v15[17]);
  v37(v16 + v15[18], v49, v2);
  result = *&UIEdgeInsetsZero.top;
  v39 = *&UIEdgeInsetsZero.bottom;
  *v16 = *&UIEdgeInsetsZero.top;
  *(v16 + 16) = v39;
  return result;
}

uint64_t sub_10003FEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v104 = a2;
  v100 = sub_1007479B4();
  v102 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v101 = &v98 - v4;
  v103 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  __chkstk_darwin(v103);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092BC10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v98 - v12;
  __chkstk_darwin(v13);
  v119 = &v98 - v14;
  v15 = sub_10000C518(&unk_100923C20);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v120 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v98 - v19;
  __chkstk_darwin(v20);
  v116 = &v98 - v21;
  v22 = sub_10000C518(&unk_1009249B0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v117 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v98 - v26;
  __chkstk_darwin(v27);
  v114 = &v98 - v28;
  __chkstk_darwin(v29);
  v31 = &v98 - v30;
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v129 = &protocol witness table for Double;
  *&v130 = 0;
  v128 = &type metadata for Double;
  *&v127 = 0;
  if (qword_10091FF80 != -1)
  {
    swift_once();
  }

  v32 = sub_10000D0FC(v22, qword_10097CEA0);
  v33 = *(v23 + 16);
  v105 = v31;
  v33(v31, v32, v22);
  if (qword_10091FF20 != -1)
  {
    swift_once();
  }

  v34 = sub_10000D0FC(v22, qword_10097CD80);
  *&v123 = v23 + 16;
  *&v122 = v33;
  v33(v114, v34, v22);
  if (qword_10091FE50 != -1)
  {
    swift_once();
  }

  v106 = v23;
  v35 = sub_10000D0FC(v15, qword_10097CAF0);
  v107 = v16;
  v36 = *(v16 + 16);
  v36(v116, v35, v15);
  if (qword_10091FFC8 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v7, qword_10097CF78);
  v109 = v8;
  v38 = *(v8 + 16);
  v38(v119, v37, v7);
  if (qword_10091FF50 != -1)
  {
    swift_once();
  }

  v39 = sub_10000D0FC(v22, qword_10097CE10);
  (v122)(v115, v39, v22);
  if (qword_10091FE68 != -1)
  {
    swift_once();
  }

  v40 = sub_10000D0FC(v15, qword_10097CB38);
  v36(v118, v40, v15);
  if (qword_10091FFD8 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v7, qword_10097CFA8);
  v38(v121, v41, v7);
  if (qword_10091FF68 != -1)
  {
    swift_once();
  }

  v42 = sub_10000D0FC(v22, qword_10097CE58);
  (v122)(v117, v42, v22);
  if (qword_10091FE78 != -1)
  {
    swift_once();
  }

  v43 = sub_10000D0FC(v15, qword_10097CB68);
  v36(v120, v43, v15);
  if (qword_10091FFE0 != -1)
  {
    swift_once();
  }

  v44 = sub_10000D0FC(v7, qword_10097CFC0);
  v108 = v10;
  v110 = v7;
  v38(v10, v44, v7);
  if (qword_10091FEF0 != -1)
  {
    swift_once();
  }

  v45 = sub_100750B04();
  v46 = sub_10000D0FC(v45, qword_10097CCF0);
  v125 = v45;
  v126 = &protocol witness table for StaticDimension;
  v47 = sub_10000D134(&v124);
  v48 = (*(v45 - 8) + 16);
  v49 = *v48;
  (*v48)(v47, v46, v45);
  v50 = sub_100753804();
  v112 = v15;
  v111 = v48;
  if (v50)
  {
    v51 = v6;
    v52 = v36;
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v53 = qword_10093FF40;
  }

  else
  {
    v51 = v6;
    v52 = v36;
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v53 = qword_10093FF58;
  }

  v54 = v100;
  v55 = sub_10000D0FC(v100, v53);
  v56 = v102;
  v57 = v99;
  (*(v102 + 16))(v99, v55, v54);
  v58 = v101;
  (*(v56 + 32))(v101, v57, v54);
  sub_100747934();
  (*(v56 + 8))(v58, v54);
  if (qword_10091FE80 != -1)
  {
    swift_once();
  }

  v59 = v112;
  v60 = sub_10000D0FC(v112, qword_10097CB80);
  v61 = v103;
  v52(v51 + *(v103 + 20), v60, v59);
  sub_100747094();
  v62 = (v51 + *(v61 + 24));
  v62[3] = &type metadata for CGFloat;
  v62[4] = &protocol witness table for CGFloat;
  *v62 = v63;
  sub_1007470A4();
  v64 = *(v61 + 28);
  v113 = v51;
  v65 = (v51 + v64);
  v65[3] = &type metadata for CGFloat;
  v65[4] = &protocol witness table for CGFloat;
  *v65 = v66;
  v67 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v68 = v104;
  v69 = (v104 + v67[20]);
  v69[3] = &type metadata for CGFloat;
  v69[4] = &protocol witness table for CGFloat;
  *v69 = 0x4030000000000000;
  v70 = v122;
  if (qword_10091FF98 != -1)
  {
    swift_once();
  }

  v71 = sub_10000D0FC(v45, qword_10097CEE8);
  v72 = (v68 + v67[21]);
  v72[3] = v45;
  v72[4] = &protocol witness table for StaticDimension;
  v73 = sub_10000D134(v72);
  v74 = v49;
  v49(v73, v71, v45);
  if (qword_10091FFB0 != -1)
  {
    swift_once();
  }

  v75 = sub_10000D0FC(v22, qword_10097CF30);
  v76 = v68;
  v77 = v22;
  v70(v68 + v67[22], v75, v22);
  v78 = v112;
  if (qword_10091FFB8 != -1)
  {
    swift_once();
  }

  v79 = *&UIEdgeInsetsZero.top;
  v122 = *&UIEdgeInsetsZero.bottom;
  v123 = v79;
  v80 = sub_10000D0FC(v45, qword_10097CF48);
  v81 = (v68 + v67[23]);
  v81[3] = v45;
  v81[4] = &protocol witness table for StaticDimension;
  v82 = sub_10000D134(v81);
  v74(v82, v80, v45);
  v83 = v105;
  if (qword_10091FF78 != -1)
  {
    swift_once();
  }

  v84 = sub_10000D0FC(v45, qword_10097CE88);
  v85 = (v76 + v67[24]);
  v85[3] = v45;
  v85[4] = &protocol witness table for StaticDimension;
  v86 = sub_10000D134(v85);
  v74(v86, v84, v45);
  v87 = v122;
  *v76 = v123;
  *(v76 + 16) = v87;
  sub_100012160(&v130, v76 + 32);
  sub_100012160(&v127, v76 + 72);
  *(v76 + 112) = 0;
  *(v76 + 120) = 0;
  v88 = v67[8];
  v89 = *(v106 + 32);
  *&v123 = v89;
  v89(v76 + v88, v83, v77);
  v90 = v76 + v67[9];
  v98 = v77;
  v89(v90, v114, v77);
  v91 = *(v107 + 32);
  v92 = v78;
  v91(v76 + v67[10], v116, v78);
  v93 = *(v109 + 32);
  v94 = v110;
  v93(v76 + v67[11], v119, v110);
  v95 = v77;
  v96 = v123;
  (v123)(v76 + v67[12], v115, v95);
  v91(v76 + v67[13], v118, v92);
  v93(v76 + v67[14], v121, v94);
  v96(v76 + v67[15], v117, v98);
  v91(v76 + v67[16], v120, v92);
  v93(v76 + v67[17], v108, v94);
  sub_100012160(&v124, v76 + v67[18]);
  return sub_100044818(v113, v76 + v67[19]);
}

uint64_t sub_100040CE4()
{
  v0 = sub_10000C518(&unk_1009249B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v42 = &v36 - v11;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_100039C50(v15, qword_10097CAC0);
  v16 = sub_10000D0FC(v15, qword_10097CAC0);
  v57 = &type metadata for Double;
  v58 = &protocol witness table for Double;
  v55 = &protocol witness table for Double;
  *&v56 = 0;
  v54 = &type metadata for Double;
  *&v53 = 0;
  if (qword_10091FF28 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v0, qword_10097CD98);
  v18 = *(v1 + 16);
  v38 = v14;
  v18(v14, v17, v0);
  if (qword_10091FF50 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v0, qword_10097CE10);
  v18(v42, v19, v0);
  v18(v9, v19, v0);
  if (qword_10091FF68 != -1)
  {
    swift_once();
  }

  v39 = v9;
  v43 = v3;
  v20 = sub_10000D0FC(v0, qword_10097CE58);
  v40 = v6;
  v18(v6, v20, v0);
  v51 = &type metadata for CGFloat;
  v52 = &protocol witness table for CGFloat;
  *&v50 = 0x4030000000000000;
  if (qword_10091FEF0 != -1)
  {
    swift_once();
  }

  v41 = v1;
  v21 = sub_100750B04();
  v22 = sub_10000D0FC(v21, qword_10097CCF0);
  v48 = v21;
  v49 = &protocol witness table for StaticDimension;
  v23 = sub_10000D134(&v47);
  v24 = *(*(v21 - 8) + 16);
  v24(v23, v22, v21);
  if (qword_10091FF70 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v21, qword_10097CE70);
  v45 = v21;
  v46 = &protocol witness table for StaticDimension;
  v26 = sub_10000D134(&v44);
  v24(v26, v25, v21);
  if (qword_10091FF90 != -1)
  {
    swift_once();
  }

  v27 = *&UIEdgeInsetsZero.top;
  v36 = *&UIEdgeInsetsZero.bottom;
  v37 = v27;
  v28 = sub_10000D0FC(v0, qword_10097CED0);
  v18(v43, v28, v0);
  if (qword_10091FF98 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v21, qword_10097CEE8);
  v30 = (v16 + v15[16]);
  v30[3] = v21;
  v30[4] = &protocol witness table for StaticDimension;
  v31 = sub_10000D134(v30);
  v24(v31, v29, v21);
  v32 = (v16 + v15[17]);
  v32[3] = &type metadata for CGFloat;
  v32[4] = &protocol witness table for CGFloat;
  *v32 = 0x4044000000000000;
  v33 = v36;
  *v16 = v37;
  *(v16 + 16) = v33;
  sub_100012160(&v56, v16 + 32);
  sub_100012160(&v53, v16 + 72);
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  v34 = *(v41 + 32);
  v34(v16 + v15[8], v38, v0);
  v34(v16 + v15[9], v42, v0);
  v34(v16 + v15[10], v39, v0);
  v34(v16 + v15[11], v40, v0);
  sub_100012160(&v50, v16 + v15[12]);
  sub_100012160(&v47, v16 + v15[13]);
  sub_100012160(&v44, v16 + v15[14]);
  return (v34)(v16 + v15[15], v43, v0);
}

id sub_100041310()
{
  result = [objc_opt_self() systemBlueColor];
  qword_10097CAD8 = result;
  return result;
}

UIColor sub_10004134C()
{
  sub_100016C60(0, &qword_100923500);
  result.super.isa = sub_100753F24(1.0, 0.58431, 0.0, 1.0).super.isa;
  qword_10097CAE0 = result.super.isa;
  return result;
}

UIColor sub_1000413A8()
{
  sub_100016C60(0, &qword_100923500);
  v0 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8];
  v1 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8];
  v2 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  v3.super.isa = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  v4.super.isa = v0;
  v5.super.isa = v1;
  v6.super.isa = v2;
  result.super.isa = sub_100753F14(v4, v5, v6, v3).super.isa;
  qword_10097CAE8 = result.super.isa;
  return result;
}

uint64_t sub_1000414F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000C518(&unk_100923C20);
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  sub_10000C518(&unk_100923AE0);
  sub_100016C60(0, &qword_100923AB0);
  return sub_100743564();
}

void sub_100041600(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  sub_100016C60(0, &qword_100923AB0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  sub_10000D0FC(v8, a3);
  v9 = [v7 traitCollection];
  v10 = sub_100753C14();

  *a4 = v10;
}

uint64_t sub_100041704@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_100016C60(0, &qword_100923AB0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v13 = sub_10000C518(&qword_100923C40);
  sub_10000D0FC(v13, a3);
  v17[1] = v12;
  sub_100743464();
  v14 = [v12 traitCollection];
  v15 = sub_100753C14();

  result = (*(v9 + 8))(v11, v8);
  *a4 = v15;
  return result;
}

void sub_100041964()
{
  v0 = objc_opt_self();
  v1 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:0x8000 weight:UIFontWeightMedium];
  if (!v1)
  {
    v1 = [v0 preferredFontForTextStyle:UIFontTextStyleCaption1];
  }

  v2 = v1;
  v3 = sub_1002D4358();

  qword_10097CB98 = v3;
}

void sub_100041A08()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v1 = sub_1002D4358();

  qword_10097CBA0 = v1;
}

uint64_t sub_100041A68()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40);
  sub_100039C50(v7, qword_10097CBA8);
  sub_10000D0FC(v7, qword_10097CBA8);
  if (qword_100921058 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980E40);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100921050 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980E28);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

uint64_t sub_100041C48()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10097CBC0);
  v1 = sub_10000D0FC(v0, qword_10097CBC0);
  if (qword_100921060 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100980E58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100041D10()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40);
  sub_100039C50(v7, qword_10097CBD8);
  sub_10000D0FC(v7, qword_10097CBD8);
  if (qword_100921078 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980EA0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100921070 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980E88);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

uint64_t sub_100041EF0()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = sub_10000C518(&qword_100923C40);
  sub_100039C50(v7, qword_10097CBF0);
  sub_10000D0FC(v7, qword_10097CBF0);
  if (qword_100921090 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980EE8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v9(v3, v8, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

uint64_t sub_10004209C()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40);
  sub_100039C50(v7, qword_10097CC08);
  sub_10000D0FC(v7, qword_10097CC08);
  if (qword_100921088 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980ED0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100921080 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980EB8);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

uint64_t sub_10004227C()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40);
  sub_100039C50(v7, qword_10097CC20);
  sub_10000D0FC(v7, qword_10097CC20);
  if (qword_1009212E0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_1009815D8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_1009815C0);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743494();
}

uint64_t sub_10004245C()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10097CC38);
  sub_10000D0FC(v0, qword_10097CC38);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

uint64_t sub_1000424F8()
{
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_1009820B0);
  qword_10097CC68 = v0;
  unk_10097CC70 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_10097CC50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_1000425B4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleBody;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  qword_10097CC90 = sub_100750B04();
  unk_10097CC98 = &protocol witness table for StaticDimension;
  sub_10000D134(qword_10097CC78);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100042730(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v7 = sub_100750B04();
  v8 = sub_10000D0FC(v7, qword_100982098);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_10000D134(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

uint64_t sub_100042888(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_10000C518(&unk_1009249B0);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_10000C518(&unk_100923C30);
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  sub_1001A94F0(a3);
  sub_10000C518(&unk_100923AE0);
  sub_100743484();
  sub_100743484();
  return sub_100743544();
}

uint64_t sub_100042A68(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v10, a2);
  sub_10000D0FC(v10, a2);
  if (qword_100921058 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100980E40);
  v13 = *(*(v11 - 8) + 16);
  v13(v9, v12, v11);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v4 + 104);
  v15(v9, enum case for FontSource.useCase(_:), v3);
  if (qword_100921050 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v11, qword_100980E28);
  v13(v6, v16, v11);
  v15(v6, v14, v3);
  return sub_1007434D4();
}

uint64_t sub_100042CB0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v7, qword_10097CDB0);
  v14[1] = sub_10000D0FC(v7, qword_10097CDB0);
  if (qword_100921060 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100980E58);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_1007434D4();
}

uint64_t sub_100042EC0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v7, qword_10097CDC8);
  v14[1] = sub_10000D0FC(v7, qword_10097CDC8);
  if (qword_100921068 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100980E70);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_1007434D4();
}

uint64_t sub_1000430F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  *v6 = UIFontTextStyleFootnote;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v8 = UIFontTextStyleFootnote;
  return sub_1007434E4();
}

uint64_t sub_100043230()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v7, qword_10097CE10);
  sub_10000D0FC(v7, qword_10097CE10);
  if (qword_100921078 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100980EA0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_100921070 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_100980E88);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return sub_1007434D4();
}

uint64_t sub_100043470()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v7, qword_10097CE28);
  v14[1] = sub_10000D0FC(v7, qword_10097CE28);
  if (qword_100921090 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100980EE8);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_1007434D4();
}

uint64_t sub_100043674()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v7, qword_10097CE40);
  v14[1] = sub_10000D0FC(v7, qword_10097CE40);
  if (qword_100921090 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100980EE8);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_1007434D4();
}

uint64_t sub_100043878()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v7, qword_10097CE58);
  sub_10000D0FC(v7, qword_10097CE58);
  if (qword_100921088 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100980ED0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_100921080 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_100980EB8);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return sub_1007434D4();
}

uint64_t sub_100043B28(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_100750304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100750B04();
  sub_100039C50(v9, a2);
  sub_10000D0FC(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_100750B14();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100043C98()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v4, qword_10097CED0);
  sub_10000D0FC(v4, qword_10097CED0);
  if (qword_100921098 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980F00);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return sub_1007434E4();
}

uint64_t sub_100043E90(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750B04();
  sub_100039C50(v11, a2);
  sub_10000D0FC(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, a4);
  (*(*(v12 - 8) + 16))(v10, v13, v12);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v17[3] = v7;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_10000D134(v17);
  (*(v8 + 16))(v14, v10, v7);
  sub_100750B14();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10004405C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097CF18);
  sub_10000D0FC(v4, qword_10097CF18);
  if (qword_1009210A8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980F30);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100044244()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097CF48);
  sub_10000D0FC(v4, qword_10097CF48);
  if (qword_1009210A0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980F18);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

void sub_10004446C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_100753804();

  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_10004450C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000C518(&unk_10092BC10);
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  sub_10000C518(&unk_100923AE0);
  return sub_100743564();
}

void sub_100044598(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (sub_100753804())
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1007537E4();

    v4 = 1;
    if ((v5 & 1) == 0)
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

uint64_t sub_10004463C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000C518(&unk_10092BC10);
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  sub_10000C518(&unk_100923AE0);
  return sub_100743494();
}

uint64_t sub_100044714(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

void sub_1000447B0()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.1];
  v1 = [v0 CGColor];

  qword_10097D068 = v1;
}

uint64_t sub_100044818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CGFloat sub_1000448B0(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeTranslation(&v11, 0.0, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_10004490C(char a1)
{
  v2 = v1;
  v4 = *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v2[5];
    ObjectType = swift_getObjectType();
    (*(*(v7 + 8) + 16))(*(v2 + 16), ObjectType);
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v2[7];
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 16))(*(v2 + 16), v12);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 traitCollection];

    if (v15)
    {
      v16 = v15;
      if (sub_1007537D4())
      {
        v17 = sub_100753804();

        if (v17)
        {
          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            [v18 setUserInteractionEnabled:0];
          }

          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = 1;
            [v20 setUserInteractionEnabled:1];
LABEL_18:

            goto LABEL_20;
          }

          v22 = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    [v23 setUserInteractionEnabled:*(v2 + 16)];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v21 = v25;
    [v25 setUserInteractionEnabled:(v2[2] & 1) == 0];
    v22 = 0;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_20:
  v53 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v54 = 0;
  v26 = *(v2 + 16);
  if (v22)
  {
    v27 = swift_allocObject();
    v28 = 0;
    *(v27 + 16) = v2;
    *(v27 + 24) = v26;
    *(v27 + 32) = v4;
    v29 = sub_100045E74;
    v55 = sub_100045E74;
    v56 = v27;
    v30 = sub_100045E84;
    v51 = sub_100045E84;
    v52 = v2;
    v31 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    if (v2[2])
    {
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        [*(v32 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_contentView) _scrollToTopIfPossible:0];
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_100045DAC;
      v55 = sub_100045DAC;
      v56 = v27;
      v31 = sub_100045DB4;
      v53 = sub_100045DB4;
      v54 = v2;
      v34 = sub_100045DBC;
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_100045E2C;
      v55 = sub_100045E2C;
      v56 = v27;
      v31 = sub_100045E34;
      v53 = sub_100045E34;
      v54 = v2;
      v34 = sub_100045EC8;
    }

    v30 = v34;
    v51 = v34;
    v52 = v2;

    v28 = v2;
  }

  swift_retain_n();
  v35 = objc_opt_self();
  if (a1)
  {
    v49 = v29;
    v50 = v27;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_1000CF7B0;
    v48 = &unk_100864980;
    v36 = _Block_copy(&v45);

    v49 = v30;
    v50 = v2;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100144DD8;
    v48 = &unk_1008649A8;
    v37 = _Block_copy(&v45);

    [v35 animateWithDuration:4 delay:v36 options:v37 animations:0.4 completion:0.0];
    _Block_release(v37);
    _Block_release(v36);
    v49 = v31;
    v50 = v28;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_1000CF7B0;
    v48 = &unk_1008649D0;
    v38 = _Block_copy(&v45);

    [v35 animateWithDuration:4 delay:v38 options:0 animations:0.2 completion:0.2];
    _Block_release(v38);
    v39 = 0;
LABEL_32:

    return sub_1000164A8(v39);
  }

  v40 = swift_allocObject();
  v40[2] = &v55;
  v40[3] = &v53;
  v40[4] = &v51;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_100045DF0;
  *(v41 + 24) = v40;
  v49 = sub_100045E0C;
  v50 = v41;
  v45 = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_10011B528;
  v48 = &unk_100864958;
  v42 = _Block_copy(&v45);

  [v35 performWithoutAnimation:v42];
  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v39 = sub_100045DF0;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_100044FA4(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a1 + 56);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v8 = (*(*(v5 + 8) + 32))(ObjectType);

    v9 = *(v8 + 16);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (i >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v11 = *(v8 + 32 + 8 * i);
        if (v11)
        {
          [v11 setAlpha:0.0];
        }
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 56);
  v14 = v12;
  v15 = swift_getObjectType();
  v8 = (*(*(v13 + 8) + 40))(v15);

  if (qword_100920020 != -1)
  {
    goto LABEL_56;
  }

  v16 = *(v8 + 16);
  if (v16)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_15:

LABEL_16:
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = *(a1 + 56);
      v22 = v20;
      v23 = swift_getObjectType();
      v8 = (*(*(v21 + 8) + 48))(v23);

      v24 = *(v8 + 16);
      if (v24)
      {
        v25 = 0;
        while (v25 < *(v8 + 16))
        {
          v26 = *(v8 + 32 + 8 * v25);
          if (v26)
          {
            [v26 setAlpha:0.0];
          }

          if (v24 == ++v25)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_53;
      }

LABEL_23:
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = *(a1 + 40);
      v29 = v27;
      v30 = swift_getObjectType();
      v8 = (*(*(v28 + 8) + 32))(v30);

      v31 = *(v8 + 16);
      if (v31)
      {
        v32 = 0;
        while (v32 < *(v8 + 16))
        {
          v33 = *(v8 + 32 + 8 * v32);
          if (v33)
          {
            [v33 setAlpha:1.0];
          }

          if (v31 == ++v32)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

LABEL_31:
    }

    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      break;
    }

    v35 = *(a1 + 40);
    v36 = v34;
    v37 = swift_getObjectType();
    v8 = (*(*(v35 + 8) + 40))(v37);

    v38 = *(v8 + 16);
    if (!v38)
    {
LABEL_37:

      break;
    }

    v39 = 0;
    while (v39 < *(v8 + 16))
    {
      v40 = v39 + 1;
      v41 = *(v8 + 32 + 8 * v39);
      *&v58 = 0;
      v57 = 0x3FF0000000000000uLL;
      *(&v58 + 1) = 0x3FF0000000000000;
      v59 = 0uLL;
      [v41 setTransform:&v57];
      v39 = v40;
      if (v38 == v40)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_56:
      swift_once();
      v16 = *(v8 + 16);
      if (!v16)
      {
        break;
      }

LABEL_12:
      v17 = 0;
      v55 = xmmword_100923C58;
      v56 = xmmword_100923C48;
      v54 = xmmword_100923C68;
      while (v17 < *(v8 + 16))
      {
        v18 = v17 + 1;
        v19 = *(v8 + 32 + 8 * v17);
        v57 = v56;
        v58 = v55;
        v59 = v54;
        [v19 setTransform:&v57];
        v17 = v18;
        if (v16 == v18)
        {
          goto LABEL_15;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = *(v42 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton);

    v45 = 1.0;
    if (a2)
    {
      v45 = 0.0;
    }

    [v44 setAlpha:{v45, v54, v55, v56}];
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = *(v46 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);

    v49 = 0.0;
    if (a2)
    {
      v49 = 1.0;
    }

    [v48 setAlpha:{v49, v54, v55, v56}];
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    [v50 setNeedsLayout];
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_10057FE30();
  }
}

uint64_t sub_100045400(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[7];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[7];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_100920020 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1[5];
    v21 = swift_getObjectType();
    a1 = (*(*(v20 + 8) + 48))(v21);

    v6 = a1[2];
    if (!v6)
    {
    }

    v22 = 0;
    while (v22 < a1[2])
    {
      v23 = a1[v22 + 4];
      if (v23)
      {
        [v23 setAlpha:1.0];
      }

      if (v6 == ++v22)
      {
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v25 = xmmword_100923C58;
      v26 = xmmword_100923C48;
      v24 = xmmword_100923C68;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v27[0] = v26;
        v27[1] = v25;
        v27[2] = v24;
        [v17 setTransform:v27];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_10004563C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 40);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 56);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

uint64_t sub_100045838(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[5];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[5];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_100920028 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1[7];
    v21 = swift_getObjectType();
    a1 = (*(*(v20 + 8) + 48))(v21);

    v6 = a1[2];
    if (!v6)
    {
    }

    v22 = 0;
    while (v22 < a1[2])
    {
      v23 = a1[v22 + 4];
      if (v23)
      {
        [v23 setAlpha:1.0];
      }

      if (v6 == ++v22)
      {
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v25 = xmmword_100923C88;
      v26 = xmmword_100923C78;
      v24 = xmmword_100923C98;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v27[0] = v26;
        v27[1] = v25;
        v27[2] = v24;
        [v17 setTransform:v27];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_100045A74(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 56);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 56);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 40);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

uint64_t sub_100045C70(void (**a1)(uint64_t), void (**a2)(uint64_t), void (**a3)(uint64_t))
{
  v5 = *a1;

  v5(v6);

  v7 = *a2;

  v7(v8);

  v9 = *a3;

  v9(1);
}

uint64_t sub_100045D00()
{
  swift_unknownObjectWeakDestroy();
  sub_10000C4F0(v0 + 32);
  sub_10000C4F0(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_100045D74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045E3C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045ECC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097D070);
  sub_10000D0FC(v4, qword_10097D070);
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981848);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000460A4()
{
  v1 = v0;
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_1007537B4();

  if ((v8 & 1) != 0 && v1[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_isExpanded] == 1)
  {
    if (qword_1009213B0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (qword_1009213B0 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981848);
  (*(*(v9 - 8) + 16))(v6, v10, v9);
  (*(v3 + 104))(v6, enum case for FontSource.useCase(_:), v2);
  v14[3] = v2;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v14);
  (*(v3 + 16))(v11, v6, v2);
  sub_100750B14();
  return (*(v3 + 8))(v6, v2);
}

char *sub_100046378(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v33 = sub_100752AC4();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_sizeCategory] = 7;
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v20 = sub_100750534();
  v21 = sub_10000D0FC(v20, qword_100981848);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v19, v21, v20);
  v23 = *(v22 + 56);
  v23(v19, 0, 1, v20);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v24 = objc_allocWithZone(sub_100745C84());
  v25 = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v26 = v25;
  sub_100752A74();
  sub_10000C8CC(v36, &unk_100923520);
  sub_10000C8CC(v37, &unk_100923520);
  sub_100753C74();

  (*(v10 + 8))(v12, v33);
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_label;
  v29 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_label];
  v23(v19, 1, 1, v20);
  v30 = v27;
  v31 = v29;
  sub_100745BA4();

  [*&v27[v28] setAccessibilityIgnoresInvertColors:1];
  [v30 addSubview:*&v27[v28]];

  return v30;
}

double sub_100046820(double a1)
{
  v3 = sub_100750B04();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_label];
  [v11 sizeThatFits:{a1 - v12 - v13, 1.79769313e308}];
  if (qword_100920030 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v3, qword_10097D070);
  sub_1007502D4();
  sub_100750564();
  v14 = *(v7 + 8);
  v14(v10, v6);
  [v11 firstBaselineFromTop];
  sub_1000460A4();
  sub_1007502D4();
  sub_100750564();
  v14(v10, v6);
  (*(v17 + 8))(v5, v3);
  [v11 lastBaselineFromBottom];
  return a1;
}

id sub_100046B10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v5);
  sub_1007477B4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (qword_100920030 != -1)
  {
    swift_once();
  }

  v16 = sub_100750B04();
  sub_10000D0FC(v16, qword_10097D070);
  sub_1007502D4();
  sub_100750564();
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_label];
  [v19 sizeThatFits:{v13, v15}];
  v21 = v20;
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  MinY = CGRectGetMinY(v29);
  [v19 firstBaselineFromTop];
  v25 = MinY + v18 - v24;
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  return [v19 setFrame:{MinX, v25, CGRectGetWidth(v30), v21}];
}

id sub_100046F14()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_100046F74()
{
  v1 = [v0 accessibilityElements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1007532A4();

  return v3;
}

uint64_t sub_100047044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100047874(&qword_1009276F0, type metadata accessor for Key);
  v9 = sub_100752F44();
  v8(v9, a3, a4, a5);
}

uint64_t sub_100047114(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v48[1] = a2;
  v7 = a4;
  v52 = sub_10074F964();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100923E58);
  __chkstk_darwin(v9 - 8);
  v11 = v48 - v10;
  v12 = sub_10074FB54();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074B904();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 16))(v15, a3, v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10000C8CC(v11, &qword_100923E58);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_sizeCategory] = v7;
  if (v7 == 7)
  {
    if (v17 == 7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v4 setNeedsLayout];
    goto LABEL_10;
  }

  if (v17 == 7)
  {
    goto LABEL_9;
  }

  switch(v7)
  {
    case 6:
      if (v17 != 6)
      {
        goto LABEL_9;
      }

      break;
    case 5:
      if (v17 != 5)
      {
        goto LABEL_9;
      }

      break;
    case 4:
      if (v17 != 4)
      {
        goto LABEL_9;
      }

      break;
    default:
      if ((v17 - 7) > 0xFFFFFFFC || v17 != v7)
      {
        goto LABEL_9;
      }

      break;
  }

LABEL_10:
  v53 = v13;
  v54 = v12;
  v51 = v15;
  v18 = sub_10074FB24();
  [v5 setBackgroundColor:v18];

  v19 = [v5 traitCollection];
  if (v7 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v19 layoutDirection];
  sub_1007539B4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v5 setLayoutMargins:{v21, v23, v25, v27}];
  sub_10074B914();
  v28 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_label];
  v29 = sub_10074F914();
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v32 = [v29 length];
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = v30;
  *(v33 + 32) = v31;
  *(v33 + 40) = 1;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_100047814;
  *(v34 + 24) = v33;
  aBlock[4] = sub_100047834;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  aBlock[3] = &unk_100864B30;
  v35 = _Block_copy(aBlock);
  v36 = v30;
  v37 = v31;

  [v29 enumerateAttributesInRange:0 options:v32 usingBlock:{0x100000, v35}];

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    [v28 setAttributedText:v37];

    v39 = v49;
    sub_10074F974();
    v40 = v50;
    v41 = v52;
    v42 = (*(v50 + 88))(v39, v52);
    if (v42 == enum case for Paragraph.Alignment.left(_:))
    {
      v43 = 0;
      v45 = v53;
      v44 = v54;
    }

    else
    {
      v45 = v53;
      v44 = v54;
      if (v42 == enum case for Paragraph.Alignment.center(_:))
      {
        v43 = 1;
      }

      else if (v42 == enum case for Paragraph.Alignment.right(_:))
      {
        v43 = 2;
      }

      else if (v42 == enum case for Paragraph.Alignment.justified(_:))
      {
        v43 = 3;
      }

      else if (v42 == enum case for Paragraph.Alignment.localized(_:))
      {
        v43 = 4;
      }

      else
      {
        (*(v40 + 8))(v39, v41);
        v43 = 0;
      }
    }

    [v28 setTextAlignment:v43];
    v46 = v51;
    v47 = sub_10074FB34();
    [v28 setTextColor:v47];

    return (*(v45 + 8))(v46, v44);
  }

  return result;
}

uint64_t sub_1000477CC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10004785C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100047874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000478BC()
{
  v0 = sub_10000C518(&unk_100947360);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  *&v79 = &v77 - v2;
  v3 = sub_100741494();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10000C518(&unk_1009231A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A57A0;
  v80 = type metadata accessor for BoolUserDefaultsDebugSetting();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD00000000000001ALL;
  *(v8 + 64) = 0x8000000100766AB0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xD000000000000019;
  *(v8 + 88) = 0x8000000100766AD0;
  *(v8 + 96) = 0;
  sub_100741484();
  v9 = sub_100741464();
  v11 = v10;
  v12 = *(v4 + 8);
  v85 = v3;
  v81 = v12;
  v82 = v4 + 8;
  v12(v6, v3);
  v86 = v9;
  v87 = v11;
  sub_1007544E4();
  v84 = v7;
  *(v7 + 32) = v8;
  if (qword_100921F28 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v0, qword_100983450);
  v14 = sub_100752854();
  v78 = sub_100752824();
  v15 = ASKBuildTypeGetCurrent();
  v16 = sub_100753094();
  v18 = v17;
  if (v16 == sub_100753094() && v18 == v19)
  {
    goto LABEL_5;
  }

  v20 = sub_100754754();

  if (v20)
  {
    goto LABEL_7;
  }

  v67 = sub_100753094();
  v69 = v68;
  if (v67 == sub_100753094() && v69 == v70)
  {
LABEL_5:

LABEL_8:
    v21 = 1;
    goto LABEL_9;
  }

  v71 = sub_100754754();

  if (v71)
  {
LABEL_7:

    goto LABEL_8;
  }

  v72 = sub_100753094();
  v74 = v73;
  if (v72 == sub_100753094() && v74 == v75)
  {
  }

  else
  {
    v76 = sub_100754754();

    v21 = 0;
    if ((v76 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_100752844();
  sub_100752534();

  v21 = v86;
LABEL_9:
  v22 = v13;
  v23 = *(v1 + 16);
  v24 = v79;
  v23(v79, v22, v0);
  type metadata accessor for BoolPreferencesDebugSetting();
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD00000000000001BLL;
  *(v25 + 64) = 0x8000000100766AF0;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  *(v25 + 88) = v21 & 1;
  v23(v25 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v24, v0);
  v26 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v26 = v78;
  v26[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v27 = sub_100741464();
  v29 = v28;
  v77 = v14;
  v30 = v81;
  v81(v6, v85);
  v86 = v27;
  v87 = v29;
  sub_1007544E4();
  (*(v1 + 8))(v24, v0);

  v31 = v84;
  *(v84 + 40) = v25;
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 56) = 0xD000000000000025;
  *(v33 + 64) = 0x8000000100766B10;
  *(v33 + 72) = 0;
  *(v33 + 80) = 0xD000000000000021;
  *(v33 + 88) = 0x8000000100766B40;
  *(v33 + 96) = 0;
  sub_100741484();
  v34 = sub_100741464();
  v36 = v35;
  v37 = v85;
  v30(v6, v85);
  v86 = v34;
  v87 = v36;
  sub_1007544E4();
  *(v32 + 48) = v33;
  v38 = swift_allocObject();
  *(v38 + 56) = 0x646F4D206F6D6544;
  *(v38 + 64) = 0xE900000000000065;
  *(v38 + 72) = 0;
  *(v38 + 80) = 0x65646F4D6F6D6564;
  *(v38 + 88) = 0xE800000000000000;
  *(v38 + 96) = 0;
  sub_100741484();
  v39 = sub_100741464();
  v41 = v40;
  v30(v6, v37);
  v86 = v39;
  v87 = v41;
  sub_1007544E4();
  *(v32 + 56) = v38;
  v42 = swift_allocObject();
  v79 = xmmword_1007A7210;
  *(v42 + 16) = xmmword_1007A7210;
  v43 = swift_allocObject();
  *(v43 + 56) = 0xD00000000000001ALL;
  *(v43 + 64) = 0x8000000100766B70;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0xD000000000000013;
  *(v43 + 88) = 0x8000000100766B90;
  *(v43 + 96) = 0;
  sub_100741484();
  v44 = sub_100741464();
  v46 = v45;
  v47 = v85;
  v30(v6, v85);
  v86 = v44;
  v87 = v46;
  sub_1007544E4();
  v78 = v42;
  *(v42 + 32) = v43;
  v48 = sub_100752804();
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0x6E776F6E6B6E55;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE700000000000000;
  }

  type metadata accessor for InfoDebugSetting();
  v52 = swift_allocObject();
  v52[7] = 0x697372655620534ALL;
  v52[8] = 0xEA00000000006E6FLL;
  v52[9] = v50;
  v52[10] = v51;

  sub_100741484();
  v53 = sub_100741464();
  v55 = v54;
  v30(v6, v47);
  v86 = v53;
  v87 = v55;
  sub_1007544E4();

  *(v42 + 40) = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = v79;
  type metadata accessor for DebugSection();
  v57 = swift_allocObject();
  sub_100741484();
  v58 = sub_100741464();
  v60 = v59;
  v61 = v47;
  v30(v6, v47);
  v57[2] = v58;
  v57[3] = v60;
  v57[4] = 0;
  v57[5] = 0xE000000000000000;
  v57[6] = v84;
  *(v56 + 32) = v57;
  v62 = swift_allocObject();
  sub_100741484();
  v63 = sub_100741464();
  v65 = v64;
  v30(v6, v61);
  v62[2] = v63;
  v62[3] = v65;
  v62[4] = 0x697263536176614ALL;
  v62[5] = 0xEA00000000007470;
  v62[6] = v78;
  *(v56 + 40) = v62;
  return v56;
}

id sub_100048204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004825C(uint64_t a1)
{
  v49 = a1;
  v1 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_10074F654();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v8 - 8);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  sub_10000C518(&qword_100923E90);
  v19 = *(sub_10074F584() - 8);
  v54 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v46 = v21;
  *(v21 + 16) = xmmword_1007A7250;
  v57 = v21 + v20;
  v59 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v58 = 0x4030000000000000;
  v59 = 0x4020000000000000;
  sub_10074F5F4();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v50 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v5 + 104);
  v55 = v5 + 104;
  v51 = v27;
  v52 = v4;
  (v27)(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v59) = 0;
  sub_10074F614();
  v59 = 0;
  sub_10074F614();
  v56 = v18;
  v29 = v3;
  v41 = v15;
  sub_10074F544();
  v59 = 0x3FF0000000000000;
  sub_10074F614();
  v58 = 0x4034000000000000;
  v59 = 0x4024000000000000;
  sub_10074F5F4();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v51(v7, v50, v4);
  LOBYTE(v59) = 0;
  sub_10074F614();
  v59 = 0;
  sub_10074F614();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v45 = left;
  v39 = v12;
  sub_10074F544();
  v58 = 0x4000000000000000;
  v59 = 0x3FF8000000000000;
  sub_10074F5F4();
  v48.i32[0] = v49 < 2;
  LOBYTE(v59) = v49 < 2;
  sub_10074F614();
  v59 = 0x4034000000000000;
  sub_10074F614();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10074F5F4();
  v43 = vdupq_n_s64(0x4041000000000000uLL);
  *v7 = v43;
  v40 = v7;
  v32 = v50;
  v33 = v51;
  v51(v7, v50, v52);
  v59 = 0;
  sub_10074F614();
  v47 = v29;
  sub_10074F544();
  v42 = 2 * v31 + v54;
  v59 = 0x4000000000000000;
  sub_10074F614();
  LOBYTE(v59) = v48.i8[0];
  sub_10074F614();
  v59 = 0x4034000000000000;
  sub_10074F614();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10074F5F4();
  v34 = v40;
  *v40 = v43;
  v33(v34, v32, v52);
  sub_1007535A4();
  v59 = 0;
  sub_10074F614();
  sub_10074F544();
  v35 = 4 * v54;
  v58 = 0x4000000000000000;
  v59 = 0x4004000000000000;
  sub_10074F5F4();
  LODWORD(v49) = v49 < 3;
  LOBYTE(v59) = v49;
  LOBYTE(v58) = v48.i8[0];
  sub_10074F5F4();
  v59 = 0x4038000000000000;
  sub_10074F614();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10074F5F4();
  v48 = vdupq_n_s64(0x404A000000000000uLL);
  *v34 = v48;
  v36 = v50;
  v37 = v51;
  v51(v34, v50, v52);
  v59 = 0;
  sub_10074F614();
  sub_10074F544();
  v54 += v35;
  v59 = 0x4008000000000000;
  sub_10074F614();
  LOBYTE(v59) = v49;
  sub_10074F614();
  v59 = 0x4038000000000000;
  sub_10074F614();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10074F5F4();
  *v34 = v48;
  v37(v34, v36, v52);
  v59 = 0;
  sub_10074F614();
  sub_10074F544();
  return v46;
}

unint64_t sub_100048CC0()
{
  result = qword_100923E98;
  if (!qword_100923E98)
  {
    sub_100742674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923E98);
  }

  return result;
}

uint64_t sub_100048D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100741264();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  __chkstk_darwin(v17);
  v40 = v36 - v18;
  sub_100742654();
  sub_100742654();
  v38 = *(v5 + 48);
  v19 = v38(v16, 1, v4);
  v39 = a2;
  v37 = v5;
  if (v19 == 1)
  {
    sub_10000C8CC(v16, &unk_100923970);
    v20 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v16, v4);
    sub_100748964();
    sub_100752754();
    v21 = v5;
    v20 = aBlock;
    if (aBlock)
    {
      sub_100742664();
      sub_100748944();

      v22 = v37;
      (*(v37 + 8))(v7, v4);
      v23 = v40;
      sub_10000C8CC(v40, &unk_100923970);
      v20 = 1;
      (*(v22 + 56))(v13, 0, 1, v4);
      sub_1000498A8(v13, v23);
    }

    else
    {
      (*(v21 + 8))(v7, v4);
    }
  }

  sub_10000C518(&qword_100930CA0);
  v24 = sub_100752DE4();
  v25 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  sub_100742664();
  v26 = sub_100753064();

  sub_1000497C4(v40, v10);
  if (v38(v10, 1, v4) == 1)
  {
    v28 = 0;
  }

  else
  {
    sub_100741204(v27);
    v28 = v29;
    (*(v37 + 8))(v10, v4);
  }

  v30 = [v25 openApplicationWithBundleIdentifier:v26 payloadURL:v28 universalLinkRequired:{v20, v36[0], v36[1], v36[2], v36[3]}];

  v45 = sub_100049834;
  v46 = v24;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100049514;
  v44 = &unk_100864B78;
  v31 = _Block_copy(&aBlock);

  [v30 addSuccessBlock:v31];
  _Block_release(v31);
  v32 = swift_allocObject();
  v33 = v39;
  v32[2] = a1;
  v32[3] = v33;
  v32[4] = v24;
  v45 = sub_10004989C;
  v46 = v32;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100049748;
  v44 = &unk_100864BC8;
  v34 = _Block_copy(&aBlock);

  [v30 addErrorBlock:v34];
  _Block_release(v34);

  sub_10000C8CC(v40, &unk_100923970);
  return v24;
}

uint64_t sub_100049428()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_100752DB4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10004951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v3 = sub_100752E44();
  sub_10000D0FC(v3, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v9[3] = v8;
  v4 = sub_10000D134(v9);
  (*(*(v8 - 8) + 16))(v4);
  sub_100752444();
  sub_10000C8CC(v9, &unk_100923520);
  sub_100752D04();

  v5 = sub_100742644();
  if (!v5)
  {
    return sub_100752DA4();
  }

  sub_10052AB60(v5, 1, a3);
  sub_100752D54();
}

void sub_100049750(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000497C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004983C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100049854()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000498A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100049920(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_baseGradientView;
  v10 = type metadata accessor for GradientView();
  *&v4[v9] = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientView;
  *&v4[v11] = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientMaskView;
  *&v4[v12] = [objc_allocWithZone(v10) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_bottomRightOverlayView;
  *&v4[v13] = [objc_allocWithZone(v10) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for MultiCornerGradientView();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setRasterizationScale:v18];
  return v14;
}

uint64_t sub_100049AEC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors) = a1;

  v5 = sub_10011CDF0(v4, v3);

  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + v2);
    if (v7 >> 62)
    {
      result = sub_100754664();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *((swift_isaMask & *v1) + 0xF0);

    return v8();
  }

  return result;
}

void sub_100049BD0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MultiCornerGradientView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_baseGradientView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientView];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientMaskView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_bottomRightOverlayView];
  [v0 bounds];
  [v4 setFrame:?];
}

void sub_100049D24()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_baseGradientView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_baseGradientView] removeFromSuperview];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientMaskView] removeFromSuperview];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_bottomRightOverlayView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_bottomRightOverlayView] removeFromSuperview];
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v2 setBackgroundColor:v7];

  v8 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors;
  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors];
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 <= 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_42;
      }

      v6 = type metadata accessor for GradientView();
      v22 = [objc_allocWithZone(v6) init];
      v23 = *&v2[v3];
      *&v2[v3] = v22;
      v24 = v22;

      v5 = sub_10000C518(&unk_1009231A0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1007A7210;
      v1 = *&v2[v8];
      if ((v1 & 0xC000000000000001) != 0)
      {

        v69 = sub_100754574();

        v26 = v69;
        v1 = *&v2[v8];
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v26 = *(v1 + 32);
      }

      *(v25 + 32) = v26;
      if ((v1 & 0xC000000000000001) != 0)
      {

        v71 = sub_100754574();

        v27 = v71;
      }

      else
      {
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v27 = *(v1 + 40);
      }

      *(v25 + 40) = v27;
      *&v24[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v25;

      sub_100037ED0();

      v28 = *&v2[v3];
      v1 = &stru_1008F2000;
      v29 = [v28 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

      v30 = *&v2[v3];
      v31 = [v30 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1007A7210;
      v32 = *&v2[v8];
      if ((v32 & 0xC000000000000001) != 0)
      {
        goto LABEL_56;
      }

      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v33 = *(v32 + 48);
LABEL_28:
        *(v5 + 32) = v33;
        if ((v32 & 0xC000000000000001) != 0)
        {
LABEL_61:

          v74 = sub_100754574();

          v34 = v74;
          goto LABEL_31;
        }

        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v34 = *(v32 + 56);
LABEL_31:
          *(v5 + 40) = v34;
          v35 = [objc_allocWithZone(v6) init];
          *&v35[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v5;

          sub_100037ED0();
          sub_100037D2C(&off_100861770);
          v36 = v35;
          v37 = [v36 *(v1 + 1072)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

          v38 = [v36 *(v1 + 1072)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

          v39 = [v36 *(v1 + 1072)];
          [v39 setMask:0];

          v40 = *&v2[v4];
          *&v2[v4] = v36;

          sub_10004A980();
          [v2 addSubview:*&v2[v3]];
          [v2 addSubview:{*&v2[v4], v75}];
          goto LABEL_42;
        }

LABEL_64:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v77 = type metadata accessor for GradientView();
    v41 = [objc_allocWithZone(v77) init];
    v42 = *&v2[v3];
    *&v2[v3] = v41;
    v43 = v41;

    sub_10000C518(&unk_1009231A0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1007A7210;
    v44 = *&v2[v8];
    if ((v44 & 0xC000000000000001) != 0)
    {

      v75 = sub_100754574();

      v45 = v75;
      v44 = *&v2[v8];
    }

    else
    {
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_55:
        __break(1u);
LABEL_56:

        v73 = sub_100754574();

        v33 = v73;
        v32 = *&v2[v8];
        goto LABEL_28;
      }

      v45 = *(v44 + 40);
    }

    *(v1 + 32) = v45;
    if ((v44 & 0xC000000000000001) != 0)
    {

      v72 = sub_100754574();

      v46 = v72;
    }

    else
    {
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v46 = *(v44 + 48);
    }

    *(v1 + 40) = v46;
    *&v43[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v1;

    sub_100037ED0();

    v47 = *&v2[v3];
    v48 = [v47 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

    v49 = *&v2[v3];
    v50 = [v49 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

    v51 = [objc_allocWithZone(v77) init];
    v52 = *&v2[v4];
    *&v2[v4] = v51;
    v53 = v51;

    v54 = *&v2[v8];
    if ((v54 & 0xC000000000000001) != 0)
    {

      v56 = sub_100754574();

      v57 = &stru_1008F2000;
      v55 = &selRef_initWithTitle_style_target_action_;
    }

    else
    {
      v55 = &selRef_initWithTitle_style_target_action_;
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v56 = *(v54 + 32);
      v57 = &stru_1008F2000;
    }

    [v53 v55[51]];

    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1007A7210;
    *(v58 + 32) = [v6 clearColor];
    v59 = [v6 blackColor];
    v60 = [v59 colorWithAlphaComponent:0.2];

    *(v58 + 40) = v60;
    v61 = [objc_allocWithZone(v77) init];
    *&v61[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v58;

    sub_100037ED0();
    sub_100037D2C(&off_100861740);
    v62 = v61;
    v63 = [v62 v57[67].name];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

    v64 = [v62 v57[67].name];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

    v65 = [v62 v57[67].name];
    [v65 setMask:0];

    v66 = *&v2[v5];
    *&v2[v5] = v62;

    v67 = *&v2[v4];
    [v67 addSubview:v62];

    sub_10004A980();
    [v2 addSubview:*&v2[v3]];
    [v2 addSubview:{*&v2[v4], v76}];
    goto LABEL_42;
  }

  v10 = sub_100754664();
  if (v10 > 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v10 == 1)
  {
    v20 = *&v2[v8];
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = sub_100754574();
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v21 = *(v20 + 32);
    }

    [v2 setBackgroundColor:v21];

    goto LABEL_42;
  }

  if (v10 == 2)
  {
    v11 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
    v12 = *&v2[v3];
    *&v2[v3] = v11;
    v13 = v11;

    sub_10000C518(&unk_1009231A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A7210;
    v5 = *&v2[v8];
    if ((v5 & 0xC000000000000001) != 0)
    {

      v68 = sub_100754574();

      v14 = v68;
      v5 = *&v2[v8];
      goto LABEL_8;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v14 = *(v5 + 40);
LABEL_8:
      *(v6 + 32) = v14;
      if ((v5 & 0xC000000000000001) != 0)
      {

        v70 = sub_100754574();

        v15 = v70;
        goto LABEL_11;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v5 + 32);
LABEL_11:
        *(v6 + 40) = v15;
        *&v13[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v6;

        sub_100037ED0();

        v16 = *&v2[v3];
        v17 = [v16 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

        v18 = *&v2[v3];
        v19 = [v18 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

        [v2 addSubview:{*&v2[v3], v75}];
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_42:
  [v2 setNeedsLayout];

  [v2 setNeedsDisplay];
}

void sub_10004A980()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors);
  if (v2 >> 62)
  {
    if (sub_100754664() < 3)
    {
      return;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
    return;
  }

  sub_10000C518(&unk_1009231A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A7210;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 clearColor];
  *(v3 + 40) = [v4 whiteColor];
  v5 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v3;

  sub_100037ED0();
  sub_100037D2C(&off_100861710);
  v6 = v5;
  v7 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

  v8 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.0, 1.0}];

  v9 = [v6 layer];
  [v9 setMask:0];

  v10 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientMaskView;
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientMaskView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientMaskView) = v6;

  v12 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientView) layer];
  v13 = [*(v1 + v10) layer];
  [v12 setMask:v13];
}

id sub_10004AC28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiCornerGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10004ACFC()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientView;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_secondaryGradientMaskView;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_bottomRightOverlayView;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_10004ADF0()
{
  v1 = sub_1007511D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v0 + 424))
  {
    sub_10004B084(v0 + 56, v7);
    sub_10000C824(v0 + 224, v11);
    sub_10000C824(v0 + 304, v13);
    sub_10000C824(v0 + 344, &v14);
    sub_10000C824(v0 + 384, &v15);
    sub_10004B0E0();
  }

  else
  {
    sub_10000E3C8(v0, v7);
    sub_10000C824(v0 + 224, &v8);
    sub_10000C824(v0 + 264, &v10);
    sub_10000C824(v0 + 344, &v12);
    sub_10000E400();
  }

  sub_1007511E4();
  swift_getKeyPath();
  sub_10004B1D0(v0 + 160, v7);
  sub_10000C824(v0 + 224, &v9);
  sub_10000C824(v0 + 344, v11);
  sub_10000C824(v0 + 384, v13);
  sub_10004B22C();

  sub_1007511C4();

  sub_10004B280(v7);
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_10004B0E0()
{
  result = qword_100923EF0;
  if (!qword_100923EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923EF0);
  }

  return result;
}

uint64_t sub_10004B134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007537E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004B164(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

unint64_t sub_10004B22C()
{
  result = qword_100923EF8;
  if (!qword_100923EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923EF8);
  }

  return result;
}

uint64_t sub_10004B2E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 425))
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

uint64_t sub_10004B328(uint64_t result, int a2, int a3)
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
    *(result + 424) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 425) = 1;
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

    *(result + 425) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10004B3E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_10004B424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_10004B46C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10004B500()
{
  v0 = sub_1007511D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004ADF0();
  sub_100751254();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_10004B624()
{
  v0 = sub_1007511D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004ADF0();
  sub_100751244();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10004B738(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B890();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_10004B790()
{
  result = qword_10093EE10;
  if (!qword_10093EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EE10);
  }

  return result;
}

unint64_t sub_10004B7E8()
{
  result = qword_100923F00;
  if (!qword_100923F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923F00);
  }

  return result;
}

unint64_t sub_10004B890()
{
  result = qword_100923F08;
  if (!qword_100923F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923F08);
  }

  return result;
}

uint64_t sub_10004B908()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920158 != -1)
  {
    swift_once();
  }

  v4 = sub_100750B04();
  sub_10000D0FC(v4, qword_10097D330);
  sub_1007502D4();
  sub_100750564();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10004BA50()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920150 != -1)
  {
    swift_once();
  }

  v4 = sub_100750B04();
  sub_10000D0FC(v4, qword_10097D318);
  sub_1007502D4();
  sub_100750564();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10004BC28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004BC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = sub_1007416B4();
  __chkstk_darwin(v20);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = sub_10000C518(&unk_100923F68);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  sub_1000B529C();
  v19[1] = a1;
  result = sub_1007471B4();
  v13 = result;
  if (!(result >> 62))
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1007471A4();
    sub_100747194();
    sub_10000C518(&unk_100923AE0);
    sub_100743484();
    v17 = sub_10000C518(&qword_100923F78);
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    v18 = OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
    swift_beginAccess();
    sub_10004BEFC(v11, v4 + v18);
    swift_endAccess();
    return [v4 setNeedsLayout];
  }

  result = sub_100754664();
  v14 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_100754574();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      sub_1000B5434(v16, a3);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004BEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923F68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_10004BF6C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon1;
  sub_1007433C4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v9] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon2;
  *&v4[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon3;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon4;
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_iconCount] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for CollectionLockupArtwork();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon1]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon2]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon3]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon4]];

  return v18;
}

uint64_t sub_10004C30C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_iconCount);
  switch(v2)
  {
    case 3:

      return sub_10004C6C8(a1);
    case 2:

      return sub_10004C434(a1);
    case 1:
      sub_1007433C4();
      sub_1007503E4();
      sub_10000C888(v4, v4[3]);
      sub_100750434();
      return sub_10000C620(v4);
    default:

      return sub_10004CA0C(a1);
  }
}

uint64_t sub_10004C434@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1007506E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_1007506B4();
  v12[0] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon1);
  sub_1007433C4();
  sub_1007503E4();
  sub_10000C888(v13, v14);
  sub_100750434();
  sub_1007506D4();
  sub_10000C620(v12);
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_10000C620(v13);
  v12[0] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon2);
  sub_1007503E4();
  sub_10000C888(v13, v14);
  sub_100750434();
  a1[3] = v3;
  a1[4] = &protocol witness table for DisjointStack;
  sub_10000D134(a1);
  sub_1007506D4();
  sub_10000C620(v12);
  v10(v9, v3);
  return sub_10000C620(v13);
}

uint64_t sub_10004C6C8@<X0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  v2 = sub_1007506E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_1007506B4();
  v17[0] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon1);
  sub_1007433C4();
  sub_1007503E4();
  sub_10000C888(v18, v19);
  sub_100750434();
  sub_1007506D4();
  sub_10000C620(v17);
  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_10000C620(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon2);
  sub_1007503E4();
  sub_10000C888(v18, v19);
  sub_100750434();
  sub_1007506D4();
  sub_10000C620(v17);
  v12(v8, v2);
  sub_10000C620(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon3);
  sub_1007503E4();
  sub_10000C888(v18, v19);
  sub_100750434();
  v13 = v16;
  v16[3] = v2;
  v13[4] = &protocol witness table for DisjointStack;
  sub_10000D134(v13);
  sub_1007506D4();
  sub_10000C620(v17);
  v12(v11, v2);
  return sub_10000C620(v18);
}

uint64_t sub_10004CA0C@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = sub_100750A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v25 = sub_1007507B4();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v26 = &v22 - v12;
  sub_100750794();
  sub_100750A04();
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon1);
  v22 = v1;
  v29[0] = v13;
  sub_1007433C4();
  sub_1007503E4();
  sub_10000C888(v32, v33);
  sub_100750434();
  sub_100750A14();
  sub_10000C620(v29);
  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_10000C620(v32);
  v32[0] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon2);
  sub_1007503E4();
  sub_10000C888(v29, v30);
  sub_100750434();
  v33 = v2;
  v34 = &protocol witness table for HorizontalStack;
  sub_10000D134(v32);
  sub_100750A14();
  sub_10000C620(v28);
  v14(v8, v2);
  sub_10000C620(v29);
  sub_1007507A4();
  v15 = *(v27 + 8);
  v27 += 8;
  v23 = v15;
  v15(v10, v25);
  sub_10000C620(v32);
  sub_100750A04();
  v16 = v22;
  v29[0] = *(v22 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon3);
  sub_1007503E4();
  sub_10000C888(v32, v33);
  sub_100750434();
  sub_100750A14();
  sub_10000C620(v29);
  v14(v5, v2);
  sub_10000C620(v32);
  v29[0] = *(v16 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon4);
  sub_1007503E4();
  sub_10000C888(v32, v33);
  sub_100750434();
  v30 = v2;
  v31 = &protocol witness table for HorizontalStack;
  sub_10000D134(v29);
  sub_100750A14();
  sub_10000C620(v28);
  v14(v8, v2);
  sub_10000C620(v32);
  v17 = v25;
  v33 = v25;
  v34 = &protocol witness table for VerticalStack;
  sub_10000D134(v32);
  v18 = v26;
  sub_1007507A4();
  v23(v18, v17);
  sub_10000C620(v29);
  sub_1007510E4();
  v19 = sub_100751104();
  v20 = v24;
  v24[3] = v19;
  v20[4] = &protocol witness table for Center;
  sub_10000D134(v20);
  return sub_100751114();
}

id sub_10004CF40(unint64_t a1, char *a2)
{
  v27 = a2;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v26 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10074F284();
  v6 = *(v25 - 8);
  *&v7 = __chkstk_darwin(v25).n128_u64[0];
  v24 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 setNeedsLayout];
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v11 = 0;
      v20 = &v2[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon4];
      v22 = &v2[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon3];
      v19 = &v2[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon2];
      v21 = &v2[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon1];
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = a1 & 0xC000000000000001;
      v23 = (v6 + 8);
      while (v29)
      {
        sub_100754574();
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
            sub_10074F294();
            v16 = sub_10074F254();
            (*v23)(v15, v25);
            sub_10074F374();
            sub_10074F324();
            sub_100743364();
            v17 = v14;
            [v17 setContentMode:sub_10074F184()];
            sub_100747FB4();
            sub_1007433A4();
            if (!sub_10074F1E4())
            {
              sub_10000D198();
              sub_100753E34();
            }

            sub_100743224();
            [v17 setContentMode:v16];

            v6 = sub_1007433C4();
            sub_10004D658();
            v2 = v27;
            sub_100744204();
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
      result = sub_100754664();
      v10 = result;
    }

    while (result);
  }

  return result;
}

id sub_10004D2A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionLockupArtwork();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10004D36C()
{
  sub_10004C30C(v3);
  sub_10000C888(v3, v3[3]);
  sub_100751254();
  v1 = v0;
  sub_10000C620(v3);
  return v1;
}

uint64_t sub_10004D488(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1007506A4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v12 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v13 = *(v8 + 104);
  (v13)(v11, enum case for DisjointStack.EdgePosition.anchored(_:), v7, v9);
  sub_100750694();
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v13(v11, v12, v7);
  return sub_100750664();
}

unint64_t sub_10004D658()
{
  result = qword_100925570;
  if (!qword_100925570)
  {
    sub_1007433C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925570);
  }

  return result;
}

void sub_10004D6B0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon1;
  sub_1007433C4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon2;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon3;
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon4;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_iconCount) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t type metadata accessor for DynamicTypeLinkedLabel()
{
  result = qword_100924050;
  if (!qword_100924050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10004D85C(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_10004D8B8(void *a1, uint64_t a2, void *a3)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v4 = v10.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v10, "setTextColor:", v5);
  v6 = [v4 textColor];
  if (v6)
  {
    v7 = v6;
    v8 = *&v4[qword_100924048];
    *&v4[qword_100924048] = v6;
    sub_100016C60(0, &qword_100923500);
    v9 = v7;
    if ((sub_100753FC4() & 1) == 0)
    {
      sub_10004E2D4();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10004D9A8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_10004D9EC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DynamicTypeLinkedLabel();
  v9.receiver = a1;
  v9.super_class = v5;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, "textAlignment");
  v8.receiver = v6;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "setTextAlignment:", a3);
  if ([v6 textAlignment] != v7)
  {
    sub_10004E2D4();
  }
}

id sub_10004DA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  *(v3 + qword_100924030) = _swiftEmptyArrayStorage;
  *(v3 + qword_100924038) = 0;
  *(v3 + qword_100924040) = 0;
  v12 = qword_100924048;
  sub_100016C60(0, &qword_100923500);
  *(v3 + v12) = sub_100753DD4();
  v13 = sub_100750534();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = sub_100745C74();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right, v22, v23}];
  [v19 setUserInteractionEnabled:1];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"labelTapped:"];
  [v19 addGestureRecognizer:v20];

  (*(v14 + 8))(a1, v13);
  return v19;
}

void sub_10004DD7C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_10004E2D4();
}

uint64_t sub_10004DDD8(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_100745C54();
  v6 = [v5 preferredContentSizeCategory];

  sub_100745C44();
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, a1, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_100745BA4();
  return sub_10004E2D4();
}

void sub_10004DF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = qword_100924030;
  swift_beginAccess();
  *&v4[v8] = _swiftEmptyArrayStorage;

  if (*(*&v4[v8] + 16))
  {
    v9 = &UIAccessibilityTraitLink;
  }

  else
  {
    v9 = &UIAccessibilityTraitStaticText;
  }

  [v4 setAccessibilityTraits:*v9];
  *&v4[qword_100924038] = a1;

  *&v4[qword_100924040] = a2;

  sub_100743064();
  v10 = objc_allocWithZone(NSString);
  v11 = sub_100753064();

  v12 = [v10 initWithString:v11];

  v13 = *(a3 + 16);
  if (v13)
  {
    v27 = UIAccessibilityTraitLink;
    v28 = v12;
    v14 = v13 - 1;
    v15 = (a3 + 56);
    v29 = v8;
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      v18 = sub_100753064();

      v19 = [v12 rangeOfString:v18 options:4];
      v21 = v20;

      if (v19 == sub_100740E44())
      {

        if (!v14)
        {
          break;
        }
      }

      else
      {
        swift_beginAccess();
        v22 = *&v4[v8];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v8] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_100254C1C(0, v22[2] + 1, 1, v22);
          *&v4[v8] = v22;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_100254C1C((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        v26 = &v22[4 * v25];
        v26[4] = v19;
        v26[5] = v21;
        v26[6] = v16;
        v26[7] = v17;
        v8 = v29;
        *&v4[v29] = v22;
        swift_endAccess();
        [v4 setAccessibilityTraits:v27];

        v12 = v28;
        if (!v14)
        {
          break;
        }
      }

      --v14;
      v15 += 4;
    }
  }

  sub_10004E2D4();
}

id sub_10004E1D8()
{
  [v0 setAttributedText:0];
  *&v0[qword_100924038] = 0;

  v1 = qword_100924030;
  swift_beginAccess();
  *&v0[v1] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  return [v0 setAccessibilityTraits:*v2];
}

void sub_10004E28C(void *a1)
{
  v1 = a1;
  sub_10004E2D4();
}

uint64_t sub_10004E2D4()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745B94();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000C8CC(v4, &unk_100928A40);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100016C60(0, &qword_100923AB0);
  v10 = sub_100745C54();
  v11 = sub_100753C14();

  v12 = *&v0[qword_100924038];
  v13 = *&v0[qword_100924048];

  v14 = v13;
  v15 = [v0 textAlignment];
  v50 = [v1 lineBreakMode];
  v16 = qword_100924030;
  swift_beginAccess();
  v17 = *&v1[v16];

  v18 = [v1 tintColor];
  v19 = v18;
  if (v12)
  {
    v42 = v15;
    v46 = v8;
    v47 = v6;
    v48 = v5;
    v49 = v1;

    v44 = v12;
    v45 = v11;
    v20 = sub_100743074();
    v53 = v17;
    v21 = v20;
    v22 = objc_allocWithZone(NSMutableAttributedString);
    v41 = v21;
    v23 = [v22 initWithAttributedString:v21];
    v24 = v14;
    v25 = v23;
    v26 = [v23 length];
    v52 = NSForegroundColorAttributeName;
    v43 = v24;
    v27 = v53;
    v40 = v26;
    [v25 addAttribute:? value:? range:?];
    v28 = *(v27 + 16);
    if (v28)
    {
      v51 = NSUnderlineStyleAttributeName;
      v29 = v27 + 56;
      do
      {
        v30 = *(v29 - 24);
        v31 = *(v29 - 16);
        if (v19)
        {

          v32 = v19;
        }

        else
        {
          v33 = objc_opt_self();

          v32 = [v33 systemBlueColor];
        }

        v34 = v19;
        [v25 addAttribute:v52 value:v32 range:{v30, v31}];
        if (UIAccessibilityButtonShapesEnabled())
        {
          isa = sub_1007534B4().super.super.isa;
          [v25 addAttribute:v51 value:isa range:{v30, v31}];
        }

        v29 += 32;
        --v28;
      }

      while (v28);
    }

    v36 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v36 setAlignment:v42];
    [v36 setLineBreakMode:v50];
    v37 = v36;
    [v25 addAttribute:NSParagraphStyleAttributeName value:v37 range:{0, v40}];

    v5 = v48;
    v1 = v49;
    v8 = v46;
    v6 = v47;
    v11 = v45;
  }

  else
  {

    v25 = 0;
  }

  v38 = sub_10004E7E8(v25, v11);
  [v1 setAttributedText:v38];

  return (*(v6 + 8))(v8, v5);
}

id sub_10004E7E8(void *a1, void *a2)
{
  v3 = a1;
  if (!a1 || !*(v2 + qword_100924040))
  {
    goto LABEL_6;
  }

  v5 = objc_opt_self();

  v6 = v3;
  v7 = [v5 configurationWithFont:a2];
  v8 = sub_100743AC4();

  if (!v8)
  {

LABEL_6:
    v22 = v3;
    return v3;
  }

  [v8 size];
  v10 = v9;
  v12 = v11;
  [a2 capHeight];
  v14 = floor((v13 - v12) * 0.5);
  v15 = [objc_opt_self() tintColor];
  v16 = [v8 imageWithTintColor:v15];

  v17 = [objc_opt_self() textAttachmentWithImage:v16];
  [v17 setBounds:{2.0, v14, v10, v12}];
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
  v18 = objc_allocWithZone(NSAttributedString);
  v19 = sub_100753064();
  v20 = [v18 initWithString:v19];

  [v3 appendAttributedString:v20];
  v21 = [objc_opt_self() attributedStringWithAttachment:v17];
  [v3 appendAttributedString:v21];

  return v3;
}

uint64_t sub_10004EA48(void *a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  result = sub_10004ECDC(a1);
  if ((v7 & 1) == 0)
  {
    v8 = result;
    v9 = qword_100924030;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = 0;
      for (i = (v10 + 56); ; i += 4)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(i - 1);
        v14 = *i;
        v17 = *(i - 3);
        v16 = *(i - 2);

        if (v8 >= v17 && v8 - v17 < v16)
        {
          break;
        }

        if (v11 == ++v12)
        {
        }
      }

      v19 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v5, 1, v19) == 1)
      {

        return sub_10000C8CC(v5, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(v15, 1, v14, v5);

        return (*(v20 + 8))(v5, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10004EC74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10004EA48(v4);
}

id sub_10004ECDC(void *a1)
{
  v2 = v1;
  v4 = [v1 attributedText];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v12 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v5];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v9, 1.79769313e308}];
    v14 = [objc_allocWithZone(NSLayoutManager) init];
    [v14 addTextContainer:v13];
    [v12 addLayoutManager:v14];
    [v13 setLineFragmentPadding:0.0];
    [v13 setLineBreakMode:{objc_msgSend(v2, "lineBreakMode")}];
    [v13 setMaximumNumberOfLines:{objc_msgSend(v2, "numberOfLines")}];
    [a1 locationInView:v7];
    v16 = v15;
    v18 = v17;
    [v14 usedRectForTextContainer:v13];
    v23 = [v14 characterIndexForPoint:v13 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v16 - ((v9 - v19) * 0.5 - v20), v18 - ((v11 - v21) * 0.5 - v22)}];

    v5 = v14;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL sub_10004EF0C()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = qword_100924030;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 56);
    v8 = sub_10000C518(&unk_100923210);

    sub_1007526C4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10000C8CC(v3, &unk_100923960);
    }

    else
    {

      sub_1003C0E00(v10, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v6 != 0;
}

BOOL sub_10004F0CC(void *a1)
{
  v1 = a1;
  v2 = sub_10004EF0C();

  return v2;
}

void sub_10004F130()
{

  v1 = *(v0 + qword_100924048);
}

id sub_10004F190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10004F1C8(uint64_t a1)
{

  v2 = *(a1 + qword_100924048);
}

uint64_t sub_10004F23C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB24();
  *a1 = result;
  return result;
}

uint64_t sub_10004F268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1007457A4() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)) || (sub_100741734() & 1) == 0)
  {
    return 0;
  }

  return sub_1007457A4();
}

uint64_t sub_10004F2F8(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  v7 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10000C518(&qword_1009242B8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v28 = v1;
  sub_100016B4C(v1 + v17, v16, &unk_100924290);
  sub_100016B4C(v29, &v16[v18], &unk_100924290);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10000C8CC(v16, &unk_100924290);
    }

    goto LABEL_6;
  }

  sub_100016B4C(v16, v12, &unk_100924290);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_100052BD8(v12);
LABEL_6:
    v21 = &qword_1009242B8;
    goto LABEL_13;
  }

  v22 = v26;
  sub_100052B74(&v16[v18], v26);
  if (sub_1007457A4() & 1) != 0 && *&v12[*(v2 + 20)] == *(v22 + *(v2 + 20)) && (sub_100741734())
  {
    v23 = sub_1007457A4();
    sub_100052BD8(v22);
    sub_100052BD8(v12);
    result = sub_10000C8CC(v16, &unk_100924290);
    if (v23)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_100052BD8(v22);
  sub_100052BD8(v12);
  v21 = &unk_100924290;
LABEL_13:
  sub_10000C8CC(v16, v21);
LABEL_14:
  sub_100016B4C(v28 + v17, v9, &unk_100924290);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10000C8CC(v9, &unk_100924290);
  }

  v24 = v27;
  sub_100052B74(v9, v27);
  sub_10004F72C();
  return sub_100052BD8(v24);
}

uint64_t sub_10004F6DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9F4();
  *a1 = result;
  return result;
}

uint64_t sub_10004F72C()
{
  v0 = sub_1007417F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  sub_100741784();
  sub_100741764();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(), sub_1007539C4(), v6 = sub_100753064(), , isa = sub_100741704().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_100052C98(), sub_10000C518(&unk_1009242E0), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_10004F9EC(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = sub_100741704().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_100052C98(), sub_10000C518(&unk_1009242E0), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_10004F9EC(v16);
  (*(v1 + 8))(v3, v0);
  sub_10000C8CC(v16, &unk_1009242D0);
  return sub_10000C8CC(v18, &unk_1009242D0);
}

uint64_t sub_10004F9EC(uint64_t a1)
{
  v49 = sub_10000C518(&qword_1009242B8);
  __chkstk_darwin(v49);
  v50 = &v43 - v3;
  v4 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_100016B4C(a1, &v51, &unk_1009242D0);
  if (!v52)
  {
    return sub_10000C8CC(&v51, &unk_1009242D0);
  }

  v47 = v12;
  v48 = v22;
  sub_100012160(&v51, v54);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  sub_100016B4C(v1 + v23, v15, &unk_100924290);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &unk_100924290;
    v26 = v15;
LABEL_21:
    sub_10000C8CC(v26, v25);
    return sub_10000C620(v54);
  }

  v43 = v19;
  v44 = v6;
  v45 = a1;
  v46 = v1;
  v28 = v48;
  sub_100052B74(v15, v48);
  v29 = v55;
  v30 = v56;
  sub_10000C888(v54, v55);
  v31 = v47;
  (*(v30 + 8))(v29, v30);
  sub_100052C34(v28, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v32 = v50;
  v33 = *(v49 + 48);
  sub_100016B4C(v31, v50, &unk_100924290);
  sub_100016B4C(v9, v32 + v33, &unk_100924290);
  if (v24(v32, 1, v16) == 1)
  {
    sub_10000C8CC(v9, &unk_100924290);
    sub_10000C8CC(v31, &unk_100924290);
    if (v24((v32 + v33), 1, v16) == 1)
    {
      sub_10000C8CC(v32, &unk_100924290);
LABEL_8:
      sub_100052BD8(v48);
      return sub_10000C620(v54);
    }

    goto LABEL_11;
  }

  v34 = v44;
  sub_100016B4C(v32, v44, &unk_100924290);
  if (v24((v32 + v33), 1, v16) == 1)
  {
    sub_10000C8CC(v9, &unk_100924290);
    sub_10000C8CC(v47, &unk_100924290);
    sub_100052BD8(v34);
LABEL_11:
    sub_10000C8CC(v32, &qword_1009242B8);
    v35 = v46;
    goto LABEL_18;
  }

  v36 = v43;
  sub_100052B74(v32 + v33, v43);
  v37 = sub_1007457A4();
  v35 = v46;
  if (v37 & 1) != 0 && *(v34 + *(v16 + 20)) == *(v36 + *(v16 + 20)) && (sub_100741734())
  {
    v38 = sub_1007457A4();
    sub_100052BD8(v36);
    sub_10000C8CC(v9, &unk_100924290);
    sub_10000C8CC(v47, &unk_100924290);
    sub_100052BD8(v34);
    sub_10000C8CC(v32, &unk_100924290);
    if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_100052BD8(v36);
    sub_10000C8CC(v9, &unk_100924290);
    sub_10000C8CC(v47, &unk_100924290);
    sub_100052BD8(v34);
    sub_10000C8CC(v32, &unk_100924290);
  }

LABEL_18:
  sub_100016B4C(v45, &v51, &unk_1009242D0);
  v39 = v52;
  if (!v52)
  {
    sub_100052BD8(v48);
    v25 = &unk_1009242D0;
    v26 = &v51;
    goto LABEL_21;
  }

  v40 = v53;
  sub_10000C888(&v51, v52);
  v41 = *(v35 + OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_objectGraph);
  v42 = v48;
  (*(v40 + 16))(v48, v41, v39, v40);
  sub_100052BD8(v42);
  sub_10000C620(&v51);
  return sub_10000C620(v54);
}

uint64_t sub_100050008()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v2 = sub_100747C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_currentState, &unk_100924290);

  return swift_deallocClassInstance();
}

void sub_10005010C()
{
  sub_100747C14();
  if (v0 <= 0x3F)
  {
    sub_1000501F0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000501F0()
{
  if (!qword_1009240E8)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(255);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_1009240E8);
    }
  }
}

uint64_t sub_100050268(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000502B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007457B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1007417F4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000503B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1007457B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1007417F4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000504B4()
{
  result = sub_1007457B4();
  if (v1 <= 0x3F)
  {
    result = sub_1007417F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100050564()
{
  result = qword_100924288;
  if (!qword_100924288)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924288);
  }

  return result;
}

uint64_t sub_1000505BC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000518C8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100050638(v6);
  return sub_1007545B4();
}

void sub_100050638(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100754704(v2);
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
        sub_10000C518(&qword_1009242C0);
        v6 = sub_100753324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100050970(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_100050748(0, v2, 1, a1);
  }
}

void sub_100050748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_1007417F4();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_100741744();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_100741744();

      LOBYTE(v20) = sub_100741724();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100050970(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_1007417F4();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_10005171C(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_1000511F8((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10005171C(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_100051690(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_100741744();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_100741744();

      LODWORD(v116) = sub_100741724();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_100741744();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_100741744();

        LODWORD(v32) = sub_100741724() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_1002558E0(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_1002558E0((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_1000511F8((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_10005171C(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_100051690(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_100741744();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_100741744();

    LOBYTE(v49) = sub_100741724();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1000511F8(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_1007417F4();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = a3 - 1;
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = v30 + 1;
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_100741744();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_100741744();

        LOBYTE(v37) = sub_100741724();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 1;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_100741744();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_100741744();

        LOBYTE(v21) = sub_100741724();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_100051690(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005171C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100051730(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_1009242C8);
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

void *sub_100051834(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100754664();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100632C90(v3, 0);
  sub_1004A1A28(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100051904(char **a1, double a2)
{
  v115 = a1;
  v4 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v4 - 8);
  v113 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = v109 - v7;
  v128 = sub_1007417F4();
  v122 = *(v128 - 8);
  __chkstk_darwin(v128);
  v121 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = v109 - v10;
  __chkstk_darwin(v11);
  v118 = v109 - v12;
  __chkstk_darwin(v13);
  v119 = v109 - v14;
  __chkstk_darwin(v15);
  v120 = v109 - v16;
  v130 = sub_1007457B4();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v111 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v117 = v109 - v19;
  __chkstk_darwin(v20);
  v116 = v109 - v21;
  __chkstk_darwin(v22);
  v127 = (v109 - v23);
  __chkstk_darwin(v24);
  v126 = v109 - v25;
  v125 = sub_10074F704();
  v134 = *(v125 - 1);
  __chkstk_darwin(v125);
  v27 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100747C14();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10000C518(&unk_10092E450);
  v123 = *(v132 - 8);
  v32 = __chkstk_darwin(v132);
  v131 = v109 - v33;
  v34 = OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v35 = *(v29 + 16);
  v133 = v2;
  v35(v31, v2 + OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v28, v32);
  v124 = v35;
  sub_100747C04();
  v36 = *(v29 + 8);
  v36(v31, v28);
  (v35)(v31, v2 + v34, v28);
  sub_100747B84();
  v36(v31, v28);
  sub_10074F694();
  v38 = v37;
  v39 = *(v134 + 8);
  v134 += 8;
  v40 = v125;
  v39(v27, v125);
  v124(v31, v133 + v34, v28);
  sub_100747B84();
  v36(v31, v28);
  sub_10074F634();
  v42 = v41;
  v39(v27, v40);
  v43 = v131;
  v44 = v132;
  swift_getKeyPath();
  sub_1007525B4();

  v134 = v140;
  swift_getKeyPath();
  v45 = v126;
  sub_1007525B4();

  v46 = v129;
  v47 = v129 + 104;
  v48 = *(v129 + 104);
  v49 = v127;
  v50 = v130;
  v48(v127, enum case for ShelfBackground.interactive(_:), v130);
  LOBYTE(v34) = sub_1007457A4();
  v53 = *(v46 + 8);
  v51 = v46 + 8;
  v52 = v53;
  (v53)(v49, v50);
  (v53)(v45, v50);
  if ((v34 & 1) == 0)
  {
    return (*(v123 + 8))(v43, v44);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v123 + 8))(v43, v44);
  }

  v55 = Strong;
  v109[2] = v47;

  v140 = sub_100051834(v56);
  sub_1000505BC(&v140);
  v110 = v48;
  v57 = v140;
  v58 = v134;
  v125 = v55;
  if (v140 < 0 || (v140 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v59 = sub_100754664();
  }

  else
  {
    v59 = *(v140 + 16);
  }

  v124 = v51;
  v115 = v52;
  if (!v59)
  {
    v127 = _swiftEmptyArrayStorage;
LABEL_30:

    if (!v127[2])
    {

      return (*(v123 + 8))(v131, v132);
    }

    v72 = v122;
    v73 = v127 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v74 = v114;
    v75 = v128;
    v126 = *(v122 + 16);
    (v126)(v114, v73, v128);

    v76 = v118;
    (*(v72 + 32))(v118, v74, v75);
    if (__OFADD__(sub_100741774(), v58))
    {
      goto LABEL_61;
    }

    sub_100741784();
    sub_100741764();
    swift_getKeyPath();
    sub_1007525B4();

    v77 = *(v140 + 16);

    v78 = sub_100741774();
    v79 = v130;
    v80 = v117;
    if ((v78 & 0x8000000000000000) == 0 && v78 < v77)
    {
      swift_getKeyPath();
      sub_1007525B4();

      v81 = v139;
      v82 = sub_100741774();
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v82 >= *(v81 + 16))
      {
        goto LABEL_64;
      }

      sub_10000C824(v81 + 40 * v82 + 32, v138);

      sub_10000C518(&qword_1009242A0);
      sub_10000C518(&qword_1009242A8);
      if (swift_dynamicCast())
      {
        sub_100012160(&v135, &v140);
        sub_10000C888(&v140, v141);
        sub_10074B004();
        sub_10000C620(&v140);
LABEL_41:
        swift_getKeyPath();
        sub_1007525B4();

        v83 = *(v140 + 16);

        v84 = sub_100741774();
        if ((v84 & 0x8000000000000000) == 0 && v84 < v83)
        {
          swift_getKeyPath();
          sub_1007525B4();

          v85 = v139;
          v86 = sub_100741774();
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v86 >= *(v85 + 16))
          {
            goto LABEL_65;
          }

          sub_10000C824(v85 + 40 * v86 + 32, v138);

          sub_10000C518(&qword_1009242A0);
          sub_10000C518(&qword_1009242A8);
          if (swift_dynamicCast())
          {
            sub_100012160(&v135, &v140);
            sub_10000C888(&v140, v141);
            sub_10074B004();
            sub_10000C620(&v140);
            v87 = enum case for ShelfBackground.none(_:);
LABEL_49:
            v88 = v129;
            v89 = *(v129 + 16);
            v90 = v111;
            v89(v111, v80, v79);
            LODWORD(v88) = (*(v88 + 88))(v90, v79);
            (v115)(v90, v79);
            v91 = 1.0;
            if (v88 == v87)
            {
              v92 = v126;
            }

            else
            {
              v93 = [v125 collectionViewLayout];
              isa = sub_100741704().super.isa;
              v95 = [v93 layoutAttributesForItemAtIndexPath:isa];

              v92 = v126;
              if (v95)
              {
                [v95 frame];
                v96 = CGRectGetMinX(v144) - v38 - a2;
                [v95 frame];
                Width = CGRectGetWidth(v145);

                v91 = (v96 + v42 + Width) / (v42 + Width);
                if (v91 >= 1.0)
                {
                  v91 = 1.0;
                }
              }
            }

            v98 = v112;
            v99 = v116;
            v89(v112, v116, v79);
            v100 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
            v101 = v76;
            v102 = v128;
            v92(v98 + v100[6], v101, v128);
            v103 = v117;
            v89((v98 + v100[7]), v117, v79);
            *(v98 + v100[5]) = v91;
            (*(*(v100 - 1) + 56))(v98, 0, 1, v100);
            v104 = OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
            v105 = v133;
            swift_beginAccess();
            v106 = v113;
            sub_100016B4C(v105 + v104, v113, &unk_100924290);
            swift_beginAccess();
            sub_100052B04(v98, v105 + v104);
            swift_endAccess();
            sub_10004F2F8(v106);

            sub_10000C8CC(v106, &unk_100924290);
            sub_10000C8CC(v98, &unk_100924290);
            v107 = v115;
            (v115)(v103, v79);
            (v107)(v99, v79);
            v108 = *(v122 + 8);
            v108(v121, v102);
            v108(v118, v102);
            return (*(v123 + 8))(v131, v132);
          }

          v137 = 0;
          v135 = 0u;
          v136 = 0u;
          sub_10000C8CC(&v135, &qword_1009242B0);
        }

        v87 = enum case for ShelfBackground.none(_:);
        v110(v80, enum case for ShelfBackground.none(_:), v79);
        goto LABEL_49;
      }

      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      sub_10000C8CC(&v135, &qword_1009242B0);
    }

    v110(v116, enum case for ShelfBackground.none(_:), v79);
    goto LABEL_41;
  }

  if (v59 < 1)
  {
    goto LABEL_60;
  }

  v60 = 0;
  v51 = v57 & 0xC000000000000001;
  v126 = (v122 + 8);
  v109[1] = v122 + 32;
  v127 = _swiftEmptyArrayStorage;
  v52 = &selRef_viewSafeAreaInsetsDidChange;
  while (1)
  {
    if (v51)
    {
      v61 = sub_100754574();
    }

    else
    {
      v61 = *(v57 + 8 * v60 + 32);
      swift_unknownObjectRetain();
    }

    if ([v61 representedElementCategory])
    {
      goto LABEL_20;
    }

    [v61 frame];
    v62 = CGRectGetMinX(v142) - v42 - a2;
    [v61 frame];
    v63 = CGRectGetMaxX(v143) - a2;
    if (v62 > v63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v62 > v38 || v38 >= v63)
    {
      goto LABEL_20;
    }

    v64 = [v61 indexPath];
    v65 = v120;
    sub_100741744();

    v66 = sub_100741774();
    (*v126)(v65, v128);
    if (!v58)
    {
      goto LABEL_57;
    }

    if (v66 == 0x8000000000000000 && v58 == -1)
    {
      break;
    }

    if (!(v66 % v58))
    {
      v67 = [v61 indexPath];
      sub_100741744();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_1002558B8(0, v127[2] + 1, 1, v127);
      }

      v69 = v127[2];
      v68 = v127[3];
      if (v69 >= v68 >> 1)
      {
        v127 = sub_1002558B8(v68 > 1, v69 + 1, 1, v127);
      }

      swift_unknownObjectRelease();
      v70 = v127;
      v127[2] = v69 + 1;
      (*(v122 + 32))(v70 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v69, v119, v128);
      goto LABEL_21;
    }

LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    if (v59 == ++v60)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100052A88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9F4();
  *a1 = result;
  return result;
}

uint64_t sub_100052AD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB24();
  *a1 = result;
  return result;
}

uint64_t sub_100052B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100924290);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052BD8(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100052C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100052C98()
{
  result = qword_10092DB20;
  if (!qword_10092DB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10092DB20);
  }

  return result;
}

uint64_t sub_100052D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_100745CD4();
  if (v7)
  {
    v8 = v7;
    v9 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {

      sub_100052F00(v6);
    }

    else
    {
      sub_1003C0E00(v8, 1, a3, v6);

      (*(v10 + 8))(v6, v9);
    }
  }

  return 3;
}

uint64_t sub_100052F00(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100052F68(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_10074CD14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920048 != -1)
  {
    v29 = v10;
    swift_once();
    v10 = v29;
  }

  v39 = v10;
  v38 = sub_100750F34();
  swift_allocObject();
  v37 = sub_100750F14();
  sub_100745CC4();
  v13 = sub_100038D38();
  v34 = a1;
  v14 = v13;
  if (qword_100921230 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  sub_10000D0FC(v15, qword_1009813C8);
  ObjectType = swift_getObjectType();
  v16 = [a5 traitCollection];
  v35 = a5;
  v17 = v16;
  sub_100753C14();

  v18 = sub_10074F3F4();
  v41 = v18;
  v33 = sub_100053540(&qword_10092AC70, &type metadata accessor for Feature);
  v42 = v33;
  v19 = sub_10000D134(v40);
  v20 = *(*(v18 - 8) + 104);
  v30[1] = v14;
  v31 = v20;
  v32 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v20(v19);
  sub_10074FC74();
  sub_10000C620(v40);
  sub_10074CD04();
  sub_10074CCE4();
  v21 = *(v9 + 8);
  v22 = v39;
  v21(v12, v39);
  v34 = sub_100745CB4();
  v30[0] = v23;
  if (qword_100921238 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v15, qword_1009813E0);
  v24 = v35;
  v25 = [v35 traitCollection];
  sub_100753C14();

  v41 = v18;
  v42 = v33;
  v26 = sub_10000D134(v40);
  v31(v26, v32, v18);
  sub_10074FC74();
  sub_10000C620(v40);
  sub_10074CD04();
  sub_10074CCE4();
  v21(v12, v22);
  sub_100053588(&xmmword_10097D0B0, v40);
  v44 = v38;
  v45 = &protocol witness table for LayoutViewPlaceholder;
  v43 = v37;
  sub_10000C824(v49, &v47);
  sub_10000C824(v48, &v46);
  v27 = sub_1001C51C4(v24, v40, a2);
  sub_1000535E4(v40);
  sub_10000C620(v48);
  sub_10000C620(v49);
  return v27;
}

void sub_100053408(int a1, int a2, int a3, int a4, id a5)
{
  v6 = v5;
  [a5 pageMarginInsets];
  v7 = (v5 + OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_insets);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  v12 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView);
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  sub_100743384(v21, v13);

  v14 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_displayName);
  sub_100745CB4();
  if (v15)
  {
    v16 = sub_100753064();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_alias);
  sub_100745CC4();
  if (v18)
  {
    v19 = sub_100753064();
  }

  else
  {
    v19 = 0;
  }

  [v17 setText:v19];
}

uint64_t sub_100053540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100053638()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v41 = &v34 - v1;
  v44 = sub_10074F654();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v34 - v8;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_10000C518(&qword_100923E90);
  v15 = *(sub_10074F584() - 8);
  v49 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v39 = v17;
  *(v17 + 16) = xmmword_1007A7250;
  v18 = v17 + v16;
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_10001CC10();
  sub_10074F5F4();
  v51 = 0x4030000000000000;
  v52 = 0x4020000000000000;
  sub_10074F5F4();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v48 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v50 + 104);
  v50 += 104;
  v25 = v44;
  v24(v3);
  v42 = v24;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v52) = 0;
  sub_10074F614();
  v52 = 0;
  v47 = v6;
  sub_10074F614();
  v43 = v18;
  v45 = v14;
  v46 = v11;
  sub_10074F544();
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_10074F5F4();
  v51 = 0x4034000000000000;
  v52 = 0x4024000000000000;
  sub_10074F5F4();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  (v24)(v3, v48, v25);
  LOBYTE(v52) = 0;
  sub_10074F614();
  v52 = 0;
  sub_10074F614();
  v28 = v49;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10074F544();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10074F5F4();
  v52 = 0x4034000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v44;
  v30 = v42;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_10074F614();
  v52 = 0;
  sub_10074F614();
  sub_10074F544();
  v35 = 2 * v28 + v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10074F5F4();
  v52 = 0x4034000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  (v30)(v3, v48, v29);
  sub_1007535A4();
  LOBYTE(v52) = 0;
  sub_10074F614();
  v52 = 0;
  sub_10074F614();
  sub_10074F544();
  v35 = 4 * v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10074F5F4();
  v52 = 0x4038000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v48;
  v32 = v44;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_10074F614();
  v52 = 0;
  sub_10074F614();
  sub_10074F544();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10074F5F4();
  v52 = 0x4038000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  (v42)(v3, v31, v32);
  LOBYTE(v52) = 0;
  sub_10074F614();
  v52 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_100924340 = v39;
  return result;
}

uint64_t sub_10005406C()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10074F654();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000C518(&qword_100923E90);
  v16 = *(sub_10074F584() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007A7250;
  v46 = v18 + v17;
  v51 = 0x4000000000000000;
  sub_10001CC10();
  sub_10074F614();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  v43 = v6;
  sub_10074F614();
  v41 = v15;
  v44 = v12;
  sub_10074F544();
  v51 = 0x4000000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10074F544();
  v51 = 0x4000000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  sub_10074F544();
  v35 = 2 * v28 + v48;
  v51 = 0x4000000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007535A4();
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  v34 = v9;
  sub_10074F544();
  v35 = 4 * v48;
  v51 = 0x4000000000000000;
  sub_10074F614();
  v51 = 0x4038000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  sub_10074F544();
  v51 = 0x4000000000000000;
  sub_10074F614();
  v51 = 0x4038000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_100924348 = v39;
  return result;
}

uint64_t sub_100054A78@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_100920848 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_10097F260;
  }

  else
  {
    if (qword_100920838 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_10097EF80;
  }

  return sub_100055CF8(v4, a1);
}

uint64_t sub_100054B68@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_100920860 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_10097F6B0;
  }

  else
  {
    if (qword_100920840 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_10097F0F0;
  }

  return sub_100055CF8(v4, a1);
}

double sub_100054C58()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  result = 16.0;
  if (v1 == 1)
  {
    return 10.0;
  }

  return result;
}

_UNKNOWN **sub_100054CBC()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = &off_100861838;
  if (v2 != 1)
  {
    v4 = [v0 currentTraitCollection];
    v5 = sub_100753804();

    if ((v5 & 1) == 0)
    {
      return &off_100861898;
    }
  }

  return v3;
}

double sub_100054D6C(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 12.0;
  }

  sub_100753804();
  return 112.0;
}

id sub_100054DD0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    if (qword_100920848 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_10097F260;
  }

  else
  {
    if (qword_100920838 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_10097EF80;
  }

  sub_100055CF8(v6, v24);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_100055DA8(v24, v2 + v7);
  swift_endAccess();
  v8 = [v3 currentTraitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == 1)
  {
    if (qword_100920860 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_10097F6B0;
  }

  else
  {
    if (qword_100920840 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_10097F0F0;
  }

  sub_100055CF8(v10, v24);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_100055DA8(v24, v2 + v11);
  swift_endAccess();
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 currentTraitCollection];
    [v14 horizontalSizeClass];

    v15 = [v3 currentTraitCollection];
    [v15 horizontalSizeClass];

    sub_10074F9B4();
  }

  v16 = sub_10006A9F4();
  v17 = [v3 currentTraitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = &off_100861838;
  if (v18 != 1)
  {
    v20 = [v3 currentTraitCollection];
    v21 = sub_100753804();

    if ((v21 & 1) == 0)
    {
      v19 = &off_100861898;
    }
  }

  sub_1000F6AF8(v19);

  v23.receiver = v1;
  v23.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v23, "layoutSubviews");
}

uint64_t sub_100055184(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1007479B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v50 - v15;
  if ([a1 horizontalSizeClass] == 1)
  {
    return (*(ObjectType + 312))(a1);
  }

  v50[0] = v16;
  v18 = v4;
  if ([a1 horizontalSizeClass] == 1)
  {
    v19 = 24.0;
    v20 = 12.0;
  }

  else
  {
    if (sub_100753804())
    {
      v19 = 20.0;
    }

    else
    {
      v19 = 16.0;
    }

    v20 = 112.0;
  }

  v21 = objc_opt_self();
  v22 = [v21 currentTraitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 == 1)
  {
    if (qword_100920848 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_10097F260;
  }

  else
  {
    if (qword_100920838 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_10097EF80;
  }

  v25 = v18;
  sub_100055CF8(v24, v60);
  v26 = [v21 currentTraitCollection];
  v27 = [v26 horizontalSizeClass];

  v28 = v50[0];
  if (v27 == 1)
  {
    if (qword_100920860 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_10097F6B0;
  }

  else
  {
    if (qword_100920840 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_10097F0F0;
  }

  sub_100055CF8(v29, v57);
  v30 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  sub_1002F1E5C(&v51);
  v31 = v54;
  v32 = v55;
  v33 = v56;
  sub_100055D54(&v51);
  if (v33)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v32;
  }

  *&v61[32] = v34;
  *&v61[33] = v35;
  v62 = 0;
  *&v58[32] = v34;
  *&v58[33] = v35;
  v59 = 0;
  if (sub_100753804())
  {
    v36 = v57;
  }

  else
  {
    v36 = v60;
  }

  sub_100055CF8(v36, &v51);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v37 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v37 = qword_10093FF58;
  }

  v38 = sub_10000D0FC(v9, v37);
  (*(v10 + 16))(v12, v38, v9);
  (*(v10 + 32))(v28, v12, v9);
  if ((v56 & 1) == 0 && v54 == 0.0 && v55 == 0.0)
  {
    sub_100747964();
    v40 = v39;
    sub_100747964();
    v54 = v40;
    v55 = v41;
    v56 = 0;
  }

  v42 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(&v51, a1, a2);
  v44 = v43;
  (*(v10 + 8))(v28, v9, v42);
  sub_100055D54(&v51);
  v45 = (a3 - (v19 + v20 + v44 - sub_100055B04(v60, v20 + v44, v35))) * 0.5;
  sub_10000C888(v61, v61[3]);
  sub_100750544();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v46;
  sub_10000C620(v61);
  sub_100012160(&v51, v61);
  sub_10000C888(v58, v58[3]);
  sub_100750544();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v47;
  sub_10000C620(v58);
  sub_100012160(&v51, v58);
  sub_100055CF8(v60, &v51);
  v48 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_100055DA8(&v51, v30 + v48);
  swift_endAccess();
  sub_100055CF8(v57, &v51);
  v49 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_100055DA8(&v51, v30 + v49);
  swift_endAccess();
  sub_100055D54(v57);
  return sub_100055D54(v60);
}

void sub_1000557A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1007504F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = sub_100743854();
  if (v10 >> 62)
  {
    v24 = v10;
    v25 = sub_100754664();
    v10 = v24;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == 1 && (a4 & 1) == 0)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetWidth(v27);
  }

  v22 = sub_10074F114();
  sub_10074F2A4();
  sub_100750504();
  v23 = (v7 + 8);
  if (v22)
  {
    sub_1007504C4();
  }

  else
  {
    sub_1007504B4();
  }

  (*v23)(v9, v6);
}

double sub_100055A64(double a1, double a2)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  [v2 center];
  v8 = a2 * 0.5;
  if (v6 == 1)
  {
    v8 = a2;
  }

  return v7 - (a1 * 0.5 - v8);
}

double sub_100055B04(void *a1, double a2, double a3)
{
  v6 = 0.0;
  if ((sub_100753804() & 1) == 0)
  {
    sub_10000C888(a1 + 14, a1[17]);
    sub_100750574();
    v8 = v7;
    sub_10000C888(a1 + 19, a1[22]);
    sub_100750574();
    v10 = v8 + v9;
    sub_10000C888(a1 + 24, a1[27]);
    v11 = [v3 traitCollection];
    sub_100750574();
    v13 = v12;

    if (v10 <= a3)
    {
      if (v10 + v13 <= a3)
      {
        return v13 * 0.5;
      }

      else
      {
        return (a3 - v10) * 0.5;
      }
    }
  }

  return v6;
}

id sub_100055CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100055E04(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  type metadata accessor for InAppPurchaseShowcaseLockupView();
  sub_100244520(v14, a7);
  if (qword_100921B18 != -1)
  {
    swift_once();
  }

  v15 = sub_100750B04();
  sub_10000D0FC(v15, qword_1009428B0);
  sub_1007502D4();
  sub_100750564();
  (*(v11 + 8))(v13, v10);
  return a2;
}

uint64_t sub_100056038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v4 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v4 - 8);
  v34 = &v31 - v5;
  v6 = sub_10074C3E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925560);
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  sub_100741D74();
  v36 = v3;
  v15 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView];
  v16 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_titleLabel);

  sub_10074EF34();
  if (v17)
  {
    v18 = sub_100753064();
  }

  else
  {
    v18 = 0;
  }

  v19 = &selRef_initWithTitle_style_target_action_;
  [v16 setText:v18];

  v20 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel);
  sub_100741D84();
  if (v21)
  {
    v22 = sub_100753064();
    v19 = &selRef_initWithTitle_style_target_action_;
  }

  else
  {
    v22 = 0;
  }

  [v20 v19[105]];

  v23 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel);
  sub_100741D64();
  if (v24)
  {
    v25 = sub_100753064();
  }

  else
  {
    v25 = 0;
  }

  [v23 v19[105]];

  v26 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_offerButton);
  v27 = sub_10074EF04();
  v28 = sub_10074EDF4();

  v29 = sub_10000C518(&unk_10092EEA0);
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  (*(v7 + 104))(v31, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  (*(v7 + 56))(v34, 1, 1, v6);
  sub_1000564E4(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_10074A9C4();
  sub_10015DE40(v27, v28, 0, v14, v11, v35, 0, 0);

  (*(v32 + 8))(v11, v33);
  sub_10005652C(v14);
  [v36 setNeedsLayout];
}

uint64_t sub_1000564E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005652C(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100925540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056594()
{
  v0 = sub_10074EB24();
  v1 = *(v0 + 16);

  v3 = 0;
  while (1)
  {
    if (v3 == v1)
    {
      v13 = 0;
      v3 = v1;
      v11 = 0u;
      v12 = 0u;
      goto LABEL_7;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v3 >= *(v0 + 16))
    {
      goto LABEL_14;
    }

    sub_10000C824(v0 + 32 + 40 * v3++, &v11);
LABEL_7:
    v9[0] = v11;
    v9[1] = v12;
    v10 = v13;
    if (!*(&v12 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100012160(v9, v8);
    sub_10000C824(v8, v6);
    sub_10000C518(&qword_1009242A0);
    sub_100741D94();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v7 = 0;
    }

    result = sub_10000C620(v8);
    if (v7)
    {
      sub_100741D74();
      v4 = sub_1006C301C();

      v5._rawValue = v4;
      sub_100744224(v5);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10005672C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = sub_10074F654();
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  __chkstk_darwin(v5);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10000C518(&qword_100923E90);
  v21 = *(sub_10074F584() - 8);
  v56 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v53 = v23;
  *(v23 + 16) = xmmword_1007A7250;
  v60 = v23 + v22;
  v24 = a1;
  v64 = a1;
  sub_10001CC10();
  v57 = v20;
  sub_10074F614();
  v64 = 11.0;
  v25 = v17;
  sub_10074F614();
  v64 = 12.0;
  v26 = v14;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  v61 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = v62;
  v33 = *(v63 + 104);
  v63 += 104;
  v55 = v33;
  (v33)(v8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v64) = 0;
  v36 = v4;
  sub_10074F614();
  v64 = 0.0;
  v58 = v11;
  sub_10074F614();
  v59 = v25;
  sub_10074F544();
  v64 = v24;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v8 = _Q0;
  v38 = v55;
  v55(v8, v61, v32);
  LOBYTE(v64) = 0;
  sub_10074F614();
  v64 = 0.0;
  sub_10074F614();
  v39 = v56;
  top = UIEdgeInsetsZero.top;
  v51 = left;
  v52 = bottom;
  sub_10074F544();
  v48 = 2 * v39;
  v64 = v24;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  *v8 = v49;
  v40 = v61;
  v41 = v62;
  v42 = v38;
  v38(v8, v61, v62);
  LOBYTE(v64) = 0;
  v54 = v36;
  sub_10074F614();
  v64 = 0.0;
  sub_10074F614();
  v43 = v48;
  sub_10074F544();
  v44 = v56;
  v48 = v43 + v56;
  v64 = v24;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  *v8 = v49;
  v42(v8, v40, v41);
  sub_1007535A4();
  LOBYTE(v64) = 0;
  sub_10074F614();
  v64 = 0.0;
  sub_10074F614();
  v47 = v26;
  sub_10074F544();
  v64 = v24;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v8 = v49;
  v45 = v55;
  v55(v8, v61, v62);
  LOBYTE(v64) = 0;
  sub_10074F614();
  v64 = 0.0;
  sub_10074F614();
  sub_10074F544();
  v56 += 4 * v44;
  v64 = v24;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  v64 = 10.0;
  sub_10074F614();
  *v8 = v49;
  v45(v8, v61, v62);
  LOBYTE(v64) = 0;
  sub_10074F614();
  v64 = 0.0;
  sub_10074F614();
  sub_10074F544();
  return v53;
}

uint64_t sub_1000570C8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921230 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009813C8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v28 = v1[13];
  v28(v3, enum case for FontSource.useCase(_:), v0);
  v27 = sub_100750B04();
  v37 = v27;
  v38 = &protocol witness table for StaticDimension;
  sub_10000D134(&v36);
  v34 = v0;
  v35 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v33);
  v26 = v1[2];
  v26(v11, v3, v0);
  sub_100750B14();
  v12 = v1[1];
  v24 = v1 + 1;
  v25 = v12;
  v12(v3, v0);
  if (qword_100921238 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v4, qword_1009813E0);
  v21[0] = v7;
  v21[1] = v8;
  v7(v3, v13, v4);
  v14 = v28;
  v28(v3, v9, v0);
  v23 = v10;
  v15 = v27;
  v34 = v27;
  v35 = &protocol witness table for StaticDimension;
  sub_10000D134(&v33);
  v22 = v9;
  v31 = v0;
  v32 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v30);
  v17 = v26;
  v26(v16, v3, v0);
  sub_100750B14();
  v18 = v25;
  v25(v3, v0);
  (v21[0])(v3, v13, v4);
  v14(v3, v22, v0);
  v31 = v15;
  v32 = &protocol witness table for StaticDimension;
  sub_10000D134(&v30);
  v29[3] = v0;
  v29[4] = &protocol witness table for FontSource;
  v19 = sub_10000D134(v29);
  v17(v19, v3, v0);
  sub_100750B14();
  v18(v3, v0);
  xmmword_10097D0B0 = vdupq_n_s64(0x4044000000000000uLL);
  unk_10097D0C0 = xmmword_1007A78D0;
  xmmword_10097D0D0 = xmmword_1007A78E0;
  sub_100012160(&v33, &unk_10097D108);
  sub_100012160(&v36, &unk_10097D0E0);
  return sub_100012160(&v30, &unk_10097D130);
}

char *sub_1000574F8(double a1, double a2, double a3, double a4)
{
  v9 = sub_100743584();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100751344();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100751374();
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = &v71 - v15;
  v16 = sub_10074AB44();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v20 - 8);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v24 = sub_1007469A4();
  (*(*(v24 - 8) + 56))(&v4[v23], 1, 1, v24);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_100920048 != -1)
  {
    swift_once();
  }

  v74 = v17;
  v75 = xmmword_10097D0B0;
  *&v4[v25] = xmmword_10097D0B0;
  v73 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_alias;
  v86 = v4;
  if (qword_100921230 != -1)
  {
    swift_once();
  }

  v26 = sub_100750534();
  v27 = sub_10000D0FC(v26, qword_1009813C8);
  v28 = *(v26 - 8);
  v72 = *(v28 + 16);
  v72(v22, v27, v26);
  v71 = *(v28 + 56);
  v71(v22, 0, 1, v26);
  v29 = enum case for DirectionalTextAlignment.none(_:);
  v30 = *(v74 + 104);
  v30(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v31 = sub_100745C84();
  v74 = v16;
  v32 = v31;
  v33 = objc_allocWithZone(v31);
  *&v86[v73] = sub_100745C74();
  v73 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_100921238 != -1)
  {
    swift_once();
  }

  v34 = sub_10000D0FC(v26, qword_1009813E0);
  v72(v22, v34, v26);
  v71(v22, 0, 1, v26);
  v30(v19, v29, v74);
  v35 = objc_allocWithZone(v32);
  v36 = sub_100745C74();
  v37 = v86;
  *&v86[v73] = v36;
  v38 = &v37[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_insets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v38 = UIEdgeInsetsZero.top;
  v38[1] = left;
  v38[2] = bottom;
  v38[3] = right;
  v42 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v76 + 104))(v79, enum case for Separator.Position.bottom(_:), v77);
  v88[3] = sub_1007507D4();
  v88[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v88);
  sub_1007507C4();
  v43 = v78;
  sub_100751354();
  v44 = v80;
  sub_100751314();
  v46 = v81;
  v45 = v82;
  (*(v81 + 8))(v43, v82);
  v47 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v48 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v49 = *(v46 + 40);
  v50 = v47;
  v49(&v47[v48], v44, v45);
  swift_endAccess();

  *&v37[v42] = v50;
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v51 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  v87.receiver = v37;
  v87.super_class = v51;
  v52 = objc_msgSendSuper2(&v87, "initWithFrame:", a1, a2, a3, a4);
  v53 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView;
  v54 = *&v52[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView];
  sub_100016C60(0, &qword_100923500);
  v55 = v52;
  v56 = v54;
  sub_100753E34();
  sub_100743224();

  v57 = *&v52[v53];
  v58 = v83;
  sub_100746E84();
  sub_1007433B4();

  (*(v84 + 8))(v58, v85);
  v59 = [v55 contentView];
  [v59 addSubview:*&v52[v53]];

  v60 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_alias;
  v61 = *&v55[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_alias];
  v62 = sub_100753DD4();
  [v61 setTextColor:v62];

  v63 = [v55 contentView];
  [v63 addSubview:*&v55[v60]];

  v64 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_displayName;
  v65 = *&v55[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_displayName];
  v66 = sub_100753DF4();
  [v65 setTextColor:v66];

  v67 = [v55 contentView];
  [v67 addSubview:*&v55[v64]];

  v68 = [v55 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v69 = [v55 contentView];
  [v69 addSubview:*&v55[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_separatorView]];

  return v55;
}

uint64_t sub_100057ED4()
{
  v1 = v0;
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100751374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  v40.receiver = v1;
  v40.super_class = v10;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_separatorView];
  [v1 bounds];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v11[v12], v6);
  sub_100751324();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  [v11 setFrame:{v14, v16, v18, v20}];
  v21 = [v1 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  if (qword_100920048 != -1)
  {
    swift_once();
  }

  sub_100053588(&xmmword_10097D0B0, v37);
  v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView];
  v37[24] = sub_1007433C4();
  v37[25] = &protocol witness table for UIView;
  v37[21] = v30;
  v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_alias];
  v38 = sub_100745C84();
  v39 = &protocol witness table for UILabel;
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_displayName];
  v37[30] = &protocol witness table for UILabel;
  v37[31] = v31;
  v37[29] = v38;
  v37[26] = v32;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v23, v25, v27, v29);
  (*(v3 + 8))(v5, v2);
  return sub_1000535E4(v37);
}