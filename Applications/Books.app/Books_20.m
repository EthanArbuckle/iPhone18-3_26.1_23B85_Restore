uint64_t sub_10031E344(uint64_t a1)
{
  v56 = sub_1001F1160(&qword_100ADBE58);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v44 = &v39 - v2;
  v47 = sub_100797AA4();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079A874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = sub_100797AB4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10079A864();
  v16 = *(v15 + 16);
  v48 = v14;
  if (v16)
  {
    v40 = v12;
    v41 = v11;
    v42 = a1;
    v43 = v7;
    v61 = _swiftEmptyArrayStorage;
    v57 = v15;
    v55 = v16;
    sub_1003BD418(0, v16, 0);
    v17 = v57;
    v18 = v43;
    v19 = 0;
    v20 = v61;
    v54 = v57 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v52 = v5 + 88;
    v53 = v5 + 16;
    v50 = enum case for Scorer.identity(_:);
    v51 = enum case for Scorer.appleMediaDiscovery(_:);
    v49 = enum case for Scorer.tabi(_:);
    while (v19 < *(v17 + 16))
    {
      v21 = *(v5 + 16);
      v21(v10, v54 + *(v5 + 72) * v19, v4);
      v21(v18, v10, v4);
      v22 = (*(v5 + 88))(v18, v4);
      if (v22 == v51)
      {
        v23 = 1;
      }

      else if (v22 == v50)
      {
        v23 = 2;
      }

      else
      {
        if (v22 != v49)
        {
          goto LABEL_22;
        }

        v23 = 3;
      }

      (*(v5 + 8))(v10, v4);
      v61 = v20;
      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        sub_1003BD418((v24 > 1), v25 + 1, 1);
        v18 = v43;
        v20 = v61;
      }

      ++v19;
      v20[2] = v25 + 1;
      *(v20 + v25 + 32) = v23;
      v17 = v57;
      if (v55 == v19)
      {

        v14 = v48;
        v11 = v41;
        v12 = v40;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_22:
    result = sub_1007A38A4();
    __break(1u);
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
LABEL_15:
    v61 = &off_100A0C758;
    sub_100484400(v20);
    v26 = v61;
    v27 = sub_10031DAD8();
    v29 = v28;
    v60 = 0;
    v30 = v11;
    v31 = v26;
    (*(v12 + 104))(v14, enum case for Domain.standard(_:), v30);
    v32 = v26[2];
    if (v32)
    {
      v55 = v29;
      v57 = v27;
      v61 = _swiftEmptyArrayStorage;
      sub_1003BD3D8(0, v32, 0);
      v33 = v61;
      v34 = 32;
      v35 = v44;
      do
      {
        v59 = *(v31 + v34);
        sub_100797AC4();
        v61 = v33;
        v37 = v33[2];
        v36 = v33[3];
        if (v37 >= v36 >> 1)
        {
          sub_1003BD3D8(v36 > 1, v37 + 1, 1);
          v33 = v61;
        }

        v33[2] = v37 + 1;
        (*(v58 + 32))(v33 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v37, v35, v56);
        ++v34;
        --v32;
      }

      while (v32);
    }

    sub_1001F1160(&qword_100ADBE60);
    (*(v45 + 104))(v46, enum case for Access.public(_:), v47);
    sub_10031EA08();
    return sub_100797AD4();
  }

  return result;
}

unint64_t sub_10031EA08()
{
  result = qword_100ADBE68;
  if (!qword_100ADBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBE68);
  }

  return result;
}

unint64_t sub_10031EA5C()
{
  result = qword_100ADBE78;
  if (!qword_100ADBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBE78);
  }

  return result;
}

unint64_t sub_10031EAB0()
{
  result = qword_100ADBE90;
  if (!qword_100ADBE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBE90);
  }

  return result;
}

uint64_t _s13ConfigurationV15MediaTypeMethodOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13ConfigurationV15MediaTypeMethodOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10031EC84()
{
  result = qword_100ADBE98;
  if (!qword_100ADBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBE98);
  }

  return result;
}

unint64_t sub_10031ED08()
{
  result = qword_100ADBEB0;
  if (!qword_100ADBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBEB0);
  }

  return result;
}

unint64_t sub_10031ED8C()
{
  result = qword_100ADBEC8;
  if (!qword_100ADBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBEC8);
  }

  return result;
}

unint64_t sub_10031EE10()
{
  result = qword_100ADBEE0;
  if (!qword_100ADBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBEE0);
  }

  return result;
}

unint64_t sub_10031EE94()
{
  result = qword_100ADBEF8;
  if (!qword_100ADBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBEF8);
  }

  return result;
}

unint64_t sub_10031EEE8()
{
  result = qword_100ADBF00;
  if (!qword_100ADBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBF00);
  }

  return result;
}

unint64_t sub_10031EF3C()
{
  result = qword_100ADBF08;
  if (!qword_100ADBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBF08);
  }

  return result;
}

unint64_t sub_10031EF90()
{
  result = qword_100ADBF10;
  if (!qword_100ADBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBF10);
  }

  return result;
}

uint64_t sub_10031F050()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_10031F114()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

id _s5Books25ToolbarNavigationProviderC20navigationController_8willShowySo012UINavigationF0C_So06UIViewF0CtF_0(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  v6 = a2;
  sub_10079B9B4();
  v7 = *&v5[OBJC_IVAR___BKToolbarNavigationProvider_currentNavigationController];
  *&v5[OBJC_IVAR___BKToolbarNavigationProvider_currentNavigationController] = a1;
  v8 = a1;

  v9 = OBJC_IVAR___BKToolbarNavigationProvider_observers;
  swift_beginAccess();
  *&v5[v9] = _swiftEmptyArrayStorage;

  sub_10031F560(v6);
  swift_getKeyPath();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = v8;
  sub_100796894();

  swift_beginAccess();
  sub_1007A25C4();
  if (*((*&v5[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  swift_endAccess();
  result = [v6 contentScrollView];
  if (result)
  {
    v14 = result;

    [v14 contentOffset];
    [v14 adjustedContentInset];
    sub_10079B8C4();
  }

  return result;
}

void *sub_10031F3EC(int a1, int a2, id a3)
{
  v4 = [a3 bc_isPresentingCardStack];
  sub_1007A29D4();
  sub_10000A7C4(0, &qword_100AD20A0);
  v5 = sub_1007A33A4();
  sub_1001F1160(&unk_100AD5090);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080EFF0;
  *(v6 + 56) = sub_10000A7C4(0, &qword_100ADC110);
  v7 = sub_10032139C();
  *(v6 + 32) = a3;
  *(v6 + 96) = &type metadata for Int;
  *(v6 + 104) = &protocol witness table for Int;
  *(v6 + 64) = v7;
  *(v6 + 72) = v4;
  v8 = a3;
  sub_10079AB44();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;

    sub_10079B8C4();
  }

  return result;
}

void sub_10031F560(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  sub_100796894();

  v7 = OBJC_IVAR___BKToolbarNavigationProvider_observers;
  swift_beginAccess();
  sub_1007A25C4();
  if (*((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  swift_endAccess();
  swift_getKeyPath();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v10 = v6;
  sub_100796894();

  swift_beginAccess();
  sub_1007A25C4();
  if (*((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  swift_endAccess();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100796894();

  swift_beginAccess();
  sub_1007A25C4();
  if (*((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  swift_endAccess();
  v11 = [v10 navigationItem];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    sub_1001F1160(&unk_100AD8160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100811360;
    swift_getKeyPath();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v13;
    v17 = v11;
    v18 = sub_100796894();

    *(inited + 32) = v18;
    swift_getKeyPath();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v13;
    v21 = v17;
    v22 = sub_100796894();

    *(inited + 40) = v22;
    swift_beginAccess();
    sub_100484514(inited);
    swift_endAccess();
  }

  else
  {

    sub_1001F1160(&unk_100AD8160);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_100816E30;
    swift_getKeyPath();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v10;
    v26 = v10;
    v27 = sub_100796894();

    *(v23 + 32) = v27;
    swift_getKeyPath();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v26;
    v30 = v26;
    v31 = sub_100796894();

    *(v23 + 40) = v31;
    swift_getKeyPath();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v30;
    v34 = v30;
    v35 = sub_100796894();

    *(v23 + 48) = v35;
    swift_getKeyPath();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v34;
    v38 = v34;
    v39 = sub_100796894();

    *(v23 + 56) = v39;
    swift_beginAccess();
    sub_100484514(v23);
    swift_endAccess();
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    [v40 setMetadataDelegate:v2];
  }

  else
  {

    sub_10079B8C4();
  }

  sub_100797294();
  if (swift_dynamicCastClass())
  {
    sub_1003212FC();
    v41 = v10;
    v42 = v2;
    sub_1007972A4();
  }

  v43 = [v10 contentScrollView];
  if (v43)
  {
    v44 = v43;
    [v43 _addScrollViewScrollObserver:v2];
  }
}

id sub_10031FE44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationItem];
  *a2 = result;
  return result;
}

void sub_10031FE80(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1007A2254();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_10031FEE8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1007A2214();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle:?];
}

uint64_t sub_10031FF58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = [a4 navigationItem];
    sub_100599F54();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9B4();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;

    v8 = [a4 navigationItem];
    v9 = [v8 title];

    if (v9)
    {
      sub_1007A2254();
    }

    sub_10079B8C4();
  }

  return result;
}

uint64_t sub_1003200C4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR___BKToolbarNavigationProvider_currentNavigationController);
      v4 = Strong;
      v5 = v3;

      if (v3)
      {
        v6 = [v5 topViewController];

        if (v6)
        {
          [v6 bsui_hasLargeTitle];
        }
      }
    }

    sub_10079B8C4();
  }

  return result;
}

void sub_1003201C8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_10000A7C4(0, &qword_100ADAA20);
    v6 = sub_1007A25E4();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_100320244()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100599F54();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

void sub_1003202D8(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*a1)
  {
    sub_10000A7C4(0, &qword_100ADAA20);
    v7.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  isa = v7.super.isa;
  [v6 *a5];
}

void sub_100320368(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  sub_10000A7C4(0, &qword_100ADC108);
  v5 = sub_1007A25E4();

  *a3 = v5;
}

void sub_1003203D8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  sub_10000A7C4(0, &qword_100ADC108);
  isa = sub_1007A25D4().super.isa;
  [v6 *a5];
}

uint64_t sub_10032045C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = [a4 navigationItem];
    sub_100599F54();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

id ToolbarNavigationProvider.init()()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100ADBF30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = sub_1001F1160(&qword_100ADBF38);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  *&v1[OBJC_IVAR___BKToolbarNavigationProvider_currentNavigationController] = 0;
  v10 = OBJC_IVAR___BKToolbarNavigationProvider__currentTopViewController;
  v23 = 0;
  sub_1001F1160(&qword_100ADBF20);
  sub_10079B964();
  (*(v7 + 32))(&v1[v10], v9, v6);
  v11 = OBJC_IVAR___BKToolbarNavigationProvider__toolbarItems;
  v23 = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100ADBF28);
  sub_10079B964();
  (*(v3 + 32))(&v1[v11], v5, v2);
  v12 = OBJC_IVAR___BKToolbarNavigationProvider_navigationBarStyle;
  sub_1001F1160(&unk_100AD1DC0);
  swift_allocObject();
  *&v1[v12] = sub_10079B8D4();
  v13 = OBJC_IVAR___BKToolbarNavigationProvider_scrollOffsetInsetPublisher;
  sub_1001F1160(&unk_100ADBF60);
  swift_allocObject();
  *&v1[v13] = sub_10079B8D4();
  v14 = OBJC_IVAR___BKToolbarNavigationProvider_dockingViewControllerPublisher;
  sub_1001F1160(&unk_100AD1DD0);
  swift_allocObject();
  *&v1[v14] = sub_10079B8D4();
  v15 = OBJC_IVAR___BKToolbarNavigationProvider_undockingViewControllerPublisher;
  swift_allocObject();
  *&v1[v15] = sub_10079B8D4();
  v16 = OBJC_IVAR___BKToolbarNavigationProvider_hasLargeTitlePublisher;
  sub_1001F1160(&unk_100ADBF70);
  swift_allocObject();
  *&v1[v16] = sub_10079B8D4();
  v17 = OBJC_IVAR___BKToolbarNavigationProvider_navigationBarTitlePublisher;
  sub_1001F1160(&qword_100AD1DE0);
  swift_allocObject();
  *&v1[v17] = sub_10079B8D4();
  v18 = OBJC_IVAR___BKToolbarNavigationProvider_isPresentingCardsPublisher;
  swift_allocObject();
  *&v1[v18] = sub_10079B8D4();
  *&v1[OBJC_IVAR___BKToolbarNavigationProvider_observers] = _swiftEmptyArrayStorage;
  v19 = type metadata accessor for ToolbarNavigationProvider();
  v22.receiver = v1;
  v22.super_class = v19;
  return objc_msgSendSuper2(&v22, "init");
}

uint64_t type metadata accessor for ToolbarNavigationProvider()
{
  result = qword_100ADBFB0;
  if (!qword_100ADBFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ToolbarNavigationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolbarNavigationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100320B94()
{

  sub_10079B8C4();
}

void sub_100320BE8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;

  sub_10079B8C4();
}

uint64_t ToolbarNavigationProvider.bsuiFeedViewControllerNavigationBarStyle(_:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    type metadata accessor for FeedNavigationBarStyle(0);
    result = sub_1007A3AF4();
    __break(1u);
  }

  else
  {

    sub_10079B8C4();
  }

  return result;
}

id ToolbarNavigationProvider.contentScrollViewDidChange(for:)(void *a1)
{
  result = [a1 contentScrollViewForEdge:1];
  if (result)
  {
    v3 = result;
    [result _addScrollViewScrollObserver:v1];

    [v3 contentOffset];
    [v3 adjustedContentInset];
    sub_10079B8C4();
  }

  return result;
}

uint64_t ToolbarNavigationProvider.navigationBarStyleDidUpdate(_:for:)()
{

  sub_10079B8C4();
}

Swift::Void __swiftcall ToolbarNavigationProvider._observeScrollViewDidScroll(_:)(UIScrollView a1)
{

  [(objc_class *)a1.super.super.super.isa contentOffset];
  [(objc_class *)a1.super.super.super.isa adjustedContentInset];
  sub_10079B8C4();
}

void sub_100320EBC()
{
  sub_100205CB8(319, &qword_100ADBFC0, &qword_100ADBF20);
  if (v0 <= 0x3F)
  {
    sub_100205CB8(319, &qword_100ADBFC8, &qword_100ADBF28);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10032109C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10032111C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_10079B9B4();
}

uint64_t sub_100321190@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100321210(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10079B9B4();
}

unint64_t sub_1003212FC()
{
  result = qword_100ADC0F8;
  if (!qword_100ADC0F8)
  {
    type metadata accessor for ToolbarNavigationProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC0F8);
  }

  return result;
}

unint64_t sub_10032139C()
{
  result = qword_100ADC118;
  if (!qword_100ADC118)
  {
    sub_10000A7C4(255, &qword_100ADC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC118);
  }

  return result;
}

uint64_t sub_10032140C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_100321454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003214E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v91 = a1;
  v90 = a3;
  sub_10079CFC4();
  v6 = *(a2 + 16);
  v7 = a2;
  v62 = a2;
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  v68 = sub_10079E5C4();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_10079E0A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v61 - v10;
  v12 = sub_10079C2A4();
  v72 = *(v12 - 8);
  __chkstk_darwin(v12);
  v64 = v61 - v13;
  v14 = sub_10079C2A4();
  v73 = *(v14 - 8);
  __chkstk_darwin(v14);
  v65 = v61 - v15;
  v16 = sub_10079C2A4();
  v76 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = v61 - v17;
  v71 = sub_10079C2A4();
  v79 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = v61 - v18;
  v75 = sub_10079C2A4();
  v81 = *(v75 - 8);
  __chkstk_darwin(v75);
  v70 = v61 - v19;
  v78 = sub_10079C2A4();
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = v61 - v20;
  sub_1001F1234(&qword_100ADC2F8);
  v80 = sub_10079C2A4();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = v61 - v21;
  sub_1001F1234(&qword_100ADC300);
  v22 = sub_10079C2A4();
  v86 = *(v22 - 8);
  __chkstk_darwin(v22);
  v63 = v61 - v23;
  v87 = v24;
  v89 = sub_10079C2A4();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v84 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v85 = v61 - v27;
  v28 = *(v7 + 24);
  v92 = v6;
  v93 = v28;
  v94 = v91;
  v95 = v4;
  sub_10079C8F4();
  sub_10079E094();
  sub_10079D2C4();
  v29 = swift_getWitnessTable();
  v30 = v64;
  sub_10079DBE4();
  (*(v9 + 8))(v11, v8);
  sub_10079D2E4();
  v113 = v29;
  v114 = &protocol witness table for _PaddingLayout;
  v31 = swift_getWitnessTable();
  v32 = v65;
  sub_10079DBE4();
  (*(v72 + 8))(v30, v12);
  sub_10079D2F4();
  v111 = v31;
  v112 = &protocol witness table for _PaddingLayout;
  v33 = swift_getWitnessTable();
  v34 = v66;
  sub_10079DBE4();
  (*(v73 + 8))(v32, v14);
  sub_10079CFE4();
  v109 = v33;
  v110 = &protocol witness table for _PaddingLayout;
  v35 = swift_getWitnessTable();
  v36 = v69;
  sub_10079DBB4();
  (*(v76 + 8))(v34, v16);
  v37 = v62;
  v38 = v61[1];
  sub_10079E474();
  v107 = v35;
  v108 = &protocol witness table for _OpacityEffect;
  v39 = v71;
  v40 = swift_getWitnessTable();
  v41 = v70;
  sub_10079DB14();
  (*(v79 + 8))(v36, v39);
  sub_10079E474();
  v105 = v40;
  v106 = &protocol witness table for _FrameLayout;
  v59 = v75;
  v60 = swift_getWitnessTable();
  v42 = v63;
  v43 = v74;
  sub_10079DB24();
  (*(v81 + 8))(v41, v59);
  LOBYTE(v102) = 1;
  sub_10079E474();
  v103 = v60;
  v104 = &protocol witness table for _FlexFrameLayout;
  v44 = v78;
  v45 = swift_getWitnessTable();
  sub_100324EB8();
  v46 = v77;
  sub_10079D654();
  (*(v82 + 8))(v43, v44);
  v102 = *(v38 + *(v37 + 52));
  v47 = sub_100005920(&qword_100ADC310, &qword_100ADC2F8);
  v100 = v45;
  v101 = v47;
  v48 = v80;
  v49 = swift_getWitnessTable();
  sub_100324F0C();
  sub_10079DC74();
  (*(v83 + 8))(v46, v48);
  if (sub_10079CFE4())
  {
    UIAccessibilityIsReduceMotionEnabled();
  }

  sub_10079E634();
  v50 = sub_100005920(&qword_100ADC320, &qword_100ADC300);
  v98 = v49;
  v99 = v50;
  v51 = v87;
  v52 = swift_getWitnessTable();
  v53 = v84;
  sub_10079D724();
  (*(v86 + 8))(v42, v51);
  v96 = v52;
  v97 = &protocol witness table for _ScaleEffect;
  v54 = v89;
  v55 = swift_getWitnessTable();
  v56 = v85;
  sub_10039232C(v53, v54, v55);
  v57 = *(v88 + 8);
  v57(v53, v54);
  sub_10039232C(v56, v54, v55);
  return (v57)(v56, v54);
}

