void sub_508740(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = (swift_isaMask & *v2);
  v7 = sub_768D60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&stru_248.segname[(v5 & v4) + 8];
  v12 = v6[36];
  v16[0] = v6[35];
  v16[1] = v12;
  v16[2] = v6[37];
  v17 = v11;
  v13 = type metadata accessor for BaseDiffableShelfViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1);
  sub_768D50();
  sub_75F1F0();
  (*(v8 + 8))(v10, v7);
  if (*(v2 + qword_99E1E8) == 1)
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    v14 = *&v16[0];
    sub_761070();
  }

  sub_75E3E0();
  sub_768900();
  sub_768ED0();
  v15 = *&v16[0];
  sub_75E3B0();
}

void sub_508954(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_508740(a3);
}

uint64_t sub_5089A8(char a1)
{
  v2 = v1;
  v5 = *(&stru_1F8.reloff + (swift_isaMask & *v2));
  v6 = *(&stru_1F8.reserved2 + (swift_isaMask & *v2));
  v7 = *&stru_248.segname[(swift_isaMask & *v2) - 8];
  v8 = *&stru_248.segname[(swift_isaMask & *v2) + 8];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1, v5, v6, v7, v8);
  sub_75F1E0();
  return sub_75A0A0();
}

void sub_508A7C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_5089A8(a3);
}

void sub_508B04(void *a1)
{
  v1 = a1;
  sub_509044(&selRef_didReceiveMemoryWarning, &protocol conformance descriptor for DiffablePagePresenter<A>, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

uint64_t sub_508B80()
{
  v2 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
  v3 = *(&stru_1F8.reserved2 + (swift_isaMask & *v0));
  v4 = *&stru_248.segname[(swift_isaMask & *v0) - 8];
  v5 = *&stru_248.segname[(swift_isaMask & *v0) + 8];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v6, "as_viewWillBecomePartiallyVisible", v2, v3, v4, v5);
  return sub_75F240();
}

void sub_508C34(void *a1)
{
  v1 = a1;
  sub_508B80();
}

void sub_508C7C()
{
  v1 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomePartiallyVisible");
  swift_getWitnessTable();
  sub_758930();
  if (*(v0 + qword_99E1E8) == 1)
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    sub_761070();
  }

  sub_75A0A0();
  sub_75E3E0();
  sub_768900();
  sub_768ED0();
  sub_75E3B0();
}

void sub_508E2C(void *a1)
{
  v1 = a1;
  sub_508C7C();
}

void sub_508E74()
{
  v2 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_75F230();
  sub_761120();
  sub_768900();
  sub_768ED0();
  sub_7610A0();
  sub_75E3E0();
  sub_7688F0();
  if (v2)
  {
    v1 = v2;
    sub_75E3C0();
  }

  sub_75A0A0();
}

void sub_508FC8(void *a1)
{
  v1 = a1;
  sub_508E74();
}

uint64_t sub_509044(SEL *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  v8 = *(&stru_1F8.flags + (swift_isaMask & *v3));
  v9.receiver = v3;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, *a1);
  WitnessTable = swift_getWitnessTable();
  return a3(v8, WitnessTable);
}

void sub_50913C(void *a1)
{
  v1 = a1;
  sub_509044(&selRef_as_viewDidBecomeFullyVisible, &protocol conformance descriptor for DiffablePagePresenter<A>, &AppStoreViewControllerPresenter.viewDidBecomeFullyVisible());
}

id sub_5091B8(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = (swift_isaMask & *v1);
  v6 = sub_BD88(&qword_9495B8);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = *&stru_248.segname[(v4 & v3) + 8];
  v10 = v5[36];
  v18[0] = v5[35];
  v18[1] = v10;
  v18[2] = v5[37];
  v19 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController();
  v20.receiver = v1;
  v20.super_class = v11;
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", a1);
  result = [v1 isViewLoaded];
  if (result)
  {
    v13 = [v1 collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 collectionViewLayout];

      [v15 invalidateLayout];
    }

    sub_503EE0();
    v16 = sub_BD88(&unk_959560);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_5040A8(v8);
    sub_10A2C(v8, &qword_9495B8);
    result = [v1 view];
    if (result)
    {
      v17 = result;
      [result bounds];

      swift_getWitnessTable();
      sub_763A70();
      return sub_483080(0, 0, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_509428(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_5091B8(a3);
}

id sub_509494(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_isaMask;
  v10 = (swift_isaMask & *v3);
  v11 = sub_BD88(&qword_9495B8);
  __chkstk_darwin(v11 - 8);
  v13 = &aBlock - v12;
  v14 = *&stru_248.segname[(v9 & v8) + 8];
  v15 = v10[36];
  aBlock = v10[35];
  v23 = v15;
  v24 = v10[37];
  v25 = v14;
  v16 = type metadata accessor for BaseDiffableShelfViewController();
  v26.receiver = v4;
  v26.super_class = v16;
  objc_msgSendSuper2(&v26, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  result = [v4 isViewLoaded];
  if (result)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *&v24 = sub_50DF1C;
    *(&v24 + 1) = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_6C6800;
    *(&v23 + 1) = &unk_895380;
    v19 = _Block_copy(&aBlock);
    v20 = v4;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
    sub_503EE0();
    v21 = sub_BD88(&unk_959560);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_5040A8(v13);
    sub_10A2C(v13, &qword_9495B8);
    swift_getWitnessTable();
    return sub_763A70();
  }

  return result;
}

void sub_50972C(double a1, double a2, uint64_t a3, void *a4)
{
  v10 = *(&stru_1F8.reloff + (swift_isaMask & *a4));
  v11 = *(&stru_1F8.reserved2 + (swift_isaMask & *a4));
  v12 = *&stru_248.segname[(swift_isaMask & *a4) - 8];
  v13 = *&stru_248.segname[(swift_isaMask & *a4) + 8];
  type metadata accessor for BaseDiffableShelfViewController();
  sub_483080(*&a1, *&a2, 0);
  v7 = [a4 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }
}

void sub_50983C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_509494(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_5098BC()
{
  v1 = (swift_isaMask & *v0);
  result = [v0 collectionView];
  if (result)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v18 = v1[70];
    v4[2] = v18;
    v17 = v1[71];
    v4[3] = v17;
    v5 = v1[72];
    v4[4] = v5;
    v6 = v1[73];
    v4[5] = v6;
    v7 = v1[74];
    v4[6] = v7;
    v8 = v1[75];
    v4[7] = v8;
    v9 = v1[76];
    v4[8] = v9;
    v4[9] = v3;
    v10 = objc_allocWithZone(sub_BD88(&unk_959530));
    v11 = sub_762D80();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *&v14 = v18;
    *(&v14 + 1) = v17;
    *&v15 = v5;
    *(&v15 + 1) = v6;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 64) = v9;
    *(v13 + 72) = v12;
    v16 = v11;

    sub_767A30();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_509AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v14 = sub_BD88(&qword_93FF28);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - v15;
  v17 = sub_BD88(&unk_959540);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v27 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = qword_9593C8;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      (*(v18 + 56))(v16, 1, 1, v17);
      goto LABEL_6;
    }

    v25 = v24;
    sub_762D40();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

LABEL_6:
      sub_10A2C(v16, &qword_93FF28);
      return 0;
    }

    v27[0] = a11;
    v27[1] = a2;
    (*(v18 + 32))(v20, v16, v17);

    v30 = a5;
    v31 = a6;
    v32 = v28;
    v33 = v29;
    v34 = a9;
    v35 = a10;
    v36 = v27[0];
    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    v26 = sub_7639C0();

    (*(v18 + 8))(v20, v17);
    return v26;
  }

  return result;
}

uint64_t sub_509D84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
  }

  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  v4 = sub_7639D0();

  return v4;
}

id sub_509F20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  result = [v0 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;
    v10 = v9;

    (*&stru_478.segname[(swift_isaMask & *v1) + 8])(v8, v10);
    sub_BE70(0, &unk_956240);
    isa = sub_769450().super.isa;

    [v4 setBoundarySupplementaryItems:isa];

    v12 = (*(ObjectType + 792))();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v3 + 560);
    *(v14 + 24) = *(v3 + 568);
    *(v14 + 40) = *(v3 + 584);
    *(v14 + 48) = *(v3 + 592);
    *(v14 + 64) = *(v3 + 608);
    *(v14 + 72) = v13;
    v15 = objc_allocWithZone(v12);
    v18[4] = sub_50DD54;
    v18[5] = v14;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_507AD4;
    v18[3] = &unk_8952E0;
    v16 = _Block_copy(v18);

    v17 = [v15 initWithSectionProvider:v16 configuration:v4];

    _Block_release(v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_50A1D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _UNKNOWN **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a4;
  v16 = sub_7684B0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = a9;
  v27 = a10;
  v29 = a2;
  v21 = Strong;
  sub_BD88(&qword_94AA50);
  v28 = a1;
  v31 = v21;
  v32 = &off_895238;

  v22 = v21;
  sub_768490();
  sub_7688C0();

  (*(v17 + 8))(v19, v16);

  v31 = v30;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = v26;
  v37 = v27;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  v23 = sub_763A90();

  return v23;
}

uint64_t sub_50A408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v36 = a1;
  v14 = sub_75B660();
  v38 = *(v14 - 8);
  v39 = v14;
  __chkstk_darwin(v14);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_BD88(&unk_94F1F0);
  v37 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v20 - 8);
  v22 = &v35 - v21;
  v23 = sub_75DAB0();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v24 + 56))(v22, 1, 1, v23);
    return sub_10A2C(v22, &unk_957F70);
  }

  v28 = Strong;
  v41 = a6;
  v42 = a7;
  v43 = v40;
  v44 = a9;
  v45 = a10;
  v46 = a11;
  v47 = a12;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_763A20();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10A2C(v22, &unk_957F70);
  }

  (*(v24 + 32))(v26, v22, v23);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v37 + 8))(v19, v17);
  v30 = v38;
  v29 = v39;
  if ((*(v38 + 88))(v16, v39) == enum case for ShelfBackground.color(_:))
  {
    (*(v30 + 96))(v16, v29);
    v31 = *v16;
    v32 = *(sub_BD88(&unk_959640) + 48);
    v33 = sub_75EDA0();
    (*(*(v33 - 8) + 8))(v16 + v32, v33);
    [v36 setBackgroundColor:v31];

    return (*(v24 + 8))(v26, v23);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return (*(v30 + 8))(v16, v29);
  }
}

void sub_50A878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v49 = sub_75B660();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_BD88(&unk_94F1F0);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v44 - v14;
  v16 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_75DAB0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v54 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&qword_93FF08);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v45 = a1;
    v28 = qword_9593C8;
    swift_beginAccess();
    v29 = *&v27[v28];
    if (!v29)
    {

      return;
    }

    v30 = v29;

    sub_767A90();
    v31 = sub_7678E0();
    (*(v23 + 8))(v25, v22);
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      if (__OFSUB__(v31, 1))
      {
        __break(1u);
        return;
      }

      v33 = v32;
      v34 = v20;
      v55 = v51;
      v56 = v52;
      v57 = v53;
      v58 = a9;
      v59 = a10;
      v60 = a11;
      v61 = a12;
      type metadata accessor for BaseDiffableShelfViewController();
      swift_getWitnessTable();
      sub_763A20();

      v35 = (*(v20 + 48))(v18, 1, v19);
      v36 = v54;
      if (v35 != 1)
      {
        (*(v34 + 32))(v54, v18, v19);
        sub_75DAA0();
        swift_getKeyPath();
        v37 = v50;
        v38 = v47;
        sub_768750();

        (*(v46 + 8))(v15, v38);
        v39 = v48;
        v40 = v49;
        if ((*(v48 + 88))(v37, v49) == enum case for ShelfBackground.color(_:))
        {
          (*(v39 + 96))(v37, v40);
          v41 = *v37;
          v42 = *(sub_BD88(&unk_959640) + 48);
          v43 = sub_75EDA0();
          (*(*(v43 - 8) + 8))(v37 + v42, v43);
          [v45 setBackgroundColor:v41];

          (*(v34 + 8))(v36, v19);
        }

        else
        {
          (*(v34 + 8))(v36, v19);
          (*(v39 + 8))(v37, v40);
        }

        return;
      }
    }

    else
    {
      (*(v20 + 56))(v18, 1, 1, v19);
    }

    sub_10A2C(v18, &unk_957F70);
  }
}

uint64_t sub_50AE50(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_1ED18(a2, &v7, &unk_93FBD0);
  sub_1ED18(&v6, &v4, &unk_959590);
  v2 = v4;

  sub_5064A0(v2, v5);

  sub_10A2C(&v6, &unk_959590);
  return sub_10A2C(v5, &unk_93FBD0);
}

uint64_t sub_50AF2C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = sub_7617F0();

    if (v2)
    {
      sub_75CA90();
    }
  }

  return result;
}

uint64_t sub_50B000(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = swift_isaMask & *v6;
  v10 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_75C840();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a2)
  {
    v24 = a1;
    v25 = a4;
    swift_getObjectType();
    v18 = a2;
    sub_75D9E0();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_10A2C(v12, &unk_93F620);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v19 = *(v9 + 608);
      v20 = *(v9 + 576);
      v26 = *(v9 + 560);
      v27 = v20;
      v28 = *(v9 + 592);
      v29 = v19;
      type metadata accessor for BaseDiffableShelfViewController();
      swift_getWitnessTable();
      sub_763A50();
      v22 = v21;
      ObjectType = swift_getObjectType();
      v25(v18, v16, v24, *(v6 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph), ObjectType, v22);

      swift_unknownObjectRelease();
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_50B2D8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_50B000(v14, v15, v17, a6);

  return (*(v11 + 8))(v13, v10);
}

void sub_50B43C(void *a1, uint64_t a2, void (*a3)(id, char *, void *, void, uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v7 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_75C840();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_757550().super.isa;
  v25 = [a1 cellForItemAtIndexPath:isa];

  if (v25)
  {
    v24 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v23 = a3;
      v15 = v25;
      sub_75D9E0();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_10A2C(v9, &unk_93F620);
      }

      else
      {
        (*(v11 + 32))(v13, v9, v10);
        v17 = *(v6 + 608);
        v18 = *(v6 + 576);
        v26 = *(v6 + 560);
        v27 = v18;
        v28 = *(v6 + 592);
        v29 = v17;
        type metadata accessor for BaseDiffableShelfViewController();
        swift_getWitnessTable();
        sub_763A50();
        v20 = v19;
        ObjectType = swift_getObjectType();
        v23(v15, v13, v24, *(v3 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph), ObjectType, v20);

        swift_unknownObjectRelease();
        (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
      v16 = v25;
    }
  }
}

uint64_t sub_50B780(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *, void *, void, uint64_t, uint64_t))
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = a3;
  v13 = a1;
  sub_50B43C(v12, v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_50B88C()
{
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  return sub_763A00();
}

uint64_t sub_50B974(void *a1, uint64_t a2, void *a3)
{
  sub_757640();
  v5 = sub_769460();
  v6 = a3;
  v7 = a1;
  sub_506620(v6, v5);
}

uint64_t sub_50B9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a1;
  v50 = a5;
  v10 = swift_isaMask & *v6;
  v11 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v11 - 8);
  v43 = (&v39 - v12);
  v13 = sub_75C840();
  v47 = *(v13 - 8);
  v48 = v13;
  __chkstk_darwin(v13);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_75DAB0();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v10 + 1176);
  v44 = a3;
  v45 = a4;
  v23(v57, a3, a4, v20);
  sub_1ED18(v57, &v51, &unk_959550);
  v42 = a2;
  if (*(&v52 + 1))
  {
    sub_10914(&v51, &v55);
    v24 = *(v10 + 576);
    v41 = *(v10 + 560);
    v40 = v24;
    v39 = *(v10 + 592);
    v25 = *(v10 + 608);
    v51 = v41;
    v52 = v24;
    v53 = v39;
    v54 = v25;
    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    sub_763A50();
    swift_getObjectType();
    sub_761AA0();
    swift_unknownObjectRelease();
    sub_BEB8(&v55);
    v26 = v39;
    v27 = v40;
    v28 = v41;
  }

  else
  {
    sub_10A2C(&v51, &unk_959550);
    v28 = *(v10 + 560);
    v27 = *(v10 + 576);
    v26 = *(v10 + 592);
    v25 = *(v10 + 608);
  }

  v51 = v28;
  v52 = v27;
  v53 = v26;
  v54 = v25;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_763A10();
  v29 = (*(v19 + 48))(v17, 1, v18);
  v30 = v46;
  if (v29 == 1)
  {
    v31 = &unk_957F70;
    v32 = v17;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_763A60();
    swift_getObjectType();
    sub_761E40();
    swift_unknownObjectRelease();
    if (v56)
    {
      sub_10914(&v55, &v51);
      sub_763A50();
      swift_getObjectType();
      sub_761A90();
      swift_unknownObjectRelease();
      sub_BEB8(&v51);
      (*(v19 + 8))(v22, v18);
      goto LABEL_10;
    }

    (*(v19 + 8))(v22, v18);
    v31 = &unk_959550;
    v32 = &v55;
  }

  sub_10A2C(v32, v31);
LABEL_10:
  v33 = v43;
  sub_763A00();
  v35 = v47;
  v34 = v48;
  if ((*(v47 + 48))(v33, 1, v48) == 1)
  {
    sub_10A2C(v57, &unk_959550);
    v36 = &unk_93F620;
    v37 = v33;
  }

  else
  {
    (*(v35 + 32))(v30, v33, v34);
    sub_763A30();
    swift_getObjectType();
    sub_761520();
    swift_unknownObjectRelease();
    if (v56)
    {
      sub_10914(&v55, &v51);
      sub_763A50();
      swift_getObjectType();
      sub_761A80();
      swift_unknownObjectRelease();
      sub_BEB8(&v51);
      (*(v35 + 8))(v30, v34);
      v36 = &unk_959550;
      v37 = v57;
    }

    else
    {
      (*(v35 + 8))(v30, v34);
      sub_10A2C(v57, &unk_959550);
      v37 = &v55;
      v36 = &unk_959550;
    }
  }

  return sub_10A2C(v37, v36);
}

uint64_t sub_50C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a5;
  v11 = swift_isaMask & *v6;
  v12 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v12 - 8);
  v46 = (&v40 - v13);
  v14 = sub_75C840();
  v51 = *(v14 - 8);
  v52 = v14;
  __chkstk_darwin(v14);
  v50 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v45 = sub_75DAB0();
  v19 = *(v45 - 8);
  v20 = __chkstk_darwin(v45);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 + 1176);
  v48 = a3;
  v49 = a4;
  v23(&v53, a3, a4, v20);
  v44 = a1;
  v43 = a2;
  if (*(&v54 + 1))
  {
    sub_10914(&v53, &v57);
    v24 = *(v11 + 576);
    v42 = *(v11 + 560);
    v41 = v24;
    v40 = *(v11 + 592);
    v25 = *(v11 + 608);
    v53 = v42;
    v54 = v24;
    v55 = v40;
    v56 = v25;
    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    sub_763A50();
    swift_getObjectType();
    sub_761AD0();
    swift_unknownObjectRelease();
    sub_BEB8(&v57);
    v26 = v40;
    v27 = v41;
    v28 = v42;
  }

  else
  {
    sub_10A2C(&v53, &unk_959550);
    v28 = *(v11 + 560);
    v27 = *(v11 + 576);
    v26 = *(v11 + 592);
    v25 = *(v11 + 608);
  }

  v53 = v28;
  v54 = v27;
  v55 = v26;
  v56 = v25;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_763A10();
  v29 = v45;
  if ((*(v19 + 48))(v18, 1, v45) == 1)
  {
    v30 = &unk_957F70;
    v31 = v18;
  }

  else
  {
    (*(v19 + 32))(v22, v18, v29);
    sub_763A60();
    swift_getObjectType();
    sub_761E40();
    swift_unknownObjectRelease();
    if (v58)
    {
      sub_10914(&v57, &v53);
      sub_763A50();
      swift_getObjectType();
      sub_761AC0();
      swift_unknownObjectRelease();
      sub_BEB8(&v53);
      (*(v19 + 8))(v22, v29);
      goto LABEL_10;
    }

    (*(v19 + 8))(v22, v29);
    v30 = &unk_959550;
    v31 = &v57;
  }

  sub_10A2C(v31, v30);
