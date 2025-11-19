uint64_t sub_1002B9EE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  v11 = *(v2 + qword_1009503B0);
  v12 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_100016E2C(v11 + v12, v10, &unk_10094DE60);
  v13 = sub_10075E11C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v7, 1, 1, v13);
  swift_beginAccess();
  sub_10021560C(v7, v11 + v12);
  swift_endAccess();
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_10000CFBC(v10, &unk_10094DE60);
    return sub_100016E2C(a1, a2, &unk_10094DE60);
  }

  else
  {
    (*(v14 + 32))(a2, v10, v13);
    return (v15)(a2, 0, 1, v13);
  }
}

uint64_t sub_1002BA104(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_10075E11C();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v57 - v11;
  v12 = sub_10076F13C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016E2C(a2, v93, &unk_1009434C0);
  if (v93[3])
  {
    sub_100016F40(0, &qword_1009441F0);
    if (swift_dynamicCast())
    {
      v16 = v62[1];
      [v16 bounds];
      LOBYTE(v87) = 1;
      *&v69 = v16;
      *(&v69 + 1) = v17;
      *&v70 = v18;
      *(&v70 + 1) = v19;
      *&v71 = v20;
      BYTE8(v71) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v72 = _Q0;
      v73 = _Q0;
      v74 = 15;
      sub_100016F40(0, &qword_1009471F0);
      *v15 = sub_10077068C();
      (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
      v26 = sub_10076F16C();
      v27 = *(v13 + 8);
      v13 += 8;
      v27(v15, v12);
      if (v26)
      {
        v77 = xmmword_10094FFF8;
        v78 = xmmword_100950008;
        v79 = xmmword_100950018;
        v75 = xmmword_10094FFD8;
        v76 = xmmword_10094FFE8;
        v83 = v71;
        v84 = v72;
        v85 = v73;
        v81 = v69;
        v82 = v70;
        v87 = xmmword_10094FFD8;
        v88 = xmmword_10094FFE8;
        v90 = xmmword_100950008;
        v91 = xmmword_100950018;
        v80 = qword_100950028;
        v86 = v74;
        v92 = qword_100950028;
        v89 = xmmword_10094FFF8;
        sub_100016E2C(&v75, &v63, &unk_1009505F0);
        xmmword_10094FFF8 = v83;
        xmmword_100950008 = v84;
        xmmword_100950018 = v85;
        qword_100950028 = v86;
        xmmword_10094FFD8 = v81;
        xmmword_10094FFE8 = v82;
        sub_10000CFBC(&v87, &unk_1009505F0);
        sub_1001F9960(&v69, &v63);
        sub_1002C03B4(v61, a1, v62);
        v65 = xmmword_10094FFF8;
        v66 = xmmword_100950008;
        v67 = xmmword_100950018;
        v68 = qword_100950028;
        v63 = xmmword_10094FFD8;
        v64 = xmmword_10094FFE8;
        xmmword_10094FFD8 = v75;
        xmmword_10094FFE8 = v76;
        xmmword_10094FFF8 = v77;
        xmmword_100950008 = v78;
        xmmword_100950018 = v79;
        qword_100950028 = v80;
        sub_10000CFBC(&v63, &unk_1009505F0);
        sub_1001F99BC(&v69);
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    sub_10000CFBC(v93, &unk_1009434C0);
  }

  v58 = a1;
  v29 = [v61 collectionView];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 indexPathsForSelectedItems];

  if (v31)
  {
    v32 = sub_1007701BC();

    if (*(v32 + 16))
    {
      v33 = v60;
      (*(v60 + 16))(v9, v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v7);

      v34 = *(v33 + 32);
      v35 = v59;
      v57 = v7;
      v34(v59, v9, v7);
      v36 = [v61 collectionView];
      if (!v36)
      {
LABEL_22:
        __break(1u);

        v53 = *(v13 + 0x20 + 16);
        v65 = *(v13 + 0x20);
        v66 = v53;
        v67 = *(v13 + 0x40);
        v68 = *(v13 + 0x50);
        v54 = *(v13 + 16);
        v63 = *v13;
        v64 = v54;
        v55 = v78;
        *(v13 + 0x20) = v77;
        *(v13 + 0x20 + 16) = v55;
        *(v13 + 0x40) = v79;
        *(v13 + 0x50) = v80;
        v56 = v76;
        *v13 = v75;
        *(v13 + 16) = v56;
        result = sub_10000CFBC(&v63, &unk_1009505F0);
        __break(1u);
        return result;
      }

      v37 = v36;
      v38 = v35;
      isa = sub_10075E02C().super.isa;
      v40 = [v37 cellForItemAtIndexPath:isa];

      if (v40)
      {
        v41 = v40;
        [v41 bounds];
        LOBYTE(v87) = 1;
        *&v69 = v40;
        *(&v69 + 1) = v42;
        *&v70 = v43;
        *(&v70 + 1) = v44;
        *&v71 = v45;
        BYTE8(v71) = 1;
        __asm { FMOV            V0.2D, #10.0 }

        v72 = _Q0;
        v73 = _Q0;
        v74 = 15;
        sub_100016F40(0, &qword_1009471F0);
        *v15 = sub_10077068C();
        (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
        v47 = sub_10076F16C();
        v48 = *(v13 + 8);
        v13 += 8;
        v48(v15, v12);
        v49 = v57;
        if (v47)
        {
          v77 = xmmword_10094FFF8;
          v78 = xmmword_100950008;
          v79 = xmmword_100950018;
          v75 = xmmword_10094FFD8;
          v76 = xmmword_10094FFE8;
          v83 = v71;
          v84 = v72;
          v85 = v73;
          v81 = v69;
          v82 = v70;
          v87 = xmmword_10094FFD8;
          v88 = xmmword_10094FFE8;
          v90 = xmmword_100950008;
          v91 = xmmword_100950018;
          v80 = qword_100950028;
          v86 = v74;
          v92 = qword_100950028;
          v89 = xmmword_10094FFF8;
          sub_100016E2C(&v75, &v63, &unk_1009505F0);
          xmmword_10094FFF8 = v83;
          xmmword_100950008 = v84;
          xmmword_100950018 = v85;
          qword_100950028 = v86;
          xmmword_10094FFD8 = v81;
          xmmword_10094FFE8 = v82;
          sub_10000CFBC(&v87, &unk_1009505F0);
          sub_1001F9960(&v69, &v63);
          sub_1002C03B4(v61, v58, v93);
          v65 = xmmword_10094FFF8;
          v66 = xmmword_100950008;
          v67 = xmmword_100950018;
          v68 = qword_100950028;
          v63 = xmmword_10094FFD8;
          v64 = xmmword_10094FFE8;
          xmmword_10094FFD8 = v75;
          xmmword_10094FFE8 = v76;
          xmmword_10094FFF8 = v77;
          xmmword_100950008 = v78;
          xmmword_100950018 = v79;
          qword_100950028 = v80;
          sub_10000CFBC(&v63, &unk_1009505F0);
          sub_1001F99BC(&v69);

          (*(v60 + 8))(v59, v49);
        }

        goto LABEL_20;
      }

      (*(v60 + 8))(v38, v57);
    }

    else
    {
    }
  }

  v50 = *&v61[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v51 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v6, 1, v51) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(v58, 1, v50, v6);

  return (*(v52 + 8))(v6, v51);
}

id sub_1002BA9FC()
{
  v1 = [v0 navigationItem];

  return v1;
}

uint64_t sub_1002BAA34@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1002C1B38(&qword_1009505E8, type metadata accessor for BaseShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1002BAAE8@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  a1[3] = &type metadata for GenericPageGridProvider;
  result = sub_100061F1C();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1002BAB40@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for GenericPageShelfLayoutSpacingProvider;
  result = sub_1002C174C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002BAB74()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = type metadata accessor for GenericPageShelfSupplementaryProvider();
  v4 = *(v0 + qword_10099E360);
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v6 = *((v2 & v1) + 0x230);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1003822A4(v4, v5, v3, v6, WitnessTable);
  sub_1002C1B38(&qword_1009505D0, type metadata accessor for GenericPageShelfSupplementaryProvider);

  return v8;
}

uint64_t sub_1002BAC6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x258);
  v5 = *(v3 + 0x238);
  v22[0] = *(v3 + 0x228);
  v22[1] = v5;
  v22[2] = *(v3 + 584);
  v23 = v4;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  v6 = sub_10076A6BC();
  v24[3] = swift_getObjectType();
  v24[0] = v6;
  v7 = sub_10076A6AC();
  v25[3] = swift_getObjectType();
  v25[0] = v7;
  sub_10000CD08(v24, v22);
  sub_10000CD64(v22, v20);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && v21)
  {
    v18 = v21;
    v8 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_10049CD38((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    *&v8[2 * v10 + 4] = v18;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v25, v22);
  sub_10000CD64(v22, v20);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && v21)
  {
    v19 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10049CD38(0, v8[2] + 1, 1, v8);
    }

    v12 = v8[2];
    v11 = v8[3];
    v13 = v19;
    if (v12 >= v11 >> 1)
    {
      v17 = sub_10049CD38((v11 > 1), v12 + 1, 1, v8);
      v13 = v19;
      v8 = v17;
    }

    v8[2] = v12 + 1;
    *&v8[2 * v12 + 4] = v13;
  }

  swift_arrayDestroy();
  sub_10076A6DC();
  v14 = type metadata accessor for GenericPageLayoutSectionProvider();
  swift_allocObject();
  sub_10000A570(v22, v20);

  v15 = sub_1007697CC();
  result = sub_10000CD74(v22);
  a1[3] = v14;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v15;
  return result;
}

id sub_1002BAFC0()
{
  v0 = sub_1002C1288();

  return v0;
}

id sub_1002BAFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1002BB068(uint64_t a1)
{
  v3 = qword_1009503C0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1002BB120(uint64_t a1)
{
  v3 = qword_1009503C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1002BB1FC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = sub_10000A5D4(&unk_100950568);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = *((v3 & v2) + 0x258);
  v10 = *(v4 + 568);
  v47[0] = *(v4 + 552);
  v47[1] = v10;
  v47[2] = *(v4 + 584);
  v48 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController();
  v49.receiver = v1;
  v49.super_class = v11;
  objc_msgSendSuper2(&v49, "viewDidLoad");
  [v1 setInstallsStandardGestureForInteractiveMovement:0];
  sub_1004A5458(0, 0, 1);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  sub_100016F40(0, &qword_100942F10);
  v14 = sub_100770D2C();
  [v13 setBackgroundColor:v14];

  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 setBackgroundColor:v17];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 setAlwaysBounceVertical:1];
  }

  swift_getWitnessTable();
  sub_10076A69C();
  (*((swift_isaMask & *v1) + 0x498))();
  sub_100765DAC();
  v20 = [v1 collectionView];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  [v20 setPrefetchDataSource:v1];

  v22 = qword_1009503C8;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    v46 = v5;
    v24 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
    type metadata accessor for DiffableFlowPreviewPresenter();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A5D4(&qword_100950578);
    swift_allocObject();
    v26 = v23;
    v45 = v24;
    swift_retain_n();
    *(v25 + 32) = sub_10076FE0C();
    v44 = v26;
    swift_unknownObjectWeakAssign();
    *(v25 + 24) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1002C14D8;
    *(v27 + 24) = 0;
    sub_100071820(&qword_100950580, &qword_100950578);
    sub_10076F45C();
    sub_10076F46C();

    sub_10000CD74(v47);
    (*(v6 + 8))(v8, v46);
    v28 = sub_1002C1B38(&qword_100950588, type metadata accessor for DiffableFlowPreviewPresenter);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v25;
    v30[4] = v28;

    v31 = v1;
    v32 = sub_1002C15C4(v25, v31, sub_1002C15B8, v30, v45);

    v33 = *(v31 + qword_1009503D8);
    *(v31 + qword_1009503D8) = v32;
    v34 = v32;

    *(v31 + qword_1009503D0) = v25;

    v35 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v34];
    v36 = [v31 collectionView];
    if (v36)
    {
      v37 = v36;
      [v36 addInteraction:v35];

      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  if (*(v1 + qword_1009503E0))
  {
    v38 = [v1 collectionView];
    sub_10076812C();
  }

  v39 = *(v1 + qword_1009503E8);
  if (v39)
  {
    v40 = *((swift_isaMask & *v1) + 0x3F8);

    v42 = v40(v41);
    v43 = *(v39 + 16);
    *(v39 + 16) = v42;
  }
}

void sub_1002BB8C4(void *a1)
{
  v1 = a1;
  sub_1002BB1FC();
}

uint64_t sub_1002BB90C(char a1)
{
  v2 = v1;
  v5 = *((swift_isaMask & *v2) + 0x228);
  v6 = *((swift_isaMask & *v2) + 0x238);
  v7 = *((swift_isaMask & *v2) + 0x248);
  v8 = *((swift_isaMask & *v2) + 0x258);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1, v5, v6, v7, v8);
  if ((*(v2 + qword_10099E368) & 1) == 0)
  {
    sub_1007684AC();
  }

  sub_100765DCC();
  return sub_100760BDC();
}

void sub_1002BBA10(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002BB90C(a3);
}

void sub_1002BBA64(char a1)
{
  v2 = v1;
  v6 = *((swift_isaMask & *v2) + 0x228);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  sub_100765DBC();
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v4 = v6;
  sub_100767CDC();
  sub_100764FAC();
  sub_10076F63C();
  if (v6)
  {
    v5 = v6;
    sub_100764F8C();

    v4 = v5;
  }
}

void sub_1002BBBBC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002BBA64(a3);
}

void sub_1002BBC10(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_10076FAAC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v5 & v4) + 0x258);
  v12 = *(v6 + 568);
  v16[0] = *(v6 + 552);
  v16[1] = v12;
  v16[2] = *(v6 + 584);
  v17 = v11;
  v13 = type metadata accessor for BaseDiffableShelfViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1);
  sub_10076FA9C();
  sub_100765E1C();
  (*(v8 + 8))(v10, v7);
  if (*(v2 + qword_10099E3A0) == 1)
  {
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v14 = *&v16[0];
    sub_100767CAC();
  }

  sub_100764FAC();
  sub_10076F64C();
  sub_10076FC1C();
  v15 = *&v16[0];
  sub_100764F7C();
}

void sub_1002BBE34(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002BBC10(a3);
}

uint64_t sub_1002BBE88(char a1)
{
  v2 = v1;
  v5 = *((swift_isaMask & *v2) + 0x228);
  v6 = *((swift_isaMask & *v2) + 0x238);
  v7 = *((swift_isaMask & *v2) + 0x248);
  v8 = *((swift_isaMask & *v2) + 0x258);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1, v5, v6, v7, v8);
  sub_100765E0C();
  return sub_100760BDC();
}

void sub_1002BBF68(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002BBE88(a3);
}

void sub_1002BBFF0(void *a1)
{
  v1 = a1;
  sub_1002BC538(&selRef_didReceiveMemoryWarning, &protocol conformance descriptor for DiffablePagePresenter<A>, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

uint64_t sub_1002BC06C()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3 = *((swift_isaMask & *v0) + 0x238);
  v4 = *((swift_isaMask & *v0) + 0x248);
  v5 = *((swift_isaMask & *v0) + 0x258);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v6, "as_viewWillBecomePartiallyVisible", v2, v3, v4, v5);
  return sub_100765E6C();
}

void sub_1002BC12C(void *a1)
{
  v1 = a1;
  sub_1002BC06C();
}

void sub_1002BC174()
{
  v1 = *((swift_isaMask & *v0) + 0x228);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomePartiallyVisible");
  swift_getWitnessTable();
  sub_10075F42C();
  if (*(v0 + qword_10099E3A0) == 1)
  {
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_100767CAC();
  }

  sub_100760BDC();
  sub_100764FAC();
  sub_10076F64C();
  sub_10076FC1C();
  sub_100764F7C();
}

void sub_1002BC314(void *a1)
{
  v1 = a1;
  sub_1002BC174();
}

void sub_1002BC35C()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_100765E5C();
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_100767CDC();
  sub_100764FAC();
  sub_10076F63C();
  if (v2)
  {
    v1 = v2;
    sub_100764F8C();
  }

  sub_100760BDC();
}

void sub_1002BC4BC(void *a1)
{
  v1 = a1;
  sub_1002BC35C();
}

uint64_t sub_1002BC538(SEL *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  v8 = *((swift_isaMask & *v3) + 0x230);
  v9.receiver = v3;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, *a1);
  WitnessTable = swift_getWitnessTable();
  return a3(v8, WitnessTable);
}

void sub_1002BC620(void *a1)
{
  v1 = a1;
  sub_1002BC538(&selRef_as_viewDidBecomeFullyVisible, &protocol conformance descriptor for DiffablePagePresenter<A>, &AppStoreViewControllerPresenter.viewDidBecomeFullyVisible());
}

id sub_1002BC69C(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = sub_10000A5D4(&qword_10094B618);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = *((v4 & v3) + 0x258);
  v10 = *(v5 + 568);
  v18[0] = *(v5 + 552);
  v18[1] = v10;
  v18[2] = *(v5 + 584);
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

    sub_1002B7354();
    v16 = sub_10000A5D4(&qword_100950560);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_1002B7528(v8);
    sub_10000CFBC(v8, &qword_10094B618);
    result = [v1 view];
    if (result)
    {
      v17 = result;
      [result bounds];

      swift_getWitnessTable();
      sub_10076A6CC();
      return sub_1004A5458(0, 0, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002BC91C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002BC69C(a3);
}

id sub_1002BC988(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_isaMask;
  v10 = swift_isaMask & *v3;
  v11 = sub_10000A5D4(&qword_10094B618);
  __chkstk_darwin(v11 - 8);
  v13 = &aBlock - v12;
  v14 = *((v9 & v8) + 0x258);
  v15 = *(v10 + 568);
  aBlock = *(v10 + 552);
  v23 = v15;
  v24 = *(v10 + 584);
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
    *&v24 = sub_1002C14CC;
    *(&v24 + 1) = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_1006F5994;
    *(&v23 + 1) = &unk_10088FFF0;
    v19 = _Block_copy(&aBlock);
    v20 = v4;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
    sub_1002B7354();
    v21 = sub_10000A5D4(&qword_100950560);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_1002B7528(v13);
    sub_10000CFBC(v13, &qword_10094B618);
    swift_getWitnessTable();
    return sub_10076A6CC();
  }

  return result;
}

void sub_1002BCC30(double a1, double a2, uint64_t a3, void *a4)
{
  v10 = *((swift_isaMask & *a4) + 0x228);
  v11 = *((swift_isaMask & *a4) + 0x238);
  v12 = *((swift_isaMask & *a4) + 0x248);
  v13 = *((swift_isaMask & *a4) + 0x258);
  type metadata accessor for BaseDiffableShelfViewController();
  sub_1004A5458(*&a1, *&a2, 0);
  v7 = [a4 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }
}

void sub_1002BCD4C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002BC988(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1002BCDCC()
{
  v1 = (swift_isaMask & *v0);
  result = [v0 collectionView];
  if (result)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v18 = v1[69];
    v4[2] = v18;
    v17 = v1[70];
    v4[3] = v17;
    v5 = v1[71];
    v4[4] = v5;
    v6 = v1[72];
    v4[5] = v6;
    v7 = v1[73];
    v4[6] = v7;
    v8 = v1[74];
    v4[7] = v8;
    v9 = v1[75];
    v4[8] = v9;
    v4[9] = v3;
    v10 = objc_allocWithZone(sub_10000A5D4(&qword_100950540));
    v11 = sub_1007699EC();
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

    sub_10076E73C();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002BCFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v14 = sub_10000A5D4(&qword_100950548);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - v15;
  v17 = sub_10000A5D4(&unk_100946710);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v27 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = qword_1009503C8;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      (*(v18 + 56))(v16, 1, 1, v17);
      goto LABEL_6;
    }

    v25 = v24;
    sub_1007699AC();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

LABEL_6:
      sub_10000CFBC(v16, &qword_100950548);
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
    v26 = sub_10076A61C();

    (*(v18 + 8))(v20, v17);
    return v26;
  }

  return result;
}

uint64_t sub_1002BD294()
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
  v4 = sub_10076A62C();

  return v4;
}

id sub_1002BD430()
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

    (*((swift_isaMask & *v1) + 0x488))(v8, v10);
    sub_100016F40(0, &qword_100948C70);
    isa = sub_1007701AC().super.isa;

    [v4 setBoundarySupplementaryItems:isa];

    v12 = (*(ObjectType + 784))();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v3 + 552);
    *(v14 + 24) = *(v3 + 560);
    *(v14 + 40) = *(v3 + 576);
    *(v14 + 48) = *(v3 + 584);
    *(v14 + 64) = *(v3 + 600);
    *(v14 + 72) = v13;
    v15 = objc_allocWithZone(v12);
    v18[4] = sub_1002C12D0;
    v18[5] = v14;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1002BAFEC;
    v18[3] = &unk_10088FF28;
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

uint64_t sub_1002BD6E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _UNKNOWN **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a4;
  v16 = sub_10076F1BC();
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
  sub_10000A5D4(&qword_100950538);
  v28 = a1;
  v31 = v21;
  v32 = &off_10088FE80;

  v22 = v21;
  sub_10076F19C();
  sub_10076F60C();

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
  v23 = sub_10076A6EC();

  return v23;
}

uint64_t sub_1002BD918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v36 = a1;
  v14 = sub_1007621EC();
  v38 = *(v14 - 8);
  v39 = v14;
  __chkstk_darwin(v14);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10000A5D4(&unk_100946720);
  v37 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v20 - 8);
  v22 = &v35 - v21;
  v23 = sub_10076469C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v24 + 56))(v22, 1, 1, v23);
    return sub_10000CFBC(v22, &unk_10095DCF0);
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
  sub_10076A67C();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10000CFBC(v22, &unk_10095DCF0);
  }

  (*(v24 + 32))(v26, v22, v23);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v37 + 8))(v19, v17);
  v30 = v38;
  v29 = v39;
  if ((*(v38 + 88))(v16, v39) == enum case for ShelfBackground.color(_:))
  {
    (*(v30 + 96))(v16, v29);
    v31 = *v16;
    v32 = *(sub_10000A5D4(&unk_100950670) + 48);
    v33 = sub_1007659CC();
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

void sub_1002BDD88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v49 = sub_1007621EC();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_10000A5D4(&unk_100946720);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v44 - v14;
  v16 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_10076469C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v54 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&qword_100944C40);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v45 = a1;
    v28 = qword_1009503C8;
    swift_beginAccess();
    v29 = *&v27[v28];
    if (!v29)
    {

      return;
    }

    v30 = v29;

    sub_10076E79C();
    v31 = sub_10076E5EC();
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
      sub_10076A67C();

      v35 = (*(v20 + 48))(v18, 1, v19);
      v36 = v54;
      if (v35 != 1)
      {
        (*(v34 + 32))(v54, v18, v19);
        sub_10076468C();
        swift_getKeyPath();
        v37 = v50;
        v38 = v47;
        sub_10076F49C();

        (*(v46 + 8))(v15, v38);
        v39 = v48;
        v40 = v49;
        if ((*(v48 + 88))(v37, v49) == enum case for ShelfBackground.color(_:))
        {
          (*(v39 + 96))(v37, v40);
          v41 = *v37;
          v42 = *(sub_10000A5D4(&unk_100950670) + 48);
          v43 = sub_1007659CC();
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

    sub_10000CFBC(v18, &unk_10095DCF0);
  }
}

uint64_t sub_1002BE360(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_100016E2C(a2, &v7, &unk_1009434C0);
  sub_100016E2C(&v6, &v4, &unk_1009505A0);
  v2 = v4;

  sub_1002B9960(v2, v5);

  sub_10000CFBC(&v6, &unk_1009505A0);
  return sub_10000CFBC(v5, &unk_1009434C0);
}

uint64_t sub_1002BE43C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = sub_10076843C();

    if (v2)
    {
      sub_10076366C();
    }
  }

  return result;
}