uint64_t sub_1003221F8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_10079C2A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v26 = &v23 - v8;
  v27 = sub_10079CFC4();
  v23 = *(v27 - 8);
  v9 = v23;
  __chkstk_darwin(v27);
  v25 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v24 = &v23 - v12;
  sub_10079CFD4();
  type metadata accessor for REActionMenuButtonStyle();
  sub_1001F1160(qword_100ADC258);
  sub_10079BDF4();
  sub_10079E474();
  sub_10079DB14();
  v32[2] = a1;
  v32[3] = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v14 = v26;
  sub_10039232C(v6, v3, WitnessTable);
  v15 = v4;
  v16 = *(v4 + 8);
  v16(v6, v3);
  v17 = *(v9 + 16);
  v18 = v24;
  v19 = v25;
  v20 = v27;
  v17(v25, v24, v27);
  v32[0] = v19;
  (*(v15 + 16))(v6, v14, v3);
  v32[1] = v6;
  v31[0] = v20;
  v31[1] = v3;
  v29 = sub_100324F60(&qword_100ADC328, &type metadata accessor for ButtonStyleConfiguration.Label);
  v30 = WitnessTable;
  sub_10038FA94(v32, 2uLL, v31);
  v16(v14, v3);
  v21 = *(v23 + 8);
  v21(v18, v20);
  v16(v6, v3);
  return (v21)(v19, v20);
}

uint64_t sub_10032256C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v85 = sub_10079C3D4();
  __chkstk_darwin(v85);
  v84 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10079E234();
  __chkstk_darwin(v83);
  v82 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADC120);
  __chkstk_darwin(v5 - 8);
  v90 = &v82 - v6;
  v104 = sub_1001F1160(&qword_100ADC128);
  __chkstk_darwin(v104);
  v8 = &v82 - v7;
  v89 = sub_10079BC44();
  v9 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v82 - v12;
  v87 = sub_1001F1160(&qword_100ADC130);
  v14 = *(v87 - 8);
  __chkstk_darwin(v87);
  v16 = &v82 - v15;
  v86 = sub_1001F1160(&qword_100ADC138);
  __chkstk_darwin(v86);
  v18 = &v82 - v17;
  v94 = sub_1001F1160(&qword_100ADC140);
  __chkstk_darwin(v94);
  v98 = &v82 - v19;
  v100 = sub_1001F1160(&qword_100ADC148);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v95 = &v82 - v20;
  v97 = sub_1001F1160(&qword_100ADC150);
  __chkstk_darwin(v97);
  v96 = &v82 - v21;
  v22 = sub_1001F1160(&qword_100ADC158);
  __chkstk_darwin(v22 - 8);
  v93 = &v82 - v23;
  v92 = sub_1001F1160(&qword_100ADC160);
  __chkstk_darwin(v92);
  v91 = &v82 - v24;
  v101 = sub_1001F1160(&qword_100ADC168);
  __chkstk_darwin(v101);
  v103 = &v82 - v25;
  v26 = sub_1001F1160(&qword_100ADC170);
  __chkstk_darwin(v26 - 8);
  v102 = &v82 - v27;
  sub_100323E88(v2, v110);
  v28 = swift_allocObject();
  sub_100258D20(v110, v28 + 16);
  v106 = v2;
  sub_1001F1160(&qword_100ADC178);
  sub_100323F20();
  sub_10079E054();
  v29 = *v2;
  if (*v2)
  {
    v30 = *&v29[OBJC_IVAR___REChromeStyle_controlFont];
    KeyPath = swift_getKeyPath();
    (*(v14 + 32))(v18, v16, v87);
    v32 = &v18[*(v86 + 36)];
    *v32 = KeyPath;
    v32[1] = v30;
    swift_getKeyPath();
    swift_getKeyPath();

    v33 = v29;
    sub_10079B9A4();

    v34 = v88;
    v35 = v89;
    (*(v9 + 104))(v88, enum case for ColorScheme.light(_:), v89);
    LOBYTE(KeyPath) = sub_10079BC34();
    v36 = *(v9 + 8);
    v36(v34, v35);
    v36(v13, v35);
    if (KeyPath)
    {
      v37 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v37 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v38 = v37;
    v39 = v94;

    v40 = v18;
    v41 = v98;
    sub_10020B3C8(v40, v98, &qword_100ADC138);
    *(v41 + *(v39 + 36)) = v38;
    v42 = *(v2 + 120);
    v43 = *(v2 + 128);
    v44 = *(v2 + 96);
    v111 = *(v2 + 80);
    v112 = v44;
    v113 = *(v2 + 112);
    v45 = *(v2 + 32);
    v110[0] = *(v2 + 16);
    v110[1] = v45;
    v46 = *(v2 + 64);
    v110[2] = *(v2 + 48);
    v110[3] = v46;
    v47 = v33;
    v48 = v90;
    sub_100323404(v110, v2, v90);
    *&v114 = 0x4046000000000000;
    sub_1002582C8();
    sub_10079BDE4();
    v49 = v104;
    *&v8[*(v104 + 36)] = v47;
    *&v8[v49[10]] = v42;
    *&v8[v49[11]] = v43;
    sub_10020B3C8(v48, &v8[v49[12]], &qword_100ADC120);
    if (sub_10079E404())
    {
      v50 = enum case for RoundedCornerStyle.continuous(_:);
      v51 = sub_10079C9E4();
      (*(*(v51 - 8) + 104))(v82, v50, v51);
      sub_100324F60(&qword_100AE41B0, &type metadata accessor for Capsule);
    }

    else
    {
      v52 = *(v85 + 20);
      v53 = enum case for RoundedCornerStyle.continuous(_:);
      v54 = sub_10079C9E4();
      v55 = v84;
      (*(*(v54 - 8) + 104))(&v84[v52], v53, v54);
      __asm { FMOV            V0.2D, #16.0 }

      *v55 = _Q0;
      sub_100324F60(&qword_100AE4510, &type metadata accessor for RoundedRectangle);
    }

    *&v8[v49[13]] = sub_10079E2F4();
    sub_10032411C();
    sub_100005920(&qword_100ADC1E8, &qword_100ADC128);
    v61 = v95;
    sub_10079D6B4();
    sub_100007840(v8, &qword_100ADC128);
    sub_100007840(v41, &qword_100ADC140);
    if (*(v2 + 152))
    {
      v62 = 0.0;
    }

    else
    {
      v62 = 1.0;
    }

    v63 = *(&v111 + 1);
    v65 = v112;
    v64 = v113;
    v114 = v110[0];
    v66 = v96;
    (*(v99 + 32))(v96, v61, v100);
    *(v66 + *(v97 + 36)) = v62;
    sub_1003242B8();
    v67 = v93;
    sub_10079DA04();
    sub_100007840(v66, &qword_100ADC150);
    v68 = v91;
    sub_10020B3C8(v67, v91, &qword_100ADC158);
    v69 = (v68 + *(v92 + 36));
    *v69 = v63;
    v69[1] = v65;
    v70 = v68;
    v71 = v103;
    sub_10020B3C8(v70, v103, &qword_100ADC160);
    v72 = (v71 + *(v101 + 36));
    *v72 = *(&v65 + 1);
    v72[1] = v64;
    sub_1001F1160(&unk_100AE0B30);
    v73 = swift_allocObject();
    v74 = v114;
    *(v73 + 16) = xmmword_10080B690;
    *(v73 + 32) = v74;

    sub_1002BB1A4(&v114, v108);
    sub_1003243E0();
    sub_100206ECC();
    v75 = v102;
    sub_10079DA34();

    sub_100007840(v71, &qword_100ADC168);
    v107 = 0;
    sub_10079DFE4();
    v76 = v108[0];
    v77 = v109;
    v78 = v75;
    v79 = v105;
    sub_10020B3C8(v78, v105, &qword_100ADC170);
    result = sub_1001F1160(&qword_100ADC220);
    v81 = v79 + *(result + 36);
    *v81 = v42;
    *(v81 + 8) = v76;
    *(v81 + 16) = v77;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100324F60(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

__n128 sub_100323280@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(a1 + 16);
  sub_100206ECC();

  v3 = sub_10079D5D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_10079E484();
  sub_10079C414();
  *&v13[55] = v17;
  *&v13[71] = v18;
  *&v13[87] = v19;
  *&v13[103] = v20;
  *&v13[7] = v14;
  *&v13[23] = v15;
  *&v13[39] = v16;
  *(a2 + 129) = *&v13[64];
  *(a2 + 145) = *&v13[80];
  *(a2 + 161) = *&v13[96];
  *(a2 + 65) = *v13;
  *(a2 + 81) = *&v13[16];
  result = *&v13[32];
  *(a2 + 97) = *&v13[32];
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 2;
  *(a2 + 48) = 0;
  *(a2 + 56) = v11;
  *(a2 + 64) = 0;
  *(a2 + 176) = *(&v20 + 1);
  *(a2 + 113) = *&v13[48];
  return result;
}

uint64_t sub_100323404@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v97 = a3;
  v4 = sub_10079E534();
  v90 = *(v4 - 8);
  __chkstk_darwin(v4);
  v89 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = sub_10079BC44();
  v98 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v91 = &v76[-v8];
  v96 = sub_1001F1160(&qword_100ADC228);
  __chkstk_darwin(v96);
  v87 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v88 = &v76[-v11];
  v94 = sub_1001F1160(&qword_100ADC230);
  __chkstk_darwin(v94);
  v95 = &v76[-v12];
  v13 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v76[-v14];
  v16 = sub_10079D4D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1001F1160(&qword_100ADC238);
  v21 = __chkstk_darwin(v20);
  v23 = &v76[-v22];
  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(v17 + 104))(v19, enum case for Font.TextStyle.body(_:), v16, v21);
    v53 = sub_10079D3A4();
    (*(*(v53 - 8) + 56))(v15, 1, 1, v53);

    sub_10079D434();
    sub_100007840(v15, &unk_100AD1FC0);
    (*(v17 + 8))(v19, v16);
    v54 = sub_10079D384();

    v99 = v25;
    v100 = v24;
    v101 = v54;
    sub_100324680();
    sub_10079D944();

    v55 = &qword_100ADC238;
    sub_1000077D8(v23, v95, &qword_100ADC238);
    swift_storeEnumTagMultiPayload();
    sub_1003245CC(&qword_100ADC240, &qword_100ADC238, &unk_10081B4A8, sub_100324680);
    sub_1003246D4();
    sub_10079CCA4();
    v56 = v23;
    return sub_100007840(v56, v55);
  }

  v84 = v4;
  v85 = v20;
  v99 = v25;
  v100 = v24;
  sub_100206ECC();

  v26 = sub_10079D5D4();
  v28 = v27;
  v30 = v29;
  v31 = sub_10079D594();
  v79 = v32;
  v34 = v33;
  v78 = v35;
  sub_10020B430(v26, v28, v30 & 1);

  (*(v17 + 104))(v19, enum case for Font.TextStyle.body(_:), v16);
  v36 = enum case for Font.Design.rounded(_:);
  v37 = sub_10079D3A4();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v15, v36, v37);
  (*(v38 + 56))(v15, 0, 1, v37);
  sub_10079D434();
  sub_100007840(v15, &unk_100AD1FC0);
  (*(v17 + 8))(v19, v16);
  v39 = v79;
  v82 = sub_10079D5A4();
  v81 = v40;
  v80 = v41;
  v83 = v42;

  sub_10020B430(v31, v39, v34 & 1);

  v43 = *v86;
  if (*v86)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v43;
    v45 = v91;
    sub_10079B9A4();

    v46 = enum case for ColorScheme.light(_:);
    v47 = v98;
    v48 = *(v98 + 104);
    v49 = v92;
    v50 = v93;
    v48(v92, enum case for ColorScheme.light(_:), v93);
    v51 = sub_10079BC34();
    v52 = *(v47 + 8);
    v52(v49, v50);
    v98 = v47 + 8;
    v52(v45, v50);
    if (v51)
    {
      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    sub_10079DE24();

    v57 = v80;
    v58 = v82;
    v59 = v81;
    v79 = sub_10079D564();
    v78 = v60;
    v77 = v61;
    v86 = v62;

    sub_10020B430(v58, v59, v57 & 1);

    swift_getKeyPath();
    swift_getKeyPath();
    v63 = v44;
    v64 = v91;
    sub_10079B9A4();

    v66 = v92;
    v65 = v93;
    v48(v92, v46, v93);
    v67 = sub_10079BC34();

    v52(v66, v65);
    v52(v64, v65);
    v69 = v89;
    v68 = v90;
    v70 = &enum case for BlendMode.plusDarker(_:);
    if ((v67 & 1) == 0)
    {
      v70 = &enum case for BlendMode.plusLighter(_:);
    }

    v71 = v84;
    (*(v90 + 104))(v89, *v70, v84);
    v72 = v87;
    (*(v68 + 32))(&v87[*(v96 + 36)], v69, v71);
    v73 = v78;
    *v72 = v79;
    *(v72 + 8) = v73;
    *(v72 + 16) = v77 & 1;
    *(v72 + 24) = v86;
    v55 = &qword_100ADC228;
    v74 = v88;
    sub_10020B3C8(v72, v88, &qword_100ADC228);
    sub_1000077D8(v74, v95, &qword_100ADC228);
    swift_storeEnumTagMultiPayload();
    sub_1003245CC(&qword_100ADC240, &qword_100ADC238, &unk_10081B4A8, sub_100324680);
    sub_1003246D4();
    sub_10079CCA4();
    v56 = v74;
    return sub_100007840(v56, v55);
  }

  type metadata accessor for ChromeStyle();
  sub_100324F60(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_100323EC0()
{
  v1 = *(v0 + 72);
  Strong = swift_unknownObjectWeakLoadStrong();
  v1(Strong, *(v0 + 160));

  return swift_unknownObjectRelease();
}

unint64_t sub_100323F20()
{
  result = qword_100ADC180;
  if (!qword_100ADC180)
  {
    sub_1001F1234(&qword_100ADC178);
    sub_100323FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC180);
  }

  return result;
}

unint64_t sub_100323FAC()
{
  result = qword_100ADC188;
  if (!qword_100ADC188)
  {
    sub_1001F1234(&qword_100ADC190);
    sub_100324064();
    sub_100005920(&qword_100ADC1B8, &qword_100ADC1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC188);
  }

  return result;
}

unint64_t sub_100324064()
{
  result = qword_100ADC198;
  if (!qword_100ADC198)
  {
    sub_1001F1234(&qword_100ADC1A0);
    sub_100005920(&qword_100ADC1A8, &qword_100ADC1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC198);
  }

  return result;
}

unint64_t sub_10032411C()
{
  result = qword_100ADC1C8;
  if (!qword_100ADC1C8)
  {
    sub_1001F1234(&qword_100ADC140);
    sub_1003241D4();
    sub_100005920(&qword_100ADC1E0, &qword_100AF4490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC1C8);
  }

  return result;
}

unint64_t sub_1003241D4()
{
  result = qword_100ADC1D0;
  if (!qword_100ADC1D0)
  {
    sub_1001F1234(&qword_100ADC138);
    sub_100005920(&qword_100ADC1D8, &qword_100ADC130);
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC1D0);
  }

  return result;
}

unint64_t sub_1003242B8()
{
  result = qword_100ADC1F0;
  if (!qword_100ADC1F0)
  {
    sub_1001F1234(&qword_100ADC150);
    sub_1001F1234(&qword_100ADC140);
    sub_1001F1234(&qword_100ADC128);
    sub_10032411C();
    sub_100005920(&qword_100ADC1E8, &qword_100ADC128);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC1F0);
  }

  return result;
}

unint64_t sub_1003243E0()
{
  result = qword_100ADC1F8;
  if (!qword_100ADC1F8)
  {
    sub_1001F1234(&qword_100ADC168);
    sub_10032446C();
    sub_100324578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC1F8);
  }

  return result;
}

unint64_t sub_10032446C()
{
  result = qword_100ADC200;
  if (!qword_100ADC200)
  {
    sub_1001F1234(&qword_100ADC160);
    sub_1003245CC(&qword_100ADC208, &qword_100ADC158, &unk_10081B3C0, sub_1003242B8);
    sub_100324524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC200);
  }

  return result;
}

unint64_t sub_100324524()
{
  result = qword_100ADC210;
  if (!qword_100ADC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC210);
  }

  return result;
}

unint64_t sub_100324578()
{
  result = qword_100ADC218;
  if (!qword_100ADC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC218);
  }

  return result;
}

uint64_t sub_1003245CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    a4();
    sub_100324F60(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100324680()
{
  result = qword_100ADC248;
  if (!qword_100ADC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC248);
  }

  return result;
}

unint64_t sub_1003246D4()
{
  result = qword_100ADC250;
  if (!qword_100ADC250)
  {
    sub_1001F1234(&qword_100ADC228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC250);
  }

  return result;
}