LABEL_10:
  v32 = v46;
  sub_763A00();
  v34 = v51;
  v33 = v52;
  v35 = (*(v51 + 48))(v32, 1, v52);
  v36 = v50;
  if (v35 == 1)
  {
    v37 = &unk_93F620;
    v38 = v32;
  }

  else
  {
    (*(v34 + 32))(v50, v32, v33);
    sub_763A30();
    swift_getObjectType();
    sub_761520();
    swift_unknownObjectRelease();
    if (v58)
    {
      sub_10914(&v57, &v53);
      sub_763A50();
      swift_getObjectType();
      sub_761AB0();
      swift_unknownObjectRelease();
      sub_BEB8(&v53);
      return (*(v34 + 8))(v36, v33);
    }

    (*(v34 + 8))(v36, v33);
    v37 = &unk_959550;
    v38 = &v57;
  }

  return sub_10A2C(v38, v37);
}

uint64_t sub_50C7E4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(id, id, uint64_t, uint64_t, char *))
{
  v11 = sub_757640();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_769240();
  v17 = v16;
  sub_757590();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a7(v18, v19, v15, v17, v14);

  return (*(v12 + 8))(v14, v11);
}

Class sub_50C930(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  if (a4)
  {
    sub_757590();
    v13 = sub_757640();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v13 = sub_757640();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v15 = a1;
  sub_506A00(v9, v12);

  sub_10A2C(v9, &unk_94EE60);
  sub_757640();
  v16 = *(v13 - 8);
  v17 = (*(v16 + 48))(v12, 1, v13);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_757550().super.isa;
    (*(v16 + 8))(v12, v13);
    v18 = isa;
  }

  return v18;
}

void sub_50CB3C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_50DAC8();

  swift_unknownObjectRelease();
}

void sub_50CBDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_50CBC0(v4);
}

void sub_50CC60(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_50CC44(v4);
}

void sub_50CCE4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_50CCC8(v4);
}

void sub_50CD68(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_50CD4C(v4);
}

void sub_50CDF4(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_50CDD0(v6, a4);
}

uint64_t sub_50CE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v10 = sub_BD88(&unk_93F630);
  sub_768860();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = sub_10A2C(v8, &unk_93F980);
    v13 = 0;
  }

  else
  {
    v13 = sub_32A6C0(a2, 1, v9, v8);
    result = (*(v11 + 8))(v8, v10);
  }

  *a3 = v13;
  return result;
}

void sub_50CFD4(void *a1)
{
  v1 = a1;
  sub_502F74();
}

void sub_50D01C(void *a1)
{
  v1 = a1;
  sub_502F94();
}

uint64_t sub_50D064()
{

  v1 = qword_99E1A0;
  v2 = sub_764540();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_50D1BC()
{
  v2 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
  v3 = *(&stru_1F8.reserved2 + (swift_isaMask & *v0));
  v4 = *&stru_248.segname[(swift_isaMask & *v0) - 8];
  v5 = *&stru_248.segname[(swift_isaMask & *v0) + 8];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BaseDiffableShelfViewController();
  return objc_msgSendSuper2(&v6, "dealloc", v2, v3, v4, v5);
}

uint64_t sub_50D258(uint64_t a1)
{

  v2 = qword_99E1A0;
  v3 = sub_764540();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

id sub_50D4C0()
{
  v1 = [v0 collectionView];

  return v1;
}

void sub_50D4F8(void *a1)
{
  [v1 setCollectionView:a1];
}

void (*sub_50D540(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 collectionView];
  return sub_50D59C;
}

void sub_50D59C(id *a1)
{
  v1 = *a1;
  [a1[1] setCollectionView:?];
}

void *sub_50D5E4()
{
  v0 = sub_50DEA0();
  v1 = v0;
  return v0;
}

uint64_t (*sub_50D614(uint64_t *a1))()
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
  *(v2 + 32) = sub_507C9C();
  return sub_246E0;
}

void *sub_50D684()
{
  v0 = sub_50DE5C();
  v1 = v0;
  return v0;
}

uint64_t (*sub_50D6B4(uint64_t *a1))()
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
  *(v2 + 32) = sub_507BE4();
  return sub_246E0;
}

uint64_t (*sub_50D72C(uint64_t *a1))()
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
  *(v2 + 32) = sub_503DE4();
  return sub_21028;
}

uint64_t sub_50D9C8()
{
  sub_50DE4C();
}

uint64_t sub_50DAC8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = (swift_isaMask & *v0);
  v4 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_75DAB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&stru_248.segname[(v2 & v1) + 8];
  v12 = v3[36];
  v14[0] = v3[35];
  v14[1] = v12;
  v14[2] = v3[37];
  v15 = v11;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_763A20();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_957F70);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_75FA10();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_50DD1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50DD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_50DDA0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_50DE5C()
{
  v1 = qword_9593C0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_50DEA0()
{
  v1 = qword_9593C8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_50DEE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t (*sub_50DF28(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E19C;
}

uint64_t sub_50DF8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_50DFC8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_50E008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_50E528(&qword_959578, type metadata accessor for DiffableFlowPreviewPresenter);
  v9 = sub_BD88(&unk_959580);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_944108];
  *&v10[qword_944108 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_944100];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_944118] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_50E164()
{

  return _swift_deallocObject(v0, 24, 7);
}

void (*sub_50E1EC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E48C;
}

uint64_t (*sub_50E250(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E5B8;
}

uint64_t (*sub_50E2B4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C642C;
}

id (*sub_50E340(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E468;
}

uint64_t (*sub_50E3A4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E5B8;
}

uint64_t (*sub_50E408())(void *a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_50E134;
}

uint64_t sub_50E528(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_50E5CC()
{
  result = qword_941210;
  if (!qword_941210)
  {
    type metadata accessor for SmallContactCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941210);
  }

  return result;
}

double sub_50E624()
{
  v0 = sub_75DAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  v4 = sub_50E708();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_50E708()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765E60();
  sub_75DA20();
  sub_765630();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_75DA20();
  sub_765580();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_75DA30();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, "init");
  sub_765E30();
  v13 = v12;

  return v13;
}

double sub_50E8C0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_99E200 = 1.0 / v2;
  return result;
}

uint64_t sub_50E94C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_766CA0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DividerView.Style(0);
  sub_161DC(v11, a2);
  v12 = sub_BE38(v11, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v18[3] = v3;
  v18[4] = &protocol witness table for FontSource;
  v13 = sub_B1B4(v18);
  (*(v4 + 16))(v13, v6, v3);
  v14 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v4 + 8))(v6, v3);
  v15 = *&UIEdgeInsetsZero.bottom;
  *v12 = *&UIEdgeInsetsZero.top;
  *(v12 + 1) = v15;
  return (*(v8 + 32))(&v12[*(v11 + 20)], v10, v7);
}

char *sub_50EB78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style;
  if (qword_93D2D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DividerView.Style(0);
  v14 = sub_BE38(v13, qword_99E208);
  sub_395C4(v14, &v4[v12]);
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorView] = v15;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorView;
  v18 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorView];
  sub_396E8();
  v19 = v16;
  v20 = v18;
  v21 = sub_769FB0();
  [v20 setBackgroundColor:v21];

  [v19 addSubview:*&v16[v17]];
  return v19;
}

id sub_50EFE0()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_93D2C8 != -1)
  {
    swift_once();
  }

  v9 = *&qword_99E200;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorView];
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v12 = &v0[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v13 = MinX + v12[1];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v14 = CGRectGetMidY(v18) + v9 * -0.5;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  return [v10 setFrame:{v13, v14, CGRectGetWidth(v19) - v12[1] - v12[3], v9}];
}

uint64_t sub_50F1E8()
{
  result = type metadata accessor for DividerView.Style(319);
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

uint64_t sub_50F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_766CA0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_50F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_766CA0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_50F3CC()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_766CA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_50F450()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D2C8 != -1)
  {
    swift_once();
  }

  v4 = floor(*&qword_99E200);
  type metadata accessor for DividerView.Style(0);
  sub_766470();
  sub_766CA0();
  sub_766700();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v4 + v6;
}

