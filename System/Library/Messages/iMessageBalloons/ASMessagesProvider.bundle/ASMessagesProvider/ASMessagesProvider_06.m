double sub_B51D4(uint64_t a1, double a2)
{
  if (qword_93C300 != -1)
  {
    swift_once();
  }

  sub_309E0(&unk_9436A0, v14);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider);
  v6 = type metadata accessor for DividerView(0);
  v14[23] = v6;
  v14[24] = &protocol witness table for UIView;
  v14[20] = v5;
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label);
  v14[28] = type metadata accessor for DynamicTypeLinkedLabel();
  v14[29] = &protocol witness table for UILabel;
  v14[25] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider);
  v14[33] = v6;
  v14[34] = &protocol witness table for UIView;
  v14[30] = v8;
  swift_getObjectType();
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = sub_34154(a2, a1, v14);
  sub_30A3C(v14);
  return v12;
}

double sub_B53AC(double a1)
{
  type metadata accessor for DividerView(0);
  if (qword_93D2D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DividerView.Style(0);
  sub_BE38(v2, qword_99E220);
  swift_getObjectType();
  sub_50F450();
  return a1;
}

void sub_B54E0()
{
  v1 = v0;
  v2 = sub_7666D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label;
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v2, qword_99EA88);
  (*(v3 + 16))(v5, v7, v2);
  v8 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(v1 + v6) = sub_4ECF40(v5, 0, 0);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider;
  v10 = type metadata accessor for DividerView(0);
  *(v1 + v9) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider;
  *(v1 + v11) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_76A840();
  __break(1u);
}

uint64_t *sub_B56C8@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_B574C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedTransitionWithTasks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B57B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B57FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B584C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == a1)
      {
        v10 = *(v7 - 2);

        v10(a1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 == 2)
  {
    *(v1 + v3) = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GradientView.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GradientView.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_B5A90()
{
  result = qword_943810;
  if (!qword_943810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943810);
  }

  return result;
}

uint64_t sub_B5AE4()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_99A548);
  sub_BE38(v4, qword_99A548);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

uint64_t sub_B5C40(void *a1, void *a2)
{
  v4 = sub_768380();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7683C0();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v11 = sub_769970();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_B6D68;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_883330;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_B5EDC(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_768380();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7683C0();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75C3B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v23 = sub_769970();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  v18 = v24;
  v17 = v25;
  *(v16 + v15) = v24;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_B6C10;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8832E0;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  v21 = v23;
  sub_769980();
  _Block_release(v19);

  (*(v28 + 8))(v6, v4);
  return (*(v26 + 8))(v9, v27);
}

uint64_t sub_B625C(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_BD88(&qword_9438E0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v34 = &v32 - v6;
  v7 = sub_758FD0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_75C390();
  v17 = sub_758FA0();
  v18 = objc_allocWithZone(IAMValueEvent);
  v19 = sub_769210();
  v35 = v17 & 1;
  v20 = [v18 initWithName:v19 value:{sub_76A990(), v32, v33}];
  swift_unknownObjectRelease();

  [a2 receiveEvent:v20];
  LOBYTE(v19) = sub_758FC0();
  v21 = objc_allocWithZone(IAMValueEvent);
  v22 = sub_769210();
  v35 = v19 & 1;
  v23 = [v21 initWithName:v22 value:sub_76A990()];
  swift_unknownObjectRelease();

  v24 = v34;
  [a2 receiveEvent:v23];

  sub_75C3A0();
  sub_75C390();
  v25 = (v24 + *(v5 + 56));
  v26 = *(v8 + 32);
  v26(v24, v13, v7);
  v26(v25, v10, v7);
  v27 = *(v8 + 88);
  if (v27(v24, v7) == enum case for ArcadeState.purchasing(_:) && v27(v25, v7) == enum case for ArcadeState.subscribed(_:))
  {
    (*(v8 + 96))(v25, v7);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_4C971C();
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    else
    {
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    v30 = *(sub_BD88(&qword_9438E8) + 48);
    v31 = sub_760A60();
    (*(*(v31 - 8) + 8))(v25 + v30, v31);
    return (v28)(v24, v7);
  }

  else
  {
    (*(v8 + 8))(v16, v7);
    return sub_B6CC0(v24);
  }
}

uint64_t sub_B66C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_B6740(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_768940();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = [objc_allocWithZone(IAMMessageCoordinator) init];
  v11 = type metadata accessor for InAppMessagesMetricsDelegate();
  v12 = objc_allocWithZone(v11);
  sub_768900();

  sub_768ED0();
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesMetricsDelegate_metricsPipeline, v10, v7);
  v34.receiver = v12;
  v34.super_class = v11;
  v13 = objc_msgSendSuper2(&v34, "init");

  *(v4 + 32) = v13;
  sub_761230();
  sub_768ED0();
  v14 = v33;
  *(v4 + 40) = v33;
  sub_BE70(0, &qword_959CF0);
  v15 = v14;
  sub_768ED0();
  v16 = v33;
  v17 = type metadata accessor for InAppMessagesContextProvider();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isInFamily] = 2;
  v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isFamilyOrganizer] = 2;
  v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_canCreateFamily] = 2;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_arcadeSubscriptionManager] = v15;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_accountStore] = v16;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_rootViewController] = a2;
  v32.receiver = v18;
  v32.super_class = v17;
  v19 = a2;
  *(v4 + 24) = objc_msgSendSuper2(&v32, "init");
  [*(v4 + 16) setMetricsDelegate:*(v4 + 32)];
  *(v4 + 48) = a3;
  v20 = *(v4 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = *(a3 + 16);
  *(a3 + 16) = sub_B6ADC;
  *(a3 + 24) = v21;

  v23 = v20;
  sub_F704(v22);
  v24 = *(v4 + 40);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(v4 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v28 = v26;
  v29 = v24;

  sub_7611A0();

  return v4;
}

uint64_t sub_B6AA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B6AE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B6B1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B6B64()
{
  v1 = sub_75C3B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_B6C10()
{
  v1 = *(sub_75C3B0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_B625C(v0 + v2, v4, v5);
}

uint64_t sub_B6CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B6CC0(uint64_t a1)
{
  v2 = sub_BD88(&qword_9438E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B6D28()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 initializeBufferWithCopyOfBuffer for TodayCardGridTracker.TrackedSectionKey(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_B6D94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B6DDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B6E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D4>, double a9@<D5>)
{
  v50 = a6;
  v45 = a5;
  v55 = a4;
  v47 = a9;
  v46 = a8;
  v56 = a1;
  v54 = a7;
  v41 = sub_767D60();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_764930();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7656A0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v20);
  v43 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  sub_1ED18(a2, &v39 - v23, &qword_963790);
  v42 = v20;
  sub_1ED18(a3, &v24[*(v20 + 48)], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v52 = v15;
  v25 = *(v15 + 104);
  v26 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!LOBYTE(v57[0]))
  {
    v26 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v27 = *v26;
  v51 = v19;
  v53 = v14;
  v25(v19, v27, v14);
  sub_7629D0();
  v28 = v57[3];
  sub_10A2C(v57, &unk_9443A0);
  swift_getKeyPath();
  v29 = v49;
  v30 = v48;
  sub_768750();

  if ((*(v30 + 88))(v13, v29) == enum case for Shelf.ContentType.productReview(_:))
  {
    v31 = v24;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    if (v28)
    {
      (*(v52 + 16))(v44, v51, v53);
      sub_40DC7C(0.0);
      sub_765670();
    }

    else
    {
      v38 = v39;
      sub_75B4A0();
      (*(v33 + 16))(v44, v32, v34);
      sub_434C2C(v38);
      sub_765670();
      (*(v40 + 8))(v38, v41);
    }

    (*(v33 + 8))(v32, v34);
    return sub_10A2C(v31, &qword_9438F8);
  }

  else
  {
    v57[0] = v45;
    v35 = v43;
    sub_1ED18(v24, v43, &qword_9438F8);
    v36 = *(v42 + 48);
    sub_B7A24();
    sub_75B530();
    (*(v52 + 8))(v51, v53);
    sub_10A2C(v24, &qword_9438F8);
    sub_10A2C(v35 + v36, &qword_963790);
    sub_10A2C(v35, &qword_963790);
    return (*(v30 + 8))(v13, v29);
  }
}

uint64_t sub_B7518()
{
  sub_B79D0();

  return sub_75B530();
}

uint64_t sub_B75FC()
{
  sub_B79D0();

  return sub_75B520();
}

uint64_t sub_B76F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_B7A80();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_B7754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v20[4] = a4;
  *&v20[2] = a6;
  *&v20[3] = a7;
  v20[0] = a5;
  v20[1] = a1;
  v10 = sub_BD88(&qword_9438F8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v17 = *v7;
  sub_1ED18(a2, v20 - v15, &qword_963790);
  sub_1ED18(a3, &v16[*(v11 + 56)], &qword_963790);
  v20[5] = v17;
  sub_1ED18(v16, v13, &qword_9438F8);
  v18 = *(v11 + 56);
  sub_B7A24();

  sub_75B520();
  sub_10A2C(v16, &qword_9438F8);

  sub_10A2C(&v13[v18], &qword_963790);
  return sub_10A2C(v13, &qword_963790);
}

uint64_t sub_B7954()
{
  v1 = *v0;
  sub_BD88(&qword_943910);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77B6D0;
  *(v2 + 56) = &type metadata for GenericPageGridProvider;
  *(v2 + 64) = sub_B7A24();
  *(v2 + 72) = sub_B7AD4();
  *(v2 + 32) = v1;

  return v2;
}

unint64_t sub_B79D0()
{
  result = qword_9438F0;
  if (!qword_9438F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9438F0);
  }

  return result;
}

unint64_t sub_B7A24()
{
  result = qword_943900;
  if (!qword_943900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943900);
  }

  return result;
}

unint64_t sub_B7A80()
{
  result = qword_943908;
  if (!qword_943908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943908);
  }

  return result;
}

unint64_t sub_B7AD4()
{
  result = qword_9595D0;
  if (!qword_9595D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9595D0);
  }

  return result;
}

uint64_t sub_B7B3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v9 + 8))(v11, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    a2[3] = &type metadata for Double;
    a2[4] = &protocol witness table for Double;
    *a2 = 0x4040000000000000;
  }

  else
  {
    sub_9A330(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double sub_B7D90()
{
  v101 = sub_BD88(&qword_943918);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v75 - v0;
  v94 = sub_75E580();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_75E5A0();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_767030();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v75 - v5;
  v84 = sub_75A480();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_766AF0();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v75 - v9;
  __chkstk_darwin(v10);
  v79 = &v75 - v11;
  v92 = sub_766D70();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v75 - v14;
  v15 = sub_756EB0();
  v108 = *(v15 - 8);
  v109 = v15;
  __chkstk_darwin(v15);
  v107 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7656C0();
  v105 = *(v17 - 1);
  v106 = v17;
  __chkstk_darwin(v17);
  v104 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_764A60();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  v24 = sub_75DAB0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&qword_946810);
  __chkstk_darwin(v28 - 8);
  v111 = sub_BD88(&qword_943920);
  v85 = *(v111 - 8);
  __chkstk_darwin(v111);
  v30 = &v75 - v29;
  sub_75A4C0();
  sub_B8DE8(&qword_943928, &type metadata accessor for ReviewSummary);
  sub_75C750();
  v31 = aBlock[0];
  if (!aBlock[0])
  {
    return 0.0;
  }

  sub_75C800();
  sub_769060();
  sub_75C720();
  sub_75DA70();
  (*(v25 + 8))(v27, v24);
  sub_764A00();
  sub_B8DE8(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v32 = v103;
  v33 = sub_76A520();
  v34 = *(v102 + 8);
  v34(v20, v32);
  v34(v23, v32);
  swift_getKeyPath();
  sub_B8D1C();
  sub_769040();

  LODWORD(v103) = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  v35 = v104;
  sub_75C7B0();

  sub_765630();
  (*(v105 + 8))(v35, v106);
  swift_getKeyPath();
  sub_75C7B0();

  v36 = v117;
  v37 = v107;
  sub_75A470();
  v76 = v30;
  if ((v33 ^ 1))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_7699E0();
  }

  v40 = sub_657738(v37, v38 & 1, v36);
  (*(v108 + 8))(v37, v109);
  v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v40];
  v42 = [v40 length];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = v36;
  *(v43 + 32) = v41;
  *(v43 + 40) = 1;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_119AC;
  *(v44 + 24) = v43;
  v115 = sub_2636C;
  v116 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v114 = &unk_883458;
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
  sub_766AE0();
  v48 = v78;
  sub_766A90();
  v49 = *(v80 + 8);
  v50 = v81;
  v49(v47, v81);
  sub_766AA0();
  v49(v48, v50);
  sub_766D50();
  v107 = v46;
  sub_766DA0();
  v51 = sub_75A4B0();
  v53 = v52;
  v54 = sub_75A460();
  v55 = v82;
  v108 = v31;
  sub_75A490();
  v56 = sub_658400(v51, v53, v54, v55);

  (*(v83 + 8))(v55, v84);
  v106 = v56;
  v43 = v86;
  sub_767020();
  if (qword_93D7B0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v57 = sub_7666D0();
  sub_BE38(v57, qword_99EF08);
  sub_766FF0();
  (*(v88 + 8))(v43, v89);
  sub_766D50();
  v58 = v90;
  sub_766DB0();
  if (qword_93DFF8 != -1)
  {
    swift_once();
  }

  v59 = v94;
  v60 = sub_BE38(v94, qword_9A0660);
  (*(v93 + 16))(v95, v60, v59);
  v61 = v92;
  v114 = v92;
  v115 = &protocol witness table for LabelPlaceholder;
  v62 = sub_B1B4(aBlock);
  v63 = v91;
  v64 = *(v91 + 16);
  v65 = v110;
  v64(v62, v110, v61);
  v112[3] = v61;
  v112[4] = &protocol witness table for LabelPlaceholder;
  v66 = sub_B1B4(v112);
  v64(v66, v58, v61);
  v67 = v96;
  sub_75E590();
  sub_B8DE8(&qword_943938, &type metadata accessor for ReviewSummaryLayout);
  v68 = v99;
  v69 = v98;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v70 = v109;
  v71 = v101;
  sub_7673F0();
  v39 = v72;

  (*(v100 + 8))(v68, v71);
  (*(v97 + 8))(v67, v69);
  v73 = *(v63 + 8);
  v73(v58, v61);
  v73(v65, v61);
  (*(v85 + 8))(v76, v111);
  return v39;
}

unint64_t sub_B8D1C()
{
  result = qword_943930;
  if (!qword_943930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943930);
  }

  return result;
}

uint64_t sub_B8D78()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_B8DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B8DE8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_B8E30()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99A6A0 = &type metadata for Double;
  qword_99A6A8 = &protocol witness table for Double;
  qword_99A688 = 0x4030000000000000;
  xmmword_99A560 = vdupq_n_s64(0x4064000000000000uLL);
  sub_10914(&v53, &unk_99A570);
  qword_99A598 = sub_BEC00;
  unk_99A5A0 = 0;
  sub_10914(&v50, &unk_99A5A8);
  sub_10914(&v47, &unk_99A5D0);
  sub_10914(&v38, &unk_99A648);
  sub_10914(&v44, &unk_99A5F8);
  sub_10914(&v41, &unk_99A620);
  qword_99A670 = 0;
  unk_99A678 = 0;
  byte_99A680 = 0;
  *&result = 0x1000100010001;
  dword_99A6B0 = 65537;
  qword_99A6B8 = 0;
  byte_99A6C0 = 1;
  return result;
}

double sub_B9468()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99A810 = &type metadata for Double;
  qword_99A818 = &protocol witness table for Double;
  qword_99A7F8 = 0x4020000000000000;
  xmmword_99A6D0 = vdupq_n_s64(0x4061000000000000uLL);
  sub_10914(&v53, &unk_99A6E0);
  qword_99A708 = sub_BEC00;
  unk_99A710 = 0;
  sub_10914(&v50, &unk_99A718);
  sub_10914(&v47, &unk_99A740);
  sub_10914(&v38, &unk_99A7B8);
  sub_10914(&v44, &unk_99A768);
  sub_10914(&v41, &unk_99A790);
  qword_99A7E0 = 0;
  unk_99A7E8 = 0;
  byte_99A7F0 = 0;
  *&result = 16777217;
  dword_99A820 = 16777217;
  qword_99A828 = 0;
  byte_99A830 = 1;
  return result;
}

double sub_B9AA0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4028000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99A980 = &type metadata for Double;
  qword_99A988 = &protocol witness table for Double;
  qword_99A968 = 0x4030000000000000;
  xmmword_99A840 = vdupq_n_s64(0x4054000000000000uLL);
  sub_10914(&v53, &unk_99A850);
  qword_99A878 = sub_BEC00;
  unk_99A880 = 0;
  sub_10914(&v50, &unk_99A888);
  sub_10914(&v47, &unk_99A8B0);
  sub_10914(&v38, &unk_99A928);
  sub_10914(&v44, &unk_99A8D8);
  sub_10914(&v41, &unk_99A900);
  qword_99A950 = 0;
  unk_99A958 = 0;
  byte_99A960 = 0;
  *&result = 0x1000100010001;
  dword_99A990 = 65537;
  qword_99A998 = 0;
  byte_99A9A0 = 1;
  return result;
}

double sub_BA0D0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4024000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99AAF0 = &type metadata for Double;
  qword_99AAF8 = &protocol witness table for Double;
  qword_99AAD8 = 0x4024000000000000;
  xmmword_99A9B0 = vdupq_n_s64(0x4048000000000000uLL);
  sub_10914(&v53, &unk_99A9C0);
  qword_99A9E8 = sub_BEC00;
  unk_99A9F0 = 0;
  sub_10914(&v50, &unk_99A9F8);
  sub_10914(&v47, &unk_99AA20);
  sub_10914(&v38, &unk_99AA98);
  sub_10914(&v44, &unk_99AA48);
  sub_10914(&v41, &unk_99AA70);
  qword_99AAC0 = 0;
  unk_99AAC8 = 0;
  byte_99AAD0 = 0;
  result = 7.29112205e-304;
  dword_99AB00 = 0x1000000;
  qword_99AB08 = 0;
  byte_99AB10 = 1;
  return result;
}

double sub_BA700()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99AC60 = &type metadata for Double;
  qword_99AC68 = &protocol witness table for Double;
  qword_99AC48 = 0x4018000000000000;
  xmmword_99AB20 = vdupq_n_s64(0x4051000000000000uLL);
  sub_10914(&v53, &unk_99AB30);
  qword_99AB58 = sub_BEC00;
  unk_99AB60 = 0;
  sub_10914(&v50, &unk_99AB68);
  sub_10914(&v47, &unk_99AB90);
  sub_10914(&v38, &unk_99AC08);
  sub_10914(&v44, &unk_99ABB8);
  sub_10914(&v41, &unk_99ABE0);
  qword_99AC30 = 0;
  unk_99AC38 = 0;
  byte_99AC40 = 0;
  result = 7.29112205e-304;
  dword_99AC70 = 0x1000000;
  qword_99AC78 = 0;
  byte_99AC80 = 1;
  return result;
}

double sub_BAD30()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99ADD0 = &type metadata for Double;
  qword_99ADD8 = &protocol witness table for Double;
  qword_99ADB8 = 0x4020000000000000;
  xmmword_99AC90 = vdupq_n_s64(0x4051000000000000uLL);
  sub_10914(&v53, &unk_99ACA0);
  qword_99ACC8 = sub_BEC00;
  unk_99ACD0 = 0;
  sub_10914(&v50, &unk_99ACD8);
  sub_10914(&v47, &unk_99AD00);
  sub_10914(&v38, &unk_99AD78);
  sub_10914(&v44, &unk_99AD28);
  sub_10914(&v41, &unk_99AD50);
  qword_99ADA0 = 0;
  unk_99ADA8 = 0;
  byte_99ADB0 = 0;
  *&result = 16777217;
  dword_99ADE0 = 16777217;
  qword_99ADE8 = 0;
  byte_99ADF0 = 1;
  return result;
}

uint64_t sub_BB364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_93E080 != -1)
    {
      swift_once();
    }

    v3 = sub_766CA0();
    v4 = v3;
    v5 = qword_9A0710;
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      a2[3] = sub_766970();
      a2[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(a2);
      return sub_766960();
    }

    if (qword_93E078 != -1)
    {
      swift_once();
    }

    v3 = sub_766CA0();
    v4 = v3;
    v5 = qword_9A06F8;
  }

  v6 = sub_BE38(v3, v5);
  a2[3] = v4;
  a2[4] = &protocol witness table for StaticDimension;
  v7 = sub_B1B4(a2);
  v8 = *(*(v4 - 8) + 16);

  return v8(v7, v6, v4);
}