void sub_100324760()
{
  sub_100324D54();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChromeStyle();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100324818(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1001F1160(qword_100ADC258);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 8;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(v9 + 64) + ((v14 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v8 == v13)
  {
    v24 = *(v7 + 48);

    return v24(a1, v8, v6);
  }

  else
  {
    v25 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v14 + ((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
    }

    else
    {
      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_100324A84(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1001F1160(qword_100ADC258);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((*(v11 + 64) + ((v13 + 8 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 >= a3)
  {
    v19 = 0;
    v20 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v11 + 64) + ((v13 + 8 + ((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v15 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v10 == v15)
      {
        v23 = *(v9 + 56);

        v23(a1, a2, v10, v8);
      }

      else
      {
        v24 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) != 0)
        {
          v26 = *(v11 + 56);

          v26((v13 + 8 + ((((v24 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }
      }

      return;
    }
  }

  if (((*(v11 + 64) + ((v13 + 8 + ((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((*(v11 + 64) + ((v13 + 8 + ((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v15 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

void sub_100324D54()
{
  if (!qword_100ADC2E0)
  {
    sub_1002582C8();
    v0 = sub_10079BE04();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADC2E0);
    }
  }
}

unint64_t sub_100324DB0()
{
  result = qword_100ADC2E8;
  if (!qword_100ADC2E8)
  {
    sub_1001F1234(&qword_100ADC220);
    sub_1003245CC(&qword_100ADC2F0, &qword_100ADC170, &unk_10081B3D8, sub_1003243E0);
    sub_1002746A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC2E8);
  }

  return result;
}

unint64_t sub_100324EB8()
{
  result = qword_100ADC308;
  if (!qword_100ADC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC308);
  }

  return result;
}

unint64_t sub_100324F0C()
{
  result = qword_100ADC318;
  if (!qword_100ADC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC318);
  }

  return result;
}

uint64_t sub_100324F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SampleHeaderView()
{
  result = qword_100ADC388;
  if (!qword_100ADC388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032501C()
{
  sub_1003251C4();
  if (v0 <= 0x3F)
  {
    sub_100325258(319, &qword_100ADC3A8, &unk_100ADC3B0, &unk_10081B5B8, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100325258(319, &qword_100AD6F10, &unk_100ADB6B0, &unk_100816980, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1003252BC(319, &qword_100AD6F18, &type metadata accessor for ContentSizeCategory);
        if (v3 <= 0x3F)
        {
          sub_100247C8C();
          if (v4 <= 0x3F)
          {
            sub_1003252BC(319, &qword_100ADB690, &type metadata accessor for ColorScheme);
            if (v5 <= 0x3F)
            {
              sub_10024BBD0();
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

void sub_1003251C4()
{
  if (!qword_100ADC398)
  {
    type metadata accessor for SampleHeaderViewModel();
    sub_10032A5C8(&qword_100ADC3A0, type metadata accessor for SampleHeaderViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADC398);
    }
  }
}

void sub_100325258(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001F1234(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1003252BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10079BCD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10032532C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SampleHeaderView();
  sub_1000077D8(v1 + *(v10 + 28), v9, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100325514@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SampleHeaderView();
  sub_1000077D8(v1 + *(v10 + 32), v9, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003256FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4E0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SampleHeaderView();
  sub_1000077D8(v1 + *(v10 + 36), v9, &unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CAE4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100325904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB730);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SampleHeaderView();
  sub_1000077D8(v1 + *(v10 + 44), v9, &unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100325B0C()
{
  v1 = sub_10079CEE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v46 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1001F1160(&unk_100ADBB30);
  __chkstk_darwin(v4);
  v54 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v43[-v7];
  v9 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v9 - 8);
  v45 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v52 = &v43[-v12];
  __chkstk_darwin(v13);
  v53 = &v43[-v14];
  __chkstk_darwin(v15);
  v56 = &v43[-v16];
  __chkstk_darwin(v17);
  v19 = &v43[-v18];
  __chkstk_darwin(v20);
  v22 = &v43[-v21];
  v51 = v0;
  sub_10032532C(&v43[-v21]);
  v23 = v2[13];
  v49 = enum case for UserInterfaceSizeClass.regular(_:);
  v48 = v23;
  v23(v19);
  v47 = v2[7];
  v47(v19, 0, 1, v1);
  v50 = v4;
  v24 = *(v4 + 48);
  sub_1000077D8(v22, v8, &unk_100ADB6B0);
  sub_1000077D8(v19, &v8[v24], &unk_100ADB6B0);
  v57 = v2;
  v25 = v2[6];
  if (v25(v8, 1, v1) == 1)
  {
    v55 = v25;
    sub_100007840(v19, &unk_100ADB6B0);
    sub_100007840(v22, &unk_100ADB6B0);
    if (v55(&v8[v24], 1, v1) == 1)
    {
      sub_100007840(v8, &unk_100ADB6B0);
      goto LABEL_8;
    }

LABEL_6:
    v27 = v8;
LABEL_14:
    sub_100007840(v27, &unk_100ADBB30);
    goto LABEL_15;
  }

  v26 = v56;
  sub_1000077D8(v8, v56, &unk_100ADB6B0);
  if (v25(&v8[v24], 1, v1) == 1)
  {
    sub_100007840(v19, &unk_100ADB6B0);
    sub_100007840(v22, &unk_100ADB6B0);
    (v57[1])(v26, v1);
    goto LABEL_6;
  }

  v55 = v25;
  v28 = &v8[v24];
  v29 = v46;
  (v57[4])(v46, v28, v1);
  sub_10032A5C8(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
  v44 = sub_1007A2124();
  v30 = v57[1];
  v30(v29, v1);
  sub_100007840(v19, &unk_100ADB6B0);
  sub_100007840(v22, &unk_100ADB6B0);
  v30(v56, v1);
  sub_100007840(v8, &unk_100ADB6B0);
  if ((v44 & 1) == 0)
  {
LABEL_15:
    v36 = 0;
    return v36 & 1;
  }

LABEL_8:
  v31 = v53;
  sub_100325514(v53);
  v32 = v52;
  v48(v52, v49, v1);
  v47(v32, 0, 1, v1);
  v33 = *(v50 + 48);
  v34 = v54;
  sub_1000077D8(v31, v54, &unk_100ADB6B0);
  sub_1000077D8(v32, &v34[v33], &unk_100ADB6B0);
  v35 = v55;
  if (v55(v34, 1, v1) != 1)
  {
    v37 = v45;
    sub_1000077D8(v34, v45, &unk_100ADB6B0);
    if (v35(&v34[v33], 1, v1) != 1)
    {
      v39 = v32;
      v40 = v57;
      v41 = v46;
      (v57[4])(v46, &v34[v33], v1);
      sub_10032A5C8(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
      v36 = sub_1007A2124();
      v42 = v40[1];
      v42(v41, v1);
      sub_100007840(v39, &unk_100ADB6B0);
      sub_100007840(v31, &unk_100ADB6B0);
      v42(v37, v1);
      sub_100007840(v34, &unk_100ADB6B0);
      return v36 & 1;
    }

    sub_100007840(v32, &unk_100ADB6B0);
    sub_100007840(v31, &unk_100ADB6B0);
    (v57[1])(v37, v1);
    goto LABEL_13;
  }

  sub_100007840(v32, &unk_100ADB6B0);
  sub_100007840(v31, &unk_100ADB6B0);
  if (v35(&v34[v33], 1, v1) != 1)
  {
LABEL_13:
    v27 = v34;
    goto LABEL_14;
  }

  sub_100007840(v34, &unk_100ADB6B0);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_1003262CC@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v2 = sub_1001F1160(&qword_100ADC418);
  __chkstk_darwin(v2 - 8);
  v63 = &v57 - v3;
  v4 = sub_10079D0B4();
  __chkstk_darwin(v4 - 8);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079D124();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079CEE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100ADBB30);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v14 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v14 - 8);
  v60 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    swift_getKeyPath();
    v71 = v23;
    sub_10032A5C8(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    left = *(v23 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 8);
    bottom = *(v23 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 16);
    right = *(v23 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 24);
  }

  else
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v68 = v1;
  sub_100325514(v21);
  (*(v9 + 104))(v18, enum case for UserInterfaceSizeClass.compact(_:), v8);
  (*(v9 + 56))(v18, 0, 1, v8);
  v26 = *(v11 + 48);
  sub_1000077D8(v21, v13, &unk_100ADB6B0);
  sub_1000077D8(v18, &v13[v26], &unk_100ADB6B0);
  v27 = *(v9 + 48);
  if (v27(v13, 1, v8) == 1)
  {
    sub_100007840(v18, &unk_100ADB6B0);
    sub_100007840(v21, &unk_100ADB6B0);
    v28 = v27(&v13[v26], 1, v8);
    v29 = v68;
    if (v28 == 1)
    {
      sub_100007840(v13, &unk_100ADB6B0);
LABEL_18:
      v37 = 0;
      v34 = 0;
      v38 = *(v29 + *(type metadata accessor for SampleHeaderView() + 52));
      v36 = 1;
      v33 = v38;
LABEL_19:
      v44 = v63;
      sub_10079D084();
      v45 = sub_10079D094();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      sub_10079D0A4();
      sub_100007840(v44, &qword_100ADC418);
      v46 = v64;
      sub_10079D114();
      KeyPath = swift_getKeyPath();
      v48 = v67;
      *v67 = KeyPath;
      sub_1001F1160(&unk_100ADB740);
      swift_storeEnumTagMultiPayload();
      v49 = sub_1001F1160(&qword_100ADC420);
      v50 = v48 + v49[10];
      *v50 = 0;
      v50[8] = 1;
      v51 = (v48 + v49[14]);
      *v51 = v33;
      *(v51 + 8) = v34;
      v52 = (v48 + v49[11]);
      *v52 = bottom;
      *(v52 + 8) = 0;
      v53 = (v48 + v49[15]);
      *v53 = v38;
      *(v53 + 8) = v37;
      sub_100326BE8(v29, v36, v46, v48 + v49[9]);
      v54 = v48 + v49[12];
      *v54 = 0;
      v54[8] = 1;
      v55 = v48 + v49[13];
      *v55 = 0;
      v55[8] = 1;
      return (*(v65 + 8))(v46, v66);
    }

    goto LABEL_9;
  }

  v30 = v60;
  sub_1000077D8(v13, v60, &unk_100ADB6B0);
  if (v27(&v13[v26], 1, v8) == 1)
  {
    sub_100007840(v18, &unk_100ADB6B0);
    sub_100007840(v21, &unk_100ADB6B0);
    (*(v9 + 8))(v30, v8);
    v29 = v68;
LABEL_9:
    sub_100007840(v13, &unk_100ADBB30);
    goto LABEL_10;
  }

  v39 = v59;
  (*(v9 + 32))(v59, &v13[v26], v8);
  sub_10032A5C8(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
  v58 = right;
  v40 = v30;
  v41 = sub_1007A2124();
  v42 = *(v9 + 8);
  v42(v39, v8);
  sub_100007840(v18, &unk_100ADB6B0);
  sub_100007840(v21, &unk_100ADB6B0);
  v43 = v40;
  right = v58;
  v42(v43, v8);
  sub_100007840(v13, &unk_100ADB6B0);
  v29 = v68;
  if (v41)
  {
    goto LABEL_18;
  }

LABEL_10:
  v31 = *(v29 + *(type metadata accessor for SampleHeaderView() + 40));
  if (v31)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v31;
    sub_10079B9A4();

    if (v70)
    {
      v33 = left;
    }

    else
    {
      v33 = 0.0;
    }

    v34 = v70 ^ 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v32;
    sub_10079B9A4();

    v36 = 0;
    v37 = v69;
    if (v69)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = right;
    }

    goto LABEL_19;
  }

  type metadata accessor for ChromeStyle();
  sub_10032A5C8(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_100326BE8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a4;
  v36 = a2;
  v5 = sub_10079E3B4();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100ADC428);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v34 = sub_1001F1160(&qword_100ADC430);
  __chkstk_darwin(v34);
  v13 = &v33 - v12;
  v33 = sub_1001F1160(&qword_100ADC438);
  __chkstk_darwin(v33);
  v15 = &v33 - v14;
  v35 = sub_1001F1160(&qword_100ADC440);
  __chkstk_darwin(v35);
  v17 = &v33 - v16;
  v18 = sub_10079CB24();
  v19 = &v11[*(v9 + 44)];
  *v19 = v18;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_1001F1160(&qword_100ADC448);
  sub_1003270F8(a1, &v19[*(v20 + 44)]);
  v21 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v22 = sub_10079CAE4();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v11, v21, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  *&v11[*(v9 + 48)] = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4E0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SampleHeaderView();
  sub_10079E474();
  sub_10079BE54();
  sub_10020B3C8(v11, v13, &qword_100ADC428);
  v24 = &v13[*(v34 + 36)];
  v25 = v42;
  *v24 = v41;
  *(v24 + 1) = v25;
  *(v24 + 2) = v43;
  sub_10079E3A4();
  v26 = &v15[*(v33 + 36)];
  sub_10079E3D4();
  (*(v37 + 8))(v7, v38);
  LOBYTE(v21) = sub_10079D294();
  v26[*(sub_1001F1160(&qword_100ADC450) + 36)] = v21;
  sub_10020B3C8(v13, v15, &qword_100ADC430);
  v27 = &v17[*(v35 + 36)];
  v28 = sub_10079D124();
  (*(*(v28 - 8) + 16))(v27, v39, v28);
  *&v27[*(sub_1001F1160(&qword_100ADC458) + 36)] = 256;
  sub_10020B3C8(v15, v17, &qword_100ADC438);
  v29 = sub_10079DE44();
  v30 = v40;
  sub_10020B3C8(v17, v40, &qword_100ADC440);
  v31 = v30 + *(sub_1001F1160(&qword_100ADC460) + 36);
  *v31 = v29;
  *(v31 + 8) = xmmword_10081B590;
  *(v31 + 24) = 0x401C000000000000;
  sub_10079DE14();
}

double sub_1003270F8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v36 = sub_100796CF4();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v35 = sub_1007A21D4();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_10079D484();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  if (sub_100325B0C())
  {
    sub_10079D4C4();
  }

  else
  {
    sub_10079D354();
    sub_10079D3F4();
    sub_10079D464();
  }

  (*(v15 + 104))(v17, enum case for Font.Leading.tight(_:), v14);
  v33 = sub_10079D4A4();

  (*(v15 + 8))(v17, v14);
  if (sub_100325B0C())
  {
    v18 = sub_10079D374();
  }

  else
  {
    v18 = sub_10079D354();
  }

  v19 = v18;
  sub_1007A2154();
  sub_100796C94();
  v20 = v35;
  (*(v8 + 16))(v10, v13, v35);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = v36;
  (*(v3 + 16))(v34, v7, v36);
  v24 = sub_1007A22D4();
  v26 = v25;
  (*(v3 + 8))(v7, v23);
  (*(v8 + 8))(v13, v20);
  v27 = sub_10079C8F4();
  v28 = v37;
  *v37 = v27;
  v28[1] = 0x4024000000000000;
  *(v28 + 16) = 0;
  v29 = sub_1001F1160(&qword_100ADC468);
  sub_100327548(v38, v33, v19, v24, v26, v28 + *(v29 + 44));

  LOBYTE(v24) = sub_10079D294();

  v30 = v28 + *(sub_1001F1160(&qword_100ADC470) + 36);
  *v30 = v24;
  result = 0.0;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  return result;
}

uint64_t sub_100327548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v134 = a5;
  v130 = a4;
  v147 = a1;
  v140 = a6;
  v9 = sub_1001F1160(&qword_100ADC478);
  v141 = *(v9 - 8);
  v142 = v9;
  v139 = *(v141 + 64);
  __chkstk_darwin(v9);
  v146 = &v124 - v10;
  v138 = sub_1001F1160(&qword_100ADC480);
  __chkstk_darwin(v138);
  v137 = &v124 - v11;
  v12 = sub_1001F1160(&qword_100ADC488);
  v135 = *(v12 - 8);
  v136 = v12;
  __chkstk_darwin(v12);
  v145 = &v124 - v13;
  v14 = sub_1001F1160(&qword_100AD1DF8);
  v132 = *(v14 - 8);
  v133 = v14;
  __chkstk_darwin(v14);
  v143 = &v124 - v15;
  v144 = sub_1001F1160(&qword_100ADC490);
  __chkstk_darwin(v144);
  v131 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v129 = &v124 - v18;
  v128 = sub_1001F1160(&qword_100ADC498);
  v19 = *(v128 - 1);
  __chkstk_darwin(v128);
  v21 = &v124 - v20;
  v22 = sub_1001F1160(&qword_100ADC4A0);
  __chkstk_darwin(v22);
  v24 = &v124 - v23;
  *v24 = sub_10079C8F4();
  *(v24 + 1) = 0x4024000000000000;
  v24[16] = 0;
  v25 = sub_1001F1160(&qword_100ADC4A8);
  sub_1003287C0(a1, a2, a3, &v24[*(v25 + 44)]);
  v26 = sub_10079D074();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079D044();
  v30 = sub_100005920(&qword_100ADC4B0, &qword_100ADC4A0);
  sub_10079D9A4();
  (*(v27 + 8))(v29, v26);
  sub_100007840(v24, &qword_100ADC4A0);
  v31 = v130;
  v32 = v134;
  v148 = v130;
  v149 = v134;
  v150 = v22;
  v151 = v30;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v33 = v129;
  v34 = v128;
  sub_10079D8E4();
  (*(v19 + 8))(v21, v34);
  sub_1001F1160(&unk_100AE0B30);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100812CF0;
  *(v35 + 32) = v31;
  *(v35 + 40) = v32;
  v36 = v147;
  v37 = v147[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9A4();

  v38 = v149;
  *(v35 + 48) = v148;
  *(v35 + 56) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v37;
  sub_10079B9A4();

  v39 = v149;
  *(v35 + 64) = v148;
  *(v35 + 72) = v39;
  v40 = v131;
  sub_10079C264();

  sub_100007840(v33, &qword_100ADC490);
  v41 = type metadata accessor for SampleHeaderView();
  sub_1001F1160(&qword_100AE3E70);
  sub_10079CF44();
  v129 = sub_100329C78();
  sub_10079D9B4();

  v42 = sub_100007840(v40, &qword_100ADC490);
  v131 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_100329DA4(v36, &v124 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1007A26F4();
  v45 = sub_1007A26E4();
  v46 = *(v43 + 80);
  v47 = ~v46;
  v48 = (v46 + 32) & ~v46;
  v130 = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = v45;
  *(v49 + 24) = &protocol witness table for MainActor;
  sub_100329E08(&v124 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48);
  v50 = sub_1007A2744();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v124 - v53;
  sub_1007A2704();
  if (sub_100787D6C(2, 26, 4, 0))
  {
    v127 = sub_10079C0D4();
    v128 = &v124;
    v126 = *(v127 - 8);
    __chkstk_darwin(v127);
    v125 = &v124 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    v148 = 0;
    v149 = 0xE000000000000000;
    sub_1007A3744(17);

    v148 = 0xD000000000000029;
    v149 = 0x80000001008CB8E0;
    v150 = 90;
    v152._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v152);

    v124 = &v124;
    v57 = __chkstk_darwin(v56);
    (*(v51 + 16))(&v124 - v53, &v124 - v53, v50, v57);
    v58 = v125;
    sub_10079C0C4();
    (*(v51 + 8))(v54, v50);
    v59 = v133;
    v60 = v145;
    (v132[4])(v145, v143, v133);
    v61 = sub_1001F1160(&qword_100AD1E00);
    v62 = (*(v126 + 32))(&v60[*(v61 + 36)], v58, v127);
  }

  else
  {
    v63 = sub_1001F1160(&qword_100AD1E08);
    v64 = v145;
    v65 = &v145[*(v63 + 36)];
    v66 = sub_10079BF74();
    (*(v51 + 32))(&v65[*(v66 + 20)], &v124 - v53, v50);
    *v65 = &unk_10081B840;
    *(v65 + 1) = v49;
    v59 = v133;
    v62 = (v132[4])(v64, v143, v133);
  }

  v143 = &v124;
  __chkstk_darwin(v62);
  v133 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = &v124 - v133;
  sub_100329DA4(v147, &v124 - v133);
  v68 = (v130 + 16) & v47;
  v69 = swift_allocObject();
  sub_100329E08(v67, v69 + v68);
  v70 = sub_10079CF24();
  v132 = &v124;
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = &v124 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079CF14();
  v148 = v144;
  v149 = v129;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v148 = v59;
  v149 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v75 = v136;
  v76 = v137;
  v77 = v145;
  sub_10079D934();

  (*(v71 + 8))(v73, v70);
  v78 = (v135[1])(v77, v75);
  __chkstk_darwin(v78);
  v79 = &v124 - v133;
  v80 = v147;
  sub_100329DA4(v147, &v124 - v133);
  v81 = swift_allocObject();
  sub_100329E08(v79, v81 + v68);
  sub_10032A37C();
  sub_10079D764();

  sub_100007840(v76, &qword_100ADC480);
  v82 = sub_1001F1160(&qword_100ADC4C8);
  v145 = &v124;
  v137 = v82;
  v83 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v144 = &v124 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = &v124;
  __chkstk_darwin(v84);
  v143 = v85;
  v86 = (&v124 - v85);
  v87 = sub_1001F1160(&qword_100ADC4D0);
  v136 = &v124;
  __chkstk_darwin(v87);
  v89 = &v124 - v88;
  v90 = sub_1001F1160(&qword_100ADC4D8);
  v135 = &v124;
  v91 = v90 - 8;
  __chkstk_darwin(v90);
  v93 = (&v124 - v92);
  v94 = v80;
  v95 = sub_100329AF0();
  KeyPath = swift_getKeyPath();
  v97 = (v93 + *(v91 + 44));
  v98 = sub_1001F1160(&qword_100ADB368);
  sub_100325904(v97 + *(v98 + 28));
  *v97 = KeyPath;
  *v93 = v95;
  v99 = swift_getKeyPath();
  v100 = *(v94 + *(v131 + 10));
  if (v100)
  {
    v101 = v99;
    v102 = &v89[*(v87 + 36)];
    v103 = *(sub_1001F1160(&qword_100AD8380) + 28);
    v104 = v100;
    sub_1006C63C8(&v102[v103]);

    *v102 = v101;
    sub_10020B3C8(v93, v89, &qword_100ADC4D8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    LOBYTE(v103) = v148;
    v105 = swift_getKeyPath();
    v106 = swift_allocObject();
    *(v106 + 16) = v103;
    sub_10020B3C8(v89, v86, &qword_100ADC4D0);
    v107 = &v86[*(v137 + 9)];
    *v107 = v105;
    v107[1] = sub_100258B0C;
    v107[2] = v106;
    v108 = v144;
    v109 = sub_10020B3C8(v86, v144, &qword_100ADC4C8);
    v147 = &v124;
    v110 = __chkstk_darwin(v109);
    v112 = &v124 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
    v113 = v141;
    v114 = v142;
    v115 = *(v141 + 16);
    v116 = v146;
    v117 = v115(v112, v146, v142, v110);
    v139 = &v124;
    __chkstk_darwin(v117);
    v118 = (&v124 - v143);
    sub_1000077D8(v108, &v124 - v143, &qword_100ADC4C8);
    v119 = v140;
    (v115)(v140, v112, v114);
    v120 = sub_1001F1160(&qword_100ADC4E0);
    v121 = v119 + *(v120 + 48);
    *v121 = 0;
    *(v121 + 8) = 1;
    sub_1000077D8(v118, v119 + *(v120 + 64), &qword_100ADC4C8);
    sub_100007840(v108, &qword_100ADC4C8);
    v122 = *(v113 + 8);
    v122(v116, v114);
    sub_100007840(v118, &qword_100ADC4C8);
    return (v122)(v112, v114);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10032A5C8(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003287C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v30 = a1;
  v35 = a4;
  v4 = sub_1001F1160(&qword_100ADC4F8);
  __chkstk_darwin(v4 - 8);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10079DF34();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100ADC500);
  __chkstk_darwin(v13 - 8);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v29 = &v29 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10079DF14();
  (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
  v17 = sub_10079DF94();

  (*(v10 + 8))(v12, v9);
  sub_10079E474();
  sub_10079C414();
  v41 = 1;
  *&v40[54] = v45;
  *&v40[70] = v46;
  *&v40[86] = v47;
  *&v40[102] = v48;
  *&v40[6] = v42;
  *&v40[22] = v43;
  *&v40[38] = v44;
  v36 = v17;
  *v37 = 1;
  *&v37[66] = *&v40[64];
  *&v37[82] = *&v40[80];
  *&v37[98] = *&v40[96];
  *&v37[18] = *&v40[16];
  *&v37[34] = *&v40[32];
  *&v37[50] = *&v40[48];
  *&v37[112] = *(&v48 + 1);
  *&v37[2] = *v40;
  sub_1001F1160(&qword_100ADC508);
  sub_10032A4B8();
  v18 = v29;
  sub_10079D944();
  v38[6] = *&v37[80];
  v38[7] = *&v37[96];
  v39 = *&v37[112];
  v38[2] = *&v37[16];
  v38[3] = *&v37[32];
  v38[4] = *&v37[48];
  v38[5] = *&v37[64];
  v38[0] = v36;
  v38[1] = *v37;
  sub_100007840(v38, &qword_100ADC508);
  v19 = sub_10079CB34();
  v20 = type metadata accessor for SampleHeaderView();
  v21 = v30;
  v22 = *(v30 + *(v20 + 56));
  *v8 = v19;
  *(v8 + 1) = v22;
  v8[16] = 0;
  v23 = sub_1001F1160(&qword_100ADC528);
  sub_100328CB8(v21, v34, &v8[*(v23 + 44)]);
  v24 = v31;
  sub_1000077D8(v18, v31, &qword_100ADC500);
  v25 = v32;
  sub_100033A08(v8, v32);
  v26 = v35;
  sub_1000077D8(v24, v35, &qword_100ADC500);
  v27 = sub_1001F1160(&qword_100ADC530);
  sub_100033A08(v25, v26 + *(v27 + 48));
  sub_100007840(v8, &qword_100ADC4F8);
  sub_100007840(v18, &qword_100ADC500);
  sub_100007840(v25, &qword_100ADC4F8);
  return sub_100007840(v24, &qword_100ADC500);
}

uint64_t sub_100328CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v95[2] = a2;
  v110 = a3;
  v100 = sub_10079CAE4();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v97 = v95 - v6;
  v106 = sub_10079CEE4();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v96 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1001F1160(&unk_100ADBB30);
  __chkstk_darwin(v103);
  v105 = v95 - v8;
  v9 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v9 - 8);
  v101 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = v95 - v12;
  __chkstk_darwin(v13);
  v113 = v95 - v14;
  v102 = sub_1001F1160(&qword_100AE1810);
  __chkstk_darwin(v102);
  v16 = v95 - v15;
  v17 = sub_1001F1160(&qword_100ADC538);
  v108 = *(v17 - 8);
  v109 = v17;
  __chkstk_darwin(v17);
  v107 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v114 = v95 - v20;
  v21 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v95[1] = v21;
  sub_10079B9A4();

  v95[0] = sub_100206ECC();
  v22 = sub_10079D5D4();
  v24 = v23;
  v26 = v25;
  v27 = sub_10079D5A4();
  v29 = v28;
  v31 = v30;
  sub_10020B430(v22, v24, v26 & 1);

  v32 = *(type metadata accessor for SampleHeaderView() + 40);
  v111 = a1;
  v33 = *(a1 + v32);
  if (v33)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v33;
    sub_10079B9A4();

    v35 = sub_10079D564();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_10020B430(v27, v29, v31 & 1);

    KeyPath = swift_getKeyPath();
    v115 = v35;
    v116 = v37;
    v43 = v39 & 1;
    v117 = v39 & 1;
    v118 = v41;
    v119 = KeyPath;
    v120 = 2;
    v121 = 0;
    v44 = enum case for DynamicTypeSize.accessibility2(_:);
    v45 = sub_10079C0E4();
    (*(*(v45 - 8) + 104))(v16, v44, v45);
    sub_10032A5C8(&qword_100AE1830, &type metadata accessor for DynamicTypeSize);
    if (sub_1007A2124())
    {
      sub_1001F1160(&qword_100ADC1A0);
      sub_100324064();
      sub_100005920(&qword_100ADBBF8, &qword_100AE1810);
      sub_10079D7E4();
      sub_100007840(v16, &qword_100AE1810);
      sub_10020B430(v35, v37, v43);

      v46 = v113;
      sub_10032532C(v113);
      v47 = v104;
      v48 = v112;
      v49 = v106;
      (*(v104 + 104))(v112, enum case for UserInterfaceSizeClass.regular(_:), v106);
      (*(v47 + 56))(v48, 0, 1, v49);
      v50 = *(v103 + 48);
      v51 = v105;
      sub_1000077D8(v46, v105, &unk_100ADB6B0);
      sub_1000077D8(v48, v51 + v50, &unk_100ADB6B0);
      v52 = *(v47 + 48);
      if (v52(v51, 1, v49) == 1)
      {
        sub_100007840(v48, &unk_100ADB6B0);
        sub_100007840(v46, &unk_100ADB6B0);
        if (v52(v51 + v50, 1, v49) == 1)
        {
          sub_100007840(v51, &unk_100ADB6B0);
LABEL_10:
          v58 = v97;
          sub_1003256FC(v97);
          v59 = v99;
          v60 = v98;
          v61 = v100;
          (*(v99 + 104))(v98, enum case for ContentSizeCategory.accessibilityMedium(_:), v100);
          v62 = sub_10032A6B0(v58, v60);
          v63 = *(v59 + 8);
          v63(v60, v61);
          v63(v58, v61);
          if (v62)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_10079B9A4();

            v64 = sub_10079D5D4();
            v66 = v65;
            v68 = v67;
            v69 = sub_10079D5A4();
            v71 = v70;
            v73 = v72;
            sub_10020B430(v64, v66, v68 & 1);

            _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
            v74 = sub_10079D564();
            v76 = v75;
            v78 = v77;
            v80 = v79;

            sub_10020B430(v69, v71, v73 & 1);

            v81 = swift_getKeyPath();
            v112 = v76;
            v113 = v74;
            v82 = v78 & 1;
            sub_1001F1894(v74, v76, v78 & 1);
            v83 = v80;

            v84 = 1;
LABEL_13:
            v86 = v107;
            v85 = v108;
            v87 = *(v108 + 16);
            v88 = v109;
            v87(v107, v114, v109);
            v89 = v110;
            v87(v110, v86, v88);
            v90 = &v89[*(sub_1001F1160(&qword_100ADC540) + 48)];
            v92 = v112;
            v91 = v113;
            sub_10032A610(v113, v112, v82, v83);
            sub_10032A660(v91, v92, v82, v83);
            *v90 = v91;
            *(v90 + 1) = v92;
            *(v90 + 2) = v82;
            *(v90 + 3) = v83;
            *(v90 + 4) = v81;
            *(v90 + 5) = v84;
            v90[48] = 0;
            v93 = *(v85 + 8);
            v93(v114, v88);
            sub_10032A660(v91, v92, v82, v83);
            return (v93)(v86, v88);
          }

LABEL_12:
          v112 = 0;
          v113 = 0;
          v82 = 0;
          v83 = 0;
          v81 = 0;
          v84 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v53 = v101;
        sub_1000077D8(v51, v101, &unk_100ADB6B0);
        if (v52(v51 + v50, 1, v49) != 1)
        {
          v54 = v51 + v50;
          v55 = v96;
          (*(v47 + 32))(v96, v54, v49);
          sub_10032A5C8(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
          v56 = sub_1007A2124();
          v57 = *(v47 + 8);
          v57(v55, v49);
          sub_100007840(v112, &unk_100ADB6B0);
          sub_100007840(v113, &unk_100ADB6B0);
          v57(v53, v49);
          sub_100007840(v51, &unk_100ADB6B0);
          if ((v56 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_10;
        }

        sub_100007840(v112, &unk_100ADB6B0);
        sub_100007840(v113, &unk_100ADB6B0);
        (*(v47 + 8))(v53, v49);
      }

      sub_100007840(v51, &unk_100ADBB30);
      goto LABEL_12;
    }

    __break(1u);
  }

  type metadata accessor for ChromeStyle();
  sub_10032A5C8(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_100329938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  sub_1007A26F4();
  *(v3 + 24) = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_1003299D0, v5, v4);
}

uint64_t sub_1003299D0()
{

  type metadata accessor for SampleHeaderView();
  *(v0 + 32) = 1;
  sub_1001F1160(&qword_100AE3E70);
  sub_10079CF34();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100329A74(uint64_t a1)
{
  sub_1000077D8(a1 + 24, v2, &qword_100ADC4F0);
  if (!v3)
  {
    return sub_100007840(v2, &qword_100ADC4F0);
  }

  sub_10000E3E8(v2, v3);
  sub_10046EE0C();
  return sub_1000074E0(v2);
}

uint64_t sub_100329AF0()
{
  v0 = sub_1001F1160(&qword_100AEE330);
  __chkstk_darwin(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v5)
  {
    sub_100009864(v4, v3);
    sub_100007840(v4, &qword_100AD4FA0);
    sub_10000E3E8(v3, v3[3]);
    v1 = sub_100221B70();
    sub_1000074E0(v3);
    return v1;
  }

  else
  {
    sub_100007840(v4, &qword_100AD4FA0);
    sub_10079BDC4();
    sub_100005920(&qword_100ADC4E8, &qword_100AEE330);
    return sub_10079E1B4();
  }
}

unint64_t sub_100329C78()
{
  result = qword_100ADC4B8;
  if (!qword_100ADC4B8)
  {
    sub_1001F1234(&qword_100ADC490);
    sub_1001F1234(&qword_100ADC4A0);
    sub_100005920(&qword_100ADC4B0, &qword_100ADC4A0);
    swift_getOpaqueTypeConformance2();
    sub_10032A5C8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC4B8);
  }

  return result;
}

uint64_t sub_100329DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100329E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100329E6C()
{
  v2 = *(type metadata accessor for SampleHeaderView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002812C;

  return sub_100329938(v4, v5, v0 + v3);
}

uint64_t sub_100329F4C()
{
  v1 = type metadata accessor for SampleHeaderView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 48))
  {
    sub_1000074E0(v2 + 24);
  }

  v3 = v1[7];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079CEE4();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079CEE4();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[9];
  sub_1001F1160(&unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10079CAE4();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[11];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079BC44();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v2 + v1[12];
  v14 = sub_10079D024();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  sub_1001F1160(&qword_100AE3E70);

  return swift_deallocObject();
}

unint64_t sub_10032A37C()
{
  result = qword_100ADC4C0;
  if (!qword_100ADC4C0)
  {
    sub_1001F1234(&qword_100ADC480);
    sub_1001F1234(&qword_100AD1DF8);
    sub_1001F1234(&qword_100ADC490);
    sub_100329C78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10032A5C8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC4C0);
  }

  return result;
}

unint64_t sub_10032A4B8()
{
  result = qword_100ADC510;
  if (!qword_100ADC510)
  {
    sub_1001F1234(&qword_100ADC508);
    sub_10032A544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC510);
  }

  return result;
}

unint64_t sub_10032A544()
{
  result = qword_100ADC518;
  if (!qword_100ADC518)
  {
    sub_1001F1234(&qword_100ADC520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC518);
  }

  return result;
}

uint64_t sub_10032A5C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10032A610(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001F1894(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10032A660(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10020B430(result, a2, a3 & 1);
  }

  return result;
}

BOOL sub_10032A6B0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_10079CAE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_10032AACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10032ABD0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10032AB30()
{
  sub_10032AB6C();
  sub_10079C834();
  return v1;
}

unint64_t sub_10032AB6C()
{
  result = qword_100ADC550;
  if (!qword_100ADC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC550);
  }

  return result;
}

unint64_t sub_10032ABD0()
{
  result = qword_100ADC558;
  if (!qword_100ADC558)
  {
    type metadata accessor for BookLayoutMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC558);
  }

  return result;
}

unint64_t sub_10032AC2C()
{
  result = qword_100ADC560;
  if (!qword_100ADC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC560);
  }

  return result;
}

unint64_t sub_10032AC84()
{
  result = qword_100ADC568;
  if (!qword_100ADC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC568);
  }

  return result;
}

uint64_t sub_10032AD10()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23060);
  v21 = sub_100008B98(v3, qword_100B23060);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_10032B0B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1438 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23060);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10032B15C()
{
  v0 = sub_1001F1160(&qword_100ADC588);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100ADC590);
  __chkstk_darwin(v1);
  sub_1007961D4();
  v3._countAndFlagsBits = 0x2065736F6C43;
  v3._object = 0xE600000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100ADC598);
  sub_1007961B4();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1007961C4(v4);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_10032B2FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1007A26F4();
  *(v1 + 24) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10032B394, v3, v2);
}

uint64_t sub_10032B394()
{

  sub_100795D24();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032B400@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10032B474();
  *a1 = result;
  return result;
}

uint64_t sub_10032B428(uint64_t a1)
{
  v2 = sub_1002A4170();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10032B474()
{
  v52 = sub_100796274();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0);
  v2 = __chkstk_darwin(v1 - 8);
  v49 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v48 = v39 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v5 - 8);
  v63 = v39 - v6;
  v62 = sub_1007967F4();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_100796CF4();
  v9 = *(v42 - 8);
  v10 = __chkstk_darwin(v42);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v39 - v13;
  v15 = sub_1007A21D4();
  v53 = v15;
  v55 = *(v15 - 8);
  v16 = v55;
  v17 = __chkstk_darwin(v15);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v39 - v20;
  v44 = sub_100796814();
  v43 = *(v44 - 8);
  v22 = __chkstk_darwin(v44);
  v45 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v46 = v39 - v24;
  v47 = sub_1001F1160(&qword_100ADC580);
  sub_1007A2154();
  sub_100796C94();
  v25 = *(v16 + 16);
  v60 = v16 + 16;
  v61 = v25;
  v25(v19, v21, v15);
  v26 = *(v9 + 16);
  v56 = v9 + 16;
  v57 = v26;
  v54 = v12;
  v27 = v42;
  v26(v12, v14, v42);
  v59 = type metadata accessor for BundleFinder();
  *v8 = v59;
  v58 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v40 = *(v64 + 104);
  v64 += 104;
  v28 = v62;
  v40(v8);
  sub_100796834();
  v29 = *(v9 + 8);
  v39[1] = v9 + 8;
  v29(v14, v27);
  v41 = v29;
  v55 = *(v55 + 8);
  v30 = v53;
  (v55)(v21, v53);
  sub_1007A2154();
  sub_100796C94();
  v61(v19, v21, v30);
  v57(v54, v14, v27);
  *v8 = v59;
  v31 = v28;
  v32 = v40;
  (v40)(v8, v58, v31);
  v33 = v63;
  sub_100796834();
  v29(v14, v27);
  v34 = v53;
  (v55)(v21, v53);
  (*(v43 + 56))(v33, 0, 1, v44);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v61(v19, v21, v34);
  v57(v54, v14, v27);
  *v8 = v59;
  (v32)(v8, v58, v62);
  sub_100796834();
  v41(v14, v27);
  (v55)(v21, v34);
  v35 = v48;
  sub_100795CF4();
  v36 = sub_100795CE4();
  v37 = *(*(v36 - 8) + 56);
  v37(v35, 0, 1, v36);
  v37(v49, 1, 1, v36);
  (*(v51 + 104))(v50, enum case for InputConnectionBehavior.default(_:), v52);
  sub_10020E834();
  return sub_100795E74();
}

uint64_t sub_10032BD44(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[32])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10032BD88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_10032BDF0()
{
  result = qword_100ADC5A0;
  if (!qword_100ADC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC5A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudiobookNowPlayingDownloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudiobookNowPlayingDownloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10032BF98()
{
  result = qword_100ADC5A8;
  if (!qword_100ADC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC5A8);
  }

  return result;
}

uint64_t type metadata accessor for RESliderView()
{
  result = qword_100ADC610;
  if (!qword_100ADC610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032C060()
{
  sub_100247C8C();
  if (v0 <= 0x3F)
  {
    sub_10032C3F8(319, &qword_100ADC620, &type metadata for SliderState, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_10032C3F8(319, &qword_100ADC628, &type metadata for RESliderView.PressState, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_100247D20();
        if (v3 <= 0x3F)
        {
          sub_10032C394(319, &qword_100ADAAE0, &unk_100ADAE20, &unk_10081BDC0, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10079ACE4();
            if (v5 <= 0x3F)
            {
              sub_10032C3F8(319, &qword_100ADC630, &type metadata for Bool, &type metadata accessor for GestureState);
              if (v6 <= 0x3F)
              {
                sub_10032C33C();
                if (v7 <= 0x3F)
                {
                  sub_10032C3F8(319, &qword_100ADC640, &type metadata for Double, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_10032C394(319, &qword_100ADC648, &qword_100ADC650, &unk_10082C350, &type metadata accessor for State);
                    if (v9 <= 0x3F)
                    {
                      sub_10032C394(319, &unk_100ADC658, &unk_100ADB5C0, &unk_100816880, &type metadata accessor for State);
                      if (v10 <= 0x3F)
                      {
                        sub_10032C3F8(319, &qword_100AE3F00, &type metadata for Bool, &type metadata accessor for State);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_10032C33C()
{
  if (!qword_100ADC638)
  {
    type metadata accessor for CGPoint(255);
    v0 = sub_10079BDB4();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADC638);
    }
  }
}

void sub_10032C394(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001F1234(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10032C3F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10032C464@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v90 = sub_1001F1160(&qword_100ADC6D0);
  __chkstk_darwin(v90);
  v4 = &v70 - v3;
  v88 = type metadata accessor for RESliderView();
  v93 = *(v88 - 8);
  __chkstk_darwin(v88);
  v98 = v5;
  v94 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10079BBF4();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1001F1160(&qword_100ADC6D8);
  __chkstk_darwin(v79);
  v92 = &v70 - v7;
  v75 = sub_1001F1160(&qword_100ADC6E0);
  __chkstk_darwin(v75);
  v9 = (&v70 - v8);
  v77 = sub_1001F1160(&qword_100ADC6E8);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v70 - v10;
  v99 = sub_1001F1160(&qword_100ADC6F0);
  __chkstk_darwin(v99);
  OpaqueTypeConformance2 = &v70 - v12;
  v80 = sub_1001F1160(&qword_100ADC6F8);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v96 = &v70 - v13;
  v82 = sub_1001F1160(&qword_100ADC700);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v97 = &v70 - v14;
  v86 = sub_1001F1160(&qword_100ADC708);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v70 - v15;
  v83 = sub_1001F1160(&qword_100ADC710);
  __chkstk_darwin(v83);
  v89 = &v70 - v16;
  v17 = floor(*(v2 + 40) * *(v2 + 16));
  v18 = *(v2 + 25);
  v87 = v4;
  if (v18 == 1)
  {
    v19 = sub_10079E454();
  }

  else if (*(v2 + 27) == *(v2 + 26))
  {
    v19 = sub_10079E484();
  }

  else
  {
    v19 = sub_10079E494();
  }

  *v9 = v19;
  v9[1] = v20;
  v21 = sub_1001F1160(&qword_100ADC718);
  sub_10032F344(v2, v9 + *(v21 + 44), v17);
  sub_10079E414();
  sub_1001F1160(&qword_100ADC720);
  sub_1001F1160(&qword_100ADC728);
  sub_100005920(&qword_100ADC730, &qword_100ADC6E0);
  v22 = v2;
  sub_10032FB28();
  sub_10032FC0C();
  sub_10079DC54();
  sub_100007840(v9, &qword_100ADC6E0);
  sub_10079E474();
  v23 = 1;
  sub_10079BE54();
  v24 = OpaqueTypeConformance2;
  (*(v76 + 32))(OpaqueTypeConformance2, v11, v77);
  v25 = &v24[v99[9]];
  v26 = v105;
  *v25 = v104;
  *(v25 + 1) = v26;
  *(v25 + 2) = v106;
  v27 = *(v2 + 64);
  v28 = *(v2 + 72);
  v77 = *(v2 + 56);
  v100 = v77;
  v101 = v27;
  LOBYTE(v102) = v28;
  sub_1001F1160(&qword_100ADC748);
  sub_10079E1C4();
  if (v103 == 3)
  {
    v29 = v71;
    sub_10079BBE4();
    v30 = v94;
    sub_10032FFB0(v2, v94);
    v31 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v32 = swift_allocObject();
    sub_100330014(v30, v32 + v31);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100330160;
    *(v33 + 24) = v32;
    v34 = v73;
    sub_10079E294();
    v2 = v22;

    (*(v72 + 8))(v29, v34);
    v23 = 0;
  }

  v35 = sub_1001F1160(&qword_100ADC750);
  v36 = 1;
  v37 = v92;
  (*(*(v35 - 8) + 56))(v92, v23, 1, v35);
  sub_10079BCE4();
  v38 = sub_10032FCF0();
  v39 = sub_10032FE50();
  v40 = v79;
  v41 = OpaqueTypeConformance2;
  sub_10079DB94();
  sub_100007840(v37, &qword_100ADC6D8);
  sub_100033DEC(v41);
  v100 = v77;
  v101 = v27;
  LOBYTE(v102) = v28;
  sub_10079E1C4();
  v42 = v87;
  if (v103 != 3)
  {
    sub_10032D3B8(v87);
    v36 = 0;
  }

  v43 = sub_1001F1160(&qword_100ADC770);
  (*(*(v43 - 8) + 56))(v42, v36, 1, v43);
  sub_10079BCE4();
  v100 = v99;
  v101 = v40;
  *&v102 = v38;
  *(&v102 + 1) = v39;
  v99 = &opaque type descriptor for <<opaque return type of View.gesture<A>(_:including:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_10032FF00();
  v45 = v80;
  v46 = v90;
  v47 = v96;
  sub_10079DB94();
  sub_100007840(v42, &qword_100ADC6D0);
  (*(v78 + 8))(v47, v45);
  v48 = v2 + *(v88 + 72);
  v49 = *(v48 + 8);
  LOBYTE(v100) = *v48;
  v101 = v49;
  v102 = *(v48 + 16);
  sub_1001F1160(&qword_100ADC788);
  sub_10079BD94();
  v50 = v94;
  sub_10032FFB0(v2, v94);
  v51 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v52 = swift_allocObject();
  v74 = v2;
  sub_100330014(v50, v52 + v51);
  v100 = v45;
  v101 = v46;
  *&v102 = OpaqueTypeConformance2;
  *(&v102 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v53 = v84;
  v54 = v82;
  v55 = v97;
  sub_10079DC24();

  (*(v81 + 8))(v55, v54);
  sub_10032FFB0(v2, v50);
  v56 = swift_allocObject();
  sub_100330014(v50, v56 + v51);
  v57 = objc_opt_self();
  v58 = [v57 defaultCenter];
  v59 = v83;
  v60 = v89;
  sub_1007A2E84();

  v61 = swift_allocObject();
  *(v61 + 16) = sub_1003300F8;
  *(v61 + 24) = v56;
  (*(v85 + 32))(v60, v53, v86);
  v62 = (v60 + *(v59 + 56));
  *v62 = sub_1003300FC;
  v62[1] = v61;
  sub_10032FFB0(v74, v50);
  v63 = swift_allocObject();
  sub_100330014(v50, v63 + v51);
  v64 = [v57 defaultCenter];
  v65 = sub_1001F1160(&qword_100ADC790);
  v66 = v91;
  sub_1007A2E84();

  v67 = swift_allocObject();
  *(v67 + 16) = sub_100330740;
  *(v67 + 24) = v63;
  result = sub_100033E90(v60, v66);
  v69 = (v66 + *(v65 + 56));
  *v69 = sub_100330750;
  v69[1] = v67;
  return result;
}

uint64_t sub_10032D204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1001F1160(&qword_100ADC720) + 36);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_10079C9E4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(sub_1001F1160(&unk_100AE42C0) + 36)) = 256;
  return sub_1000077D8(a1, a2, &qword_100ADC6E0);
}

uint64_t sub_10032D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_1001F1160(&qword_100ADC728) + 36));
  v5 = *(sub_10079C3D4() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = sub_10079C9E4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  *&v4[*(sub_1001F1160(&qword_100AD97F8) + 36)] = 256;
  return sub_1000077D8(a1, a2, &qword_100ADC6E0);
}

uint64_t sub_10032D3B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for RESliderView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = v6;
  v8 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10079CD04();
  __chkstk_darwin(v9);
  v10 = sub_1001F1160(&qword_100ADC7A8);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_1001F1160(&qword_100ADC7B0);
  v14 = *(v13 - 8);
  v41 = v13;
  v42 = v14;
  __chkstk_darwin(v13);
  v40 = &v37 - v15;
  sub_10079CF74();
  sub_10079BC64();
  v16 = v1 + *(v4 + 80);
  v17 = *(v16 + 8);
  LOBYTE(v47) = *v16;
  *(&v47 + 1) = v17;
  v48[0] = *(v16 + 16);
  sub_1001F1160(&qword_100ADC788);
  sub_10079BDA4();
  v18 = v44;
  v19 = v45;
  v37 = *v46;
  v20 = sub_1001F1160(&qword_100ADC7B8);
  v21 = &v12[*(v20 + 44)];
  *v21 = v18;
  *(v21 + 1) = v19;
  *(v21 + 1) = v37;
  v22 = &v12[*(v20 + 48)];
  *v22 = sub_10032DE6C;
  *(v22 + 1) = 0;
  v23 = v2 + *(v4 + 84);
  v24 = *(v23 + 16);
  v47 = *v23;
  *&v48[0] = v24;
  *(v48 + 8) = *(v23 + 24);
  sub_1001F1160(&qword_100ADC7C0);
  sub_10079BDA4();
  v25 = v44;
  v26 = v45;
  v27 = *v46;
  v37 = *&v46[8];
  v38 = v2;
  sub_10032FFB0(v2, v8);
  v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v39 = v7;
  v29 = swift_allocObject();
  sub_100330014(v8, v29 + v28);
  v30 = &v12[*(v10 + 44)];
  *v30 = v25;
  *(v30 + 1) = v26;
  *(v30 + 2) = v27;
  *(v30 + 24) = v37;
  v31 = &v12[*(v10 + 48)];
  *v31 = sub_1003301EC;
  *(v31 + 1) = v29;
  sub_10032FFB0(v2, v8);
  v32 = swift_allocObject();
  sub_100330014(v8, v32 + v28);
  sub_100005920(&qword_100ADC7C8, &qword_100ADC7A8);
  sub_100330658(&qword_100AD7BB8, &type metadata accessor for DragGesture.Value);
  v33 = v40;
  sub_10079E2A4();

  sub_100007840(v12, &qword_100ADC7A8);
  sub_10032FFB0(v38, v8);
  v34 = swift_allocObject();
  sub_100330014(v8, v34 + v28);
  sub_100005920(&qword_100ADC7D0, &qword_100ADC7B0);
  v35 = v41;
  sub_10079E294();

  return (*(v42 + 8))(v33, v35);
}

void sub_10032D8D0(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  if ((*a2 & 1) == 0)
  {
    type metadata accessor for RESliderView();
    sub_1001F1160(&qword_100ADC5B0);
    sub_10079DFF4();
    v6 = sub_100796BB4();
    v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
    sub_100007840(v5, &unk_100ADB5C0);
    if (v7 != 1)
    {
      v8 = sub_10079ACC4();
      v9 = sub_1007A29A4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Cancelling drag after touch cancellation", v10, 2u);
      }

      sub_10032DA60();
    }
  }
}

uint64_t sub_10032DA60()
{
  sub_1001F1160(&qword_100ADC748);
  sub_10079E1C4();
  if (v2 == 1 || (result = sub_10079E1C4(), v2 == 2))
  {
    sub_10032F100();
    return (*(v0 + 104))(0, *(v0 + 16), *(v0 + 16), 0.0);
  }

  return result;
}

BOOL sub_10032DB20()
{
  v1 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v33 - v2;
  v4 = sub_100796BB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + 25);
  sub_10079BC84();
  v13 = v12;
  v15 = v14;
  sub_10079BCA4();
  v17 = v15 - v16;
  v19 = v13 - v18;
  if (v11)
  {
    v19 = v17;
  }

  v20 = fabs(v19);
  type metadata accessor for RESliderView();
  sub_1001F1160(&qword_100ADC5B0);
  sub_10079DFF4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007840(v3, &unk_100ADB5C0);
    v21 = 0.0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_100796BA4();
    sub_100796AA4();
    v21 = v22;
    v23 = *(v5 + 8);
    v23(v7, v4);
    v23(v10, v4);
  }

  v24 = v21 <= 0.5 && v20 < 8.0;
  v25 = sub_10079ACC4();
  v26 = sub_1007A2994();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315650;
    if (v24)
    {
      v29 = 7364980;
    }

    else
    {
      v29 = 1734439524;
    }

    if (v24)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = 0xE400000000000000;
    }

    v31 = sub_1000070F4(v29, v30, &v34);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v21;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v25, v26, "Touch interpreted as %s.  duration: %f, delta %f", v27, 0x20u);
    sub_1000074E0(v28);
  }

  return v24;
}

uint64_t sub_10032DE78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a1;
  v5 = sub_1007A1C54();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RESliderView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  sub_1001F1160(&qword_100ADC5B0);
  sub_10079DFF4();
  v17 = sub_100796BB4();
  v18 = (*(*(v17 - 8) + 48))(v16, 1, v17);
  sub_100007840(v16, &unk_100ADB5C0);
  if (v18 == 1)
  {
    sub_100017E74();
    v19 = sub_1007A2D74();
    sub_10032FFB0(a4, &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v21 = swift_allocObject();
    sub_100330014(&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v53 = sub_1003305F0;
    v54 = v21;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1003323D0;
    v52 = &unk_100A16328;
    v22 = _Block_copy(&aBlock);

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100330658(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    v23 = v45;
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v22);

    (*(v44 + 8))(v7, v23);
    (*(v42 + 8))(v10, v43);
  }

  result = sub_10032DB20();
  if ((result & 1) == 0)
  {
    sub_10079BCA4();
    v25 = v46;
    *v46 = v26;
    v25[1] = v27;
    v28 = *(a4 + 56);
    v29 = *(a4 + 64);
    v30 = *(a4 + 72);
    aBlock = v28;
    v50 = v29;
    LOBYTE(v51) = v30;
    sub_1001F1160(&qword_100ADC748);
    sub_10079E1C4();
    if (*(a4 + 24) == 1)
    {
      v31 = v48;
      aBlock = v28;
      v50 = v29;
      LOBYTE(v51) = v30;
      sub_10079E1C4();
      if (v48 != 2)
      {
        v32 = *(a4 + 25);
        sub_10079BCA4();
        if (!v32)
        {
          v33 = v34;
        }

        if (*(a4 + 48) > v33)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }
      }
    }

    else
    {
      v31 = 2;
    }

    sub_10079BC84();
    v36 = v35;
    v38 = v37;
    sub_10079BCA4();
    return sub_10032EC60(v31, v36, v38, v39, v40);
  }

  return result;
}

uint64_t sub_10032E3A8(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v13[-v6];
  v8 = (a1 + *(type metadata accessor for RESliderView() + 92));
  v9 = *v8;
  v10 = *(v8 + 1);
  v13[16] = v9;
  v14 = v10;
  v13[15] = 0;
  sub_1001F1160(&qword_100ADB850);
  sub_10079E004();
  sub_100796BA4();
  v11 = sub_100796BB4();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  sub_1000077D8(v7, v4, &unk_100ADB5C0);
  sub_1001F1160(&qword_100ADC5B0);
  sub_10079E004();
  return sub_100007840(v7, &unk_100ADB5C0);
}

uint64_t sub_10032E540()
{
  sub_1001F1160(&qword_100ADC7A0);
  v0 = sub_10079E1C4();
  if (!v4)
  {
    __chkstk_darwin(v0);
    sub_10079E514();
    sub_10079BF94();

    sub_10079E4C4();
    sub_10079E4D4();

    __chkstk_darwin(v1);
    sub_10079BF94();
  }

  type metadata accessor for RESliderView();
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  if ((v4 & 1) == 0 && !sub_10032DB20())
  {
    sub_10079E004();
    v2 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:2];
    [v2 impactOccurred];
  }

  sub_10079BCA4();
  sub_1001F1160(&qword_100ADC798);
  return sub_10079E004();
}

uint64_t sub_10032E7B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079BCB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v56 - v9;
  v11 = type metadata accessor for RESliderView();
  v12 = (a2 + *(v11 + 92));
  v13 = *v12;
  v14 = *(v12 + 1);
  v60 = v13;
  LOBYTE(v65) = v13;
  v59 = v14;
  *(&v65 + 1) = v14;
  LOBYTE(v62) = 0;
  v58 = sub_1001F1160(&qword_100ADB850);
  sub_10079E004();
  v61 = v11;
  v15 = *(v5 + 16);
  v15(v10, a1, v4);
  v16 = sub_10079ACC4();
  v17 = sub_1007A29A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v56[1] = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v57 = a2;
    v21 = v20;
    *&v65 = v20;
    *v19 = 136315138;
    v15(v7, v10, v4);
    v22 = sub_1007A22E4();
    v24 = v23;
    (*(v5 + 8))(v10, v4);
    v25 = sub_1000070F4(v22, v24, &v65);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Slide drag gesture %s", v19, 0xCu);
    sub_1000074E0(v21);
    a2 = v57;
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  if (sub_10032DB20())
  {
    v26 = *(a2 + 120);
    if (v26)
    {
      v26();
    }
  }

  else
  {
    LOBYTE(v65) = v60;
    *(&v65 + 1) = v59;
    sub_10079DFF4();
    if ((LOBYTE(v62) & 1) == 0)
    {
      v27 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:2];
      [v27 impactOccurred];
    }

    v28 = (a2 + *(v61 + 84));
    v29 = *(v28 + 16);
    v30 = *(v28 + 3);
    v65 = *v28;
    v66 = v29;
    v67 = v30;
    sub_1001F1160(&qword_100ADC798);
    sub_10079DFF4();
    if (v64)
    {
      sub_10079BCA4();
      v33 = *(a2 + 40);
      if (*(a2 + 25) == 1)
      {
        v34 = v32 / v33;
      }

      else
      {
        v34 = v31 / v33;
        if (*(a2 + 26))
        {
          v34 = 1.0 - v34;
        }
      }

      v39 = (a2 + *(v61 + 80));
      v40 = *v39;
      v41 = v39[1];
      *&v65 = v40;
      *(&v65 + 1) = v41;
      v62 = v34;
      sub_1001F1160(&qword_100ADC7D8);
      sub_10079E004();
      sub_10079BC84();
      v43 = v42;
      v45 = v44;
      sub_10079BCA4();
      v47 = v46;
      v49 = v48;
      v50 = v43;
      v51 = v45;
    }

    else
    {
      v35 = v62;
      v36 = v63;
      v37 = *(a2 + 40);
      if (*(a2 + 25))
      {
        v38 = v63 / v37;
      }

      else
      {
        v38 = v62 / v37;
        if (*(a2 + 26))
        {
          v38 = 1.0 - v38;
        }
      }

      v52 = (a2 + *(v61 + 80));
      v53 = *v52;
      v54 = v52[1];
      *&v65 = v53;
      *(&v65 + 1) = v54;
      v62 = v38;
      sub_1001F1160(&qword_100ADC7D8);
      sub_10079E004();
      sub_10079BC84();
      v47 = v35;
      v49 = v36;
    }

    sub_10032EC60(0, v50, v51, v47, v49);
  }

  return sub_10032F100();
}

uint64_t sub_10032EC60(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for RESliderView();
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 25);
  swift_getKeyPath();
  swift_getKeyPath();

  *&v46 = a4;
  *(&v46 + 1) = a5;

  swift_getAtKeyPath();
  v45 = v51;
  v49 = a2;
  v50 = a3;
  swift_getAtKeyPath();

  v16 = v48;
  *&v46 = a4;
  *(&v46 + 1) = a5;
  swift_getAtKeyPath();
  v17 = v51;
  v49 = a2;
  v50 = a3;
  swift_getAtKeyPath();

  v18 = v48;
  v19 = *(v5 + 64);
  v20 = *(v5 + 72);
  *&v46 = *(v5 + 56);
  *(&v46 + 1) = v19;
  v47 = v20;
  sub_1001F1160(&qword_100ADC748);
  sub_10079E1C4();
  *&v46 = a4;
  *(&v46 + 1) = a5;
  swift_getAtKeyPath();
  v21 = v51;
  v49 = a4;
  v50 = a5;
  swift_getAtKeyPath();
  v22 = *(v5 + 40);
  v23 = v21 / v22;
  if (v15)
  {
    v24 = a3 / v22;
  }

  else
  {
    if (*(v5 + 26))
    {
      v23 = 1.0 - v23;
    }

    v25 = a2 / v22;
    if (*(v5 + 26))
    {
      v24 = 1.0 - v25;
    }

    else
    {
      v24 = v25;
    }
  }

  v51 = *(v5 + 16) - *(v5 + 32);
  v46 = xmmword_10081BC80;
  sub_1007A20C4();
  v26 = v49;
  v27 = sub_10079ACC4();
  v28 = sub_1007A29A4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = vabdd_f64(v45, v16);
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = v29;
    *(v30 + 12) = 2048;
    *(v30 + 14) = vabdd_f64(v17, v18);
    _os_log_impl(&_mh_execute_header, v27, v28, "dragValue primary Delta: %f secondary Delta: %f)", v30, 0x16u);
  }

  sub_10032FFB0(v6, v14);
  v31 = sub_10079ACC4();
  v32 = sub_1007A29A4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    LODWORD(v45) = a1;
    v35 = v34;
    *&v46 = v34;
    *v33 = 136315138;
    sub_1001F1160(&unk_100AD5090);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100813170;
    v37 = *(v14 + 2);
    *(v36 + 56) = &type metadata for Double;
    *(v36 + 64) = &protocol witness table for Double;
    *(v36 + 32) = v37;
    *(v36 + 96) = &type metadata for Double;
    *(v36 + 104) = &protocol witness table for Double;
    *(v36 + 72) = v23;
    *(v36 + 136) = &type metadata for Double;
    *(v36 + 144) = &protocol witness table for Double;
    *(v36 + 112) = v24;
    v38 = *(v14 + 4);
    *(v36 + 176) = &type metadata for Double;
    *(v36 + 184) = &protocol witness table for Double;
    *(v36 + 152) = v38;
    *(v36 + 216) = &type metadata for Double;
    *(v36 + 224) = &protocol witness table for Double;
    *(v36 + 192) = v23 - v24;
    *(v36 + 256) = &type metadata for Double;
    *(v36 + 264) = &protocol witness table for Double;
    *(v36 + 232) = v26;
    v39 = sub_1007A2284();
    v41 = v40;
    sub_100330328(v14);
    v42 = sub_1000070F4(v39, v41, &v46);

    *(v33 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "slide %s", v33, 0xCu);
    sub_1000074E0(v35);
    a1 = LODWORD(v45);
  }

  else
  {

    sub_100330328(v14);
  }

  (*(v6 + 104))(a1, v23, v26, v23 - v24);
}

uint64_t sub_10032F100()
{
  v1 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  v7 = sub_100796BB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = type metadata accessor for RESliderView();
  sub_1000077D8(v6, v3, &unk_100ADB5C0);
  sub_1001F1160(&qword_100ADC5B0);
  sub_10079E004();
  sub_100007840(v6, &unk_100ADB5C0);
  v9 = (v0 + *(v8 + 84));
  v10 = *(v9 + 16);
  v11 = *(v9 + 3);
  v18 = *v9;
  v19 = v10;
  v20 = v11;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  sub_1001F1160(&qword_100ADC798);
  sub_10079E004();
  v14 = v0;
  sub_10079E514();
  sub_10079BF94();
}

uint64_t sub_10032F344@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, double a3@<D0>)
{
  v37 = a2;
  v36 = sub_10079C104();
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for RESliderView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001F1160(&qword_100ADC7E0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v33[-v16];
  __chkstk_darwin(v18);
  v20 = &v33[-v19];
  v34 = *(a1 + 25);
  sub_10032FFB0(a1, v10);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_100330014(v10, v23 + v21);
  *(v23 + v22) = a3;
  KeyPath = swift_getKeyPath();
  v25 = &enum case for LayoutDirection.rightToLeft(_:);
  if (!*(a1 + 26))
  {
    v25 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v27 = v35;
  v26 = v36;
  (*(v5 + 104))(v35, *v25, v36);
  v28 = &v17[*(v12 + 44)];
  v29 = sub_1001F1160(&qword_100ADBCE0);
  (*(v5 + 32))(v28 + *(v29 + 28), v27, v26);
  *v28 = KeyPath;
  *v17 = v34;
  *(v17 + 1) = 0;
  v17[16] = 0;
  *(v17 + 3) = sub_1003306A0;
  *(v17 + 4) = v23;
  sub_10020B3C8(v17, v20, &qword_100ADC7E0);
  sub_1000077D8(v20, v14, &qword_100ADC7E0);
  v30 = v37;
  *v37 = 1;
  v31 = sub_1001F1160(&qword_100ADC7E8);
  sub_1000077D8(v14, &v30[*(v31 + 48)], &qword_100ADC7E0);
  sub_100007840(v20, &qword_100ADC7E0);
  return sub_100007840(v14, &qword_100ADC7E0);
}

uint64_t sub_10032F6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v39 = sub_10079BC44();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &KeyPath - v10;
  v38 = sub_10079E534();
  v12 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1001F1160(&qword_100AD9F18);
  __chkstk_darwin(v35);
  v40 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&KeyPath - v16);
  __chkstk_darwin(v18);
  v20 = &KeyPath - v19;
  v36 = *(a1 + 25);
  v34 = sub_10079DE94();
  KeyPath = swift_getKeyPath();
  v21 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v21;
    sub_10079B9A4();

    v23 = v39;
    (*(v6 + 104))(v8, enum case for ColorScheme.dark(_:), v39);
    v24 = sub_10079BC34();
    v25 = *(v6 + 8);
    v25(v8, v23);
    v25(v11, v23);
    v26 = &enum case for BlendMode.plusLighter(_:);
    if ((v24 & 1) == 0)
    {
      v26 = &enum case for BlendMode.plusDarker(_:);
    }

    v28 = v37;
    v27 = v38;
    (*(v12 + 104))(v37, *v26, v38);
    (*(v12 + 32))(v17 + *(v35 + 36), v28, v27);
    v29 = v34;
    *v17 = KeyPath;
    v17[1] = v29;
    sub_10020B3C8(v17, v20, &qword_100AD9F18);
    v30 = v40;
    sub_1000077D8(v20, v40, &qword_100AD9F18);
    *a2 = 0;
    *(a2 + 8) = 1;
    *(a2 + 16) = v36;
    *(a2 + 24) = a3;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    v31 = sub_1001F1160(&qword_100ADC7F0);
    sub_1000077D8(v30, a2 + *(v31 + 48), &qword_100AD9F18);
    sub_100007840(v20, &qword_100AD9F18);
    return sub_100007840(v30, &qword_100AD9F18);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100330658(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

unint64_t sub_10032FB28()
{
  result = qword_100ADC738;
  if (!qword_100ADC738)
  {
    sub_1001F1234(&qword_100ADC720);
    sub_100005920(&qword_100ADC730, &qword_100ADC6E0);
    sub_100005920(&qword_100AD5530, &unk_100AE42C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC738);
  }

  return result;
}

unint64_t sub_10032FC0C()
{
  result = qword_100ADC740;
  if (!qword_100ADC740)
  {
    sub_1001F1234(&qword_100ADC728);
    sub_100005920(&qword_100ADC730, &qword_100ADC6E0);
    sub_100005920(&unk_100AF6660, &qword_100AD97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC740);
  }

  return result;
}

unint64_t sub_10032FCF0()
{
  result = qword_100ADC758;
  if (!qword_100ADC758)
  {
    sub_1001F1234(&qword_100ADC6F0);
    sub_1001F1234(&qword_100ADC6E0);
    sub_1001F1234(&qword_100ADC720);
    sub_1001F1234(&qword_100ADC728);
    sub_100005920(&qword_100ADC730, &qword_100ADC6E0);
    sub_10032FB28();
    sub_10032FC0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC758);
  }

  return result;
}

unint64_t sub_10032FE50()
{
  result = qword_100ADC760;
  if (!qword_100ADC760)
  {
    sub_1001F1234(&qword_100ADC6D8);
    sub_100005920(&qword_100ADC768, &qword_100ADC750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC760);
  }

  return result;
}

unint64_t sub_10032FF00()
{
  result = qword_100ADC778;
  if (!qword_100ADC778)
  {
    sub_1001F1234(&qword_100ADC6D0);
    sub_100005920(&qword_100ADC780, &qword_100ADC770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC778);
  }

  return result;
}

uint64_t sub_10032FFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RESliderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100330014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RESliderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100330078(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for RESliderView();

  sub_10032D8D0(a1, a2);
}

uint64_t sub_100330160()
{
  v1 = type metadata accessor for RESliderView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 120);
  if (v4)
  {
    return v4();
  }

  return result;
}

uint64_t sub_1003301EC(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for RESliderView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10032DE78(a1, a2, a3, v8);
}

uint64_t sub_1003302A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RESliderView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100330328(uint64_t a1)
{
  v2 = type metadata accessor for RESliderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003303C4()
{
  v1 = type metadata accessor for RESliderView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 120))
  {
  }

  v3 = *(v1 + 68);
  v4 = sub_10079ACE4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + *(v1 + 88);
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_1001F1160(&qword_100ADC5B0);

  return swift_deallocObject();
}

uint64_t sub_1003305F0()
{
  v1 = *(type metadata accessor for RESliderView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10032E3A8(v2);
}

uint64_t sub_100330658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003306A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RESliderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10032F6B4(v1 + v4, a1, v5);
}

unint64_t NowPlayingIndicatorView.PlaybackState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_100330764@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t BKAppDelegate.containerHost.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_100B23078);
  result = swift_endAccess();
  if (v1)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
    sub_1000076D4(&v4, &v5);
    type metadata accessor for ContainerHost();
    swift_dynamicCast();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BKAppDelegate.engagementManager.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_100B23079);
  swift_endAccess();
  if (v1)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for EngagementManager();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000230BC(v6);
    return 0;
  }
}

void BKAppDelegate.engagementManager.setter(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_100B23079, a1, 1);
  swift_endAccess();
}

id BKAppDelegate.objectGraphHost.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_100B2307A);
  swift_endAccess();
  if (v1)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_1000230BC(v15);
    goto LABEL_8;
  }

  type metadata accessor for ObjectGraphHost();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = type metadata accessor for ObjectGraphHost();
    v4 = objc_allocWithZone(v3);
    v5 = OBJC_IVAR___BKObjectGraphHost_dependenciesPromise;
    sub_1001F1160(&qword_100AD2148);
    v6 = v0;
    *&v4[v5] = sub_1007A1FB4();
    v7 = [v6 sceneManager];

    v8 = sub_10075E9DC(v7);

    *&v4[OBJC_IVAR___BKObjectGraphHost_objectGraph] = v8;
    v12.receiver = v4;
    v12.super_class = v3;
    v9 = objc_msgSendSuper2(&v12, "init");

    swift_beginAccess();
    v2 = v9;
    objc_setAssociatedObject(v6, &unk_100B2307A, v2, 1);
    swift_endAccess();

    return v2;
  }

  return v11;
}

uint64_t BKAppDelegate.serviceCenter.getter()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = objc_getAssociatedObject(v1, &unk_100B2307B);
  swift_endAccess();
  if (v6)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    type metadata accessor for ServiceCenter();
    if (swift_dynamicCast())
    {
      return v11[1];
    }

    v11[0] = v3;
  }

  else
  {
    v11[0] = v3;
    sub_1000230BC(v14);
  }

  if (!BCIMLog())
  {
    __break(1u);
  }

  sub_10079ACF4();
  v8 = sub_10079ACC4();
  v9 = sub_1007A29C4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "BKAppDelegate.serviceCenter hasn't been created.", v10, 2u);
  }

  result = (*(v11[0] + 8))(v5, v2);
  __break(1u);
  return result;
}

void sub_100330E50(void *a1, const void *a2)
{
  swift_beginAccess();
  objc_setAssociatedObject(v2, a2, a1, 1);
  swift_endAccess();
}

id sub_100330EF4(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v5 = [v4 objectGraphHost];

  sub_1001F1160(a3);
  sub_1007A1E74();

  return v7;
}

uint64_t sub_100330FB8(uint64_t *a1)
{
  v3 = [v1 objectGraphHost];

  sub_1001F1160(a1);
  sub_1007A1E74();

  return v5;
}

uint64_t BKAppDelegate.flushJetMetrics()()
{
  v1[8] = v0;
  sub_1007A26F4();
  v1[9] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_100331114, v3, v2);
}

uint64_t sub_100331114()
{
  v1 = [*(v0 + 64) objectGraphHost];
  *(v0 + 96) = *&v1[OBJC_IVAR___BKObjectGraphHost_objectGraph];

  sub_1001F1160(&qword_100ADC818);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100331208;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16);
}

uint64_t sub_100331208()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100331630;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100331324;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100331324()
{
  sub_10000E3E8(v0 + 2, v0[5]);
  v0[15] = sub_1007A1F54();
  v1 = sub_1001F1160(&qword_100ADC820);
  v2 = sub_100331F40();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100331414;

  return dispatch thunk of Future.then()(v0 + 7, v1, v2);
}

uint64_t sub_100331414()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_1003315C4;
  }

  else
  {
    v2[18] = v2[7];
    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_100331554;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100331554()
{

  sub_1000074E0(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_1003315C4()
{

  sub_1000074E0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100331630()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100331814(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1007A26F4();
  v2[4] = sub_1007A26E4();
  v4 = sub_1007A2694();

  return _swift_task_switch(sub_1003318AC, v4, v3);
}

uint64_t sub_1003318AC()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10033195C;

  return BKAppDelegate.flushJetMetrics()();
}

uint64_t sub_10033195C(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = sub_1007967C4();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v6 + 40));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t BKAppDelegate.bkStartupTaskManager.getter()
{
  v1 = [v0 containerHost];
  sub_1000076D8(v4);

  sub_10000E3E8(v4, v4[3]);
  sub_100798D64();
  result = sub_100798CC4();
  if (result)
  {
    v3 = result;
    sub_1000074E0(v4);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall BKAppDelegate.startDownloadPurchaseMonitor()()
{
  v1 = [v0 objectGraphHost];

  type metadata accessor for DownloadPurchaseMonitor();
  sub_1007A1E74();

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    [v2 addObserver:v4];
  }

  else
  {
    __break(1u);
  }
}

id _sSo13BKAppDelegateC5BooksE22cleanupSnapshotManageryyF_0()
{
  v0 = objc_opt_self();
  v1 = [v0 applicationCacheDirectory];
  if (!v1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v2 = v1;
  sub_1007A2254();

  v19._object = 0x80000001008CBD00;
  v19._countAndFlagsBits = 0xD000000000000011;
  sub_1007A2314(v19);

  v3 = [v0 applicationDocumentsDirectory];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  sub_1007A2254();

  v20._object = 0x80000001008CBD00;
  v20._countAndFlagsBits = 0xD000000000000011;
  sub_1007A2314(v20);

  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  v7 = sub_1007A2214();

  v17 = 0;
  v8 = [v6 removeItemAtPath:v7 error:&v17];

  if (v8)
  {
    v9 = v17;
  }

  else
  {
    v10 = v17;
    sub_1007967D4();

    swift_willThrow();
  }

  v11 = [v5 defaultManager];
  v12 = sub_1007A2214();

  v17 = 0;
  v13 = [v11 removeItemAtPath:v12 error:&v17];

  v14 = v17;
  if (v13)
  {

    return v14;
  }

  else
  {
    v16 = v17;
    sub_1007967D4();

    swift_willThrow();
  }
}

unint64_t sub_100331F40()
{
  result = qword_100ADC828;
  if (!qword_100ADC828)
  {
    sub_1001F1234(&qword_100ADC820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC828);
  }

  return result;
}

unint64_t sub_100331FA8()
{
  result = qword_100ADC830;
  if (!qword_100ADC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC830);
  }

  return result;
}

uint64_t sub_10033200C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009A34;

  return sub_100331814(v2, v3);
}

uint64_t sub_1003320B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009A34;

  return sub_10069E5C4(v2, v3, v4);
}

uint64_t sub_100332178(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v25 = _swiftEmptyArrayStorage;
  sub_1003BD200(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v23 = a1 + 56;
  v4 = sub_1007A35A4();
  v5 = a1;
  v6 = 0;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v5 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v23 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_22;
    }

    v9 = v2;
    v10 = *(v5 + 36);
    v24 = *(*(v5 + 48) + 8 * v4);
    sub_1007514D0(&v24);
    if (v1)
    {
      goto LABEL_26;
    }

    v25 = v3;
    v12 = v3[2];
    v11 = v3[3];
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      sub_1003BD200((v11 > 1), v12 + 1, 1);
      v3 = v25;
    }

    v3[2] = v13;
    v5 = a1;
    v7 = 1 << *(a1 + 32);
    if (v4 >= v7)
    {
      goto LABEL_23;
    }

    v14 = *(v23 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_24;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_100343CEC(v4, v10, 0);
          v5 = a1;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_100343CEC(v4, v10, 0);
      v5 = a1;
    }

LABEL_4:
    ++v6;
    v4 = v7;
    v2 = v9;
    v1 = 0;
    if (v6 == v9)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_1003323D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100332414()
{
  v0 = sub_1007A3A94();
  v53 = *(v0 - 8);
  v54 = v0;
  __chkstk_darwin(v0);
  v52 = v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1007968B4();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADD150);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = __chkstk_darwin(v5);
  v44 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v45 = v43 - v10;
  __chkstk_darwin(v9);
  v47 = v43 - v11;
  v12 = sub_100796CF4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v43 - v17;
  v19 = sub_1007A21D4();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v43 - v24;
  sub_1007A2154();
  sub_100796C94();
  (*(v20 + 16))(v23, v25, v19);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v13 + 16))(v16, v18, v12);
  v28 = sub_1007A22D4();
  v43[0] = v29;
  v43[1] = v28;
  (*(v13 + 8))(v18, v12);
  (*(v20 + 8))(v25, v19);
  sub_1001F1160(&unk_100AD5090);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10080B690;
  swift_getKeyPath();
  v31 = v46;
  v56 = v46;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v55 = *(v31 + 320);
  sub_100796C74();
  v46 = sub_100247DCC();
  v32 = v44;
  sub_100796854();
  v33 = v4;
  sub_1007968A4();
  v34 = v45;
  v35 = v48;
  sub_100796874();
  (*(v50 + 8))(v33, v51);
  v36 = *(v49 + 8);
  v36(v32, v35);
  v38 = v52;
  v37 = v53;
  v39 = v54;
  (*(v53 + 104))(v52, enum case for FloatingPointRoundingRule.down(_:), v54);
  v40 = v47;
  sub_100796864();
  (*(v37 + 8))(v38, v39);
  v36(v34, v35);
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_10000E4C4();
  sub_100005920(&qword_100ADD158, &qword_100ADD150);
  sub_1007A2014();
  v36(v40, v35);
  v41 = sub_1007A2284();

  return v41;
}

uint64_t sub_100332AB4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___BKEngagementManager_manager);
    v5 = sub_1007999E4();

    if (v5)
    {
      type metadata accessor for SessionDonor();
      v6 = swift_dynamicCastClass();
      if (v6 && (v6[OBJC_IVAR___BKSessionDonor_everUsedOrientationLockMenuButton] & 1) == 0)
      {
        v6[OBJC_IVAR___BKSessionDonor_everUsedOrientationLockMenuButton] = 1;
        [v6 propertyDidChange:v6 propertyConfiguration:*&v6[OBJC_IVAR___BKSessionDonor_everUsedOrientationLockMenuButtonAppConfig]];
      }

      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  v9 = *(v1 + 24);
  v10 = swift_getObjectType();
  return (*(v9 + 104))(v10, v9);
}

uint64_t sub_100332C08()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADC838);
  sub_100008B98(v0, qword_100ADC838);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

double EdgeInsetPublisher.insets.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

double sub_100332D4C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100332DCC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t EdgeInsetPublisher.insets.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

void (*EdgeInsetPublisher.insets.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10079B994();
  return sub_1002E6F80;
}

uint64_t EdgeInsetPublisher.$insets.getter()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100ADC858);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t EdgeInsetPublisher.$insets.setter(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADC860);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_1001F1160(&qword_100ADC858);
  sub_10079B984();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*EdgeInsetPublisher.$insets.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1001F1160(&qword_100ADC860);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Books18EdgeInsetPublisher__insets;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001F1160(&qword_100ADC858);
  sub_10079B974();
  swift_endAccess();
  return sub_1002E7304;
}