double sub_50F5C0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v365 = a4;
  v389 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v389);
  v374 = &v329 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v366 = &v329 - v9;
  v10 = sub_766D70();
  v385 = *(v10 - 8);
  v386 = v10;
  __chkstk_darwin(v10);
  v330 = &v329 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766AF0();
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
  v342 = sub_76A920();
  v340 = *(v342 - 8);
  __chkstk_darwin(v342);
  v339 = &v329 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v396 = sub_766690();
  v384 = *(v396 - 8);
  __chkstk_darwin(v396);
  v341 = &v329 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v336 = &v329 - v23;
  v24 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v24 - 8);
  v371 = &v329 - v25;
  v26 = sub_BD88(&unk_95A870);
  __chkstk_darwin(v26 - 8);
  v370 = &v329 - v27;
  v28 = sub_76A3F0();
  v372 = *(v28 - 8);
  v373 = v28;
  __chkstk_darwin(v28);
  v369 = &v329 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v368 = &v329 - v31;
  v32 = sub_BD88(&unk_948010);
  __chkstk_darwin(v32 - 8);
  v362 = &v329 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v377 = &v329 - v35;
  __chkstk_darwin(v36);
  v334 = &v329 - v37;
  __chkstk_darwin(v38);
  v376 = &v329 - v39;
  v383 = sub_759810();
  v394 = *(v383 - 8);
  __chkstk_darwin(v383);
  v360 = &v329 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_BD88(&qword_959958);
  __chkstk_darwin(v41 - 8);
  v364 = &v329 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v331 = &v329 - v44;
  __chkstk_darwin(v45);
  v395 = &v329 - v46;
  v47 = sub_BD88(&unk_948720);
  __chkstk_darwin(v47 - 8);
  v338 = &v329 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v335 = &v329 - v50;
  __chkstk_darwin(v51);
  v387 = &v329 - v52;
  __chkstk_darwin(v53);
  v380 = (&v329 - v54);
  v55 = sub_BD88(&qword_959940);
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
  v68 = sub_BD88(&qword_94AFE8);
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
  v81 = sub_75DA30();
  v379 = sub_759840();
  sub_759870();
  v355 = sub_759780();
  v388 = v74;
  v393 = a1;
  sub_759860();
  v398 = a2;
  sub_51A6D8();
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v82 = sub_7666D0();
  v83 = sub_BE38(v82, qword_9597F8);
  v84.super.isa = v81;
  v333 = v83;
  isa = sub_7666B0(v84).super.isa;
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
  sub_51242C(v67, v90, v77);
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v92 = sub_BE38(v82, qword_959810);
  v93.super.isa = v81;
  v361 = v92;
  v94 = sub_7666B0(v93).super.isa;
  [(objc_class *)v94 pointSize];
  v350 = v94;
  v351 = [v88 fontWithDescriptor:v94 size:?];
  [v351 lineHeight];
  v378 = v95;
  v359 = v55;
  sub_512A90(v390, &v390[*(v55 + 48)], v388);
  v400 = v81;
  v96 = [(objc_class *)v81 preferredContentSizeCategory];
  v97 = sub_769B30();

  v375 = v82;
  if ((v97 & 1) == 0 || (v98 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v352 = v67;
    v99 = v88;
    v100 = *&v367;
    sub_1ED18(v388, *&v367, &qword_94AFE8);
    v101 = sub_759760();
    v102 = *(v101 - 8);
    v98 = 7.0;
    if ((*(v102 + 48))(v100, 1, v101) != 1)
    {
      v103 = v349;
      sub_1ED18(v100, v349, &qword_94AFE8);
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

    sub_10A2C(v100, &qword_94AFE8);
    v82 = v375;
    v88 = v99;
    v91 = v352;
  }

  v352 = *&v98;
  v367 = a3;
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  v105 = sub_BE38(v82, qword_959840);
  v106.super.isa = v400;
  v337 = v105;
  v107.super.isa = sub_7666B0(v106).super.isa;
  [(objc_class *)v107.super.isa pointSize];
  v108 = [v88 fontWithDescriptor:v107.super.isa size:?];
  [v108 lineHeight];
  v110 = v109;
  sub_7697D0();
  v349 = v111;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  sub_7697D0();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  sub_1ED18(v91, v391, &qword_959940);
  sub_1ED18(v91, v397, &qword_959940);
  v126 = v388;
  if (v379)
  {
    sub_765260();
    v127 = v380;
    sub_7666A0();
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
  sub_1ED18(v390, v381, &qword_959940);
  sub_1ED18(v132, v382, &qword_959940);
  if (v355)
  {
    sub_765260();
    sub_7666A0();

    v133 = 0;
  }

  else
  {

    v133 = 1;
  }

  v134 = v357;

  sub_10A2C(v390, &qword_959940);
  sub_10A2C(v91, &qword_959940);
  sub_10A2C(v126, &qword_94AFE8);
  sub_10A2C(v134, &qword_94AFE8);
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
  v142 = sub_766CA0();
  v143 = *(v142 - 8);
  v144 = *(v143 + 32);
  v357 = v141;
  v144(&v141[v140], v391, v142);
  v356 = v137[8];
  v390 = v138;
  v144(&v140[v356], &v138[v397], v142);
  *&v140[v137[9]] = 0x4008000000000000;
  v379 = v139;
  sub_B33C8(v380, &v140[v139], &unk_948720);
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
  sub_B33C8(v387, &v140[v388], &unk_948720);
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
  sub_759820();
  LOBYTE(v142) = sub_7597F0();
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
    sub_767500();
    v156 = sub_7670D0();
    swift_allocObject();
    v155 = sub_7670B0();
    v157 = &protocol witness table for LayoutViewPlaceholder;
  }

  v423[0] = v155;
  v423[1] = 0;
  v423[2] = 0;
  v423[3] = v156;
  v423[4] = v157;
  sub_7598C0();
  v159 = v369;
  v160 = v377;
  if (!v161)
  {
    v390 = 0;
    v166 = v399;
    goto LABEL_40;
  }

  if (qword_93D318 != -1)
  {
    swift_once();
  }

  v162 = qword_9597F0;
  (*(v394 + 56))(v376, 1, 1, v154);
  v390 = v162;
  v163 = v162;
  v164 = sub_759830();
  if (v164)
  {
  }

  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  v165 = v334;
  sub_1ED18(v376, v334, &unk_948010);
  if ((*(v394 + 48))(v165, 1, v154) == 1)
  {
    sub_10A2C(v165, &unk_948010);
LABEL_31:
    if (qword_93D340 != -1)
    {
      swift_once();
    }

    v168 = qword_959858;
    goto LABEL_34;
  }

  v167 = sub_7597B0();
  (v382)(v165, v154);
  if (!v167)
  {
    goto LABEL_31;
  }

LABEL_34:
  v169 = v164 != 0;
  v170 = v368;
  sub_76A320();
  sub_BE70(0, &qword_93F900);
  v171 = sub_769E10();
  *(swift_allocObject() + 16) = v171;
  v172 = v171;
  v173 = v370;
  sub_767BA0();
  v174 = sub_767B90();
  (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
  sub_76A340();
  v175 = v371;
  v176 = v372;
  v177 = v373;
  (*(v372 + 16))(v371, v170, v373);
  (*(v176 + 56))(v175, 0, 1, v177);
  sub_76A420();
  [v163 setUserInteractionEnabled:v169];
  [v163 _setWantsAccessibilityUnderline:v169];

  (*(v176 + 8))(v170, v177);
  sub_10A2C(v376, &unk_948010);
  v178 = sub_7598C0();
  v180 = v179;
  v181 = sub_75DA30();
  if (sub_759890())
  {
    v160 = v377;
    if (qword_93D2E0 != -1)
    {
      swift_once();
    }

    v182 = [qword_9597B8 configurationWithTraitCollection:v181];
    v183 = sub_759910();
  }

  else
  {
    v183 = 0;
    v160 = v377;
  }

  v184 = sub_51B054(v178, v180, v181, v183);

  [v163 setAttributedTitle:v184 forState:0];

  v166 = v399;
  v154 = v383;
LABEL_40:
  if (sub_759840())
  {

    v185 = v335;
    sub_1ED18(v166 + v379, v335, &unk_948720);
    v186 = v384;
    v187 = v396;
    if ((*(v384 + 48))(v185, 1, v396) == 1)
    {
      sub_10A2C(v185, &unk_948720);
      v397 = 0;
    }

    else
    {
      (*(v186 + 32))(v336, v185, v187);
      v188 = v339;
      sub_766470();
      sub_766C70();
      v189 = *(v340 + 8);
      v190 = v342;
      v189(v188, v342);
      sub_766470();
      sub_766C70();
      v191 = v188;
      v159 = v369;
      v192 = v190;
      v160 = v377;
      v189(v191, v192);
      v193 = v336;
      sub_766610();
      sub_7670D0();
      swift_allocObject();
      v397 = sub_7670B0();
      (*(v186 + 8))(v193, v187);
    }

    v154 = v383;
  }

  else
  {
    v397 = 0;
  }

  v194 = sub_759770();
  if (v194)
  {
  }

  v195 = v160;
  if (qword_93D310 != -1)
  {
    swift_once();
  }

  v196 = qword_9597E8;
  v197 = sub_7598A0();
  v199 = v198;
  v200 = sub_75DA30();
  v201 = sub_51B374(v197, v199, v200, v194 != 0);

  v391 = v196;
  [v196 setAttributedTitle:v201 forState:0];

  v202 = v394;
  v203 = v195;
  (*(v394 + 56))(v195, 1, 1, v154);
  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  v204 = v362;
  sub_1ED18(v195, v362, &unk_948010);
  if ((*(v202 + 48))(v204, 1, v154) == 1)
  {
    sub_10A2C(v204, &unk_948010);
  }

  else
  {
    v205 = sub_759790();
    (v382)(v204, v154);
    if (v205)
    {
      goto LABEL_56;
    }
  }

  if (qword_93D348 != -1)
  {
    swift_once();
  }

  v206 = qword_959860;
LABEL_56:
  v207 = v194 != 0;
  sub_76A320();
  v208 = [objc_opt_self() clearColor];
  v209 = sub_76A230();
  sub_767760();
  v209(&v420, 0);
  v210 = sub_76A230();
  sub_767740();
  v210(&v420, 0);
  v211 = sub_BE70(0, &qword_93F900);
  v212 = sub_769E10();
  *(swift_allocObject() + 16) = v212;
  v213 = v212;
  v214 = v370;
  sub_767BA0();
  v215 = sub_767B90();
  (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
  sub_76A340();
  v216 = v371;
  v217 = v372;
  v218 = v373;
  (*(v372 + 16))(v371, v159, v373);
  (*(v217 + 56))(v216, 0, 1, v218);
  v219 = v391;
  sub_76A420();
  [v219 setNeedsUpdateConfiguration];
  [v219 setContentHorizontalAlignment:4];
  [v219 setUserInteractionEnabled:v207];
  [v219 _setWantsAccessibilityUnderline:v207];

  (*(v217 + 8))(v159, v218);
  sub_10A2C(v203, &unk_948010);
  if (sub_759780())
  {

    v220 = v338;
    sub_1ED18(v399 + v388, v338, &unk_948720);
    v221 = v384;
    v222 = v396;
    v223 = (*(v384 + 48))(v220, 1, v396);
    v224 = v363;
    if (v223 == 1)
    {
      sub_10A2C(v220, &unk_948720);
      v225 = 0;
    }

    else
    {
      (*(v221 + 32))(v341, v220, v222);
      v226 = v339;
      sub_766470();
      sub_766C70();
      v394 = v211;
      v227 = *(v340 + 8);
      v228 = v342;
      v227(v226, v342);
      sub_766470();
      sub_766C70();
      v227(v226, v228);
      v229 = v341;
      sub_766610();
      sub_7670D0();
      swift_allocObject();
      v225 = sub_7670B0();
      (*(v221 + 8))(v229, v396);
    }
  }

  else
  {
    v225 = 0;
    v224 = v363;
  }

  v230 = v374;
  v231 = sub_7598D0();
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
      sub_766AE0();
      if (qword_93D330 != -1)
      {
        swift_once();
      }

      sub_BE38(v233, qword_959828);
      v235 = sub_75DA30();
      v236 = sub_769E10();

      v237 = v332;
      sub_766AD0();

      v238 = v224;
      v239 = v345;
      v240 = v346;
      v241 = *(v345 + 8);
      v241(v238, v346);
      v242 = v343;
      sub_766AA0();
      v241(v237, v240);
      v243 = v344;
      sub_766A90();
      v241(v242, v240);
      (*(v239 + 16))(v242, v243, v240);
      sub_766D50();
      v244 = v331;
      sub_766D80();
      v241(v243, v240);
      v245 = v395;
      sub_10A2C(v395, &qword_959958);
      (v380)(v244, 0, 1, v386);
      sub_109C4(v244, v245, &qword_959958);
      v230 = v374;
      v225 = v396;
    }

    else
    {
    }
  }

  v246 = sub_759850();
  v247 = sub_51B550(v246);
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
      v253 = sub_75DA30();
      v254 = sub_769E10();
      v255 = [objc_opt_self() configurationWithFont:v254 scale:2];
      v256 = sub_769210();
      sub_51BE60(v250, v251, v252);
      v257 = [objc_opt_self() _systemImageNamed:v256 withConfiguration:v255];

      if (v257)
      {
        v258 = v257;
        [v258 size];
        v259 = sub_7670D0();
        swift_allocObject();
        v260 = sub_7670B0();
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
      sub_766AE0();
      v263 = sub_75DA30();
      v264 = sub_769E10();

      sub_766AD0();
      (*(v345 + 8))(v262, v346);
      sub_766D50();
      v265 = v330;
      sub_766D80();
      sub_766D40();
      v261 = v386;
      (*(v385 + 8))(v265, v386);
      v266 = *(&v421 + 1);
      v267 = v422;
      v268 = sub_B170(&v420, *(&v421 + 1));
      *(&v418 + 1) = v266;
      v419 = v267[1];
      v269 = sub_B1B4(&v417);
      (*(*(v266 - 8) + 16))(v269, v268, v266);
      sub_BEB8(&v420);
    }

    v225 = v396;
  }

  v420 = v417;
  v421 = v418;
  v422 = v419;
  sub_51A5A4(v399, v392);
  sub_1ED18(v423, &v417, &unk_943B10);
  if (v390)
  {
    v270 = v390;
    if (([v270 isHidden] & 1) == 0 && objc_msgSend(v270, "hasContent"))
    {
      v271 = sub_75C560();
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
    v274 = sub_7670D0();
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
  v276 = sub_75C560();
  v412[4] = &protocol witness table for UIButton;
  v412[3] = v276;
  v412[0] = v391;
  if (v225)
  {
    v277 = sub_7670D0();
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
  sub_1ED18(v395, v364, &qword_959958);
  if ((*(v272 + 48))(v280, 1, v261) == 1)
  {

    v281 = v391;
    sub_10A2C(v280, &qword_959958);
    v408 = 0u;
    v409 = 0u;
    v410 = 0;
  }

  else
  {
    *(&v409 + 1) = v261;
    v410 = &protocol witness table for LabelPlaceholder;
    v282 = sub_B1B4(&v408);
    (*(v272 + 32))(v282, v280, v261);

    v283 = v391;
  }

  sub_1ED18(&v420, v407, &unk_943B10);
  sub_51A5A4(v392, v230);
  sub_1ED18(&v417, v401, &unk_943B10);
  v284 = v402;
  if (v402)
  {
    v285 = v403;
    sub_B170(v401, v402);
    v286 = sub_76A480();
    v287 = *(v286 - 8);
    __chkstk_darwin(v286);
    v289 = &v329 - v288;
    sub_766510();
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
      v292 = sub_B1B4(&v404);
      (*(v290 + 32))(v292, v289, v284);
    }

    v291 = v389;
    sub_BEB8(v401);
  }

  else
  {
    sub_10A2C(v401, &unk_943B10);
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
  sub_1ED18(&v414, v230 + v291[6], &unk_941EB0);
  sub_1ED18(v413, v401, &unk_943B10);
  v295 = v402;
  if (v402)
  {
    v296 = v403;
    sub_B170(v401, v402);
    v297 = sub_76A480();
    v298 = *(v297 - 8);
    __chkstk_darwin(v297);
    v300 = &v329 - v299;
    sub_766510();
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
      v302 = sub_B1B4(&v404);
      (*(v301 + 32))(v302, v300, v295);
    }

    sub_BEB8(v401);
    v291 = v389;
  }

  else
  {
    sub_10A2C(v401, &unk_943B10);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v303 = v230 + v291[7];
  v304 = v405;
  *v303 = v404;
  *(v303 + 16) = v304;
  *(v303 + 32) = v406;
  sub_134D8(v412, v230 + v291[8]);
  sub_1ED18(v411, v401, &unk_943B10);
  v305 = v402;
  if (v402)
  {
    v306 = v403;
    sub_B170(v401, v402);
    v307 = sub_76A480();
    v308 = *(v307 - 8);
    __chkstk_darwin(v307);
    v310 = &v329 - v309;
    sub_766510();
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
      v312 = sub_B1B4(&v404);
      (*(v311 + 32))(v312, v310, v305);
    }

    sub_BEB8(v401);
    v291 = v389;
  }

  else
  {
    sub_10A2C(v401, &unk_943B10);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v313 = v230 + v291[9];
  v314 = v405;
  *v313 = v404;
  *(v313 + 16) = v314;
  *(v313 + 32) = v406;
  sub_1ED18(&v408, v230 + v291[10], &unk_941EB0);
  sub_1ED18(v407, v401, &unk_943B10);
  v315 = v402;
  if (v402)
  {
    v316 = v230;
    v317 = v403;
    sub_B170(v401, v402);
    v318 = sub_76A480();
    v319 = *(v318 - 8);
    __chkstk_darwin(v318);
    v321 = &v329 - v320;
    sub_766510();
    v322 = *(v315 - 8);
    if ((*(v322 + 48))(v321, 1, v315) == 1)
    {
      sub_10A2C(v407, &unk_943B10);
      sub_10A2C(&v417, &unk_943B10);
      sub_51A608(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10A2C(&v408, &unk_941EB0);
      sub_10A2C(v411, &unk_943B10);
      sub_BEB8(v412);
      sub_10A2C(v413, &unk_943B10);
      sub_10A2C(&v414, &unk_941EB0);
      (*(v319 + 8))(v321, v318);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v315;
      v406 = v317;
      v323 = sub_B1B4(&v404);
      (*(v322 + 32))(v323, v321, v315);
      sub_10A2C(v407, &unk_943B10);
      sub_10A2C(&v417, &unk_943B10);
      sub_51A608(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10A2C(&v408, &unk_941EB0);
      sub_10A2C(v411, &unk_943B10);
      sub_BEB8(v412);
      sub_10A2C(v413, &unk_943B10);
      sub_10A2C(&v414, &unk_941EB0);
    }

    sub_BEB8(v401);
    v291 = v389;
    v230 = v316;
  }

  else
  {
    sub_10A2C(v407, &unk_943B10);
    sub_10A2C(&v417, &unk_943B10);
    sub_51A608(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10A2C(&v408, &unk_941EB0);
    sub_10A2C(v411, &unk_943B10);
    sub_BEB8(v412);
    sub_10A2C(v413, &unk_943B10);
    sub_10A2C(&v414, &unk_941EB0);
    sub_10A2C(v401, &unk_943B10);
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
  sub_51C078(v230, v366, type metadata accessor for ShelfHeaderLayout);
  v327 = sub_75DA30();
  ShelfHeaderLayout.measure(toFit:with:)(v327);

  sub_51A608(v326, type metadata accessor for ShelfHeaderLayout);
  sub_10A2C(&v420, &unk_943B10);
  sub_10A2C(v423, &unk_943B10);
  sub_10A2C(v395, &qword_959958);
  sub_51A608(v399, type metadata accessor for ShelfHeaderLayout.Metrics);
  return v158;
}

uint64_t sub_51242C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7664A0();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_94AFE8);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_BD88(&qword_959940);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  sub_1ED18(a3, v13, &qword_94AFE8);
  v17 = sub_759760();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v55 = v13;
  v20 = v19(v13, 1, v17);
  v53 = a1;
  v54 = a2;
  if (v20 != 1)
  {
    sub_1ED18(v55, v10, &qword_94AFE8);
    if ((*(v18 + 88))(v10, v17) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v21 = v14;
      v50 = *(v14 + 48);
      if (qword_93D320 != -1)
      {
        swift_once();
      }

      v22 = sub_7666D0();
      v48 = sub_BE38(v22, qword_9597F8);
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
      v26 = sub_B1B4(v56);
      v27 = *(v25 + 16);
      v27(v26, v24, v6);
      sub_766CB0();
      v28 = *(v25 + 8);
      v28(v24, v6);
      v47(v24, v48, v22);
      (v45)(v24, v46, v6);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v29 = sub_B1B4(v56);
      v27(v29, v24, v6);
      sub_766CB0();
      v28(v24, v6);
      v31 = v53;
      v30 = v54;
      goto LABEL_10;
    }

    (*(v18 + 8))(v10, v17);
  }

  v49 = *(v14 + 48);
  v50 = v14;
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  v47 = sub_BE38(v32, qword_9597F8);
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
  v37 = sub_B1B4(v56);
  v38 = *(v36 + 16);
  v38(v37, v34, v6);
  sub_766CB0();
  v39 = *(v36 + 8);
  v39(v34, v6);
  v46(v34, v47, v32);
  (v45)(v34, v35, v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v40 = sub_B1B4(v56);
  v38(v40, v34, v6);
  sub_766CB0();
  v39(v34, v6);
  v31 = v53;
  v30 = v54;
  v21 = v50;
LABEL_10:
  sub_10A2C(v55, &qword_94AFE8);
  v41 = *(v21 + 48);
  v42 = sub_766CA0();
  v43 = *(*(v42 - 8) + 32);
  v43(v31, v16, v42);
  return (v43)(v30, &v16[v41], v42);
}

uint64_t sub_512A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7664A0();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_94AFE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_BD88(&qword_959940);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_1ED18(a3, v14, &qword_94AFE8);
  v18 = sub_759760();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v57 = v14;
  v21 = v20(v14, 1, v18);
  v55 = a1;
  v56 = a2;
  if (v21 != 1)
  {
    sub_1ED18(v57, v11, &qword_94AFE8);
    if ((*(v19 + 88))(v11, v18) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v22 = v17;
      v23 = v15;
      v52 = *(v15 + 48);
      if (qword_93D328 != -1)
      {
        swift_once();
      }

      v24 = sub_7666D0();
      v50 = sub_BE38(v24, qword_959810);
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
      v28 = sub_B1B4(v58);
      v29 = *(v27 + 16);
      v29(v28, v8, v26);
      sub_766CB0();
      v30 = *(v27 + 8);
      v30(v8, v26);
      v49(v8, v50, v24);
      (v47)(v8, v48, v26);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v31 = sub_B1B4(v58);
      v29(v31, v8, v26);
      sub_766CB0();
      v30(v8, v26);
      v33 = v55;
      v32 = v56;
      goto LABEL_10;
    }

    (*(v19 + 8))(v11, v18);
  }

  v51 = *(v15 + 48);
  v52 = v15;
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v34 = sub_7666D0();
  v49 = sub_BE38(v34, qword_959810);
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
  v39 = sub_B1B4(v58);
  v40 = *(v37 + 16);
  v40(v39, v8, v38);
  sub_766CB0();
  v41 = *(v37 + 8);
  v41(v8, v38);
  v48(v8, v49, v34);
  (v47)(v8, v36, v38);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v42 = sub_B1B4(v58);
  v40(v42, v8, v38);
  sub_766CB0();
  v41(v8, v38);
  v22 = v17;
  v33 = v55;
  v32 = v56;
  v23 = v52;
LABEL_10:
  sub_10A2C(v57, &qword_94AFE8);
  v43 = *(v23 + 48);
  v44 = sub_766CA0();
  v45 = *(*(v44 - 8) + 32);
  v45(v33, v22, v44);
  return (v45)(v32, &v22[v43], v44);
}

id sub_5130E4()
{
  result = [objc_opt_self() configurationWithScale:1];
  qword_9597B8 = result;
  return result;
}

void sub_513198(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(NSAttributedString);
  v6 = sub_769210();
  v7 = [v5 initWithString:v6];

  *a4 = v7;
}

uint64_t sub_513260(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C560();
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v7, a3);
  (*(v8 + 16))(v10, v11, v7);
  result = sub_75C550();
  *a4 = result;
  return result;
}

id sub_5133E0(uint64_t a1, uint64_t *a2, id *a3, int a4)
{
  v7 = sub_7666D0();
  sub_161DC(v7, a2);
  v8 = sub_BE38(v7, a2);
  v10 = *a3;
  *v8 = *a3;
  *(v8 + 8) = a4;
  (*(*(v7 - 8) + 104))();

  return v10;
}

char *sub_5134D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v182 = a4;
  v181 = a3;
  v180 = a2;
  v179 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_BD88(&unk_948720);
  __chkstk_darwin(v6 - 8);
  v189 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v186 = &v161 - v9;
  v185 = sub_BD88(&qword_959940);
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
  v21 = sub_BD88(&qword_94AFE8);
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
  top = COERCE_DOUBLE(sub_760AD0());
  v173 = *(*&top - 8);
  __chkstk_darwin(*&top);
  *&v175 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v31 - 8);
  v172 = &v161 - v32;
  v33 = sub_7666D0();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v191 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_7674E0();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_767510();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView;
  *&v5[v44] = [objc_allocWithZone(UIView) init];
  v183 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView;
  (*(v37 + 104))(v39, enum case for Separator.Position.top(_:), v36);
  v199 = sub_766970();
  v200 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v198);
  sub_766960();
  sub_7674F0();
  v45 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v47 = *(v41 + 40);
  v48 = v45;
  v47(&v45[v46], v43, v40);
  swift_endAccess();

  *(v183 + v5) = v48;
  v49 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton;
  sub_75C560();
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v50 = sub_BE38(v33, qword_9597F8);
  v171 = v34;
  v51 = *(v34 + 16);
  v169 = *&v50;
  v183 = v51;
  (v51)(v191);
  *&v5[v49] = sub_75C550();
  v167 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork] = 0;
  v52 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType;
  v53 = sub_759760();
  v164 = *(v53 - 8);
  v54 = *(v164 + 56);
  v168 = v52;
  v54(&v52[v5], 1, 1, v53);
  v55 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView;
  sub_759210();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v55] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton;
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v166 = sub_BE38(v33, qword_959810);
  (v183)(v191);
  *&v5[v57] = sub_75C550();
  v165 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork] = 0;
  v58 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType;
  v162 = v53;
  v54(&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType], 1, 1, v53);
  v59 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView;
  *&v5[v59] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v60 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton;
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  v170 = sub_BE38(v33, qword_959840);
  v61 = v183;
  (v183)(v191);
  *&v5[v60] = sub_75C550();
  v62 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel;
  v66 = v185;
  v67 = v171;
  v68 = v61;
  if (qword_93D330 != -1)
  {
    swift_once();
  }

  v69 = sub_BE38(v33, qword_959828);
  v70 = v172;
  (v68)(v172, v69, v33);
  (*(v67 + 56))(v70, 0, 1, v33);
  (*(*&v173 + 104))(COERCE_CGFLOAT(*&v175), enum case for DirectionalTextAlignment.none(_:), COERCE_CGFLOAT(*&top));
  v71 = objc_allocWithZone(sub_75BB20());
  *&v5[v65] = sub_75BB10();
  v72 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  v73 = sub_759810();
  (*(*(v73 - 8) + 56))(&v5[v72], 1, 1, v73);
  v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch] = 0;
  v74 = *&v167[v5];
  v75 = v168;
  swift_beginAccess();
  v76 = v184;
  sub_1ED18(v75 + v5, v184, &qword_94AFE8);
  v77 = *&v165[v5];
  swift_beginAccess();
  sub_1ED18(&v5[v58], v196, &qword_94AFE8);
  v78 = objc_opt_self();
  v171 = v77;

  v191 = v74;

  v79.super.isa = [v78 currentTraitCollection];
  isa = v79.super.isa;
  bottom = UIEdgeInsetsZero.bottom;
  v82 = sub_7666B0(v79).super.isa;
  [(objc_class *)v82 pointSize];
  v84 = v83;
  v85 = objc_opt_self();
  v167 = v82;
  v168 = [v85 fontWithDescriptor:v82 size:v84];
  [v168 lineHeight];
  v172 = v86;
  sub_51242C(v192, v192 + *(v66 + 48), v76);
  v87.super.isa = isa;
  v88 = sub_7666B0(v87).super.isa;
  [(objc_class *)v88 pointSize];
  v165 = v88;
  v166 = [v85 fontWithDescriptor:v88 size:?];
  [v166 lineHeight];
  v173 = v89;
  sub_512A90(v193, v193 + *(v66 + 48), v196);
  v183 = isa;
  v90 = [(objc_class *)isa preferredContentSizeCategory];
  LOBYTE(v76) = sub_769B30();

  if ((v76 & 1) == 0 || (v91 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v92 = v163;
    sub_1ED18(v196, v163, &qword_94AFE8);
    v93 = v164;
    v94 = v162;
    v91 = 7.0;
    if ((*(v164 + 48))(v92, 1, v162) != 1)
    {
      v95 = v161;
      sub_1ED18(v92, v161, &qword_94AFE8);
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

    sub_10A2C(v92, &qword_94AFE8);
  }

  v169 = v91;
  v97.super.isa = v183;
  v98.super.isa = sub_7666B0(v97).super.isa;
  [(objc_class *)v98.super.isa pointSize];
  v99 = [v85 fontWithDescriptor:v98.super.isa size:?];
  [v99 lineHeight];
  v101 = v100;
  top = UIEdgeInsetsZero.top;
  sub_7697D0();
  v170 = v102;
  v164 = v103;
  v163 = v104;
  v162 = v105;
  sub_7697D0();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v192;
  sub_1ED18(v192, v194, &qword_959940);
  sub_1ED18(v114, v195, &qword_959940);
  v175 = bottom;
  if (v191)
  {
    sub_765260();
    v115 = v186;
    sub_7666A0();
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v115 = v186;
  }

  v117 = sub_766690();
  v118 = *(*(v117 - 8) + 56);
  v118(v115, v116, 1, v117);
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v121 = v193;
  sub_1ED18(v193, v187, &qword_959940);
  sub_1ED18(v121, v188, &qword_959940);
  v178 = v5;
  if (v171)
  {
    sub_765260();
    v122 = v189;
    sub_7666A0();

    v123 = 0;
  }

  else
  {

    v123 = 1;
    v122 = v189;
  }

  v124 = v185;

  sub_10A2C(v193, &qword_959940);
  sub_10A2C(v192, &qword_959940);
  sub_10A2C(v196, &qword_94AFE8);
  sub_10A2C(v184, &qword_94AFE8);
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
  v134 = sub_766CA0();
  v135 = *(v134 - 8);
  v136 = *(v135 + 32);
  v136(v130 + v133, v194, v134);
  v136(v130 + v128[8], v195 + v127, v134);
  *(v130 + v128[9]) = 0x4008000000000000;
  sub_B33C8(v186, v130 + v129, &unk_948720);
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
  sub_B33C8(v189, v130 + v196, &unk_948720);
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
  sub_51C078(v130, &v178[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_metrics], type metadata accessor for ShelfHeaderLayout.Metrics);
  v143 = ObjectType;
  v197.receiver = v142;
  v197.super_class = ObjectType;
  v144 = objc_msgSendSuper2(&v197, "initWithFrame:", v179, v180, v181, v182);
  v145 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton;
  v146 = *&v144[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton];
  sub_BE70(0, &qword_955FA0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v147 = v144;
  v148 = v146;
  v149 = sub_76A1F0();
  [v148 addAction:v149 forControlEvents:0x2000];

  v150 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton;
  v151 = *&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v152 = v151;
  v153 = sub_76A1F0();
  [v152 addAction:v153 forControlEvents:0x2000];

  v154 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton;
  v155 = *&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = v155;
  v157 = sub_76A1F0();
  [v156 addAction:v157 forControlEvents:0x2000];

  v158 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView;
  [*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView] addSubview:*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView]];
  [*&v147[v158] addSubview:*&v147[v154]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView]];
  [*&v147[v158] addSubview:*&v144[v145]];
  [*&v147[v158] addSubview:*&v147[v150]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel]];
  [v147 addSubview:*&v147[v158]];
  sub_514D18();
  sub_BD88(&qword_9477F0);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_77E280;
  *(v159 + 32) = sub_767B80();
  *(v159 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v159 + 48) = sub_7676F0();
  *(v159 + 56) = &protocol witness table for UITraitLegibilityWeight;
  v199 = v143;
  v198 = v147;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(&v198);
  return v147;
}