uint64_t sub_BB4E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v4 - 8);
  v54 = &v49 - v5;
  v6 = sub_7623A0();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_9457F0);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v49 = &v49 - v9;
  v10 = sub_75D850();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v56 = &v49 - v16;
  v17 = &selRef_setTextAlignment_;
  v18 = [v1 traitCollection];
  v19 = sub_769A00();

  if (v19)
  {
    v20 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  }

  else
  {
    v20 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  }

  v21 = &v2[v20];
  swift_beginAccess();
  sub_BE140(v21, a1);
  v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton];
  type metadata accessor for TodayCardLockupView();
  sub_75D650();
  v23 = (v22 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize);
  v24 = *(v22 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16);
  v55 = a1;
  if (v24)
  {
    v25 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(v22 + v25, v57);
    sub_B170(v57, v57[3]);
    v17 = &selRef_setTextAlignment_;
    sub_760DE0();
    v27 = v26;
    v29 = v28;
    sub_BEB8(v57);
    *v23 = v27;
    v23[1] = v29;
    *(v23 + 16) = 0;
  }

  else
  {
    v27 = *v23;
  }

  v30 = [v2 v17[23]];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v31 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v31 = qword_946938;
  }

  v32 = sub_BE38(v10, v31);
  (*(v11 + 16))(v13, v32, v10);

  (*(v11 + 32))(v56, v13, v10);
  v33 = (v22 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter);
  swift_beginAccess();
  v34 = v33[3];
  if (v34)
  {
    v35 = sub_B170(v33, v33[3]);
    v36 = *(v34 - 8);
    v37 = __chkstk_darwin(v35);
    v39 = &v49 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);
    sub_75EC20();
    (*(v36 + 8))(v39, v34);
  }

  v40 = v51;
  v41 = *(v51 + 104);
  v41(v50, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  v42 = v54;
  v41(v54, enum case for OfferButtonSubtitlePosition.right(_:), v6);
  (*(v40 + 56))(v42, 0, 1, v6);
  sub_BE2F8();
  v43 = v49;
  sub_760940();
  v44 = v56;
  sub_75D820();
  v46 = v45;

  (*(v52 + 8))(v43, v53);
  result = (*(v11 + 8))(v44, v10);
  v48 = v55;
  *(v55 + 272) = v27;
  *(v48 + 280) = v46;
  *(v48 + 288) = 0;
  return result;
}

double sub_BBAF0(void *a1, double a2)
{
  v5 = sub_75D850();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v22[-v10 - 8];
  sub_BB4E0(v27);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_BE140(v2 + v12, v26);
  [v2 layoutMargins];
  if (sub_769A00())
  {
    v13 = v26;
  }

  else
  {
    v13 = v27;
  }

  sub_BE140(v13, v22);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v14 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v14 = qword_946938;
  }

  v15 = sub_BE38(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  (*(v6 + 32))(v11, v8, v5);
  if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
  {
    sub_75D800();
    v17 = v16;
    sub_75D800();
    v23 = v17;
    v24 = v18;
    v25 = 0;
  }

  v19 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a1, a2);
  (*(v6 + 8))(v11, v5);
  sub_BE0EC(v22);
  sub_BE0EC(v26);
  sub_BE0EC(v27);
  return v19;
}

CGFloat sub_BBE58()
{
  v1 = sub_75D850();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  sub_BB4E0(v22);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_BE140(v0 + v8, v21);
  v9 = [v0 traitCollection];
  [v0 layoutMargins];
  if (sub_769A00())
  {
    v10 = v21;
  }

  else
  {
    v10 = v22;
  }

  sub_BE140(v10, v17);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v11 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v11 = qword_946938;
  }

  v12 = sub_BE38(v1, v11);
  (*(v2 + 16))(v4, v12, v1);
  (*(v2 + 32))(v7, v4, v1);
  if ((v20 & 1) == 0 && v18 == 0.0 && v19 == 0.0)
  {
    sub_75D800();
    v14 = v13;
    sub_75D800();
    v18 = v14;
    v19 = v15;
    v20 = 0;
  }

  _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v17, v9, 0.0);

  (*(v2 + 8))(v7, v1);
  sub_BE0EC(v17);
  sub_BE0EC(v21);
  sub_BE0EC(v22);
  return UIViewNoIntrinsicMetric;
}

uint64_t sub_BC21C@<X0>(uint64_t *a1@<X8>)
{
  sub_BB4E0(v140);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel);
    v4 = sub_75BB20();
    *(&v116[1] + 1) = v4;
    *&v116[2] = &protocol witness table for UILabel;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
    }

    *&v116[0] = v5;
    sub_10914(v116, v139);
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    if (v9)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = &protocol witness table for UILabel;
    }

    else
    {
      v12 = 0;
    }

    v136 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    *&v137 = 0;
    *(&v137 + 1) = v11;
    v138 = v12;
    v133 = 0u;
    v134 = 0u;
    v135 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
    v7 = sub_75BB20();
    v8 = v7;
    v139[4] = &protocol witness table for UILabel;
    v139[3] = v7;
    v139[0] = v6;
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel);
    if (v9)
    {
      v10 = type metadata accessor for SearchAdTransparencyLabel();
      v132 = &protocol witness table for UILabel;
      v131 = v10;
      *&v130 = v9;
      sub_10914(&v130, v116);
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
      if (v13)
      {
        v14 = &protocol witness table for UILabel;
        v15 = v7;
      }

      else
      {
        v15 = 0;
        v14 = 0;
        *(&v116[0] + 1) = 0;
        *&v116[1] = 0;
      }

      *&v116[0] = v13;
      *(&v116[1] + 1) = v15;
      *&v116[2] = v14;
      v16 = v6;
      v9 = 0;
      v6 = v13;
    }

    v17 = v6;
    v136 = v116[0];
    v137 = v116[1];
    v138 = *&v116[2];
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
    v135 = &protocol witness table for UILabel;
    *(&v134 + 1) = v8;
    *&v133 = v3;
  }

  v18 = v9;
  v19 = v3;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkPresenter))
  {
    v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
    v21 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_BE140(v140, &v130);
  v24 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v25 = sub_759210();
  v129 = &protocol witness table for UIView;
  v128 = v25;
  v103 = v24;
  v127[0] = v24;
  v26 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v27 = sub_75BB20();
  v28 = v27;
  v126[4] = &protocol witness table for UILabel;
  v126[3] = v27;
  v102 = v26;
  v126[0] = v26;
  v29 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  v101 = v29;
  if (v29)
  {
    v30 = &protocol witness table for UILabel;
    v31 = v27;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v125[2] = 0;
    v125[1] = 0;
  }

  v125[0] = v29;
  v125[3] = v31;
  v125[4] = v30;
  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v124[4] = &protocol witness table for UILabel;
  v124[3] = v27;
  v100 = v32;
  v124[0] = v32;
  sub_134D8(v139, v121);
  sub_1ED18(&v136, v120, &qword_9417D0);
  if (v20)
  {
    v33 = &protocol witness table for UILabel;
    v34 = v20;
    v35 = v28;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v119[2] = 0;
    v119[1] = 0;
  }

  v119[0] = v34;
  v119[3] = v35;
  v119[4] = v33;
  if (v21)
  {
    v36 = &protocol witness table for UILabel;
  }

  else
  {
    v28 = 0;
    v36 = 0;
    v118[2] = 0;
    v118[1] = 0;
  }

  v118[0] = v21;
  v118[3] = v28;
  v118[4] = v36;
  sub_1ED18(&v133, v117, &qword_9417D0);
  v37 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v109 = type metadata accessor for OfferButton();
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_BE19C();
  v108 = swift_allocObject();
  *a1 = v108;
  sub_BE140(&v130, v116);
  v104 = v35;
  BYTE8(v116[47]) = v35 != 0;
  v38 = v128;
  v39 = v129;
  sub_B170(v127, v128);
  v40 = sub_76A480();
  v99 = &v99;
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v99 - v42;
  v107 = v20;
  v106 = v21;
  v105 = v37;
  v44 = v103;
  v45 = v102;
  v46 = v101;
  v47 = v100;
  sub_766510();
  v48 = *(v38 - 8);
  if ((*(v48 + 48))(v43, 1, v38) == 1)
  {
    (*(v41 + 8))(v43, v40);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v38;
    v115 = v39;
    v49 = sub_B1B4(&v113);
    (*(v48 + 32))(v49, v43, v38);
  }

  *(&v116[22] + 8) = v113;
  *(&v116[23] + 8) = v114;
  *(&v116[24] + 1) = v115;
  sub_1ED18(v126, v110, &qword_9417D0);
  v50 = v111;
  if (v111)
  {
    v51 = v112;
    sub_B170(v110, v111);
    v52 = sub_76A480();
    v53 = *(v52 - 8);
    __chkstk_darwin(v52);
    v55 = &v99 - v54;
    sub_7669B0();
    v56 = *(v50 - 8);
    if ((*(v56 + 48))(v55, 1, v50) == 1)
    {
      (*(v53 + 8))(v55, v52);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v50;
      v115 = v51;
      v57 = sub_B1B4(&v113);
      (*(v56 + 32))(v57, v55, v50);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v110, &qword_9417D0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[25] = v113;
  v116[26] = v114;
  *&v116[27] = v115;
  sub_1ED18(v125, v110, &qword_9417D0);
  v58 = v111;
  if (v111)
  {
    v59 = v112;
    sub_B170(v110, v111);
    v60 = sub_76A480();
    v61 = *(v60 - 8);
    __chkstk_darwin(v60);
    v63 = &v99 - v62;
    sub_7669B0();
    v64 = *(v58 - 8);
    if ((*(v64 + 48))(v63, 1, v58) == 1)
    {
      (*(v61 + 8))(v63, v60);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v58;
      v115 = v59;
      v65 = sub_B1B4(&v113);
      (*(v64 + 32))(v65, v63, v58);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v110, &qword_9417D0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[27] + 8) = v113;
  *(&v116[28] + 8) = v114;
  *(&v116[29] + 1) = v115;
  sub_134D8(v124, &v116[30]);
  v66 = v122;
  v67 = v123;
  sub_B170(v121, v122);
  v68 = sub_76A480();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v99 - v70;
  if (v104)
  {
    sub_7669A0();
  }

  else
  {
    sub_7669B0();
  }

  v72 = *(v66 - 8);
  if ((*(v72 + 48))(v71, 1, v66) == 1)
  {
    (*(v69 + 8))(v71, v68);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v66;
    v115 = v67;
    v73 = sub_B1B4(&v113);
    (*(v72 + 32))(v73, v71, v66);
  }

  *(&v116[32] + 8) = v113;
  *(&v116[33] + 8) = v114;
  *(&v116[34] + 1) = v115;
  sub_1ED18(v120, v110, &qword_9417D0);
  v74 = v111;
  if (v111)
  {
    v75 = v112;
    sub_B170(v110, v111);
    v76 = sub_76A480();
    v77 = *(v76 - 8);
    __chkstk_darwin(v76);
    v79 = &v99 - v78;
    sub_7669B0();
    v80 = *(v74 - 8);
    if ((*(v80 + 48))(v79, 1, v74) == 1)
    {
      (*(v77 + 8))(v79, v76);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v74;
      v115 = v75;
      v81 = sub_B1B4(&v113);
      (*(v80 + 32))(v81, v79, v74);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v110, &qword_9417D0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[35] = v113;
  v116[36] = v114;
  *&v116[37] = v115;
  sub_1ED18(v119, &v116[37] + 8, &qword_9417D0);
  sub_1ED18(v118, v110, &qword_9417D0);
  v82 = v111;
  if (v111)
  {
    v83 = v112;
    sub_B170(v110, v111);
    v84 = sub_76A480();
    v85 = *(v84 - 8);
    __chkstk_darwin(v84);
    v87 = &v99 - v86;
    sub_7669A0();
    v88 = *(v82 - 8);
    if ((*(v88 + 48))(v87, 1, v82) == 1)
    {
      (*(v85 + 8))(v87, v84);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v82;
      v115 = v83;
      v89 = sub_B1B4(&v113);
      (*(v88 + 32))(v89, v87, v82);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v110, &qword_9417D0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[40] = v113;
  v116[41] = v114;
  *&v116[42] = v115;
  sub_1ED18(v117, v110, &qword_9417D0);
  v90 = v111;
  if (v111)
  {
    v91 = v112;
    sub_B170(v110, v111);
    v92 = sub_76A480();
    v93 = *(v92 - 8);
    __chkstk_darwin(v92);
    v95 = &v99 - v94;
    sub_7669B0();
    v96 = *(v90 - 8);
    if ((*(v96 + 48))(v95, 1, v90) == 1)
    {
      sub_10A2C(v117, &qword_9417D0);
      sub_10A2C(v120, &qword_9417D0);
      sub_BE0EC(&v130);
      sub_10A2C(v118, &qword_9417D0);
      sub_BEB8(v124);
      sub_10A2C(v125, &qword_9417D0);
      sub_10A2C(v126, &qword_9417D0);
      sub_10A2C(v119, &qword_9417D0);
      (*(v93 + 8))(v95, v92);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v90;
      v115 = v91;
      v97 = sub_B1B4(&v113);
      (*(v96 + 32))(v97, v95, v90);
      sub_10A2C(v117, &qword_9417D0);
      sub_10A2C(v120, &qword_9417D0);
      sub_BE0EC(&v130);
      sub_10A2C(v118, &qword_9417D0);
      sub_BEB8(v124);
      sub_10A2C(v125, &qword_9417D0);
      sub_10A2C(v126, &qword_9417D0);
      sub_10A2C(v119, &qword_9417D0);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v117, &qword_9417D0);
    sub_10A2C(v120, &qword_9417D0);
    sub_BE0EC(&v130);
    sub_10A2C(v118, &qword_9417D0);
    sub_BEB8(v124);
    sub_10A2C(v125, &qword_9417D0);
    sub_10A2C(v126, &qword_9417D0);
    sub_10A2C(v119, &qword_9417D0);
    sub_10A2C(v110, &qword_9417D0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[42] + 8) = v113;
  *(&v116[43] + 8) = v114;
  *(&v116[44] + 1) = v115;
  *&v116[45] = v105;
  *(&v116[45] + 8) = v113;
  *(&v116[46] + 1) = v109;
  *&v116[47] = &protocol witness table for UIView;
  memcpy((v108 + 16), v116, 0x2F9uLL);

  sub_10A2C(&v136, &qword_9417D0);
  sub_BE0EC(v140);
  sub_BEB8(v121);
  sub_BEB8(v127);
  sub_10A2C(&v133, &qword_9417D0);
  return sub_BEB8(v139);
}

void sub_BD3C0()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v45 = &v44 - v4;
  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkPresenter;
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkPresenter);
  v9 = !v7 || (v8 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v7 + v8) != 1) || [v5 numberOfLines] == 0;
  [v5 setHidden:{v9, v3}];
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
  v11 = *(v1 + v6);
  if (v11 && (v12 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v11 + v12) == 1) && [v10 numberOfLines])
  {
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd) == 1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  [v10 setHidden:v13];
  v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v15 = *(v1 + v6);
  v17 = v15 && (v16 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v15 + v16) & 1) != 0) || [v14 numberOfLines] == 0;
  [v14 setHidden:v17];
  v18 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v19 = *(v1 + v6);
  if (v19 && (v20 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v19 + v20) & 1) != 0) || ![v18 numberOfLines])
  {
    v21 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v21 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v21 = 0;
  }

  [v18 setHidden:v21];
  v22 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    v24 = v22;
    if (v23 == 1)
    {
      if ([v18 isHidden])
      {
        v25 = [v10 isHidden] ^ 1;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }

    [v24 setHidden:v25];
  }

  v26 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v27 = [v26 text];
  if (v27)
  {
    v28 = v27;
    sub_769240();
  }

  v29 = sub_7692D0();

  if (v29)
  {
    v30 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v30 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v30 = 0;
  }

  [v26 setHidden:v30];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel;
  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    if (v32)
    {
      v33 = v32;
      sub_75BA30();
      sub_75BA40();

      v34 = *(v1 + v31);
      if (v34)
      {
        v35 = v34;
        v36 = [v18 textColor];
        [v35 setTextColor:v36];
LABEL_45:
      }
    }
  }

  else if (v32)
  {
    v37 = qword_93D548;
    v38 = v32;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = sub_7666D0();
    v40 = sub_BE38(v39, qword_99E7E8);
    v41 = *(v39 - 8);
    v42 = v45;
    (*(v41 + 16))(v45, v40, v39);
    (*(v41 + 56))(v42, 0, 1, v39);
    sub_75BA40();

    v43 = *(v1 + v31);
    if (v43)
    {
      sub_396E8();
      v36 = v43;
      v35 = sub_769FF0();
      [v36 setTextColor:v35];
      goto LABEL_45;
    }
  }
}

uint64_t sub_BD8E8()
{
  sub_BE0EC(v0 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics);
  sub_BE0EC(v0 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics);
}

id sub_BD988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_BDAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton()) init];
    sub_765730();
    sub_764C60();
    v8 = v7;

    if (v8)
    {
      v9 = sub_769210();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_95CDB8];
    v15 = *&v6[qword_95CDB8];
    *v14 = sub_BE0D4;
    v14[1] = v13;

    sub_F704(v15);
    v16 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel());
    v17 = v6;
    v18 = sub_523B2C(v17);
    v19 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall;
    if (v3[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel];
      if ([v20 hasContent])
      {
        v21 = [v20 text];
        if (v21)
        {
LABEL_10:
          v22 = v21;
          v23 = sub_769240();
          v25 = v24;

          v26 = v25;
          v21 = v23;
LABEL_15:
          v27 = &v18[qword_959BD0];
          *v27 = v21;
          *(v27 + 1) = v26;

          sub_5241B8();
          v28 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel;
          v29 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel];
          v30 = v18;
          if (v29)
          {
            [v29 removeFromSuperview];
            v29 = *&v3[v28];
          }

          *&v3[v28] = v18;
          v31 = v18;

          sub_BD3C0();
          [v3 addSubview:v31];

          v32 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
          v33 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
          if (v33 && ([v33 isHidden] & 1) == 0 && (v34 = *&v3[v32]) != 0)
          {
            v35 = [v34 hasContent];
          }

          else
          {
            v35 = 0;
          }

          v36 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter;
          swift_beginAccess();
          sub_1ED18(&v3[v36], v39, &unk_93FBD0);
          v37 = v40;
          sub_10A2C(v39, &unk_93FBD0);
          if (v37 || v35)
          {
            [*&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
          }

          [v3 setNeedsLayout];
        }

LABEL_13:
        v26 = 0;
        goto LABEL_15;
      }

      if (v3[v19] == 1)
      {
        v21 = [*&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] text];
        if (v21)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    v21 = sub_765720();
    goto LABEL_15;
  }

  v2[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd] = 0;
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel;
  v11 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel];
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

  result = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  if (result)
  {

    return [result setHidden:0];
  }

  return result;
}

uint64_t sub_BDF20(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BD88(&unk_93F630);
  sub_768860();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10A2C(v4, &unk_93F980);
  }

  v8 = sub_765730();
  sub_32A6C0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_BE094()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_BE19C()
{
  result = qword_9439C8;
  if (!qword_9439C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9439C8);
  }

  return result;
}

uint64_t sub_BE1F0()
{
  sub_BEB8((v0 + 4));

  sub_BEB8((v0 + 11));
  sub_BEB8((v0 + 16));
  sub_BEB8((v0 + 21));
  sub_BEB8((v0 + 26));
  sub_BEB8((v0 + 31));
  sub_BEB8((v0 + 39));
  if (v0[50])
  {
    sub_BEB8((v0 + 47));
  }

  if (v0[55])
  {
    sub_BEB8((v0 + 52));
  }

  if (v0[60])
  {
    sub_BEB8((v0 + 57));
  }

  sub_BEB8((v0 + 62));
  if (v0[70])
  {
    sub_BEB8((v0 + 67));
  }

  if (v0[75])
  {
    sub_BEB8((v0 + 72));
  }

  if (v0[80])
  {
    sub_BEB8((v0 + 77));
  }

  if (v0[85])
  {
    sub_BEB8((v0 + 82));
  }

  if (v0[90])
  {
    sub_BEB8((v0 + 87));
  }

  if (v0[95])
  {
    sub_BEB8((v0 + 92));
  }

  return _swift_deallocObject(v0, 777, 7);
}