uint64_t EdgeInsetPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC5Books18EdgeInsetPublisher__insets;
  v2 = sub_1001F1160(&qword_100ADC858);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t EdgeInsetPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5Books18EdgeInsetPublisher__insets;
  v2 = sub_1001F1160(&qword_100ADC858);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003333A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EdgeInsetPublisher(0);
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t sub_1003333E8()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100333488()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100333528()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 32))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003335C8()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100333668()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 48))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100333708()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 56))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003337A8()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 64))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100333848()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 72))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003338E8()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 80))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100333988()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 88))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100333A28()
{
  v1 = *(v0 + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 96))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100333AC8()
{
  sub_10002B130(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100333B08()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100333BA0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 104))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100333C0C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 112))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100333C78(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 120))(a1 & 1, ObjectType, v4);
    swift_unknownObjectRelease();
    return v6 & 1;
  }

  return result;
}

uint64_t sub_100333CE8(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 128))(a1 & 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t REActionMenuState.scrubHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*REActionMenuState.scrubHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100333EC4;
}

void sub_100333EC4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t REActionMenuState.orientationLockHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*REActionMenuState.orientationLockHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100334078;
}

void sub_100334078(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1003340FC()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 136);
}

uint64_t sub_10033419C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *a2 = *(v3 + 136);
  return result;
}