void sub_514C80(uint64_t a1, uint64_t a2, void *a3)
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
      sub_F714(*v6);

      v7();
      sub_F704(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_514D18()
{
  v1 = v0;
  v2 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v2 - 8);
  v118 = &v96 - v3;
  v4 = sub_BD88(&unk_95A870);
  __chkstk_darwin(v4 - 8);
  v117 = &v96 - v5;
  v115 = sub_76A3F0();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v96 - v8;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_BD88(&unk_948010);
  __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v96 - v15;
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  __chkstk_darwin(v19);
  v102 = &v96 - v20;
  v21 = sub_759810();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
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
    v33 = sub_7597F0();
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
    sub_759800();
    (*(v36 + 8))(v24, v21);
  }

  sub_7590A0();
  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton];
  v114 = v26;
  v38 = &v1[v26];
  v39 = v102;
  sub_1ED18(v38, v102, &unk_948010);
  v40 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  v98 = [v1 traitCollection];
  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  sub_1ED18(v39, v18, &unk_948010);
  v41 = v21;
  if (v121(v18, 1, v21) == 1)
  {
    sub_10A2C(v18, &unk_948010);
    v42 = v112;
  }

  else
  {
    v43 = sub_7597B0();
    (*(v116 + 8))(v18, v21);
    v42 = v112;
    if (v43)
    {
      goto LABEL_11;
    }
  }

  if (qword_93D340 != -1)
  {
    swift_once();
  }

  v44 = qword_959858;
LABEL_11:
  v97 = v41;
  sub_76A320();
  v45 = sub_BE70(0, &qword_93F900);
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v46 = v40 != 0;
  v103 = sub_7666D0();
  sub_BE38(v103, qword_9597F8);
  v47 = v98;
  v111 = v45;
  v48 = sub_769E10();
  *(swift_allocObject() + 16) = v48;
  v49 = v48;
  v50 = v117;
  sub_767BA0();
  v51 = sub_767B90();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v110 = v51;
  v109 = v53;
  v108 = v52 + 56;
  (v53)(v50, 0, 1);
  sub_76A340();
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
  sub_76A420();
  [v37 setUserInteractionEnabled:v46];
  [v37 _setWantsAccessibilityUnderline:v46];

  v59 = *(v55 + 8);
  v119 = v55 + 8;
  v112 = v59;
  (v59)(v11, v57);
  sub_10A2C(v102, &unk_948010);
  v60 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton];
  v61 = v113;
  sub_1ED18(&v1[v114], v113, &unk_948010);
  v62 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  v63 = [v1 traitCollection];
  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  v64 = v61;
  v65 = v99;
  sub_1ED18(v64, v99, &unk_948010);
  v66 = v97;
  if (v121(v65, 1, v97) == 1)
  {
    sub_10A2C(v65, &unk_948010);
  }

  else
  {
    v67 = sub_759790();
    (*(v116 + 8))(v65, v66);
    if (v67)
    {
      goto LABEL_19;
    }
  }

  if (qword_93D348 != -1)
  {
    swift_once();
  }

  v68 = qword_959860;
LABEL_19:
  sub_76A320();
  v102 = objc_opt_self();
  v69 = [v102 clearColor];
  v70 = sub_76A230();
  sub_767760();
  v70(v122, 0);
  v71 = sub_76A230();
  sub_767740();
  v71(v122, 0);
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v72 = v62 != 0;
  sub_BE38(v103, qword_959810);
  v73 = sub_769E10();
  *(swift_allocObject() + 16) = v73;
  v74 = v73;
  v75 = v117;
  sub_767BA0();
  v109(v75, 0, 1, v110);
  sub_76A340();
  v76 = v118;
  v77 = v115;
  v106(v118, v42, v115);
  v104(v76, 0, 1, v77);
  sub_76A420();
  [v60 setNeedsUpdateConfiguration];
  [v60 setContentHorizontalAlignment:4];
  [v60 setUserInteractionEnabled:v72];
  [v60 _setWantsAccessibilityUnderline:v72];

  (v112)(v42, v77);
  sub_10A2C(v113, &unk_948010);
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
    sub_7597E0();
    (*(v82 + 8))(v81, v66);
  }

  sub_7590A0();
  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  if (v121(&v1[v78], 1, v66) || (v84 = v116, (*(v116 + 16))(v81, &v1[v78], v66), v85 = sub_7597D0(), (*(v84 + 8))(v81, v66), !v85))
  {
    v83 = [v102 systemBlueColor];
  }

  sub_76A320();
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  sub_BE38(v103, qword_959840);
  v86 = [v1 traitCollection];
  v87 = sub_769E10();

  *(swift_allocObject() + 16) = v87;
  v88 = v87;
  v89 = v117;
  sub_767BA0();
  v109(v89, 0, 1, v110);
  sub_76A340();
  v90 = v118;
  v106(v118, v80, v77);
  v104(v90, 0, 1, v77);
  sub_76A420();
  v91 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel];
  if (v121(&v1[v78], 1, v66) || (v93 = v78, v94 = v116, (*(v116 + 16))(v81, &v1[v93], v66), v92 = sub_7597C0(), (*(v94 + 8))(v81, v66), !v92))
  {
    if (qword_93D350 != -1)
    {
      swift_once();
    }

    v92 = qword_959868;
  }

  [v91 setTextColor:v92];

  [v1 setNeedsLayout];
  return (v112)(v80, v77);
}

uint64_t sub_515CDC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&unk_948010);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_BD88(&qword_94AFE8);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v21 - v7;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "prepareForReuse", v6);
  v9 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_F704(v10);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton] setAttributedTitle:0 forState:0];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork] = 0;

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView] setHidden:1];
  v11 = sub_759760();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  sub_B33C8(v8, &v0[v12], &qword_94AFE8);
  swift_endAccess();
  v13 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_F704(v14);
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton];
  [v15 setTitle:0 forState:0];
  [v15 setImage:0 forState:0];
  v16 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_F704(v17);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton] setAttributedTitle:0 forState:0];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel] setText:0];
  v18 = sub_759810();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_51A668(v4, &v0[v19]);
  swift_endAccess();
  sub_514D18();
  return sub_10A2C(v4, &unk_948010);
}

double sub_516038@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_metrics;
  swift_beginAccess();
  v69 = v5;
  sub_51A5A4(v2 + v6, v5);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView);
  v86[3] = type metadata accessor for SeparatorView();
  v86[4] = &protocol witness table for UIView;
  v86[0] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton);
  v9 = v7;
  if (([v8 isHidden] & 1) != 0 || !objc_msgSend(v8, "hasContent"))
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    *(&v84 + 1) = sub_75C560();
    v85 = &protocol witness table for UIButton;
    *&v83 = v8;
    v10 = v8;
  }

  v11 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView);
  v12 = sub_759210();
  v82[3] = v12;
  v82[4] = &protocol witness table for UIView;
  v82[0] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton);
  v14 = sub_75C560();
  v81[3] = v14;
  v81[4] = &protocol witness table for UIButton;
  v80[4] = &protocol witness table for UIView;
  v81[0] = v13;
  v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView);
  v80[3] = v12;
  v80[0] = v15;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  v19 = sub_516DCC();
  v20 = v19;
  if (v19)
  {
    v19 = sub_75BB20();
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
  v22 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton);
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
  sub_51A5A4(v69, v68);
  sub_1ED18(v86, v70, &unk_943B10);
  v25 = v71;
  if (v71)
  {
    v26 = v72;
    sub_B170(v70, v71);
    v27 = sub_76A480();
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    v30 = &v67 - v29;
    sub_766510();
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
      v32 = sub_B1B4(&v73);
      (*(v31 + 32))(v32, v30, v25);
    }

    sub_BEB8(v70);
  }

  else
  {
    sub_10A2C(v70, &unk_943B10);
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
  sub_1ED18(&v83, v24 + v33[6], &unk_941EB0);
  sub_1ED18(v82, v70, &unk_943B10);
  v36 = v71;
  if (v71)
  {
    v37 = v72;
    sub_B170(v70, v71);
    v38 = sub_76A480();
    v39 = *(v38 - 8);
    __chkstk_darwin(v38);
    v41 = &v67 - v40;
    sub_766510();
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
      v43 = sub_B1B4(&v73);
      (*(v42 + 32))(v43, v41, v36);
    }

    sub_BEB8(v70);
  }

  else
  {
    sub_10A2C(v70, &unk_943B10);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v44 = v24 + v33[7];
  v45 = v74;
  *v44 = v73;
  *(v44 + 16) = v45;
  *(v44 + 32) = v75;
  sub_134D8(v81, v24 + v33[8]);
  sub_1ED18(v80, v70, &unk_943B10);
  v46 = v71;
  if (v71)
  {
    v47 = v72;
    sub_B170(v70, v71);
    v48 = sub_76A480();
    v49 = *(v48 - 8);
    __chkstk_darwin(v48);
    v51 = &v67 - v50;
    sub_766510();
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
      v53 = sub_B1B4(&v73);
      (*(v52 + 32))(v53, v51, v46);
    }

    sub_BEB8(v70);
  }

  else
  {
    sub_10A2C(v70, &unk_943B10);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v54 = v24 + v33[9];
  v55 = v74;
  *v54 = v73;
  *(v54 + 16) = v55;
  *(v54 + 32) = v75;
  sub_1ED18(v79, v24 + v33[10], &unk_941EB0);
  sub_1ED18(&v76, v70, &unk_943B10);
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    sub_B170(v70, v71);
    v58 = sub_76A480();
    v67 = &v67;
    v59 = *(v58 - 8);
    __chkstk_darwin(v58);
    v61 = &v67 - v60;
    sub_766510();
    v62 = *(v56 - 8);
    if ((*(v62 + 48))(v61, 1, v56) == 1)
    {
      sub_51A608(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10A2C(&v76, &unk_943B10);
      sub_10A2C(v79, &unk_941EB0);
      sub_10A2C(v80, &unk_943B10);
      sub_BEB8(v81);
      sub_10A2C(v82, &unk_943B10);
      sub_10A2C(&v83, &unk_941EB0);
      sub_10A2C(v86, &unk_943B10);
      (*(v59 + 8))(v61, v58);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v56;
      v75 = v57;
      v63 = sub_B1B4(&v73);
      (*(v62 + 32))(v63, v61, v56);
      sub_51A608(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10A2C(&v76, &unk_943B10);
      sub_10A2C(v79, &unk_941EB0);
      sub_10A2C(v80, &unk_943B10);
      sub_BEB8(v81);
      sub_10A2C(v82, &unk_943B10);
      sub_10A2C(&v83, &unk_941EB0);
      sub_10A2C(v86, &unk_943B10);
    }

    sub_BEB8(v70);
  }

  else
  {
    sub_51A608(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10A2C(&v76, &unk_943B10);
    sub_10A2C(v79, &unk_941EB0);
    sub_10A2C(v80, &unk_943B10);
    sub_BEB8(v81);
    sub_10A2C(v82, &unk_943B10);
    sub_10A2C(&v83, &unk_941EB0);
    sub_10A2C(v86, &unk_943B10);
    sub_10A2C(v70, &unk_943B10);
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

void *sub_516DCC()
{
  if ([v0 isHidden])
  {
    return 0;
  }

  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = sub_769240();
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

uint64_t sub_516EE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_756F10();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_1EABC();
  v7 = a2;
  return sub_756F20();
}

uint64_t sub_516F84(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v9 = sub_7652D0();
  __chkstk_darwin(v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_94AFE8);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  v18 = sub_759760();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1ED18(a2, v17, &qword_94AFE8);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v24 = *(v19 + 32);
      v27[1] = v11;
      v28 = v24;
      v24(v21, v17, v18);
      *(v5 + *a3) = a1;
      swift_retain_n();

      [*(v5 + *v29) setHidden:0];
      sub_7652E0();
      sub_7591B0();

      v28(v14, v21, v18);
      (*(v19 + 56))(v14, 0, 1, v18);
      v25 = *v30;
      swift_beginAccess();
      v23 = v5 + v25;
      goto LABEL_6;
    }

    sub_10A2C(v17, &qword_94AFE8);
  }

  *(v5 + *a3) = 0;

  [*(v5 + *v29) setHidden:1];
  (*(v19 + 56))(v14, 1, 1, v18);
  v22 = *v30;
  swift_beginAccess();
  v23 = v5 + v22;
LABEL_6:
  sub_B33C8(v14, v23, &qword_94AFE8);
  return swift_endAccess();
}

uint64_t sub_5172EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v216 = a5;
  v229 = *&a3;
  v230 = a2;
  ObjectType = swift_getObjectType();
  v224 = sub_768C60();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v222 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v220 = &v202 - v11;
  __chkstk_darwin(v12);
  v221 = &v202 - v13;
  v219 = sub_BD88(&unk_94F1F0);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v217 = &v202 - v14;
  v15 = sub_BD88(&unk_948720);
  __chkstk_darwin(v15 - 8);
  v238 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v234 = &v202 - v18;
  v233 = sub_BD88(&qword_959940);
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
  v31 = sub_BD88(&unk_948010);
  __chkstk_darwin(v31 - 8);
  v209 = &v202 - v32;
  v228 = sub_75DAB0();
  v33 = *(v228 - 1);
  __chkstk_darwin(v228);
  v225 = v34;
  v226 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_BD88(&qword_94AFE8);
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
  v46 = sub_759840();
  sub_759870();
  sub_516F84(v46, v45, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType);

  sub_10A2C(v45, &qword_94AFE8);
  v239 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton];
  v47 = sub_7598C0();
  v49 = v48;
  v240 = a4;
  v50 = sub_75DA30();
  v51 = sub_759890();
  v227 = a1;
  if (v51)
  {
    if (qword_93D2E0 != -1)
    {
      swift_once();
    }

    v52 = [qword_9597B8 configurationWithTraitCollection:v50];
    v53 = sub_759910();
  }

  else
  {
    v53 = 0;
  }

  v54 = sub_51B054(v47, v49, v50, v53);

  [v239 setAttributedTitle:v54 forState:0];

  v55 = sub_759780();
  sub_759860();
  sub_516F84(v55, v45, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType);

  sub_10A2C(v45, &qword_94AFE8);
  v56 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton];
  v57 = sub_7598A0();
  v59 = v58;
  v60 = v240;
  v61 = sub_75DA30();
  v62 = sub_759770();
  if (v62)
  {
  }

  v63 = sub_51B374(v57, v59, v61, v62 != 0);

  v214 = v56;
  [v56 setAttributedTitle:v63 forState:0];

  v64 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel];
  sub_7598D0();
  if (v65)
  {
    v66 = sub_769210();
  }

  else
  {
    v66 = 0;
  }

  v215 = v64;
  [v64 setText:v66];

  v67 = sub_759850();
  v68 = sub_51B550(v67);
  if (v70 == -1)
  {
    v82 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton];
    [v82 setTitle:0 forState:0];
    v213 = v82;
    [v82 setImage:0 forState:0];
  }

  else
  {
    v71 = v70;
    v72 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton];
    v213 = v72;
    if (v70)
    {
      v73 = v68;
      v74 = v69;
      [v72 setTitle:0 forState:0];
      v75 = v72;
      v76 = sub_75DA30();
      sub_BE70(0, &qword_93F900);
      if (qword_93D338 != -1)
      {
        swift_once();
      }

      v77 = sub_7666D0();
      sub_BE38(v77, qword_959840);
      v78 = sub_769E10();
      v79 = [objc_opt_self() configurationWithFont:v78 scale:2];
      v80 = sub_769210();
      sub_51BE60(v73, v74, v71);
      v81 = [objc_opt_self() _systemImageNamed:v80 withConfiguration:v79];

      [v75 setImage:v81 forState:0];
      v60 = v240;
    }

    else
    {
      v83 = v72;
      v84 = v68;
      v85 = v69;
      v86 = sub_769210();
      sub_51BE60(v84, v85, v71);
      [v83 setTitle:v86 forState:0];

      [v83 setImage:0 forState:0];
    }
  }

  v87 = sub_759770();
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
    *(v87 + 16) = sub_51C05C;
    *(v87 + 24) = v92;
    v93 = sub_51C11C;
  }

  else
  {
    v93 = 0;
  }

  v94 = &v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  v95 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  *v94 = v93;
  v94[1] = v87;
  sub_F704(v95);
  v96 = sub_759850();
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
    *(v96 + 16) = sub_51BFCC;
    *(v96 + 24) = v101;
    v102 = sub_51C11C;
  }

  else
  {
    v102 = 0;
  }

  v103 = &v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  v104 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  *v103 = v102;
  v103[1] = v96;
  sub_F704(v104);
  v105 = sub_759830();
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
    *(v105 + 16) = sub_51BF7C;
    *(v105 + 24) = v110;
    v111 = sub_46344;
  }

  else
  {
    v111 = 0;
  }

  v112 = &v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  v113 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  *v112 = v111;
  v112[1] = v105;
  sub_F704(v113);
  v114 = v209;
  sub_759820();
  v115 = sub_759810();
  (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
  v116 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_51A668(v114, &v6[v116]);
  swift_endAccess();
  sub_514D18();
  sub_10A2C(v114, &unk_948010);
  v117 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork];
  v118 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  v119 = v231;
  sub_1ED18(&v6[v118], v231, &qword_94AFE8);
  v120 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork];
  v121 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType;
  swift_beginAccess();
  v122 = v232;
  sub_1ED18(&v6[v121], v232, &qword_94AFE8);
  v225 = v120;

  v230 = v117;

  sub_51A6D8();
  v226 = v6;
  v123 = [v6 traitCollection];
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v124 = sub_7666D0();
  sub_BE38(v124, qword_9597F8);
  v125.super.isa = v123;
  isa = sub_7666B0(v125).super.isa;
  [(objc_class *)isa pointSize];
  v128 = v127;
  v129 = objc_opt_self();
  v207 = isa;
  v208 = [v129 fontWithDescriptor:isa size:v128];
  [v208 lineHeight];
  v209 = v130;
  v131 = v233;
  sub_51242C(v241, v241 + *(v233 + 48), v119);
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  sub_BE38(v124, qword_959810);
  v132.super.isa = v123;
  v133 = sub_7666B0(v132).super.isa;
  [(objc_class *)v133 pointSize];
  v205 = v133;
  v206 = [v129 fontWithDescriptor:v133 size:?];
  [v206 lineHeight];
  v229 = v134;
  sub_512A90(v242, v242 + *(v131 + 48), v122);
  v228 = v123;
  v135 = [(objc_class *)v123 preferredContentSizeCategory];
  v136 = sub_769B30();

  if ((v136 & 1) == 0 || (v137 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v138 = v204;
    sub_1ED18(v122, v204, &qword_94AFE8);
    v139 = sub_759760();
    v140 = *(v139 - 8);
    v137 = 7.0;
    if ((*(v140 + 48))(v138, 1, v139) != 1)
    {
      v141 = v203;
      sub_1ED18(v138, v203, &qword_94AFE8);
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

    sub_10A2C(v138, &qword_94AFE8);
  }

  ObjectType = *&v137;
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  sub_BE38(v124, qword_959840);
  v143.super.isa = v228;
  v144.super.isa = sub_7666B0(v143).super.isa;
  [(objc_class *)v144.super.isa pointSize];
  v145 = [v129 fontWithDescriptor:v144.super.isa size:?];
  [v145 lineHeight];
  v147 = v146;
  sub_7697D0();
  v204 = v148;
  v150 = v149;
  v152 = v151;
  v154 = v153;
  sub_7697D0();
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v163 = v241;
  sub_1ED18(v241, v243, &qword_959940);
  sub_1ED18(v163, v235, &qword_959940);
  if (v230)
  {
    sub_765260();
    v164 = v234;
    sub_7666A0();
    v165 = 0;
  }

  else
  {
    v165 = 1;
    v164 = v234;
  }

  v166 = v229 - v147;
  v167 = sub_766690();
  v168 = *(*(v167 - 8) + 56);
  v168(v164, v165, 1, v167);
  v169 = *&UIEdgeInsetsZero.top;
  v202 = *&UIEdgeInsetsZero.bottom;
  v203 = v169;
  v170 = v242;
  sub_1ED18(v242, v236, &qword_959940);
  sub_1ED18(v170, v237, &qword_959940);
  if (v225)
  {
    sub_765260();
    v171 = v238;
    sub_7666A0();

    v172 = 0;
  }

  else
  {

    v172 = 1;
    v171 = v238;
  }

  v173 = v231;

  sub_10A2C(v242, &qword_959940);
  sub_10A2C(v241, &qword_959940);
  sub_10A2C(v232, &qword_94AFE8);
  sub_10A2C(v173, &qword_94AFE8);
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
  v179 = sub_766CA0();
  v180 = *(v179 - 8);
  v181 = *(v180 + 32);
  v181(&v177[v178], v243, v179);
  v182 = v235;
  v181(&v177[v175[8]], v235 + v174, v179);
  *&v177[v175[9]] = 0x4008000000000000;
  sub_B33C8(v234, &v177[v176], &unk_948720);
  *&v177[v175[11]] = v229;
  v183 = &v177[v175[12]];
  v184 = v202;
  *v183 = v203;
  *(v183 + 1) = v184;
  v185 = v236;
  v181(&v177[v175[13]], v236, v179);
  v186 = v237;
  v181(&v177[v175[14]], v237 + v174, v179);
  sub_B33C8(v238, &v177[v242], &unk_948720);
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
  v189 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_metrics;
  v190 = v226;
  swift_beginAccess();
  sub_51BE80(v177, &v190[v189]);
  swift_endAccess();
  sub_75A110();
  sub_768900();
  sub_768ED0();
  sub_5192F0();

  if (sub_759770())
  {

    v191 = sub_759830();
    v192 = v220;
    if (v191 || sub_759850())
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

  v190[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] = v193;
  [*&v190[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView] setUserInteractionEnabled:v193 ^ 1u];
  v194 = v217;
  sub_75DAA0();
  swift_getKeyPath();
  v195 = v219;
  sub_768750();

  (*(v218 + 8))(v194, v195);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_59C2C(&v248, v244 + 16);
  sub_768C30();
  sub_10A2C(&v246, &unk_93FBD0);
  sub_10A2C(&v244, &unk_93FBD0);
  v196 = sub_759770();
  if (v196)
  {
  }

  *(&v247 + 1) = &type metadata for Bool;
  LOBYTE(v246) = v196 != 0;
  v197 = v221;
  sub_768C40();
  v198 = *(v223 + 8);
  v199 = v224;
  v198(v192, v224);
  sub_10A2C(&v246, &unk_93FBD0);
  sub_769E70();
  v198(v197, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_59C2C(&v248, v244 + 16);
  v200 = v222;
  sub_768C30();
  sub_10A2C(&v246, &unk_93FBD0);
  sub_10A2C(&v244, &unk_93FBD0);
  sub_769E70();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_59C2C(&v248, v244 + 16);
  sub_768C30();
  sub_10A2C(&v246, &unk_93FBD0);
  sub_10A2C(&v244, &unk_93FBD0);
  sub_769E70();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_59C2C(&v248, v244 + 16);
  sub_768C30();
  sub_10A2C(&v246, &unk_93FBD0);
  sub_10A2C(&v244, &unk_93FBD0);
  sub_769E70();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_59C2C(&v248, v244 + 16);
  sub_768C30();
  sub_10A2C(&v246, &unk_93FBD0);
  sub_10A2C(&v244, &unk_93FBD0);
  sub_769E70();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_59C2C(&v248, v244 + 16);
  sub_768C30();
  sub_10A2C(&v246, &unk_93FBD0);
  sub_10A2C(&v244, &unk_93FBD0);
  sub_769E70();
  v198(v200, v199);
  [v190 setNeedsLayout];
  return sub_1EB60(&v248);
}

uint64_t sub_5191B8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v5 = sub_BD88(&unk_94F1F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    sub_75DAA0();
    a3(v8, ObjectType, v10);
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_5192F0()
{
  v1 = sub_765240();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork))
  {

    sub_765260();
    sub_765250();
    sub_765210();
    (*(v2 + 8))(v4, v1);
    sub_765330();
    sub_759210();
    sub_14FA38();
    sub_75A050();
  }

  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork))
  {

    sub_765260();
    sub_765250();
    sub_765210();
    (*(v2 + 8))(v4, v1);
    sub_765330();
    sub_759210();
    sub_14FA38();
    sub_75A050();
  }
}