uint64_t sub_1002BE510(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_10076341C();
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
    sub_1007645CC();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_10000CFBC(v12, &unk_1009428D0);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v19 = *(v9 + 600);
      v20 = *(v9 + 568);
      v26 = *(v9 + 552);
      v27 = v20;
      v28 = *(v9 + 584);
      v29 = v19;
      type metadata accessor for BaseDiffableShelfViewController();
      swift_getWitnessTable();
      sub_10076A6AC();
      v22 = v21;
      ObjectType = swift_getObjectType();
      v25(v18, v16, v24, *(v6 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph), ObjectType, v22);

      swift_unknownObjectRelease();
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_1002BE7F8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1002BE510(v14, v15, v17, a6);

  return (*(v11 + 8))(v13, v10);
}

void sub_1002BE95C(void *a1, uint64_t a2, void (*a3)(id, char *, void *, void, uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v7 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_10076341C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10075E02C().super.isa;
  v25 = [a1 cellForItemAtIndexPath:isa];

  if (v25)
  {
    v24 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v23 = a3;
      v15 = v25;
      sub_1007645CC();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_10000CFBC(v9, &unk_1009428D0);
      }

      else
      {
        (*(v11 + 32))(v13, v9, v10);
        v17 = *(v6 + 600);
        v18 = *(v6 + 568);
        v26 = *(v6 + 552);
        v27 = v18;
        v28 = *(v6 + 584);
        v29 = v17;
        type metadata accessor for BaseDiffableShelfViewController();
        swift_getWitnessTable();
        sub_10076A6AC();
        v20 = v19;
        ObjectType = swift_getObjectType();
        v23(v15, v13, v24, *(v3 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph), ObjectType, v20);

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

uint64_t sub_1002BECB0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *, void *, void, uint64_t, uint64_t))
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v12 = a3;
  v13 = a1;
  sub_1002BE95C(v12, v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1002BEDBC()
{
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  return sub_10076A65C();
}

uint64_t sub_1002BEEB0(void *a1, uint64_t a2, void *a3)
{
  sub_10075E11C();
  v5 = sub_1007701BC();
  v6 = a3;
  v7 = a1;
  sub_1002B9AF0(v6, v5);
}

uint64_t sub_1002BEF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a2;
  v48 = a5;
  v46 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v10 - 8);
  v40 = (&v37 - v11);
  v45 = sub_10076341C();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_10076469C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 1168);
  v41 = a3;
  v42 = a4;
  v21(v55, a3, a4, v18);
  sub_100016E2C(v55, &v49, &unk_100950550);
  v22 = (v9 + 552);
  v23 = (v9 + 568);
  v24 = (v9 + 584);
  if (*(&v50 + 1))
  {
    sub_100012498(&v49, &v53);
    v39 = *v22;
    v38 = *v23;
    v37 = *v24;
    v25 = *(v9 + 600);
    v49 = v39;
    v50 = v38;
    v51 = v37;
    v52 = v25;
    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    sub_10076A6AC();
    swift_getObjectType();
    sub_1007686EC();
    swift_unknownObjectRelease();
    sub_10000CD74(&v53);
    v26 = v37;
    v27 = v38;
    v28 = v39;
  }

  else
  {
    sub_10000CFBC(&v49, &unk_100950550);
    v28 = *v22;
    v27 = *v23;
    v26 = *v24;
    v25 = *(v9 + 600);
  }

  v49 = v28;
  v50 = v27;
  v51 = v26;
  v52 = v25;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_10076A66C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000CFBC(v15, &unk_10095DCF0);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_10076A6BC();
    swift_getObjectType();
    sub_100768A8C();
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_100012498(&v53, &v49);
      sub_10076A6AC();
      swift_getObjectType();
      sub_1007686DC();
      swift_unknownObjectRelease();
      sub_10000CD74(&v49);
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      sub_10000CFBC(&v53, &unk_100950550);
    }
  }

  v29 = v40;
  sub_10076A65C();
  v30 = v44;
  v31 = v45;
  v32 = (*(v44 + 48))(v29, 1, v45);
  v33 = v43;
  if (v32 == 1)
  {
    sub_10000CFBC(v55, &unk_100950550);
    v34 = &unk_1009428D0;
    v35 = v29;
  }

  else
  {
    (*(v30 + 32))(v43, v29, v31);
    sub_10076A68C();
    swift_getObjectType();
    sub_10076816C();
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_100012498(&v53, &v49);
      sub_10076A6AC();
      swift_getObjectType();
      sub_1007686CC();
      swift_unknownObjectRelease();
      sub_10000CD74(&v49);
      (*(v30 + 8))(v33, v31);
      v34 = &unk_100950550;
      v35 = v55;
    }

    else
    {
      (*(v30 + 8))(v33, v31);
      sub_10000CFBC(v55, &unk_100950550);
      v35 = &v53;
      v34 = &unk_100950550;
    }
  }

  return sub_10000CFBC(v35, v34);
}

uint64_t sub_1002BF680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a2;
  v49 = a5;
  v47 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v10 - 8);
  v41 = (&v38 - v11);
  v12 = sub_10076341C();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_10076469C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 1168);
  v42 = a3;
  v43 = a4;
  v22(&v50, a3, a4, v19);
  v23 = (v9 + 552);
  v24 = (v9 + 568);
  v25 = (v9 + 584);
  if (*(&v51 + 1))
  {
    sub_100012498(&v50, &v54);
    v40 = *v23;
    v39 = *v24;
    v38 = *v25;
    v26 = *(v9 + 600);
    v50 = v40;
    v51 = v39;
    v52 = v38;
    v53 = v26;
    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    sub_10076A6AC();
    swift_getObjectType();
    sub_10076871C();
    swift_unknownObjectRelease();
    sub_10000CD74(&v54);
    v27 = v38;
    v28 = v39;
    v29 = v40;
  }

  else
  {
    sub_10000CFBC(&v50, &unk_100950550);
    v29 = *v23;
    v28 = *v24;
    v27 = *v25;
    v26 = *(v9 + 600);
  }

  v50 = v29;
  v51 = v28;
  v52 = v27;
  v53 = v26;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_10076A66C();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000CFBC(v16, &unk_10095DCF0);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_10076A6BC();
    swift_getObjectType();
    sub_100768A8C();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100012498(&v54, &v50);
      sub_10076A6AC();
      swift_getObjectType();
      sub_10076870C();
      swift_unknownObjectRelease();
      sub_10000CD74(&v50);
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
      sub_10000CFBC(&v54, &unk_100950550);
    }
  }

  v30 = v41;
  sub_10076A65C();
  v32 = v45;
  v31 = v46;
  v33 = (*(v45 + 48))(v30, 1, v46);
  v34 = v44;
  if (v33 == 1)
  {
    v35 = &unk_1009428D0;
    v36 = v30;
  }

  else
  {
    (*(v32 + 32))(v44, v30, v31);
    sub_10076A68C();
    swift_getObjectType();
    sub_10076816C();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100012498(&v54, &v50);
      sub_10076A6AC();
      swift_getObjectType();
      sub_1007686FC();
      swift_unknownObjectRelease();
      sub_10000CD74(&v50);
      return (*(v32 + 8))(v34, v31);
    }

    (*(v32 + 8))(v34, v31);
    v35 = &unk_100950550;
    v36 = &v54;
  }

  return sub_10000CFBC(v36, v35);
}

uint64_t sub_1002BFD34(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(id, id, uint64_t, uint64_t, char *))
{
  v11 = sub_10075E11C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076FF9C();
  v17 = v16;
  sub_10075E06C();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a7(v18, v19, v15, v17, v14);

  return (*(v12 + 8))(v14, v11);
}

Class sub_1002BFE80(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  if (a4)
  {
    sub_10075E06C();
    v13 = sub_10075E11C();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v13 = sub_10075E11C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v15 = a1;
  sub_1002B9EE0(v9, v12);

  sub_10000CFBC(v9, &unk_10094DE60);
  sub_10075E11C();
  v16 = *(v13 - 8);
  v17 = (*(v16 + 48))(v12, 1, v13);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_10075E02C().super.isa;
    (*(v16 + 8))(v12, v13);
    v18 = isa;
  }

  return v18;
}

void sub_1002C008C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1002C1034();

  swift_unknownObjectRelease();
}

void sub_1002C012C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002C0110(v4);
}

void sub_1002C01B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002C0194(v4);
}

void sub_1002C0234(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002C0218(v4);
}

void sub_1002C02B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002C029C(v4);
}

void sub_1002C0344(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_1002C0320(v6, a4);
}

uint64_t sub_1002C03B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v10 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = sub_10000CFBC(v8, &unk_100943200);
    v13 = 0;
  }

  else
  {
    v13 = sub_100263BF0(a2, 1, v9, v8);
    result = (*(v11 + 8))(v8, v10);
  }

  *a3 = v13;
  return result;
}

void sub_1002C0524(void *a1)
{
  v1 = a1;
  sub_1002B63E4();
}

void sub_1002C056C(void *a1)
{
  v1 = a1;
  sub_1002B6404();
}

uint64_t sub_1002C05B4()
{

  v1 = qword_10099E358;
  v2 = sub_10076B15C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_1002C070C()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3 = *((swift_isaMask & *v0) + 0x238);
  v4 = *((swift_isaMask & *v0) + 0x248);
  v5 = *((swift_isaMask & *v0) + 0x258);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BaseDiffableShelfViewController();
  return objc_msgSendSuper2(&v6, "dealloc", v2, v3, v4, v5);
}

uint64_t sub_1002C07B4(uint64_t a1)
{

  v2 = qword_10099E358;
  v3 = sub_10076B15C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

id sub_1002C0A1C()
{
  v1 = [v0 collectionView];

  return v1;
}

void sub_1002C0A54(void *a1)
{
  [v1 setCollectionView:a1];
}

void (*sub_1002C0A9C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 collectionView];
  return sub_1002C0AF8;
}

void sub_1002C0AF8(id *a1)
{
  v1 = *a1;
  [a1[1] setCollectionView:?];
}

void *sub_1002C0B40()
{
  v0 = sub_1002C141C();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002C0B70(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002BB178();
  return sub_10001D41C;
}

void *sub_1002C0BE0()
{
  v0 = sub_1002C13D8();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002C0C10(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002BB0C0();
  return sub_10001D41C;
}

uint64_t (*sub_1002C0C88(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002B7258();
  return sub_100019A4C;
}

uint64_t sub_1002C0F24()
{
  sub_1002C13C8();
}

uint64_t sub_1002C1034()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_10076469C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v2 & v1) + 0x258);
  v12 = *(v3 + 568);
  v14[0] = *(v3 + 552);
  v14[1] = v12;
  v14[2] = *(v3 + 584);
  v15 = v11;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_10076A67C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_10095DCF0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10076665C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1002C1298()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002C1304(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002C131C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1002C13D8()
{
  v1 = qword_1009503C0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002C141C()
{
  v1 = qword_1009503C8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002C1494()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t (*sub_1002C14D8(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1730;
}

uint64_t sub_1002C153C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002C1578()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002C15C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1002C1B38(&qword_100950588, type metadata accessor for DiffableFlowPreviewPresenter);
  v9 = sub_10000A5D4(&unk_100950590);
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

uint64_t sub_1002C16F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002C174C()
{
  result = qword_1009505D8;
  if (!qword_1009505D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009505D8);
  }

  return result;
}

void (*sub_1002C17A0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1A9C;
}

uint64_t (*sub_1002C1804(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1BC8;
}

uint64_t (*sub_1002C1868(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1A40;
}

id (*sub_1002C18CC(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1A1C;
}

uint64_t (*sub_1002C1958(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1BC8;
}

uint64_t (*sub_1002C19BC())(void *a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1002C16F0;
}

uint64_t sub_1002C1B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002C1BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1002C1C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C1CBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1002C1D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C1D6C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_10077164C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v5, *(v5 + 24));
  sub_10076D41C();
  v16 = enum case for FloatingPointRoundingRule.up(_:);
  v59 = *(v13 + 104);
  v59(v15, enum case for FloatingPointRoundingRule.up(_:), v12);
  [a1 displayScale];
  sub_10076C8DC();
  v60 = v17;
  v18 = *(v13 + 8);
  v18(v15, v12);
  sub_10000CF78(v6 + 5, v6[8]);
  sub_10076D41C();
  v59(v15, v16, v12);
  [a1 displayScale];
  sub_10076C8DC();
  v55 = v19;
  v18(v15, v12);
  sub_10000CF78(v6 + 13, v6[16]);
  sub_10076E0FC();
  v58 = v20;
  v56 = v21;
  v23 = v22 + 4.0;
  sub_10000CF78(v6 + 18, v6[21]);
  v24 = a4;
  sub_10076E0FC();
  v27 = v25;
  v59 = v28;
  v29 = v23;
  if (v23 <= v25)
  {
    v23 = v25;
  }

  v30 = v29;
  v52 = v29;
  v53 = v26;
  v57 = v25;
  v61.origin.x = a2;
  v61.origin.y = a3;
  v61.size.width = v24;
  v61.size.height = a5;
  v31 = CGRectGetMinX(v61) + (v23 - v30) * 0.5;
  v32 = v60;
  v50 = v60 - v56;
  v51 = v31;
  v62.origin.x = a2;
  v62.origin.y = a3;
  v62.size.width = v24;
  v62.size.height = a5;
  MinX = CGRectGetMinX(v62);
  v54 = v32 + v55;
  v55 = v32 + v55 - v53;
  v56 = MinX + (v23 - v27) * 0.5;
  v63.origin.x = a2;
  v63.origin.y = a3;
  v47 = a3;
  v63.size.width = v24;
  v63.size.height = a5;
  v34 = CGRectGetWidth(v63) - v23 - *(v5 + 88);
  sub_10000CF78((v5 + 184), *(v5 + 208));
  sub_10076E0FC();
  v60 = v36;
  v38 = v37;
  if (v34 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v34;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = v24;
  v64.size.height = a5;
  v40 = CGRectGetMaxX(v64) - v39;
  v41 = v54 - v38;
  v48 = v41;
  v49 = v39;
  sub_10000CF78((v5 + 224), *(v5 + 248));
  sub_10076E0FC();
  v46 = v43;
  if (v34 < v42)
  {
    v42 = v34;
  }

  if (*(v5 + 96) >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = *(v5 + 96);
  }

  v54 = v44;
  v65.origin.x = a2;
  v65.origin.y = v47;
  v65.size.width = v24;
  v65.size.height = a5;
  v53 = CGRectGetMaxX(v65) - v44;
  v66.origin.x = v40;
  v66.origin.y = v41;
  v66.size.width = v39;
  v66.size.height = v60;
  CGRectGetMinY(v66);
  sub_10000CF78((v5 + 104), *(v5 + 128));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 144), *(v5 + 168));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 184), *(v5 + 208));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 224), *(v5 + 248));
  sub_1007709CC();
  return sub_10076E0EC();
}

double sub_1002C22C4(double a1)
{
  v2 = v1;
  sub_10000CF78(v1, v1[3]);
  sub_10076D41C();
  sub_10000CF78(v2 + 5, v2[8]);
  sub_10076D41C();
  sub_10000CF78(v2 + 18, v2[21]);
  sub_10076E0FC();
  return a1;
}

uint64_t sub_1002C23A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100083068();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1002C2400()
{
  result = qword_100950710;
  if (!qword_100950710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950710);
  }

  return result;
}

unint64_t sub_1002C2458()
{
  result = qword_100950718;
  if (!qword_100950718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950718);
  }

  return result;
}

void sub_1002C2504(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_1007666AC());
  *&v4[v14] = sub_10076669C();
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView] = v17;
  v19 = qword_10093FD30;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
  v22 = qword_100950720;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100016F40(0, &qword_10094F610), v25 = v22, v26 = sub_100770EEC(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_10093FD38;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  v30 = sub_10000A61C(v29, qword_100950728);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_1005A806C(v12);

  v34 = qword_10093FD40;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_1001E083C(&qword_100950740, v68);
  v36 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1001E0898(v68, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_1001E08F4(v68);
  [*(*&v5[v18] + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView] = v37;
  v39 = qword_10093FD48;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v29, qword_100950768);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_100662DD4(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for SearchLockupListCollectionViewCell();
  v67.receiver = v5;
  v67.super_class = v42;
  v43 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v44 = sub_1002C3C8C();
  v45 = [objc_allocWithZone(UICollectionView) initWithFrame:v44 collectionViewLayout:{a1, a2, a3, a4}];

  v46 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView;
  v47 = *&v43[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  *&v43[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView] = v45;
  v48 = v45;

  if (!v48)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_10076AEDC();
  swift_allocObject();
  *&v43[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator] = sub_10076AE7C();

  v49 = v43;
  v50 = [v49 contentView];
  [v50 addSubview:*&v49[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView]];

  v51 = [v49 contentView];
  [v51 addSubview:*&v49[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView]];

  v52 = *&v43[v46];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v52 setDelegate:v49];
  v53 = *&v43[v46];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 clearColor];
  [v55 setBackgroundColor:v56];

  v57 = *&v43[v46];
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = v57;
  sub_1007708FC();
  v60 = sub_10076FF6C();

  [v59 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v60];

  v61 = *&v43[v46];
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v62 = swift_getObjCClassFromMetadata();
  v63 = v61;
  sub_1007708FC();
  v64 = sub_10076FF6C();

  sub_1007708FC();
  v65 = sub_10076FF6C();

  [v63 registerClass:v62 forSupplementaryViewOfKind:v64 withReuseIdentifier:v65];

  v66 = [v49 contentView];
  if (*&v43[v46])
  {
    [v66 addSubview:?];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1002C2CF0()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    swift_beginAccess();
    swift_weakLoadStrong();

    sub_10076AE9C();

    if (swift_weakLoadStrong())
    {
      sub_10076813C();
      swift_allocObject();
      *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver) = sub_10076814C();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C2DC0()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_100950720 = v5;
  return result;
}

void sub_1002C2ECC()
{
  qword_100950758 = &type metadata for CGFloat;
  unk_100950760 = &protocol witness table for CGFloat;
  qword_100950740 = 0x4008000000000000;
}

uint64_t sub_1002C2F08()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_100950780);
  v1 = sub_10000A61C(v0, qword_100950780);
  if (qword_100940A10 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A0C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002C2FD0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_10093FD50 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_100950780);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_10076D9AC();
  v12 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_10000DB7C(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  sub_10003F19C(&v13, &unk_100950798);
  return sub_10003F19C(&v10, &unk_1009507C0);
}

id sub_1002C31CC(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration];
  if (v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
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

uint64_t sub_1002C32A8()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D1AC();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766BEC();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v48 - v9;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v48 - v15;
  v16 = sub_100763ADC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchLockupListCollectionViewCell();
  v69.receiver = v0;
  v69.super_class = v20;
  objc_msgSendSuper2(&v69, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 bounds];
  v50 = v22;

  v23 = [v1 contentView];
  [v23 layoutMargins];

  v60 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8];
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v16, qword_10099DDA0);
  v25 = [v1 traitCollection];
  (*(v17 + 16))(v19, v24, v16);
  v26 = sub_100763A4C();
  if ((v28 & 1) == 0 && ((v26 | v27) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v29 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v29 = qword_100944CA0;
    }

    v30 = sub_10000A61C(v10, v29);
    v31 = v13;
    (*(v11 + 16))(v13, v30, v10);
    v32 = v48;
    (*(v11 + 32))(v48, v31, v10);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v11 + 8))(v32, v10);
  }

  sub_10076398C();

  (*(v17 + 8))(v19, v16);
  if (__OFSUB__(v60, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView];
  v68[3] = type metadata accessor for ImageHeadingView();
  v68[4] = &protocol witness table for UIView;
  v68[0] = v33;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView];
  result = type metadata accessor for SearchHeadingView();
  v67[3] = result;
  v67[4] = &protocol witness table for UIView;
  v67[0] = v34;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView])
  {
    v65[0] = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
    sub_100016F40(0, &unk_10094D220);
    v36 = v33;
    v37 = v34;
    sub_10076D28C();
    v65[3] = sub_10076D67C();
    v65[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v65);
    sub_10076D66C();
    if (qword_10093FD48 == -1)
    {
LABEL_16:
      v38 = sub_10076D3DC();
      v39 = sub_10000A61C(v38, qword_100950768);
      v40 = v49;
      (*(*(v38 - 8) + 16))(v49, v39, v38);
      v42 = v51;
      v41 = v52;
      (*(v51 + 104))(v40, enum case for FontSource.useCase(_:), v52);
      v64[3] = sub_10076D9AC();
      v64[4] = &protocol witness table for StaticDimension;
      sub_10000DB7C(v64);
      v62 = v41;
      v63 = &protocol witness table for FontSource;
      v43 = sub_10000DB7C(v61);
      (*(v42 + 16))(v43, v40, v41);
      sub_10076D9BC();
      (*(v42 + 8))(v40, v41);
      v62 = &type metadata for CGFloat;
      v63 = &protocol witness table for CGFloat;
      v61[0] = 0x4030000000000000;
      v44 = v54;
      sub_100766BDC();
      v46 = v55;
      v45 = v56;
      (*(v55 + 16))(v53, v44, v56);
      sub_10000A570(v68, v65);
      sub_10000A570(v67, v64);
      sub_10000A570(v66, v61);
      sub_100766C0C();
      swift_allocObject();
      v65[0] = sub_100766BFC();
      (*(v46 + 8))(v44, v45);
      sub_10000CD74(v66);
      sub_10000CD74(v67);
      sub_10000CD74(v68);
      sub_1002C5F34(&qword_100950880, &type metadata accessor for SearchLockupListLayout);
      v47 = v57;
      sub_10076DFCC();
      (*(v58 + 8))(v47, v59);
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_1002C3C8C()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_1002C5468;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002BAFEC;
  v7[3] = &unk_100890550;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

_BYTE *sub_1002C3DB8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration];
    v5 = *&result[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = [result contentView];

      if (v7)
      {
        [v7 layoutMargins];
        v10 = sub_1002C5488(v4, v5, a2, v8, v9);
        if (v10)
        {
          v11 = v10;
          v12 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v14 = v11;
          v15 = v11;

          aBlock[4] = sub_1002C593C;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100751F08;
          aBlock[3] = &unk_100890578;
          v16 = _Block_copy(aBlock);

          [v15 setVisibleItemsInvalidationHandler:v16];

          _Block_release(v16);
          v7 = v15;
        }

        else
        {
          v14 = 0;
        }

        return v14;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1002C3FA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver);
    v2 = Strong;

    if (v1)
    {
      sub_10076813C();
      sub_10076194C();
    }
  }
}

id sub_1002C4268()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002C43E8()
{
  swift_beginAccess();
  swift_weakAssign();
  sub_1002C2CF0();
}

void (*sub_1002C444C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1002C44E4;
}

void sub_1002C44E4(void **a1, char a2)
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

    sub_1002C2CF0();
  }

  free(v3);
}

uint64_t sub_1002C456C()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1002C45C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