uint64_t sub_10033426C(uint64_t result)
{
  if (*(v1 + 136) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

uint64_t REActionMenuState.chapterTitlePublisher.getter()
{
  sub_1001F1160(&unk_100AD1E30);
  sub_100005920(&qword_100ADC868, &unk_100AD1E30);
  return sub_10079BA14();
}

uint64_t REActionMenuState.chapterTitle.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  sub_10079B904();
  return v0;
}

uint64_t sub_1003344B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = sub_10079B904();
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_100334564(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return REActionMenuState.chapterTitle.setter(v1, v2);
}

uint64_t REActionMenuState.chapterTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  sub_10079B904();
  if (v2 == a1 && v8 == a2)
  {
  }

  else
  {
    v6 = sub_1007A3AB4();

    if ((v6 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100797A04();
    }
  }
}

void (*REActionMenuState.chapterTitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[2] = v1;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  sub_10079B904();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1003348B8;
}

void sub_1003348B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {

    REActionMenuState.chapterTitle.setter(v3, v4);
  }

  else
  {
    REActionMenuState.chapterTitle.setter(**a1, v4);
  }

  free(v2);
}

uint64_t REActionMenuState.pagesLeftInChapterStringPublisher.getter()
{
  sub_1001F1160(&unk_100AF28B0);
  sub_100005920(&qword_100ADC878, &unk_100AF28B0);
  return sub_10079BA14();
}