void sub_51952C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] == 1)
  {
    v6 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch];
    if (!v7 || [v7 phase] == &dword_0 + 3 || (v8 = *&v2[v6]) != 0 && objc_msgSend(v8, "phase") == &dword_4)
    {
      v9 = sub_74E4B8(a1);
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
          aBlock[4] = sub_51C12C;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_23F0CC;
          aBlock[3] = &unk_895790;
          v16 = _Block_copy(aBlock);
          v17 = v2;

          [v14 animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];

          _Block_release(v16);
        }

        sub_BE70(0, &qword_963060);
        sub_5A800();
        v13.super.isa = sub_769630().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType);
      }

      else
      {
        sub_BE70(0, &qword_963060);
        sub_5A800();
        v13.super.isa = sub_769630().super.isa;
        v21.receiver = v2;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_BE70(0, &qword_963060);
      sub_5A800();
      v13.super.isa = sub_769630().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v13.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v13.super.isa = sub_769630().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
  }
}

void sub_519824(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v14.super.isa = sub_769630().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch];
  if (!v6)
  {
LABEL_11:
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v14.super.isa = sub_769630().super.isa;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v7 = v6;
  if ((sub_666B98(v7, a1) & 1) == 0)
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
    aBlock[4] = sub_51C12C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_895740;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    [v15 animateWithDuration:4 delay:v17 options:0 animations:0.2 completion:0.0];

    _Block_release(v17);
  }

  sub_BE70(0, &qword_963060);
  sub_5A800();
  v14.super.isa = sub_769630().super.isa;
  objc_msgSendSuper2(&v19, "touchesMoved:withEvent:", v14.super.isa, a2, v2, ObjectType);
LABEL_14:
}

uint64_t sub_519AF0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  v8 = sub_769640();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_519BA0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v6 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch;
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch];
  if (!v7)
  {
LABEL_8:
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_666B98(v8, a1) & 1) == 0)
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
    aBlock[4] = sub_51C12C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_8956F0;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];

    _Block_release(v14);
  }

  sub_BE70(0, &qword_963060);
  sub_5A800();
  v11.super.isa = sub_769630().super.isa;
  objc_msgSendSuper2(&v16, "touchesCancelled:withEvent:", v11.super.isa, a2, v2, ObjectType);
LABEL_11:
}

void sub_519E2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v22.super.isa = sub_769630().super.isa;
    v26.receiver = v3;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "touchesEnded:withEvent:", v22.super.isa, a2, v23.receiver, v23.super_class);
    goto LABEL_13;
  }

  v7 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch;
  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch];
  if (!v8)
  {
LABEL_12:
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v22.super.isa = sub_769630().super.isa;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    objc_msgSendSuper2(&v25, "touchesEnded:withEvent:", v22.super.isa, a2, v23.receiver, v23.super_class);
    goto LABEL_13;
  }

  v9 = v8;
  if ((sub_666B98(v9, a1) & 1) == 0)
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
    aBlock[4] = sub_B2390;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_8956A0;
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
    v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
    if (v20)
    {

      v20(v21);
      sub_F704(v20);
    }
  }

  sub_BE70(0, &qword_963060);
  sub_5A800();
  v22.super.isa = sub_769630().super.isa;
  objc_msgSendSuper2(&v23, "touchesEnded:withEvent:", v22.super.isa, a2, v3, ObjectType);
LABEL_13:
}

uint64_t type metadata accessor for ShelfHeaderView()
{
  result = qword_959920;
  if (!qword_959920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_51A324()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_51A4AC(319, &qword_959930, &type metadata accessor for ShelfHeader.ArtworkType);
    if (v1 <= 0x3F)
    {
      sub_51A4AC(319, &qword_959938, &type metadata accessor for ShelfHeader.Configuration);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_51A4AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_51A500()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_51A538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_51A550()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_51A5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51A608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_51A668(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_948010);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_51A6D8()
{
  v66 = sub_BD88(&qword_959948);
  __chkstk_darwin(v66);
  v69 = (&v62 - v0);
  v1 = sub_BD88(&qword_963790);
  __chkstk_darwin(v1 - 8);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v62 - v4;
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  v9 = sub_BD88(&qword_94B9A0);
  __chkstk_darwin(v9 - 8);
  v62 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v65 = &v62 - v12;
  v13 = sub_75B660();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_94F1F0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  sub_75DAA0();
  swift_getKeyPath();
  v64 = v15;
  sub_768750();

  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = v63;
  sub_75DA50();
  sub_10A2C(v21, &qword_963790);
  sub_109C4(v5, v8, &qword_963790);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_10A2C(v8, &qword_963790);
    v22 = 1;
    v23 = v65;
  }

  else
  {
    swift_getKeyPath();
    v23 = v65;
    sub_768750();

    v20(v8, v16);
    v22 = 0;
  }

  v25 = v67;
  v24 = v68;
  (*(v67 + 56))(v23, v22, 1, v68);
  v26 = *(v66 + 48);
  v27 = v69;
  (*(v25 + 32))(v69, v64, v24);
  sub_109C4(v23, v27 + v26, &qword_94B9A0);
  v28 = *(v25 + 88);
  v29 = v28(v27, v24);
  v30 = enum case for ShelfBackground.color(_:);
  if (v29 == enum case for ShelfBackground.color(_:))
  {
    (*(v25 + 96))(v27, v24);

    v31 = *(sub_BD88(&unk_959640) + 48);
    v32 = sub_75EDA0();
    (*(*(v32 - 8) + 8))(v27 + v31, v32);
LABEL_8:
    sub_10A2C(v27 + v26, &qword_94B9A0);
    return sub_7697D0();
  }

  v33 = enum case for ShelfBackground.gradient(_:);
  if (v29 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v25 + 96))(v27, v24);

    v34 = sub_BD88(&qword_94B3C0);
    v35 = v34[12];
    v36 = v34[16];
    v37 = v34[20];
    v38 = sub_75EDA0();
    (*(*(v38 - 8) + 8))(v27 + v37, v38);
    v39 = sub_763400();
    v40 = *(*(v39 - 8) + 8);
    v40(v27 + v36, v39);
    v40(v27 + v35, v39);
    goto LABEL_8;
  }

  v42 = enum case for ShelfBackground.materialGradient(_:);
  if (v29 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v25 + 96))(v27, v24);
    v43 = *(sub_BD88(&qword_959950) + 48);
    v44 = sub_75EDA0();
    (*(*(v44 - 8) + 8))(v27 + v43, v44);
    v45 = sub_763E10();
    (*(*(v45 - 8) + 8))(v27, v45);
    goto LABEL_8;
  }

  if ((*(v25 + 48))(v27 + v26, 1, v24) != 1)
  {
    v46 = v62;
    sub_1ED18(v27 + v26, v62, &qword_94B9A0);
    v47 = v28(v46, v24);
    if (v47 == v30)
    {
      (*(v25 + 96))(v46, v24);

      v48 = *(sub_BD88(&unk_959640) + 48);
      v49 = sub_75EDA0();
      (*(*(v49 - 8) + 8))(v46 + v48, v49);
    }

    else if (v47 == v33)
    {
      v50 = v62;
      (*(v25 + 96))(v62, v24);

      v51 = sub_BD88(&qword_94B3C0);
      v52 = v51[12];
      v53 = v51[16];
      v54 = v51[20];
      v55 = sub_75EDA0();
      (*(*(v55 - 8) + 8))(v50 + v54, v55);
      v56 = sub_763400();
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
        return sub_10A2C(v27, &qword_959948);
      }

      (*(v25 + 96))(v62, v24);
      v59 = *(sub_BD88(&qword_959950) + 48);
      v60 = sub_75EDA0();
      (*(*(v60 - 8) + 8))(v58 + v59, v60);
      v61 = sub_763E10();
      (*(*(v61 - 8) + 8))(v58, v61);
    }

    sub_10A2C(v27 + v26, &qword_94B9A0);
    (*(v25 + 8))(v27, v24);
    return sub_7697D0();
  }

  return sub_10A2C(v27, &qword_959948);
}

id sub_51B054(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(NSAttributedString);

  v9 = sub_769210();

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
        if (qword_93D2F0 != -1)
        {
          swift_once();
        }

        v17 = &qword_9597C8;
      }

      else
      {
        if (qword_93D2E8 != -1)
        {
          swift_once();
        }

        v17 = &qword_9597C0;
      }

      [v16 appendAttributedString:*v17];
      if (qword_93D2F8 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_9597D0];
      [v16 appendAttributedString:v10];
      if (qword_93D300 != -1)
      {
        swift_once();
      }

      v18 = qword_9597D8;
      [v16 appendAttributedString:qword_9597D8];
      if (qword_93D308 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_9597E0];
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

id sub_51B374(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = sub_759950();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (a4)
  {
    (*(v9 + 104))(v12, enum case for SystemImage.chevronForward(_:), v8, v10);
    if (qword_93D2E0 != -1)
    {
      swift_once();
    }

    v14 = [qword_9597B8 configurationWithTraitCollection:a3];
    v15 = sub_759930();

    (*(v9 + 8))(v12, v8);
    v16 = [objc_opt_self() secondaryLabelColor];
    v13 = [v15 imageWithTintColor:v16];
  }

  v17 = sub_51B054(a1, a2, a3, v13);

  return v17;
}

uint64_t sub_51B550(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_764C60();
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

  v5 = sub_764C70();

  if (!v5)
  {

    return 0;
  }

  v1 = sub_7651B0();
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

void sub_51B658()
{
  v1 = v0;
  v2 = sub_760AD0();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_7666D0();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7674E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_767510();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView;
  *(v1 + v17) = [objc_allocWithZone(UIView) init];
  v49 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView;
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v9);
  v50[3] = sub_766970();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v50);
  sub_766960();
  sub_7674F0();
  v18 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v20 = *(v14 + 40);
  v21 = v18;
  v20(&v18[v19], v16, v13);
  swift_endAccess();

  *(v49 + v1) = v21;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton;
  sub_75C560();
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v6, qword_9597F8);
  v49 = *(v48 + 16);
  v49(v8, v23, v6);
  *(v1 + v22) = sub_75C550();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork) = 0;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType;
  v25 = sub_759760();
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView;
  sub_759210();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v27) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton;
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v6, qword_959810);
  v49(v8, v30, v6);
  *(v1 + v29) = sub_75C550();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork) = 0;
  v26(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType, 1, 1, v25);
  v31 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView;
  *(v1 + v31) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton;
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v6, qword_959840);
  v49(v8, v33, v6);
  *(v1 + v32) = sub_75C550();
  v34 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel;
  if (qword_93D330 != -1)
  {
    swift_once();
  }

  v38 = sub_BE38(v6, qword_959828);
  v39 = v44;
  v49(v44, v38, v6);
  (*(v48 + 56))(v39, 0, 1, v6);
  (*(v45 + 104))(v47, enum case for DirectionalTextAlignment.none(_:), v46);
  v40 = objc_allocWithZone(sub_75BB20());
  *(v1 + v37) = sub_75BB10();
  v41 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  v42 = sub_759810();
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_51BDBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_51BE60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_51BE78();
  }

  return result;
}

uint64_t sub_51BE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_51BF08()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_51BF40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_51BF94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_51C078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_51C13C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_placement];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  sub_BD88(&qword_9477F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77B6D0;
  *(v18 + 32) = sub_7676E0();
  *(v18 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_769F40();

  swift_unknownObjectRelease();

  return v16;
}

void sub_51C4D8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] removeFromSuperview];
  v2 = *&v0[v1];
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
}

double sub_51C5A4()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

void sub_51C61C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v7 = a1;

  if (a1)
  {
    v6 = [v1 contentView];
    [v6 addSubview:v7];

    [v7 updateTraitsIfNeeded];
    [v7 setNeedsLayout];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void (*sub_51C71C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_51C774;
}

void sub_51C774(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v8 = v2;
    sub_51C61C(v2);
LABEL_8:

    return;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *&v3[v4];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v3[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v3[v4] = v2;
  v8 = v2;

  if (v2)
  {
    v7 = [v3 contentView];
    [v7 addSubview:v8];

    [v8 updateTraitsIfNeeded];
    [v8 setNeedsLayout];
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    goto LABEL_8;
  }
}

id sub_51C88C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_51C95C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_51CA00()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_51CA58(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_51CB18()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_51CB64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_51CC1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView);
  v2 = v1;
  return v1;
}

void (*sub_51CC50(void *a1))(void *a1)
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
  v2[4] = sub_51C71C(v2);
  return sub_215A4;
}

double sub_51CCC0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == &dword_0 + 2 && (v3 = objc_opt_self(), v4 = [v3 mainScreen], objc_msgSend(v4, "bounds"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v31.origin.x = v6, v31.origin.y = v8, v31.size.width = v10, v31.size.height = v12, Width = CGRectGetWidth(v31), v14 = objc_msgSend(v3, "mainScreen"), objc_msgSend(v14, "bounds"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v32.origin.x = v16, v32.origin.y = v18, v32.size.width = v20, v32.size.height = v22, CGRectGetHeight(v32) < Width))
  {
    v23 = [v0 contentView];
    [v23 bounds];

    v24 = [v3 mainScreen];
    [v24 bounds];

    v25 = [v0 contentView];
    [v25 bounds];

    sub_769CD0();
    return v26;
  }

  else
  {
    v28 = [v0 contentView];
    [v28 bounds];
    v27 = v29;
  }

  return v27;
}

void sub_51CF04()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
}

id sub_51D058(char *a1)
{
  [*&a1[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] updateTraitsIfNeeded];

  return [a1 setNeedsLayout];
}

char *sub_51D0AC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView] = 0;
  sub_23BD1C(a1, &v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_layoutMetrics]);
  v3 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView] = v3;
  sub_134D8(a1 + 80, v18);
  sub_134D8(a1 + 40, &v19);
  sub_134D8(a1 + 120, &v20);
  v4 = type metadata accessor for OnboardingTrayView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_itemViewLayoutItems] = _swiftEmptyArrayStorage;
  sub_51DAB0(v18, &v5[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_layoutMetrics]);
  v17.receiver = v5;
  v17.super_class = v4;
  v6 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_51DB0C(v18);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayView] = v6;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView] = v10;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for OnboardingPageView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView;
  [*&v11[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView] setContentInsetAdjustmentBehavior:2];
  [*&v11[v12] setShowsVerticalScrollIndicator:0];
  [*&v11[v12] setShowsHorizontalScrollIndicator:0];
  [v11 addSubview:*&v11[v12]];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView]];
  v14 = [*&v11[v13] contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayView]];

  sub_23BD78(a1);
  return v11;
}