double sub_1002C4688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, uint64_t a10)
{
  v79 = a8;
  v78 = a7;
  v75 = a5;
  v76 = a6;
  v73 = a3;
  v74 = a4;
  v72 = a1;
  v10 = sub_10076D1AC();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100766BEC();
  v85 = *(v12 - 8);
  v86 = v12;
  __chkstk_darwin(v12);
  v83 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v66 - v15;
  v88 = sub_10076997C();
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ImageHeadingView();
  if (qword_10093FD30 != -1)
  {
    swift_once();
  }

  v18 = qword_100950720;
  if (qword_10093FD38 != -1)
  {
    swift_once();
  }

  v77 = sub_10076D3DC();
  sub_10000A61C(v77, qword_100950728);
  if (qword_10093FD40 != -1)
  {
    swift_once();
  }

  v19 = sub_100016F40(0, &qword_100942F00);
  v20 = [a9 traitCollection];
  v87 = v19;
  v21 = sub_100770B3C();

  v22 = objc_opt_self();
  v70 = v21;
  v23 = [v22 configurationWithFont:v21];
  v24 = [v18 imageByApplyingSymbolConfiguration:v23];
  v25 = v24;
  if (v24)
  {
    [v24 size];
  }

  v26 = sub_10076DDDC();
  swift_allocObject();
  v27 = sub_10076DDBC();

  v89 = a9;
  v28 = [a9 traitCollection];
  sub_100770B3C();

  v29 = sub_10076C04C();
  *(&v98 + 1) = v29;
  v69 = sub_1002C5F34(&qword_100943230, &type metadata accessor for Feature);
  *&v99 = v69;
  v30 = sub_10000DB7C(&v97);
  v31 = *(v29 - 8);
  v32 = *(v31 + 104);
  v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = v31 + 104;
  v67 = v32;
  v32(v30);
  sub_10076C90C();
  sub_10000CD74(&v97);
  sub_10076996C();
  v33 = sub_10076995C();
  v35 = v34;
  v36 = *(v90 + 8);
  v90 += 8;
  v36(v17, v88);
  v37 = *(v35 + 8);

  swift_unknownObjectRetain();
  sub_1005A8BB8(v27, &protocol witness table for LayoutViewPlaceholder, v33, v37, qword_100950740, &v97);

  swift_unknownObjectRelease();
  sub_10016C4BC(&v97, &v102);
  v38 = swift_allocObject();
  sub_1001A8FB8(&v102, (v38 + 16));
  swift_allocObject();
  v72 = sub_10076DD9C();

  swift_unknownObjectRelease();

  sub_10000CD74(&v97);
  if (qword_10093FD48 != -1)
  {
    swift_once();
  }

  v39 = v77;
  v40 = sub_10000A61C(v77, qword_100950768);
  if (qword_10093FD50 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v39, qword_100950780);
  if (qword_10093FD58 != -1)
  {
    swift_once();
  }

  v41 = [v89 traitCollection];
  v71 = v40;
  sub_100770B3C();

  *(&v98 + 1) = v29;
  *&v99 = v69;
  v42 = sub_10000DB7C(&v97);
  v67(v42, v68, v29);
  sub_10076C90C();
  sub_10000CD74(&v97);
  sub_10076996C();
  v43 = sub_10076995C();
  v45 = v44;
  v36(v17, v88);
  v46 = swift_allocObject();
  v47 = v76;
  *(v46 + 16) = v75;
  *(v46 + 24) = v47;
  swift_allocObject();

  v48 = sub_10076DD9C();
  sub_1001DFBC4(&unk_100950798, &v97);
  v49 = swift_allocObject();
  v50 = v100;
  *(v49 + 48) = v99;
  *(v49 + 64) = v50;
  *(v49 + 80) = v101;
  v51 = v98;
  *(v49 + 16) = v97;
  *(v49 + 32) = v51;
  *(v49 + 96) = v43;
  *(v49 + 104) = v45;
  *(v49 + 112) = v48;
  swift_allocObject();
  v52 = sub_10076DD9C();
  v53 = swift_allocObject();
  *(v53 + 16) = a10;
  *(v53 + 24) = v78 & 1;
  *(v53 + 32) = v79;
  swift_allocObject();
  v54 = sub_10076DD9C();
  *(&v98 + 1) = v26;
  *&v99 = &protocol witness table for LayoutViewPlaceholder;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v97 = v72;
  v103 = v26;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  *&v102 = v52;
  v96[3] = v26;
  v96[0] = v54;
  v95[3] = sub_10076D67C();
  v95[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v95);

  sub_10076D66C();
  v55 = v80;
  (*(*(v39 - 8) + 16))(v80, v71, v39);
  v57 = v81;
  v56 = v82;
  (*(v81 + 104))(v55, enum case for FontSource.useCase(_:), v82);
  v94[3] = sub_10076D9AC();
  v94[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v94);
  v92 = v56;
  v93 = &protocol witness table for FontSource;
  v58 = sub_10000DB7C(v91);
  (*(v57 + 16))(v58, v55, v56);
  sub_10076D9BC();
  (*(v57 + 8))(v55, v56);
  v92 = &type metadata for CGFloat;
  v93 = &protocol witness table for CGFloat;
  v91[0] = 0x4030000000000000;
  v59 = v84;
  sub_100766BDC();
  v61 = v85;
  v60 = v86;
  (*(v85 + 16))(v83, v59, v86);
  sub_10000A570(&v97, v95);
  sub_10000A570(&v102, v94);
  sub_10000A570(v96, v91);
  sub_100766C0C();
  swift_allocObject();
  v62 = sub_100766BFC();
  (*(v61 + 8))(v59, v60);
  sub_10000CD74(v96);
  sub_10000CD74(&v102);
  sub_10000CD74(&v97);
  *&v97 = v62;
  sub_1002C5F34(&qword_10094D1E0, &type metadata accessor for SearchLockupListLayout);
  sub_10076D2AC();
  v64 = v63;

  return v64;
}

uint64_t sub_1002C5238()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002C5270()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002C52A8()
{
  sub_10000CD74(v0 + 16);
  sub_10000CD74(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_1002C5308()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_1007666AC());
  *(v0 + v2) = sub_10076669C();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1002C53F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002C5430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002C5470(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1002C5488(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007708FC();
  v15 = v8;
  v16 = sub_10076FF6C();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v42 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000A5D4(&unk_100942870);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v17;
  sub_100016F40(0, &unk_10095DD70);
  v22 = v17;
  isa = sub_1007701AC().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
    v28 = a1;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v10 = v27;
    swift_unknownObjectRelease();
    v28 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = v10 - a4 - a5;
    }

    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v42];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (v28)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_1002C5944()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_10000A5D4(&qword_10094D1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10000A5D4(&qword_10094D1C8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_objectGraph);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource);
    if (v13)
    {

      v14 = v13;
      sub_10076E74C();

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        sub_10076F44C();
        v17 = sub_10076B9FC();

        if (!v17)
        {
          (*(v8 + 8))(v11, v7);

          return;
        }

        v18 = sub_10000A5D4(&unk_1009428E0);
        sub_10076F5AC();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v3, 1, v18) != 1)
        {
          sub_100263BF0(v17, 1, v12, v3);

          (*(v8 + 8))(v11, v7);
          (*(v19 + 8))(v3, v18);
          return;
        }

        (*(v8 + 8))(v11, v7);

        v15 = &unk_100943200;
        v16 = v3;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
    }

    v15 = &qword_10094D1C0;
    v16 = v6;
LABEL_7:
    sub_10000CFBC(v16, v15);
  }
}

uint64_t sub_1002C5CC8()
{
  v1 = sub_10000A5D4(&qword_10094D1C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-v2 - 8];
  v4 = sub_10000A5D4(&qword_10094D1C8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13[-v7 - 8];
  v9 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource);
  if (!v9)
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
    return sub_10000CFBC(v3, &qword_10094D1C0);
  }

  v10 = v9;
  sub_10076E74C();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000CFBC(v3, &qword_10094D1C0);
  }

  result = (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    v14 = sub_10076BC0C();
    v15 = sub_1002C5F34(&qword_100950870, &type metadata accessor for Lockup);

    sub_10076F44C();
    sub_10076AECC();

    (*(v5 + 8))(v8, v4);
    return sub_10000CD74(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002C5F34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002C5F90()
{
  result = qword_100950888;
  if (!qword_100950888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950888);
  }

  return result;
}

uint64_t sub_1002C5FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100946720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_10076B4EC();
  sub_1002C6430(&qword_100949DE0, &type metadata accessor for Badge);
  result = sub_10076332C();
  v9 = v13;
  if (v13)
  {
    v10 = sub_1007633CC();
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    (*(v5 + 8))(v7, v4);
    v11 = *(v13 + 16);

    sub_1004FD0B0(v9, v10, 0, v11, 0, a2);
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_topSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_bottomSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_verticalSeparatorView] setHidden:1];
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1002C6218@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1002C6274(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002C633C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_1004F6A7C();
}

uint64_t sub_1002C6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1002C6430(&unk_100950890, type metadata accessor for BadgeCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1002C6430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002C6478@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_10076D1AC();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D9AC();
  sub_10000A61C(v10, qword_1009A2368);
  sub_10076D17C();
  sub_10076D40C();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  v26 = v12;
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v10, qword_1009A2350);
  sub_10076D17C();
  sub_10076D40C();
  v15 = v14;
  v13(v7, v4);
  v23 = v15;
  sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  if (qword_100940CC0 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  v17 = sub_10000A61C(v16, qword_1009A1438);
  (*(*(v16 - 8) + 16))(v3, v17, v16);
  (*(v20 + 104))(v3, enum case for FontSource.useCase(_:), v21);
  sub_10075FE4C();
  v27 = &type metadata for CGFloat;
  v28 = &protocol witness table for CGFloat;
  v25 = &protocol witness table for CGFloat;
  v26 = 0x403E000000000000;
  v24 = &type metadata for CGFloat;
  v23 = 0x4064000000000000;
  return sub_100767B3C();
}