double sub_1003349B8@<D0>(double *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v5 = v3;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  sub_10079B904();
  result = v3;
  *a2 = v5;
  return result;
}

uint64_t sub_100334A6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100334B58(v1, v2);
}

uint64_t REActionMenuState.pagesLeftInChapterString.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  sub_10079B904();
  return v0;
}

uint64_t sub_100334B58(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = sub_10079B904();
  if (a2)
  {
    if (v8)
    {
      if (v2 == a1 && v8 == a2)
      {
      }

      v6 = sub_1007A3AB4();

      if (v6)
      {
      }
    }
  }

  else
  {
    if (!v8)
    {
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100797A04();
}

void sub_100334D1C()
{
  v1 = v0;
  swift_getKeyPath();
  v46 = v0;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v2 = *(v0 + 256);
  swift_getKeyPath();
  v46 = v0;
  sub_100797A14();

  swift_beginAccess();
  v3 = *(v0 + 216);
  if (v2 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100ADC838);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29A4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Skipping update as we don't have a page count yet.";
    v9 = v6;
    v10 = v5;
    v11 = v7;
    v12 = 2;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v10, v9, v8, v11, v12);

LABEL_12:

    return;
  }

  if (v3 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100ADC838);
    v5 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (!os_log_type_enabled(v5, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v3;
    v8 = "Cannot update scrubber with invalid pageNumber: %ld";
    v9 = v14;
    v10 = v5;
    v11 = v15;
    v12 = 12;
    goto LABEL_11;
  }

  if (v3 < 0)
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v21 = sub_10079ACE4();
    sub_100008B98(v21, qword_100ADC838);
    v22 = sub_10079ACC4();
    v23 = sub_1007A29B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Cannot allow page number below 1, clamping to 1", v24, 2u);
    }

    if (*(v1 + 216) != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_26;
  }

  if (v2 < v3)
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100ADC838);
    v17 = sub_10079ACC4();
    v18 = sub_1007A2994();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = v3;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v17, v18, "Clamping high page number %ld to pageCount %ld", v19, 0x16u);
    }

    if (*(v1 + 216) != v2)
    {
LABEL_41:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v45[0] = v1;
      sub_100797A04();

      return;
    }