id sub_51D394()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayView];
  v2 = [v1 isHidden];
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((v2 & 1) == 0)
  {
    sub_75D650();
    [v1 measurementsWithFitting:v0 in:{v8, v9}];
    v6 = v10;
    v7 = v11;
    sub_75D650();
    v4 = floor(CGRectGetMidX(v38) + v6 * -0.5);
    sub_75D650();
    MaxY = CGRectGetMaxY(v39);
    v5 = MaxY - v7;
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView] setFrame:{v4, MaxY - v7, v6, v7}];
    [v1 setFrame:{0.0, 0.0, v6, v7}];
  }

  [v0 bounds];
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView];
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    rect = v5;
    v17 = v14;
    sub_75D650();
    MinX = CGRectGetMinX(v40);
    sub_75D650();
    MinY = CGRectGetMinY(v41);
    sub_75D650();
    Width = CGRectGetWidth(v42);
    v34 = v4;
    v35 = v6;
    if (v2)
    {
      sub_75D650();
      Height = CGRectGetHeight(v43);
    }

    else
    {
      v44.origin.x = v4;
      v44.origin.y = rect;
      v44.size.width = v6;
      v44.size.height = v7;
      Height = CGRectGetMinY(v44);
    }

    v22 = Height;
    [v17 measurementsWithFitting:v0 in:{Width, Height}];
    v15 = v23;
    v16 = v24;
    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = Width;
    v45.size.height = v22;
    v25 = floor(CGRectGetMidX(v45) + v15 * -0.5);
    v46.origin.x = MinX;
    v46.origin.y = MinY;
    v46.size.width = Width;
    v46.size.height = v22;
    v26 = CGRectGetMinY(v46);
    sub_75D650();
    sub_769D20();
    [v17 setFrame:?];
    if ((v2 & 1) != 0 || (v47.origin.x = v25, v47.origin.y = v26, v47.size.width = v15, v47.size.height = v16, v27 = CGRectGetMaxY(v47), v48.origin.x = v34, v48.size.width = v35, v48.origin.y = rect, v48.size.height = v7, CGRectGetMinY(v48) > v27))
    {
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView] setEffect:0];
      v3 = 0.0;
    }

    else
    {
      v49.origin.x = v34;
      v49.origin.y = rect;
      v49.size.width = v35;
      v49.size.height = v7;
      v33 = CGRectGetHeight(v49);
      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v15;
      v50.size.height = v16;
      v28 = CGRectGetMaxY(v50);
      v51.origin.x = v34;
      v51.origin.y = rect;
      v51.size.width = v35;
      v51.size.height = v7;
      v29 = v28 - CGRectGetMinY(v51);
      if (v29 >= v33)
      {
        v3 = v33;
      }

      else
      {
        v3 = v29;
      }

      v30 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView];
      v31 = [objc_opt_self() effectWithStyle:4];
      [v30 setEffect:v31];
    }
  }

  [v13 setContentSize:{v15, v16, *&v33}];
  [v13 setContentInset:{0.0, 0.0, v3, 0.0}];
  return [v13 setContentOffset:{0.0, 0.0}];
}

id sub_51D7BC(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_769A00();

  if (!a1 || ((sub_769A00() ^ v5) & 1) != 0)
  {
    return [v2 setNeedsLayout];
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_769240();
  v12 = v11;
  if (v10 == sub_769240() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_76A950();

    if ((v14 & 1) == 0)
    {
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_51D9CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_51DB60()
{
  v1 = v0;
  v2 = sub_75B660();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_75EDA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - v12;
  (*(v3 + 16))(v5, v1, v2, v11);
  v14 = (*(v3 + 88))(v5, v2);
  if (v14 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v3 + 96))(v5, v2);

    v15 = &unk_94B9A8;
    goto LABEL_5;
  }

  if (v14 == enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 96))(v5, v2);

    v15 = &unk_959640;
LABEL_5:
    v16 = sub_BD88(v15);
    v17 = *(v7 + 32);
    v17(v13, v5 + *(v16 + 48), v6);
    v17(v9, v13, v6);
    goto LABEL_7;
  }

  if (v14 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v3 + 96))(v5, v2);

    v20 = sub_BD88(&qword_94B3C0);
    v21 = v20[12];
    v28 = v20[16];
    v29 = v21;
    v22 = *(v7 + 32);
    v22(v13, v5 + v20[20], v6);
    v23 = sub_763400();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v28, v23);
    v24(v5 + v29, v23);
    v22(v9, v13, v6);
  }

  else if (v14 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v3 + 96))(v5, v2);
    v25 = sub_BD88(&qword_959950);
    v26 = *(v7 + 32);
    v26(v13, v5 + *(v25 + 48), v6);
    v27 = sub_763E10();
    (*(*(v27 - 8) + 8))(v5, v27);
    v26(v9, v13, v6);
  }

  else
  {
    (*(v7 + 104))(v13, enum case for ShelfBackgroundStyle.automatic(_:), v6);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 32))(v9, v13, v6);
  }

LABEL_7:
  v18 = (*(v7 + 88))(v9, v6);
  if (v18 == enum case for ShelfBackgroundStyle.dark(_:))
  {
    return 2;
  }

  if (v18 == enum case for ShelfBackgroundStyle.light(_:))
  {
    return 1;
  }

  if (v18 != enum case for ShelfBackgroundStyle.automatic(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t sub_51E018(int a1, int a2)
{
  v66 = a2;
  v3 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v3 - 8);
  v4 = sub_765610();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  __chkstk_darwin(v4);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v8 - 8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v57 - v11;
  __chkstk_darwin(v12);
  v63 = v57 - v13;
  __chkstk_darwin(v14);
  v62 = v57 - v15;
  __chkstk_darwin(v16);
  v61 = v57 - v17;
  __chkstk_darwin(v18);
  v59 = v57 - v19;
  __chkstk_darwin(v20);
  v57[5] = v57 - v21;
  __chkstk_darwin(v22);
  v57[4] = v57 - v23;
  __chkstk_darwin(v24);
  *&v58 = v57 - v25;
  __chkstk_darwin(v26);
  v57[3] = v57 - v27;
  __chkstk_darwin(v28);
  v57[2] = v57 - v29;
  __chkstk_darwin(v30);
  v57[1] = v57 - v31;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  sub_BD88(&qword_940A70);
  v37 = *(sub_765540() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v69 = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_780120;
  v60 = v39;
  v71 = v39 + v38;
  v70 = a1;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  else
  {
    v40 = 0x4000000000000000;
  }

  v74 = v40;
  sub_62634();
  sub_7655D0();
  v74 = 0x4020000000000000;
  sub_62634();
  sub_7655D0();
  v74 = 0x4020000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v46 = *(v73 + 104);
  v68 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v73 += 104;
  v67 = v46;
  v46(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  if (v70)
  {
    v48 = 0x3FF0000000000000;
  }

  else
  {
    v48 = 0x4000000000000000;
  }

  v74 = v48;
  sub_7655D0();
  v74 = 0x4024000000000000;
  sub_7655D0();
  v74 = 0x4024000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  if (v70)
  {
    v50 = 0x4000000000000000;
  }

  else
  {
    v50 = 0x4008000000000000;
  }

  v74 = v50;
  sub_7655D0();
  if (v66)
  {
    v51 = 12.0;
  }

  else
  {
    v51 = 20.0;
  }

  v74 = *&v51;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  v58 = left;
  sub_765500();
  if (v70)
  {
    v52 = 0x4000000000000000;
  }

  else
  {
    v52 = 0x4010000000000000;
  }

  v74 = v52;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  sub_7697A0();
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  if (v70)
  {
    v53 = 0x4008000000000000;
  }

  else
  {
    v53 = 0x4014000000000000;
  }

  v74 = v53;
  sub_7655D0();
  if (v66)
  {
    v54 = 12.0;
  }

  else
  {
    v54 = 24.0;
  }

  v74 = *&v54;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  if (v70)
  {
    v55 = 0x4008000000000000;
  }

  else
  {
    v55 = 0x4018000000000000;
  }

  v74 = v55;
  sub_7655D0();
  v74 = *&v54;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  return v60;
}

uint64_t sub_51EC74()
{
  v0 = sub_757640();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575F0();
  sub_757610();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_51ED58()
{
  v0 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v0 - 8);
  sub_76A6E0();
  sub_769090();

  sub_BD88(&qword_9467C0);
  sub_16194(&qword_9467C8, &qword_9467C0);
  return sub_768AE0();
}

void sub_51EEDC(uint64_t a1@<X8>)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) == 1)
  {
    sub_7575B0();
    sub_75AFD0();
    (*(v4 + 8))(v6, v3);
    sub_BD88(&unk_944DA0);
    sub_BD88(&qword_956C60);
    if (swift_dynamicCast())
    {
      sub_10914(v8, v10);
      v7 = v10[1];
      *a1 = v10[0];
      *(a1 + 16) = v7;
      *(a1 + 32) = v11;
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_51FB68(v8);
      sub_76A840();
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_51F0E8()
{
  sub_51EEDC(&v2);
  if (v3)
  {
    sub_10914(&v2, v4);
    sub_B170(v4, v4[3]);
    v0 = sub_761280();
    sub_BEB8(v4);
    return v0;
  }

  else
  {
    sub_51FB68(&v2);
    return sub_75AF20();
  }
}

uint64_t sub_51F1A8()
{
  v0 = sub_757640();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_51EEDC(&v5);
  if (v6)
  {
    sub_10914(&v5, v7);
    sub_B170(v7, v7[3]);
    sub_761290();
    return sub_BEB8(v7);
  }

  else
  {
    sub_51FB68(&v5);
    sub_7575B0();
    sub_75AFD0();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_51F36C(uint64_t a1, void (*a2)(char *, uint64_t *, void *, uint64_t, uint64_t))
{
  v4 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_7575B0();
  (*(v8 + 16))(v10, v13, v7);
  sub_769080();
  v18 = *(v2 + 40);

  v14 = sub_BD88(&qword_9467C0);
  v15 = sub_16194(&qword_9467C8, &qword_9467C0);
  a2(v6, &v18, &type metadata for Never, v14, v15);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_51F584(uint64_t a1, void (*a2)(char *, double **, void *, uint64_t, uint64_t))
{
  v4 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_51EC74();
  (*(v8 + 16))(v10, v13, v7);
  sub_51FB10();
  v14 = sub_769420();
  v15 = sub_141558(v14);

  v20 = v15;
  sub_BD88(&qword_959AA8);
  sub_16194(&qword_959AB0, &qword_959AA8);
  sub_769070();
  v20 = *(v2 + 40);

  v16 = sub_BD88(&qword_9467C0);
  v17 = sub_16194(&qword_9467C8, &qword_9467C0);
  a2(v6, &v20, &type metadata for Never, v16, v17);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_51F80C()
{
  v1 = sub_757640();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575B0();
  if (*(v0 + 32) == 1)
  {
    sub_75AFC0();
  }

  else
  {
    sub_75AF60();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_51F984()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_51F9CC()
{
  sub_51F984();

  return swift_deallocClassInstance();
}

unint64_t sub_51FB10()
{
  result = qword_959AA0;
  if (!qword_959AA0)
  {
    sub_757640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_959AA0);
  }

  return result;
}

uint64_t sub_51FB68(uint64_t a1)
{
  v2 = sub_BD88(&qword_956C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51FBD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 64) = a5;
  *(v14 + 72) = a6;
  *(v14 + 80) = a7;
  swift_unknownObjectWeakAssign();
  return v14;
}

unint64_t sub_51FC88()
{
  result = qword_959AB8;
  if (!qword_959AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_959AB8);
  }

  return result;
}

uint64_t sub_51FCE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v5 = sub_BD88(&unk_959AC0);
  __chkstk_darwin(v5 - 8);
  v48 = &v39[-v6];
  v7 = sub_BD88(&qword_9569B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v39[-v8];
  v10 = sub_7656C0();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&unk_955F20);
  __chkstk_darwin(v13 - 8);
  v15 = &v39[-v14];
  v16 = sub_75ACC0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v39[-v21];
  sub_BD88(&qword_93F908);
  v44 = a1;
  sub_75C760();
  if (!v50)
  {
    sub_10A2C(v49, &qword_93F910);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_9;
  }

  v43 = v9;
  sub_B170(v49, v50);
  sub_760470();
  sub_BEB8(v49);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_9:
    sub_10A2C(v15, &unk_955F20);
    v31 = sub_7677A0();
    return (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
  }

  v42 = a3;
  (*(v17 + 32))(v22, v15, v16);
  v23 = *(v17 + 16);
  v23(v19, v22, v16);
  v24 = *(v17 + 88);
  v25 = v24(v19, v16);
  if (v25 == enum case for ItemBackground.ad(_:) || (v26 = v25, v25 == enum case for ItemBackground.insetAd(_:)) || v25 == enum case for ItemBackground.clearAdWithSeparator(_:))
  {
    v40 = enum case for ItemBackground.insetAd(_:);
    v41 = v24;
    swift_getKeyPath();
    sub_75C7B0();

    v32 = v48;
    v23(v48, v22, v16);
    if (v47 == 2)
    {
      v33 = v43;
      sub_6CC744(v12, v22, v43);
      (*(v45 + 8))(v12, v46);
      v34 = *(v17 + 8);
      v34(v22, v16);
      v34(v32, v16);
    }

    else
    {
      v35 = v41(v32, v16);
      v33 = v43;
      if (v35 == v40)
      {
        sub_6CCAD8();
        (*(v45 + 8))(v12, v46);
        (*(v17 + 8))(v22, v16);
        v36 = sub_7677A0();
        (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
      }

      else
      {
        (*(v45 + 8))(v12, v46);
        v37 = *(v17 + 8);
        v37(v22, v16);
        v38 = sub_7677A0();
        (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
        v37(v32, v16);
      }
    }

    return sub_520354(v33, v42);
  }

  else
  {
    v27 = enum case for ItemBackground.condensedSearch(_:);
    v28 = *(v17 + 8);
    v28(v22, v16);
    v29 = sub_7677A0();
    result = (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
    if (v26 != v27)
    {
      return (v28)(v19, v16);
    }
  }

  return result;
}

uint64_t sub_520354(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9569B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5203C4(uint64_t a1)
{
  v3 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = sub_7666D0();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v65 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v54 - v10;
  if (qword_93D378 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v12 = sub_BD88(&qword_94E610);
    sub_BE38(v12, qword_959B18);
    v70 = v1;
    v13 = v1;
    sub_7592B0();

    v14 = *&v13[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel];
    v15 = v7[2];
    v64 = (v7 + 2);
    v62 = v15;
    v15(v5, v11, v6);
    v16 = v7[7];
    v63 = (v7 + 7);
    v61 = v16;
    v16(v5, 0, 1, v6);
    v66 = v5;
    sub_75BA40();
    if (qword_93D360 != -1)
    {
      swift_once();
    }

    v17 = sub_BD88(&unk_93F8F0);
    v18 = sub_BE38(v17, qword_959AD0);
    v69 = v13;
    v19 = v13;
    v60 = v18;
    sub_7592B0();

    [v14 setTextAlignment:v70];
    sub_75A9C0();
    v55 = v11;
    v56 = v7;
    if (v20)
    {
      v21 = sub_769210();
    }

    else
    {
      v21 = 0;
    }

    [v14 setText:v21];

    v22 = *&v19[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingArtworkView];
    v23 = sub_75A9A0();
    sub_36289C(v23);

    if (qword_93D370 != -1)
    {
      swift_once();
    }

    sub_BE38(v12, qword_959B00);
    v70 = v19;
    v24 = v19;
    v25 = v65;
    sub_7592B0();

    v26 = *&v24[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel];
    v27 = v66;
    v62(v66, v25, v6);
    v61(v27, 0, 1, v6);
    sub_75BA40();
    v69 = v24;
    v28 = v24;
    sub_7592B0();

    [v26 setTextAlignment:v70];
    sub_75A9B0();
    if (v29)
    {
      v30 = sub_769210();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    sub_75AA10();
    sub_75A9F0();
    v31 = sub_769490();

    if ((v31 & 1) != 0 && (v32 = [v28 traitCollection], v33 = sub_769A00(), v32, (v33 & 1) == 0))
    {
      v35 = 4;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    [v26 setNumberOfLines:v34];
    [v26 setLineBreakMode:v35];
    v36 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
    swift_beginAccess();
    v58 = v36;
    v59 = a1;
    v1 = *(v28 + v36);
    v57 = v6;
    v54[1] = v17;
    if (v1 >> 62)
    {
      v37 = sub_76A860();
    }

    else
    {
      v37 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    v7 = &unk_90D000;
    if (v37)
    {
      v11 = 0;
      v5 = (v1 & 0xC000000000000001);
      v6 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v5)
        {
          v38 = sub_76A770();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_50;
          }

          v38 = *(v1 + 8 * v11 + 32);
        }

        v39 = v38;
        a1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_49;
        }

        [v38 removeFromSuperview];

        ++v11;
      }

      while (a1 != v37);
    }

    v5 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
    swift_beginAccess();
    v1 = *&v5[v28];
    if (v1 >> 62)
    {
      v40 = sub_76A860();
    }

    else
    {
      v40 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    if (v40)
    {
      v11 = 0;
      v6 = (v1 & 0xC000000000000001);
      a1 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v6)
        {
          v41 = sub_76A770();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_52;
          }

          v41 = *(v1 + 8 * v11 + 32);
        }

        v42 = v41;
        v43 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_51;
        }

        [v41 removeFromSuperview];

        ++v11;
      }

      while (v43 != v40);
    }

    v6 = _swiftEmptyArrayStorage;
    *(v28 + v58) = _swiftEmptyArrayStorage;

    *&v5[v28] = _swiftEmptyArrayStorage;

    v44 = sub_75AA10();
    v1 = v44;
    if (!(v44 >> 62))
    {
      v45 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
      a1 = v66;
      if (!v45)
      {
        break;
      }

      goto LABEL_40;
    }

    v45 = sub_76A860();
    a1 = v66;
    if (!v45)
    {
      break;
    }

LABEL_40:
    v11 = 0;
    v7 = (v1 & 0xC000000000000001);
    v5 = (v1 & 0xFFFFFFFFFFFFFF8);
    while (v7)
    {
      v46 = sub_76A770();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_48;
      }

LABEL_44:
      v68 = v46;
      sub_52377C(&v68, v28);

      ++v11;
      if (v6 == v45)
      {
        goto LABEL_58;
      }
    }

    if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_53;
    }

    v46 = *(v1 + 8 * v11 + 32);

    v6 = (v11 + 1);
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

LABEL_58:

  v47 = *(v28 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v48 = v65;
  v49 = v57;
  v62(a1, v65, v57);
  v61(a1, 0, 1, v49);
  sub_75BA40();
  v67 = v28;
  v50 = v28;
  sub_7592B0();

  [v47 setTextAlignment:v68];
  v51 = sub_522C48(v59, v50);
  [v47 setAttributedText:v51];

  [v50 setNeedsLayout];
  v52 = v56[1];
  v52(v48, v49);
  return (v52)(v55, v49);
}

uint64_t sub_520C4C()
{
  v0 = sub_760590();
  sub_161DC(v0, qword_99E270);
  sub_BE38(v0, qword_99E270);
  return sub_760580();
}

uint64_t sub_520D20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&unk_93F8F0);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

uint64_t sub_520DC4()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_959B00);
  sub_BE38(v7, qword_959B00);
  if (qword_93D6D8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99EC80);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D6D0 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EC68);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_520FA4()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_959B18);
  sub_BE38(v7, qword_959B18);
  if (qword_93D6E8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99ECB0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D6E0 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EC98);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

char *sub_521184(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_leadingPairLabels] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_trailingPairLabels] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView();
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingArtworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel] = v12;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel] = v13;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingArtworkView]];
  v19 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel;
  [*&v18[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel] setNumberOfLines:0];
  v20 = qword_93D360;
  v21 = *&v18[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_BD88(&unk_93F8F0);
  sub_BE38(v22, qword_959AD0);
  v23 = v18;
  sub_7592B0();

  [v21 setTextAlignment:{v31, v18}];
  [v23 addSubview:*&v18[v19]];
  v24 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel;
  [*&v23[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel] setNumberOfLines:0];
  v25 = *&v23[v24];
  v26 = v23;
  v27 = v25;
  sub_7592B0();

  [v27 setTextAlignment:{v31, v23}];
  [v26 addSubview:*&v23[v24]];
  v28 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel;
  [*&v26[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel] setNumberOfLines:0];
  v29 = *&v26[v28];
  sub_7592B0();

  [v29 setTextAlignment:{v31, v26}];
  [v26 addSubview:*&v26[v28]];

  return v26;
}