unint64_t sub_BE2F8()
{
  result = qword_944E20;
  if (!qword_944E20)
  {
    sub_7623A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944E20);
  }

  return result;
}

char *sub_BE350()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v58 = sub_7676A0();
  __chkstk_darwin(v58);
  v57 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_767BB0();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_allowsGroupBlending] = 1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_preferStackedLargeAXLayouts] = 0;
  v56 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel;
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99E6F8);
  v14 = *(v12 - 8);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  v15(v11, v13, v12);
  v19 = *(v14 + 56);
  v18 = v14 + 56;
  v17 = v19;
  v19(v11, 0, 1, v12);
  v20 = *(v6 + 104);
  v48 = v6 + 104;
  v49 = v20;
  v50 = enum case for DirectionalTextAlignment.none(_:);
  v20(v8);
  v21 = sub_75BB20();
  v22 = objc_allocWithZone(v21);
  v46 = v5;
  *&v1[v56] = sub_75BB10();
  v47 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v12, qword_99E758);
  v54 = v15;
  v55 = v16;
  v15(v11, v23, v12);
  v56 = v18;
  v17(v11, 0, 1, v12);
  v49(v8, v50, v46);
  v24 = objc_allocWithZone(v21);
  *&v1[v47] = sub_75BB10();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkPresenter] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView____lazy_storage___lockupViews] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView____lazy_storage___crossLinkViews] = 0;
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  sub_BE140(&xmmword_99A9B0, &v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics]);
  if (qword_93C330 != -1)
  {
    swift_once();
  }

  sub_BE140(&xmmword_99AB20, &v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics]);
  v25 = type metadata accessor for TodayCardLockupView();
  v61.receiver = v1;
  v61.super_class = v25;
  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v51 + 104))(v53, enum case for UITypesettingLanguageAwareLineHeightRatio.disabled(_:), v52);
  v27 = v26;
  sub_769EE0();
  sub_767680();
  sub_769EF0();
  v28 = qword_93D500;
  v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
  v30 = v54;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v12, qword_99E710);
  v30(v11, v31, v12);
  v17(v11, 0, 1, v12);
  sub_75BA40();

  v32 = qword_93D530;
  v33 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_BE38(v12, qword_99E7A0);
  v30(v11, v34, v12);
  v17(v11, 0, 1, v12);
  sub_75BA40();

  v35 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel;
  v36 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  [v38 setTextColor:v39];

  [*&v27[v35] setHidden:1];
  [*&v27[v35] setAlpha:0.0];
  [v27 addSubview:*&v27[v35]];
  v40 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel;
  v41 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel];
  v42 = [v37 labelColor];
  [v41 setTextColor:v42];

  [*&v27[v40] setHidden:1];
  [*&v27[v40] setAlpha:0.0];
  [v27 addSubview:*&v27[v40]];
  sub_BD88(&qword_9477F0);
  v43 = swift_allocObject();
  v58 = xmmword_77B6D0;
  *(v43 + 16) = xmmword_77B6D0;
  *(v43 + 32) = sub_767B80();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v60[3] = v25;
  v60[0] = v27;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v60);
  v44 = swift_allocObject();
  *(v44 + 16) = v58;
  *(v44 + 32) = sub_7676F0();
  *(v44 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v27;
}

uint64_t sub_BEC04@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v223 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v223);
  v207 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v212 = &v194 - v5;
  v231 = sub_75CFE0();
  v222 = *(v231 - 8);
  __chkstk_darwin(v231);
  v216 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v228 = &v194 - v8;
  v9 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v9 - 8);
  v217 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v214 = (&v194 - v12);
  __chkstk_darwin(v13);
  v211 = &v194 - v14;
  __chkstk_darwin(v15);
  v226 = (&v194 - v16);
  v17 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v17 - 8);
  v215 = &v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v208 = &v194 - v20;
  __chkstk_darwin(v21);
  v227 = &v194 - v22;
  __chkstk_darwin(v23);
  v218 = &v194 - v24;
  v25 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v220 = *(v25 - 8);
  v221 = v25;
  __chkstk_darwin(v25);
  v206 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v205 = &v194 - v28;
  __chkstk_darwin(v29);
  v204 = &v194 - v30;
  __chkstk_darwin(v31);
  v213 = (&v194 - v32);
  __chkstk_darwin(v33);
  v225 = &v194 - v34;
  __chkstk_darwin(v35);
  v210 = &v194 - v36;
  __chkstk_darwin(v37);
  v209 = &v194 - v38;
  __chkstk_darwin(v39);
  v224 = (&v194 - v40);
  v41 = sub_BD88(&unk_948010);
  __chkstk_darwin(v41 - 8);
  v197 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v196 = &v194 - v44;
  __chkstk_darwin(v45);
  v200 = &v194 - v46;
  __chkstk_darwin(v47);
  v199 = &v194 - v48;
  __chkstk_darwin(v49);
  v219 = &v194 - v50;
  __chkstk_darwin(v51);
  v195 = &v194 - v52;
  __chkstk_darwin(v53);
  v198 = &v194 - v54;
  __chkstk_darwin(v55);
  v203 = &v194 - v56;
  __chkstk_darwin(v57);
  v202 = &v194 - v58;
  __chkstk_darwin(v59);
  v201 = &v194 - v60;
  __chkstk_darwin(v61);
  v229 = &v194 - v62;
  v63 = sub_75B660();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v194 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v194 - v68;
  v70 = sub_BD88(&unk_94F1F0);
  v230 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = &v194 - v71;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v73 = v236;
  if (v236)
  {
  }

  swift_getKeyPath();
  sub_768750();

  v74 = v236;
  if (v236)
  {
    v75 = v235;

    v76 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v76 = v75 & 0xFFFFFFFFFFFFLL;
    }

    v233 = v76 != 0;
  }

  else
  {
    v233 = 0;
  }

  swift_getKeyPath();
  v234 = v72;
  sub_768750();

  if (v235)
  {
    v77 = sub_759880();
  }

  else
  {
    v77 = 0;
  }

  swift_getKeyPath();
  sub_768750();

  (*(v64 + 104))(v66, enum case for ShelfBackground.interactive(_:), v63);
  v78 = sub_75B650();
  v79 = *(v64 + 8);
  v79(v66, v63);
  v79(v69, v63);
  v80 = sub_C0E2C(a1);
  if (sub_C18F4(a1))
  {
    if ((v78 & 1) == 0)
    {
      v81 = v77 ^ 1;
      goto LABEL_17;
    }

LABEL_15:
    sub_36492C(v233, v232);
    return (*(v230 + 8))(v234, v70);
  }

  if (v78)
  {
    goto LABEL_15;
  }

  v81 = 0;