LABEL_26:
    sub_100334D1C(v20);
    return;
  }

  swift_getKeyPath();
  v45[0] = v0;
  sub_100797A14();

  v25 = *(v0 + 328);
  if (v25 >> 62 == 2 && (v25 | 8) == 0x8000000000000018)
  {
    swift_getKeyPath();
    v45[0] = v0;
    sub_100797A14();

    v26 = *(v0 + 280) != 0;
  }

  else
  {
    v26 = 1;
  }

  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v27 = sub_10079ACE4();
  sub_100008B98(v27, qword_100ADC838);

  v28 = sub_10079ACC4();
  v29 = sub_1007A29A4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45[0] = v31;
    *v30 = 134218242;
    swift_getKeyPath();
    sub_100797A14();

    *(v30 + 4) = *(v0 + 216);

    *(v30 + 12) = 2080;
    if (v26)
    {
      v32 = 0xD000000000000011;
    }

    else
    {
      v32 = 0;
    }

    if (v26)
    {
      v33 = 0x80000001008CC150;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = sub_1000070F4(v32, v33, v45);

    *(v30 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "pageNumber set to %ld %s", v30, 0x16u);
    sub_1000074E0(v31);
  }

  else
  {
  }

  if (v26)
  {
    swift_getKeyPath();
    v45[0] = v1;
    sub_100797A14();

    v36 = *(v1 + 216);
    swift_getKeyPath();
    v45[0] = v1;
    sub_100797A14();

    v37 = *(v1 + 256);
    v38 = 0.0;
    if (v37 >= 2 && v36 >= 1 && v37 >= v36)
    {
      v38 = (v36 - 1) / (v37 - 1);
    }

    swift_beginAccess();
    if (*(v1 + 320) == v38)
    {
      *(v1 + 320) = v38;

      v39 = sub_10079ACC4();
      v40 = sub_1007A29A4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        swift_getKeyPath();
        sub_100797A14();

        *(v41 + 4) = *(v1 + 320);
        _os_log_impl(&_mh_execute_header, v39, v40, "Scrubber position set to %f", v41, 0xCu);
      }
    }

    else
    {
      v42 = swift_getKeyPath();
      __chkstk_darwin(v42);
      sub_100797A04();
    }
  }

  v43 = sub_10033AE54();
  sub_100334B58(v43, v44);
}

void (*sub_100335674(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003356C8;
}

void sub_1003356C8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100334D1C();
  }
}

uint64_t REActionMenuState.pageNumber.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  return *(v0 + 216);
}

uint64_t sub_1003357B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = swift_beginAccess();
  *a2 = *(v3 + 216);
  return result;
}

void REActionMenuState.pageNumber.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 216) == a1)
  {
    sub_100334D1C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }
}

void sub_1003359B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 216) = a2;
  sub_100334D1C();
}

void (*REActionMenuState.pageNumber.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_100335674(v4);
  return sub_100335B60;
}

uint64_t REActionMenuState.curlDebugMenuVisible.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  return *(v0 + 224);
}

uint64_t sub_100335C70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = swift_beginAccess();
  *a2 = *(v3 + 224);
  return result;
}

uint64_t REActionMenuState.curlDebugMenuVisible.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 224) == v2)
  {
    *(v1 + 224) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_100335E78(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 224) = a2;
  return result;
}

uint64_t sub_100335ECC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 224) = v2;
  return result;
}

void (*REActionMenuState.curlDebugMenuVisible.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_100335B6C();
  return sub_100336058;
}

void sub_100336064(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100ADC838);

  oslog = sub_10079ACC4();
  v8 = sub_1007A29A4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = BookMovementState.description.getter(a1, a2, a3);
    v12 = sub_1000070F4(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    v13 = BookMovementState.description.getter(*(v3 + 232), *(v3 + 240), *(v3 + 248));
    v15 = sub_1000070F4(v13, v14, &v17);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, oslog, v8, "MovementState moving from %s to %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void (*sub_1003362B4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v2 = *(v1 + 248);
  *a1 = *(v1 + 232);
  *(a1 + 16) = v2;
  return sub_1003362E8;
}

void sub_1003362E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 16);
  v4 = *(v1 + 232);
  v3 = *(v1 + 240);
  *(v1 + 232) = *a1;
  v5 = *(v1 + 248);
  *(v1 + 248) = v2;
  sub_100336064(v4, v3, v5);
}

uint64_t REActionMenuState.movementState.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 232);
}

__n128 sub_1003363CC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v4 = *(v3 + 248);
  result = *(v3 + 232);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_10033647C()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A04();
}

uint64_t REActionMenuState.movementState.setter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A04();
}

void (*REActionMenuState.movementState.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_1003362B4(v4);
  return sub_10033678C;
}

void sub_100336798(uint64_t a1)
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  if (v1[32] != a1)
  {
    v3 = v1[18];
    swift_getKeyPath();
    sub_100797A14();

    *(v3 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_pageCount) = v1[32];
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100ADC838);
    swift_retain_n();
    v5 = sub_10079ACC4();
    v6 = sub_1007A29A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      swift_getKeyPath();
      sub_100797A14();

      *(v7 + 4) = v1[32];

      *(v7 + 12) = 2048;
      swift_getKeyPath();
      sub_100797A14();

      swift_beginAccess();
      *(v7 + 14) = v1[27];

      _os_log_impl(&_mh_execute_header, v5, v6, "Got Page Count %ld.  (Current pageNumber is %ld", v7, 0x16u);
    }

    else
    {
    }

    swift_getKeyPath();
    sub_100797A14();

    swift_beginAccess();
    sub_100334D1C();
  }
}

void (*sub_100336A64(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 256);
  a1[1] = v1;
  return sub_100336A8C;
}

void sub_100336A8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 256);
  *(v2 + 256) = v1;
  sub_100336798(v3);
}

uint64_t REActionMenuState.pageCount.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 256);
}

uint64_t sub_100336B58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *a2 = *(v3 + 256);
  return result;
}

void REActionMenuState.pageCount.setter(uint64_t a1)
{
  if (*(v1 + 256) == a1)
  {

    sub_100336798(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }
}

void sub_100336D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 256);
  *(a1 + 256) = a2;
  sub_100336798(v3);
}

void sub_100336D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 256);
  *(v1 + 256) = *(v0 + 24);
  sub_100336798(v2);
}

void (*REActionMenuState.pageCount.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_100336A64(v4);
  return sub_100336EFC;
}

uint64_t sub_100336F08()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 264);
}

uint64_t sub_100336FA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *a2 = *(v3 + 264);
  return result;
}

uint64_t sub_100337078(uint64_t result)
{
  if (*(v1 + 264) == (result & 1))
  {
    *(v1 + 264) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_100337190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v4 = *(v3 + 272);
  *a2 = v4;
  v5 = *(v3 + 280);
  *(a2 + 8) = v5;
  return sub_100337314(v4, v5);
}

uint64_t REActionMenuState.scrubberState.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v1 = *(v0 + 272);
  sub_100337314(v1, *(v3 + 280));
  return v1;
}

uint64_t sub_100337314(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_100337328(uint64_t a1, char a2)
{
  if (*(v2 + 280))
  {
    if (*(v2 + 280) == 1)
    {
      if (a2 != 1)
      {
LABEL_13:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
        sub_100797A04();
        sub_100342F4C(a1, a2);
      }
    }

    else if (a2 != 2 || a1)
    {
      goto LABEL_13;
    }
  }

  else if (a2 || *(v2 + 272) != a1)
  {
    goto LABEL_13;
  }

  sub_100343518(a1, a2);

  return sub_100342F4C(a1, a2);
}

uint64_t sub_1003374C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *a2 = *(v3 + 281);
  return result;
}

uint64_t REActionMenuState.closed.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 281);
}

uint64_t sub_100337634(uint64_t result)
{
  if (*(v1 + 281) == (result & 1))
  {
    *(v1 + 281) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

uint64_t REActionMenuState.closedPublisher.getter()
{
  sub_1001F1160(&unk_100AD1E40);
  sub_100005920(&qword_100AF2870, &unk_100AD1E40);
  return sub_10079BA14();
}

uint64_t REActionMenuState.isOrientationLocked.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  return *(v0 + 296);
}

uint64_t sub_1003378D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = swift_beginAccess();
  *a2 = *(v3 + 296);
  return result;
}