uint64_t sub_521544()
{
  v1 = sub_760590();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_93D358 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v1, qword_99E270);
  (*(v2 + 16))(v4, v5, v1);
  v6 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel);
  v7 = sub_75BB20();
  v29 = v7;
  v30 = &protocol witness table for UILabel;
  v28 = v6;
  v8 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingArtworkView);
  v26 = type metadata accessor for AnnotationImagesView();
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UILabel;
  v25 = v8;
  v9 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel);
  v10 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v23 = v7;
  v21 = &protocol witness table for UILabel;
  v22 = v9;
  v20 = v7;
  v19 = v10;
  swift_beginAccess();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  sub_141658(v15);

  swift_beginAccess();

  sub_141658(v16);

  return sub_7605A0();
}

void *sub_521A6C(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, uint64_t))
{
  v115 = a3;
  v112 = a2;
  v98 = sub_760590();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v111 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_7605B0();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_762D10();
  v114 = *(v6 - 8);
  __chkstk_darwin(v6);
  v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v94 - v9;
  __chkstk_darwin(v10);
  v99 = &v94 - v11;
  __chkstk_darwin(v12);
  v14 = &v94 - v13;
  v104 = sub_7666D0();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v113 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v94 - v17;
  if (qword_93D370 != -1)
  {
    swift_once();
  }

  v19 = sub_BD88(&qword_94E610);
  sub_BE38(v19, qword_959B00);
  v126 = a1;
  sub_7592B0();
  sub_BE70(0, &qword_93F900);
  ObjectType = swift_getObjectType();
  v21 = [a1 traitCollection];
  v102 = v18;
  v121 = sub_769E10();

  if (qword_93D378 != -1)
  {
    swift_once();
  }

  sub_BE38(v19, qword_959B18);
  v126 = a1;
  sub_7592B0();
  v22 = [a1 traitCollection];
  v95 = sub_769E10();

  v23 = v115;
  v24 = sub_75A9A0();
  sub_363CC4(v24, a1);

  v96 = sub_7670D0();
  swift_allocObject();
  v25 = sub_7670A0();
  sub_75A9A0();
  sub_765390();
  sub_769490();

  sub_767080();
  v108 = ObjectType;
  v120 = sub_522BB8(v23, a1);
  v26 = sub_75AA10();
  if (v26 >> 62)
  {
    v67 = v26;
    v27 = sub_76A860();
    v26 = v67;
  }

  else
  {
    v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  }

  v122 = v6;
  v110 = a1;
  v109 = v25;
  if (v27)
  {
    v28 = v26;
    v125[0] = _swiftEmptyArrayStorage;
    result = sub_143EE8(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v30 = 0;
    v31 = v125[0];
    v118 = (v28 & 0xC000000000000001);
    LODWORD(v117) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v32 = (v114 + 8);
    v119 = v28;
    v33 = v27;
    do
    {
      if (v118)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_75A9D0();
      v34 = sub_7653B0();
      v127 = v34;
      v128 = sub_52392C(&qword_93F9B0, &type metadata accessor for Feature);
      v35 = sub_B1B4(&v126);
      (*(*(v34 - 8) + 104))(v35, v117, v34);
      v36 = v121;
      sub_765C30();
      sub_BEB8(&v126);
      sub_762D00();
      sub_762CE0();

      (*v32)(v14, v122);
      v125[0] = v31;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_143EE8((v37 > 1), v38 + 1, 1);
      }

      ++v30;
      v39 = v127;
      v40 = v128;
      v41 = sub_10974(&v126, v127);
      v42 = __chkstk_darwin(v41);
      v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);
      sub_523364(v38, v44, v125, v39, v40);
      sub_BEB8(&v126);
      v31 = v125[0];
    }

    while (v33 != v30);

    v46 = v114;
    v23 = v115;
  }

  else
  {

    v46 = v114;
  }

  v47 = sub_75AA10();
  if (v47 >> 62)
  {
    v68 = v47;
    v48 = sub_76A860();
    v47 = v68;
    if (v48)
    {
LABEL_20:
      v49 = v47;
      v125[0] = _swiftEmptyArrayStorage;
      result = sub_143EE8(0, v48 & ~(v48 >> 63), 0);
      if ((v48 & 0x8000000000000000) == 0)
      {
        v118 = v14;
        v50 = 0;
        v51 = v125[0];
        v117 = v49 & 0xC000000000000001;
        v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
        v52 = (v46 + 8);
        v119 = v49;
        do
        {
          if (v117)
          {
            sub_76A770();
          }

          else
          {
          }

          sub_75A9E0();
          v53 = sub_7653B0();
          v127 = v53;
          v128 = sub_52392C(&qword_93F9B0, &type metadata accessor for Feature);
          v54 = sub_B1B4(&v126);
          (*(*(v53 - 8) + 104))(v54, v116, v53);
          v55 = v121;
          sub_765C30();
          sub_BEB8(&v126);
          v56 = v118;
          sub_762D00();
          sub_762CE0();

          (*v52)(v56, v122);
          v125[0] = v51;
          v58 = *(v51 + 16);
          v57 = *(v51 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_143EE8((v57 > 1), v58 + 1, 1);
          }

          ++v50;
          v59 = v127;
          v60 = v128;
          v61 = sub_10974(&v126, v127);
          v62 = __chkstk_darwin(v61);
          v64 = &v94 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v65 + 16))(v64, v62);
          sub_523364(v58, v64, v125, v59, v60);
          sub_BEB8(&v126);
          v51 = v125[0];
        }

        while (v48 != v50);

        v66 = v111;
        v23 = v115;
        goto LABEL_32;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    v48 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
    if (v48)
    {
      goto LABEL_20;
    }
  }

  v66 = v111;
LABEL_32:
  v117 = sub_522C48(v23, v110);
  if (qword_93D358 != -1)
  {
    swift_once();
  }

  v69 = v98;
  v70 = sub_BE38(v98, qword_99E270);
  (*(v97 + 16))(v66, v70, v69);
  sub_75A9C0();
  v71 = sub_7653B0();
  v127 = v71;
  v119 = sub_52392C(&qword_93F9B0, &type metadata accessor for Feature);
  v128 = v119;
  v72 = sub_B1B4(&v126);
  v73 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v74 = *(*(v71 - 8) + 104);
  v74(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v71);
  v75 = v95;
  sub_765C30();
  sub_BEB8(&v126);
  v76 = v99;
  v118 = v75;
  sub_762D00();
  sub_762CE0();
  v77 = *(v114 + 8);
  v78 = v76;
  v79 = v122;
  v77(v78, v122);
  v125[3] = v96;
  v125[4] = &protocol witness table for LayoutViewPlaceholder;
  v125[0] = v109;

  sub_75A9B0();
  v114 = v80;
  v124[3] = v71;
  v124[4] = v119;
  v81 = sub_B1B4(v124);
  v116 = v73;
  v82 = v73;
  v83 = v77;
  v115 = v74;
  v74(v81, v82, v71);
  v84 = v121;
  sub_765C30();
  sub_BEB8(v124);
  v85 = v100;
  sub_762D00();
  sub_762CE0();
  v83(v85, v79);
  v86 = v117;
  if (!v117)
  {
    [objc_allocWithZone(NSAttributedString) init];
  }

  v123[3] = v71;
  v123[4] = v119;
  v87 = sub_B1B4(v123);
  v115(v87, v116, v71);
  v88 = v86;
  v89 = v84;
  sub_765C30();
  sub_BEB8(v123);
  v90 = v101;
  sub_762CD0();
  sub_762CE0();
  v83(v90, v122);
  v91 = v105;
  sub_7605A0();
  sub_760560();

  (*(v106 + 8))(v91, v107);
  v92 = *(v103 + 8);
  v93 = v104;
  v92(v113, v104);
  return (v92)(v102, v93);
}

uint64_t sub_522BB8(uint64_t a1, void *a2)
{
  sub_75AA10();
  sub_75A9F0();
  v3 = sub_769490();

  if (v3)
  {
    v4 = [a2 traitCollection];
    v5 = sub_769A00();

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_522C48(uint64_t a1, void *a2)
{
  v3 = sub_7573C0();
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_76A920();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_766CA0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75AA00();
  if (!v16)
  {
    return 0;
  }

  v40 = v15;
  v39 = v3;
  v41 = v16;
  v38[1] = a2;
  v17 = [a2 traitCollection];
  v18 = sub_7699F0();

  if (v18)
  {
    v50[0] = v40;
    v50[1] = v41;
    v48 = 161644770;
    v49 = 0xA400000000000000;
    v46 = 0x208F80E2A280E2;
    v47 = 0xA700000000000000;
    sub_12EC40();
    sub_76A4F0();

    v19 = objc_allocWithZone(NSAttributedString);
    v20 = sub_769210();

    v21 = [v19 initWithString:v20];
  }

  else
  {
    if (qword_93D6D8 != -1)
    {
      swift_once();
    }

    v22 = sub_7666D0();
    v23 = sub_BE38(v22, qword_99EC80);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
    v50[3] = v7;
    v50[4] = &protocol witness table for FontSource;
    v24 = sub_B1B4(v50);
    (*(v8 + 16))(v24, v10, v7);
    sub_766CB0();
    (*(v8 + 8))(v10, v7);
    sub_766470();
    sub_766700();
    v26 = v25;
    (*(v42 + 8))(v6, v43);
    (*(v12 + 8))(v14, v11);
    v27 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v27 setFirstLineHeadIndent:0.0];
    [v27 setHeadIndent:v26];
    [v27 setDefaultTabInterval:v26];
    sub_BE70(0, &unk_959B90);
    isa = sub_769450().super.isa;
    [v27 setTabStops:isa];

    [v27 setParagraphSpacing:0.0];
    v29 = v44;
    sub_757390();
    sub_757340();
    v31 = v30;
    (*(v45 + 8))(v29, v39);
    [v27 setLineHeightMultiple:v31];
    sub_BD88(&qword_940F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_BE70(0, &unk_959BA0);
    *(inited + 40) = v27;
    v33 = NSParagraphStyleAttributeName;
    v34 = v27;
    sub_10D028(inited);
    swift_setDeallocating();
    sub_252F70(inited + 32);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = sub_769210();

    type metadata accessor for Key(0);
    sub_52392C(&qword_93EC10, type metadata accessor for Key);
    v20 = sub_7690E0().super.isa;

    v21 = [v35 initWithString:v36 attributes:v20];
  }

  return v21;
}

uint64_t sub_523364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_B1B4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_34698(&v12, v10 + 40 * a1 + 32);
}

id sub_5233FC(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_7666D0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a4 traitCollection];
  v15 = sub_769A00();

  if (qword_93D370 != -1)
  {
    swift_once();
  }

  v16 = sub_BD88(&qword_94E610);
  sub_BE38(v16, qword_959B00);
  v26 = a4;
  sub_7592B0();
  if ((v15 | a3))
  {
    if (qword_93D360 != -1)
    {
      swift_once();
    }

    v17 = sub_BD88(&unk_93F8F0);
    v18 = qword_959AD0;
  }

  else
  {
    if (qword_93D368 != -1)
    {
      swift_once();
    }

    v17 = sub_BD88(&unk_93F8F0);
    v18 = qword_959AE8;
  }

  sub_BE38(v17, v18);
  v25 = a4;
  sub_7592B0();
  v19 = v26;
  sub_75BB20();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_75BA40();
  v21 = v20;
  [v21 setNumberOfLines:(v15 & 1) == 0];
  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4;
  }

  [v21 setLineBreakMode:v22];

  [v21 setTextAlignment:v19];
  v23 = sub_769210();
  [v21 setText:v23];

  (*(v10 + 8))(v13, v9);
  return v21;
}

void sub_52377C(uint64_t a1, void *a2)
{
  v3 = sub_75A9D0();
  v5 = sub_5233FC(v3, v4, 1, a2);

  v6 = sub_75A9E0();
  v8 = sub_5233FC(v6, v7, 1, a2);

  v9 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
  swift_beginAccess();
  v10 = v5;
  sub_769440();
  if (*(&dword_10 + (*(a2 + v9) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a2 + v9) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  v11 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
  swift_beginAccess();
  v12 = v8;
  sub_769440();
  if (*(&dword_10 + (*(a2 + v11) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a2 + v11) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  [a2 addSubview:v10];
  [a2 addSubview:v12];
}

uint64_t sub_52392C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchAdTransparencyLabel()
{
  result = qword_959BD8;
  if (!qword_959BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_523A28(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

void sub_523AE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_523B2C(void *a1)
{
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_760AD0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = qword_959BB0;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = v1 + qword_959BC8;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = (v1 + qword_959BD0);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + qword_959BB8) = a1;
  v17 = a1;
  *(v1 + qword_959BC0) = sub_524880(v17);
  v18 = sub_7666D0();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  (*(v8 + 104))(v10, enum case for DirectionalTextAlignment.none(_:), v7);
  v19 = sub_75BB10();
  [v19 setUserInteractionEnabled:1];
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  sub_768C10();
  sub_BDD0(v22);
  sub_BDD0(v23);
  sub_769E70();
  (*(v4 + 8))(v6, v3);
  v20 = qword_959BB0;
  [*&v19[qword_959BB0] addTarget:v19 action:"didTapLabelWithGestureRecognizer:"];
  [*&v19[v20] setDelegate:v19];
  [v19 addGestureRecognizer:*&v19[v20]];

  return v19;
}

double sub_523E88(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[qword_959BC8];
  if (a1[qword_959BC8 + 16])
  {
    v4 = a1;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    v7 = a1;
    sub_523FE8(v6, v5, &v12);
    if ((v13 & 1) == 0)
    {
      *&v9 = UIAccessibilityConvertFrameToScreenCoordinates(v12, v7);

      return v9;
    }
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "accessibilityFrame");
  v9 = v8;

  return v9;
}

id sub_523F78(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "setAccessibilityFrame:", a2, a3, a4, a5);
}

void sub_523FE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v3 attributedText];
  if (v8)
  {
    v9 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v8];
    v10 = [objc_allocWithZone(NSLayoutManager) init];
    [v9 addLayoutManager:v10];
    [v4 bounds];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v11, v12}];
    [v13 setLineFragmentPadding:0.0];
    [v10 addTextContainer:v13];
    v24 = 0;
    v25 = 0;
    [v10 characterRangeForGlyphRange:a1 actualGlyphRange:{a2, &v24}];
    [v10 boundingRectForGlyphRange:v24 inTextContainer:{v25, v13}];
    v21 = v14;
    v22 = v15;
    v20 = v16;
    v23 = v17;

    *&v19 = v20;
    *&v18 = v21;
    *(&v18 + 1) = v22;
    *(&v19 + 1) = v23;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = v8 == 0;
}

void sub_5241B8()
{
  v1 = v0;
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSForegroundColorAttributeName;
  v3 = qword_93DDA0;
  v4 = NSForegroundColorAttributeName;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_9A00A0;
  v6 = sub_BE70(0, &qword_93E540);
  *(inited + 40) = v5;
  *(inited + 64) = v6;
  *(inited + 72) = NSFontAttributeName;
  v7 = v5;
  v8 = NSFontAttributeName;
  v9 = [v0 font];
  *(inited + 104) = sub_BD88(&qword_94B5B8);
  *(inited + 80) = v9;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  sub_BE70(0, &qword_9562D0);
  sub_BD88(&unk_93F5C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77D9F0;
  v11 = *&v0[qword_959BC0];
  *(v10 + 32) = v11;
  v12 = v11;
  v13 = [v0 traitCollection];
  v14 = sub_769A70();
  v15 = [v14 length];
  v16 = &v1[qword_959BC8];
  *v16 = 0;
  *(v16 + 1) = v15;
  v16[16] = 0;
  v17 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v14];
  if (*&v1[qword_959BD0 + 8])
  {
    v18 = objc_allocWithZone(NSAttributedString);

    v19 = sub_769210();

    v20 = [v18 initWithString:v19];

    [v17 appendAttributedString:v20];
  }

  [v1 setAttributedText:v17];
}

void sub_524480(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7676A0();
  __chkstk_darwin(v4);
  sub_75BB20();
  v5 = sub_75BB30();
  v5(a1);
  v6 = *&v2[qword_959BB8];
  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_769EE0();
  sub_767670();
  sub_769EF0();
  [v6 updateTraitsIfNeeded];
  v9 = sub_524880(v6);
  v10 = *&v2[qword_959BC0];
  *&v2[qword_959BC0] = v9;

  sub_5241B8();
}

BOOL sub_5245E0(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[qword_959BC8];
  if (a1[qword_959BC8 + 16])
  {
    return 0;
  }

  v8 = *v4;
  v7 = v4[1];
  v9 = a4;
  v10 = a1;
  sub_523FE8(v8, v7, &v22);
  if (v23)
  {
    v5 = 0;
  }

  else
  {
    sub_769D50();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v9 locationInView:v10];
    v24.x = v19;
    v24.y = v20;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v5 = CGRectContainsPoint(v25, v24);
  }

  return v5;
}

void sub_5246DC(char *a1)
{
  v1 = *(*&a1[qword_959BB8] + qword_95CDB8);
  if (v1)
  {
    v3 = a1;
    v2 = sub_F714(v1);
    v1(v2);
    sub_F704(v1);
  }
}

uint64_t sub_5247A4()
{
}

uint64_t sub_524808(uint64_t a1)
{
}

uint64_t sub_524880(void *a1)
{
  [a1 sizeToFit];
  [a1 bounds];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v2, v3, v4, v5}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_524A88;
  *(v8 + 24) = v7;
  v13[4] = sub_524AA0;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_523AE0;
  v13[3] = &unk_895C18;
  v9 = _Block_copy(v13);
  v10 = a1;

  v11 = [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_524A50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_524AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_524AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_BD88(&unk_93F630);
    sub_768860();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {

      return sub_10A2C(v7, &unk_93F980);
    }

    else
    {
      sub_32A6C0(a3, 1, a2, v7);

      return (*(v11 + 8))(v7, v10);
    }
  }

  return result;
}

void sub_524C60(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = v3;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  sub_7591D0(v17, a3);
  sub_759210();
  sub_5275A0(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_940590;
    v7 = Strong;
    v8 = [*(Strong + qword_940590) layer];
    [v8 removeAllAnimations];

    [*&v7[v6] setImage:0];
    type metadata accessor for VideoView();
    sub_5275A0(&unk_93F530, type metadata accessor for VideoView);
    sub_75A0C0();
  }

  v9 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v11 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
    v12 = v9;
    v13 = v11;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_7591D0(v18, v14);

    v15 = *&v9[v10];
    sub_75A0C0();
  }
}

double sub_524E80(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_525AA4(a2, v11, a7, a5, v7, ObjectType);
}