char *sub_1002C6858(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator] = 0;
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock];
  sub_100016F40(0, &qword_100942F10);
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = sub_100770D2C();
  v18 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView] = sub_10073C780(v17, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView] = [objc_allocWithZone(type metadata accessor for DeveloperLinkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_tagRibbonView] = [objc_allocWithZone(type metadata accessor for TagFacetRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = type metadata accessor for ProductDescriptionCollectionViewCell();
  v43.receiver = v5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = sub_100770D2C();
  [v21 setBackgroundColor:v22];

  v23 = v20;
  v24 = [v23 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView;
  v29 = *&v23[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v29;
  sub_10076F95C();
  sub_10000CFBC(&v39, &unk_1009434C0);
  sub_10000CFBC(&v41, &unk_1009434C0);
  sub_100770B9C();

  v31 = *(v11 + 8);
  v31(v13, v10);
  v32 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView;
  v33 = *&v23[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v33;
  sub_10076F95C();
  sub_10000CFBC(&v39, &unk_1009434C0);
  sub_10000CFBC(&v41, &unk_1009434C0);
  sub_100770B9C();

  v31(v13, v10);
  v35 = [v23 contentView];
  [v35 addSubview:*&v23[v28]];

  v36 = [v23 contentView];
  [v36 addSubview:*&v23[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_tagRibbonView]];

  v37 = [v23 contentView];
  [v37 addSubview:*&v23[v32]];

  return v23;
}

uint64_t sub_1002C6DF4()
{
  v1 = v0;
  v26 = sub_10076D1FC();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100767B4C();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100767B6C();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductDescriptionCollectionViewCell();
  v38.receiver = v0;
  v38.super_class = v11;
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v12 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_tagRibbonView];
  type metadata accessor for RibbonBarItemCollectionViewCell();

  v14 = sub_1007701EC();

  v15 = 0;
  if (v14)
  {
    v16 = v13;
    v15 = v13;
  }

  sub_1002C6478(v7);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
  v36 = type metadata accessor for ExpandableTextView();
  v37 = &protocol witness table for UIView;
  v35 = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for TagFacetRibbonView();
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v15;
  v33 = v18;
  v34 = v19;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView];
  v28 = type metadata accessor for DeveloperLinkView();
  v29 = &protocol witness table for UIView;
  v27 = v20;
  v21 = v17;
  v22 = v15;
  v23 = v20;
  sub_100767B5C();
  sub_100767B2C();

  (*(v2 + 8))(v4, v26);
  return (*(v8 + 8))(v10, v25);
}

double sub_1002C7180(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  if (a2)
  {
    v13 = a5 >= a4 ? a4 : a5;
    if (v13 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v17 = a2;
      v18 = [a1 traitCollection];
      v19 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
      *v21 = UIEdgeInsetsZero.top;
      v21[1] = left;
      v21[2] = bottom;
      v21[3] = right;
      *&v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = a3;
      v22 = &v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
      *v22 = a4;
      v22[1] = a5;
      *&v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v18;
      *&v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v17;
      v43.receiver = v20;
      v43.super_class = v19;
      v23 = objc_msgSendSuper2(&v43, "init");
      if (qword_1009415A0 != -1)
      {
        swift_once();
      }

      v24 = qword_1009678B0;
      v25 = [qword_1009678B0 objectForKey:v23];
      if (v25)
      {
        v26 = v25;

        a4 = *&v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
      }

      else
      {
        v27 = qword_100941598;
        v26 = v17;
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_10076D3DC();
        v29 = sub_10000A61C(v28, qword_100967898);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v12, v29, v28);
        (*(v30 + 56))(v12, 0, 1, v28);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v32 = v31;
        v34 = v33;
        v36 = v35;

        sub_10000CFBC(v12, &unk_100943250);
        v37 = type metadata accessor for ExpandableTextView.CacheValue();
        v38 = objc_allocWithZone(v37);
        v39 = &v38[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v39 = a4;
        v39[1] = UIEdgeInsetsZero.top + bottom + v32;
        *(v39 + 2) = v34;
        *(v39 + 3) = v36;
        v42.receiver = v38;
        v42.super_class = v37;
        v40 = objc_msgSendSuper2(&v42, "init");
        [v24 setObject:v40 forKey:v23];
      }
    }
  }

  return a4;
}

void sub_1002C7528(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_100765A8C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100765A9C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a5 traitCollection];
  sub_10076108C();
  if ((sub_1007701EC() & 1) == 0)
  {

    return;
  }

  v30 = a3;
  v16 = sub_10077073C();
  v31 = _swiftEmptyArrayStorage;
  if (!(a2 >> 62))
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v16;
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_18:
    v20 = _swiftEmptyArrayStorage;
LABEL_19:
    sub_10016E360(v20);

    sub_100765A7C();
    sub_100765A4C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007841E0;
    v23 = v29;
    *(v22 + 32) = v29;
    v24 = v23;
    v25 = sub_10076DEEC();
    sub_100765A5C();

    (*(v11 + 8))(v14, v10);
    return;
  }

  v21 = v16;
  v17 = sub_10077158C();
  v29 = v21;
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v17 >= 1)
  {
    v26 = a4;
    v27 = v11;
    v28 = v10;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        sub_10077149C();
        sub_10076DDDC();
        swift_allocObject();
        swift_unknownObjectRetain();
        sub_10076DD9C();

        sub_10077019C();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        ++v18;
        sub_10077025C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    else
    {
      v19 = a2 + 32;
      sub_10076DDDC();
      do
      {
        swift_allocObject();
        swift_retain_n();
        sub_10076DD9C();

        sub_10077019C();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        v19 += 8;
        --v17;
      }

      while (v17);
    }

    v20 = v31;
    v11 = v27;
    v10 = v28;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1002C7994()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_10076611C();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  type metadata accessor for TagFacetRibbonView();
  sub_1002C8640(&qword_1009508E0, type metadata accessor for TagFacetRibbonView);
  return sub_10076A02C();
}

id sub_1002C7A9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductDescriptionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductDescriptionCollectionViewCell()
{
  result = qword_1009508C8;
  if (!qword_1009508C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C7BC8()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002C7CD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002C7D8C()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1002C7DE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

uint64_t sub_1002C7EA8()
{
  type metadata accessor for TagFacetRibbonView();
  sub_1002C8640(&qword_1009508E0, type metadata accessor for TagFacetRibbonView);
  return sub_10076A03C();
}

uint64_t sub_1002C7F38(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_100767B4C();
  __chkstk_darwin(v6 - 8);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100767B6C();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076452C();
  v10 = sub_10076C5AC();

  v44 = a4;
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v45 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000275EC;
  *(v14 + 24) = v13;
  v55 = sub_1000ACB04;
  v56 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v54 = &unk_100890690;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v17 = v12;

  [v10 enumerateAttributesInRange:0 options:v45 usingBlock:{0x100000, v15}];

  _Block_release(v15);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v19 = v17;
    v20 = sub_10076451C();
    v21 = sub_10076450C();
    v22 = sub_1007644FC();
    if (sub_1007644EC())
    {
      v45 = sub_10076B8EC();
      v24 = v23;
    }

    else
    {
      v45 = 0;
      v24 = 0;
    }

    type metadata accessor for ProductDescriptionCollectionViewCell();
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 24) = 4;
    v26 = sub_10076DDDC();
    swift_allocObject();
    v27 = v19;
    v28 = sub_10076DD9C();
    v54 = v26;
    v55 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v28;
    v29 = swift_allocObject();
    v29[2] = v20;
    v29[3] = v21;
    v29[4] = v22;
    v29[5] = v44;
    swift_allocObject();

    swift_unknownObjectRetain();
    v30 = sub_10076DD9C();
    v52[3] = v26;
    v52[4] = &protocol witness table for LayoutViewPlaceholder;
    v52[0] = v30;
    v31 = type metadata accessor for DeveloperLinkView();
    v32 = swift_allocObject();
    v33 = v45;
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v24;
    swift_allocObject();
    v34 = sub_10076DD9C();
    v51[3] = v26;
    v51[4] = &protocol witness table for LayoutViewPlaceholder;
    v51[0] = v34;
    sub_10076108C();
    LOBYTE(v31) = sub_1007701EC();

    if (v31)
    {
      sub_10000A570(v52, v49);
    }

    else
    {
      v50 = 0;
      memset(v49, 0, sizeof(v49));
    }

    sub_1002C6478(v40);
    sub_10000A570(aBlock, &v48);
    sub_10000A570(v52, &v47);
    sub_10000A570(v51, &v46);
    v35 = v41;
    sub_100767B5C();
    sub_1002C8640(&qword_10095EC90, &type metadata accessor for ProductDescriptionLayout);
    v36 = v43;
    sub_10076D2AC();
    v38 = v37;

    (*(v42 + 8))(v35, v36);
    sub_10000CFBC(v49, &unk_10094DA00);
    sub_10000CD74(v51);
    sub_10000CD74(v52);
    sub_10000CD74(aBlock);
    return v38 > a2;
  }

  return result;
}

uint64_t sub_1002C8500()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1002C8558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002C8570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002C85B0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002C85FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002C8640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002C8704()
{
  v0 = sub_10076B6EC();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946720);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.smallLockup(_:))
  {
    if (v13 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      v14 = type metadata accessor for MediumLockupCollectionViewCell();
      v15 = type metadata accessor for MediumLockupCollectionViewCell;
      sub_1002CC464(&qword_100950CE0, type metadata accessor for MediumLockupCollectionViewCell);
      sub_1002CC464(&qword_100950CE8, type metadata accessor for MediumLockupCollectionViewCell);
      v16 = &qword_10094AB00;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      v14 = type metadata accessor for LargeLockupCollectionViewCell();
      v15 = type metadata accessor for LargeLockupCollectionViewCell;
      sub_1002CC464(&qword_100950D00, type metadata accessor for LargeLockupCollectionViewCell);
      sub_1002CC464(&qword_100950D08, type metadata accessor for LargeLockupCollectionViewCell);
      v16 = &qword_10094AAF0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productTopLockup(_:))
    {
      v14 = type metadata accessor for ProductLockupCollectionViewCell();
      v15 = type metadata accessor for ProductLockupCollectionViewCell;
      sub_1002CC464(&qword_100950BB0, type metadata accessor for ProductLockupCollectionViewCell);
      sub_1002CC464(&unk_10094C320, type metadata accessor for ProductLockupCollectionViewCell);
      v16 = &qword_10094AB78;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell();
      v15 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell;
      sub_1002CC464(&qword_100950D60, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
      sub_1002CC464(&qword_100950D68, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
      v16 = &qword_10094AAD0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell();
      v15 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell;
      sub_1002CC464(&qword_100950D40, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);
      sub_1002CC464(&qword_100948170, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);
      v16 = &qword_10094AAD8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
    {
      v14 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell();
      v15 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell;
      sub_1002CC464(&qword_100950A00, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);
      sub_1002CC464(&qword_100950A08, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);
      v16 = &qword_100950A10;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v14 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell();
      v15 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell;
      sub_1002CC464(&qword_1009509F0, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);
      sub_1002CC464(&qword_1009509F8, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);
      v16 = &qword_10094B550;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.action(_:))
    {
      v14 = type metadata accessor for ActionCollectionViewCell();
      v15 = type metadata accessor for ActionCollectionViewCell;
      sub_1002CC464(&qword_100950EC8, type metadata accessor for ActionCollectionViewCell);
      sub_1002CC464(&unk_100950ED0, type metadata accessor for ActionCollectionViewCell);
      v16 = &qword_10094AA40;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.artwork(_:))
    {
      v14 = type metadata accessor for ArtworkCollectionViewCell();
      v15 = type metadata accessor for ArtworkCollectionViewCell;
      sub_1002CC464(&qword_100950E28, type metadata accessor for ArtworkCollectionViewCell);
      sub_1002CC464(&qword_10094B348, type metadata accessor for ArtworkCollectionViewCell);
      v16 = &unk_100950E30;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.ribbonBar(_:) || v13 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v14 = type metadata accessor for RibbonBarItemCollectionViewCell();
      v15 = type metadata accessor for RibbonBarItemCollectionViewCell;
      sub_1002CC464(&qword_100950E00, type metadata accessor for RibbonBarItemCollectionViewCell);
      sub_1002CC464(&unk_10094FD70, type metadata accessor for RibbonBarItemCollectionViewCell);
      v16 = &qword_10094B058;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.paragraph(_:))
    {
      v14 = type metadata accessor for ParagraphCollectionViewCell();
      v15 = type metadata accessor for ParagraphCollectionViewCell;
      sub_1002CC464(&qword_100950CC8, type metadata accessor for ParagraphCollectionViewCell);
      sub_1002CC464(&qword_100949368, type metadata accessor for ParagraphCollectionViewCell);
      v16 = &qword_10094AB08;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.annotation(_:))
    {
      v18 = sub_10076C04C();
      v30 = v18;
      v31 = sub_1002CC464(&qword_100943230, &type metadata accessor for Feature);
      v19 = sub_10000DB7C(v29);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.annotations_update_2025A(_:), v18);
      LOBYTE(v18) = sub_10076C90C();
      sub_10000CD74(v29);
      if (v18)
      {
        v14 = type metadata accessor for AnnotationCollectionViewHostingCell();
        v15 = type metadata accessor for AnnotationCollectionViewHostingCell;
        sub_1002CC464(&qword_100950EB0, type metadata accessor for AnnotationCollectionViewHostingCell);
        sub_1002CC464(&qword_100950EB8, type metadata accessor for AnnotationCollectionViewHostingCell);
        v16 = &unk_100950EC0;
      }

      else
      {
        v14 = type metadata accessor for AnnotationCollectionViewCell();
        v15 = type metadata accessor for AnnotationCollectionViewCell;
        sub_1002CC464(&qword_100950EA0, type metadata accessor for AnnotationCollectionViewCell);
        sub_1002CC464(&qword_100950EA8, type metadata accessor for AnnotationCollectionViewCell);
        v16 = &qword_10094AA48;
      }

      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.footnote(_:))
    {
      v14 = type metadata accessor for FootnoteCollectionViewCell();
      v15 = type metadata accessor for FootnoteCollectionViewCell;
      sub_1002CC464(&qword_100950DC8, type metadata accessor for FootnoteCollectionViewCell);
      sub_1002CC464(&qword_10094DC38, type metadata accessor for FootnoteCollectionViewCell);
      v16 = &qword_10094AAA8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.titledParagraph(_:))
    {
      v14 = type metadata accessor for TitledParagraphCollectionViewCell();
      v15 = type metadata accessor for TitledParagraphCollectionViewCell;
      sub_1002CC464(&qword_100950A80, type metadata accessor for TitledParagraphCollectionViewCell);
      sub_1002CC464(&qword_10094EC20, type metadata accessor for TitledParagraphCollectionViewCell);
      v16 = &unk_100950A88;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.editorialCard(_:))
    {
      v14 = type metadata accessor for EditorialCardCollectionViewCell();
      v15 = type metadata accessor for EditorialCardCollectionViewCell;
      sub_1002CC464(&qword_100950DF0, type metadata accessor for EditorialCardCollectionViewCell);
      sub_1002CC464(&qword_100950DF8, type metadata accessor for EditorialCardCollectionViewCell);
      v16 = &qword_10094AA98;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.videoCard(_:))
    {
      v14 = type metadata accessor for VideoCardCollectionViewCell();
      v15 = type metadata accessor for VideoCardCollectionViewCell;
      sub_1002CC464(&qword_100950A20, type metadata accessor for VideoCardCollectionViewCell);
      sub_1002CC464(&qword_100950A28, type metadata accessor for VideoCardCollectionViewCell);
      v16 = &qword_10094ABB8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.brick(_:))
    {
      v14 = type metadata accessor for BrickCollectionViewCell();
      v15 = type metadata accessor for BrickCollectionViewCell;
      sub_1002CC464(&qword_100950E08, type metadata accessor for BrickCollectionViewCell);
      sub_1002CC464(&qword_1009428F0, type metadata accessor for BrickCollectionViewCell);
      v16 = &qword_10094AA88;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_44:
      v14 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell();
      v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell;
      sub_1002CC464(&qword_100950B20, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
      sub_1002CC464(&qword_10094AFC8, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
      v16 = &qword_10094AA90;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productCapability(_:))
    {
      v20 = sub_10076C04C();
      v30 = v20;
      v31 = sub_1002CC464(&qword_100943230, &type metadata accessor for Feature);
      v21 = sub_10000DB7C(v29);
      (*(*(v20 - 8) + 104))(v21, enum case for Feature.product_capability_update_2024E(_:), v20);
      LOBYTE(v20) = sub_10076C90C();
      sub_10000CD74(v29);
      if ((v20 & 1) == 0)
      {
        v14 = type metadata accessor for ProductCapabilityCell();
        v15 = type metadata accessor for ProductCapabilityCell;
        sub_1002CC464(&qword_100950C30, type metadata accessor for ProductCapabilityCell);
        sub_1002CC464(&qword_100950C38, type metadata accessor for ProductCapabilityCell);
        v16 = &qword_10094AB48;
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 == enum case for Shelf.ContentType.reviews(_:))
      {
        v14 = type metadata accessor for ProductReviewCollectionViewCell();
        v15 = type metadata accessor for ProductReviewCollectionViewCell;
        sub_1002CC464(&qword_100950B90, type metadata accessor for ProductReviewCollectionViewCell);
        sub_1002CC464(&qword_100950B98, type metadata accessor for ProductReviewCollectionViewCell);
        v16 = &unk_100950BA0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v14 = type metadata accessor for ReviewSummaryCollectionViewCell();
        v15 = type metadata accessor for ReviewSummaryCollectionViewCell;
        sub_1002CC464(&qword_100950B78, type metadata accessor for ReviewSummaryCollectionViewCell);
        sub_1002CC464(&qword_100950B80, type metadata accessor for ReviewSummaryCollectionViewCell);
        v16 = &unk_100950B88;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorsChoice(_:))
      {
        v14 = type metadata accessor for ProductEditorsChoiceCollectionViewCell();
        v15 = type metadata accessor for ProductEditorsChoiceCollectionViewCell;
        sub_1002CC464(&qword_100950DD0, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
        sub_1002CC464(&qword_10094C3C8, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
        v16 = &qword_10094C3E8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.todayCard(_:) || v13 == enum case for Shelf.ContentType.miniTodayCard(_:))
      {
        v14 = type metadata accessor for BaseTodayCardCollectionViewCell();
        v15 = type metadata accessor for BaseTodayCardCollectionViewCell;
        sub_1002CC464(&qword_100950A68, type metadata accessor for BaseTodayCardCollectionViewCell);
        sub_1002CC464(&qword_100950A70, type metadata accessor for BaseTodayCardCollectionViewCell);
        v16 = &qword_100950A78;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialLink(_:))
      {
        v14 = type metadata accessor for LinkCollectionViewCell();
        v15 = type metadata accessor for LinkCollectionViewCell;
        sub_1002CC464(&qword_100950CF0, type metadata accessor for LinkCollectionViewCell);
        sub_1002CC464(&qword_100950CF8, type metadata accessor for LinkCollectionViewCell);
        v16 = &qword_10094AAF8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.quote(_:))
      {
        v14 = type metadata accessor for QuoteCollectionViewCell();
        v15 = type metadata accessor for QuoteCollectionViewCell;
        sub_1002CC464(&qword_100950BA8, type metadata accessor for QuoteCollectionViewCell);
        sub_1002CC464(&unk_1009542F0, type metadata accessor for QuoteCollectionViewCell);
        v16 = &qword_10094AB80;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.horizontalRule(_:))
      {
        v14 = type metadata accessor for HorizontalRuleCollectionViewCell();
        v15 = type metadata accessor for HorizontalRuleCollectionViewCell;
        sub_1002CC464(&qword_100950D70, type metadata accessor for HorizontalRuleCollectionViewCell);
        sub_1002CC464(&qword_100950D78, type metadata accessor for HorizontalRuleCollectionViewCell);
        v16 = &qword_10094AAC8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedArtwork(_:))
      {
        v14 = type metadata accessor for FramedArtworkCollectionViewCell();
        v15 = type metadata accessor for FramedArtworkCollectionViewCell;
        sub_1002CC464(&qword_100950DC0, type metadata accessor for FramedArtworkCollectionViewCell);
        sub_1002CC464(&unk_10095BE40, type metadata accessor for FramedArtworkCollectionViewCell);
        v16 = &qword_10094AAB0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshots(_:))
      {
        v14 = type metadata accessor for ScreenshotShelfCollectionViewCell();
        v15 = type metadata accessor for ScreenshotShelfCollectionViewCell;
        sub_1002CC464(&qword_100950B40, type metadata accessor for ScreenshotShelfCollectionViewCell);
        sub_1002CC464(&qword_100950B48, type metadata accessor for ScreenshotShelfCollectionViewCell);
        v16 = &unk_100950B50;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMedia(_:))
      {
        v14 = type metadata accessor for ProductMediaCollectionViewCell();
        v15 = type metadata accessor for ProductMediaCollectionViewCell;
        sub_1002CC464(&qword_100950C10, type metadata accessor for ProductMediaCollectionViewCell);
        sub_1002CC464(&qword_100950C18, type metadata accessor for ProductMediaCollectionViewCell);
        v16 = &qword_10094AB50;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v14 = type metadata accessor for ProductMediaItemCollectionViewCell();
        v15 = type metadata accessor for ProductMediaItemCollectionViewCell;
        sub_1002CC464(&qword_100950BF8, type metadata accessor for ProductMediaItemCollectionViewCell);
        sub_1002CC464(&qword_100950C00, type metadata accessor for ProductMediaItemCollectionViewCell);
        v16 = &unk_100950C08;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appShowcase(_:))
      {
        v14 = type metadata accessor for AppShowcaseCollectionViewCell();
        v15 = type metadata accessor for AppShowcaseCollectionViewCell;
        sub_1002CC464(&qword_100950E78, type metadata accessor for AppShowcaseCollectionViewCell);
        sub_1002CC464(&qword_100950E80, type metadata accessor for AppShowcaseCollectionViewCell);
        v16 = &qword_10094AA78;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
      {
        v14 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
        v15 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell;
        sub_1002CC464(&qword_100950D48, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell);
        sub_1002CC464(&qword_100950D50, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell);
        v16 = &unk_100950D58;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appTrailerLockup(_:))
      {
        v14 = type metadata accessor for AppTrailerLockupCollectionViewCell();
        v15 = type metadata accessor for AppTrailerLockupCollectionViewCell;
        sub_1002CC464(&qword_100950E60, type metadata accessor for AppTrailerLockupCollectionViewCell);
        sub_1002CC464(&qword_100950E68, type metadata accessor for AppTrailerLockupCollectionViewCell);
        v16 = &unk_100950E70;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        v14 = type metadata accessor for ProductPageLinkCollectionViewCell();
        v15 = type metadata accessor for ProductPageLinkCollectionViewCell;
        sub_1002CC464(&qword_100950BF0, type metadata accessor for ProductPageLinkCollectionViewCell);
        sub_1002CC464(&unk_100960270, type metadata accessor for ProductPageLinkCollectionViewCell);
        v16 = &qword_10094AB70;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productRatings(_:))
      {
        v14 = type metadata accessor for ProductRatingsCollectionViewCell();
        v15 = type metadata accessor for ProductRatingsCollectionViewCell;
        sub_1002CC464(&qword_100950BE0, type metadata accessor for ProductRatingsCollectionViewCell);
        sub_1002CC464(&qword_10095E9C0, type metadata accessor for ProductRatingsCollectionViewCell);
        v16 = &unk_100950BE8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReview(_:))
      {
        v14 = type metadata accessor for GenericProductReviewCollectionViewCell();
        v15 = type metadata accessor for GenericProductReviewCollectionViewCell;
        sub_1002CC464(&qword_100950BC8, type metadata accessor for GenericProductReviewCollectionViewCell);
        sub_1002CC464(&qword_100950BD0, type metadata accessor for GenericProductReviewCollectionViewCell);
        v16 = &unk_100950BD8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReviewAction(_:))
      {
        v14 = type metadata accessor for GenericProductReviewActionCollectionViewCell();
        v15 = type metadata accessor for GenericProductReviewActionCollectionViewCell;
        sub_1002CC464(&qword_100950BB8, type metadata accessor for GenericProductReviewActionCollectionViewCell);
        sub_1002CC464(&qword_1009435F0, type metadata accessor for GenericProductReviewActionCollectionViewCell);
        v16 = &unk_100950BC0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.linkableText(_:))
      {
        v14 = type metadata accessor for LinkableTextCollectionViewCell();
        v15 = type metadata accessor for LinkableTextCollectionViewCell;
        sub_1002CC464(&qword_100950B70, type metadata accessor for LinkableTextCollectionViewCell);
        sub_1002CC464(&qword_100948AA8, type metadata accessor for LinkableTextCollectionViewCell);
        v16 = &qword_10094AB68;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedVideo(_:))
      {
        v14 = type metadata accessor for FramedVideoCollectionViewCell();
        v15 = type metadata accessor for FramedVideoCollectionViewCell;
        sub_1002CC464(&qword_100950DB8, type metadata accessor for FramedVideoCollectionViewCell);
        sub_1002CC464(&unk_10094B470, type metadata accessor for FramedVideoCollectionViewCell);
        v16 = &qword_10094AAB8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productDescription(_:))
      {
        v14 = type metadata accessor for ProductDescriptionCollectionViewCell();
        v15 = type metadata accessor for ProductDescriptionCollectionViewCell;
        sub_1002CC464(&qword_100950C20, type metadata accessor for ProductDescriptionCollectionViewCell);
        sub_1002CC464(&qword_100967030, type metadata accessor for ProductDescriptionCollectionViewCell);
        v16 = &unk_100950C28;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.banner(_:))
      {
        v14 = type metadata accessor for BannerCollectionViewCell();
        v15 = type metadata accessor for BannerCollectionViewCell;
        sub_1002CC464(&qword_100950E10, type metadata accessor for BannerCollectionViewCell);
        sub_1002CC464(&qword_100950E18, type metadata accessor for BannerCollectionViewCell);
        v16 = &unk_100950E20;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        v14 = type metadata accessor for ScreenshotsLockupCollectionViewCell();
        v15 = type metadata accessor for ScreenshotsLockupCollectionViewCell;
        sub_1002CC464(&qword_100950B28, type metadata accessor for ScreenshotsLockupCollectionViewCell);
        sub_1002CC464(&qword_100950B30, type metadata accessor for ScreenshotsLockupCollectionViewCell);
        v16 = &unk_100950B38;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.roundedButton(_:))
      {
        v14 = type metadata accessor for RoundedButtonCollectionViewCell();
        v15 = type metadata accessor for RoundedButtonCollectionViewCell;
        sub_1002CC464(&qword_100950B58, type metadata accessor for RoundedButtonCollectionViewCell);
        sub_1002CC464(&qword_100950B60, type metadata accessor for RoundedButtonCollectionViewCell);
        v16 = &unk_100950B68;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.titledButtonStack(_:))
      {
        v14 = type metadata accessor for TitledButtonStackCollectionViewCell();
        v15 = type metadata accessor for TitledButtonStackCollectionViewCell;
        sub_1002CC464(&qword_100950A90, type metadata accessor for TitledButtonStackCollectionViewCell);
        sub_1002CC464(&qword_100950A98, type metadata accessor for TitledButtonStackCollectionViewCell);
        v16 = &unk_100950AA0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v14 = type metadata accessor for BaseTodayBrickCollectionViewCell();
        v15 = type metadata accessor for BaseTodayBrickCollectionViewCell;
        sub_1002CC464(&qword_100950AA8, type metadata accessor for BaseTodayBrickCollectionViewCell);
        sub_1002CC464(&qword_100950AB0, type metadata accessor for BaseTodayBrickCollectionViewCell);
        v16 = &qword_100950AB8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
      {
        v14 = type metadata accessor for LargeHeroBreakoutCollectionViewCell();
        v15 = type metadata accessor for LargeHeroBreakoutCollectionViewCell;
        sub_1002CC464(&qword_100950D10, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
        sub_1002CC464(&qword_10094EC18, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
        v16 = &qword_10094AAE8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.upsellBreakout(_:))
      {
        v14 = type metadata accessor for UpsellBreakoutCollectionViewCell();
        v15 = type metadata accessor for UpsellBreakoutCollectionViewCell;
        sub_1002CC464(&qword_100950A30, type metadata accessor for UpsellBreakoutCollectionViewCell);
        sub_1002CC464(&qword_100950A38, type metadata accessor for UpsellBreakoutCollectionViewCell);
        v16 = &unk_100950A40;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        v14 = type metadata accessor for SmallBreakoutCollectionViewCell();
        v15 = type metadata accessor for SmallBreakoutCollectionViewCell;
        sub_1002CC464(&qword_100950AF0, type metadata accessor for SmallBreakoutCollectionViewCell);
        sub_1002CC464(&qword_10094FE10, type metadata accessor for SmallBreakoutCollectionViewCell);
        v16 = &qword_10094AB88;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        v14 = type metadata accessor for EditorialStoryCardCollectionViewCell();
        v15 = type metadata accessor for EditorialStoryCardCollectionViewCell;
        sub_1002CC464(&qword_100950DD8, type metadata accessor for EditorialStoryCardCollectionViewCell);
        sub_1002CC464(&qword_100944598, type metadata accessor for EditorialStoryCardCollectionViewCell);
        v16 = &unk_100950DE0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
      {
        v14 = type metadata accessor for MixedMediaLockupCollectionViewCell();
        v15 = type metadata accessor for MixedMediaLockupCollectionViewCell;
        sub_1002CC464(&qword_100950CD0, type metadata accessor for MixedMediaLockupCollectionViewCell);
        sub_1002CC464(&qword_1009451E0, type metadata accessor for MixedMediaLockupCollectionViewCell);
        v16 = &unk_100950CD8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeFooter(_:))
      {
        v14 = type metadata accessor for ArcadeFooterCollectionViewCell();
        v15 = type metadata accessor for ArcadeFooterCollectionViewCell;
        sub_1002CC464(&qword_100950E48, type metadata accessor for ArcadeFooterCollectionViewCell);
        sub_1002CC464(&qword_100950E50, type metadata accessor for ArcadeFooterCollectionViewCell);
        v16 = &unk_100950E58;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialQuote(_:))
      {
        v14 = type metadata accessor for EditorialQuoteCollectionViewCell();
        v15 = type metadata accessor for EditorialQuoteCollectionViewCell;
        sub_1002CC464(&qword_100950DE8, type metadata accessor for EditorialQuoteCollectionViewCell);
        sub_1002CC464(&unk_100961230, type metadata accessor for EditorialQuoteCollectionViewCell);
        v16 = &qword_10094AAA0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeShowcase(_:))
      {
        v14 = type metadata accessor for ArcadeShowcaseCollectionViewCell();
        v15 = type metadata accessor for ArcadeShowcaseCollectionViewCell;
        sub_1002CC464(&qword_100950E38, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        sub_1002CC464(&qword_100950E40, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        v16 = &qword_10094AA80;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
      {
        v14 = type metadata accessor for GameCenterActivityFeedCollectionViewCell();
        v15 = type metadata accessor for GameCenterActivityFeedCollectionViewCell;
        sub_1002CC464(&qword_100950DA0, type metadata accessor for GameCenterActivityFeedCollectionViewCell);
        sub_1002CC464(&qword_100950DA8, type metadata accessor for GameCenterActivityFeedCollectionViewCell);
        v16 = &unk_100950DB0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
      {
        v14 = type metadata accessor for ArcadeDownloadPackCollectionViewCell();
        v15 = type metadata accessor for ArcadeDownloadPackCollectionViewCell;
        sub_1002CC464(&qword_1009509E0, type metadata accessor for ArcadeDownloadPackCollectionViewCell);
        sub_1002CC464(&qword_1009509E8, type metadata accessor for ArcadeDownloadPackCollectionViewCell);
        v16 = &qword_10094ABC0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
      {
        v14 = type metadata accessor for GameCenterReengagementCollectionViewCell();
        v15 = type metadata accessor for GameCenterReengagementCollectionViewCell;
        sub_1002CC464(&qword_100950D90, type metadata accessor for GameCenterReengagementCollectionViewCell);
        sub_1002CC464(&unk_1009544B0, type metadata accessor for GameCenterReengagementCollectionViewCell);
        v16 = &qword_10094AAC0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
        v15 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell;
        sub_1002CC464(&qword_100950AD0, type metadata accessor for SmallGameCenterPlayerCollectionViewCell);
        sub_1002CC464(&qword_10095CDB0, type metadata accessor for SmallGameCenterPlayerCollectionViewCell);
        v16 = &unk_100950AD8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
        v15 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell;
        sub_1002CC464(&qword_100950D18, type metadata accessor for LargeGameCenterPlayerCollectionViewCell);
        sub_1002CC464(&qword_100950D20, type metadata accessor for LargeGameCenterPlayerCollectionViewCell);
        v16 = &unk_100950D28;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
      {
        v14 = type metadata accessor for AchievementSummaryCollectionViewCell();
        v15 = type metadata accessor for AchievementSummaryCollectionViewCell;
        sub_1002CC464(&qword_100950D98, type metadata accessor for AchievementSummaryCollectionViewCell);
        sub_1002CC464(&unk_100947F90, type metadata accessor for AchievementSummaryCollectionViewCell);
        v16 = &qword_10094AA38;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.posterLockup(_:))
      {
        v14 = type metadata accessor for PosterLockupCollectionViewCell();
        v15 = type metadata accessor for PosterLockupCollectionViewCell;
        sub_1002CC464(&qword_100950CA0, type metadata accessor for PosterLockupCollectionViewCell);
        sub_1002CC464(&qword_100950CA8, type metadata accessor for PosterLockupCollectionViewCell);
        v16 = &qword_10094AB10;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v14 = type metadata accessor for SmallContactCardCollectionViewCell();
        v15 = type metadata accessor for SmallContactCardCollectionViewCell;
        sub_1002CC464(&qword_100950AE0, type metadata accessor for SmallContactCardCollectionViewCell);
        sub_1002CC464(&qword_100950AE8, type metadata accessor for SmallContactCardCollectionViewCell);
        v16 = &qword_10094AB90;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        v14 = type metadata accessor for InformationRibbonCollectionViewCell();
        v15 = type metadata accessor for InformationRibbonCollectionViewCell;
        sub_1002CC464(&qword_100950D30, type metadata accessor for InformationRibbonCollectionViewCell);
        sub_1002CC464(&qword_100950D38, type metadata accessor for InformationRibbonCollectionViewCell);
        v16 = &qword_10094AAE0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
      {
        v14 = type metadata accessor for PreorderDisclaimerCollectionViewCell();
        v15 = type metadata accessor for PreorderDisclaimerCollectionViewCell;
        sub_1002CC464(&qword_100950C80, type metadata accessor for PreorderDisclaimerCollectionViewCell);
        sub_1002CC464(&unk_100965E40, type metadata accessor for PreorderDisclaimerCollectionViewCell);
        v16 = &qword_10094AB18;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyHeader(_:))
      {
        v14 = type metadata accessor for PrivacyHeaderCollectionViewCell();
        v15 = type metadata accessor for PrivacyHeaderCollectionViewCell;
        sub_1002CC464(&qword_100950C50, type metadata accessor for PrivacyHeaderCollectionViewCell);
        sub_1002CC464(&qword_100956E60, type metadata accessor for PrivacyHeaderCollectionViewCell);
        v16 = &qword_10094AB38;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyFooter(_:))
      {
        v14 = type metadata accessor for PrivacyFooterCollectionViewCell();
        v15 = type metadata accessor for PrivacyFooterCollectionViewCell;
        sub_1002CC464(&qword_100950C58, type metadata accessor for PrivacyFooterCollectionViewCell);
        sub_1002CC464(&qword_100944430, type metadata accessor for PrivacyFooterCollectionViewCell);
        v16 = &qword_10094AB30;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v14 = type metadata accessor for PrivacyTypeCollectionViewCell();
        v15 = type metadata accessor for PrivacyTypeCollectionViewCell;
        sub_1002CC464(&qword_100950C48, type metadata accessor for PrivacyTypeCollectionViewCell);
        sub_1002CC464(&qword_10094F860, type metadata accessor for PrivacyTypeCollectionViewCell);
        v16 = &qword_10094AB40;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyCategory(_:))
      {
        v14 = type metadata accessor for PrivacyCategoryCollectionViewCell();
        v15 = type metadata accessor for PrivacyCategoryCollectionViewCell;
        sub_1002CC464(&qword_100950C70, type metadata accessor for PrivacyCategoryCollectionViewCell);
        sub_1002CC464(&qword_100950C78, type metadata accessor for PrivacyCategoryCollectionViewCell);
        v16 = &qword_10094AB20;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyDefinition(_:))
      {
        v14 = type metadata accessor for PrivacyDefinitionCollectionViewCell();
        v15 = type metadata accessor for PrivacyDefinitionCollectionViewCell;
        sub_1002CC464(&qword_100950C60, type metadata accessor for PrivacyDefinitionCollectionViewCell);
        sub_1002CC464(&qword_100950C68, type metadata accessor for PrivacyDefinitionCollectionViewCell);
        v16 = &qword_10094AB28;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appPromotion(_:))
      {
        v14 = type metadata accessor for AppEventCollectionViewCell();
        v15 = type metadata accessor for AppEventCollectionViewCell;
        sub_1002CC464(&qword_100950E88, type metadata accessor for AppEventCollectionViewCell);
        sub_1002CC464(&qword_100950E90, type metadata accessor for AppEventCollectionViewCell);
        v16 = &unk_100950E98;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResult(_:))
      {
        v14 = type metadata accessor for SearchResultCollectionViewCell();
        v15 = type metadata accessor for SearchResultCollectionViewCell;
        sub_1002CC464(&qword_100950B10, type metadata accessor for SearchResultCollectionViewCell);
        sub_1002CC464(&qword_100950078, type metadata accessor for SearchResultCollectionViewCell);
        v16 = &unk_100950B18;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
      {
        v14 = type metadata accessor for SearchResultsContextCardCollectionViewCell();
        v15 = type metadata accessor for SearchResultsContextCardCollectionViewCell;
        sub_1002CC464(&qword_100950AF8, type metadata accessor for SearchResultsContextCardCollectionViewCell);
        sub_1002CC464(&qword_100950B00, type metadata accessor for SearchResultsContextCardCollectionViewCell);
        v16 = &qword_100950B08;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.pageTabs(_:))
      {
        v14 = type metadata accessor for SegmentedControlCollectionViewCell();
        v15 = type metadata accessor for SegmentedControlCollectionViewCell;
        sub_1002CC464(&qword_100950A18, type metadata accessor for SegmentedControlCollectionViewCell);
        sub_1002CC464(&qword_10094EBD8, type metadata accessor for SegmentedControlCollectionViewCell);
        v16 = &qword_10094EBE0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.heroCarousel(_:))
      {
        v14 = type metadata accessor for HeroCarouselCollectionViewCell();
        v15 = type metadata accessor for HeroCarouselCollectionViewCell;
        sub_1002CC464(&qword_100950D80, type metadata accessor for HeroCarouselCollectionViewCell);
        sub_1002CC464(&qword_100949360, type metadata accessor for HeroCarouselCollectionViewCell);
        v16 = &unk_100950D88;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.uber(_:))
      {
        v14 = type metadata accessor for UberCollectionViewCell();
        v15 = type metadata accessor for UberCollectionViewCell;
        sub_1002CC464(&qword_100950A60, type metadata accessor for UberCollectionViewCell);
        sub_1002CC464(&qword_100957710, type metadata accessor for UberCollectionViewCell);
        v16 = &qword_10094ABB0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productBadge(_:))
      {
        v14 = type metadata accessor for BadgeCollectionViewCell();
        v15 = type metadata accessor for BadgeCollectionViewCell;
        sub_1002CC464(&qword_100950C40, type metadata accessor for BadgeCollectionViewCell);
        sub_1002CC464(&qword_100944E60, type metadata accessor for BadgeCollectionViewCell);
        v16 = &unk_100950890;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mediaPageHeader(_:))
      {
        v14 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell();
        v15 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell;
        sub_1002CC464(&qword_1009509A0, type metadata accessor for MediaPageHeaderCollectionViewHostingCell);
        sub_1002CC464(&qword_1009509A8, type metadata accessor for MediaPageHeaderCollectionViewHostingCell);
        v16 = &unk_1009509B0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.tagBrick(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.placeholder(_:))
      {
        v14 = type metadata accessor for PlaceholderCollectionViewCell();
        v15 = type metadata accessor for PlaceholderCollectionViewCell;
        sub_1002CC464(&qword_100950CB0, type metadata accessor for PlaceholderCollectionViewCell);
        sub_1002CC464(&qword_100950CB8, type metadata accessor for PlaceholderCollectionViewCell);
        v16 = &unk_100950CC0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.prefetchMarker(_:))
      {
        v14 = type metadata accessor for PrefetchMarkerCollectionViewCell();
        v15 = type metadata accessor for PrefetchMarkerCollectionViewCell;
        sub_1002CC464(&qword_100950C88, type metadata accessor for PrefetchMarkerCollectionViewCell);
        sub_1002CC464(&qword_100950C90, type metadata accessor for PrefetchMarkerCollectionViewCell);
        v16 = &qword_100950C98;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.unifiedMessage(_:))
      {
        v14 = type metadata accessor for UnifiedMessageCollectionViewCell(0);
        v15 = type metadata accessor for UnifiedMessageCollectionViewCell;
        sub_1002CC464(&qword_100950A48, type metadata accessor for UnifiedMessageCollectionViewCell);
        sub_1002CC464(&qword_100950A50, type metadata accessor for UnifiedMessageCollectionViewCell);
        v16 = &unk_100950A58;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
      {
        sub_10076465C();
        v22 = v26;
        sub_10076B68C();
        sub_1002CC464(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
        v23 = v28;
        v24 = sub_10077124C();
        v25 = *(v27 + 8);
        v25(v22, v23);
        v25(v4, v23);
        if ((v24 & 1) == 0)
        {
          v14 = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
          v15 = type metadata accessor for SwiftUIProductPageCardViewHostingCell;
          sub_1002CC464(&qword_1009509C8, type metadata accessor for SwiftUIProductPageCardViewHostingCell);
          sub_1002CC464(&qword_1009509D0, type metadata accessor for SwiftUIProductPageCardViewHostingCell);
          v16 = &unk_1009509D8;
          goto LABEL_26;
        }
      }

      else if (v13 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        (*(v6 + 8))(v8, v5);
        return 0;
      }
    }

    v14 = type metadata accessor for SwiftUIViewHostingCell();
    v15 = type metadata accessor for SwiftUIViewHostingCell;
    sub_1002CC464(&qword_1009509B8, type metadata accessor for SwiftUIViewHostingCell);
    sub_1002CC464(&qword_10094CE08, type metadata accessor for SwiftUIViewHostingCell);
    v16 = &unk_1009509C0;
    goto LABEL_26;
  }

  v14 = type metadata accessor for SmallLockupCollectionViewCell();
  v15 = type metadata accessor for SmallLockupCollectionViewCell;
  sub_1002CC464(&qword_100950AC0, type metadata accessor for SmallLockupCollectionViewCell);
  sub_1002CC464(&qword_100950AC8, type metadata accessor for SmallLockupCollectionViewCell);
  v16 = &qword_10094AB98;
LABEL_26:
  sub_1002CC464(v16, v15);
  return v14;
}

uint64_t sub_1002CBF40(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v2 = sub_10076469C();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946720);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.todayCard(_:))
  {
    if (v13 != enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        sub_10076C84C();
        sub_1002CC464(&qword_100947150, &type metadata accessor for TodayCard);
        if ((sub_10076334C() & 1) == 0)
        {
          goto LABEL_14;
        }

        v16 = sub_100369728();
      }

      else
      {
        if (v13 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          goto LABEL_14;
        }

        v16 = sub_10041A050();
      }

      v15 = v16;
      goto LABEL_17;
    }

    sub_10076C84C();
    sub_1002CC464(&qword_100947150, &type metadata accessor for TodayCard);
    if (sub_10076334C())
    {
      sub_10076332C();
      v15 = sub_1003DF554(v21, 4);

      goto LABEL_17;
    }

LABEL_14:
    sub_1007632FC();
    v15 = sub_1002C8704();
    (*(v19 + 8))(v4, v20);
    goto LABEL_17;
  }

  sub_10076C84C();
  sub_1002CC464(&qword_100947150, &type metadata accessor for TodayCard);
  if ((sub_10076334C() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for TodayCardGridTracker();
  sub_10076F5AC();
  if (v21)
  {

    v14 = sub_1003B1704();
  }

  else
  {
    v14 = 7;
  }

  sub_10076332C();
  v15 = sub_1003DF554(v21, v14);

LABEL_17:
  (*(v6 + 8))(v8, v5);
  return v15;
}

uint64_t sub_1002CC464(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 ProductLockupLayout.init(metrics:iconView:titleLabel:developerLabel:taglineLabel:tertiaryTitleLabel:shareButton:offerButton:offerSubtitleLabel:expandedOfferTitleLabel:expandedOfferSubtitleLabel:hasExpandedOffer:offerSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1002CD0CC(a1, a9, type metadata accessor for ProductLockupLayout.Metrics);
  v23 = type metadata accessor for ProductLockupLayout(0);
  sub_100012498(a2, a9 + v23[5]);
  sub_100012498(a3, a9 + v23[6]);
  sub_100012498(a4, a9 + v23[7]);
  sub_100012498(a5, a9 + v23[8]);
  v24 = a9 + v23[9];
  v25 = *(a6 + 16);
  *v24 = *a6;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a6 + 32);
  v26 = a9 + v23[10];
  v27 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a7 + 32);
  sub_100012498(a8, a9 + v23[11]);
  sub_100012498(a10, a9 + v23[12]);
  v28 = a9 + v23[13];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a11 + 32);
  v30 = a9 + v23[14];
  v31 = *(a12 + 16);
  *v30 = *a12;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a12 + 32);
  *(a9 + v23[15]) = a13;
  v32 = (a9 + v23[16]);
  *v32 = a14;
  v32[1] = a15;
  v33 = a9 + v23[17];
  *(v33 + 32) = *(a16 + 32);
  v34 = *(a16 + 16);
  *v33 = *a16;
  *(v33 + 16) = v34;
  v35 = a9 + v23[18];
  *(v35 + 32) = *(a17 + 32);
  result = *(a17 + 16);
  *v35 = *a17;
  *(v35 + 16) = result;
  return result;
}

uint64_t ProductLockupLayout.offerSubtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProductLockupLayout(0) + 64));

  return v1;
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10000A5D4(&unk_100950EE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10000A5D4(&unk_100950EE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.maxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 24);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.leadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:iconHorizontalMargin:titleSpace:titleFont:titleMaxNumberOfLines:subtitleSpace:subtitleFont:subtitleMaxNumberOfLines:tertiaryTitleSpace:tertiaryTitleFont:tertiaryTitleMaxNumberOfLines:offerTopSpace:offerSubtitleMetrics:shareButtonLeadingMargin:expandedOfferSubtitleSpace:expandedOfferHorizontalMargin:compactExpandedOfferShareButtonTopSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, __int128 *a25, __int128 *a26)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100012498(a1, (a9 + 4));
  sub_100012498(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = v33[8];
  v35 = sub_10000A5D4(&unk_100945BD0);
  v44 = *(*(v35 - 8) + 32);
  v44(a9 + v34, a3, v35);
  v44(a9 + v33[9], a4, v35);
  v36 = v33[10];
  v37 = sub_10000A5D4(&unk_100950EE0);
  v43 = *(*(v37 - 8) + 32);
  v43(a9 + v36, a5, v37);
  v38 = v33[11];
  v39 = sub_10000A5D4(&unk_10094C370);
  v40 = *(*(v39 - 8) + 32);
  v40(a9 + v38, a6, v39);
  v44(a9 + v33[12], a7, v35);
  v43(a9 + v33[13], a8, v37);
  v40(a9 + v33[14], a16, v39);
  v44(a9 + v33[15], a17, v35);
  v43(a9 + v33[16], a18, v37);
  v40(a9 + v33[17], a19, v39);
  sub_100012498(a20, a9 + v33[18]);
  sub_1002CD0CC(a21, a9 + v33[19], type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_100012498(a22, a9 + v33[20]);
  sub_100012498(a23, a9 + v33[21]);
  v44(a9 + v33[22], a24, v35);
  sub_100012498(a25, a9 + v33[23]);
  v41 = a9 + v33[24];

  return sub_100012498(a26, v41);
}

uint64_t sub_1002CD0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void ShelfHeaderLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 32);

  return sub_100012498(a1, v1 + 32);
}

uint64_t TodayCardLockupLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 72);

  return sub_100012498(a1, v1 + 72);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100950EE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 44);
  v4 = sub_10000A5D4(&unk_10094C370);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 52);
  v4 = sub_10000A5D4(&unk_100950EE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10000A5D4(&unk_10094C370);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10000A5D4(&unk_10094C370);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 64);
  v4 = sub_10000A5D4(&unk_100950EE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10000A5D4(&unk_10094C370);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10000A5D4(&unk_10094C370);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 72);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t sub_1002CDDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ProductLockupLayout.Metrics.offerSubtitleMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);

  return sub_1002CDE88(a1, v3);
}

uint64_t sub_1002CDE88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProductLockupLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.compactExpandedOfferShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 96);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

double ProductLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_1002D2C70(a1, v3, ObjectType, a2, a3);
}

uint64_t ProductLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v260 = a6;
  v261 = a3;
  v242 = a2;
  v13 = sub_10077164C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78((*&v6 + 32), *(*&v6 + 56));
  sub_1000FF02C();
  sub_10076D40C();
  v18 = v17;
  v21 = *(v14 + 8);
  v19 = v14 + 8;
  v20 = v21;
  v21(v16, v13);
  sub_10000CF78((*&v7 + 72), *(*&v7 + 96));
  sub_1000FF02C();
  sub_10076D40C();
  v23 = v22;
  v259 = v13;
  v21(v16, v13);
  v24 = **&v6;
  v25 = *(*&v6 + 8);
  v231 = v18;
  v232 = v23;
  v26 = sub_100102A30(a3, a4, a5, a6, v18 + v24, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *(*&v6 + 112);
  v33 = *(*&v6 + 120);
  *&v35 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  sub_10000CF78((*&v7 + v35[5]), *(*&v7 + v35[5] + 24));
  v257 = a4;
  v256 = a5;
  sub_100770A4C();
  sub_10076D23C();
  v278.origin.x = v26;
  v278.origin.y = v28;
  v278.size.width = v34;
  v243 = v33;
  v278.size.height = v33;
  MaxX = CGRectGetMaxX(v278);
  v36 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v272 = a1;
  v37 = sub_10000A5D4(&unk_100945BD0);
  sub_10075FDCC();
  v38 = v275;
  v279.origin.x = v26;
  v279.origin.y = v28;
  v279.size.width = v30;
  v279.size.height = v32;
  MinY = CGRectGetMinY(v279);
  v280.origin.x = v26;
  v280.origin.y = v28;
  v280.size.width = v30;
  v280.size.height = v32;
  Width = CGRectGetWidth(v280);
  *&v272 = a1;
  *&v240 = v37;
  sub_10075FDCC();
  v244 = v34;
  v40 = v34 + v275;
  v266 = v26;
  v281.origin.x = v26;
  v267 = v28;
  v281.origin.y = v28;
  v281.size.width = v30;
  v281.size.height = v32;
  Height = CGRectGetHeight(v281);
  v250 = v35[10];
  sub_100016E2C(*&v6 + v250, &v275, &unk_10094DA00);
  v263 = v30;
  if (v276)
  {
    sub_10000CF78(&v275, v276);
    sub_10076D2BC();
    v252 = v41;
    v228 = v42;
    sub_10000CD74(&v275);
  }

  else
  {
    sub_10000CFBC(&v275, &unk_10094DA00);
    v252 = 0.0;
    v228 = 0.0;
  }

  v43 = v32;
  v44 = MaxX + v38;
  v45 = Width - v40;
  sub_100016E2C(*&v6 + v250, &v275, &unk_10094DA00);
  v46 = v276;
  sub_10000CFBC(&v275, &unk_10094DA00);
  v47 = 0.0;
  if (v46)
  {
    sub_10000CF78((*&v6 + *(v36 + 80)), *(*&v6 + *(v36 + 80) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v47 = v48;
    v20(v16, v259);
  }

  v248 = v36;
  v49 = (*&v6 + v35[11]);
  v50 = v49[3];
  v241 = v49;
  sub_10000CF78(v49, v50);
  v282.origin.x = v44;
  v282.origin.y = MinY;
  v282.size.width = v45;
  v282.size.height = Height;
  CGRectGetWidth(v282);
  v265 = v45;
  v51 = v266;
  v283.origin.x = v266;
  v52 = v267;
  v283.origin.y = v267;
  v283.size.width = v263;
  v255 = v47;
  v53 = v263;
  v283.size.height = v43;
  CGRectGetHeight(v283);
  sub_10076D2BC();
  v55 = v54;
  v251 = v56;
  v284.origin.x = v51;
  v284.origin.y = v52;
  v284.size.width = v53;
  v284.size.height = v43;
  v262 = v43;
  CGRectGetWidth(v284);
  v57 = *&v6 + *(v36 + 76);
  v58 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v59 = (v57 + *(v58 + 28));
  v60 = v59[3];
  v226 = v59;
  sub_10000CF78(v59, v60);
  MaxX = v7;
  v61 = v35;
  v62 = a1;
  v63 = v20;
  sub_1000FF02C();
  sub_10076D40C();
  v64 = v259;
  v63(v16, v259);
  v245 = v55;
  v65 = v44;
  v66 = v252;
  v67 = (v57 + *(v58 + 24));
  v68 = v67[3];
  v224 = v67;
  sub_10000CF78(v67, v68);
  sub_1000FF02C();
  sub_10076D40C();
  v246 = v16;
  v247 = v19;
  v253 = v63;
  v63(v16, v64);
  v69 = v62;
  v70 = (*&MaxX + v61[12]);
  v71 = v70[3];
  v227 = v70;
  sub_10000CF78(v70, v71);
  v285.origin.x = v51;
  v72 = v52;
  v285.origin.y = v52;
  v73 = v263;
  v285.size.width = v263;
  v285.size.height = v43;
  CGRectGetHeight(v285);
  sub_10076D2AC();
  v239 = v74;
  v75 = [v62 traitCollection];
  LOBYTE(v71) = sub_1007706EC();

  v286.origin.x = v65;
  v76 = v65;
  v258 = v65;
  v77 = MinY;
  v286.origin.y = MinY;
  v286.size.width = v265;
  v78 = Height;
  v286.size.height = Height;
  v79 = CGRectGetWidth(v286);
  if (v71)
  {
    v80 = v79;
  }

  else
  {
    v80 = v79 - v66 - v255;
  }

  v238 = v80;
  v81 = (*&MaxX + v61[6]);
  sub_10000CF78(v81, v81[3]);
  v287.origin.x = v51;
  v287.origin.y = v72;
  v287.size.width = v73;
  v82 = v262;
  v287.size.height = v262;
  CGRectGetHeight(v287);
  sub_10076D2AC();
  v255 = v83;
  v236 = v84;
  v86 = v85;
  v249 = v85;
  v254 = v87;
  v88 = v248;
  *&v272 = v69;
  sub_10075FDCC();
  v89 = v51;
  v90 = v275;
  v288.origin.x = v76;
  v288.origin.y = v77;
  v288.size.width = v265;
  v288.size.height = v78;
  MinX = CGRectGetMinX(v288);
  v289.origin.x = v89;
  v91 = v267;
  v289.origin.y = v267;
  v289.size.width = v73;
  v289.size.height = v82;
  v92 = CGRectGetMinY(v289);
  if (v90 - v86 > 0.0)
  {
    v93 = v90 - v86;
  }

  else
  {
    v93 = 0.0;
  }

  sub_10000CF78(v81, v81[3]);
  sub_10076D6EC();
  if (v255 >= v238)
  {
    v95 = v238;
  }

  else
  {
    v95 = v255;
  }

  v96 = v92 + v93 + v94;
  v290.origin.x = MinX;
  v290.origin.y = v96;
  v290.size.width = v95;
  v97 = v236;
  v290.size.height = v236;
  v237 = CGRectGetMaxY(v290) - v254;
  sub_10000CF78(v81, v81[3]);
  v98 = v91;
  sub_100770A4C();
  sub_10076D23C();
  v225 = v81;
  sub_10000A570(v81, &v275);
  *&v272 = v69;
  sub_10000A5D4(&unk_10094C370);
  sub_10075FDCC();
  *&v238 = v61[9];
  sub_100016E2C(*&MaxX + *&v238, &v272, &qword_10094BB30);
  sub_10000CFBC(&v272, &qword_10094BB30);
  sub_10000CF78(&v275, v276);
  v291.var0 = v255;
  v291.var1 = v97;
  v291.var2 = v249;
  v291.var3 = v254;
  sub_10076D71C(v291);
  sub_10000CD74(&v275);
  v99 = (*&MaxX + v61[7]);
  sub_10000CF78(v99, v99[3]);
  sub_10076D6DC();
  v249 = *&v61;
  v100 = v61[8];
  v101 = *&MaxX;
  v102 = (*&MaxX + v100);
  sub_10000CF78((*&MaxX + v100), *(*&MaxX + v100 + 24));
  sub_10076D6DC();
  *&v272 = v69;
  sub_10075FDCC();
  v103 = v275;
  sub_10000CF78(v99, v99[3]);
  v104 = v258;
  v292.origin.x = v258;
  v105 = MinY;
  v292.origin.y = MinY;
  v106 = v265;
  v292.size.width = v265;
  v107 = Height;
  v292.size.height = Height;
  CGRectGetWidth(v292);
  v293.origin.x = v266;
  v293.origin.y = v98;
  v108 = v263;
  v293.size.width = v263;
  v293.size.height = v262;
  CGRectGetHeight(v293);
  sub_10076D2AC();
  v110 = v109;
  v236 = v111;
  v113 = v112;
  v230 = v114;
  v294.origin.x = v104;
  v294.origin.y = v105;
  v294.size.width = v106;
  v294.size.height = v107;
  MinX = CGRectGetMinX(v294);
  v295.origin.x = v104;
  v295.origin.y = v105;
  v295.size.width = v106;
  v295.size.height = v107;
  v115 = CGRectGetWidth(v295);
  if (v110 < v115)
  {
    v115 = v110;
  }

  v255 = v115;
  v116 = v237 + v103;
  v254 = v237 + v103 - v113;
  sub_10000CF78(v102, v102[3]);
  v296.origin.x = v104;
  v296.origin.y = v105;
  v296.size.width = v106;
  v296.size.height = v107;
  CGRectGetWidth(v296);
  v297.origin.x = v266;
  v297.origin.y = v267;
  v297.size.width = v108;
  v297.size.height = v262;
  CGRectGetHeight(v297);
  sub_10076D2AC();
  v118 = v117;
  v237 = v119;
  v121 = v120;
  v229 = v122;
  v298.origin.x = v104;
  v298.origin.y = v105;
  v298.size.width = v106;
  v298.size.height = v107;
  v234 = CGRectGetMinX(v298);
  v299.origin.x = v104;
  v299.origin.y = v105;
  v299.size.width = v106;
  v299.size.height = v107;
  v123 = CGRectGetWidth(v299);
  if (v118 >= v123)
  {
    v118 = v123;
  }

  v124 = v116 - v121;
  sub_10000CF78(v99, v99[3]);
  v125 = MinX;
  v126 = v236;
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78(v102, v102[3]);
  v127 = v234;
  v233 = v124;
  v128 = v237;
  sub_100770A4C();
  sub_10076D23C();
  v300.origin.x = v127;
  v129 = v127;
  v300.origin.y = v124;
  v300.size.width = v118;
  v300.size.height = v128;
  v130 = v128;
  MaxY = CGRectGetMaxY(v300);
  v132 = v125;
  v301.origin.x = v125;
  v133 = v254;
  v301.origin.y = v254;
  v134 = v255;
  v301.size.width = v255;
  v301.size.height = v126;
  v135 = CGRectGetMaxY(v301) < MaxY;
  v136 = v129;
  if (v135)
  {
    v137 = v129;
  }

  else
  {
    v137 = v132;
  }

  v138 = v233;
  if (v135)
  {
    v139 = v233;
  }

  else
  {
    v139 = v133;
  }

  v140 = v118;
  if (!v135)
  {
    v118 = v134;
  }

  v141 = v130;
  if (!v135)
  {
    v130 = v126;
  }

  v237 = CGRectGetMaxY(*&v136);
  v302.origin.x = v132;
  v302.origin.y = v133;
  v302.size.width = v134;
  v302.size.height = v126;
  v142 = CGRectGetMaxY(v302);
  v303.origin.x = v137;
  v303.origin.y = v139;
  v303.size.width = v118;
  v303.size.height = v130;
  v143 = CGRectGetMaxY(v303);
  sub_100016E2C(v101 + *&v238, &v272, &qword_10094BB30);
  if (v273)
  {
    v144 = v230;
    if (v142 < v237)
    {
      v144 = v229;
    }

    v255 = v143 - v144;
    sub_100012498(&v272, &v275);
    *&v270 = v69;
    sub_10075FDCC();
    v254 = *&v272;
    sub_10000CF78(&v275, v276);
    v145 = v258;
    v304.origin.x = v258;
    v146 = MinY;
    v304.origin.y = MinY;
    v147 = v265;
    v304.size.width = v265;
    v148 = Height;
    v304.size.height = Height;
    CGRectGetWidth(v304);
    v305.origin.x = v266;
    v305.origin.y = v267;
    v305.size.width = v263;
    v305.size.height = v262;
    CGRectGetHeight(v305);
    sub_10076D2AC();
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v306.origin.x = v145;
    v306.origin.y = v146;
    v306.size.width = v147;
    v306.size.height = v148;
    v155 = CGRectGetMinX(v306);
    v307.origin.x = v145;
    v307.origin.y = v146;
    v307.size.width = v147;
    v307.size.height = v148;
    v156 = CGRectGetWidth(v307);
    if (v150 >= v156)
    {
      v150 = v156;
    }

    v157 = v255 + v254 - v154;
    sub_10000CF78(&v275, v276);
    sub_100770A4C();
    sub_10076D23C();
    v308.origin.x = v155;
    v308.origin.y = v157;
    v308.size.width = v150;
    v308.size.height = v152;
    v158 = CGRectGetMaxY(v308);
    v309.origin.x = v155;
    v309.origin.y = v157;
    v309.size.width = v150;
    v309.size.height = v152;
    CGRectGetMaxY(v309);
    sub_10000CD74(&v275);
    v159 = v88;
  }

  else
  {
    sub_10000CFBC(&v272, &qword_10094BB30);
    v159 = v88;
    v158 = v143;
  }

  v160 = v241;
  sub_10000CF78(v241, v241[3]);
  v161 = sub_10076D24C();
  v310.origin.x = v266;
  v310.origin.y = v267;
  v310.size.width = v244;
  v310.size.height = v243;
  v162 = CGRectGetMaxY(v310);
  v163 = v239;
  if ((v161 & 1) == 0)
  {
    v163 = v251;
  }

  v164 = v162 - v163;
  sub_10000CF78((v101 + *(v159 + 72)), *(v101 + *(v159 + 72) + 24));
  v165 = v246;
  sub_1000FF02C();
  sub_10076D40C();
  v167 = v166;
  v253(v165, v259);
  v240 = v158;
  v168 = v158 + v167;
  v311.origin.x = v258;
  v169 = MinY;
  v311.origin.y = MinY;
  v311.size.width = v265;
  v311.size.height = Height;
  v170 = CGRectGetMinX(v311);
  if (v164 <= v168)
  {
    v164 = v168;
  }

  sub_10000CF78(v160, v160[3]);
  v171 = v261;
  v172 = v260;
  v254 = v170;
  v255 = v164;
  v173 = v245;
  sub_100770A4C();
  sub_10076D23C();
  v174 = *&v249;
  if (*(v101 + *(*&v249 + 60)) == 1)
  {
    v175 = *(*&v249 + 52);
    sub_100016E2C(v101 + v175, &v272, &qword_10094BB30);
    if (v273)
    {
      sub_100012498(&v272, &v275);
      sub_100016E2C(v101 + v174[14], &v270, &qword_10094BB30);
      v176 = v172;
      v177 = v257;
      if (v271)
      {
        v178 = v159;
        sub_100012498(&v270, &v272);
        v179 = [v69 traitCollection];
        v180 = sub_1007706EC();

        v181 = v276;
        v182 = v277;
        v183 = sub_10000CF78(&v275, v276);
        v184 = v273;
        v185 = v274;
        v186 = sub_10000CF78(&v272, v273);
        v187 = *(v182 + 8);
        v188 = *(v185 + 8);
        if (v180)
        {
          sub_1002D1C1C(v266, v267, v244, v243, v252, v228, v254, v255, v183, v186, v69, v101, v181, v184, v187, v188, v173, v251, v240, v266, v267, v263, v262);
        }

        else
        {
          sub_1002D4A54(v252, v228, v254, v255, v173, v251, v266, v267, v183, v186, v69, v101, v181, v184, v187, v188, *&v263, *&v262, v258, v169, v265, Height);
        }

        sub_10000CD74(&v272);
        sub_10000CD74(&v275);
        v174 = *&v249;
        v159 = v178;
        goto LABEL_67;
      }

      sub_10000CFBC(&v270, &qword_10094BB30);
      sub_10000CD74(&v275);
    }

    else
    {
      sub_10000CFBC(&v272, &qword_10094BB30);
      v176 = v172;
      v177 = v257;
    }

    sub_100016E2C(v101 + v175, &v275, &qword_10094BB30);
    v201 = v256;
    if (v276)
    {
      sub_10000CF78(&v275, v276);
      sub_10076D23C();
      sub_10000CD74(&v275);
    }

    else
    {
      sub_10000CFBC(&v275, &qword_10094BB30);
    }

    sub_100016E2C(v101 + v174[14], &v275, &qword_10094BB30);
    if (v276)
    {
      sub_10000CF78(&v275, v276);
LABEL_81:
      sub_10076D23C();
      sub_10000CD74(&v275);
      goto LABEL_84;
    }

    v204 = &qword_10094BB30;
    v205 = &v275;
  }

  else
  {
    sub_100016E2C(v101 + *(*&v249 + 52), &v275, &qword_10094BB30);
    if (v276)
    {
      sub_10000CF78(&v275, v276);
      sub_10076D23C();
      sub_10000CD74(&v275);
    }

    else
    {
      sub_10000CFBC(&v275, &qword_10094BB30);
    }

    v189 = *&v263;
    v176 = v172;
    v177 = v257;
    sub_100016E2C(v101 + v174[14], &v275, &qword_10094BB30);
    if (v276)
    {
      sub_10000CF78(&v275, v276);
      sub_10076D23C();
      sub_10000CD74(&v275);
    }

    else
    {
      sub_10000CFBC(&v275, &qword_10094BB30);
    }

    v190 = Height;
    v191 = [v69 traitCollection];
    v192 = sub_1007706EC();

    if (v192)
    {
      sub_1002D0434(v69, v254, v255, v173, v251, v252, v228, v266, v267, v193, v194, v195, v196, v197, v198, v199, v189, *&v262, v258, v169, v265, v190);
LABEL_67:
      v201 = v256;
      goto LABEL_84;
    }

    v200 = v227;
    sub_10000CF78(v227, v227[3]);
    if (sub_10076D24C())
    {
      sub_10000CF78(v200, v200[3]);
      sub_10076D23C();
      v159 = v248;
      v201 = v256;
    }

    else
    {
      sub_100016E2C(v101 + v250, &v275, &unk_10094DA00);
      v202 = v276;
      sub_10000CFBC(&v275, &unk_10094DA00);
      if (v202)
      {
        sub_10000CF78((v101 + *(v248 + 80)), *(v101 + *(v248 + 80) + 24));
        sub_1000FF02C();
        sub_10076D40C();
        v244 = v203;
        v253(v165, v259);
      }

      else
      {
        v244 = 0.0;
      }

      v206 = v265;
      v207 = v254;
      sub_100016E2C(v101 + v250, &v275, &unk_10094DA00);
      if (v276)
      {
        sub_10000CF78(&v275, v276);
        sub_10076D2BC();
        sub_10000CD74(&v275);
      }

      else
      {
        sub_10000CFBC(&v275, &unk_10094DA00);
      }

      v312.origin.x = v258;
      v312.origin.y = v169;
      v312.size.width = v206;
      v312.size.height = v190;
      CGRectGetWidth(v312);
      v313.origin.x = v207;
      v208 = v255;
      v313.origin.y = v255;
      v313.size.width = v173;
      v209 = v251;
      v313.size.height = v251;
      CGRectGetWidth(v313);
      sub_10000CF78(v226, v226[3]);
      sub_1000FF02C();
      sub_10076D40C();
      v210 = v165;
      v211 = v259;
      v212 = v165;
      v213 = v253;
      v253(v210, v259);
      v214 = v254;
      v215 = v173;
      sub_10000CF78(v224, v224[3]);
      sub_1000FF02C();
      sub_10076D40C();
      v213(v212, v211);
      sub_10000CF78(v227, v227[3]);
      sub_10076D2AC();
      v217 = v216;
      v314.origin.x = v214;
      v314.origin.y = v208;
      v314.size.width = v215;
      v314.size.height = v209;
      CGRectGetMidY(v314);
      sub_10000CF78(v160, v160[3]);
      if ((sub_10076D24C() & 1) != 0 || (v315.origin.x = v214, v315.origin.y = v208, v315.size.width = v215, v315.size.height = v209, CGRectGetHeight(v315) < v217))
      {
        v316.origin.x = v214;
        v316.origin.y = v208;
        v316.size.width = v215;
        v316.size.height = v209;
        CGRectGetMinY(v316);
      }

      v201 = v256;
      sub_10000CF78(v160, v160[3]);
      v218 = sub_10076D24C();
      v165 = v246;
      v159 = v248;
      v219 = v214;
      v220 = v255;
      v221 = v245;
      v222 = v209;
      if (v218)
      {
        CGRectGetMinX(*&v219);
      }

      else
      {
        CGRectGetMaxX(*&v219);
        sub_10000CF78(v226, v226[3]);
        sub_1000FF02C();
        sub_10076D40C();
        v253(v165, v259);
      }

      v177 = v257;
      sub_10000CF78(v227, v227[3]);
      sub_100770A4C();
      sub_10076D23C();
      v171 = v261;
      v169 = MinY;
      v190 = Height;
    }

    sub_100016E2C(v101 + v250, &v272, &unk_10094DA00);
    v174 = *&v249;
    if (v273)
    {
      sub_100012498(&v272, &v275);
      sub_10000CF78(v225, v225[3]);
      sub_10076D22C();
      CGRectGetMidY(v317);
      v318.size.height = v190;
      v318.origin.x = v258;
      v318.origin.y = v169;
      v318.size.width = v265;
      CGRectGetMaxX(v318);
      sub_10000CF78(&v275, v276);
      sub_100770A4C();
      goto LABEL_81;
    }

    v204 = &unk_10094DA00;
    v205 = &v272;
  }

  sub_10000CFBC(v205, v204);
LABEL_84:
  sub_100016E2C(v101 + v174[17], &v272, &unk_10094DA00);
  if (v273)
  {
    sub_100012498(&v272, &v275);
    sub_10000CF78(&v275, v276);
    v319.origin.x = v171;
    v319.origin.y = v177;
    v319.size.width = v201;
    v319.size.height = v176;
    CGRectGetMinX(v319);
    v320.origin.x = v171;
    v320.origin.y = v177;
    v320.size.width = v201;
    v320.size.height = v176;
    CGRectGetMinY(v320);
    v321.origin.x = v171;
    v321.origin.y = v177;
    v321.size.width = v201;
    v321.size.height = v176;
    CGRectGetWidth(v321);
    sub_10076D23C();
    sub_10000CD74(&v275);
  }

  else
  {
    sub_10000CFBC(&v272, &unk_10094DA00);
  }

  sub_100016E2C(v101 + v174[18], &v272, &unk_10094DA00);
  if (v273)
  {
    sub_100012498(&v272, &v275);
    sub_10000CF78(&v275, v276);
    v322.origin.x = v171;
    v322.origin.y = v177;
    v322.size.width = v201;
    v322.size.height = v176;
    CGRectGetMinX(v322);
    v323.origin.x = v171;
    v323.origin.y = v177;
    v323.size.width = v201;
    v323.size.height = v176;
    CGRectGetMaxY(v323);
    sub_10000CF78((v101 + *(v159 + 96)), *(v101 + *(v159 + 96) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v253(v165, v259);
    v324.origin.x = v171;
    v324.origin.y = v177;
    v324.size.width = v201;
    v324.size.height = v176;
    CGRectGetWidth(v324);
    sub_10076D23C();
    sub_10000CD74(&v275);
  }

  else
  {
    sub_10000CFBC(&v272, &unk_10094DA00);
  }

  return sub_10076D1BC();
}

uint64_t sub_1002D0434(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CGFloat a19, double a20, CGFloat a21, CGFloat a22)
{
  v23 = v22;
  v169 = a9;
  v168 = a8;
  v164 = a7;
  v174 = a2;
  v29 = a21;
  v30 = a22;
  v173 = a20;
  v31 = a19;
  v179 = sub_10076997C();
  v32 = *(v179 - 8);
  __chkstk_darwin(v179);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v178 = &v145 - v36;
  v176 = sub_10075D78C();
  v151 = *(v176 - 1);
  __chkstk_darwin(v176);
  v150 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10077164C();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ProductLockupLayout(0);
  v171 = *(v177 + 40);
  sub_100016E2C(v22 + v171, v182, &unk_10094DA00);
  v42 = v183;
  sub_10000CFBC(v182, &unk_10094DA00);
  v147 = v34;
  v175 = v32;
  if (v42)
  {
    v43 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10000CF78((v22 + *(v43 + 80)), *(v22 + *(v43 + 80) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v153 = v44;
    (*(v39 + 8))(v41, v38);
  }

  else
  {
    v153 = 0.0;
  }

  v166 = a18;
  v165 = a17;
  v185.origin.x = a19;
  v45 = v173;
  v185.origin.y = v173;
  v185.size.width = a21;
  v185.size.height = a22;
  Width = CGRectGetWidth(v185);
  v186.origin.x = v174;
  v186.origin.y = a3;
  v167 = a4;
  v186.size.width = a4;
  v172 = a5;
  v186.size.height = a5;
  v46 = CGRectGetWidth(v186);
  v148 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v47 = (v22 + *(v148 + 76));
  v48 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v49 = (v47 + *(v48 + 28));
  v50 = v49[3];
  v154 = v49;
  sub_10000CF78(v49, v50);
  sub_1000FF02C();
  sub_10076D40C();
  v52 = v51;
  v53 = *(v39 + 8);
  v159 = v41;
  v160 = v39 + 8;
  v158 = v53;
  v53(v41, v38);
  v54 = v177;
  v55 = (v22 + *(v177 + 64));
  v56 = *(v55 + 1);
  v163 = *v55;
  v149 = v48;
  v182[0] = a1;
  sub_10000A5D4(&unk_100950EE0);
  v157 = v47;
  v57 = v56;
  sub_10075FDCC();
  v58 = v180;
  v59 = *(v22 + *(v54 + 60));
  v60 = (v22 + *(v54 + 44));
  v61 = v60[3];
  v170 = v60;
  sub_10000CF78(v60, v61);
  v62 = sub_10076D24C();
  v187.origin.x = a19;
  v187.origin.y = v45;
  v187.size.width = a21;
  v187.size.height = a22;
  CGRectGetWidth(v187);
  if (v57 == 0.0)
  {

    v65 = v172;
    v66 = v177;
    goto LABEL_21;
  }

  v63 = a6;
  v155 = a22;
  v156 = a21;
  v161 = a19;
  v162 = a3;
  v146 = v38;
  if (v62)
  {

    v64 = 0;
    v65 = v172;
LABEL_19:
    v80 = v177;
LABEL_20:
    v110 = (v23 + *(v80 + 48));
    v66 = v80;
    sub_10000CF78(v110, v110[3]);
    if ((sub_10076D24C() & 1) == 0)
    {
      v145 = v63;
      if (v64)
      {
        v112 = v174;
        sub_10000CF78(v110, v110[3]);
        sub_10076D2AC();
        v114 = v113;
        sub_10000CF78(v157, v157[3]);
        v179 = v114;
        sub_10076D42C();
        v189.origin.x = v112;
        v189.origin.y = a3;
        v115 = v167;
        v189.size.width = v167;
        v189.size.height = v65;
        CGRectGetMinX(v189);
        v190.origin.x = v112;
        v190.origin.y = a3;
        v190.size.width = v115;
        v190.size.height = v65;
        CGRectGetWidth(v190);
        sub_10000CF78(v170, v170[3]);
        v116 = sub_10076D24C();
        v117 = v112;
        v118 = a3;
        v119 = v115;
        v120 = v65;
        if (v116)
        {
          CGRectGetMinY(*&v117);
        }

        else
        {
          CGRectGetMaxY(*&v117);
        }

        v29 = v156;
        v111 = v171;
      }

      else
      {
        v121 = v171;
        sub_100016E2C(v23 + v171, v182, &unk_10094DA00);
        v122 = v183;
        sub_10000CFBC(v182, &unk_10094DA00);
        if (v122)
        {
          sub_10000CF78((v23 + *(v148 + 80)), *(v23 + *(v148 + 80) + 24));
          v123 = v159;
          sub_1000FF02C();
          sub_10076D40C();
          v179 = v124;
          v158(v123, v146);
        }

        else
        {
          v179 = 0;
        }

        sub_100016E2C(v23 + v121, v182, &unk_10094DA00);
        if (v183)
        {
          sub_10000CF78(v182, v183);
          sub_10076D2BC();
          v178 = v125;
          sub_10000CD74(v182);
        }

        else
        {
          sub_10000CFBC(v182, &unk_10094DA00);
          v178 = 0;
        }

        v191.origin.x = v161;
        v191.origin.y = v173;
        v191.size.width = v29;
        v191.size.height = v30;
        CGRectGetWidth(v191);
        v126 = v174;
        v192.origin.x = v174;
        v192.origin.y = a3;
        v127 = v167;
        v192.size.width = v167;
        v128 = v172;
        v192.size.height = v172;
        CGRectGetWidth(v192);
        sub_10000CF78(v154, v154[3]);
        v129 = v159;
        sub_1000FF02C();
        sub_10076D40C();
        v130 = a3;
        v131 = v146;
        v132 = v158;
        v158(v129, v146);
        v133 = v128;
        sub_10000CF78((v157 + *(v149 + 24)), *(v157 + *(v149 + 24) + 24));
        sub_1000FF02C();
        sub_10076D40C();
        v134 = v129;
        v135 = v131;
        v132(v134, v131);
        sub_10000CF78(v110, v110[3]);
        sub_10076D2AC();
        v137 = v136;
        v193.origin.x = v126;
        v193.origin.y = v130;
        v193.size.width = v127;
        v193.size.height = v133;
        CGRectGetMidY(v193);
        sub_10000CF78(v170, v170[3]);
        if ((sub_10076D24C() & 1) != 0 || (v194.origin.x = v126, v194.origin.y = v130, v194.size.width = v127, v194.size.height = v133, CGRectGetHeight(v194) < v137))
        {
          v138 = v126;
          v195.origin.x = v126;
          v195.origin.y = v130;
          v195.size.width = v127;
          v195.size.height = v133;
          CGRectGetMinY(v195);
        }

        else
        {
          v138 = v126;
        }

        sub_10000CF78(v170, v170[3]);
        v139 = sub_10076D24C();
        v111 = v171;
        v140 = v138;
        v141 = v162;
        v142 = v127;
        v143 = v172;
        if (v139)
        {
          CGRectGetMinX(*&v140);
        }

        else
        {
          CGRectGetMaxX(*&v140);
          sub_10000CF78(v154, v154[3]);
          v144 = v159;
          sub_1000FF02C();
          sub_10076D40C();
          v158(v144, v135);
        }

        v29 = v156;
      }

      sub_10000CF78(v110, v110[3]);
      sub_100770A4C();
      sub_10076D23C();
      v30 = v155;
      v31 = v161;
      v65 = v172;
      a3 = v162;
      goto LABEL_44;
    }

LABEL_21:
    sub_10000CF78((v23 + *(v66 + 48)), *(v23 + *(v66 + 48) + 24));
    sub_10076D23C();
    v111 = v171;
LABEL_44:
    sub_100016E2C(v23 + v111, &v180, &unk_10094DA00);
    if (!v181)
    {
      return sub_10000CFBC(&v180, &unk_10094DA00);
    }

    sub_100012498(&v180, v182);
    sub_10000CF78(v170, v170[3]);
    if (sub_10076D24C())
    {
      v196.origin.x = v174;
      v196.origin.y = a3;
      v196.size.width = v167;
      v196.size.height = v65;
      CGRectGetMinY(v196);
    }

    else
    {
      v197.origin.x = v174;
      v197.origin.y = a3;
      v197.size.width = v167;
      v197.size.height = v65;
      CGRectGetMidY(v197);
    }

    v198.origin.x = v31;
    v198.origin.y = v173;
    v198.size.width = v29;
    v198.size.height = v30;
    CGRectGetMaxX(v198);
    sub_10000CF78(v182, v183);
    sub_100770A4C();
    sub_10076D23C();
    return sub_10000CD74(v182);
  }

  v67 = v46;
  v68 = v63;
  v69 = objc_opt_self();

  v70 = [v69 mainScreen];
  [v70 bounds];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;

  v188.origin.x = v72;
  v188.origin.y = v74;
  v188.size.width = v76;
  v188.size.height = v78;
  v79 = CGRectGetWidth(v188);
  JUScreenClassGetPortraitWidth();
  v80 = v177;
  if (v79 <= v81)
  {
    v82 = v150;
    sub_10075D77C();
    v182[0] = v163;
    *&v182[1] = v57;
    sub_10002564C();
    sub_1007711EC();
    v84 = v83;
    (*(v151 + 8))(v82, v176);
    if ((v84 & 1) == 0)
    {

      v64 = 1;
      v63 = v68;
      v30 = v155;
      v29 = v156;
      v31 = v161;
      v65 = v172;
      a3 = v162;
      goto LABEL_20;
    }
  }

  v63 = v68;
  v29 = v156;
  a3 = v162;
  if (v59)
  {
    v85 = [a1 traitCollection];
    v86 = sub_1007706FC();

    if ((v86 & 1) == 0)
    {

      v64 = 1;
      v30 = v155;
      v31 = v161;
      v65 = v172;
      goto LABEL_20;
    }
  }

  v176 = v58;
  v151 = v23;
  v87 = Width - (v153 + v67 + v52 + v68);
  v153 = v57;
  result = sub_1002D16C0();
  v89 = result;
  v90 = *(result + 16);
  v91 = (v175 + 8);
  LODWORD(v175) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v92 = result + 40;
  v93 = -v90;
  v94 = -1;
  v31 = v161;
  v65 = v172;
  while (1)
  {
    if (v93 + v94 == -1)
    {

      v103 = sub_10076C04C();
      v183 = v103;
      v184 = sub_1002D57EC(&qword_100943230, &type metadata accessor for Feature);
      v104 = sub_10000DB7C(v182);
      (*(*(v103 - 8) + 104))(v104, v175, v103);
      v105 = v176;
      sub_10076C90C();
      sub_10000CD74(v182);
      v106 = v147;
      sub_10076996C();
      sub_1002D57EC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
      v107 = v179;
      sub_10076D2AC();
      v109 = v108;

      (*v91)(v106, v107);
      v64 = v87 < v109;
      goto LABEL_18;
    }

    if (++v94 >= *(v89 + 16))
    {
      break;
    }

    v95 = v92 + 16;
    v96 = sub_10076C04C();
    v183 = v96;
    v184 = sub_1002D57EC(&qword_100943230, &type metadata accessor for Feature);
    v97 = sub_10000DB7C(v182);
    (*(*(v96 - 8) + 104))(v97, v175, v96);

    v98 = v176;
    sub_10076C90C();
    sub_10000CD74(v182);
    v99 = v178;
    sub_10076996C();
    sub_1002D57EC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
    v100 = v179;
    sub_10076D2AC();
    v102 = v101;
    result = (*v91)(v99, v100);
    v92 = v95;
    if (v87 < v102)
    {

      v64 = 1;
LABEL_18:
      v30 = v155;
      v23 = v151;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D16C0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);

  sub_10000A5D4(&unk_100951190);
  sub_10002564C();
  sub_1002D63E8();
  sub_10077120C();

  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ProductLockupLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProductLockupLayout(0);
  sub_10000CF78((v1 + v8[11]), *(v1 + v8[11] + 24));
  sub_10076D2BC();
  v10 = rint(v9);
  v29 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000CF78((v2 + *(v29 + 96)), *(v2 + *(v29 + 96) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_10000CF78((v2 + 72), *(v2 + 96));
  sub_1000FF02C();
  sub_10076D40C();
  v15 = v14;
  v13(v7, v4);
  swift_getObjectType();
  v16 = [a1 traitCollection];
  v17 = sub_1007706FC();

  if ((v17 & 1) == 0 && *(v2 + v8[15]) == 1)
  {
    v18 = sub_1002D41F8(a1, v2);
    v19 = (v2 + v8[12]);
    sub_10000CF78(v19, v19[3]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(v19, v19[3]);
      sub_10076D2AC();
      v21 = v20;
      v23 = v22;
      sub_10000CF78((v2 + *(v29 + 76)), *(v2 + *(v29 + 76) + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v25 = v24;
      v13(v7, v4);
      v26 = v25 - v23;
      if (v25 - v23 <= 0.0)
      {
        v26 = 0.0;
      }

      v10 = v10 + v21 + v26;
    }

    if (v10 <= v18)
    {
      v10 = v18;
    }
  }

  return v12 + v15 + v10;
}

uint64_t sub_1002D1B38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_10049D954(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_10049D954((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1002D1C1C(CGFloat a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, double a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23)
{
  v159 = a16;
  v154 = a15;
  v171 = *&a11;
  v169 = a8;
  v151 = a6;
  v168 = a4;
  v165 = a3;
  v163 = a2;
  v152 = a1;
  v29 = a22;
  v166 = a18;
  v30 = a17;
  *&v31 = COERCE_DOUBLE(sub_10077164C());
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  __chkstk_darwin(v36);
  v38 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v156 = v42;
  v43 = *(v42 + 16);
  v155 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = a13;
  v43(v40);
  v158 = v35;
  v44 = *(v35 + 16);
  v157 = v38;
  v161 = a14;
  v44(v38, a10, a14);
  v45 = type metadata accessor for ProductLockupLayout(0);
  v46 = v45[10];
  sub_100016E2C(a12 + v46, &v173, &unk_10094DA00);
  v162 = a20;
  v164 = a7;
  if (v174)
  {
    sub_100012498(&v173, &v175);
    v47 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10000CF78((a12 + *(v47 + 92)), *(a12 + *(v47 + 92) + 24));
    sub_1000FF02C();
    v48 = v171;
    sub_10076D40C();
    v153 = a17;
    v50 = v49;
    (*(v32 + 8))(v34, v31);
    v177.origin.x = v152;
    v177.origin.y = v163;
    v177.size.width = v165;
    v177.size.height = v168;
    MaxY = CGRectGetMaxY(v177);
    v52 = v151;
    v53 = MaxY - v151;
    if (v53 > v50 + a19)
    {
      v54 = v53;
    }

    else
    {
      v54 = v50 + a19;
    }

    v178.origin.x = a20;
    v178.origin.y = a21;
    v178.size.width = a22;
    v178.size.height = a23;
    v55 = CGRectGetMaxX(v178) - a5;
    sub_10000CF78(&v175, v176);
    sub_100770A4C();
    sub_10076D23C();
    v179.origin.x = v55;
    v179.origin.y = v54;
    a7 = v164;
    v30 = v153;
    v179.size.width = a5;
    v179.size.height = v52;
    v29 = a22;
    v168 = CGRectGetMaxY(v179);
    sub_10000CD74(&v175);
    v56 = v162;
  }

  else
  {
    sub_10000CFBC(&v173, &unk_10094DA00);
    v180.origin.x = v152;
    v180.origin.y = v163;
    v180.size.width = v165;
    v180.size.height = v168;
    v57 = CGRectGetMaxY(v180);
    if (v57 <= a19)
    {
      v57 = a19;
    }

    v168 = v57;
    v56 = a20;
    v48 = v171;
  }

  v170 = a21;
  v167 = v29;
  v181.origin.x = v56;
  v181.origin.y = a21;
  v181.size.width = v29;
  v181.size.height = a23;
  MaxX = CGRectGetMaxX(v181);
  v182.origin.x = a7;
  v59 = v169;
  v182.origin.y = v169;
  v182.size.width = v30;
  v60 = v166;
  v182.size.height = v166;
  v171 = MaxX - CGRectGetWidth(v182);
  v163 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout.Metrics(0));
  sub_10000CF78((a12 + *(*&v163 + 72)), *(a12 + *(*&v163 + 72) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v62 = v61;
  v63 = *(v32 + 8);
  v150 = v34;
  v152 = *&v31;
  *&v151 = v32 + 8;
  v149 = v63;
  v63(v34, v31);
  v64 = v168 + v62;
  v183.origin.x = a7;
  v183.origin.y = v59;
  v183.size.width = v30;
  v183.size.height = v60;
  Width = CGRectGetWidth(v183);
  v184.origin.x = a7;
  v184.origin.y = v59;
  v66 = v30;
  v184.size.width = v30;
  v184.size.height = v60;
  Height = CGRectGetHeight(v184);
  v68 = (a12 + v45[11]);
  v69 = v48;
  sub_10000CF78(v68, v68[3]);
  v172 = a23;
  v168 = Height;
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78(v68, v68[3]);
  v70 = sub_10076D24C();
  sub_10000CF78(v68, v68[3]);
  if ((sub_10076D24C() & 1) == 0)
  {
    v164 = v171;
    v169 = v64;
    v66 = Width;
    v166 = v168;
  }

  v71 = (a12 + v45[12]);
  sub_10000CF78(v71, v71[3]);
  v72 = sub_10076D24C();
  v165 = v64;
  if (v72)
  {
    sub_10000CF78(v71, v71[3]);
    sub_10076D23C();
    v73 = *&v163;
    v74 = v167;
    v75 = v172;
    v76 = v170;
    v77 = v56;
  }

  else
  {
    v73 = *&v163;
    v148 = Width;
    if (v70)
    {
      v78 = v56;
      sub_100016E2C(a12 + v46, &v175, &unk_10094DA00);
      v79 = v176;
      sub_10000CFBC(&v175, &unk_10094DA00);
      v153 = v66;
      v80 = v164;
      if (v79)
      {
        sub_10000CF78((a12 + v73[20]), *(a12 + v73[20] + 24));
        v81 = v150;
        sub_1000FF02C();
        sub_10076D40C();
        v147 = v82;
        v149(v81, *&v152);
      }

      else
      {
        v147 = 0.0;
      }

      v94 = v169;
      sub_100016E2C(a12 + v46, &v175, &unk_10094DA00);
      if (v176)
      {
        sub_10000CF78(&v175, v176);
        v95 = v167;
        v96 = v172;
        sub_10076D2BC();
        v145 = v97;
        sub_10000CD74(&v175);
      }

      else
      {
        sub_10000CFBC(&v175, &unk_10094DA00);
        v145 = 0;
        v96 = v172;
        v95 = v167;
      }

      v187.origin.x = v78;
      v187.origin.y = v170;
      v187.size.width = v95;
      v187.size.height = v96;
      CGRectGetWidth(v187);
      v188.origin.x = v80;
      v188.origin.y = v94;
      v169 = v94;
      v98 = v153;
      v188.size.width = v153;
      v99 = v166;
      v188.size.height = v166;
      CGRectGetWidth(v188);
      v100 = v73[19];
      v146 = a12;
      v101 = a12 + v100;
      v144 = a12 + v100;
      v102 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
      v103 = (v101 + *(v102 + 28));
      v104 = v103[3];
      v143 = v103;
      sub_10000CF78(v103, v104);
      v105 = v150;
      sub_1000FF02C();
      sub_10076D40C();
      v106 = v80;
      v107 = v152;
      v108 = v149;
      v149(v105, *&v152);
      sub_10000CF78((v144 + *(v102 + 24)), *(v144 + *(v102 + 24) + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v108(v105, *&v107);
      v109 = v98;
      sub_10000CF78(v71, v71[3]);
      v75 = v96;
      v110 = v169;
      sub_10076D2AC();
      v112 = v111;
      v189.origin.x = v106;
      v189.origin.y = v110;
      v189.size.width = v109;
      v189.size.height = v99;
      CGRectGetMidY(v189);
      sub_10000CF78(v68, v68[3]);
      v113 = sub_10076D24C();
      v147 = v112;
      if ((v113 & 1) != 0 || (v190.origin.x = v106, v190.origin.y = v110, v190.size.width = v109, v190.size.height = v99, CGRectGetHeight(v190) < v112))
      {
        v191.size.width = v109;
        v114 = v106;
        v191.origin.x = v106;
        v191.origin.y = v110;
        v191.size.height = v99;
        CGRectGetMinY(v191);
      }

      else
      {
        v114 = v106;
      }

      sub_10000CF78(v68, v68[3]);
      v115 = sub_10076D24C();
      v73 = *&v163;
      a12 = v146;
      v116 = v114;
      v117 = v110;
      v118 = v153;
      v119 = v166;
      if (v115)
      {
        CGRectGetMinX(*&v116);
      }

      else
      {
        CGRectGetMaxX(*&v116);
        sub_10000CF78(v143, v143[3]);
        v120 = v150;
        sub_1000FF02C();
        sub_10076D40C();
        v149(v120, *&v152);
      }

      v76 = v170;
      v77 = v162;
    }

    else
    {
      v83 = v164;
      v84 = v66;
      sub_10000CF78(v71, v71[3]);
      sub_10076D2AC();
      v86 = v85;
      sub_10000CF78((a12 + v73[19]), *(a12 + v73[19] + 24));
      v147 = v86;
      sub_10076D42C();
      v185.origin.x = v83;
      v87 = v169;
      v185.origin.y = v169;
      v185.size.width = v84;
      v88 = v166;
      v185.size.height = v166;
      CGRectGetMinX(v185);
      v186.origin.x = v83;
      v186.origin.y = v87;
      v186.size.width = v84;
      v186.size.height = v88;
      CGRectGetWidth(v186);
      sub_10000CF78(v68, v68[3]);
      v89 = sub_10076D24C();
      v90 = v83;
      v91 = v87;
      v92 = v84;
      v93 = v88;
      if (v89)
      {
        CGRectGetMinY(*&v90);
      }

      else
      {
        CGRectGetMaxY(*&v90);
      }

      v76 = v170;
      v77 = v162;
      v75 = v172;
    }

    sub_10000CF78(v71, v71[3]);
    v74 = v167;
    sub_100770A4C();
    sub_10076D23C();
    Width = v148;
  }

  v192.origin.x = v77;
  v192.origin.y = v76;
  v192.size.width = v74;
  v192.size.height = v75;
  v121 = CGRectGetWidth(v192);
  v193.origin.x = v171;
  v193.origin.y = v165;
  v193.size.width = Width;
  v193.size.height = v168;
  v122 = v74;
  v123 = v121 - CGRectGetWidth(v193);
  *&v173 = v69;
  sub_10000A5D4(&unk_100945BD0);
  sub_10075FDCC();
  if (v123 - v175 > 0.0)
  {
    v124 = v123 - v175;
  }

  else
  {
    v124 = 0.0;
  }

  v194.origin.x = v77;
  v194.origin.y = v76;
  v194.size.width = v74;
  v125 = v172;
  v194.size.height = v172;
  CGRectGetHeight(v194);
  v126 = v155;
  v127 = v160;
  sub_10076D2AC();
  v128 = Width;
  v130 = v129;
  v132 = v131;
  v169 = v133;
  v195.origin.x = v77;
  v195.origin.y = v76;
  v195.size.width = v122;
  v195.size.height = v125;
  MinX = CGRectGetMinX(v195);
  v196.origin.x = v171;
  v196.origin.y = v165;
  v196.size.width = v128;
  v196.size.height = v168;
  MinY = CGRectGetMinY(v196);
  if (v124 < v130)
  {
    v130 = v124;
  }

  v197.origin.x = MinX;
  v197.origin.y = MinY;
  v197.size.width = v130;
  v197.size.height = v132;
  v171 = CGRectGetMaxY(v197) - v169;
  sub_100770A4C();
  sub_10076D23C();
  v198.origin.x = v77;
  v136 = v170;
  v198.origin.y = v170;
  v198.size.width = v122;
  v137 = v172;
  v198.size.height = v172;
  CGRectGetHeight(v198);
  v138 = v157;
  v139 = v161;
  sub_10076D2AC();
  v168 = v140;
  v199.origin.x = v77;
  v199.origin.y = v136;
  v199.size.width = v122;
  v199.size.height = v137;
  v169 = CGRectGetMinX(v199);
  sub_10000CF78((a12 + v73[21]), *(a12 + v73[21] + 24));
  sub_10076D42C();
  sub_100770A4C();
  sub_10076D23C();
  (*(v156 + 8))(v126, v127);
  return (*(v158 + 8))(v138, v139);
}

double sub_1002D2C70(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v21 = sub_1007706FC();

  sub_10000CF78((a2 + 32), *(a2 + 56));
  sub_1000FF02C();
  sub_10076D40C();
  v16 = *(v11 + 8);
  v16(v14, v10);
  sub_10000CF78((a2 + 72), *(a2 + 96));
  sub_1000FF02C();
  sub_10076D40C();
  v16(v14, v10);
  v17 = a4 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v18 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v22 = a1;
  sub_10000A5D4(&unk_100945BD0);
  sub_10075FDCC();
  v20 = a3;
  sub_1002D2F68(a1, a2, a3, v17 - v23, a5);
  sub_10000CF78((a2 + *(v18 + 96)), *(a2 + *(v18 + 96) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v16(v14, v10);
  if (v21 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_1002D350C(a1, a2, v20, a4, a5);
  }

  return a4;
}

double sub_1002D2F68(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10077164C();
  v48 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007706FC();

  v49 = type metadata accessor for ProductLockupLayout(0);
  v16 = v49[10];
  sub_100016E2C(a2 + v16, v50, &unk_10094DA00);
  if (v51)
  {
    sub_10000CF78(v50, v51);
    sub_10076D2BC();
    v18 = v17;
    sub_10000CD74(v50);
  }

  else
  {
    sub_10000CFBC(v50, &unk_10094DA00);
    v18 = 0.0;
  }

  v19 = sub_1002D4474(a1, a2);
  sub_100016E2C(a2 + v16, v50, &unk_10094DA00);
  v20 = v51;
  sub_10000CFBC(v50, &unk_10094DA00);
  if (v20)
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      if (*(a2 + v49[15]))
      {
        v22 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_10000CF78((a2 + *(v22 + 92)), *(a2 + *(v22 + 92) + 24));
        sub_1000FF02C();
        sub_10076D40C();
        v24 = v23;
        (*(v48 + 8))(v13, v10);
        v19 = v19 + v18 + v24;
      }

LABEL_9:
      if (*(a2 + v21[15]))
      {
        return v19;
      }
    }
  }

  else
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v46 = *(a2 + 120);
  v25 = (a2 + v21[11]);
  v26 = v25[3];
  v45 = v25;
  sub_10000CF78(v25, v26);
  sub_10076D2BC();
  v28 = v27;
  sub_100016E2C(a2 + v16, v50, &unk_10094DA00);
  v29 = v51;
  sub_10000CFBC(v50, &unk_10094DA00);
  v47 = a3;
  if (v29)
  {
    v30 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10000CF78((a2 + *(v30 + 80)), *(a2 + *(v30 + 80) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v31 = a1;
    v32 = v48;
    (*(v48 + 8))(v13, v10);
    v33 = v10;
  }

  else
  {
    v33 = v10;
    v31 = a1;
    v32 = v48;
  }

  v44 = a2;
  v48 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = a2 + *(v48 + 76);
  v35 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_10000CF78((v34 + *(v35 + 28)), *(v34 + *(v35 + 28) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v36 = *(v32 + 8);
  v36(v13, v33);
  v37 = v36;
  sub_10000CF78((v34 + *(v35 + 24)), *(v34 + *(v35 + 24) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v36(v13, v33);
  v38 = v44;
  sub_10000CF78((v44 + v49[12]), *(v44 + v49[12] + 24));
  sub_10076D2BC();
  v40 = v39;
  sub_10000CF78(v45, v45[3]);
  if (sub_10076D24C())
  {
    v28 = v40;
  }

  sub_10000CF78((v38 + *(v48 + 72)), *(v38 + *(v48 + 72) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v42 = v41;
  v37(v13, v33);
  if (v19 < v46 - v42 - v28)
  {
    v19 = v46 - v42 - v28;
  }

  return sub_1002D350C(v31, v38, v47, a4, a5) + v19;
}

double sub_1002D350C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v44 = a3;
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007706FC();

  v16 = type metadata accessor for ProductLockupLayout(0);
  sub_10000CF78((a2 + v16[11]), *(a2 + v16[11] + 24));
  sub_10076D2BC();
  v18 = v17;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000CF78((a2 + *(v42 + 72)), *(a2 + *(v42 + 72) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v20 = v19;
  v21 = *(v10 + 8);
  v43 = v9;
  v21(v13, v9);
  if ((v15 & 1) != 0 || *(a2 + v16[15]) == 1)
  {
    v22 = a2 + *(v42 + 76);
    v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000CF78((v22 + *(v23 + 28)), *(v22 + *(v23 + 28) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v25 = v24;
    v21(v13, v43);
    sub_1002D3974(a1, a2, a4, a5, a4 - (v18 + v25));
    v27 = v26;
    v28 = sub_1002D41F8(a1, a2);
    if (v27 > v28)
    {
      v28 = v27;
    }
  }

  else
  {
    v29 = v16[10];
    sub_100016E2C(a2 + v29, v45, &unk_10094DA00);
    if (v46)
    {
      sub_10000CF78(v45, v46);
      sub_10076D2BC();
      v31 = v30;
      sub_10000CD74(v45);
    }

    else
    {
      sub_10000CFBC(v45, &unk_10094DA00);
      v31 = 0.0;
    }

    v32 = v42;
    sub_100016E2C(a2 + v29, v45, &unk_10094DA00);
    v33 = v46;
    sub_10000CFBC(v45, &unk_10094DA00);
    if (v33)
    {
      sub_10000CF78((a2 + *(v32 + 80)), *(a2 + *(v32 + 80) + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v35 = v34;
      v36 = v43;
      v21(v13, v43);
    }

    else
    {
      v35 = 0.0;
      v36 = v43;
    }

    v37 = a2 + *(v32 + 76);
    v38 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000CF78((v37 + *(v38 + 28)), *(v37 + *(v38 + 28) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v40 = v39;
    v21(v13, v36);
    sub_1002D3974(a1, a2, a4, a5, a4 - (v35 + v31 + v18 + v40));
  }

  return v20 + 0.0 + v28;
}

void sub_1002D3974(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v78 = sub_10076997C();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_10077164C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10075D78C();
  v75 = *(v77 - 1);
  __chkstk_darwin(v77);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = (a2 + v17[11]);
  sub_10000CF78(v18, v18[3]);
  sub_10076D2BC();
  v19 = (a2 + v17[16]);
  v74 = v19[1];
  if (v74)
  {
    v69 = v13;
    v70 = v12;
    v71 = *v19;
    v20 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v79[0] = a1;
    sub_10000A5D4(&unk_100950EE0);
    v66 = v20;
    sub_10075FDCC();
    v21 = v82;
    v67 = v17;
    v22 = v17[15];
    v68 = a2;
    v23 = *(a2 + v22);
    sub_10000CF78(v18, v18[3]);
    if (sub_10076D24C())
    {
    }

    else
    {
      v24 = objc_opt_self();
      v25 = v74;

      v26 = [v24 mainScreen];
      [v26 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v83.origin.x = v28;
      v83.origin.y = v30;
      v83.size.width = v32;
      v83.size.height = v34;
      Width = CGRectGetWidth(v83);
      JUScreenClassGetPortraitWidth();
      if (Width > v36 || (sub_10075D77C(), v79[0] = v71, v79[1] = v25, sub_10002564C(), sub_1007711EC(), v38 = v37, (*(v75 + 8))(v16, v77), (v38)) && (!v23 || (v39 = [a1 traitCollection], v40 = sub_1007706FC(), v39, (v40)))
      {
        v77 = v21;
        v41 = sub_1002D16C0();
        v42 = *(v41 + 16);
        v43 = (v76 + 8);
        LODWORD(v75) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v44 = v41 + 40;
        v76 = -v42;
        v45 = -1;
        while (v76 + v45 != -1)
        {
          if (++v45 >= *(v41 + 16))
          {
            __break(1u);
            return;
          }

          v46 = v44 + 16;
          v47 = a1;
          v48 = sub_10076C04C();
          v80 = v48;
          v81 = sub_1002D57EC(&qword_100943230, &type metadata accessor for Feature);
          v49 = sub_10000DB7C(v79);
          (*(*(v48 - 8) + 104))(v49, v75, v48);

          v50 = v77;
          sub_10076C90C();
          sub_10000CD74(v79);
          a1 = v47;
          sub_10076996C();
          sub_1002D57EC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
          v51 = v78;
          sub_10076D2AC();
          v53 = v52;
          (*v43)(v11, v51);
          v44 = v46;
          if (v53 > a5)
          {

            v21 = v77;
            goto LABEL_13;
          }
        }

        v59 = sub_10076C04C();
        v80 = v59;
        v81 = sub_1002D57EC(&qword_100943230, &type metadata accessor for Feature);
        v60 = sub_10000DB7C(v79);
        (*(*(v59 - 8) + 104))(v60, v75, v59);
        v61 = v77;
        sub_10076C90C();
        sub_10000CD74(v79);
        v62 = v72;
        sub_10076996C();
        sub_1002D57EC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
        v63 = v78;
        sub_10076D2AC();
        v65 = v64;

        (*v43)(v62, v63);
        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
        if (v65 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
LABEL_14:
        sub_10000CF78((v56 + v57[12]), *(v56 + v57[12] + 24));
        sub_10076D2AC();
        sub_10000CF78(v66, v66[3]);
        v58 = v73;
        sub_1000FF02C();
        sub_10076D40C();
        (*(v55 + 8))(v58, v54);
      }
    }
  }
}

double sub_1002D41F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductLockupLayout(0);
  sub_100016E2C(a2 + *(v7 + 52), &v22, &qword_10094BB30);
  if (!v23)
  {
    sub_10000CFBC(&v22, &qword_10094BB30);
    return 0.0;
  }

  sub_100012498(&v22, v24);
  sub_100016E2C(a2 + *(v7 + 56), &v20, &qword_10094BB30);
  if (!v21)
  {
    sub_10000CFBC(&v20, &qword_10094BB30);
    sub_10000CD74(v24);
    return 0.0;
  }

  sub_100012498(&v20, &v22);
  sub_10000CF78(v24, v24[3]);
  sub_10076D2AC();
  v9 = v8;
  v11 = v10;
  sub_10000CF78(&v22, v23);
  sub_10076D2AC();
  v13 = v12;
  v14 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000CF78((a2 + *(v14 + 84)), *(a2 + *(v14 + 84) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = v13 + v9 - v11 + v16;
  sub_10000CD74(&v22);
  sub_10000CD74(v24);
  return v17;
}

double sub_1002D4474(void *a1, uint64_t a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v54 = sub_1007706FC();

  v10 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v55 = a1;
  v11 = sub_10000A5D4(&unk_100945BD0);
  sub_10075FDCC();
  v12 = *v58;
  v13 = v10;
  *&v55 = a1;
  v53 = v11;
  sub_10075FDCC();
  v14 = *v58;
  v15 = type metadata accessor for ProductLockupLayout(0);
  v16 = v15[10];
  sub_100016E2C(a2 + v16, v58, &unk_10094DA00);
  if (v59)
  {
    sub_10000CF78(v58, v59);
    sub_10076D2BC();
    sub_10000CD74(v58);
  }

  else
  {
    sub_10000CFBC(v58, &unk_10094DA00);
  }

  sub_100016E2C(a2 + v16, v58, &unk_10094DA00);
  v17 = v59;
  sub_10000CFBC(v58, &unk_10094DA00);
  if (v17)
  {
    sub_10000CF78((a2 + *(v13 + 80)), *(a2 + *(v13 + 80) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    (*(v5 + 8))(v8, v4);
  }

  v18 = (a2 + v15[6]);
  sub_10000CF78(v18, v18[3]);
  sub_10076D2AC();
  v21 = v20;
  v23 = v22;
  v24 = v19;
  v26 = v25;
  if (v12 - v19 > 0.0)
  {
    v27 = v12 - v19;
  }

  else
  {
    v27 = 0.0;
  }

  sub_10000CF78(v18, v18[3]);
  sub_10076D6EC();
  v29 = v23 - v26 + v27 + v28;
  sub_10000A570(v18, v58);
  *&v55 = a1;
  sub_10000A5D4(&unk_10094C370);
  sub_10075FDCC();
  v30 = v15[9];
  sub_100016E2C(a2 + v30, &v55, &qword_10094BB30);
  sub_10000CFBC(&v55, &qword_10094BB30);
  sub_10000CF78(v58, v59);
  v60.var0 = v21;
  v60.var1 = v23;
  v60.var2 = v24;
  v60.var3 = v26;
  sub_10076D71C(v60);
  sub_10000CD74(v58);
  v31 = (a2 + v15[8]);
  sub_10000CF78(v31, v31[3]);
  sub_10076D6DC();
  v32 = (a2 + v15[7]);
  sub_10000CF78(v32, v32[3]);
  sub_10076D6DC();
  sub_10000CF78(v31, v31[3]);
  sub_10076D2AC();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10000CF78(v32, v32[3]);
  sub_10076D2AC();
  v40 = v39;
  v41 = v14 - v36 + v34 - v38;
  v44 = v14 - v42 + v43 - v39;
  if (v41 > v44)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = v29 + v45;
  sub_100016E2C(a2 + v30, &v55, &qword_10094BB30);
  if (v56)
  {
    sub_100012498(&v55, v58);
    v57 = a1;
    sub_10075FDCC();
    v47 = *&v55;
    sub_10000CF78(v58, v59);
    sub_10076D2AC();
    v49 = v48;
    v46 = v46 + v47 - v50 + v51 - v48;
    sub_10000CD74(v58);
  }

  else
  {
    if (v41 >= v44)
    {
      v49 = v38;
    }

    else
    {
      v49 = v40;
    }

    sub_10000CFBC(&v55, &qword_10094BB30);
  }

  return v46 + v49;
}

uint64_t sub_1002D4A54(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v123 = a16;
  v118 = a15;
  v137 = a8;
  v125 = a6;
  v130 = a5;
  v129 = a4;
  v136 = a3;
  v116 = a1;
  v128 = COERCE_DOUBLE(sub_10077164C());
  v29 = *(*&v128 - 8);
  __chkstk_darwin(*&v128);
  v127 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a14 - 8);
  __chkstk_darwin(v32);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v120 = v38;
  v39 = *(v38 + 16);
  v119 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39(v36);
  v122 = v31;
  v40 = *(v31 + 16);
  v121 = v34;
  v40(v34, a10, a14);
  *&v41 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  v42 = v41[10];
  sub_100016E2C(a12 + v42, &v139, &unk_10094DA00);
  v135 = a12;
  v134 = a7;
  v138 = a18;
  v133 = a17;
  v132 = a21;
  v126 = a20;
  v131 = a19;
  v124 = a22;
  if (v140)
  {
    sub_100012498(&v139, &v141);
    sub_10000CF78((a12 + v41[6]), *(a12 + v41[6] + 24));
    sub_10076D22C();
    CGRectGetMidY(v143);
    v115 = a2;
    v144.origin.x = a19;
    v144.origin.y = a20;
    v144.size.width = a21;
    v144.size.height = a22;
    CGRectGetMinY(v144);
    v145.origin.x = a19;
    v145.origin.y = a20;
    v145.size.width = a21;
    v145.size.height = a22;
    CGRectGetMaxX(v145);
    sub_10000CF78(&v141, v142);
    sub_100770A4C();
    a12 = v135;
    sub_10076D23C();
    sub_10000CD74(&v141);
  }

  else
  {
    sub_10000CFBC(&v139, &unk_10094DA00);
  }

  v116 = *&v41;
  v43 = a12;
  v44 = (a12 + v41[12]);
  sub_10000CF78(v44, v44[3]);
  v45 = sub_10076D24C();
  v46 = v125;
  v47 = v129;
  if (v45)
  {
    sub_10000CF78(v44, v44[3]);
    sub_10076D23C();
    v48 = v124;
    v49 = v126;
  }

  else
  {
    v117 = v29;
    sub_100016E2C(v43 + v42, &v141, &unk_10094DA00);
    v50 = v142;
    sub_10000CFBC(&v141, &unk_10094DA00);
    v51 = v131;
    if (v50)
    {
      v52 = type metadata accessor for ProductLockupLayout.Metrics(0);
      sub_10000CF78((v43 + *(v52 + 80)), *(v43 + *(v52 + 80) + 24));
      v53 = v127;
      sub_1000FF02C();
      sub_10076D40C();
      (*(v117 + 8))(v53, COERCE_DOUBLE(*&v128));
    }

    v54 = v132;
    v55 = v124;
    sub_100016E2C(v43 + v42, &v141, &unk_10094DA00);
    v56 = v126;
    v114 = a14;
    v113 = a13;
    if (v142)
    {
      sub_10000CF78(&v141, v142);
      sub_10076D2BC();
      sub_10000CD74(&v141);
    }

    else
    {
      sub_10000CFBC(&v141, &unk_10094DA00);
    }

    v57 = v117;
    v146.origin.x = v51;
    v146.origin.y = v56;
    v146.size.width = v54;
    v146.size.height = v55;
    CGRectGetWidth(v146);
    v147.origin.x = v136;
    v147.origin.y = v47;
    v58 = v130;
    v147.size.width = v130;
    v59 = v125;
    v147.size.height = v125;
    CGRectGetWidth(v147);
    v60 = v135 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v61 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v62 = (v60 + *(v61 + 28));
    v63 = v62[3];
    v112 = v62;
    sub_10000CF78(v62, v63);
    v64 = v127;
    sub_1000FF02C();
    sub_10076D40C();
    v65 = a11;
    v66 = *(v57 + 8);
    v67 = v128;
    v66(v64, *&v128);
    v68 = v136;
    v69 = v58;
    v47 = v129;
    sub_10000CF78((v60 + *(v61 + 24)), *(v60 + *(v61 + 24) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v115 = *&v66;
    v66(v64, *&v67);
    a11 = v65;
    sub_10000CF78(v44, v44[3]);
    v46 = v59;
    sub_10076D2AC();
    v71 = v70;
    v148.origin.x = v68;
    v148.origin.y = v47;
    v148.size.width = v69;
    v148.size.height = v59;
    CGRectGetMidY(v148);
    v72 = (v135 + *(*&v116 + 44));
    sub_10000CF78(v72, v72[3]);
    if ((sub_10076D24C() & 1) != 0 || (v149.origin.x = v68, v149.origin.y = v47, v149.size.width = v69, v149.size.height = v59, CGRectGetHeight(v149) < v71))
    {
      v150.origin.x = v68;
      v150.origin.y = v47;
      v150.size.width = v69;
      v150.size.height = v59;
      CGRectGetMinY(v150);
    }

    a14 = v114;
    sub_10000CF78(v72, v72[3]);
    v73 = sub_10076D24C();
    v29 = v117;
    v49 = v126;
    v74 = v68;
    v75 = v47;
    v76 = v69;
    v77 = v46;
    if (v73)
    {
      CGRectGetMinX(*&v74);
    }

    else
    {
      CGRectGetMaxX(*&v74);
      sub_10000CF78(v112, v112[3]);
      v78 = v29;
      v79 = v127;
      sub_1000FF02C();
      sub_10076D40C();
      v80 = v79;
      v29 = v78;
      (*&v115)(v80, *&v128);
    }

    a13 = v113;
    sub_10000CF78(v44, v44[3]);
    sub_100770A4C();
    sub_10076D23C();
    v48 = v124;
  }

  v81 = v47;
  sub_10000CF78(v44, v44[3]);
  v82 = v132;
  v83 = v48;
  sub_10076D2AC();
  v85 = v84;
  sub_10000CF78(v44, v44[3]);
  v86 = sub_10076D24C();
  v87 = 0.0;
  v88 = v135;
  if ((v86 & 1) == 0)
  {
    v89 = v88 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v90 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000CF78((v89 + *(v90 + 28)), *(v89 + *(v90 + 28) + 24));
    v91 = v127;
    sub_1000FF02C();
    sub_10076D40C();
    v93 = v92;
    (*(v29 + 8))(v91, COERCE_DOUBLE(*&v128));
    v87 = v85 + v93;
  }

  v94 = v131;
  v151.origin.x = v131;
  v151.origin.y = v49;
  v151.size.width = v82;
  v151.size.height = v83;
  Width = CGRectGetWidth(v151);
  v152.origin.x = v136;
  v152.origin.y = v81;
  v152.size.width = v130;
  v152.size.height = v46;
  v96 = Width - CGRectGetWidth(v152);
  v97 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v139 = a11;
  sub_10000A5D4(&unk_100945BD0);
  sub_10075FDCC();
  if (v96 - v141 - v87 > 0.0)
  {
    v98 = v96 - v141 - v87;
  }

  else
  {
    v98 = 0.0;
  }

  v153.origin.x = v94;
  v153.origin.y = v49;
  v153.size.width = v82;
  v153.size.height = v83;
  CGRectGetHeight(v153);
  v99 = v119;
  sub_10076D2AC();
  v101 = v100;
  v103 = v102;
  v128 = v104;
  v154.origin.x = v94;
  v154.origin.y = v49;
  v154.size.width = v82;
  v154.size.height = v83;
  MaxX = CGRectGetMaxX(v154);
  v155.origin.x = v136;
  v155.origin.y = v129;
  v155.size.width = v130;
  v155.size.height = v46;
  MinY = CGRectGetMinY(v155);
  if (v98 < v101)
  {
    v101 = v98;
  }

  sub_100770A4C();
  sub_10076D23C();
  v156.origin.x = MaxX - v98;
  v156.origin.y = MinY;
  v156.size.width = v101;
  v156.size.height = v103;
  v136 = CGRectGetMaxY(v156) - v128;
  v107 = v131;
  v157.origin.x = v131;
  v157.origin.y = v49;
  v108 = v132;
  v157.size.width = v132;
  v157.size.height = v83;
  CGRectGetHeight(v157);
  v109 = v121;
  sub_10076D2AC();
  v130 = v110;
  v158.origin.x = v107;
  v158.origin.y = v49;
  v158.size.width = v108;
  v158.size.height = v83;
  CGRectGetMaxX(v158);
  sub_10000CF78((v88 + *(v97 + 84)), *(v88 + *(v97 + 84) + 24));
  sub_10076D42C();
  sub_100770A4C();
  sub_10076D23C();
  (*(v120 + 8))(v99, a13);
  return (*(v122 + 8))(v109, a14);
}

uint64_t sub_1002D5768(uint64_t a1)
{
  *(a1 + 8) = sub_1002D57EC(&unk_1009522B0, type metadata accessor for ProductLockupLayout);
  result = sub_1002D57EC(&qword_100950EF0, type metadata accessor for ProductLockupLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002D57EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D5848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002D591C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1002D59D8()
{
  type metadata accessor for ProductLockupLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100102F90(319, &unk_100950F60);
    if (v1 <= 0x3F)
    {
      sub_100102F90(319, &qword_100953E00);
      if (v2 <= 0x3F)
      {
        sub_1001A3380(319, &unk_100950F70, &unk_100953E10);
        if (v3 <= 0x3F)
        {
          sub_1001A3380(319, &qword_100950F80, &qword_10094CF50);
          if (v4 <= 0x3F)
          {
            sub_1001962D4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002D5B58(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10000A5D4(&unk_100945BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_10000A5D4(&unk_100950EE0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_10000A5D4(&unk_10094C370);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[19];

  return v16(v17, a2, v15);
}

uint64_t sub_1002D5D44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = sub_10000A5D4(&unk_100945BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000A5D4(&unk_100950EE0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_10000A5D4(&unk_10094C370);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[19];

  return v16(v17, a2, a2, v15);
}

void sub_1002D5F1C()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_100102F90(319, &qword_10094BAA0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1002D6108(319, &qword_100953EE0);
        if (v3 <= 0x3F)
        {
          sub_1002D6094();
          if (v4 <= 0x3F)
          {
            sub_1002D6108(319, &unk_100951078);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002D6094()
{
  if (!qword_100951068)
  {
    sub_10000CE78(&unk_100943120);
    sub_10005312C();
    v0 = sub_10075FEBC();
    if (!v1)
    {
      atomic_store(v0, &qword_100951068);
    }
  }
}

void sub_1002D6108(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10000CE78(&unk_100943120);
    v3 = sub_10075FEBC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1002D6188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000A5D4(&unk_100950EE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002D6258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000A5D4(&unk_100950EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002D6308()
{
  sub_100102F90(319, &qword_10094BAA0);
  if (v0 <= 0x3F)
  {
    sub_1002D6094();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002D63A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002D63E8()
{
  result = qword_1009511A0;
  if (!qword_1009511A0)
  {
    sub_10000CE78(&unk_100951190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009511A0);
  }

  return result;
}

uint64_t sub_1002D644C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007634CC();
  sub_10000DB18(v4, qword_10099E3E8);
  v37 = sub_10000A61C(v4, qword_10099E3E8);
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0CD0);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v46 = v1[13];
  v46(v3, enum case for FontSource.useCase(_:), v0);
  v45 = sub_10076D9AC();
  v64[3] = v45;
  v64[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v61);
  v12 = v1[2];
  v44 = v1 + 2;
  v41 = v12;
  v12(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v43 = v1 + 1;
  v47 = v13;
  v13(v3, v0);
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v5, qword_1009A0CE8);
  v8(v3, v36, v5);
  v46(v3, v10, v0);
  v62 = v45;
  v14 = v45;
  v63 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  v38 = v10;
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v58);
  v39 = v1 + 13;
  v16 = v41;
  v41(v15, v3, v0);
  sub_10076D9BC();
  v47(v3, v0);
  v17 = v36;
  v42 = v5;
  v40 = v8;
  v36 = v9;
  v8(v3, v17, v5);
  v18 = v38;
  v19 = v46;
  v46(v3, v38, v0);
  v59 = v14;
  v60 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v55);
  v16(v20, v3, v0);
  sub_10076D9BC();
  v47(v3, v0);
  v21 = v18;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v22 = v42;
  v35 = sub_10000A61C(v42, qword_1009A0D48);
  v23 = v40;
  v40(v3, v35, v22);
  v19(v3, v21, v0);
  v56 = v45;
  v57 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v55);
  v24 = v23;
  v53 = v0;
  v54 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v52);
  v26 = v41;
  v41(v25, v3, v0);
  sub_10076D9BC();
  v27 = v26;
  v47(v3, v0);
  v28 = v35;
  v24(v3, v35, v42);
  v46(v3, v21, v0);
  v29 = v45;
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v49);
  v27(v30, v3, v0);
  sub_10076D9BC();
  v31 = v47;
  v47(v3, v0);
  v40(v3, v28, v42);
  v46(v3, v38, v0);
  v50 = v29;
  v51 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v49);
  v48[3] = v0;
  v48[4] = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v48);
  v27(v32, v3, v0);
  sub_10076D9BC();
  v31(v3, v0);
  return sub_1007634BC();
}

char *sub_1002D6AD0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_itemLayoutContext;
  v17 = sub_10076341C();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase] = 0;
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  sub_10075FD2C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_artworkView] = sub_10075FB3C();
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A0CE8);
  v21 = *(v19 - 8);
  v44 = *(v21 + 16);
  v44(v15, v20, v19);
  v43 = *(v21 + 56);
  v43(v15, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v42 = *(v11 + 104);
  v42(v46, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = sub_1007626BC();
  v41 = v10;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v19, qword_1009A0D48);
  v44(v15, v26, v19);
  v43(v15, 0, 1, v19);
  v42(v46, v22, v41);
  v27 = objc_allocWithZone(v24);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 contentView];
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v30 = [v28 contentView];
  [v30 addSubview:*&v28[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_artworkView]];

  v31 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel;
  v32 = *&v28[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel];
  sub_10076266C();

  v33 = [v28 contentView];
  [v33 addSubview:*&v28[v31]];

  v34 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel;
  v35 = *&v28[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  sub_100016F40(0, &qword_100942F10);
  v36 = v35;
  v37 = sub_100770D1C();
  [v36 setTextColor:v37];

  v38 = *&v28[v34];
  sub_10076266C();

  v39 = [v28 contentView];
  [v39 addSubview:*&v28[v34]];

  return v28;
}

void sub_1002D7138(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase] = a1;
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

uint64_t sub_1002D7218()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_10076D1FC();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007634CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1007634EC();
  v9 = *(v31 - 8);
  *&v10 = __chkstk_darwin(v31).n128_u64[0];
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54.receiver = v1;
  v54.super_class = ObjectType;
  v34 = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v10);
  if (qword_10093FD60 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v5, qword_10099E3E8);
  (*(v6 + 16))(v8, v13, v5);
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_artworkView];
  v52 = sub_10075FD2C();
  v53 = &protocol witness table for UIView;
  v51 = v14;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v15)
  {
    v16 = sub_1007626BC();
    v17 = &protocol witness table for UILabel;
    v18 = v15;
  }

  else
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v47 = 0;
    v48 = 0;
  }

  v46 = v18;
  v49 = v16;
  v50 = v17;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel];
  v20 = sub_1007626BC();
  v44 = v20;
  v45 = &protocol witness table for UILabel;
  v43 = v19;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  v42 = &protocol witness table for UILabel;
  v41 = v20;
  v40 = v21;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v22)
  {
    v23 = &protocol witness table for UILabel;
  }

  else
  {
    v20 = 0;
    v23 = 0;
    v37 = 0;
    v36 = 0;
  }

  v35 = v22;
  v38 = v20;
  v39 = v23;
  v24 = v15;
  v25 = v19;
  v26 = v21;
  v27 = v22;
  v28 = v14;
  sub_1007634DC();
  v29 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();

  sub_1007634AC();
  (*(v32 + 8))(v4, v33);
  sub_1002D811C(&qword_100951208, type metadata accessor for LargeLockupCollectionViewCell);
  sub_1007676CC();
  return (*(v9 + 8))(v12, v31);
}

id sub_1002D76D0(char a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100940A40 != -1)
    {
      swift_once();
    }

    v16 = sub_10076D3DC();
    v17 = sub_10000A61C(v16, qword_1009A0CD0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_1007626BC());
    v20 = sub_1007626AC();
    v2 = v15;
    sub_1002AC2EC(v20, &OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel);
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

void sub_1002D7980()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A0DC0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  v15 = sub_1007626AC();
  sub_1002AC2EC(v15, &OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_10076266C();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016F40(0, &qword_100942F10);
      v18 = v17;
      v19 = sub_100770D0C();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for LargeLockupCollectionViewCell()
{
  result = qword_1009511E8;
  if (!qword_1009511E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D7D40()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D7E1C()
{
  v0 = sub_10076BEDC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076BE8C();
  sub_1002D811C(&qword_1009441E0, &type metadata accessor for Artwork.Crop);
  v4 = sub_10076FF1C();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return 6;
  }

  else
  {
    return sub_10076BE9C();
  }
}

uint64_t sub_1002D7F4C()
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1002D811C(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1002D7FE4(uint64_t a1)
{
  result = sub_1002D811C(&qword_1009511F8, type metadata accessor for LargeLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002D803C()
{
  if (qword_10093FD60 != -1)
  {
    swift_once();
  }

  v0 = sub_1007634CC();
  sub_10000A61C(v0, qword_10099E3E8);
  sub_1007634EC();
  sub_1002D811C(&qword_100951200, &type metadata accessor for LargeLockupLayout);
  return sub_10076DBDC();
}

uint64_t sub_1002D811C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchLandingLayoutSectionProvider()
{
  result = qword_100951210;
  if (!qword_100951210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002D81F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v124 = a7;
  v121 = a8;
  v122 = a5;
  v118 = a4;
  v125 = a3;
  v127 = a2;
  v123 = a10;
  v120 = a9;
  v129 = sub_10076341C();
  v109 = *(v129 - 1);
  __chkstk_darwin(v129);
  v128 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v13 - 8);
  v110 = &v106 - v14;
  v108 = sub_10076C38C();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076B5BC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v116 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v22 = sub_10000A5D4(&unk_100946720);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28 = *(v23 + 8);
  v115 = v23 + 8;
  v113 = v28;
  v28(v27, v22);
  v112 = *(v17 + 88);
  v29 = v112(v21, v16);
  v126 = v17;
  v119 = v21;
  if (v29 != enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_20;
  }

  v30 = ASKDeviceTypeGetCurrent();
  v31 = sub_10076FF9C();
  v33 = v32;
  if (v31 == sub_10076FF9C() && v33 == v34)
  {
    goto LABEL_4;
  }

  v36 = sub_10077167C();

  v35 = v126;
  if ((v36 & 1) == 0)
  {
    v30 = ASKDeviceTypeGetCurrent();
    v63 = sub_10076FF9C();
    v65 = v64;
    if (v63 == sub_10076FF9C() && v65 == v66)
    {
LABEL_4:

      v35 = v126;
      goto LABEL_6;
    }

    v67 = sub_10077167C();

    v35 = v126;
    if ((v67 & 1) == 0)
    {
LABEL_20:
      v129 = &v106;
      __chkstk_darwin(v29);
      __chkstk_darwin(v68);
      sub_10076980C();
      v69 = sub_10076981C();
      v70 = v118;
      v71 = a6;
      v117 = a6;
      v72 = v124;
      v128 = v69(a1, sub_1000F79F4, &v106 - 4, v118, v122, v71, v124, v121, v120, v123);
      v73 = v114;
      sub_10076468C();
      swift_getKeyPath();
      v74 = v116;
      sub_10076F49C();

      v113(v73, v22);
      v75 = v112(v74, v16);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v127();
        v62 = sub_10075203C(a1, v76, v70, v122, v117, v72, v121, v120, v123);
      }

      else
      {
        v77 = v128;
        v78 = v117;
        if (v75 != enum case for Shelf.ContentType.ribbonFlow(_:))
        {
          v35 = v126;
          if (v75 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            v62 = v128;
            [v128 setOrthogonalScrollingBehavior:2];
          }

          else
          {
            (*(v126 + 8))(v116, v16);
            v62 = v77;
          }

          goto LABEL_25;
        }

        v79 = v127();
        v62 = sub_100753380(a1, v79, v118, v122, v78, v124, v121, v120, v123);
      }

      v35 = v126;
LABEL_25:
      v21 = v119;
      goto LABEL_26;
    }
  }

LABEL_6:
  v37 = (v127)(v29);
  v38 = *(v37 + 16);
  v39 = _swiftEmptyArrayStorage;
  v114 = v38;
  if (v38)
  {
    v117 = a6;
    v115 = a1;
    v116 = v16;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004BBAA4(0, v38, 0);
    v127 = type metadata accessor for SearchActionContentView(0);
    v39 = aBlock[0];
    v40 = *(v109 + 16);
    v41 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v125 = v37;
    v42 = v37 + v41;
    v43 = *(v109 + 72);
    v44 = v38;
    v45 = (v109 + 8);
    do
    {
      v47 = v128;
      v46 = v129;
      v40(v128, v42, v129);
      v48 = sub_10058FD5C(v47);
      (*v45)(v47, v46);
      aBlock[0] = v39;
      v50 = v39[2];
      v49 = v39[3];
      if (v50 >= v49 >> 1)
      {
        sub_1004BBAA4((v49 > 1), v50 + 1, 1);
        v39 = aBlock[0];
      }

      v39[2] = v50 + 1;
      *&v39[v50 + 4] = v48;
      v42 += v43;
      --v44;
    }

    while (v44);
    v16 = v116;
    v37 = v125;
    v35 = v126;
    v21 = v119;
    a1 = v115;
  }

  v51 = COERCE_DOUBLE(sub_10023428C(v39));
  if ((v52 & 1) != 0 || v51 <= 0.0)
  {

    sub_100016F40(0, &unk_1009632E0);
    v59 = sub_10076469C();
    v60 = *(v59 - 8);
    v61 = v110;
    (*(v60 + 16))(v110, a1, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = sub_10077096C();
    sub_1002D900C(v61);
    goto LABEL_26;
  }

  v125 = v37;
  v53 = *&v51;
  v54 = v107;
  sub_10076460C();
  sub_10076C21C();
  v56 = v55;
  v57 = *(v111 + 8);
  v111 += 8;
  v128 = v57;
  (v57)(v54, v108);
  if (v56 >= 2.0)
  {

    v58 = v122;
    v81 = v114;
    if (v114)
    {
      v82 = sub_10077023C();
      *(v82 + 16) = v81;
      v83 = (v82 + 32);
      if (v81 >= 4)
      {
        v84 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        v83 += v81 & 0x7FFFFFFFFFFFFFFCLL;
        v85 = vdupq_n_s64(v53);
        v86 = (v82 + 48);
        v87 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v86[-1] = v85;
          *v86 = v85;
          v86 += 2;
          v87 -= 4;
        }

        while (v87);
        if (v81 == v84)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v84 = 0;
      }

      v88 = v81 - v84;
      do
      {
        *v83++ = v53;
        --v88;
      }

      while (v88);
    }
  }

  else
  {
    v58 = v122;
  }

LABEL_39:
  v89 = sub_1007665AC();

  v90 = objc_opt_self();
  v129 = v89;
  v91 = [v90 sectionWithGroup:v89];
  swift_getObjectType();
  v92 = v58;
  sub_100768A7C();
  sub_100016F40(0, &qword_100948C70);
  isa = sub_1007701AC().super.isa;

  [v91 setBoundarySupplementaryItems:isa];

  v62 = v91;
  sub_100768A6C();
  sub_100016F40(0, &qword_100949DE8);
  v94 = sub_1007701AC().super.isa;

  [v91 setDecorationItems:v94];

  v95 = v107;
  sub_10076460C();
  sub_10076C31C();
  v97 = v96;
  v99 = v98;
  (v128)(v95, v108);
  sub_10000CF78(v92, v92[3]);
  sub_100768A3C();
  v101 = v100;
  sub_10000CF78(v92, v92[3]);
  sub_100768A5C();
  [v91 setContentInsets:{v101, v97, v102, v99}];
  sub_1007697FC();
  v103 = sub_1007701DC();
  v105 = v104;

  if (v103)
  {
    aBlock[4] = v103;
    aBlock[5] = v105;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100751F08;
    aBlock[3] = &unk_1008907A0;
    v103 = _Block_copy(aBlock);
  }

  v21 = v119;
  v35 = v126;
  [v62 setVisibleItemsInvalidationHandler:v103];
  _Block_release(v103);

LABEL_26:
  (*(v35 + 8))(v21, v16);
  return v62;
}