uint64_t REActionMenuState.isOrientationLocked.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 296) == v2)
  {
    *(v1 + 296) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_100337ADC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 296) = a2;
  return result;
}

uint64_t sub_100337B30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 296) = v2;
  return result;
}

void (*REActionMenuState.isOrientationLocked.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_1003377D0();
  return sub_100337CBC;
}

uint64_t REActionMenuState.isReadingLoupeEnabled.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  return *(v0 + 297);
}

uint64_t sub_100337DCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = swift_beginAccess();
  *a2 = *(v3 + 297);
  return result;
}

uint64_t REActionMenuState.isReadingLoupeEnabled.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 297) == v2)
  {
    *(v1 + 297) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_100337FD4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 297) = a2;
  return result;
}

uint64_t sub_100338028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 297) = v2;
  return result;
}

void (*REActionMenuState.isReadingLoupeEnabled.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_100337CC8();
  return sub_1003381B4;
}

uint64_t REActionMenuState.isReadingLoupeAllowable.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  return *(v0 + 298);
}

uint64_t sub_1003382C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = swift_beginAccess();
  *a2 = *(v3 + 298);
  return result;
}

uint64_t REActionMenuState.isReadingLoupeAllowable.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 298) == v2)
  {
    *(v1 + 298) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_1003384CC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 298) = a2;
  return result;
}

uint64_t sub_100338520()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 298) = v2;
  return result;
}

void (*REActionMenuState.isReadingLoupeAllowable.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_1003381C0();
  return sub_1003386AC;
}

double sub_1003386B8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = *(v3 + 304);
  *a2 = result;
  return result;
}

double REActionMenuState.scrubberDelta.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 304);
}

void sub_100338828(double a1)
{
  if (*(v1 + 304) == a1)
  {
    *(v1 + 304) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }
}

double sub_100338940@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = *(v3 + 312);
  *a2 = result;
  return result;
}

double REActionMenuState.lastScrubberDelta.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 312);
}

void sub_100338AB0(double a1)
{
  if (*(v1 + 312) == a1)
  {
    *(v1 + 312) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }
}

void (*sub_100338BC8(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100338C1C;
}

void sub_100338C1C(void *a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100ADC838);

    oslog = sub_10079ACC4();
    v5 = sub_1007A29A4();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = a1[3];
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      swift_getKeyPath();
      *a1 = v6;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A14();

      *(v7 + 4) = *(v6 + 320);
      _os_log_impl(&_mh_execute_header, oslog, v5, "Scrubber position set to %f", v7, 0xCu);
    }
  }
}

double REActionMenuState.scrubberPosition.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  return *(v0 + 320);
}

double sub_100338E84@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  result = *(v3 + 320);
  *a2 = result;
  return result;
}

void REActionMenuState.scrubberPosition.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 320) == a1)
  {
    *(v1 + 320) = a1;
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100ADC838);

    v4 = sub_10079ACC4();
    v5 = sub_1007A29A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      swift_getKeyPath();
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A14();

      *(v6 + 4) = *(v1 + 320);
      _os_log_impl(&_mh_execute_header, v4, v5, "Scrubber position set to %f", v6, 0xCu);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }
}

void sub_1003391D8(uint64_t a1, double a2)
{
  swift_beginAccess();
  *(a1 + 320) = a2;
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100ADC838);

  v5 = sub_10079ACC4();
  v6 = sub_1007A29A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    *(v7 + 4) = *(a1 + 320);
    _os_log_impl(&_mh_execute_header, v5, v6, "Scrubber position set to %f", v7, 0xCu);
  }
}

void (*REActionMenuState.scrubberPosition.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_100338BC8(v4);
  return sub_1003394DC;
}

void sub_1003394E8(unint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v32 = v1;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v4 = *(v1 + 328) & 0xFFFFFFFFFFFFFFF7;
  v5 = a1 & 0xBFFFFFFFFFFFFFF7;
  v6 = a1 >> 62 != 2 || a1 >> 62 == 0;
  v7 = v5 == 0x8000000000000010;
  v8 = v5 == 0x8000000000000010;
  v9 = v7 && a1 >> 62 == 2;
  v10 = a1 >> 62 == 1 || a1 >> 62 == 0;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  swift_beginAccess();
  if (v11 == *(v2 + 352))
  {
    *(v2 + 352) = v11;
    if (v4 != 0x8000000000000010)
    {
LABEL_15:
      if (v9)
      {
        v13 = REActionMenuState.makeChapterScrubbingState()();

        if (*(v2 + 280) == 1)
        {
          sub_100343518(v13, 1);
          sub_100342F4C(v13, 1);
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          v31 = v2;
          sub_100797A04();
          sub_100342F4C(v13, 1);
        }
      }

      goto LABEL_24;
    }
  }

  else
  {
    v12 = swift_getKeyPath();
    __chkstk_darwin(v12);
    v31 = v2;
    sub_100797A04();

    if (v4 != 0x8000000000000010)
    {
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    if (*(v2 + 280) >= 2u)
    {
      sub_100343518(0, 2);
    }

    else
    {
      v14 = swift_getKeyPath();
      __chkstk_darwin(v14);
      v31 = v2;
      sub_100797A04();
    }
  }

LABEL_24:
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  sub_100008B98(v16, qword_100ADC838);

  sub_1002B6C38(a1);
  v17 = sub_10079ACC4();
  v18 = sub_1007A29A4();
  sub_1002B6C54(a1);

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v19 = 136315650;
    v20 = ActionMenuState.description.getter(a1);
    v22 = sub_1000070F4(v20, v21, &v31);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    swift_getKeyPath();
    sub_100797A14();

    v23 = *(v2 + 272);
    LOBYTE(v22) = *(v2 + 280);
    sub_100337314(v23, v22);
    v24 = ScrubberState.description.getter(v23, v22);
    v26 = v25;
    sub_100342F4C(v23, v22);
    v27 = sub_1000070F4(v24, v26, &v31);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2080;
    swift_getKeyPath();
    sub_100797A14();

    v28 = BookMovementState.description.getter(*(v2 + 232), *(v2 + 240), *(v2 + 248));
    v30 = sub_1000070F4(v28, v29, &v31);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v17, v18, "moving to state %s with scrubber state %s and movementState %s", v19, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t REActionMenuState.makeChapterScrubbingState()()
{
  v1 = v0;
  v2 = sub_10033BD60();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9A4();

  v3 = v17;
  v4 = v18;
  if (v18 == 1)
  {

    sub_10033BFCC(v5, v2);
  }

  else
  {
    sub_100009864(v0 + 80, &v17);

    v6 = sub_1007A0C44();
    if (!v6 || (v7 = v6, v8 = [v6 snapshotViewAfterScreenUpdates:0], v7, !v8))
    {
      v8 = [objc_allocWithZone(UIView) init];
    }

    v9 = sub_10022569C(&v17, v19);
    __chkstk_darwin(v9);
    v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;

    v14 = sub_100342C24(v13, v1, v2, v8);
    sub_100342F4C(v3, v4);
    sub_1000074E0(&v17);

    return v14;
  }

  return v3;
}

uint64_t sub_100339CA0()
{
  v1 = v0;
  swift_getKeyPath();
  v19 = v0;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v2 = *(v0 + 328);
  v19 = v2;
  v18[2] = &v19;
  sub_1002B6C38(v2);
  v3 = sub_1005802C4(sub_100343BF0, v18, &off_100A0C228);
  swift_arrayDestroy();
  sub_1002B6C54(v2);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getKeyPath();
      v19 = v1;
      sub_100797A14();

      v6 = *(v1 + 328);
      v7 = *&v5[OBJC_IVAR___BKEngagementManager_eventController];
      sub_1001F1160(&unk_100ADE550);
      inited = swift_initStackObject();
      v9 = inited;
      *(inited + 16) = xmmword_10080B690;
      *(inited + 32) = 0x6E6F69746341;
      v10 = inited + 32;
      v11 = 1852141679;
      if (v6 != 0x8000000000000008)
      {
        v11 = 0x65736F6C63;
      }

      v12 = 0xE500000000000000;
      if (v6 == 0x8000000000000008)
      {
        v12 = 0xE400000000000000;
      }

      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      v13 = v7;
      sub_100019158(v9);
      swift_setDeallocating();
      sub_100007840(v10, &unk_100ADD560);
      sub_10079E994();
    }
  }

  swift_getKeyPath();
  v19 = v1;
  sub_100797A14();

  if (*(v1 + 248) <= 0xBFu)
  {
    swift_getKeyPath();
    v19 = v1;
    sub_100797A14();

    v15 = 0;
    v16 = *(v1 + 248) >> 6;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
LABEL_15:
        v14 = (v15 & 1) == 0;
        goto LABEL_16;
      }
    }

    else if (!v16)
    {
      goto LABEL_15;
    }

    v15 = *(v1 + 248);
    goto LABEL_15;
  }

  swift_getKeyPath();
  v19 = v1;
  sub_100797A14();

  v14 = *(v1 + 328) == 0x8000000000000000;
LABEL_16:
  LOBYTE(v19) = v14;
  return sub_10079B914();
}

unint64_t REActionMenuState.state.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v1 = *(v0 + 328);
  sub_1002B6C38(v1);
  return v1;
}

unint64_t sub_10033A0A4(unint64_t a1)
{
  v3 = *(v1 + 328);
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      if (a1 >> 62 == 1)
      {
        sub_1002B6C38(*(v1 + 328));
        v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        v5 = a1 & 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_7;
      }
    }

    else
    {
      v9 = __ROR8__(v3 ^ 0x8000000000000000, 3);
      if (v9 <= 1)
      {
        if (v9)
        {
          if (a1 == 0x8000000000000008)
          {
            goto LABEL_8;
          }
        }

        else if (a1 == 0x8000000000000000)
        {
          goto LABEL_8;
        }
      }

      else if (v9 == 2)
      {
        if (a1 == 0x8000000000000010)
        {
          goto LABEL_8;
        }
      }

      else if (v9 == 3)
      {
        if (a1 == 0x8000000000000018)
        {
          goto LABEL_8;
        }
      }

      else if (a1 == 0x8000000000000020)
      {
        goto LABEL_8;
      }
    }

LABEL_24:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
    sub_1002B6C54(a1);
  }

  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  sub_1002B6C38(*(v1 + 328));
  v4 = v3;
  v5 = a1;
LABEL_7:
  v6 = _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v4, v5);
  sub_1002B6C54(v3);
  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_8:
  sub_1003394E8(a1);
  v7 = *(v1 + 328);
  *(v1 + 328) = a1;
  sub_1002B6C38(a1);
  sub_1002B6C54(v7);
  sub_100339CA0();

  return sub_1002B6C54(a1);
}

uint64_t sub_10033A2E0(uint64_t a1, unint64_t a2)
{
  sub_1003394E8(a2);
  v4 = *(a1 + 328);
  *(a1 + 328) = a2;
  sub_1002B6C38(a2);
  sub_1002B6C54(v4);
  return sub_100339CA0();
}

uint64_t REActionMenuState.isScrubbing.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 352) == v2)
  {
    *(v1 + 352) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_10033A45C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    v2 = *(v1 + 281);

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t REActionMenuState.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 336);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10079B884();
    sub_100342F78(&qword_100AE1500, &type metadata accessor for AnyCancellable);
    result = sub_1007A2864();
    v5 = v21;
    v4 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_10004DC54();

      *(v1 + 336) = &_swiftEmptySetSingleton;

      swift_unknownObjectRelease();
      sub_10002B130(v1 + 32);
      sub_10002B130(v1 + 48);
      sub_10002B130(v1 + 64);
      sub_1000074E0(v1 + 80);

      swift_unknownObjectWeakDestroy();
      sub_10002B130(v1 + 176);

      sub_100342F4C(*(v1 + 272), *(v1 + 280));

      sub_1002B6C54(*(v1 + 328));

      v18 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
      v19 = sub_100797A54();
      (*(*(v19 - 8) + 8))(v1 + v18, v19);
      return v1;
    }

    while (1)
    {
      sub_10079B874();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1007A3654())
      {
        sub_10079B884();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t REActionMenuState.__deallocating_deinit()
{
  REActionMenuState.deinit();

  return swift_deallocClassInstance();
}

uint64_t REActionMenuState.isScrubbing.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  return *(v0 + 352);
}

uint64_t sub_10033A9A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  result = swift_beginAccess();
  *a2 = *(v3 + 352);
  return result;
}

void (*REActionMenuState.isScrubbing.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_10033A8A4();
  return sub_10033ABC4;
}

void sub_10033ABD0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_100797A24();

  free(v1);
}

Swift::Bool __swiftcall REActionMenuState.isPageScrubbing()()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 280) == 0;
}

uint64_t REActionMenuState.chapterScrubbingState.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  if (*(v0 + 280) == 1)
  {
  }

  swift_getKeyPath();
  sub_100797A14();

  if (!(*(v0 + 328) >> 62))
  {
  }

  swift_getKeyPath();
  sub_100797A14();

  if (*(v0 + 328) >> 62 == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10033AE54()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v2 = *(v0 + 216);
  if (v2 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    return 0;
  }

  swift_getKeyPath();
  sub_100797A14();

  v3 = *(v0 + 256);
  if (v3 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    return 0;
  }

  sub_10000E3E8((v1 + 80), *(v1 + 104));
  return BookActionMenuDataSource.pagesRemainingInChapterString(afterPage:)(v2).value._countAndFlagsBits;
}

uint64_t REActionMenuState.transition(to:)(unint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v5 = *(v1 + 328);
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {
      if (a1 >> 62 == 1)
      {
        sub_1002B6C38(*(v2 + 328));
        v6 = v5 & 0x3FFFFFFFFFFFFFFFLL;
        v7 = a1 & 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_7;
      }
    }

    else
    {
      v9 = __ROR8__(v5 ^ 0x8000000000000000, 3);
      if (v9 <= 1)
      {
        if (v9)
        {
          if (a1 == 0x8000000000000008)
          {
            return result;
          }
        }

        else if (a1 == 0x8000000000000000)
        {
          return result;
        }
      }

      else if (v9 == 2)
      {
        if (a1 == 0x8000000000000010)
        {
          return result;
        }
      }

      else if (v9 == 3)
      {
        if (a1 == 0x8000000000000018)
        {
          return result;
        }
      }

      else if (a1 == 0x8000000000000020)
      {
        return result;
      }
    }
  }

  else if (!(a1 >> 62))
  {
    sub_1002B6C38(*(v2 + 328));
    v6 = v5;
    v7 = a1;
LABEL_7:
    v8 = _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v6, v7);
    result = sub_1002B6C54(v5);
    if (v8)
    {
      return result;
    }

    goto LABEL_23;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v10 = 0;
LABEL_24:
    swift_getKeyPath();
    sub_100797A14();

    if (a1 == 0x8000000000000000 && *(v2 + 248) <= 0xBFu)
    {
      v11 = *(v2 + 240);
      swift_getKeyPath();
      sub_100797A14();

      v12 = *(v2 + 328);
      if (!(v12 >> 62) || (v12 & 0xC000000000000000) == 0x4000000000000000)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100797A04();

        swift_beginAccess();
        if (*(v2 + 216) == v11)
        {
          sub_100334D1C();
        }

        else
        {
          v15 = swift_getKeyPath();
          __chkstk_darwin(v15);
          v36 = v2;
          sub_100797A04();
        }
      }
    }

    sub_1002B6C38(a1);
    sub_10033A0A4(a1);
    if (!v10)
    {
      goto LABEL_40;
    }

    v16 = __ROR8__(a1 & 0x7FFFFFFFFFFFFFFFLL, 3);
    if (v16 <= 1)
    {
      if (v16)
      {
        if (*(v2 + 280) >= 2u)
        {
          result = sub_100343518(0, 2);
        }

        else
        {
          v30 = swift_getKeyPath();
          __chkstk_darwin(v30);
          v36 = v2;
          sub_100797A04();
        }

        if (*(v2 + 304) != 0.0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (*(v2 + 280) >= 2u)
        {
          result = sub_100343518(0, 2);
        }

        else
        {
          v29 = swift_getKeyPath();
          __chkstk_darwin(v29);
          v36 = v2;
          sub_100797A04();
        }

        if (*(v2 + 304) != 0.0)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_48;
    }

    if (v16 == 2)
    {
LABEL_40:
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v18 = sub_10079ACE4();
      sub_100008B98(v18, qword_100ADC838);
      sub_1002B6C38(a1);
      v19 = sub_10079ACC4();
      v20 = sub_1007A29B4();
      sub_1002B6C54(a1);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v36 = v22;
        *v21 = 136315138;
        v23 = ActionMenuState.description.getter(a1);
        v25 = sub_1000070F4(v23, v24, &v36);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Cannot transition directly to %s", v21, 0xCu);
        sub_1000074E0(v22);
      }

      if (*(v2 + 280) >= 2u)
      {
        result = sub_100343518(0, 2);
      }

      else
      {
        v26 = swift_getKeyPath();
        __chkstk_darwin(v26);
        v36 = v2;
        sub_100797A04();
      }

      if (*(v2 + 304) != 0.0)
      {
        v28 = swift_getKeyPath();
        __chkstk_darwin(v28);
        v36 = v2;
LABEL_52:
        sub_100797A04();
      }

      goto LABEL_48;
    }

    if (v16 == 3)
    {
      v17 = REActionMenuState.makeChapterScrubbingState()();

      if (*(v2 + 280) == 1)
      {
        sub_100343518(v17, 1);
        result = sub_100342F4C(v17, 1);
      }

      else
      {
        v34 = swift_getKeyPath();
        __chkstk_darwin(v34);
        v36 = v2;
        sub_100797A04();
        sub_100342F4C(v17, 1);
      }

      if (*(v2 + 304) != 0.0)
      {
LABEL_72:
        v35 = swift_getKeyPath();
        __chkstk_darwin(v35);
        v36 = v2;
        goto LABEL_52;
      }

LABEL_48:
      *(v2 + 304) = 0;
      return result;
    }

    goto LABEL_49;
  }

  if (__ROR8__(a1 & 0x7FFFFFFFFFFFFFFFLL, 3) < 4uLL)
  {
    v10 = 1;
    goto LABEL_24;
  }

  v14 = swift_getKeyPath();
  __chkstk_darwin(v14);
  sub_100797A04();

LABEL_49:
  if (*(v2 + 280) >= 2u)
  {
    sub_100343518(0, 2);
  }

  else
  {
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    v36 = v2;
    sub_100797A04();
  }

  if (*(v2 + 304) == 0.0)
  {
    *(v2 + 304) = 0;
  }

  else
  {
    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);
    v36 = v2;
    sub_100797A04();
  }

  v32 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v32 + 24))(ObjectType, v32);
}