double sub_524F90(uint64_t a1, void *a2, void *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9, uint64_t a10, int *a11)
{
  v80 = a6;
  v81 = a7;
  v90 = a3;
  v75 = a1;
  v76 = a2;
  v84 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v84);
  v78 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v85);
  v79 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_762D10();
  v72 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = v70 - v19;
  __chkstk_darwin(v20);
  v70[0] = v70 - v21;
  v22 = sub_7670D0();
  swift_allocObject();
  v97 = sub_7670B0();
  swift_allocObject();
  v96 = sub_7670B0();
  swift_allocObject();
  v95 = sub_7670B0();
  swift_allocObject();
  v94 = sub_7670B0();
  swift_allocObject();
  v100 = sub_7670B0();
  swift_allocObject();
  v93 = sub_7670B0();
  swift_allocObject();
  v92 = sub_7670B0();
  swift_allocObject();
  v99 = sub_7670B0();
  v23 = [a9 traitCollection];
  sub_767500();

  swift_allocObject();
  v83 = sub_7670B0();
  v24 = 0;
  v25 = 0;
  if (a8)
  {
    swift_allocObject();
    v25 = sub_7670B0();
    swift_allocObject();
    v24 = sub_7670B0();
  }

  v91 = v24;
  v82 = v25;
  v26 = [a9 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = sub_769B50();

  v98 = sub_BE70(0, &qword_93F900);
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v89 = sub_7666D0();
  sub_BE38(v89, qword_99FAA8);
  v29 = a9;
  v30 = [a9 traitCollection];
  v31 = sub_769E10();

  v71 = v28;
  v32 = sub_7653B0();
  v122[3] = v32;
  v88 = sub_5275A0(&qword_93F9B0, &type metadata accessor for Feature);
  v122[4] = v88;
  v33 = sub_B1B4(v122);
  v34 = *(*(v32 - 8) + 104);
  v87 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v86 = v34;
  v34(v33);
  sub_765C30();
  sub_BEB8(v122);

  v35 = v31;
  v70[1] = ~v28;
  v36 = v70[0];
  v73 = v35;
  sub_762D00();
  sub_762CE0();
  v37 = *(v72 + 1);
  v37(v36, v16);
  if (qword_93DB98 != -1)
  {
    swift_once();
  }

  v72 = a11;
  sub_BE38(v89, qword_99FAC0);
  v38 = [v29 traitCollection];
  v39 = sub_769E10();

  v121[3] = v32;
  v121[4] = v88;
  v40 = sub_B1B4(v121);
  v86(v40, v87, v32);
  sub_765C30();
  sub_BEB8(v121);
  v90 = v29;

  v41 = v39;
  v42 = v74;
  v76 = v41;
  sub_762D00();
  sub_762CE0();
  v37(v42, v16);
  if (qword_93DBA0 != -1)
  {
    swift_once();
  }

  sub_BE38(v89, qword_99FAD8);
  v43 = [v90 traitCollection];
  v44 = sub_769E10();

  v120[3] = v32;
  v120[4] = v88;
  v45 = sub_B1B4(v120);
  v86(v45, v87, v32);
  sub_765C30();
  sub_BEB8(v120);

  v46 = v44;
  v47 = v77;
  v98 = v46;
  sub_762D00();
  sub_762CE0();
  v37(v47, v16);
  if (qword_93C4F0 != -1)
  {
    swift_once();
  }

  v48 = sub_BE38(v84, qword_99B3E8);
  v49 = v78;
  sub_17D61C(v48, v78);
  v119 = &protocol witness table for LayoutViewPlaceholder;
  v118 = v22;
  *&v117 = v97;
  v116 = &protocol witness table for LayoutViewPlaceholder;
  v115 = v22;
  v113 = &protocol witness table for LayoutViewPlaceholder;
  *&v114 = v96;
  v112 = v22;
  v110 = &protocol witness table for LayoutViewPlaceholder;
  *&v111 = v95;
  v109 = v22;
  v107 = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v94;
  v106 = v22;
  *&v105 = v100;
  sub_134D8(v122, v104);
  sub_134D8(v121, v103);
  sub_134D8(v120, v101);
  v50 = v82;
  if (v82)
  {
    v51 = v22;
  }

  else
  {
    v51 = 0;
  }

  if (v82)
  {
    v52 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v52 = 0;
  }

  v88 = v52;
  v89 = v51;
  v53 = v91;
  if (v91)
  {
    v54 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v54 = 0;
  }

  if (v91)
  {
    v55 = v22;
  }

  else
  {
    v55 = 0;
  }

  v56 = v79;
  sub_17D680(v49, v79);
  v57 = v85;
  sub_10914(&v117, v56 + *(v85 + 20));
  sub_10914(&v114, v56 + v57[6]);
  sub_10914(&v111, v56 + v57[7]);
  sub_10914(&v108, v56 + v57[8]);
  sub_10914(&v105, v56 + v57[9]);
  v58 = (v56 + v57[10]);
  v59 = v92;
  *v58 = v93;
  v58[3] = v22;
  v58[4] = &protocol witness table for LayoutViewPlaceholder;
  v60 = (v56 + v57[11]);
  *v60 = v59;
  v60[3] = v22;
  v60[4] = &protocol witness table for LayoutViewPlaceholder;
  v61 = (v56 + v57[12]);
  *v61 = v99;
  v61[3] = v22;
  v61[4] = &protocol witness table for LayoutViewPlaceholder;
  sub_10914(v104, v56 + v57[13]);
  sub_10914(v103, v56 + v57[14]);
  v62 = v56 + v57[15];
  v63 = v101[1];
  *v62 = v101[0];
  *(v62 + 16) = v63;
  *(v62 + 32) = v102;
  v64 = (v56 + v57[16]);
  *v64 = v83;
  v64[3] = v22;
  v64[4] = &protocol witness table for LayoutViewPlaceholder;
  v65 = (v56 + v57[17]);
  *v65 = v50;
  v65[1] = 0;
  v66 = v88;
  v67 = v89;
  v65[2] = 0;
  v65[3] = v67;
  v65[4] = v66;
  v68 = (v56 + v57[18]);
  *v68 = v53;
  v68[1] = 0;
  v68[2] = 0;
  v68[3] = v55;
  v68[4] = v54;

  sub_2CDA90(v90, v56, v72);

  sub_2467C(v56);
  sub_BEB8(v120);
  sub_BEB8(v121);
  sub_BEB8(v122);
  return a4;
}

double sub_525AA4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = sub_7586C0();
  v11 = v10;
  v12 = sub_7586B0();
  v14 = v13;
  v15 = sub_7586F0();
  v17 = v16;
  v18 = sub_370728();
  v19 = sub_524F90(v9, v11, v12, a1, v14, v15, v17, v18 & 1, a3, a5, a6);

  return v19;
}

uint64_t sub_525B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v167 = a2;
  v5 = sub_768940();
  v165 = *(v5 - 8);
  v166 = v5;
  __chkstk_darwin(v5);
  v164 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_948710);
  __chkstk_darwin(v7 - 8);
  v161 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v160 = &v142 - v10;
  v11 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v11 - 8);
  v158 = &v142 - v12;
  v13 = sub_75A6B0();
  __chkstk_darwin(v13 - 8);
  v156 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v155 = &v142 - v16;
  v17 = sub_BD88(&unk_948720);
  __chkstk_darwin(v17 - 8);
  v154 = &v142 - v18;
  v152 = sub_75A6E0();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v153 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_75DC30();
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v163 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v21 - 8);
  v143 = &v142 - v22;
  v23 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v23 - 8);
  v145 = &v142 - v24;
  v25 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v25 - 8);
  v149 = &v142 - v26;
  v27 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v27 - 8);
  v146 = &v142 - v28;
  v29 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v29 - 8);
  v147 = &v142 - v30;
  v31 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v31 - 8);
  v33 = &v142 - v32;
  v34 = sub_763750();
  v144 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_948730);
  __chkstk_darwin(v37 - 8);
  v148 = &v142 - v38;
  v39 = sub_75CA40();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_7586B0();
  sub_17A830(v43, v44);
  v45 = sub_7586C0();
  sub_17A83C(v45, v46);
  v47 = sub_7586F0();
  sub_17A848(v47, v48);
  v49 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
  sub_758670();
  v50 = sub_75CA20();
  v51 = v39;
  v52 = v167;
  (*(v40 + 8))(v42, v51);
  v150 = v49;
  [v49 setOverrideUserInterfaceStyle:v50];
  sub_17A1DC();
  v168 = a1;
  v53 = sub_370728();
  v162 = v3;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView])
    {
      v55 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_17D430();
      v56 = *&v3[v54];
      *&v3[v54] = v55;
      v57 = v55;

      sub_17ADCC();
    }

    v58 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView])
    {
      v59 = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v60 = *&v3[v58];
      if (v60)
      {
        [v60 removeFromSuperview];
        v61 = *&v3[v58];
      }

      else
      {
        v61 = 0;
      }

      *&v3[v58] = v59;
      v69 = v59;

      sub_17AF94();
    }

    v70 = *&v3[v54];
    if (v70)
    {
      [v70 setHidden:0];
    }

    v71 = *&v3[v58];
    if (v71)
    {
      [v71 setHidden:0];
      v72 = *&v3[v58];
      if (v72)
      {
        v142 = v58;
        v73 = v72;
        v74 = sub_7586E0();
        v75 = v144;
        v76 = *(v144 + 104);
        v76(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v34);
        v76(v33, enum case for OfferButtonPresenterViewAlignment.left(_:), v34);
        (*(v75 + 56))(v33, 0, 1, v34);
        sub_5275A0(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
        v77 = v148;
        sub_760940();
        v78 = sub_BD88(&unk_948740);
        (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
        v79 = sub_758C70();
        v80 = v147;
        (*(*(v79 - 8) + 56))(v147, 1, 1, v79);
        v81 = sub_75BD30();
        v82 = v146;
        (*(*(v81 - 8) + 56))(v146, 1, 1, v81);
        v83 = sub_BD88(&unk_9457F0);
        v84 = v149;
        (*(*(v83 - 8) + 56))(v149, 1, 1, v83);
        v85 = sub_765870();
        v86 = v145;
        (*(*(v85 - 8) + 56))(v145, 1, 1, v85);
        v144 = v74;
        sub_4A18A4(v74, v73, v77, v167, 0, 0, v80, v82, v86, v84);
        sub_10A2C(v86, &unk_9457D0);
        v73[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
        sub_1FD89C();
        [v73 setNeedsLayout];
        v87 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
        v88 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
        if (v88)
        {
          [v88 setHidden:1];
          v89 = *&v73[v87];
          if (v89)
          {
            [v89 setText:0];
          }
        }

        v90 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
        v91 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
        if (v91)
        {
          if (([v91 isHidden] & 1) == 0)
          {
            v92 = *&v73[v90];
            if (v92)
            {
              if ([v92 hasContent])
              {
                v93 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
                [*&v73[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
                [*&v73[v93] setText:0];
              }
            }
          }
        }

        v94 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
        if ([*&v73[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] isHidden] || !objc_msgSend(*&v73[v94], "hasContent"))
        {

          sub_10A2C(v149, &unk_94AC40);
          sub_10A2C(v82, &unk_9457E0);
          sub_10A2C(v80, &unk_94A780);
          sub_10A2C(v148, &unk_948730);
        }

        else
        {
          v95 = *&v73[v90];
          if (v95)
          {
            [v95 setHidden:1];
            v96 = *&v73[v90];
            if (v96)
            {
              [v96 setText:0];
            }
          }

          v97 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
          [*&v73[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v73[v97] setText:0];

          sub_10A2C(v149, &unk_94AC40);
          sub_10A2C(v82, &unk_9457E0);
          sub_10A2C(v80, &unk_94A780);
          sub_10A2C(v148, &unk_948730);
        }

        v98 = *&v3[v142];
        if (v98)
        {
          v99 = *(v98 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
          if (!v99)
          {
            goto LABEL_37;
          }

          v100 = qword_93D588;
          v101 = v99;
          if (v100 != -1)
          {
            swift_once();
          }

          v102 = sub_7666D0();
          v103 = sub_BE38(v102, qword_99E8A8);
          v104 = *(v102 - 8);
          v105 = v143;
          (*(v104 + 16))(v143, v103, v102);
          (*(v104 + 56))(v105, 0, 1, v102);
          sub_75BA40();

          v98 = *&v3[v142];
          if (v98)
          {
LABEL_37:
            v106 = *(v98 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
            if (v106)
            {
              v107 = qword_93D5A0;
              v108 = v106;
              if (v107 != -1)
              {
                swift_once();
              }

              v109 = sub_7666D0();
              v110 = sub_BE38(v109, qword_99E8F0);
              v111 = *(v109 - 8);
              v112 = v143;
              (*(v111 + 16))(v143, v110, v109);
              (*(v111 + 56))(v112, 0, 1, v109);
              sub_75BA40();
            }
          }
        }
      }
    }

    sub_7586E0();
    v113 = sub_764D80();

    if (v113)
    {
      v114 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v115 = swift_allocObject();
      v52 = v167;
      v115[2] = v114;
      v115[3] = v52;
      v115[4] = v113;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_527668;
      *(v113 + 24) = v115;

      v116 = sub_46344;
    }

    else
    {
      v116 = 0;
      v52 = v167;
    }

    v117 = v3;
    v66 = v163;
    v118 = &v117[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
    v68 = *&v117[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
    *v118 = v116;
    v118[1] = v113;
  }

  else
  {
    v62 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView;
    v63 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
    if (v63)
    {
      [v63 removeFromSuperview];
      v64 = *&v3[v62];
    }

    else
    {
      v64 = 0;
    }

    v65 = v3;
    v66 = v163;
    *&v65[v62] = 0;

    sub_17AF94();
    v67 = &v65[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
    v68 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
    *v67 = 0;
    *(v67 + 1) = 0;
  }

  sub_F704(v68);
  if (sub_758630())
  {
    (*(v151 + 104))(v153, enum case for VideoFillMode.scaleAspectFill(_:), v152);
    sub_764BC0();
    sub_765260();
    v119 = v154;
    sub_7666A0();

    v120 = sub_766690();
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    v121 = v169[0];
    sub_764B40();
    v122 = v158;
    sub_764BD0();
    v123 = sub_7570A0();
    (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
    v124 = v160;
    sub_764B90();
    v125 = v161;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_5275A0(&qword_93F500, type metadata accessor for VideoView);
    v167 = v121;
    v126 = sub_75C340();
    v127 = v66;
    sub_10A2C(v125, &unk_948710);
    sub_10A2C(v124, &unk_948710);
    sub_10A2C(v122, &unk_93FD30);
    sub_10A2C(v169, &unk_9443A0);
    v128 = v162;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v130 = Strong;
      [v150 insertSubview:Strong aboveSubview:*&v128[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v128 setNeedsLayout];

      (*(v157 + 8))(v127, v159);
    }

    else
    {
      (*(v157 + 8))(v127, v159);
    }
  }

  else
  {
    v128 = v162;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    v131 = swift_unknownObjectWeakLoadStrong();
    if (v131)
    {
      v132 = v131;
      [v150 insertSubview:v131 aboveSubview:*&v128[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v128 setNeedsLayout];
    }
  }

  sub_761060();
  sub_768900();
  sub_768ED0();
  v133 = v169[0];

  v134 = sub_758680();
  type metadata accessor for NotifyMeButtonPresenter();
  v135 = swift_allocObject();
  v136 = v135 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  *(v135 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v135 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v135 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v136 + 8) = &off_886578;
  swift_unknownObjectWeakAssign();
  *(v135 + 16) = v133;
  *(v135 + 24) = v134;

  v137 = v164;
  v138 = v166;
  sub_768ED0();
  (*(v165 + 32))(v135 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_metricsPipeline, v137, v138);
  *(v135 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_objectGraph) = v52;
  sub_75A920();

  sub_768ED0();
  *(v135 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_bag) = v169[5];
  sub_E929C();
  sub_E9C30();
  v139 = [objc_opt_self() defaultCenter];

  v140 = sub_760FD0();
  [v139 addObserver:v135 selector:"userNotificationsDidChangeNotification:" name:v140 object:0];

  sub_17C5AC(v135);
  v128[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_includeBorderInDarkMode] = sub_758690() & 1;
  sub_17A1DC();
}

void *sub_5271CC(uint64_t a1, void *a2)
{
  v3 = sub_765240();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _swiftEmptyArrayStorage;
  if (qword_93C4F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_BE38(v7, qword_99B3E8);
  sub_766660();
  if (sub_758630())
  {
    sub_764BC0();
  }

  else if (!sub_758650())
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  sub_765250();
  sub_765210();
  (*(v4 + 8))(v6, v3);
  sub_765330();

  sub_769440();
  if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v16 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();

  v8 = v16;
LABEL_9:
  sub_7586E0();
  v9 = sub_764F20();

  if (v9)
  {
    v10 = [a2 traitCollection];
    v11 = sub_769A00();

    if (v11)
    {
      if (qword_93C4E8 != -1)
      {
        swift_once();
      }

      v12 = qword_99B3D0;
    }

    else
    {
      if (qword_93C4E0 != -1)
      {
        swift_once();
      }

      v12 = qword_99B3B8;
    }

    v13 = sub_75CF00();
    sub_BE38(v13, v12);
    sub_75CDD0();
    sub_765250();
    sub_765210();
    (*(v4 + 8))(v6, v3);
    sub_765330();

    sub_769440();
    if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v16 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    return v16;
  }

  else
  {
  }

  return v8;
}

uint64_t sub_5275A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5275E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_527620()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_527674()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5276AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_75CF00();
  v44 = *(v10 - 1);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7652D0();
  __chkstk_darwin(v13 - 8);
  v14 = sub_765240();
  v47 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = a4;
  v50[4] = a5;
  v17 = sub_B1B4(v50);
  (*(*(a4 - 8) + 16))(v17, a1, a4);
  sub_134D8(v50, v49);
  sub_BD88(&unk_93F520);
  sub_758700();
  if (!swift_dynamicCast())
  {
    return sub_BEB8(v50);
  }

  v18 = v48;
  if (qword_93C4F0 != -1)
  {
    swift_once();
  }

  v46 = v14;
  v43 = a2;
  v19 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_BE38(v19, qword_99B3E8);
  sub_766660();
  v20 = sub_758630();
  v42 = v18;
  if (v20)
  {
    sub_764BC0();

    v21 = v47;
LABEL_8:
    sub_765250();
    sub_765210();
    (*(v21 + 8))(v16, v46);
    sub_765330();
    v23 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v23 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      type metadata accessor for VideoView();
      sub_5275A0(&unk_93F530, type metadata accessor for VideoView);
      sub_75A050();
    }

    else
    {
      sub_759210();
      sub_5275A0(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();
    }

    v21 = v47;
    goto LABEL_14;
  }

  v22 = sub_758650();
  v21 = v47;
  if (v22)
  {

    goto LABEL_8;
  }

LABEL_14:
  v26 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (v26)
  {
    v27 = v26;
    sub_7586E0();
    v28 = sub_764F20();

    if (v28)
    {
      v29 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      v31 = v44;
      v30 = v45;
      (*(v44 + 16))(v12, &v27[v29], v45);
      sub_75CDD0();
      (*(v31 + 8))(v12, v30);
      sub_765250();
      sub_765210();
      v44 = *(v21 + 8);
      (v44)(v16, v46);
      v32 = sub_765330();
      v41 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v33 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
      v45 = v27;
      v34 = v33;
      sub_7652E0();
      sub_7591B0();
      [v34 setContentMode:sub_765140()];
      v47 = v32;
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();

      v35 = v41;
      v36 = *&v27[v41];
      sub_765250();
      v37 = sub_765210();
      (v44)(v16, v46);
      [v36 setContentMode:v37];

      v27 = *&v27[v35];
      v38 = v45;

      sub_759210();
      sub_5275A0(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();
    }
  }

  else
  {
  }

  return sub_BEB8(v50);
}

id sub_527DE4()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75DAB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  sub_75DA20();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_765580();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  sub_75C720();
  v11 = sub_75DA30();
  v8(v7, v4);
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_527FF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_BD88(&unk_945370);
    v2 = sub_76A8B0();
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
    sub_BD88(&unk_9583A0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_13310(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_13310(v29, v30);
    result = sub_76A6B0(v2[5]);
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
    result = sub_13310(v30, (v2[7] + 32 * v10));
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

uint64_t sub_5282FC(uint64_t a1, uint64_t (*a2)(__n128), void *a3)
{
  v6 = sub_BD88(&unk_93F980);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  result = a2(v7);
  if (result)
  {
    v11 = result;
    v12 = *(v3 + *a3);
    v13 = sub_BD88(&unk_93F630);
    sub_768860();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {

      return sub_10A2C(v9, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v11, 1, v12, v9);

      return (*(v14 + 8))(v9, v13);
    }
  }

  return result;
}

uint64_t sub_528498(uint64_t (*a1)(__n128))
{
  v3 = sub_BD88(&unk_93F980);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_objectGraph);
    v10 = sub_BD88(&unk_93F630);
    sub_768860();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10A2C(v6, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_52884C();
}

uint64_t sub_52864C(uint64_t (*a1)(__n128))
{
  v3 = sub_BD88(&unk_93F980);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_objectGraph);
    v10 = sub_BD88(&unk_93F630);
    sub_768860();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10A2C(v6, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_52884C();
}

uint64_t sub_52884C()
{
  v0 = sub_758890();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_758900();
  sub_768900();
  sub_768ED0();
  (*(v1 + 104))(v3, enum case for AppStoreEngagementEvent.didSubscribeToArcade(_:), v0);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_7588A0();

  (*(v1 + 8))(v3, v0);

  type metadata accessor for InAppMessagesManager();
  sub_768ED0();
  sub_4C971C();
}

void sub_528A14(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_objectGraph);
      v7 = Strong;

      v8 = sub_BD88(&unk_93F630);
      sub_768860();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {

        sub_10A2C(v4, &unk_93F980);
      }

      else
      {
        sub_32A6C0(a1, 1, v6, v4);

        (*(v9 + 8))(v4, v8);
      }
    }
  }
}