LABEL_17:
  v194 = v70;
  if (!v80)
  {
    LODWORD(v229) = v81;
    swift_getKeyPath();
    sub_768750();

    if (v235)
    {
      v85 = v219;
      sub_759820();

      v86 = sub_759810();
      (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    }

    else
    {
      v113 = sub_759810();
      (*(*(v113 - 8) + 56))(v219, 1, 1, v113);
    }

    v114 = v221;
    if (v77)
    {
      v115 = v214;
      *v214 = xmmword_783140;
      v116 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
      v117 = sub_75CFD0();
      v118 = *(v117 - 8);
      v119 = *(v118 + 104);
      v227 = (v117 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v119(v115, v116, v117);
      v120 = *(v118 + 56);
      v228 = v117;
      v120(v115, 0, 1, v117);
      if (qword_93DE18 != -1)
      {
        swift_once();
      }

      v121 = sub_BE38(v114, qword_9A0160);
      sub_C1D58(v121, v213);
      v122 = 10.0;
      v123 = v204;
      if (qword_93DE48 != -1)
      {
        swift_once();
      }

      v124 = 1;
      v125 = qword_9A01F0;
LABEL_107:
      v177 = v123;
LABEL_108:
      v178 = sub_BE38(v114, v125);
      sub_C1D58(v178, v177);
      v179 = v208;
      (*(v220 + 56))(v208, v124, 1, v114);
      v180 = v213;
      v181 = v205;
      sub_C1D58(v213, v205);
      v182 = v206;
      sub_C1D58(v123, v206);
      sub_1ED18(v179, v215, &qword_9439E0);
      v183 = v214;
      sub_1ED18(v214, v217, &qword_9439D8);
      v184 = v222;
      (*(v222 + 104))(v216, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
      sub_396E8();
      v185 = sub_769FB0();
      sub_10A2C(v183, &qword_9439D8);
      sub_10A2C(v179, &qword_9439E0);
      sub_C1DBC(v123);
      sub_C1DBC(v180);
      sub_10A2C(v219, &unk_948010);
      (*(v230 + 8))(v234, v194);
      v186 = v223;
      v187 = *(v223 + 32);
      v188 = v207;
      sub_C1E18(v181, v207, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_C1E18(v182, v188 + v186[5], type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_109C4(v215, v188 + v186[6], &qword_9439E0);
      *(v188 + v186[7]) = v229 & 1;
      *(v188 + v187) = 0;
      v189 = v233;
      *(v188 + v186[9]) = v233;
      *(v188 + v186[14]) = v122;
      *(v188 + v186[12]) = 0;
      *(v188 + v186[13]) = v185;
      v190 = v217;
      (*(v184 + 32))(v188 + v186[11], v216, v231);
      sub_75CFD0();
      v191 = v228;
      v192 = *(v228 - 1);
      if ((*(v192 + 48))(v190, 1, v228) == 1)
      {
        sub_10A2C(v190, &qword_9439D8);
        if (v189)
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
        }

        else
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
        }

        (*(v192 + 104))(v188 + v186[10], *v193, v191);
      }

      else
      {
        (*(v192 + 32))(v188 + v186[10], v190, v191);
      }

      v166 = v188;
      return sub_C1E18(v166, v232, type metadata accessor for TitleHeaderView.Style);
    }

    v126 = sub_75CFD0();
    v127 = *(*(v126 - 8) + 56);
    v227 = (v126 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v127(v214, 1, 1, v126);
    v228 = v126;
    if (v73)
    {
      if (!v233)
      {
        v145 = v200;
        sub_1ED18(v219, v200, &unk_948010);
        v146 = sub_759810();
        v147 = *(v146 - 8);
        if ((*(v147 + 48))(v145, 1, v146) == 1)
        {
          sub_10A2C(v145, &unk_948010);
          v148 = 0;
        }

        else
        {
          v148 = sub_7597B0();
          (*(v147 + 8))(v145, v146);
        }

        v123 = v204;
        sub_5E740C(v148, v213);

        v122 = 16.0;
        if (qword_93DE40 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_9A01D8;
        goto LABEL_107;
      }

      v128 = v199;
      sub_1ED18(v219, v199, &unk_948010);
      v129 = sub_759810();
      v130 = *(v129 - 8);
      if ((*(v130 + 48))(v128, 1, v129) == 1)
      {
        sub_10A2C(v128, &unk_948010);
        v131 = 0;
      }

      else
      {
        v131 = sub_7597B0();
        (*(v130 + 8))(v128, v129);
      }

      v123 = v204;
      sub_5E740C(v131, v213);

      if (qword_93DE58 != -1)
      {
        swift_once();
      }

      v171 = qword_9A0220;
    }

    else
    {
      if (!v233)
      {
        v167 = v197;
        sub_1ED18(v219, v197, &unk_948010);
        v168 = sub_759810();
        v169 = *(v168 - 8);
        if ((*(v169 + 48))(v167, 1, v168) == 1)
        {
          sub_10A2C(v167, &unk_948010);
          v170 = 0;
        }

        else
        {
          v170 = sub_7597B0();
          (*(v169 + 8))(v167, v168);
        }

        v123 = v204;
        sub_5E740C(v170, v213);

        v122 = 16.0;
        if (qword_93DE38 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_9A01C0;
        goto LABEL_107;
      }

      v141 = v196;
      sub_1ED18(v219, v196, &unk_948010);
      v142 = sub_759810();
      v143 = *(v142 - 8);
      if ((*(v143 + 48))(v141, 1, v142) == 1)
      {
        sub_10A2C(v141, &unk_948010);
        v144 = 0;
      }

      else
      {
        v144 = sub_7597B0();
        (*(v143 + 8))(v141, v142);
      }

      v123 = v204;
      sub_5E740C(v144, v213);

      if (qword_93DE50 != -1)
      {
        swift_once();
      }

      v171 = qword_9A0208;
    }

    v176 = sub_BE38(v114, v171);
    sub_C1D58(v176, v123);
    v122 = 16.0;
    if (qword_93DE30 != -1)
    {
      swift_once();
    }

    v124 = 0;
    v125 = qword_9A01A8;
    v177 = v208;
    goto LABEL_108;
  }

  swift_getKeyPath();
  sub_768750();

  if (v235)
  {
    v83 = v229;
    sub_759820();

    v84 = sub_759810();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  }

  else
  {
    v87 = sub_759810();
    (*(*(v87 - 8) + 56))(v229, 1, 1, v87);
  }

  if (v77)
  {
    v88 = v226;
    *v226 = xmmword_783140;
    v89 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
    v90 = sub_75CFD0();
    v91 = *(v90 - 8);
    v92 = *(v91 + 104);
    v217 = (v90 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v92(v88, v89, v90);
    v93 = *(v91 + 56);
    v219 = v90;
    v93(v88, 0, 1, v90);
    if (qword_93DE18 != -1)
    {
      swift_once();
    }

    v94 = v221;
    v95 = sub_BE38(v221, qword_9A0160);
    sub_C1D58(v95, v224);
    v96 = 10.0;
    v97 = v209;
    if (qword_93DE48 != -1)
    {
      swift_once();
    }

    v98 = 1;
    v99 = qword_9A01F0;
  }

  else
  {
    v101 = sub_75CFD0();
    v102 = *(*(v101 - 8) + 56);
    v217 = (v101 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v102(v226, 1, 1, v101);
    v219 = v101;
    if (v233)
    {
      if (v80 == 1)
      {
        v103 = v201;
        sub_1ED18(v229, v201, &unk_948010);
        v104 = sub_759810();
        v105 = *(v104 - 8);
        v106 = (*(v105 + 48))(v103, 1, v104);
        v97 = v209;
        if (v106 == 1)
        {
          sub_10A2C(v103, &unk_948010);
          v107 = 0;
        }

        else
        {
          v107 = sub_7597B0();
          (*(v105 + 8))(v103, v104);
        }

        v94 = v221;
        sub_5E740C(v107, v224);

        if (qword_93DE80 != -1)
        {
          swift_once();
        }

        v149 = qword_9A0298;
      }

      else
      {
        v132 = v202;
        sub_1ED18(v229, v202, &unk_948010);
        v133 = sub_759810();
        v134 = *(v133 - 8);
        v135 = (*(v134 + 48))(v132, 1, v133);
        v97 = v209;
        if (v135 == 1)
        {
          sub_10A2C(v132, &unk_948010);
          v136 = 0;
        }

        else
        {
          v136 = sub_7597B0();
          (*(v134 + 8))(v132, v133);
        }

        v94 = v221;
        sub_5E740C(v136, v224);

        if (qword_93DE70 != -1)
        {
          swift_once();
        }

        v149 = qword_9A0268;
      }

      v150 = sub_BE38(v94, v149);
      sub_C1D58(v150, v97);
      v96 = 16.0;
      if (qword_93DE30 != -1)
      {
        swift_once();
      }

      v98 = 0;
      v99 = qword_9A01A8;
      v100 = v218;
      goto LABEL_73;
    }

    if (v80 == 1)
    {
      v108 = v203;
      sub_1ED18(v229, v203, &unk_948010);
      v109 = sub_759810();
      v110 = *(v109 - 8);
      v111 = (*(v110 + 48))(v108, 1, v109);
      v94 = v221;
      v97 = v209;
      if (v111 == 1)
      {
        sub_10A2C(v108, &unk_948010);
        v112 = 0;
      }

      else
      {
        v112 = sub_7597B0();
        (*(v110 + 8))(v108, v109);
      }

      sub_5E740C(v112, v224);

      v96 = 16.0;
      if (qword_93DE78 != -1)
      {
        swift_once();
      }

      v98 = 1;
      v99 = qword_9A0280;
    }

    else
    {
      v94 = v221;
      v97 = v209;
      if (v73)
      {
        v137 = v198;
        sub_1ED18(v229, v198, &unk_948010);
        v138 = sub_759810();
        v139 = *(v138 - 8);
        if ((*(v139 + 48))(v137, 1, v138) == 1)
        {
          sub_10A2C(v137, &unk_948010);
          v140 = 0;
        }

        else
        {
          v140 = sub_7597B0();
          (*(v139 + 8))(v137, v138);
        }

        sub_5E7414(v140, v224);

        v96 = 16.0;
        if (qword_93DE68 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_9A0250;
      }

      else
      {
        v172 = v195;
        sub_1ED18(v229, v195, &unk_948010);
        v173 = sub_759810();
        v174 = *(v173 - 8);
        if ((*(v174 + 48))(v172, 1, v173) == 1)
        {
          sub_10A2C(v172, &unk_948010);
          v175 = 0;
        }

        else
        {
          v175 = sub_7597B0();
          (*(v174 + 8))(v172, v173);
        }

        sub_5E740C(v175, v224);

        v96 = 16.0;
        if (qword_93DE60 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_9A0238;
      }
    }
  }

  v100 = v97;
LABEL_73:
  v151 = sub_BE38(v94, v99);
  sub_C1D58(v151, v100);
  v152 = v218;
  (*(v220 + 56))(v218, v98, 1, v94);
  v153 = v224;
  v154 = v210;
  sub_C1D58(v224, v210);
  sub_C1D58(v97, v225);
  sub_1ED18(v152, v227, &qword_9439E0);
  v155 = v226;
  v156 = v211;
  sub_1ED18(v226, v211, &qword_9439D8);
  v157 = v222;
  (*(v222 + 104))(v228, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
  sub_396E8();
  v221 = sub_769FB0();
  sub_10A2C(v155, &qword_9439D8);
  sub_10A2C(v152, &qword_9439E0);
  sub_C1DBC(v97);
  sub_C1DBC(v153);
  sub_10A2C(v229, &unk_948010);
  (*(v230 + 8))(v234, v194);
  v158 = v223;
  v159 = *(v223 + 32);
  v160 = v212;
  sub_C1E18(v154, v212, type metadata accessor for TitleHeaderView.TextConfiguration);
  v161 = v156;
  sub_C1E18(v225, v160 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_109C4(v227, v160 + v158[6], &qword_9439E0);
  *(v160 + v158[7]) = 0;
  *(v160 + v159) = 0;
  v162 = v233;
  *(v160 + v158[9]) = v233;
  *(v160 + v158[14]) = v96;
  *(v160 + v158[12]) = 0;
  *(v160 + v158[13]) = v221;
  (*(v157 + 32))(v160 + v158[11], v228, v231);
  sub_75CFD0();
  v163 = v219;
  v164 = *(v219 - 8);
  if ((*(v164 + 48))(v161, 1, v219) == 1)
  {
    sub_10A2C(v161, &qword_9439D8);
    if (v162)
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v164 + 104))(v160 + v158[10], *v165, v163);
  }

  else
  {
    (*(v164 + 32))(v160 + v158[10], v161, v163);
  }

  v166 = v160;
  return sub_C1E18(v166, v232, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_C0B4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764B00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C0B78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764B00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C0BA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764B20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C0BD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764B20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C0C04()
{
  sub_BD88(&qword_9439E8);
  v0 = sub_764930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_783150;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.upsellBreakout(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.smallBreakout(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.ribbonBar(_:), v0);
  v6(v5 + 3 * v2, enum case for Shelf.ContentType.largeHeroBreakout(_:), v0);
  v6(v5 + 4 * v2, enum case for Shelf.ContentType.editorialStoryCard(_:), v0);
  v6(v5 + 5 * v2, enum case for Shelf.ContentType.gameCenterReengagement(_:), v0);
  v6(v5 + 6 * v2, enum case for Shelf.ContentType.heroCarousel(_:), v0);
  v6(v5 + 7 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1A2300(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_9439D0 = v7;
  return result;
}

uint64_t sub_C0E2C(unint64_t a1)
{
  v94 = sub_BD88(&qword_9439F0);
  __chkstk_darwin(v94);
  v97 = &v89 - v2;
  v3 = sub_BD88(&unk_94F1F0);
  v100 = *(v3 - 8);
  __chkstk_darwin(v3);
  v93 = &v89 - v4;
  v5 = sub_75B660();
  v6 = *(v5 - 8);
  v95 = v5;
  v96 = v6;
  __chkstk_darwin(v5);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = (&v89 - v9);
  __chkstk_darwin(v10);
  v90 = (&v89 - v11);
  __chkstk_darwin(v12);
  v101 = &v89 - v13;
  __chkstk_darwin(v14);
  v92 = &v89 - v15;
  __chkstk_darwin(v16);
  v98 = &v89 - v17;
  v18 = sub_BD88(&qword_963790);
  __chkstk_darwin(v18 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  __chkstk_darwin(v27);
  v29 = &v89 - v28;
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  __chkstk_darwin(v33);
  v35 = &v89 - v34;
  v99 = a1;
  sub_75DA50();
  sub_10A2C(v29, &qword_963790);
  v36 = v100;
  sub_109C4(v32, v35, &qword_963790);
  v37 = *(v36 + 48);
  if (v37(v35, 1, v3) == 1)
  {
    sub_10A2C(v35, &qword_963790);
LABEL_6:
    v40 = v101;
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_768750();

  v38 = v102;
  (*(v36 + 8))(v35, v3);
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = sub_759880();

  v40 = v101;
  if (v39)
  {
    return 2;
  }

LABEL_7:
  sub_75DA50();
  sub_10A2C(v20, &qword_963790);
  sub_109C4(v23, v26, &qword_963790);
  if (v37(v26, 1, v3) != 1)
  {
    swift_getKeyPath();
    v44 = v92;
    sub_768750();

    v45 = *(v100 + 8);
    v45(v26, v3);
    v46 = v96;
    v47 = v98;
    v48 = v44;
    v49 = v95;
    (*(v96 + 32))(v98, v48, v95);
    v50 = v93;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v45(v50, v3);
    v51 = v94[12];
    v52 = v46[2];
    v53 = v97;
    v52(v97, v40, v49);
    v100 = v51;
    v52(&v53[v51], v47, v49);
    v54 = v46[11];
    v55 = v54(v53, v49);
    if (v55 == enum case for ShelfBackground.color(_:))
    {
      v56 = v55;
      v57 = v90;
      v52(v90, v53, v49);
      v58 = v46;
      v59 = v57;
      v92 = v58[12];
      (v92)(v57, v49);
      v94 = *v57;
      v60 = sub_BD88(&unk_959640);
      v93 = *(v60 + 48);
      if (v54(&v53[v100], v49) == v56)
      {
        v61 = v93;
        v62 = v89;
        v52(v89, &v97[v100], v49);
        (v92)(v62, v49);
        v63 = *v62;
        v64 = *(v60 + 48);
        v65 = sub_75DA30();
        v66 = v94;
        v67 = [v94 resolvedColorWithTraitCollection:v65];

        v68 = sub_75DA30();
        v69 = [v63 resolvedColorWithTraitCollection:v68];

        sub_396E8();
        LOBYTE(v68) = sub_76A1C0();

        if ((v68 & 1) == 0)
        {
          v85 = *(v96 + 8);
          v85(v101, v49);
          v85(v98, v49);
          v86 = sub_75EDA0();
          v87 = *(*(v86 - 8) + 8);
          v87(v62 + v64, v86);
          v87(&v61[v90], v86);
          v88 = v97;
          v85(&v97[v100], v49);
          v85(v88, v49);
          return 2;
        }

        v70 = sub_75EDA0();
        v71 = *(*(v70 - 8) + 8);
        v71(v62 + v64, v70);
        v71(&v61[v90], v70);
      }

      else
      {
        v72 = sub_75EDA0();
        (*(*(v72 - 8) + 8))(&v93[v59], v72);
      }

      v46 = v96;
      v53 = v97;
    }

    v73 = enum case for ShelfBackground.none(_:);
    v74 = v46[13];
    v75 = v91;
    v74(v91, enum case for ShelfBackground.none(_:), v49);
    v99 = sub_C1E84();
    v76 = sub_7691C0();
    v77 = v46[1];
    v77(v75, v49);
    if ((v76 & 1) == 0)
    {
      v74(v75, v73, v49);
      v78 = sub_75B650();
      v77(v75, v49);
      if (v78)
      {
        v77(v101, v49);
        v77(v98, v49);
        v79 = v100;
LABEL_20:
        v77(&v53[v79], v49);
        v77(v53, v49);
        return 2;
      }
    }

    v80 = v74;
    v74(v75, v73, v49);
    v81 = v101;
    v82 = sub_75B650();
    v77(v75, v49);
    if (v82)
    {
      v80(v75, v73, v49);
      v83 = v98;
      v84 = sub_7691C0();
      v77(v75, v49);
      v77(v81, v49);
      v77(v83, v49);
      v79 = v100;
      if ((v84 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v77(v81, v49);
      v77(v98, v49);
    }

    v42 = &qword_9439F0;
    v43 = v53;
    goto LABEL_23;
  }

  v42 = &qword_963790;
  v43 = v26;
LABEL_23:
  sub_10A2C(v43, v42);
  return 0;
}

uint64_t sub_C18F4(uint64_t a1)
{
  v2 = sub_BD88(&qword_963790);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v5;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_764930();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = &v32 - v12;
  v13 = sub_759810();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_94F1F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v38 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v21 = *(v18 + 8);
  v21(v20, v17);
  if (v39 && (sub_759820(), , v22 = sub_7597F0(), (*(v14 + 8))(v16, v13), (v22 & 1) == 0))
  {
    v25 = 0;
  }

  else
  {
    v24 = v36;
    v23 = v37;
    sub_75DA50();
    sub_10A2C(v23, &qword_963790);
    sub_109C4(v24, v8, &qword_963790);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_10A2C(v8, &qword_963790);
      v25 = 1;
    }

    else
    {
      swift_getKeyPath();
      v26 = v32;
      sub_768750();

      v21(v8, v17);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v26, v35);
      if (qword_93C340 != -1)
      {
        swift_once();
      }

      v30 = sub_666CB0(v28, qword_9439D0);
      (*(v27 + 8))(v28, v29);
      v25 = v30 ^ 1;
    }
  }

  return v25 & 1;
}

uint64_t sub_C1D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C1DBC(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C1E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_C1E84()
{
  result = qword_9439F8;
  if (!qword_9439F8)
  {
    sub_75B660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9439F8);
  }

  return result;
}

uint64_t sub_C1EDC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = sub_BD88(&qword_943A78);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v35 - v3;
  v45 = sub_75DDE0();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_946810);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v47 = sub_BD88(&qword_943A80);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v37 = &v35 - v7;
  v8 = sub_BD88(&unk_951420);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_BD88(&unk_959540);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = sub_758A00();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  sub_75C7E0();
  sub_768760();
  (*(v12 + 8))(v14, v11);
  sub_BD88(&unk_944DA0);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v15);
    (*(v16 + 32))(v21, v10, v15);
    v24 = a1;
    sub_75C800();
    v25 = v37;
    sub_769060();
    v26 = v46;
    sub_C34E4();

    sub_769030();
    sub_75DE00();

    (*(v16 + 16))(v18, v21, v15);
    v27 = v39;

    v28 = v41;
    v29 = sub_75DDC0();
    v36 = &v35;
    __chkstk_darwin(v29);
    *(&v35 - 4) = v28;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v24;
    __chkstk_darwin(v30);
    *(&v35 - 4) = sub_C353C;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v27;
    *(&v35 - 1) = v26;
    sub_BD88(&qword_943A88);
    sub_C3554();
    v32 = v40;
    sub_767F90();
    sub_767FF0();
    v33 = v44;
    v48[3] = v44;
    v48[4] = sub_16194(&qword_943AD8, &qword_943A78);
    sub_B1B4(v48);
    sub_767F80();
    (*(v42 + 8))(v32, v33);
    sub_769AE0();
    (*(v38 + 8))(v25, v47);
    (*(v16 + 8))(v21, v15);
    return (*(v43 + 8))(v28, v45);
  }

  else
  {
    v23(v10, 1, 1, v15);
    return sub_C3434(v10);
  }
}

uint64_t sub_C258C(uint64_t a1)
{
  v2 = sub_75DDE0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);

  sub_75AA20();
  sub_BD88(&qword_943AB8);
  return sub_75C7D0();
}

uint64_t type metadata accessor for AnnotationCollectionViewHostingCell()
{
  result = qword_943A30;
  if (!qword_943A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C2928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v4 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v4 - 8);
  v38 = &v36 - v5;
  v6 = sub_BD88(&qword_943A48);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = sub_75DDE0();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_951420);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_BD88(&unk_959540);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_758A00();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v39 = a1;
  sub_75C7E0();
  sub_768760();
  (*(v15 + 8))(v17, v14);
  sub_BD88(&unk_944DA0);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v18);
    (*(v19 + 32))(v24, v13, v18);
    v27 = *(v19 + 16);
    v37 = v24;
    v27(v21, v24, v18);

    sub_75DDC0();
    v28 = v10;
    if (sub_75DDD0() & 1) != 0 || (, sub_75DDF0(), , v29 = sub_75B720(), , (v29))
    {
      sub_75C790();
      v30 = v40;
      sub_768B30();
      sub_C34E4();
      v31 = v42;
      sub_768AF0();

      sub_75DE00();

      sub_BD88(&qword_943A50);
      sub_763CD0();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_77E280;
      sub_763CC0();
      sub_763CB0();
      v47 = v32;
      sub_C349C(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
      sub_BD88(&qword_943A60);
      sub_16194(&qword_943A68, &qword_943A60);
      sub_76A5A0();
      (*(v41 + 8))(v30, v31);
    }

    else
    {
      sub_BD88(&qword_943A50);
      sub_763CD0();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_77E280;
      sub_763CC0();
      sub_763CB0();
      v47 = v35;
      sub_C349C(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
      sub_BD88(&qword_943A60);
      sub_16194(&qword_943A68, &qword_943A60);
      sub_76A5A0();
    }

    (*(v44 + 8))(v28, v45);
    return (*(v19 + 8))(v37, v18);
  }

  else
  {
    v26(v13, 1, 1, v18);
    sub_C3434(v13);
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_77E280;
    sub_763CC0();
    sub_763CB0();
    v47 = v33;
    sub_C349C(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60);
    sub_16194(&qword_943A68, &qword_943A60);
    return sub_76A5A0();
  }
}

uint64_t sub_C3254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v6 = v11[1];
  v7 = sub_7699D0();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_75D3D0();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_75D400();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_C33DC(uint64_t a1)
{
  result = sub_C349C(&qword_943A40, type metadata accessor for AnnotationCollectionViewHostingCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C3434(uint64_t a1)
{
  v2 = sub_BD88(&unk_951420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C349C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C34E4()
{
  result = qword_943A70;
  if (!qword_943A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943A70);
  }

  return result;
}

unint64_t sub_C3554()
{
  result = qword_943A90;
  if (!qword_943A90)
  {
    sub_133D8(&qword_943A88);
    sub_C360C();
    sub_16194(&qword_951360, &qword_943AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943A90);
  }

  return result;
}

unint64_t sub_C360C()
{
  result = qword_943A98;
  if (!qword_943A98)
  {
    sub_133D8(&qword_943AA0);
    sub_133D8(&qword_943AA8);
    sub_133D8(&qword_943AB0);
    sub_768900();
    sub_133D8(&qword_943AB8);
    sub_16194(&qword_943AC0, &qword_943AB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_16194(&unk_951350, &qword_943AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943A98);
  }

  return result;
}

unint64_t sub_C37E0()
{
  result = qword_943AE0;
  if (!qword_943AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943AE0);
  }

  return result;
}

unint64_t sub_C3838()
{
  result = qword_943AE8;
  if (!qword_943AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943AE8);
  }

  return result;
}

uint64_t sub_C389C(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v4 = sub_75FAC0();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7570A0();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v11 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v11 - 8);
  v13 = v46 - v12;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v46 - v19;
  v61 = 0u;
  v62 = 0u;

  sub_146CF0(v21, &v61, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10A2C(v13, &unk_9442D0);
  }

  else
  {
    sub_61AE8(v13, v20);
    sub_61B4C(v20, v17);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v48 = *v17;
      v49 = a1;
      v22 = sub_BD88(&qword_955D00);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = v59;
      v26 = *(v59 + 32);
      v46[1] = v59 + 32;
      v47 = v26;
      v54 = v10;
      v26(v10, &v17[v24], v6);
      v27 = sub_75C3F0();
      (*(*(v27 - 8) + 8))(&v17[v23], v27);
      sub_BD88(&qword_94DDC0);
      v28 = sub_768F90();
      sub_75FAB0();
      v51 = sub_75FAA0();
      v29 = v55;
      (*(v25 + 16))(v55, v10, v6);
      v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = v4;
      v53 = v20;
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v50 = v6;
      v34 = swift_allocObject();
      v35 = v47;
      *(v34 + 16) = v48;
      v35(v34 + v30, v29, v6);
      v36 = v49;
      *(v34 + v31) = v49;
      v38 = v56;
      v37 = v57;
      *(v34 + v32) = v56;
      *(v34 + v33) = v37;
      *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      *(v39 + 24) = v28;
      v40 = sub_BE70(0, &qword_940340);

      v41 = v38;

      swift_retain_n();
      swift_retain_n();
      v42 = sub_769970();
      *(&v62 + 1) = v40;
      v63 = &protocol witness table for OS_dispatch_queue;
      *&v61 = v42;
      sub_768F10();

      (*(v58 + 8))(v60, v52);
      (*(v59 + 8))(v54, v50);
      sub_68DF8(v53, type metadata accessor for FlowDestination);
      sub_BEB8(&v61);
      return v28;
    }

    sub_68DF8(v20, type metadata accessor for FlowDestination);
    sub_68DF8(v17, type metadata accessor for FlowDestination);
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v43 = sub_768FF0();
  sub_BE38(v43, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  *(&v62 + 1) = sub_758B20();
  *&v61 = a1;

  sub_768550();
  sub_10A2C(&v61, &unk_93FBD0);
  sub_768EA0();

  sub_BD88(&qword_94DDC0);
  sub_C4680();
  swift_allocError();
  *v44 = 1;
  return sub_768F20();
}

uint64_t sub_C3FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v43 = a2;
  v8 = type metadata accessor for FlowDestination();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v44 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_760B50();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v41 - v25;
  v27 = *(v11 + 16);
  v27(v19, a1, v10, v24);
  v28 = (*(v11 + 88))(v19, v10);
  if (v28 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (v27)(v13, v19, v10);
    (*(v11 + 96))(v13, v10);
    if (*v13 == 1)
    {
      v29 = sub_BD88(&qword_955D00);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.createNewFamily(_:);
LABEL_7:
      v34 = *v32;
      v35 = sub_75C3F0();
      (*(*(v35 - 8) + 104))(&v26[v30], v34, v35);
      v36 = sub_7570A0();
      (*(*(v36 - 8) + 16))(&v26[v31], v42, v36);
      v37 = v50;
      swift_storeEnumTagMultiPayload();
      v38 = v49;
      (*(v49 + 56))(v26, 0, 1, v37);

      goto LABEL_9;
    }
  }

  else if (v28 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (v27)(v16, v19, v10);
    (*(v11 + 96))(v16, v10);
    if (*v16 == 1)
    {
      v33 = sub_BD88(&qword_955D00);
      v30 = *(v33 + 48);
      v31 = *(v33 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.familyOrganizer(_:);
      goto LABEL_7;
    }
  }

  v38 = v49;
  v37 = v50;
  (*(v49 + 56))(v26, 1, 1, v50);
LABEL_9:
  (*(v11 + 8))(v19, v10);
  sub_1ED18(v26, v22, &unk_9442D0);
  if ((*(v38 + 48))(v22, 1, v37) == 1)
  {
    sub_10A2C(v26, &unk_9442D0);
  }

  else
  {
    v39 = v44;
    sub_61AE8(v22, v44);
    sub_C4DD0(v39, v45, v46, v47, v48);
    sub_68DF8(v39, type metadata accessor for FlowDestination);
    v22 = v26;
  }

  return sub_10A2C(v22, &unk_9442D0);
}

uint64_t sub_C44CC(uint64_t a1, uint64_t a2)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v3 = sub_768FF0();
  sub_BE38(v3, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  v5[3] = sub_758B20();
  v5[0] = a2;

  sub_768550();
  sub_10A2C(v5, &unk_93FBD0);
  sub_768EA0();

  return sub_768F50();
}

unint64_t sub_C4680()
{
  result = qword_943AF0;
  if (!qword_943AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943AF0);
  }

  return result;
}

uint64_t sub_C46D4()
{
  v1 = sub_7570A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_C47EC(uint64_t a1)
{
  v3 = *(sub_7570A0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_C3FE0(a1, v10, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_C48B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C48F8()
{
  v0 = sub_765490();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_758AE0();
  (*(v1 + 104))(v3, enum case for FlowPage.arcadeWelcome(_:), v0);
  sub_C5ED0(&qword_944310, &type metadata accessor for FlowPage);
  sub_769430();
  sub_769430();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_76A950();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_C4AD4(uint64_t a1, void *a2)
{
  v4 = sub_75F340();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760280();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_BE70(0, &qword_9434E0);
  v14 = sub_769460();

  if (v14 >> 62)
  {
    v15 = sub_76A860();
  }

  else
  {
    v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_C5ED0(&qword_943B00, &type metadata accessor for FlowPresentationContext);
    v16 = sub_7691C0();
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

uint64_t sub_C4DD0(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v100 = a5;
  v95 = a4;
  v92 = sub_7687C0();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v8 - 8);
  v93 = &v89 - v9;
  v10 = sub_760280();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v89 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v89 - v14;
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  v18 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_758AA0();
  sub_758A90();
  v21 = [a3 traitCollection];
  v94 = a1;
  sub_D2028(v17);

  v22 = sub_32CB94(a3);
  if (!v22)
  {
    sub_C4680();
    swift_allocError();
    *v42 = 0;
    sub_768F50();
    (*(v11 + 8))(v17, v10);
    sub_68DF8(v20, type metadata accessor for FlowPresentationHints);
  }

  v99 = v17;
  v96 = v20;
  v101 = v11;
  v98 = v10;
  v23 = v22;
  v24 = [v23 traitCollection];
  v25 = sub_758A60();
  v27 = v26;
  v28 = v93;
  sub_758A80();
  *&v102[0] = v23;
  sub_BE70(0, &unk_94DCA0);
  v29 = v23;
  sub_BD88(&qword_940BF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v105 = 0;
    v103 = 0u;
    v104 = 0u;
  }

  v30 = sub_471418(v94, v24, v25, v27, v28, &v103, v95, 1);

  sub_10A2C(v28, &unk_944FF0);
  sub_10A2C(&v103, &unk_9442E0);
  if (!v30)
  {

    v44 = v91;
    v45 = v90;
    v46 = v92;
    (*(v91 + 104))(v90, enum case for ActionOutcome.unsupported(_:), v92);
    sub_768F60();

    (*(v44 + 8))(v45, v46);
    (*(v101 + 8))(v99, v98);
    return sub_68DF8(v96, type metadata accessor for FlowPresentationHints);
  }

  v31 = [v29 presentingViewController];

  v32 = v98;
  v33 = v101;
  v34 = v96;
  v35 = v99;
  if (!v31)
  {
LABEL_24:
    v54 = sub_C4AD4(v34, v29);
    v55 = *(v33 + 104);
    v55(v97, enum case for FlowPresentationContext.push(_:), v32);
    sub_C5ED0(&qword_943AF8, &type metadata accessor for FlowPresentationContext);
    sub_769430();
    sub_769430();
    LODWORD(v95) = v54;
    if (v103 == v102[0])
    {
      v56 = 1;
    }

    else
    {
      v56 = sub_76A950();
    }

    v57 = v33 + 8;
    v24 = *(v33 + 8);
    v33 = v98;
    v101 = v57;
    (v24)(v97, v98);

    if (v56)
    {
      [v30 setModalPresentationCapturesStatusBarAppearance:1];
      v103 = xmmword_94DCF8;
      v104 = xmmword_94DD08;
      v105 = xmmword_94DD18;
      v106 = xmmword_94DD28;
      v107 = xmmword_94DD38;
      v58 = qword_94DD48;
      v108 = qword_94DD48;
      v59 = BYTE8(xmmword_94DD18);
      if (BYTE8(xmmword_94DD18) != 255)
      {
        v60 = v103;
        v62 = v104;
        v61 = *&v105;
        v63 = v106;
        v64 = v107;
        v65 = v103;
        v66 = [v30 popoverPresentationController];
        if (v66)
        {
          v67 = v66;
          if (v59)
          {
            sub_1ED18(&v103, v102, &unk_93FEF0);
            v68 = v67;
            [v68 setSourceView:v60];
            [v68 setSourceRect:{*(&v60 + 1), v62, v61}];
            v33 = v98;
            sub_10A2C(&v103, &unk_93FEF0);
          }

          else
          {
            [v66 setBarButtonItem:v60];
          }

          [v67 setPopoverLayoutMargins:{v63, v64}];
          [v67 setPermittedArrowDirections:v58];
        }

        else
        {
          if (qword_93DF00 != -1)
          {
            swift_once();
          }

          v85 = sub_768FF0();
          sub_BE38(v85, qword_9A0430);
          sub_BD88(&qword_93FD00);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77B6D0;
          sub_768540();
          sub_768EB0();
        }

        sub_10A2C(&v103, &unk_93FEF0);
      }

      [v29 pushViewController:v30 animated:v95 & 1];
      goto LABEL_58;
    }

    v69 = v89;
    v55(v89, enum case for FlowPresentationContext.replace(_:), v33);
    sub_769430();
    sub_769430();
    if (v103 == v102[0])
    {
      (v24)(v69, v33);
    }

    else
    {
      v70 = sub_76A950();
      (v24)(v69, v33);

      if ((v70 & 1) == 0)
      {
LABEL_58:
        v86 = v91;
        v87 = v90;
        v88 = v92;
        (*(v91 + 104))(v90, enum case for ActionOutcome.performed(_:), v92);
        sub_768F60();

        (*(v86 + 8))(v87, v88);
        (v24)(v99, v33);
        return sub_68DF8(v96, type metadata accessor for FlowPresentationHints);
      }
    }

    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (!v71)
    {
      v78 = [v29 viewControllers];
      sub_BE70(0, &qword_9434E0);
      v35 = sub_769460();

      v36 = (v35 >> 62);
      if (!(v35 >> 62))
      {
        if (!*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_45:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v36 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v35 = sub_45EDF0(v35);
        }

        v80 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
        if (v80)
        {
          v81 = v80 - 1;
          v36 = *(&stru_20.cmd + 8 * v81 + (v35 & 0xFFFFFFFFFFFFFF8));
          *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) = v81;
          *&v103 = v35;
          v82 = [v36 tabBarItem];
          [v30 setTabBarItem:v82];

          v83 = v30;
          sub_769440();
          if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
LABEL_50:
            sub_769500();
            isa = sub_769450().super.isa;

            [v29 setViewControllers:isa animated:v95 & 1];

            goto LABEL_58;
          }

LABEL_68:
          sub_7694C0();
          v33 = v98;
          goto LABEL_50;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_65:
      if (!sub_76A860())
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    v34 = v71;
    v35 = v30;
    v72 = [v29 viewControllers];
    v36 = sub_BE70(0, &qword_9434E0);
    v33 = sub_769460();

    v32 = v33 >> 62;
    if (!(v33 >> 62))
    {
      if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_38:
        v73 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v32 || (v73 & 1) == 0)
        {
          v33 = sub_45EDF0(v33);
        }

        v74 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
        if (v74)
        {
          v75 = v74 - 1;
          v76 = *(&stru_20.cmd + 8 * v75 + (v33 & 0xFFFFFFFFFFFFFF8));
          *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) = v75;

          v77 = sub_769450().super.isa;

          [v29 setViewControllers:v77];

          [v29 presentViewController:v34 animated:0 completion:0];
          v33 = v98;
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    if (sub_76A860())
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  v36 = [v29 viewControllers];
  sub_BE70(0, &qword_9434E0);
  v37 = sub_769460();

  if (!(v37 >> 62))
  {
    if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  if (!sub_76A860())
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_8:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_62;
    }

    v38 = *(v37 + 32);
  }

  v39 = v38;

  if ((sub_392758(v39) & 1) == 0)
  {
    goto LABEL_14;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  v41 = v29;
  if (sub_392758(v30))
  {

LABEL_14:

    goto LABEL_24;
  }

  v47 = [v30 navigationItem];
  v48 = [v47 rightBarButtonItems];
  if (v48)
  {
    v49 = v48;
    sub_BE70(0, &qword_947490);
    v50 = sub_769460();
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  *&v103 = v50;
  sub_BE70(0, &qword_947490);
  sub_BE70(0, &qword_955FA0);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_C5E80;
  *(v51 + 24) = v40;

  v109.value.super.super.isa = sub_76A1F0();
  v109.is_nil = 0;
  v52.super.super.isa = sub_769830(UIBarButtonSystemItemClose, v109, v110).super.super.isa;
  if (!(v50 >> 62) || (result = sub_76A860(), (result & 0x8000000000000000) == 0))
  {
    sub_4A7B58(0, 0, v52.super.super.isa);
    v53 = sub_769450().super.isa;

    [v47 setRightBarButtonItems:v53];

    v32 = v98;
    v33 = v101;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_C5E48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C5E98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C5ED0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C5F2C()
{
  result = qword_943B08;
  if (!qword_943B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943B08);
  }

  return result;
}

__n128 ProductLockupInlineUberLayout.init(metrics:keylineView:blurView:darkeningOverlayEffectView:wordmarkView:iconView:titleLabel:subtitleLabel:shareButton:offerButton:expandedOfferSubtitleLabel:downloadProgressLabel:arrowView:bannerView:secondaryBannerView:shadowView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_C6154(a1, a9);
  v21 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  sub_10914(a3, a9 + v21[6]);
  v24 = a9 + v21[7];
  v25 = *(a4 + 16);
  *v24 = *a4;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a4 + 32);
  sub_10914(a5, a9 + v21[10]);
  sub_10914(a6, a9 + v21[8]);
  sub_10914(a7, a9 + v21[9]);
  sub_10914(a8, a9 + v21[11]);
  v26 = a9 + v21[12];
  v27 = *(a10 + 16);
  *v26 = *a10;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a10 + 32);
  sub_10914(a11, a9 + v21[13]);
  v28 = a9 + v21[14];
  v29 = *(a12 + 16);
  *v28 = *a12;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a12 + 32);
  v30 = a9 + v21[15];
  v31 = *(a13 + 16);
  *v30 = *a13;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a13 + 32);
  v32 = a9 + v21[16];
  v33 = *(a14 + 16);
  *v32 = *a14;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a14 + 32);
  v34 = a9 + v21[17];
  v35 = *(a15 + 16);
  *v34 = *a15;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a15 + 32);
  v36 = a9 + v21[18];
  v37 = *(a16 + 16);
  *v36 = *a16;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a16 + 32);
  v38 = a9 + v21[19];
  result = *a17;
  v40 = *(a17 + 16);
  *v38 = *a17;
  *(v38 + 16) = v40;
  *(v38 + 32) = *(a17 + 32);
  return result;
}

uint64_t sub_C6154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C6204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_C64E0@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_1ED18(v1 + *(v3 + 56), &v9, &qword_9417D0);
  if (v10)
  {
    sub_10914(&v9, v11);
    v4 = v12;
    v5 = v13;
    v6 = sub_B170(v11, v12);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(v5 + 8);
    v7 = sub_B1B4(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
LABEL_3:
    sub_BEB8(v11);
    return result;
  }

  sub_10A2C(&v9, &qword_9417D0);
  sub_1ED18(v1 + *(v3 + 60), &v9, &unk_943B10);
  if (v10)
  {
    sub_10914(&v9, v11);
    sub_B170(v11, v12);
    if ((sub_766540() & 1) == 0)
    {
      sub_134D8(v11, a1);
      goto LABEL_3;
    }

    sub_BEB8(v11);
  }

  else
  {
    sub_10A2C(&v9, &unk_943B10);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.init(iconSize:wordmarkSpace:titleSpace:subtitleSpace:offerButtonTopSpace:offerButtonBottomSpace:shareButtonSpace:bannerViewHeight:secondaryBannerViewHeight:expandedOfferSubtitleSpace:expandedOfferSubtitleBottomSpace:chevronSpace:backgroundMaxWidth:backgroundHorizontalPadding:backgroundHorizontalContentPadding:blurHeight:darkeningOverlayHeight:contentInsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23)
{
  a9[4] = a10;
  a9[5] = a11;
  v32 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v33 = v32[7];
  v34 = sub_BD88(&qword_940AD0);
  v35 = *(*(v34 - 8) + 32);
  v35(a9 + v33, a1, v34);
  v35(a9 + v32[6], a2, v34);
  v35(a9 + v32[8], a3, v34);
  sub_10914(a4, a9 + v32[9]);
  v35(a9 + v32[10], a5, v34);
  sub_10914(a6, a9 + v32[14]);
  sub_10914(a7, a9 + v32[15]);
  sub_10914(a8, a9 + v32[16]);
  sub_10914(a16, a9 + v32[11]);
  sub_10914(a17, a9 + v32[12]);
  v36 = v32[13];
  v37 = sub_BD88(&qword_94E5D0);
  (*(*(v37 - 8) + 32))(a9 + v36, a18, v37);
  sub_10914(a19, a9 + v32[17]);
  v35(a9 + v32[18], a20, v34);
  v35(a9 + v32[19], a21, v34);
  sub_10914(a22, a9 + v32[20]);
  result = sub_10914(a23, a9 + v32[21]);
  *a9 = a12;
  a9[1] = a13;
  a9[2] = a14;
  a9[3] = a15;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 36);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 44);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 48);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_BD88(&qword_94E5D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_BD88(&qword_94E5D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.shareButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 56);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 60);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 64);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundMaxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 68);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.blurHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 80);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.darkeningOverlayHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 84);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

double ProductLockupInlineUberLayout.measurements(fitting:in:)(void *a1, double a2)
{
  swift_getObjectType();

  return sub_C9CB4(a1, v2, a2);
}

void static ProductLockupInlineUberLayout.estimatedPaddingForLabels(metrics:in:)(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 traitCollection];
  v9 = sub_7699E0();

  if (v9)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t ProductLockupInlineUberLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v159 = a2;
  v161 = sub_BD88(&qword_940AD0);
  v156 = *(v161 - 8);
  __chkstk_darwin(v161);
  v155 = &v154 - v13;
  v14 = sub_76A920();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_705B8(a3, a4, a5, a6, *v6, v6[1]);
  v177 = v19;
  v174 = v20;
  v179 = v21;
  *&v22 = COERCE_DOUBLE(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0));
  sub_B170((v6 + v22[15]), *(v6 + v22[15] + 24));
  sub_33964();
  sub_766700();
  v160 = v23;
  v26 = *(v15 + 8);
  v24 = v15 + 8;
  v25 = v26;
  v26(v17, v14);
  sub_B170((v7 + v22[16]), *(v7 + v22[16] + 24));
  sub_33964();
  sub_766700();
  v163 = v27;
  v180 = v14;
  v26(v17, v14);
  v28 = [a1 traitCollection];
  v29 = sub_7699D0();

  if ((v29 & 1) == 0 || (sub_C64E0(&v183), v30 = v184, sub_10A2C(&v183, &unk_943B10), !v30))
  {
    sub_BD88(&qword_94E5D0);
    v31 = v155;
    sub_759380();
    sub_766470();
    sub_759360();
    v25(v17, v180);
    (*(v156 + 8))(v31, v161);
  }

  v32 = [a1 traitCollection];
  v33 = sub_7699D0();

  v166 = a3;
  v172 = v24;
  v175 = v18;
  v178 = v25;
  v176 = *&v22;
  v167 = a6;
  v164 = a5;
  v165 = a4;
  if (v33)
  {
    v34 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v35 = (v7 + *(v34 + 24));
    v36 = v35[3];
    v173 = v35[4];
    v171 = COERCE_DOUBLE(sub_B170(v35, v36));
    v186.origin.x = a3;
    v186.origin.y = a4;
    v186.size.width = a5;
    v186.size.height = a6;
    CGRectGetMinX(v186);
    v187.origin.x = a3;
    v187.origin.y = a4;
    v187.size.width = a5;
    v187.size.height = a6;
    CGRectGetMaxY(v187);
    v37 = (v7 + v22[20]);
    sub_B170(v37, v37[3]);
    sub_33964();
    v38 = v180;
    sub_766700();
    v178(v17, v38);
    v188.origin.x = a3;
    v188.origin.y = a4;
    v188.size.width = a5;
    v188.size.height = a6;
    CGRectGetWidth(v188);
    sub_B170(v37, v37[3]);
    sub_33964();
    sub_766700();
    v39 = v38;
    v25 = v178;
    v178(v17, v39);
    sub_766530();
    v173 = v34;
    sub_1ED18(v7 + *(v34 + 28), &v183, &unk_943B10);
    if (v184)
    {
      v171 = v185;
      sub_B170(&v183, v184);
      v189.origin.x = a3;
      v189.origin.y = a4;
      v189.size.width = a5;
      v189.size.height = a6;
      CGRectGetMinX(v189);
      v190.origin.x = a3;
      v190.origin.y = a4;
      v190.size.width = a5;
      v190.size.height = a6;
      CGRectGetMaxY(v190);
      v40 = (v7 + *(*&v176 + 84));
      sub_B170(v40, v40[3]);
      sub_33964();
      v41 = v180;
      sub_766700();
      v178(v17, v41);
      v191.origin.x = a3;
      v191.origin.y = a4;
      v191.size.width = a5;
      v191.size.height = a6;
      CGRectGetWidth(v191);
      sub_B170(v40, v40[3]);
      sub_33964();
      sub_766700();
      v42 = v41;
      v25 = v178;
      v178(v17, v42);
      sub_766530();
      sub_BEB8(&v183);
    }

    else
    {
      sub_10A2C(&v183, &unk_943B10);
    }

    v53 = v174;
    sub_1ED18(v7 + v173[5], &v183, &unk_943B10);
    v18 = v175;
    if (v184)
    {
      sub_B170(&v183, v184);
      v54 = v166;
      v193.origin.x = v166;
      v193.origin.y = a4;
      v193.size.width = a5;
      v193.size.height = a6;
      CGRectGetMinX(v193);
      v194.origin.x = v54;
      v194.origin.y = a4;
      v194.size.width = a5;
      v194.size.height = a6;
      CGRectGetMinY(v194);
      v195.origin.x = v54;
      v195.origin.y = a4;
      v195.size.width = a5;
      v195.size.height = a6;
      CGRectGetWidth(v195);
      if (qword_93CD10 != -1)
      {
        swift_once();
      }

      sub_BE38(v161, qword_99D220);
      sub_766470();
      sub_759360();
      v25(v17, v180);
      v55 = [a1 traitCollection];
      [v55 displayScale];

      sub_766530();
      sub_BEB8(&v183);
      v18 = v175;
      v53 = v174;
    }

    else
    {
      sub_10A2C(&v183, &unk_943B10);
    }
  }

  else
  {
    v192.origin.x = a3;
    v192.origin.y = a4;
    v192.size.width = a5;
    v192.size.height = a6;
    Width = CGRectGetWidth(v192);
    sub_B170((v7 + v22[17]), *(v7 + v22[17] + 24));
    sub_33964();
    sub_766700();
    v45 = v44;
    v46 = v180;
    v25(v17, v180);
    v47 = (Width - v45) * 0.5;
    sub_766470();
    sub_759360();
    v49 = v48;
    v25(v17, v46);
    if (v47 > v49)
    {
      v50 = v47;
    }

    else
    {
      v50 = v49;
    }

    v51 = floor(v50);
    v52 = type metadata accessor for ProductLockupInlineUberLayout(0);
    sub_B170((v7 + *(v52 + 24)), *(v7 + *(v52 + 24) + 24));
    sub_705B8(a3, a4, a5, a6, 0.0, v51);
    sub_766530();
    v173 = v52;
    sub_1ED18(v7 + *(v52 + 20), &v183, &unk_943B10);
    if (v184)
    {
      sub_B170(&v183, v184);
      sub_766530();
      sub_BEB8(&v183);
    }

    else
    {
      sub_10A2C(&v183, &unk_943B10);
    }

    v53 = v174;
  }

  v196.origin.x = v18;
  v56 = v177;
  v196.origin.y = v177;
  v196.size.width = v53;
  v57 = v179;
  v196.size.height = v179;
  MidX = CGRectGetMidX(v196);
  v59 = v7[4];
  v60 = floor(MidX - v59 * 0.5);
  v197.origin.x = v18;
  v197.origin.y = v56;
  v197.size.width = v53;
  v197.size.height = v57;
  MinY = CGRectGetMinY(v197);
  v62 = v7[5];
  v63 = floor(MinY - v62 * 0.5);
  type metadata accessor for ProductLockupInlineUberLayout(0);
  v64 = v173;
  v65 = (v7 + v173[8]);
  sub_B170(v65, v65[3]);
  v170 = v60;
  v168 = v63;
  v171 = v59;
  v169 = v62;
  sub_769D20();
  sub_766530();
  sub_1ED18(v7 + v64[19], &v183, &unk_943B10);
  if (v184)
  {
    sub_B170(&v183, v184);
    sub_B170(v65, v65[3]);
    v25 = v178;
    sub_766520();
    sub_766530();
    sub_BEB8(&v183);
  }

  else
  {
    sub_10A2C(&v183, &unk_943B10);
  }

  v66 = [a1 traitCollection];
  v67 = sub_7699E0();

  v68 = 0.0;
  if (v67)
  {
    sub_766470();
    sub_759360();
    v68 = v69;
    v25(v17, v180);
  }

  v70 = (v7 + v173[10]);
  sub_B170(v70, v70[3]);
  v198.origin.x = v18;
  v71 = v177;
  v198.origin.y = v177;
  v198.size.width = v53;
  v72 = v179;
  v198.size.height = v179;
  CGRectGetWidth(v198);
  v158 = v68;
  v157 = v68 + v68;
  v199.origin.x = v18;
  v199.origin.y = v71;
  v199.size.width = v53;
  v199.size.height = v72;
  CGRectGetMaxY(v199);
  v200.origin.x = v170;
  v200.origin.y = v168;
  v200.size.width = v171;
  v200.size.height = v169;
  CGRectGetMaxY(v200);
  sub_7665A0();
  sub_766470();
  sub_759360();
  v74 = v73;
  v25(v17, v180);
  v183 = v74;
  v75 = v174;
  sub_766720();
  sub_B170(v70, v70[3]);
  v201.origin.x = v18;
  v201.origin.y = v71;
  v201.size.width = v75;
  v201.size.height = v72;
  CGRectGetMinX(v201);
  v202.origin.x = v18;
  v202.origin.y = v71;
  v202.size.width = v75;
  v202.size.height = v72;
  CGRectGetWidth(v202);
  v203.origin.x = v170;
  v203.origin.y = v168;
  v203.size.width = v171;
  v203.size.height = v169;
  CGRectGetMaxY(v203);
  sub_766530();
  v76 = [a1 traitCollection];
  v77 = sub_7699D0();

  if (v77)
  {
    v78 = v175;
    v204.origin.x = v175;
    v204.origin.y = v71;
    v204.size.width = v75;
    v204.size.height = v72;
    MinX = CGRectGetMinX(v204);
    sub_B170(v70, v70[3]);
    sub_766520();
    MaxY = CGRectGetMaxY(v205);
    v206.origin.x = v78;
    v206.origin.y = v71;
    v206.size.width = v75;
    v206.size.height = v72;
    v80 = CGRectGetWidth(v206);
    v81 = v71;
    v82 = v80;
    v83 = v78;
    v84 = v75;
    v85 = v72;
    v86 = v173;
  }

  else
  {
    v87 = v173;
    v88 = (v7 + v173[6]);
    sub_B170(v88, v88[3]);
    sub_766520();
    MinX = CGRectGetMinX(v207);
    sub_B170(v70, v70[3]);
    sub_766520();
    MaxY = CGRectGetMaxY(v208);
    sub_B170(v88, v88[3]);
    sub_766520();
    v82 = CGRectGetWidth(v209);
    sub_B170(v88, v88[3]);
    sub_766520();
    v86 = v87;
  }

  v89 = CGRectGetMaxY(*&v83);
  v210.origin.x = v170;
  v210.origin.y = v168;
  v210.size.width = v171;
  v210.size.height = v169;
  v90 = v89 - CGRectGetMaxY(v210);
  v91 = v82 - v157;
  v92 = v158 + MinX;
  v93 = (v7 + v86[9]);
  sub_B170(v93, *(v93 + 3));
  sub_7665A0();
  v171 = v94;
  v170 = v95;
  v169 = v96;
  v97 = (v7 + v86[11]);
  sub_B170(v97, *(v97 + 3));
  sub_7665A0();
  v157 = v98;
  v158 = v99;
  v154 = v100;
  v168 = v101;
  sub_B170(v93, *(v93 + 3));
  v211.origin.x = v92;
  v102 = MaxY;
  v211.origin.y = MaxY;
  v211.size.width = v91;
  v211.size.height = v90;
  CGRectGetMinX(v211);
  v212.origin.x = v92;
  v212.origin.y = v102;
  v212.size.width = v91;
  v212.size.height = v90;
  CGRectGetMinY(v212);
  sub_766470();
  sub_759360();
  v104 = v103;
  v178(v17, v180);
  v183 = v104;
  v105 = v169;
  sub_766720();
  v213.origin.x = v92;
  v213.origin.y = v102;
  v213.size.width = v91;
  v213.size.height = v90;
  CGRectGetWidth(v213);
  sub_766530();
  sub_B170(v97, *(v97 + 3));
  if (sub_766500())
  {
    v106 = *(v97 + 3);
    v171 = v97[4];
    sub_B170(v97, v106);
    v214.origin.x = v92;
    v107 = MaxY;
    v214.origin.y = MaxY;
    v214.size.width = v91;
    v214.size.height = v90;
    v170 = CGRectGetMinX(v214);
    sub_B170(v93, *(v93 + 3));
    sub_766520();
    CGRectGetMaxY(v215);
    sub_766470();
    sub_759360();
    v109 = v108;
    v178(v17, v180);
    v183 = v109;
    v110 = v168;
    sub_766720();
    v216.origin.x = v92;
    v216.origin.y = v107;
    v216.size.width = v91;
    v216.size.height = v90;
    CGRectGetWidth(v216);
    sub_766530();
  }

  else
  {
    sub_B170(v97, *(v97 + 3));
    sub_766530();
    v97 = v93;
    v110 = v105;
  }

  v111 = v179;
  sub_B170(v97, *(v97 + 3));
  sub_766520();
  v171 = CGRectGetMaxY(v217) - v110;
  v112 = v173;
  v113 = (v7 + v173[13]);
  sub_B170(v113, v113[3]);
  v114 = v174;
  sub_7665A0();
  v116 = v115;
  v118 = v117;
  v119 = v175;
  v218.origin.x = v175;
  v120 = v177;
  v218.origin.y = v177;
  v218.size.width = v114;
  v218.size.height = v111;
  v121 = floor(CGRectGetMidX(v218) + v116 * -0.5);
  sub_B170((v7 + *(*&v176 + 36)), *(v7 + *(*&v176 + 36) + 24));
  sub_33964();
  sub_766700();
  v123 = v122;
  v178(v17, v180);
  v124 = floor(v171 + v123);
  sub_B170(v113, v113[3]);
  v169 = v121;
  v168 = v124;
  v171 = v116;
  v170 = v118;
  sub_769D20();
  sub_766530();
  sub_1ED18(v7 + v112[17], &v181, &unk_943B10);
  if (v182)
  {
    sub_10914(&v181, &v183);
    v125 = v166;
    v219.origin.x = v166;
    v126 = v165;
    v219.origin.y = v165;
    v127 = v164;
    v219.size.width = v164;
    v128 = v167;
    v219.size.height = v167;
    MaxY = CGRectGetMinX(v219);
    v220.origin.x = v119;
    v220.origin.y = v120;
    v220.size.width = v114;
    v220.size.height = v111;
    CGRectGetMaxY(v220);
    v221.origin.x = v125;
    v221.origin.y = v126;
    v221.size.width = v127;
    v221.size.height = v128;
    CGRectGetWidth(v221);
    sub_B170(&v183, v184);
    sub_766530();
    sub_BEB8(&v183);
  }

  else
  {
    sub_10A2C(&v181, &unk_943B10);
  }

  sub_1ED18(v7 + v112[18], &v181, &unk_943B10);
  if (v182)
  {
    sub_10914(&v181, &v183);
    v129 = v166;
    v222.origin.x = v166;
    v130 = v165;
    v222.origin.y = v165;
    v131 = v164;
    v222.size.width = v164;
    v132 = v167;
    v222.size.height = v167;
    CGRectGetMinX(v222);
    v223.origin.x = v175;
    v223.origin.y = v177;
    v223.size.width = v114;
    v223.size.height = v179;
    CGRectGetMaxY(v223);
    v224.origin.x = v129;
    v224.origin.y = v130;
    v224.size.width = v131;
    v224.size.height = v132;
    CGRectGetWidth(v224);
    sub_B170(&v183, v184);
    sub_766530();
    sub_BEB8(&v183);
  }

  else
  {
    sub_10A2C(&v181, &unk_943B10);
  }

  v133 = v176;
  sub_C64E0(&v181);
  if (v182)
  {
    sub_10914(&v181, &v183);
    sub_B170(&v183, v184);
    sub_7665A0();
    v225.origin.x = v175;
    v225.origin.y = v177;
    v225.size.width = v114;
    v225.size.height = v179;
    CGRectGetMidX(v225);
    v226.origin.x = v169;
    v226.origin.y = v168;
    v226.size.width = v171;
    v226.size.height = v170;
    CGRectGetMaxY(v226);
    sub_B170((v7 + *(*&v133 + 44)), *(v7 + *(*&v133 + 44) + 24));
    v134 = v179;
    sub_766720();
    sub_B170(&v183, v184);
    v114 = v174;
    sub_766530();
    sub_BEB8(&v183);
  }

  else
  {
    sub_10A2C(&v181, &unk_943B10);
    v134 = v179;
  }

  sub_1ED18(v7 + v112[16], &v181, &unk_943B10);
  v135 = v175;
  if (v182)
  {
    sub_10914(&v181, &v183);
    v136 = [a1 traitCollection];
    v137 = sub_769A00();

    if (v137 & 1) != 0 || (sub_C64E0(&v181), v138 = v182, sub_10A2C(&v181, &unk_943B10), v138) && (v139 = [a1 traitCollection], v140 = sub_7699D0(), v139, (v140))
    {
      sub_B170(&v183, v184);
    }

    else
    {
      sub_B170(&v183, v184);
      sub_7665B0();
      v227.origin.x = v135;
      v141 = v177;
      v227.origin.y = v177;
      v227.size.width = v174;
      v227.size.height = v134;
      CGRectGetMidX(v227);
      v228.origin.x = v135;
      v228.origin.y = v141;
      v228.size.width = v174;
      v228.size.height = v134;
      CGRectGetMaxY(v228);
      sub_BD88(&qword_94E5D0);
      v142 = v155;
      sub_759380();
      sub_766470();
      sub_759360();
      v178(v17, v180);
      (*(v156 + 8))(v142, v161);
      v135 = v175;
      sub_B170(&v183, v184);
      v114 = v174;
      sub_766530();
      sub_B170(&v183, v184);
    }

    sub_766550();
    sub_BEB8(&v183);
  }

  else
  {
    sub_10A2C(&v181, &unk_943B10);
  }

  sub_1ED18(v7 + v112[12], &v181, &unk_943B10);
  if (v182)
  {
    sub_10914(&v181, &v183);
    sub_B170(&v183, v184);
    sub_7665B0();
    v143 = v114;
    v145 = v144;
    v171 = v144;
    v174 = v146;
    sub_B170((v7 + v112[6]), *(v7 + v112[6] + 24));
    sub_766520();
    v147 = CGRectGetMaxX(v229) - v145;
    v148 = (v7 + *(*&v133 + 56));
    sub_B170(v148, v148[3]);
    sub_33964();
    sub_766700();
    v150 = v149;
    v151 = v180;
    v152 = v178;
    v178(v17, v180);
    v176 = v147 - v150;
    v230.origin.x = v135;
    v230.origin.y = v177;
    v230.size.width = v143;
    v230.size.height = v134;
    CGRectGetMinY(v230);
    sub_B170(v148, v148[3]);
    sub_33964();
    sub_766700();
    v152(v17, v151);
    sub_B170(&v183, v184);
    sub_769D20();
    sub_766530();
    sub_BEB8(&v183);
  }

  else
  {
    sub_10A2C(&v181, &unk_943B10);
  }

  return sub_7664B0();
}

double ProductLockupInlineUberLayout.offerButtonMinYDistanceFromBottom(fitting:in:)()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_940AD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_B170((v0 + *(v10 + 52)), *(v0 + *(v10 + 52) + 24));
  sub_7665B0();
  v12 = v11;
  v13 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_BD88(&qword_94E5D0);
  sub_759380();
  sub_766470();
  sub_759360();
  v15 = v14;
  v16 = v23;
  v17 = *(v24 + 8);
  v24 += 8;
  v17(v5, v23);
  (*(v7 + 8))(v9, v6);
  sub_B170((v1 + *(v13 + 60)), *(v1 + *(v13 + 60) + 24));
  sub_33964();
  sub_766700();
  v19 = v18;
  v17(v5, v16);
  sub_B170((v1 + *(v13 + 64)), *(v1 + *(v13 + 64) + 24));
  sub_33964();
  sub_766700();
  v21 = v20;
  v17(v5, v16);
  return v12 + v15 + v19 + v21;
}

double sub_C9CB4(void *a1, uint64_t a2, double a3)
{
  v6 = sub_BD88(&qword_940AD0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v45 - v7;
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_7699D0();

  v48 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_B170((a2 + v15[15]), *(a2 + v15[15] + 24));
    sub_33964();
    sub_766700();
    v16 = *(v9 + 8);
    v16(v12, v8);
    sub_B170((a2 + v15[16]), *(a2 + v15[16] + 24));
    sub_33964();
    sub_766700();
    v16(v12, v8);
    sub_B170((a2 + v15[17]), *(a2 + v15[17] + 24));
    sub_33964();
    v17 = v49;
    sub_766700();
    v16(v12, v8);
    sub_766470();
    sub_759360();
    v16(v12, v8);
    sub_BD88(&qword_94E5D0);
    sub_759380();
    sub_766470();
    sub_759360();
    v16(v12, v8);
    v9 = v48;
    (*(v50 + 8))(v17, v51);
  }

  sub_769DA0();
  v19 = v18;
  v20 = [a1 traitCollection];
  v21 = sub_7699E0();

  if (v21)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    (*(v9 + 8))(v12, v8);
  }

  v47 = v19;
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_B170((a2 + *(v22 + 36)), *(a2 + *(v22 + 36) + 24));
  sub_7665A0();
  v45[2] = v23;
  v45[4] = v24;
  v45[1] = v25;
  v45[3] = v26;
  v46 = v22;
  v27 = (a2 + *(v22 + 44));
  sub_B170(v27, v27[3]);
  sub_7665A0();
  sub_B170(v27, v27[3]);
  if (sub_766500())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v54[0] = v29;
    sub_766720();
  }

  sub_C64E0(&v52);
  if (v53)
  {
    sub_10914(&v52, v54);
    sub_B170(v54, v55);
    sub_7665A0();
    v30 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_B170((a2 + *(v30 + 44)), *(a2 + *(v30 + 44) + 24));
    sub_766720();
    sub_B170((a2 + *(v30 + 48)), *(a2 + *(v30 + 48) + 24));
    sub_33964();
    sub_766700();
    (*(v9 + 8))(v12, v8);
    sub_BEB8(v54);
  }

  else
  {
    sub_10A2C(&v52, &unk_943B10);
  }

  v31 = v50;
  sub_C64E0(v54);
  v32 = v55;
  sub_10A2C(v54, &unk_943B10);
  if (!v32)
  {
    v33 = [a1 traitCollection];
    v34 = sub_7699E0();

    if (v34 & 1) != 0 || (v35 = [a1 traitCollection], v36 = sub_769A00(), v35, (v36))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_766470();
      sub_759360();
      (*(v9 + 8))(v12, v8);
    }
  }

  v37 = [a1 traitCollection];
  v38 = sub_7699D0();

  if (v38)
  {
    sub_C64E0(v54);
    sub_10A2C(v54, &unk_943B10);
  }

  v39 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_BD88(&qword_94E5D0);
  v40 = v49;
  sub_759380();
  sub_766470();
  sub_759360();
  v41 = *(v48 + 8);
  v41(v12, v8);
  (*(v31 + 8))(v40, v51);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_766470();
  sub_759360();
  v41(v12, v8);
  sub_766470();
  sub_759360();
  v43 = v42;
  v41(v12, v8);
  v54[0] = v43;
  sub_766720();
  sub_B170((a2 + v39[9]), *(a2 + v39[9] + 24));
  sub_33964();
  sub_766700();
  v41(v12, v8);
  sub_B170((a2 + *(v46 + 52)), *(a2 + *(v46 + 52) + 24));
  sub_7665B0();
  sub_B170((a2 + v39[15]), *(a2 + v39[15] + 24));
  sub_33964();
  sub_766700();
  v41(v12, v8);
  sub_B170((a2 + v39[16]), *(a2 + v39[16] + 24));
  sub_33964();
  sub_766700();
  v41(v12, v8);
  return a3;
}

uint64_t sub_CA7F4(uint64_t a1)
{
  *(a1 + 8) = sub_CA85C(&qword_943B20);
  result = sub_CA85C(&qword_943B28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_CA85C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProductLockupInlineUberLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CA8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_CA988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_CAA44()
{
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_7E0B0(319, &qword_94E850, &unk_9418A0);
    if (v1 <= 0x3F)
    {
      sub_70B18(319, &unk_94E830);
      if (v2 <= 0x3F)
      {
        sub_70B18(319, &qword_941880);
        if (v3 <= 0x3F)
        {
          sub_7E0B0(319, &unk_94E840, &unk_941890);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_CABA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_BD88(&qword_940AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_BD88(&qword_94E5D0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_CACFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_BD88(&qword_940AD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 24) = (a2 - 1);
  }

  else
  {
    v13 = sub_BD88(&qword_94E5D0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_CAE40()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_7E378();
      if (v2 <= 0x3F)
      {
        sub_70B18(319, &qword_943C60);
        if (v3 <= 0x3F)
        {
          sub_CAF54();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_CAF54()
{
  if (!qword_943C68)
  {
    sub_133D8(&qword_940AD0);
    v0 = sub_7593A0();
    if (!v1)
    {
      atomic_store(v0, &qword_943C68);
    }
  }
}

uint64_t type metadata accessor for GenericPageLayoutSectionProvider()
{
  result = qword_943CE0;
  if (!qword_943CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_CB050(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a4;
  v42 = a5;
  v13 = sub_764930();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_94F1F0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v35 = a2;
  v36 = a3;
  v44 = a2;
  v45 = a3;
  sub_762BA0();
  v20 = sub_762BB0();
  v37 = a10;
  v33 = a9;
  v21 = v13;
  v22 = v20(a1, sub_60CA0, v43, v41, v42, v38, v39, v40, a9, a10);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v17 + 8))(v19, v16);
  v23 = v34;
  v24 = (*(v34 + 88))(v15, v21);
  if (v24 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    v25 = v35();
    v26 = sub_CB3B4(a1, v25, v41, v42, v38, v39, v40, v33, v37);

LABEL_5:

    return v26;
  }

  v27 = v37;
  v28 = v41;
  v29 = v42;
  if (v24 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v30 = v35();
    v26 = sub_CC6F8(a1, v30, v28, v29, v38, v39, v40, v33, v27);

    goto LABEL_5;
  }

  if (v24 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    [v22 setOrthogonalScrollingBehavior:2];
  }

  else
  {
    (*(v23 + 8))(v15, v21);
  }

  return v22;
}

uint64_t sub_CB3B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v159 = a8;
  v160 = a7;
  v133 = a6;
  v132 = a5;
  v134 = a4;
  v135 = a3;
  v156 = a1;
  v10 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v10 - 8);
  v142 = &v128 - v11;
  v153 = sub_BD88(&qword_943D30);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v128 - v12;
  v147 = sub_760730();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v149 = &v128 - v15;
  v144 = sub_766AF0();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v136 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v128 - v18;
  __chkstk_darwin(v19);
  v138 = &v128 - v20;
  __chkstk_darwin(v21);
  v139 = &v128 - v22;
  __chkstk_darwin(v23);
  v140 = &v128 - v24;
  __chkstk_darwin(v25);
  v141 = &v128 - v26;
  v150 = sub_766D70();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v158 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_7656C0();
  v157 = *(v155 - 8);
  __chkstk_darwin(v155);
  v154 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_75C840();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = _swiftEmptyArrayStorage;
  v33 = *(a2 + 16);
  v161 = v30;
  v130 = a2;
  v131 = v33;
  if (v33)
  {
    sub_75A530();
    v35 = *(v30 + 16);
    v34 = v30 + 16;
    *&v163 = v35;
    v36 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v162 = _swiftEmptyArrayStorage;
    v35(v32, v36, v29);
    while (1)
    {
      sub_CE320(&qword_93F378, &type metadata accessor for RibbonBarItem);
      sub_75C750();
      (*(v34 - 8))(v32, v29);
      if (v168[0])
      {
        sub_769440();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v162 = *(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8));
          sub_7694C0();
        }

        sub_769500();
        v162 = aBlock;
      }

      v36 += v37;
      if (!--v33)
      {
        break;
      }

      (v163)(v32, v36, v29);
    }
  }

  else
  {
    v162 = _swiftEmptyArrayStorage;
  }

  v38 = v154;
  v39 = v156;
  sub_75DA20();
  sub_765580();
  v41 = v40;
  v42 = v157 + 8;
  v43 = *(v157 + 8);
  v44 = v155;
  v43(v38, v155);
  v45 = sub_75DA30();
  v46 = type metadata accessor for SnapshotPageTraitEnvironment();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v48 = v41;
  *(v48 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v47[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v45;
  v169.receiver = v47;
  v169.super_class = v46;
  v49 = objc_msgSendSuper2(&v169, "init");
  v50 = [v49 traitCollection];

  sub_75DA20();
  sub_765630();
  v52 = v51;
  v43(v38, v44);
  sub_75DA20();
  sub_765620();
  v54 = v53;
  v43(v38, v44);
  v55 = sub_17467C(v162, v50, v52, v54);

  if ((sub_769490() & 1) == 0)
  {

    sub_BE70(0, &unk_93FFE0);
    v67 = sub_75DAB0();
    v68 = *(v67 - 8);
    v69 = v142;
    (*(v68 + 16))(v142, v39, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = sub_769C40();

    sub_10A2C(v69, &unk_957F70);
    return v70;
  }

  v142 = v43;
  sub_BE70(0, &qword_93F900);
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v162 = a9;
  v56 = sub_7666D0();
  sub_BE38(v56, qword_99F7F0);
  v57 = sub_769E10();
  v58 = v136;
  sub_766AE0();
  v59 = v137;
  *&v163 = v57;
  sub_766AD0();
  v60 = *(v143 + 8);
  v61 = v144;
  v60(v58, v144);
  v62 = v138;
  sub_766A30();
  v60(v59, v61);
  v63 = v139;
  sub_766A90();
  v60(v62, v61);
  v64 = v140;
  sub_766A80();
  v60(v63, v61);
  sub_766AA0();
  v60(v64, v61);
  sub_766D50();
  sub_766D80();
  v65 = sub_769A00();
  v129 = v55;
  v66 = v145;
  if (v65)
  {
    sub_173BE4(v50, v145);
  }

  else
  {
    sub_173F1C();
  }

  (*(v146 + 32))(v149, v66, v147);
  v166 = 0;
  aBlock = 0u;
  v165 = 0u;
  v71 = v150;
  v168[3] = v150;
  v168[4] = &protocol witness table for LabelPlaceholder;
  v72 = sub_B1B4(v168);
  v73 = v148;
  v74 = v158;
  (*(v148 + 16))(v72, v158, v71);
  v75 = sub_760750();
  swift_allocObject();
  *&aBlock = sub_760740();
  sub_CE320(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout);
  v76 = v151;
  v149 = v75;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v77 = v153;
  sub_7673F0();
  v79 = v78;

  (*(v152 + 8))(v76, v77);
  (*(v73 + 8))(v74, v71);
  v168[0] = _swiftEmptyArrayStorage;
  v80 = v129;
  *&v163 = v129[2];
  v157 = v42;
  if (!v163)
  {
    v86 = 0.0;
LABEL_26:

    v95 = (v163 - 1);
    sub_7606D0();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v96 = swift_allocObject();
    v163 = xmmword_77D9F0;
    *(v96 + 16) = xmmword_77D9F0;
    *(v96 + 32) = v50;
    v97 = v50;
    v98 = sub_7671E0();
    sub_769610();
    v100 = v99;

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v86 + v100 * v95];
    v104 = [v102 absoluteDimension:v79];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_BE70(0, &qword_957F90);
    isa = sub_769450().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v108 = objc_opt_self();
    sub_7606D0();
    v109 = swift_allocObject();
    *(v109 + 16) = v163;
    *(v109 + 32) = v97;
    *&v163 = v97;
    v110 = sub_7671E0();
    sub_769610();
    v112 = v111;

    v113 = [v108 fixedSpacing:v112];
    [v107 setInterItemSpacing:v113];

    v70 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    v114 = v134;
    sub_761E30();
    sub_BE70(0, &unk_956240);
    v115 = sub_769450().super.isa;

    [v70 setBoundarySupplementaryItems:v115];

    sub_761E20();
    sub_BE70(0, &unk_957FA0);
    v116 = sub_769450().super.isa;

    [v70 setDecorationItems:v116];

    v117 = v154;
    sub_75DA20();
    sub_765650();
    v119 = v118;
    v121 = v120;
    (v142)(v117, v155);
    sub_B170(v114, v114[3]);
    sub_761DF0();
    v123 = v122;
    sub_B170(v114, v114[3]);
    sub_761E10();
    [v70 setContentInsets:{v123, v119, v124, v121}];
    [v70 setOrthogonalScrollingBehavior:1];
    sub_762B90();
    v125 = sub_769480();
    v127 = v126;

    if (v125)
    {
      v166 = v125;
      v167 = v127;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v165 = sub_4E4820;
      *(&v165 + 1) = &unk_8836E8;
      v125 = _Block_copy(&aBlock);
    }

    [v70 setVisibleItemsInvalidationHandler:v125];
    _Block_release(v125);

    return v70;
  }

  v81 = objc_opt_self();
  v158 = objc_opt_self();
  result = objc_opt_self();
  if (v131)
  {
    if (v163 <= v131)
    {
      v83 = result;
      v153 = v50;
      swift_getObjectType();
      v84 = 0;
      v85 = v80 + 4;
      v86 = 0.0;
      do
      {
        v87 = *&v85[v84];
        v88 = [v81 absoluteDimension:v87];
        v89 = [v81 absoluteDimension:v79];
        v90 = [v158 sizeWithWidthDimension:v88 heightDimension:v89];

        sub_761510();
        sub_BE70(0, &unk_956250);
        v91 = v90;
        v92 = sub_769450().super.isa;

        v93 = [v83 itemWithLayoutSize:v91 supplementaryItems:v92];

        v94 = v93;
        sub_769440();
        if (*(&dword_10 + (v168[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v168[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        ++v84;
        sub_769500();

        v86 = v86 + v87;
      }

      while (v163 != v84);
      v50 = v153;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_CC6F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v187 = a4;
  v227 = a8;
  v230 = a7;
  v185 = a5;
  v186 = a6;
  v188 = a3;
  v193 = a1;
  v10 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v10 - 8);
  v189 = &v182 - v11;
  v12 = sub_BD88(&qword_941B78);
  v13 = *(v12 - 8);
  v233 = v12;
  v234 = v13;
  __chkstk_darwin(v12);
  v226 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v203 = &v182 - v16;
  v215 = sub_BD88(&qword_943D30);
  v224 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v182 - v17;
  v213 = sub_760730();
  v223 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v231 = &v182 - v20;
  v211 = sub_766AF0();
  v222 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v209 = &v182 - v23;
  __chkstk_darwin(v24);
  v208 = &v182 - v25;
  __chkstk_darwin(v26);
  v207 = &v182 - v27;
  __chkstk_darwin(v28);
  v206 = &v182 - v29;
  __chkstk_darwin(v30);
  v205 = &v182 - v31;
  v204 = sub_766D70();
  v221 = *(v204 - 8);
  __chkstk_darwin(v204);
  v229 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_7656C0();
  v194 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_75C840();
  v34 = *(v232 - 1);
  __chkstk_darwin(v232);
  v217 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v182 - v37;
  *&v235 = _swiftEmptyArrayStorage;
  v39 = *(a2 + 16);
  v182 = a2;
  v183 = v34;
  v184 = v39;
  if (v39)
  {
    sub_75A530();
    v41 = *(v34 + 16);
    v40 = v34 + 16;
    ObjectType = v41;
    v42 = a2 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v225 = *(v40 + 56);
    v218 = _swiftEmptyArrayStorage;
    do
    {
      v43 = v232;
      (ObjectType)(v38, v42, v232);
      sub_CE320(&qword_93F378, &type metadata accessor for RibbonBarItem);
      sub_75C750();
      (*(v40 - 8))(v38, v43);
      if (v254[0])
      {
        sub_769440();
        if (*(&dword_10 + (v235 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v235 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v218 = v235;
      }

      v42 += v225;
      --v39;
    }

    while (v39);
  }

  else
  {
    v218 = _swiftEmptyArrayStorage;
  }

  v44 = v191;
  sub_75DA20();
  sub_765580();
  v46 = v45;
  v47 = *(v194 + 8);
  v194 += 8;
  v190 = v47;
  v47(v44, v192);
  v48 = sub_75DA30();
  v49 = type metadata accessor for SnapshotPageTraitEnvironment();
  v50 = objc_allocWithZone(v49);
  v51 = &v50[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v51 = v46;
  *(v51 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v50[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v48;
  v258.receiver = v50;
  v258.super_class = v49;
  v52 = objc_msgSendSuper2(&v258, "init");
  v53 = [v52 traitCollection];

  v54 = v218;
  if (v218 >> 62)
  {
    v94 = v218;
    v55 = sub_76A860();
    v54 = v94;
    if (v55)
    {
      goto LABEL_11;
    }

LABEL_37:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v55 = *(&dword_10 + (v218 & 0xFFFFFFFFFFFFFF8));
  if (!v55)
  {
    goto LABEL_37;
  }

LABEL_11:
  v56 = v54;
  v257 = _swiftEmptyArrayStorage;
  sub_143CBC(0, v55 & ~(v55 >> 63), 0);
  if (v55 < 0)
  {
    goto LABEL_94;
  }

  v57 = v257;
  v58 = sub_BE70(0, &qword_93F900);
  v59 = 0;
  v60 = v56;
  v200 = v56 & 0xC000000000000001;
  v201 = v58;
  v198 = (v223 + 32);
  v199 = (v222 + 8);
  v196 = v224 + 1;
  v197 = (v221 + 2);
  v195 = (v221 + 1);
  v216 = v53;
  v202 = v55;
  do
  {
    if (v200)
    {
      v61 = sub_76A770();
    }

    else
    {
      v61 = *(v60 + 8 * v59 + 32);
    }

    v62 = sub_75A510();
    v221 = v63;
    v222 = v62;
    v64 = sub_75A520();
    ObjectType = v57;
    if (v64)
    {
      sub_765260();
      v66 = v65;
      v68 = v67;

      v219 = v68;
      v220 = v66;
    }

    else
    {
      v219 = 0;
      v220 = 0;
    }

    v69 = sub_75A520();
    if (v69)
    {
    }

    v223 = v69;
    v225 = v61;
    if (qword_93DAA8 != -1)
    {
      swift_once();
    }

    v70 = sub_7666D0();
    sub_BE38(v70, qword_99F7F0);
    v53 = v216;
    v71 = sub_769E10();
    v72 = v210;
    sub_766AE0();
    v73 = v209;
    v224 = v71;
    sub_766AD0();
    v74 = *v199;
    v75 = v211;
    (*v199)(v72, v211);
    v76 = v208;
    sub_766A30();
    v74(v73, v75);
    v77 = v207;
    sub_766A90();
    v74(v76, v75);
    v78 = v206;
    sub_766A80();
    v74(v77, v75);
    sub_766AA0();
    v74(v78, v75);
    sub_766D50();
    sub_766D80();
    if (sub_769A00())
    {
      v79 = v212;
      sub_173BE4(v53, v212);
    }

    else
    {
      v79 = v212;
      if (v64)
      {
        sub_769D70();
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251 = 0x4028000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248 = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245 = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242 = 0;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239 = 0;
      }

      else
      {
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251 = 0x4024000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248 = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245 = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242 = 0x4024000000000000;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239 = 0x4024000000000000;
      }

      sub_760700();
      v53 = v216;
    }

    (*v198)(v231, v79, v213);
    if (v223)
    {
      v80 = sub_75AB90();
      swift_allocObject();
      v81 = sub_75AB80();
      *(&v236 + 1) = v80;
      v237 = sub_CE320(&qword_93F440, &type metadata accessor for EmptyPlaceable);
      *&v235 = v81;
    }

    else
    {
      v237 = 0;
      v235 = 0u;
      v236 = 0u;
    }

    v82 = v204;
    v255 = v204;
    v256 = &protocol witness table for LabelPlaceholder;
    v83 = sub_B1B4(v254);
    v84 = v229;
    (*v197)(v83, v229, v82);
    sub_760750();
    swift_allocObject();
    *&v235 = sub_760740();
    sub_CE320(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout);
    v85 = v214;
    sub_766730();
    swift_getOpaqueTypeConformance2();
    v86 = v215;
    sub_7673F0();
    v88 = v87;
    v90 = v89;

    (*v196)(v85, v86);
    (*v195)(v84, v82);
    v57 = ObjectType;
    v257 = ObjectType;
    v92 = *(ObjectType + 16);
    v91 = *(ObjectType + 24);
    if (v92 >= v91 >> 1)
    {
      sub_143CBC((v91 > 1), v92 + 1, 1);
      v57 = v257;
    }

    ++v59;
    v57[2] = v92 + 1;
    v93 = &v57[2 * v92];
    v93[4] = v88;
    v93[5] = v90;
    v60 = v218;
  }

  while (v202 != v59);

LABEL_38:
  type metadata accessor for CGSize(0);
  if ((sub_769490() & 1) == 0)
  {

    sub_BE70(0, &unk_93FFE0);
    v129 = sub_75DAB0();
    v130 = *(v129 - 8);
    v131 = v189;
    (*(v130 + 16))(v189, v193, v129);
    (*(v130 + 56))(v131, 0, 1, v129);
    v132 = sub_769C40();

    sub_10A2C(v131, &unk_957F70);
    return v132;
  }

  sub_760750();
  sub_7606D0();
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_77D9F0;
  *(v95 + 32) = v53;
  v96 = v53;
  v97 = sub_7671E0();
  sub_769610();
  v99 = v98;

  v100 = v191;
  sub_75DA20();
  sub_765BE0();
  sub_765630();
  v102 = v101;
  result = v190(v100, v192);
  v104 = v57[2];
  v105 = _swiftEmptyArrayStorage;
  v216 = v96;
  ObjectType = v57;
  if (!v104)
  {
    v224 = _swiftEmptyArrayStorage;
LABEL_67:
    v225 = a9;

    v55 = _swiftEmptyArrayStorage;
    v254[0] = _swiftEmptyArrayStorage;
    v222 = v105[2];
    if (!v222)
    {

      v159 = _swiftEmptyArrayStorage;
      v134 = 0.0;
LABEL_86:
      v160 = objc_opt_self();
      v161 = [v160 absoluteDimension:v102];
      v162 = [v160 absoluteDimension:v134];
      v55 = [objc_opt_self() sizeWithWidthDimension:v161 heightDimension:v162];

      if (!(v159 >> 62))
      {

        sub_76A960();
        sub_BE70(0, &qword_957F90);
LABEL_88:

        v163 = objc_opt_self();
        sub_BE70(0, &qword_957F90);
        isa = sub_769450().super.isa;

        v165 = [v163 verticalGroupWithLayoutSize:v55 subitems:isa];

        v166 = [objc_opt_self() fixedSpacing:10.0];
        [v165 setInterItemSpacing:v166];

        v167 = objc_opt_self();
        v234 = v165;
        v132 = [v167 sectionWithGroup:v165];
        swift_getObjectType();
        v168 = v187;
        sub_761E30();
        sub_BE70(0, &unk_956240);
        v169 = sub_769450().super.isa;

        [v132 setBoundarySupplementaryItems:v169];

        sub_761E20();
        sub_BE70(0, &unk_957FA0);
        v170 = sub_769450().super.isa;

        [v132 setDecorationItems:v170];

        v171 = v191;
        sub_75DA20();
        sub_765650();
        v173 = v172;
        v175 = v174;
        v190(v171, v192);
        sub_B170(v168, v168[3]);
        sub_761DF0();
        v177 = v176;
        sub_B170(v168, v168[3]);
        sub_761E10();
        [v132 setContentInsets:{v177, v173, v178, v175}];
        sub_762B90();
        v179 = sub_769480();
        v181 = v180;

        if (v179)
        {
          v237 = v179;
          v238 = v181;
          *&v235 = _NSConcreteStackBlock;
          *(&v235 + 1) = 1107296256;
          *&v236 = sub_4E4820;
          *(&v236 + 1) = &unk_883710;
          v179 = _Block_copy(&v235);
        }

        [v132 setVisibleItemsInvalidationHandler:{v179, v182, v183}];
        _Block_release(v179);

        return v132;
      }

LABEL_95:
      sub_BE70(0, &qword_957F90);

      sub_76A850();

      goto LABEL_88;
    }

    v221 = v105 + 4;
    v219 = objc_opt_self();
    v232 = objc_opt_self();
    v231 = objc_opt_self();
    v218 = objc_opt_self();
    v133 = 0;
    v134 = 0.0;
    v220 = v105;
    while (v133 < v105[2])
    {
      v223 = v133;
      v135 = v221[v133];
      v136 = *(v135 + 16);
      if (v136)
      {
        *&v235 = _swiftEmptyArrayStorage;

        sub_76A7C0();
        v229 = (v135 + ((v234[80] + 32) & ~v234[80]));
        ObjectType = swift_getObjectType();
        v137 = objc_opt_self();
        v138 = 0;
        v139 = 0.0;
        v140 = 0.0;
        while (v138 < *(v135 + 16))
        {
          v141 = v226;
          sub_CE2B0(&v229[*(v234 + 9) * v138], v226);
          v142 = (v141 + *(v233 + 48));
          v143 = *v142;
          v144 = v142[1];
          if (v140 <= v144)
          {
            v140 = v142[1];
          }

          ++v138;
          v139 = v139 + v143;
          sub_761510();
          v145 = v232;
          v146 = [v232 absoluteDimension:v143];
          v147 = [v145 absoluteDimension:v144];
          v55 = [v231 sizeWithWidthDimension:v146 heightDimension:v147];

          sub_BE70(0, &unk_956250);
          v148 = sub_769450().super.isa;

          v149 = [v137 itemWithLayoutSize:v55 supplementaryItems:v148];

          sub_10A2C(v141, &qword_941B78);
          sub_76A7A0();
          sub_76A7D0();
          sub_76A7E0();
          sub_76A7B0();
          if (v136 == v138)
          {

            v55 = _swiftEmptyArrayStorage;
            goto LABEL_78;
          }
        }

        __break(1u);
        break;
      }

      v139 = 0.0;
      v140 = 0.0;
LABEL_78:
      if (v136 <= 1)
      {
        v150 = 1;
      }

      else
      {
        v150 = v136;
      }

      v151 = v232;
      v152 = [v232 absoluteDimension:{v99 * (v150 - 1) + v139, v182, v183}];
      v153 = [v151 absoluteDimension:v140];
      v154 = [v231 sizeWithWidthDimension:v152 heightDimension:v153];

      sub_BE70(0, &qword_957F90);
      v155 = sub_769450().super.isa;

      v156 = [v219 horizontalGroupWithLayoutSize:v154 subitems:v155];

      v157 = [v218 fixedSpacing:v99];
      [v156 setInterItemSpacing:v157];

      v158 = v156;
      sub_769440();
      if (*(&dword_10 + (v254[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v254[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v133 = v223 + 1;
      sub_769500();

      v134 = v134 + v140 + 10.0;
      v105 = v220;
      if (v133 == v222)
      {
        v159 = v254[0];

        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v184)
  {
    if (v104 <= v184)
    {
      v106 = *(v183 + 16);
      v107 = v182 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
      v231 = *(v183 + 72);
      v108 = (v183 + 8);
      v109 = (v57 + 5);
      v110 = v102;
      v224 = _swiftEmptyArrayStorage;
      do
      {
        v111 = *(v109 - 1);
        v112 = *v109;
        (v106)(v217, v107, v232);
        v113 = ceil(v111);
        if (v102 > v111)
        {
          v114 = v113;
        }

        else
        {
          v114 = v102;
        }

        if (v110 >= v114)
        {
          v117 = v105;
          v118 = v224;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_7B9B4(0, v105[2] + 1, 1, v105);
          }

          v116 = v105[2];
          v115 = v105[3];
          v117 = v105;
          if (v116 >= v115 >> 1)
          {
            v117 = sub_7B9B4((v115 > 1), v116 + 1, 1, v105);
          }

          v117[2] = v116 + 1;
          v117[v116 + 4] = v224;
          v110 = v102;
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = (v203 + *(v233 + 48));
        v106();
        *v119 = v114;
        v119[1] = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v118;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = sub_7B990(0, v118[2] + 1, 1, v118);
        }

        v123 = v121[2];
        v122 = v121[3];
        v224 = v121;
        if (v123 >= v122 >> 1)
        {
          v224 = sub_7B990(v122 > 1, v123 + 1, 1, v224);
        }

        v124 = v224;
        v224[2] = (v123 + 1);
        sub_CE240(v203, v124 + ((v234[80] + 32) & ~v234[80]) + *(v234 + 9) * v123);
        if (v104 == 1)
        {

          v125 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_7B9B4(0, v117[2] + 1, 1, v117);
          }

          v127 = v125[2];
          v126 = v125[3];
          v128 = v125;
          if (v127 >= v126 >> 1)
          {
            v128 = sub_7B9B4((v126 > 1), v127 + 1, 1, v125);
          }

          (*v108)(v217, v232);
          v128[2] = v127 + 1;
          v105 = v128;
          v128[v127 + 4] = v224;
        }

        else
        {
          (*v108)(v217, v232);
          v105 = v117;
        }

        v110 = v110 - (v99 + v114);
        v107 += v231;
        v109 += 2;
        --v104;
      }

      while (v104);
      goto LABEL_67;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_CE1A8(uint64_t a1)
{
  swift_allocObject();
  sub_134D8(a1, v4);
  v2 = sub_762B60();
  sub_BEB8(a1);
  return v2;
}

uint64_t sub_CE228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_CE240(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CE2B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CE320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FlowDestination()
{
  result = qword_943DB0;
  if (!qword_943DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_CE410()
{
  sub_CEA04(319);
  if (v0 <= 0x3F)
  {
    sub_CEB74(319, &qword_943DE8, &type metadata accessor for FlowOrigin);
    if (v1 <= 0x3F)
    {
      sub_7570A0();
      if (v2 <= 0x3F)
      {
        sub_CEB74(319, &qword_943DF0, &type metadata accessor for DynamicUIRequestInfo);
        if (v3 <= 0x3F)
        {
          sub_CF1B4(319, &qword_943DF8, &qword_943E00, &type metadata accessor for SearchAction, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_CEFF4(319, &qword_943E08, &qword_943E10);
            if (v5 <= 0x3F)
            {
              sub_CF1B4(319, &qword_943E18, &qword_943E20, &type metadata accessor for Artwork, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_CF0E0(319, &qword_943E28, &qword_943E30);
                if (v7 <= 0x3F)
                {
                  sub_CEFF4(319, &qword_943E38, &qword_943E40);
                  if (v8 <= 0x3F)
                  {
                    sub_CEFF4(319, &qword_943E48, &qword_943E50);
                    if (v9 <= 0x3F)
                    {
                      sub_CEC5C();
                      if (v10 <= 0x3F)
                      {
                        sub_CECF4();
                        if (v11 <= 0x3F)
                        {
                          sub_CED98();
                          if (v12 <= 0x3F)
                          {
                            sub_CEE18();
                            if (v13 <= 0x3F)
                            {
                              sub_CF168(319, &qword_943E98, &type metadata accessor for MarketingItemRequestInfo);
                              if (v14 <= 0x3F)
                              {
                                sub_CEEAC();
                                if (v15 <= 0x3F)
                                {
                                  sub_CEF2C();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_CEFC4();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_BE70(319, &qword_9434E0);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_CF168(319, &qword_943EC8, &type metadata accessor for URL);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_CEFF4(319, &qword_943ED0, &qword_943ED8);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_CF078();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_CF324(319, &qword_943EF0);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_CF0E0(319, &qword_943EF8, &qword_943F00);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_CEB74(319, &qword_943F08, &type metadata accessor for AdamId);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_CF168(319, &qword_943F10, &type metadata accessor for ReviewsPage);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_CEBF8(319, &qword_943F18, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_CF1B4(319, &qword_943F20, &qword_943F18, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_CF0E0(319, &qword_943F28, &qword_943F30);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_7594D0();
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_CF208();
                                                              if (v30 <= 0x3F)
                                                              {
                                                                sub_765030();
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_75A2B0();
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_CF238();
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_CF2CC();
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        sub_CF370();
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          sub_CF400();
                                                                          if (v36 <= 0x3F)
                                                                          {
                                                                            sub_CF480();
                                                                            if (v37 <= 0x3F)
                                                                            {
                                                                              sub_CF500();
                                                                              if (v38 <= 0x3F)
                                                                              {
                                                                                sub_CF580();
                                                                                if (v39 <= 0x3F)
                                                                                {
                                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
  }
}

void sub_CEA04(uint64_t a1)
{
  if (!qword_943DC0)
  {
    __chkstk_darwin(a1);
    sub_7570A0();
    sub_133D8(&qword_943DC8);
    sub_133D8(&qword_943DD0);
    sub_133D8(&qword_943DD8);
    sub_133D8(&qword_943DE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_943DC0);
    }
  }
}

void sub_CEB74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_7570A0();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_CEBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_CEC5C()
{
  if (!qword_943E58)
  {
    sub_75AEB0();
    sub_133D8(&qword_943E60);
    sub_75C190();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_943E58);
    }
  }
}

void sub_CECF4()
{
  if (!qword_943E68)
  {
    sub_133D8(&qword_943E70);
    sub_133D8(&qword_941BA0);
    sub_75D5D0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_943E68);
    }
  }
}

void sub_CED98()
{
  if (!qword_943E78)
  {
    sub_133D8(&qword_943E80);
    sub_75AA40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_943E78);
    }
  }
}

void sub_CEE18()
{
  if (!qword_943E88)
  {
    sub_133D8(&unk_93FD30);
    sub_133D8(&qword_943E90);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_943E88);
    }
  }
}

void sub_CEEAC()
{
  if (!qword_943EA0)
  {
    sub_133D8(&qword_943EA8);
    sub_7570A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_943EA0);
    }
  }
}

void sub_CEF2C()
{
  if (!qword_943EB0)
  {
    sub_133D8(&qword_943EB8);
    sub_75C3F0();
    sub_7570A0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_943EB0);
    }
  }
}

void *sub_CEFC4()
{
  result = qword_943EC0;
  if (!qword_943EC0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_943EC0);
  }

  return result;
}

void sub_CEFF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_133D8(a3);
    sub_133D8(&unk_93FD30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_CF078()
{
  if (!qword_943EE0)
  {
    sub_BE70(255, &qword_943EE8);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_943EE0);
    }
  }
}

void sub_CF0E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_7570A0();
    sub_133D8(a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_CF168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_CF1B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_CEBF8(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

ValueMetadata *sub_CF208()
{
  result = qword_943F38;
  if (!qword_943F38)
  {
    result = &type metadata for OnboardingConfiguration;
    atomic_store(&type metadata for OnboardingConfiguration, &qword_943F38);
  }

  return result;
}

void sub_CF238()
{
  if (!qword_943F40)
  {
    sub_BE70(255, &qword_943F48);
    sub_BE70(255, &qword_943F50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F40);
    }
  }
}

void sub_CF2CC()
{
  if (!qword_943F58)
  {
    sub_CF324(0, &qword_94E860);
    if (!v1)
    {
      atomic_store(v0, &qword_943F58);
    }
  }
}

void sub_CF324(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_76A480();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_CF370()
{
  if (!qword_943F60)
  {
    sub_BE70(255, &qword_943F50);
    sub_133D8(&unk_947FF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F60);
    }
  }
}

void sub_CF400()
{
  if (!qword_943F68)
  {
    sub_7582F0();
    sub_133D8(&qword_943F70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F68);
    }
  }
}

void sub_CF480()
{
  if (!qword_943F78)
  {
    sub_761320();
    sub_133D8(&qword_943F70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F78);
    }
  }
}

void sub_CF500()
{
  if (!qword_943F80)
  {
    sub_75E230();
    sub_133D8(&qword_943F70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F80);
    }
  }
}

void sub_CF580()
{
  if (!qword_943F88)
  {
    sub_BE70(255, &qword_9434E0);
    sub_757640();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F88);
    }
  }
}

uint64_t sub_CF604@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_760280();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B4C(v2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xFu:
    case 0x1Bu:
      sub_61BB0(v13);
      goto LABEL_14;
    case 3u:
      sub_BD88(&qword_943FC8);

      v23 = sub_7570A0();
      (*(*(v23 - 8) + 8))(v13, v23);
      goto LABEL_14;
    case 4u:
      sub_61BB0(v13);
      v14 = &enum case for FlowPresentationContext.select(_:);
      goto LABEL_24;
    case 6u:
      sub_61BB0(v13);
      goto LABEL_11;
    case 7u:
      sub_BD88(&unk_955D40);

      v22 = sub_7570A0();
      (*(*(v22 - 8) + 8))(v13, v22);
      goto LABEL_11;
    case 0xAu:

      v41 = *(sub_BD88(&qword_955C60) + 64);
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.presentModalPopover(_:), v4);
      v42 = sub_75C190();
      return (*(*(v42 - 8) + 8))(&v13[v41], v42);
    case 0xEu:
      sub_BD88(&qword_955D10);

      v33 = ASKDeviceTypeGetCurrent();
      v34 = sub_769240();
      v36 = v35;
      if (v34 == sub_769240() && v36 == v37)
      {

        v40 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v39 = sub_76A950();

        v40 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
        if (v39)
        {
          v40 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v7, *v40, v4);
      (*(v5 + 32))(a1, v7, v4);
      return sub_10A2C(v13, &unk_93FD30);
    case 0x11u:

      v15 = sub_BD88(&qword_955D00);
      v16 = *(v15 + 48);
      v17 = *(v15 + 64);
      v18 = sub_7570A0();
      (*(*(v18 - 8) + 8))(&v13[v17], v18);
      v19 = sub_75C3F0();
      (*(*(v19 - 8) + 8))(&v13[v16], v19);
      goto LABEL_14;
    case 0x13u:
    case 0x17u:
    case 0x20u:
    case 0x21u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
      sub_61BB0(v13);
      goto LABEL_3;
    case 0x15u:

      v21 = sub_BD88(&qword_955C90);
      sub_10A2C(&v13[*(v21 + 48)], &unk_93FD30);
      goto LABEL_3;
    case 0x18u:
      sub_BD88(&qword_955C80);

      v20 = sub_7570A0();
      (*(*(v20 - 8) + 8))(v13, v20);
LABEL_3:
      v14 = &enum case for FlowPresentationContext.presentModal(_:);
      goto LABEL_24;
    case 0x1Cu:
      sub_10A2C(v13, &unk_93FD30);
LABEL_14:
      v24 = ASKDeviceTypeGetCurrent();
      v25 = sub_769240();
      v27 = v26;
      if (v25 == sub_769240() && v27 == v28)
      {

        v31 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v30 = sub_76A950();

        v31 = &enum case for FlowPresentationContext.presentModalPageSheet(_:);
        if (v30)
        {
          v31 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v10, *v31, v4);
      return (*(v5 + 32))(a1, v10, v4);
    case 0x1Fu:
      v14 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      goto LABEL_24;
    case 0x2Du:
LABEL_11:
      v14 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
LABEL_24:
      result = (*(v5 + 104))(a1, *v14, v4);
      break;
    default:
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.push(_:), v4);
      result = sub_61BB0(v13);
      break;
  }

  return result;
}

uint64_t sub_CFD44()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_61B4C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x73657461647075;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v17 = *(sub_BD88(&qword_955D60) + 48);
      v18 = sub_758B40();
      (*(*(v18 - 8) + 8))(v3 + v17, v18);
      v19 = sub_7570A0();
      (*(*(v19 - 8) + 8))(v3, v19);
      return 0x6E776F6E6B6E75;
    case 2:
      sub_61BB0(v3);
      return 0x65746973626577;
    case 3:
      sub_BD88(&qword_943FC8);

      v13 = sub_7570A0();
      (*(*(v13 - 8) + 8))(v3, v13);
      return 0x5563696D616E7964;
    case 4:
      sub_61BB0(v3);
      return 0x686372616573;
    case 5:

      v21 = sub_BD88(&qword_943FC0);
      sub_10A2C(v3 + *(v21 + 48), &unk_93FD30);
      return 0xD000000000000019;
    case 6:
      sub_61BB0(v3);
      return 0x7972656C6C6167;
    case 7:
      sub_BD88(&unk_955D40);

      v28 = sub_7570A0();
      (*(*(v28 - 8) + 8))(v3, v28);
      return 0x6F65646976;
    case 8:

      v15 = sub_BD88(&qword_940A50);
      sub_10A2C(v3 + *(v15 + 48), &unk_93FD30);
      return 1701273968;
    case 9:

      v27 = sub_BD88(&qword_955CE0);
      sub_10A2C(v3 + *(v27 + 48), &unk_93FD30);
      return 0x7472616843706F74;
    case 10:

      v11 = *(sub_BD88(&qword_955C60) + 64);
      v12 = sub_75C190();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      return 0x6568536572616873;
    case 11:
      sub_61BB0(v3);
      return 0x6F4374726F706572;
    case 12:
      sub_61BB0(v3);
      return 0xD00000000000001ALL;
    case 13:

      v9 = *(sub_BD88(&qword_955D30) + 48);
      v10 = sub_75AA40();
      (*(*(v10 - 8) + 8))(v3 + v9, v10);
      return 0x656461637261;
    case 14:
      sub_BD88(&qword_955D10);

      sub_10A2C(v3, &unk_93FD30);
      return 0x7553656461637261;
    case 15:
    case 33:
      sub_61BB0(v3);
      return 0xD000000000000013;
    case 16:

      v7 = *(sub_BD88(&qword_955D20) + 48);
      v8 = sub_7570A0();
      goto LABEL_29;
    case 17:

      v22 = sub_BD88(&qword_955D00);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = sub_7570A0();
      (*(*(v25 - 8) + 8))(v3 + v24, v25);
      v26 = sub_75C3F0();
      (*(*(v26 - 8) + 8))(v3 + v23, v26);
      return 0x6557656461637261;
    case 18:
      sub_61BB0(v3);
      return 0xD00000000000001CLL;
    case 19:
      sub_61BB0(v3);
      return 0x746E6F4377656976;
    case 20:
      v20 = sub_7570A0();
      (*(*(v20 - 8) + 8))(v3, v20);
      return 0x7961646F74;
    case 21:

      v31 = sub_BD88(&qword_955C90);
      sub_10A2C(v3 + *(v31 + 48), &unk_93FD30);
      return 0x656C6369747261;
    case 22:
      sub_61BB0(v3);
      return 0x6573616863727570;
    case 23:
      sub_61BB0(v3);
      return 0x6775626564;
    case 24:
      sub_BD88(&qword_955C80);

      v16 = sub_7570A0();
      (*(*(v16 - 8) + 8))(v3, v16);
      goto LABEL_21;
    case 25:
      v34 = *(sub_BD88(&unk_955C70) + 48);
      v35 = sub_764CF0();
      (*(*(v35 - 8) + 8))(v3 + v34, v35);
      v36 = sub_7570A0();
      (*(*(v36 - 8) + 8))(v3, v36);
      return 0x7665526574697277;
    case 26:
      sub_61BB0(v3);
      return 0x73776569766572;
    case 27:
      sub_61BB0(v3);
      return 0x746E756F636361;
    case 28:
      sub_10A2C(v3, &unk_93FD30);
      return 0x65636E616E6966;
    case 29:
      v29 = sub_BD88(&qword_943FB8);
      sub_10A2C(v3 + *(v29 + 48), &qword_943F30);
      v30 = sub_7570A0();
      (*(*(v30 - 8) + 8))(v3, v30);
      return 7304045;
    case 30:
      sub_61BB0(v3);
      return 0x486E6F6973726576;
    case 31:
      return 0x696472616F626E6FLL;
    case 32:
      sub_61BB0(v3);
      return 0x6544776569766572;
    case 34:
      sub_61BB0(v3);
      goto LABEL_7;
    case 35:
      sub_61BB0(v3);
      return 0xD000000000000017;
    case 36:
      sub_61BB0(v3);
      return 0x6D65766569686361;
    case 37:

      v33 = sub_BD88(&qword_940A50);
      sub_10A2C(v3 + *(v33 + 48), &unk_93FD30);
      return 0x4479636176697270;
    case 38:

      v32 = sub_BD88(&qword_940A50);
      sub_10A2C(v3 + *(v32 + 48), &unk_93FD30);
      return 0xD000000000000012;
    case 39:

      v14 = sub_BD88(&qword_940A50);
      sub_10A2C(v3 + *(v14 + 48), &unk_93FD30);
      goto LABEL_21;
    case 40:
      sub_61BB0(v3);
      return 0x746E657645707061;
    case 41:
      sub_61BB0(v3);
      goto LABEL_46;
    case 42:
      sub_61BB0(v3);
      return 0x657449726566666FLL;
    case 43:

      v7 = *(sub_BD88(&unk_955C40) + 48);
      v8 = sub_757640();
LABEL_29:
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
      return 0xD000000000000011;
    case 44:
      return result;
    case 45:
      return 0x75506E6564646968;
    case 46:
      return 0x6F53676E696D6F63;
    case 47:
LABEL_7:
      result = 0xD000000000000016;
      break;
    case 48:
LABEL_46:
      result = 0xD000000000000015;
      break;
    case 49:
LABEL_21:
      result = 0xD000000000000014;
      break;
    case 50:
      result = 0xD000000000000013;
      break;
    case 51:
      result = 0xD00000000000001BLL;
      break;
    case 52:
      result = 0x676E697373696DLL;
      break;
    default:
      sub_BD88(&qword_955D70);

      v6 = sub_7570A0();
      (*(*(v6 - 8) + 8))(v3, v6);
      result = 0x746375646F7270;
      break;
  }

  return result;
}

uint64_t sub_D0BF0()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B4C(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() - 7;
  result = 0;
  switch(v4)
  {
    case 0:
      sub_BD88(&unk_955D40);

      goto LABEL_9;
    case 3:

      v9 = *(sub_BD88(&qword_955C60) + 64);
      v10 = sub_75C190();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      goto LABEL_10;
    case 4:
    case 5:
    case 12:
    case 25:
    case 26:
    case 33:
    case 34:
    case 35:
      sub_61BB0(v3);
      return 0;
    case 14:

      v6 = &v3[*(sub_BD88(&qword_955C90) + 48)];
      goto LABEL_6;
    case 18:
      v7 = *(sub_BD88(&unk_955C70) + 48);
      v8 = sub_764CF0();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
LABEL_9:
      v11 = sub_7570A0();
      (*(*(v11 - 8) + 8))(v3, v11);
LABEL_10:
      result = 0;
      break;
    case 21:
      v6 = v3;
LABEL_6:
      sub_10A2C(v6, &unk_93FD30);
      result = 0;
      break;
    case 24:
      return result;
    default:
      sub_61BB0(v3);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_D0EBC(uint64_t a1)
{
  v49 = a1;
  v1 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_765610();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v8 - 8);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  sub_BD88(&qword_940A70);
  v19 = *(sub_765540() - 8);
  v54 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v46 = v21;
  *(v21 + 16) = xmmword_780120;
  v57 = v21 + v20;
  v59 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v58 = 0x4030000000000000;
  v59 = 0x4020000000000000;
  sub_7655B0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
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
  sub_7655D0();
  v59 = 0;
  sub_7655D0();
  v56 = v18;
  v29 = v3;
  v41 = v15;
  sub_765500();
  v59 = 0x3FF0000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4024000000000000;
  sub_7655B0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v51(v7, v50, v4);
  LOBYTE(v59) = 0;
  sub_7655D0();
  v59 = 0;
  sub_7655D0();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v45 = left;
  v39 = v12;
  sub_765500();
  v58 = 0x4000000000000000;
  v59 = 0x3FF8000000000000;
  sub_7655B0();
  v48.i32[0] = v49 < 2;
  LOBYTE(v59) = v49 < 2;
  sub_7655D0();
  v59 = 0x4034000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  v43 = vdupq_n_s64(0x4041000000000000uLL);
  *v7 = v43;
  v40 = v7;
  v32 = v50;
  v33 = v51;
  v51(v7, v50, v52);
  v59 = 0;
  sub_7655D0();
  v47 = v29;
  sub_765500();
  v42 = 2 * v31 + v54;
  v59 = 0x4000000000000000;
  sub_7655D0();
  LOBYTE(v59) = v48.i8[0];
  sub_7655D0();
  v59 = 0x4034000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  v34 = v40;
  *v40 = v43;
  v33(v34, v32, v52);
  sub_7697A0();
  v59 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 4 * v54;
  v58 = 0x4000000000000000;
  v59 = 0x4004000000000000;
  sub_7655B0();
  LODWORD(v49) = v49 < 3;
  LOBYTE(v59) = v49;
  LOBYTE(v58) = v48.i8[0];
  sub_7655B0();
  v59 = 0x4038000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  v48 = vdupq_n_s64(0x404A000000000000uLL);
  *v34 = v48;
  v36 = v50;
  v37 = v51;
  v51(v34, v50, v52);
  v59 = 0;
  sub_7655D0();
  sub_765500();
  v54 += v35;
  v59 = 0x4008000000000000;
  sub_7655D0();
  LOBYTE(v59) = v49;
  sub_7655D0();
  v59 = 0x4038000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  *v34 = v48;
  v37(v34, v36, v52);
  v59 = 0;
  sub_7655D0();
  sub_765500();
  return v46;
}

uint64_t sub_D190C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D1954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_D19CC()
{
  result = qword_9411B8;
  if (!qword_9411B8)
  {
    type metadata accessor for TitledButtonStackCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9411B8);
  }

  return result;
}

uint64_t sub_D1A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764AD0();
  *a1 = result;
  return result;
}

double sub_D1A54()
{
  v0 = sub_BD88(&qword_943FD0);
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v35 = &v27 - v1;
  v2 = sub_7656C0();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FA00();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&qword_946810);
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_BD88(&unk_94F1F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_BD88(&unk_959540);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  sub_75C7E0();
  sub_768760();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v12 + 8))(v14, v11);

  sub_75C800();
  v19 = v27;
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v31 + 8))(v4, v32);
  v20 = sub_527DE4();
  sub_134D8(v40, v38);
  sub_BD88(&unk_944DA0);
  sub_75D060();
  swift_dynamicCast();
  v21 = v29;
  v22 = v30;
  (*(v29 + 16))(v28, v10, v30);
  sub_768FA0();
  v23 = v35;
  sub_769060();
  sub_1F610C(v39, v20);
  v25 = v24;
  swift_unknownObjectRelease();
  (*(v36 + 8))(v23, v37);
  (*(v33 + 8))(v19, v34);
  (*(v21 + 8))(v10, v22);
  sub_BEB8(v40);

  return v25;
}

uint64_t sub_D1FF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764AD0();
  *a1 = result;
  return result;
}

uint64_t sub_D2028@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_760280();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v3, v5);
  sub_D26D4(&qword_943AF8, &type metadata accessor for FlowPresentationContext);
  sub_769430();
  sub_769430();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    (*(v4 + 8))(v7, v3);

    return sub_CF604(a1);
  }

  v8 = sub_76A950();
  (*(v4 + 8))(v7, v3);

  if (v8)
  {
    return sub_CF604(a1);
  }

  return (*(v4 + 16))(a1, v1, v3);
}

uint64_t sub_D2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_760280();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_75F340();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_D2348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_760280();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_75F340();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for FlowPresentationHints()
{
  result = qword_944030;
  if (!qword_944030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D2490()
{
  result = sub_760280();
  if (v1 <= 0x3F)
  {
    result = sub_75F340();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_D2518()
{
  sub_760280();
  sub_D26D4(&qword_943AF8, &type metadata accessor for FlowPresentationContext);
  sub_769430();
  sub_769430();
  if (v6 == v4 && v7 == v5)
  {
  }

  else
  {
    v1 = sub_76A950();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  type metadata accessor for FlowPresentationHints();
  sub_75F340();
  sub_D26D4(&qword_944068, &type metadata accessor for FlowAnimationBehavior);
  sub_769430();
  sub_769430();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_76A950();
  }

  return v2 & 1;
}

uint64_t sub_D26D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = xmmword_7839F0;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v5 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 + 1;
  v9 = 16 * v5 + 40;
  while (1)
  {
    if (v5 == 3)
    {
      sub_BD88(&qword_941BA0);
      swift_arrayDestroy();
      sub_BD88(&unk_947FF0);
      sub_5FBA8();
      v16 = sub_7691A0();

      return v16;
    }

    if (v8 == ++v5)
    {
      break;
    }

    v10 = v9 + 16;
    v11 = *&v17[v9];
    v9 += 16;
    if (v11)
    {
      v12 = *&v17[v10 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_7B5CC(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_7B5CC((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}