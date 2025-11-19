uint64_t sub_100192C8C()
{
  v9 = v0;

  StateValue.ifUpdated(_:)();

  v8 = v0;

  StateValue.ifUpdated(_:)();

  v7 = v0;

  StateValue.ifUpdated(_:)();

  v1 = *(**(v0 + qword_1004AD970) + 200);

  v3 = v1(v2);

  v6 = v0;
  (*(*v3 + 296))(sub_1001934C4, v5);

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

id sub_100192E8C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = qword_1004AD970;
  sub_10000F974(&qword_1004A8DE8);
  swift_getKeyPath();
  type metadata accessor for EditViewSpatial();
  *&v4[v11] = MutableStateBinding.__allocating_init(_:_:)();
  v12 = qword_1004AD978;
  v13 = sub_10000F974(&qword_1004A2C80);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1004D5058;
  v16 = *(v13 + 272);
  swift_retain_n();
  *&v5[v12] = v16(KeyPath, v15);
  v17 = qword_1004AD980;
  v18 = sub_10000F974(&qword_1004A3F50);
  v19 = swift_getKeyPath();
  *&v5[v17] = (*(v18 + 272))(v19, v15);
  v20 = qword_1004AD988;
  v21 = sub_10000F974(&qword_1004A8DF0);
  v22 = swift_getKeyPath();
  *&v5[v20] = (*(v21 + 272))(v22, v15);
  v23 = qword_1004AD990;
  sub_10000F974(&unk_1004AFBD0);
  swift_allocObject();
  *&v5[v23] = PassthroughSubject.init()();
  v25.receiver = v5;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1001930E0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = qword_1004AD970;
  sub_10000F974(&qword_1004A8DE8);
  swift_getKeyPath();
  type metadata accessor for EditViewSpatial();
  *&v1[v5] = MutableStateBinding.__allocating_init(_:_:)();
  v6 = qword_1004AD978;
  v7 = sub_10000F974(&qword_1004A2C80);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v7 + 272);
  swift_retain_n();
  *&v2[v6] = v10(KeyPath, v9);
  v11 = qword_1004AD980;
  v12 = sub_10000F974(&qword_1004A3F50);
  v13 = swift_getKeyPath();
  *&v2[v11] = (*(v12 + 272))(v13, v9);
  v14 = qword_1004AD988;
  v15 = sub_10000F974(&qword_1004A8DF0);
  v16 = swift_getKeyPath();
  *&v2[v14] = (*(v15 + 272))(v16, v9);
  v17 = qword_1004AD990;
  sub_10000F974(&unk_1004AFBD0);
  swift_allocObject();
  *&v2[v17] = PassthroughSubject.init()();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);

  if (v18)
  {
  }

  return v18;
}

uint64_t sub_100193334()
{
}

uint64_t sub_1001933A4()
{
}

uint64_t type metadata accessor for EditViewCompactSpatial()
{
  result = qword_1004AD9C0;
  if (!qword_1004AD9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100193510()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100193550()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100193588()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001935CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001935F8()
{
  sub_10000F974(&qword_1004ABAE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = NSFontAttributeName;
  v1 = objc_opt_self();
  v2 = NSFontAttributeName;
  [v1 systemFontSize];
  *(inited + 40) = [v1 systemFontOfSize:? weight:?];
  v3 = sub_10019B204(inited, &qword_1004AE090);
  swift_setDeallocating();
  sub_100018F04(inited + 32, &unk_1004ABAF0);
  sub_100193DF0(v3, &qword_1004A7290);

  v4 = objc_allocWithZone(NSAttributedString);
  v5 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10019C21C(&qword_1004A72A0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithString:v5 attributes:isa];

  return v7;
}

void sub_1001937D8(void *a1)
{
  v3 = [a1 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"closePlatter"];
  [v3 setRightBarButtonItem:v4];

  v5 = [a1 navigationItem];
  v6 = *(v1 + qword_1004ADDB8);
  if (v6)
  {
    v7 = v5;
    [v5 setTitleView:*(*(*(v6 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_title)];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001938F0(char a1)
{
  v3 = qword_1004ADE30;
  v4 = *(**(v1 + qword_1004ADE30) + 144);

  v4(v17, v5);

  v6 = *(v1 + qword_1004ADDB0);
  v7 = *(v1 + qword_1004ADDB0 + 8);
  v8 = sub_10009F2F8(v6, v7, v17[0]);

  if ((v8 & 1) == 0)
  {
    v9 = *(**(v1 + v3) + 400);

    v10 = v9(v17);
    sub_100199990(&v18, v6, v7);

    v10(v17, 0);
  }

  if (a1)
  {
    Strong = 0;
  }

  else
  {
    v12 = *(**(v1 + qword_1004ADE38) + 144);

    v12(v17, v13);

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10018F78C(v17);
  }

  v14 = *(**(v1 + qword_1004ADE38) + 400);

  v15 = v14(v17);
  swift_unknownObjectWeakAssign();

  v15(v17, 0);
}

uint64_t sub_100193B14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000F974(&qword_1004AE098);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;

    sub_10000F974(&qword_1004AE0A0);
    swift_dynamicCast();
    sub_1000C0FAC((v25 + 8), v23);
    sub_1000C0FAC(v23, v25);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v6[v16 >> 6]) == 0)
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
        v21 = v6[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v6[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_1000C0FAC(v25, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100193DF0(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 16))
  {
    sub_10000F974(&unk_1004A72B0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(a1 + 48) + v12);
    v28 = *(*(a1 + 56) + v12);
    v14 = v28;
    sub_100018630(0, a2);
    v15 = v13;
    v16 = v14;
    swift_dynamicCast();
    sub_1000C0FAC((v29 + 8), v27);
    sub_1000C0FAC(v27, v29);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v7[v19 >> 6]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = v7[v20];
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~v7[v19 >> 6])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    *(v2[6] + 8 * v10) = v15;
    result = sub_1000C0FAC(v29, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1001940A0(char a1)
{
  v2 = qword_1004ADDB8;
  v3 = *&v1[qword_1004ADDB8];
  if (!v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = v1;
  [v1 addSubview:*(v3 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView)];
  v6 = *&v1[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(*(*(v6 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_title);
  v8 = &v1[qword_1004ADDC0];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = Strong;
  v11 = *(v8 + 1);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 64);
  v14 = v7;
  v13(ObjectType, v11);

  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  v16 = *&v4[v2];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [*(*(v16 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_copyButton) addTarget:v4 action:"copyToPasteboard" forControlEvents:64];
  if (a1)
  {
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v4 action:"beginEditingTitleWithSender:"];
    v18 = *&v4[v2];
    if (v18)
    {
      v19 = v17;
      [*(*(v18 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) addGestureRecognizer:v17];
      swift_unknownObjectWeakAssign();

      goto LABEL_8;
    }

LABEL_22:
    __break(1u);
    return;
  }

LABEL_8:
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    [v20 setDataSource:v4];
    [v21 setDelegate:v4];
    [v21 setRowHeight:UITableViewAutomaticDimension];
    [v21 setEstimatedRowHeight:88.0];
    [v21 setScrollEnabled:0];
    [v21 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 clearColor];
    [v23 setBackgroundColor:v24];

    type metadata accessor for DetailedPlatterCellTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = String._bridgeToObjectiveC()();
    [v23 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v26];

    if (qword_1004A0070 != -1)
    {
      swift_once();
    }

    v27 = *&qword_1004D49B0;
    [v4 bounds];
    v28 = [objc_allocWithZone(UIView) initWithFrame:{v27, 0.0, CGRectGetWidth(v31) - (v27 + v27), 0.5}];
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v28 setBackgroundColor:qword_1004D50C8];
    [v23 addSubview:v28];
  }

  sub_100018630(0, &qword_1004A1930);
  if ((static UIDevice.isIPad()() & 1) == 0)
  {
    v29 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v4 action:"closePlatter"];
    [v29 setDelegate:v4];
    [v4 addGestureRecognizer:v29];
  }
}

uint64_t sub_100194570()
{

  sub_10001B9D0(v0 + qword_1004ADDC0);
  sub_10001B9D0(v0 + qword_1004ADDC8);
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectWeakDestroy();
}

id sub_100194694()
{
  ObjectType = swift_getObjectType();
  sub_1001946DC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001946DC()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver:v1 name:UIKeyboardWillShowNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 removeObserver:v1 name:UIKeyboardWillHideNotification object:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong removeTarget:v1 action:"dismissKeyboard:"];
    [v1 removeGestureRecognizer:v6];
  }

  swift_unknownObjectWeakAssign();
  v7 = *(**&v1[qword_1004ADE18] + 400);

  v8 = v7(v19);
  *v9 = 0;
  v8(v19, 0);

  v10 = qword_1004ADDB8;
  v11 = *&v1[qword_1004ADDB8];
  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v11 + OBJC_IVAR____TtC7Measure23CardContainerController_isDraggingEnabled) = 1;
  v1[qword_1004ADE08] = 0;
  [*(*(*(v11 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView) setDelegate:0];
  v12 = *&v1[v10];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [*(*(v12 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_copyButton) removeTarget:v1 action:"copyToPasteboard" forControlEvents:64];
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = *&v1[v10];
    if (v14)
    {
      v15 = v13;
      [*(*(v14 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) removeGestureRecognizer:v13];

      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    [v16 setDelegate:0];
    [v17 setDataSource:0];
  }

  v18 = *&v1[v10];
  *&v1[v10] = 0;
}

id sub_1001949AC(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  sub_1001946DC();
  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100194A04(uint64_t a1)
{

  sub_10001B9D0(a1 + qword_1004ADDC0);
  sub_10001B9D0(a1 + qword_1004ADDC8);
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectWeakDestroy();
}

void sub_100194B5C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[qword_1004ADDB8];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_containerView];
    v3 = v1;
    v4 = [v2 superview];
    [v4 setNeedsLayout];
    [v4 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_100194C08(void *a1)
{
  v1 = a1;
  sub_100194B5C();
}

void sub_100194C50()
{
  v1 = v0;
  v95 = type metadata accessor for MeasurementHistoryItem();
  v105 = *(v95 - 8);
  __chkstk_darwin(v95);
  v89 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v93 = &v88 - v4;
  __chkstk_darwin(v5);
  v7 = &v88 - v6;
  v90 = v8;
  __chkstk_darwin(v9);
  v11 = (&v88 - v10);
  v12 = type metadata accessor for MeasurementsHistory();
  __chkstk_darwin(v12 - 8);
  v92 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v88 - v15;
  __chkstk_darwin(v16);
  v18 = (&v88 - v17);
  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  [v20 removeObserver:v1 name:UIKeyboardWillShowNotification object:0];

  v21 = [v19 defaultCenter];
  [v21 removeObserver:v1 name:UIKeyboardWillHideNotification object:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong removeTarget:v1 action:"dismissKeyboard:"];
    [v1 removeGestureRecognizer:v23];
  }

  swift_unknownObjectWeakAssign();
  v24 = *(**&v1[qword_1004ADE18] + 400);

  v25 = v24(v107);
  *v26 = 0;
  v25(v107, 0);

  v96 = qword_1004ADDB8;
  v27 = *&v1[qword_1004ADDB8];
  if (!v27)
  {
    goto LABEL_43;
  }

  *(v27 + OBJC_IVAR____TtC7Measure23CardContainerController_isDraggingEnabled) = 1;
  v1[qword_1004ADE08] = 0;
  v28 = *(v27 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView);
  v29 = *&v28[OBJC_IVAR____TtC7Measure17CardContainerView_titleView];
  v30 = *&v29[OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView];
  v99 = v28;
  v31 = v29;
  v100 = v30;
  v32 = [v100 text];
  if (v32)
  {
    v33 = v32;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)())
    {
      v35 = 0;
    }

    else
    {
      v35 = v34 == 0xE000000000000000;
    }

    if (v35)
    {
    }

    else
    {
      v36 = v11;
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_17;
      }

      v11 = v36;
    }
  }

  v38 = [v100 placeholder];
  if (v38)
  {
    v33 = v38;
    if (!static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == 0xE000000000000000)
    {

      goto LABEL_19;
    }

    v36 = v11;
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
LABEL_18:

      v11 = v36;
      goto LABEL_19;
    }

LABEL_17:
    v41 = *&v31[OBJC_IVAR____TtC7Measure13CardTitleView_title];
    [v41 setText:v33];

    goto LABEL_18;
  }

LABEL_19:
  v98 = v31;
  v91 = v7;
  [v100 setDelegate:0];
  v101 = v1;
  v97 = qword_1004ADE10;

  StateValue.wrappedValue.getter();

  v42 = *v18;

  sub_10009FD64(v18, type metadata accessor for MeasurementsHistory);
  v104 = *(v42 + 16);
  if (!v104)
  {
LABEL_28:

    v52 = v101;
LABEL_38:
    v84 = objc_opt_self();
    v85 = swift_allocObject();
    *(v85 + 16) = v52;
    v107[4] = sub_10019B8BC;
    v107[5] = v85;
    v107[0] = _NSConcreteStackBlock;
    v107[1] = 1107296256;
    v107[2] = sub_100041180;
    v107[3] = &unk_100471860;
    v86 = _Block_copy(v107);
    v87 = v52;

    [v84 animateWithDuration:458754 delay:v86 options:0 animations:0.25 completion:0.0];
    _Block_release(v86);

    return;
  }

  v43 = 0;
  v44 = &v101[qword_1004ADDB0];
  while (1)
  {
    if (v43 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v45 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v46 = v42;
    v47 = *(v105 + 72) * v43;
    v102 = *(v105 + 80);
    v103 = v47;
    sub_100023338(v42 + v45 + v47, v11);
    v48 = *v11;
    v49 = *(v44 + 1);
    if (*v11 == *v44 && v11[1] == v49)
    {
      break;
    }

    v48 = *v44;
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10009FD64(v11, type metadata accessor for MeasurementHistoryItem);
    if (v51)
    {
      goto LABEL_30;
    }

    ++v43;
    v42 = v46;
    if (v104 == v43)
    {
      goto LABEL_28;
    }
  }

  sub_10009FD64(v11, type metadata accessor for MeasurementHistoryItem);
LABEL_30:
  v105 = v48;
  v88 = v49;

  v53 = *&v101[v96];
  if (!v53)
  {
    goto LABEL_44;
  }

  v54 = *(*(*(v53 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_title);

  v55 = [v54 text];
  v56 = v95;
  v57 = v45;
  if (v55)
  {
    v58 = v55;
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v59;

    v60 = v93;
    v61 = v94;
    v62 = v103;
  }

  else
  {

    v61 = v94;
    StateValue.wrappedValue.getter();

    v63 = *v61;

    sub_10009FD64(v61, type metadata accessor for MeasurementsHistory);
    v62 = v103;
    if (v43 >= *(v63 + 16))
    {
      goto LABEL_42;
    }

    v64 = v63 + v45 + v103;
    v65 = v93;
    sub_100023338(v64, v93);

    v66 = *(v65 + 24);
    v104 = *(v65 + 16);
    v96 = v66;

    v60 = v65;
    sub_10009FD64(v65, type metadata accessor for MeasurementHistoryItem);
  }

  StateValue.wrappedValue.getter();

  v67 = *v61;

  sub_10009FD64(v61, type metadata accessor for MeasurementsHistory);
  if (v43 >= *(v67 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v68 = v60;
  sub_100023338(v67 + v57 + v62, v60);

  v69 = *(v56 + 24);
  v70 = v60 + v69;
  v71 = v56;
  v72 = v91;
  sub_10006C92C(v70, v91 + v69, &unk_1004ABAD0);
  sub_10009FD64(v68, type metadata accessor for MeasurementHistoryItem);

  v73 = v92;
  StateValue.wrappedValue.getter();

  v74 = *v73;

  sub_10009FD64(v73, type metadata accessor for MeasurementsHistory);
  if (v43 < *(v74 + 16))
  {
    v75 = v68;
    v76 = v102;
    v103 = ~v102;
    v77 = v74 + v57 + v62;
    v78 = v89;
    sub_100023338(v77, v89);

    memcpy(v107, (v78 + *(v71 + 28)), 0x346uLL);
    sub_10019B4E8(v107, &v106);
    sub_10009FD64(v78, type metadata accessor for MeasurementHistoryItem);
    v79 = v88;
    *v72 = v105;
    v72[1] = v79;
    v80 = v96;
    v72[2] = v104;
    v72[3] = v80;
    memcpy(v72 + *(v71 + 28), v107, 0x346uLL);
    *(v72 + *(v71 + 32)) = 1;
    v81 = v101;
    sub_100023338(v72, v75);
    v82 = (v76 + 24) & v103;
    v83 = swift_allocObject();
    *(v83 + 16) = v43;
    sub_10008C998(v75, v83 + v82);

    StateValue.mutateImmediatelyNotifyAsync(_:)();

    sub_10009FD64(v72, type metadata accessor for MeasurementHistoryItem);
    v52 = v81;
    goto LABEL_38;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1001956E4(char *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_10006B7A4(v6);
  v6 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6[2] <= a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = type metadata accessor for MeasurementHistoryItem();
  v11 = *(v8 - 8);
  sub_1000A4EEC(a3, v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a2);
  *a1 = v6;
  v9 = *(type metadata accessor for MeasurementsHistory() + 24);
  sub_100018F04(&a1[v9], &qword_1004A28C0);
  sub_100023338(a3, &a1[v9]);
  v10 = *(v11 + 56);

  return v10(&a1[v9], 0, 1, v8);
}

void sub_100195830(void *a1)
{
  v2 = v1;
  if ([a1 state] == 3)
  {
    v3 = qword_1004ADE18;
    v4 = *(**&v1[qword_1004ADE18] + 144);

    v4(aBlock, v5);

    if ((aBlock[0] & 0x10000) == 0)
    {
      v6 = objc_opt_self();
      v7 = [v6 defaultCenter];
      [v7 addObserver:v2 selector:"keyboardWillShowWithNotification:" name:UIKeyboardWillShowNotification object:0];

      v8 = [v6 defaultCenter];
      [v8 addObserver:v2 selector:"keyboardWillHideWithNotification:" name:UIKeyboardWillHideNotification object:0];

      v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"dismissKeyboard:"];
      [v2 addGestureRecognizer:v9];
      swift_unknownObjectWeakAssign();
      v10 = qword_1004ADDB8;
      v11 = *&v2[qword_1004ADDB8];
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView);
        v13 = *&v12[OBJC_IVAR____TtC7Measure17CardContainerView_titleView];
        v14 = *&v13[OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView];
        v26 = v12;
        v15 = v13;
        v16 = v14;
        [v16 setDelegate:v2];
        [v16 setUserInteractionEnabled:1];
        v17 = [*&v15[OBJC_IVAR____TtC7Measure13CardTitleView_title] text];
        [v16 setText:v17];

        [v16 becomeFirstResponder];
        v18 = *(**&v2[v3] + 400);

        v19 = v18(aBlock);
        *v20 = 1;
        v19(aBlock, 0);

        v21 = *&v2[v10];
        if (v21)
        {
          *(v21 + OBJC_IVAR____TtC7Measure23CardContainerController_isDraggingEnabled) = 0;
          v2[qword_1004ADE08] = 1;
          v22 = objc_opt_self();
          v23 = swift_allocObject();
          *(v23 + 16) = v2;
          aBlock[4] = sub_10019C1E4;
          aBlock[5] = v23;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100041180;
          aBlock[3] = &unk_1004719F0;
          v24 = _Block_copy(aBlock);
          v25 = v2;

          [v22 animateWithDuration:458754 delay:v24 options:0 animations:0.25 completion:0.0];
          _Block_release(v24);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

char *sub_100195C08(char *result)
{
  v1 = *&result[qword_1004ADDB8];
  if (v1)
  {
    return [*(*(*(v1 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView) setAlpha:?];
  }

  __break(1u);
  return result;
}

void sub_100195C58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100195830(v4);
}

void sub_100195CC0(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v6;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v7 = sub_10019863C(v28), (v8 & 1) == 0))
  {

    sub_10017AF68(v28);
    return;
  }

  sub_10000FE60(*(v5 + 56) + 32 * v7, v31);
  sub_10017AF68(v28);
  sub_100018630(0, &qword_1004AE148);
  if ((swift_dynamicCast() & 1) == 0 || (v9 = v29, [v29 CGRectValue], v11 = v10, v9, v12 = sub_10019BCB0(v5), v14 = v13, v2[qword_1004ADDD0] = 0, sub_100018630(0, &qword_1004A1930), (static UIDevice.isIPad()() & 1) == 0))
  {

    return;
  }

  v15 = *&v2[qword_1004ADDF0];
  if (!v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v15 setConstant:-(v11 + 20.0)];
  v16 = *&v2[qword_1004ADDB8];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;

  v18 = OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint;
  v19 = *&v17[OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint];
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v19 setActive:0];
  v21 = *&v17[v18];
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LODWORD(v20) = 1148846080;
  [v21 setPriority:v20];
  v22 = *&v17[v18];
  if (!v22)
  {
LABEL_24:
    __break(1u);
    return;
  }

  [v22 setActive:1];

  if (v12 <= 0.0)
  {
    v23 = 458754;
  }

  else
  {
    v23 = v14;
  }

  if (v12 <= 0.0)
  {
    v12 = 0.25;
  }

  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  v28[4] = sub_10019C340;
  v28[5] = v25;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  v28[2] = sub_100041180;
  v28[3] = &unk_1004719A0;
  v26 = _Block_copy(v28);
  v27 = v2;

  [v24 animateWithDuration:v23 delay:v26 options:0 animations:v12 completion:0.0];
  _Block_release(v26);
}

void sub_100195FE4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100195CC0(v4);
}

void sub_10019604C(void *a1)
{
  if (v1[qword_1004ADDD0])
  {
    v1[qword_1004ADDD0] = 0;
    return;
  }

  if (v1[qword_1004ADE08] == 1)
  {
    v2 = [a1 userInfo];
    if (v2)
    {
      v3 = v2;
      v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100018630(0, &qword_1004A1930);
      if (static UIDevice.isIPad()())
      {
        v5 = qword_1004ADDF0;
        v6 = *&v1[qword_1004ADDF0];
        if (v6)
        {
          v7 = v1;
          [v6 constant];
          v9 = *&v1[v5];
          if (v9)
          {
            v10 = v8;
            [v9 setConstant:-20.0];
            [v1 setNeedsLayout];
            [v1 layoutIfNeeded];
            v11 = *&v1[qword_1004ADDB8];
            if (v11)
            {
              v12 = OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint;
              v13 = *&v11[OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint];
              if (v13)
              {
                v14 = v11;
                [v13 setActive:0];
                v15 = *&v11[v12];
                if (v15)
                {
                  [v15 setActive:1];

                  v16 = *&v7[v5];
                  if (v16)
                  {
                    [v16 setConstant:v10];
                    [v7 setNeedsLayout];
                    [v7 layoutIfNeeded];
                    v17 = *&v7[v5];
                    if (v17)
                    {
                      [v17 setConstant:-20.0];
                      v18 = sub_10019BCB0(v4);
                      v20 = v19;

                      if (v18 <= 0.0)
                      {
                        v20 = 458754;
                        v18 = 0.25;
                      }

                      v21 = objc_opt_self();
                      v22 = swift_allocObject();
                      *(v22 + 16) = v7;
                      v25[4] = sub_10019C178;
                      v25[5] = v22;
                      v25[0] = _NSConcreteStackBlock;
                      v25[1] = 1107296256;
                      v25[2] = sub_100041180;
                      v25[3] = &unk_100471950;
                      v23 = _Block_copy(v25);
                      v24 = v7;

                      [v21 animateWithDuration:v20 delay:v23 options:0 animations:v18 completion:0.0];
                      _Block_release(v23);
                      return;
                    }

LABEL_26:
                    __break(1u);
                    return;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_22;
      }
    }
  }
}

void sub_100196370(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10019604C(v4);
}

char *sub_1001963D8(char *result)
{
  v1 = *&result[qword_1004ADDB8];
  if (v1)
  {
    return [*(*(*(v1 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView) resignFirstResponder];
  }

  __break(1u);
  return result;
}

void sub_100196428(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10019BE74();
}

uint64_t sub_100196488()
{
  v1 = v0;
  v2 = type metadata accessor for MeasurementsHistory();
  __chkstk_darwin(v2 - 8);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000F974(&qword_1004A28C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for MeasurementHistoryItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v37 - v13;

  StateValue.wrappedValue.getter();

  v15 = *v4;

  sub_10009FD64(v4, type metadata accessor for MeasurementsHistory);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v1 + qword_1004ADDB0);
    while (v17 < *(v15 + 16))
    {
      sub_100023338(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v11);
      v19 = *v11 == *v18 && v11[1] == v18[1];
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_10008C998(v11, v7);
        v20 = 0;
        goto LABEL_12;
      }

      ++v17;
      sub_10009FD64(v11, type metadata accessor for MeasurementHistoryItem);
      if (v16 == v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_21:
    v35 = qword_1004D4F08;

    sub_10009FD64(v14, type metadata accessor for MeasurementHistoryItem);
    v36 = v35 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    result = swift_beginAccess();
    *(v36 + 56) = *(v36 + 56) + 1.0;
    return result;
  }

LABEL_10:

  v20 = 1;
LABEL_12:
  (*(v9 + 56))(v7, v20, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100018F04(v7, &qword_1004A28C0);
  }

  sub_10008C998(v7, v14);
  v22 = v1 + qword_1004ADDC0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v24 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    v26 = (*(v24 + 56))(v14, ObjectType, v24);

    if (v26)
    {
      v27 = [objc_opt_self() generalPasteboard];
      v7 = v26;
      v28 = sub_1000C9270(v7);
      if (v28)
      {
        v29 = v28;
        sub_10000F974(&unk_1004A3E40);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1003D5360;
        *(v30 + 32) = v29;
        sub_10000F974(&unk_1004ABAC0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v27 setItems:isa];
      }

      v32 = v1 + qword_1004ADDC8;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = *(v32 + 8);
        v34 = swift_getObjectType();
        (*(v33 + 32))(v34, v33);
        swift_unknownObjectRelease();
      }

      if (qword_1004A0350 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    return sub_10009FD64(v14, type metadata accessor for MeasurementHistoryItem);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100196968(void *a1)
{
  v1 = a1;
  sub_100196488();
}

void sub_1001969B0(char *a1)
{
  v2 = &a1[qword_1004ADDC8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v6 = a1;
    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

void sub_100196A68()
{
  v1 = v0;

  StateValue.wrappedValue.getter();

  if (BYTE3(v12[0]) == 1)
  {
    v2 = *&v0[qword_1004ADDB8];
    if (!v2)
    {
      __break(1u);
      return;
    }

    [*(*(*(v2 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView) resignFirstResponder];
  }

  StateValue.wrappedValue.getter();

  if (BYTE3(v12[0]))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [v0 alpha];
  if (v4 != v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v3;
    v6 = objc_allocWithZone(UIViewPropertyAnimator);
    v12[4] = sub_10019B978;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100041180;
    v12[3] = &unk_1004718B0;
    v7 = _Block_copy(v12);
    v8 = v1;

    v9 = [v6 initWithDuration:v7 dampingRatio:0.5 animations:0.6];
    _Block_release(v7);
    [v9 setInterruptible:0];
    [v9 startAnimation];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];

      v9 = v11;
    }
  }
}

void sub_100196CA4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    StateValue.wrappedValue.getter();

    if (v3 == 2 || (, StateValue.wrappedValue.getter(), , v2 == 1))
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_100196D60()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

void sub_100196E00()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v43 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MeasurementsHistory();
  __chkstk_darwin(v5 - 8);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000F974(&qword_1004A28C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for MeasurementHistoryItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = v0 + qword_1004ADDC0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v42 = *(v18 + 8);
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v40 = v17;
      v41 = v2;

      StateValue.wrappedValue.getter();

      v20 = *v7;

      sub_10009FD64(v7, type metadata accessor for MeasurementsHistory);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = 0;
        v23 = (v1 + qword_1004ADDB0);
        while (v22 < *(v20 + 16))
        {
          sub_100023338(v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v14);
          v24 = *v14 == *v23 && v14[1] == v23[1];
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_10008C998(v14, v10);
            v25 = 0;
            goto LABEL_17;
          }

          ++v22;
          sub_10009FD64(v14, type metadata accessor for MeasurementHistoryItem);
          if (v21 == v22)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

LABEL_12:

      v25 = 1;
LABEL_17:
      (*(v12 + 56))(v10, v25, 1, v11);
      v27 = (*(v12 + 48))(v10, 1, v11);
      v29 = v40;
      v28 = v41;
      if (v27 == 1)
      {

        sub_100018F04(v10, &qword_1004A28C0);
        return;
      }

      sub_10008C998(v10, v40);
      ObjectType = swift_getObjectType();
      v31 = v42;
      (*(v42 + 96))(v29, ObjectType, v42);
      v32 = (*(v31 + 16))(ObjectType, v31);
      if (v32 < 0)
      {
        goto LABEL_31;
      }

      v33 = v32;
      if (v32)
      {
        v34 = 0;
        v35 = (v43 + 8);
        while (1)
        {
          IndexPath.init(row:section:)();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v37 = [v45 cellForRowAtIndexPath:isa];

          if (!v37)
          {
            v39 = v44;
            v37 = v45;
            goto LABEL_28;
          }

          type metadata accessor for DetailedPlatterCellTableViewCell();
          v38 = swift_dynamicCastClass();
          if (!v38)
          {
            break;
          }

          ++v34;
          sub_100197364(v38, v4, v29);

          (*v35)(v4, v28);
          if (v33 == v34)
          {
            goto LABEL_25;
          }
        }

        v39 = v45;
LABEL_28:

        (*v35)(v4, v28);
        sub_10009FD64(v29, type metadata accessor for MeasurementHistoryItem);
      }

      else
      {
LABEL_25:
        sub_10009FD64(v29, type metadata accessor for MeasurementHistoryItem);
      }
    }

    else
    {
      v26 = v44;
    }
  }
}

uint64_t sub_100197364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + qword_1004ADDC0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v35, a2, a3, ObjectType, v10);

    v12 = *(a1 + OBJC_IVAR____TtC7Measure32DetailedPlatterCellTableViewCell_measureContent);
    v13 = *(v12 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
    v14 = String._bridgeToObjectiveC()();
    [v13 setText:v14];

    v15 = *(v12 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
    v16 = v35[2];
    v17 = v35[3];
    v18 = String._bridgeToObjectiveC()();
    [v15 setText:v18];

    v19 = *(v12 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
    if (v16 == v35[6] && v17 == v35[7])
    {
      v20 = 1;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v21 = v35[5];
    v22 = v35[13];
    v23 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
    v24 = *&v19[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
    v25 = v19;
    [v24 setHidden:v20 & 1];
    if ((v20 & 1) == 0)
    {
      v26 = *(*&v19[v23] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v27 = String._bridgeToObjectiveC()();
      [v26 setText:v27];

      v28 = *&v19[v23];
      if (v21)
      {
        v29 = String._bridgeToObjectiveC()();
      }

      else
      {
        v29 = 0;
      }

      [v28 setAccessibilityLabel:v29];
    }

    v30 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
    v31 = *(*&v25[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
    v32 = String._bridgeToObjectiveC()();
    [v31 setText:v32];

    v33 = *&v25[v30];
    if (v22)
    {
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = 0;
    }

    [v33 setAccessibilityLabel:v34];

    return sub_100080320(v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10019762C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v14.receiver = v4;
  v14.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v14, "hitTest:withEvent:", a1, a2, a3);
  if (result)
  {
    v9 = result;
    v10 = *(**&v4[qword_1004ADE18] + 144);

    v10(v13, v11);

    if (v13[0])
    {
      return v9;
    }

    sub_100018630(0, &qword_1004A1930);
    if (static UIDevice.isIPhone()())
    {
      return v9;
    }

    else
    {
      result = v9;
      if (v9 == v4)
      {
        goto LABEL_9;
      }

      v12 = *&v4[qword_1004ADDB8];
      if (!v12)
      {
        __break(1u);
        return result;
      }

      if (v9 == *(v12 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView))
      {
LABEL_9:

        return 0;
      }
    }
  }

  return result;
}

char *sub_100197768(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = sub_10019762C(a5, a2, a3);

  return v11;
}

uint64_t type metadata accessor for SpatialGenericPlatter()
{
  result = qword_1004ADE80;
  if (!qword_1004ADE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100197908(void *a1, id a2)
{
  v5 = [a2 view];
  v6 = [a1 view];
  if (!v5)
  {
    if (!v6)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    v6 = v5;
LABEL_8:

    goto LABEL_9;
  }

  v7 = v6;

  if (v5 == v7)
  {
    return 1;
  }

LABEL_9:
  result = [a2 view];
  v9 = *(v2 + qword_1004ADDB8);
  if (v9)
  {
    if (result)
    {
      v10 = *(v9 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView);
      v11 = result;

      return v11 == v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100197AEC(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = type metadata accessor for MeasurementsHistory();
  __chkstk_darwin(v5 - 8);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000F974(&qword_1004A28C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for MeasurementHistoryItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = &v2[qword_1004ADDC0];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = *(v18 + 1);
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);

    if (IndexPath.row.getter() < v23)
    {
      v47 = v17;
      v48 = a2;

      StateValue.wrappedValue.getter();

      v24 = *v7;

      sub_10009FD64(v7, type metadata accessor for MeasurementsHistory);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = 0;
        v27 = &v3[qword_1004ADDB0];
        while (v26 < *(v24 + 16))
        {
          sub_100023338(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v12[9] * v26, v14);
          v28 = *v14 == *v27 && v14[1] == *(v27 + 1);
          if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_10008C998(v14, v10);
            v29 = 0;
            goto LABEL_14;
          }

          ++v26;
          sub_10009FD64(v14, type metadata accessor for MeasurementHistoryItem);
          if (v25 == v26)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

LABEL_12:

      v29 = 1;
LABEL_14:
      (v12[7])(v10, v29, 1, v11);
      v30 = (v12[6])(v10, 1, v11);
      v31 = v48;
      if (v30 != 1)
      {
        v32 = v47;
        sub_10008C998(v10, v47);
        v33 = String._bridgeToObjectiveC()();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v12 = [v49 dequeueReusableCellWithIdentifier:v33 forIndexPath:isa];

        type metadata accessor for DetailedPlatterCellTableViewCell();
        v10 = swift_dynamicCastClassUnconditional();
        sub_100197364(v10, v31, v32);
        if (IndexPath.row.getter() == v23 - 1)
        {
          v35 = v12;
          [v3 bounds];
          [v10 setSeparatorInset:{0.0, CGRectGetWidth(v53), 0.0, 0.0}];
LABEL_21:

          v38 = objc_opt_self();
          v39 = v12;
          v40 = [v38 clearColor];
          [v10 setBackgroundColor:v40];

          v41 = v39;
          [v10 setSelectionStyle:0];
          swift_getObjectType();
          v42 = v41;
          v51 = _typeName(_:qualified:)();
          v52 = v43;
          v44._countAndFlagsBits = 45;
          v44._object = 0xE100000000000000;
          String.append(_:)(v44);
          v50 = IndexPath.row.getter();
          v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v45);

          v46 = String._bridgeToObjectiveC()();

          [v10 setAccessibilityIdentifier:v46];

          sub_10009FD64(v47, type metadata accessor for MeasurementHistoryItem);
          return v10;
        }

        v36 = qword_1004A0068;
        v37 = v12;
        if (v36 == -1)
        {
LABEL_20:
          [v10 setSeparatorInset:{xmmword_1004D4990, *&qword_1004D49A0, *&qword_1004D49A8}];
          goto LABEL_21;
        }

LABEL_23:
        swift_once();
        goto LABEL_20;
      }

      sub_100018F04(v10, &qword_1004A28C0);
    }

    return [objc_allocWithZone(UITableViewCell) init];
  }

  __break(1u);
  return result;
}

unint64_t sub_100198230(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100198964(a1, a2, v4);
}

unint64_t sub_1001982AC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1001992CC(a1, v2);
}

unint64_t sub_100198340(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_100198FF4(a1, v2);
}

unint64_t sub_1001983A8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = a1 - 3;
  if ((a1 - 3) >= 7u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = a1;
  }

  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return sub_100198A1C(a1, v3);
}

unint64_t sub_100198434(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100198B34(a1 & 1, v2);
}

unint64_t sub_1001984D8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100198C78(a1, v4);
}

unint64_t sub_10019851C(double a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100198D4C(v2, a1);
}

unint64_t sub_100198568(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10019C21C(&qword_1004A7420, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100199064(a1, v2, &type metadata accessor for UUID, &unk_1004AE160, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10019863C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100198DB4(a1, v4);
}

unint64_t sub_100198680(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10019C21C(&unk_1004AE188, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100198E7C(a1, v2);
}

unint64_t sub_100198770(uint64_t a1)
{
  type metadata accessor for URL();
  sub_10019C21C(&unk_1004A73B0, &type metadata accessor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100199064(a1, v2, &type metadata accessor for URL, &unk_1004AE108, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100198844(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 184))(v4);
  v2 = Hasher._finalize()();

  return sub_100199204(a1, v2);
}

unint64_t sub_1001988D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  v4 = Hasher._finalize()();
  return sub_1001993D0(a1, a2, v4);
}

unint64_t sub_100198964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100198A1C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      v8 = *(v7 + result);
      if (v8 <= 5)
      {
        switch(v8)
        {
          case 3u:
            if (a1 == 3)
            {
              return result;
            }

            goto LABEL_4;
          case 4u:
            if (a1 == 4)
            {
              return result;
            }

            goto LABEL_4;
          case 5u:
            if (a1 == 5)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      else if (*(v7 + result) > 7u)
      {
        if (v8 == 8)
        {
          if (a1 == 8)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 9)
        {
          if (a1 == 9)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v8 == 6)
        {
          if (a1 == 6)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 7)
        {
          if (a1 == 7)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      if (a1 - 10 <= 0xFFFFFFF8 && v8 == a1)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100198B34(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6C6576656CLL;
    }

    else
    {
      v6 = 0x6572757361656DLL;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6C6576656CLL : 0x6572757361656DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100198C78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100018630(0, &qword_1004ABAB0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100198D4C(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100198DB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10019C188(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10017AF68(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100198E7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10019C21C(&unk_1004AE188, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100198F88(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100198FF4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100199064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10019C21C(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100199204(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for WorldPlane();
    do
    {

      v6 = static WorldPlane.== infix(_:_:)();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1001992CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001993D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = ~v5;
    type metadata accessor for AnyKeyPath();
    do
    {
      v9 = *(*(v7 + 48) + 16 * v6 + 8);

      v10 = v9;
      if (static AnyKeyPath.== infix(_:_:)())
      {
        sub_100018630(0, &qword_1004AE0D0);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          return v6;
        }
      }

      else
      {
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1001994F8()
{
  v1 = v0;
  v2 = *v0;
  sub_10000F974(&unk_1004A6910);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100199730()
{
  v1 = v0;
  v2 = *v0;
  sub_10000F974(&unk_1004A6910);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100199990(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100199AE0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_100199AE0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100199730();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10009F52C();
      goto LABEL_16;
    }

    sub_1001994F8();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100199C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE1B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1001982AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100199D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&unk_1004AE0B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1001982AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100199E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE0A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1001982AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100199F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE0C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1001982AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10019A06C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AE1C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000F974(&qword_1004AE1C8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10006C92C(v9, v5, &qword_1004AE1C0);
      v11 = *v5;
      result = sub_100198434(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10019A254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE0D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10006C92C(v4, &v13, &qword_1004AE0E0);
      v5 = v13;
      v6 = v14;
      result = sub_100198230(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001D95C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10019A39C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE1B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v21 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      v13 = v12;
      result = sub_100198230(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = (v3[7] + 48 * result);
      *v17 = v7;
      v17[1] = v8;
      v17[2] = v9;
      v17[3] = v10;
      v17[4] = v11;
      v17[5] = v13;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      v1 = v21 - 1;
      if (v21 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10019A4F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000F974(&qword_1004AE198);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100198340(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100198340(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019A62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE178);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10006C92C(v4, &v11, &qword_1004AE180);
      v5 = v11;
      result = sub_100198680(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000C0FAC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10019A778(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000F974(&qword_1004A73A0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_100198734(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100198734(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019A8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004A7398);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_100198734(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10019A990(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000F974(a2);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v5 = a1[4];
  v6 = a1[5];
  result = sub_100198734(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v6;
    return v4;
  }

  v9 = (a1 + 7);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    *(v4[7] + 8 * result) = v6;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = v9 + 2;
    v5 = *(v9 - 1);
    v14 = *v9;
    v15 = v6;
    result = sub_100198734(v5);
    v9 = v13;
    v6 = v14;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019AA84(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A6F48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000F974(&qword_1004AE170);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10006C92C(v9, v5, &qword_1004A6F48);
      result = sub_100198568(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10019AC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE100);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10006C92C(v4, &v13, &qword_1004A7560);
      v5 = v13;
      v6 = v14;
      result = sub_100198230(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000C0FAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10019ADC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004A7430);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100198340(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10019AEC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10000F974(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + 32;

    while (1)
    {
      sub_10006C92C(v8, &v15, a4);
      v9 = v15;
      result = sub_1001982AC(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_1000C0FAC(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10019AFDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000F974(&unk_1004AE150);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_100198340(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100198340(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019B0F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE118);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1001982AC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10019B204(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000F974(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = v6;
      result = sub_1001982AC(v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v8;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10019B2F4(uint64_t *a1)
{
  v2 = *(type metadata accessor for MeasurementHistoryItem() + 28);
  memcpy(__dst, a1 + v2, 0x346uLL);
  memcpy(v22, a1 + v2, 0x346uLL);
  v3 = sub_1000218D8(v22);
  v4 = sub_1000218E4(v22);
  if (v3)
  {
    if (v3 == 1)
    {
      memcpy(v19, v4, 0x1DEuLL);
      v5 = *a1;
      v6 = a1[1];
      v8 = a1[2];
      v7 = a1[3];
      objc_allocWithZone(type metadata accessor for RectanglePlatterSpatial());
      sub_10019B4E8(__dst, v20);

      v9 = sub_10001FE2C(v5, v6, v19, v8, v7);
    }

    else
    {
      memcpy(v20, v4, 0x346uLL);
      v14 = *a1;
      v15 = a1[1];
      v17 = a1[2];
      v16 = a1[3];
      objc_allocWithZone(type metadata accessor for ObjectPlatterSpatial());
      sub_10019B4E8(__dst, v19);

      v9 = sub_1001A26EC(v14, v15, v20, v17, v16);
    }
  }

  else
  {
    memcpy(v19, v4, 0x10DuLL);
    v10 = *a1;
    v11 = a1[1];
    v13 = a1[2];
    v12 = a1[3];
    objc_allocWithZone(type metadata accessor for LinePlatterSpatial());
    sub_10019B4E8(__dst, v20);

    v9 = sub_10007DD68(v10, v11, v19, v13, v12);
  }

  objc_allocWithZone(type metadata accessor for CardContainerView());
  return sub_100172FE8(v9, 0);
}

uint64_t sub_10019B544()
{
  v1 = type metadata accessor for MeasurementHistoryItem();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 24);
  v7 = type metadata accessor for MeasurementCapture();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = v0;
    v9 = v4;
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v11(v6, v10);
    v12 = v10;
    v4 = v9;
    v0 = v8;
    v3 = (v2 + 24) & ~v2;
    v11(v6 + *(v7 + 20), v12);
  }

  v13 = v5 + *(v1 + 28);
  v27 = *(v13 + 432);
  v25 = *(v13 + 400);
  v26 = *(v13 + 416);
  v23 = *(v13 + 368);
  v24 = *(v13 + 384);
  v21 = *(v13 + 336);
  v22 = *(v13 + 352);
  v19 = *(v13 + 304);
  v20 = *(v13 + 320);
  v17 = *(v13 + 272);
  v18 = *(v13 + 288);
  v15 = *(v13 + 240);
  v16 = *(v13 + 256);
  sub_100159AC8(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160), *(v13 + 168), *(v13 + 176), *(v13 + 184), *(v13 + 192), *(v13 + 200), *(v13 + 208), *(v13 + 216), *(v13 + 224), *(v13 + 232), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), *(v13 + 448));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10019B848(char *a1)
{
  v3 = *(type metadata accessor for MeasurementHistoryItem() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1001956E4(a1, v4, v5);
}

uint64_t sub_10019B8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019B940()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10019B98C()
{
  v1 = v0;
  swift_getObjectType();
  *(v0 + qword_1004ADDB8) = 0;
  *(v0 + qword_1004ADDC0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004ADDC8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004ADDD0) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004ADDF0) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004ADE08) = 0;
  v2 = qword_1004ADE10;
  v3 = sub_10000F974(&unk_1004A6940);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v3 + 272);
  swift_retain_n();
  *(v1 + v2) = v6(KeyPath, v5);
  v7 = qword_1004ADE18;
  sub_10000F974(&unk_1004ABB10);
  swift_getKeyPath();
  *(v1 + v7) = MutableStateValue.__allocating_init(_:_:)();
  v8 = qword_1004ADE20;
  v9 = sub_10000F974(&unk_1004A6950);
  v10 = swift_getKeyPath();
  *(v1 + v8) = (*(v9 + 272))(v10, v5);
  v11 = qword_1004ADE28;
  v12 = sub_10000F974(&qword_1004A3F50);
  v13 = swift_getKeyPath();
  *(v1 + v11) = (*(v12 + 272))(v13, v5);
  v14 = qword_1004ADE30;
  sub_10000F974(&unk_1004A6960);
  swift_getKeyPath();
  *(v1 + v14) = MutableStateValue.__allocating_init(_:_:)();
  v15 = qword_1004ADE38;
  sub_10000F974(&qword_1004ABB20);
  swift_getKeyPath();
  *(v1 + v15) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + qword_1004ADE40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1004ADE50) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10019BCB0(uint64_t a1)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v2 = sub_10019863C(v11), (v3 & 1) == 0))
  {
    sub_10017AF68(v11);
    goto LABEL_6;
  }

  sub_10000FE60(*(a1 + 56) + 32 * v2, v12);
  sub_10017AF68(v11);
  sub_100018630(0, &qword_1004AE140);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v5 = 0.0;
    goto LABEL_7;
  }

  [v9 doubleValue];
  v5 = v4;

LABEL_7:
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v6 = sub_10019863C(v11), (v7 & 1) != 0))
  {
    sub_10000FE60(*(a1 + 56) + 32 * v6, v12);
    sub_10017AF68(v11);
    sub_100018630(0, &qword_1004AE140);
    if (swift_dynamicCast())
    {
      [v10 unsignedIntegerValue];
    }
  }

  else
  {
    sub_10017AF68(v11);
  }

  return v5;
}

uint64_t sub_10019BE74()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_10019C170;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100471900;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10019C21C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019C138()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019C21C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019C264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019C2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019C360()
{
  v1 = v0;
  v0[9] = 0;
  swift_unknownObjectWeakInit();
  v2 = sub_10000F974(&qword_1004A2C60);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  v1[10] = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A11E0);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  v1[11] = v8(v7, v4);
  v9 = swift_getKeyPath();
  v10 = *(sub_10000F974(&unk_1004A72E0) + 272);

  v1[12] = v10(v9, v4);
  v11 = sub_10000F974(&unk_1004AFC00);
  v12 = swift_getKeyPath();
  v1[13] = (*(v11 + 272))(v12, v4);
  v13 = sub_10000F974(&qword_1004AE3C8);
  v14 = swift_getKeyPath();
  v1[14] = (*(v13 + 272))(v14, v4);
  return StateObserver.init(configuration:)();
}

uint64_t sub_10019C5B4(uint64_t a1)
{
  v2 = v1;
  v1[9] = 0;
  swift_unknownObjectWeakInit();
  v4 = sub_10000F974(&qword_1004A2C60);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  v2[10] = v7(KeyPath, v6);
  v8 = sub_10000F974(&qword_1004A11E0);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  v2[11] = v10(v9, v6);
  v11 = swift_getKeyPath();
  v12 = *(sub_10000F974(&unk_1004A72E0) + 272);

  v2[12] = v12(v11, v6);
  v13 = sub_10000F974(&unk_1004AFC00);
  v14 = swift_getKeyPath();
  v2[13] = (*(v13 + 272))(v14, v6);
  v15 = sub_10000F974(&qword_1004AE3C8);
  v16 = swift_getKeyPath();
  v2[14] = (*(v15 + 272))(v16, v6);
  sub_1000336B4(a1, v19);
  v17 = StateObserver.init(configuration:)();
  sub_10000FF00(a1);
  return v17;
}

void *sub_10019C7E0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdate];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10019C838()
{
  sub_10001B9D0(v0 + 64);
}

uint64_t sub_10019C888()
{
  StateObserver.deinit();

  sub_10001B9D0(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessibilityStateObserverBridge()
{
  result = qword_1004AE1F8;
  if (!qword_1004AE1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10019C9AC()
{
  result = [objc_allocWithZone(type metadata accessor for AccessibilityStateObserver()) init];
  qword_1004D5060 = result;
  return result;
}

uint64_t sub_10019CB80()
{

  StateValue.wrappedValue.getter();

  v0 = v5;

  if (!v6)
  {
    return 0;
  }

  v1 = (*((swift_isaMask & *v6) + 0x2F0))();

  return v1;
}

uint64_t sub_10019CC60()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure26AccessibilityStateObserver_implementation);

  StateValue.wrappedValue.getter();

  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v29[2] = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v29[0] = v18;
  v29[1] = v19;
  if (qword_1004A03F8 != -1)
  {
    swift_once();
  }

  if (byte_1004D4FC8 != 1 || BYTE1(v29[0]) != 1 || !v30 || (v35 & 1) != 0)
  {
    sub_1000D1340(v29);
    return 0;
  }

  v3 = *((swift_isaMask & *v30) + 0x250);
  v4 = v30;
  result = v3();
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
LABEL_11:
    v6 = v5;

    (*((swift_isaMask & *v6) + 0x2B0))(v7);

    simd_float4x4.position.getter();
    v17 = v8;
    simd_float4x4.position.getter();
    v10 = vsubq_f32(v17, v9);
    v11 = vmulq_f32(v10, v10);
    v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
    v13 = *(**(v1 + 96) + 144);

    v13(v14);

    v15 = sub_1000983B8();
    sub_10010DE20(v15, 0, 0, &v18, v12);

    sub_1000D1340(v29);
    v16 = v19;
    v28 = v18;
    sub_1000C1108(&v28);
    return v16;
  }

  __break(1u);
  return result;
}

id sub_10019CF3C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10019CFBC()
{

  StateValue.wrappedValue.getter();

  v22[6] = v18;
  v22[7] = v19;
  v22[8] = v20;
  v23 = v21;
  v22[2] = v14;
  v22[3] = v15;
  v22[4] = v16;
  v22[5] = v17;
  v22[0] = v12;
  v22[1] = v13;
  sub_1000D1340(v22);
  if (BYTE1(v22[0]) != 1)
  {
    return 0;
  }

  StateValue.wrappedValue.getter();

  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v12 = v2;
  v13 = v3;
  v0 = *(&v2 + 1);

  sub_1000D1340(&v12);
  return v0;
}

uint64_t sub_10019D2D4()
{

  StateValue.wrappedValue.getter();

  sub_10000F974(&qword_1004A1648);
  sub_10000F974(&qword_1004A28B0);
  swift_dynamicCast();
  sub_10019D4CC();
  v0 = RangeReplaceableCollection<>.idToObjectMap.getter();

  return v0;
}

id sub_10019D464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilityStateObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10019D4CC()
{
  result = qword_1004AE3C0;
  if (!qword_1004AE3C0)
  {
    sub_100013BB0(&qword_1004A28B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE3C0);
  }

  return result;
}

double sub_10019D544()
{
  result = -4294967300.0;
  qword_1004D5070 = 0xC1F0000000000000;
  return result;
}

double sub_10019D558()
{
  result = -16777216.0;
  qword_1004D5078 = 0xC170000000000000;
  return result;
}

double sub_10019D56C()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()())
  {
    v0 = 52.0;
  }

  else
  {
    if (static UIDevice.isIPhone()())
    {
      [objc_opt_self() jasperAvailable];
    }

    v0 = 64.0;
  }

  result = v0;
  qword_1004D5080 = *&v0;
  return result;
}

void sub_10019D5E4()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()())
  {
    v0 = [objc_opt_self() jasperAvailable];
    v1 = 72.0;
    if (v0)
    {
      v1 = 78.0;
    }
  }

  else if (static UIDevice.isIPhone()())
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 _peripheryInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    if (v4 == UIEdgeInsetsZero.top && v6 == UIEdgeInsetsZero.left && v8 == UIEdgeInsetsZero.bottom)
    {
      v1 = 78.0;
      if (v10 == UIEdgeInsetsZero.right)
      {
        v1 = 72.0;
      }
    }

    else
    {
      v1 = 78.0;
    }
  }

  else
  {
    v1 = 72.0;
  }

  qword_1004D5088 = *&v1;
}

void sub_10019D71C()
{
  sub_100018630(0, &qword_1004A1930);
  v0 = static UIDevice.isIPad()();
  v1 = 16.0;
  if ((v0 & 1) == 0)
  {
    v2 = static UIDevice.isIPhone()();
    v1 = 6.0;
    if (v2)
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 _peripheryInsets];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v1 = 27.0;
      if (v5 == UIEdgeInsetsZero.top && v7 == UIEdgeInsetsZero.left && v9 == UIEdgeInsetsZero.bottom)
      {
        v1 = 27.0;
        if (v11 == UIEdgeInsetsZero.right)
        {
          v1 = 6.0;
        }
      }
    }
  }

  qword_1004D5090 = *&v1;
}

void sub_10019D800()
{
  sub_100018630(0, &qword_1004A1930);
  v0 = static UIDevice.isIPad()();
  v1 = 16.0;
  if ((v0 & 1) == 0)
  {
    v2 = static UIDevice.isIPhone()();
    v1 = 6.0;
    if (v2)
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 _peripheryInsets];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      if (v5 == UIEdgeInsetsZero.top && v7 == UIEdgeInsetsZero.left && v9 == UIEdgeInsetsZero.bottom)
      {
        v1 = 44.0;
        if (v11 == UIEdgeInsetsZero.right)
        {
          v1 = 6.0;
        }
      }

      else
      {
        v1 = 44.0;
      }
    }
  }

  qword_1004D5098 = *&v1;
}

id sub_10019D8F0()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  qword_1004D50A0 = result;
  return result;
}

uint64_t sub_10019D92C()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if ((result & 1) != 0 || (result = static UIDevice.isIPhone()(), (result & 1) == 0))
  {
    v1 = 44.0;
  }

  else
  {
    result = [objc_opt_self() jasperAvailable];
    v1 = 44.0;
    if (result)
    {
      v1 = 52.0;
    }
  }

  qword_1004D50A8 = *&v1;
  return result;
}

float sub_10019D9B8()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()())
  {
    v0 = 345.0;
  }

  else
  {
    static UIDevice.isIPhone()();
    v0 = 475.0;
  }

  result = v0;
  dword_1004D50B0 = LODWORD(v0);
  return result;
}

id sub_10019DA58()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.6];
  qword_1004D50D0 = result;
  return result;
}

void sub_10019DA9C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x8000000100403AB0;
  v1._countAndFlagsBits = 0xD000000000000012;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1004D50D8 = v3;
}

void sub_10019DBC0()
{
  if (qword_1004A0590 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5108;
  v1 = [v0 colorWithAlphaComponent:0.7];

  qword_1004D5110 = v1;
}

double sub_10019DC78()
{
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D4970;
  v2 = static UIContentSizeCategory.> infix(_:_:)();

  if (v2)
  {

    v1 = UIContentSizeCategoryAccessibilityLarge;
  }

  v3 = objc_opt_self();
  v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v1];

  v5 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v4];
  [v5 pointSize];
  v7 = v6;

  result = fmax(v7 * 0.4, 8.0);
  qword_1004D5120 = *&result;
  return result;
}

double sub_10019DDE4()
{
  if (qword_1004A05A8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5120 * 0.25;
  *&qword_1004D5128 = *&qword_1004D5120 * 0.25;
  return result;
}

double sub_10019DE44()
{
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D4970;
  v2 = static UIContentSizeCategory.> infix(_:_:)();

  if (v2)
  {

    v1 = UIContentSizeCategoryAccessibilityLarge;
  }

  v3 = objc_opt_self();
  v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v1];

  v5 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v4];
  [v5 pointSize];
  v7 = v6;

  result = fmax(v7 * 0.9 * 1.4, 20.0);
  qword_1004D5130 = *&result;
  return result;
}

double sub_10019DFC0()
{
  if (qword_1004A05B8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5130 * 0.8;
  *&qword_1004D5138 = *&qword_1004D5130 * 0.8;
  return result;
}

double sub_10019E020()
{
  if (qword_1004A0510 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1004D5080;
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  result = v0 + *&qword_1004D5088 * 0.5;
  *&qword_1004D5140 = result;
  return result;
}

void sub_10019E0C0()
{
  if (qword_1004A07F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5370;
  v1 = *algn_1004D5378;
  if (byte_1004D5380)
  {
    v2 = byte_1004D5390;
    v3 = qword_1004D5388;
    v4 = byte_1004AF8C0;
    v5 = qword_1004D5370;
    v6 = sub_10007836C(v4, v3, v2);
    sub_10009F954(v0, v1, 1);
  }

  else
  {
    if (byte_1004AF8C0)
    {
      v7 = *algn_1004D5378;
    }

    else
    {
      v7 = qword_1004D5370;
    }

    v6 = v7;
  }

  qword_1004D5148 = v6;
}

UIColor sub_10019E2D8()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(argb:)(0x157D7D7Du).super.isa;
  qword_1004D51B0 = result.super.isa;
  return result;
}

void sub_10019E474()
{
  v0 = objc_opt_self();
  v1 = [v0 systemFontOfSize:20.0 weight:UIFontWeightHeavy];
  v2 = [v1 fontDescriptor];
  v3 = sub_1001C9308();
  v4 = [v0 fontWithDescriptor:v3 size:0.0];

  qword_1004D5218 = v4;
}

double sub_10019E528()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()())
  {
    v0 = 1.4;
  }

  else
  {
    static UIDevice.isIPhone()();
    v0 = 0.95;
  }

  result = v0;
  qword_1004D5220 = *&v0;
  return result;
}

double sub_10019E58C()
{
  if (qword_1004A06A8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5220;
  qword_1004D5228 = qword_1004D5220;
  return result;
}

double sub_10019E5E4()
{
  if (qword_1004A06A8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5220 * 1.55;
  *&qword_1004D5230 = *&qword_1004D5220 * 1.55;
  return result;
}

double sub_10019E644()
{
  if (qword_1004A06B8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5230 * 0.92;
  *&qword_1004D5238 = *&qword_1004D5230 * 0.92;
  return result;
}

uint64_t sub_10019E6A4()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if (result)
  {
    v1 = xmmword_1003E1720;
  }

  else
  {
    result = static UIDevice.isIPhone()();
    v1 = xmmword_1003E1730;
  }

  xmmword_1004D5240 = v1;
  return result;
}

uint64_t sub_10019E704()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  v1 = -18.0;
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v1 = -12.0;
  }

  qword_1004D5250 = 0;
  qword_1004D5258 = *&v1;
  return result;
}

double sub_10019E760()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()())
  {
    v0 = 267.0;
  }

  else
  {
    static UIDevice.isIPhone()();
    v0 = 149.0;
  }

  result = v0;
  qword_1004D5260 = *&v0;
  qword_1004D5268 = 0;
  return result;
}

double sub_10019E7CC()
{
  if (qword_1004A06D8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5260 + 35.0;
  *&qword_1004D5270 = *&qword_1004D5260 + 35.0;
  return result;
}

uint64_t sub_10019E834()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  v1 = 5.0;
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v1 = 4.0;
  }

  qword_1004D5278 = *&v1;
  return result;
}

id sub_10019E888()
{
  result = [objc_opt_self() systemFontOfSize:26.0 weight:UIFontWeightMedium];
  qword_1004D5280 = result;
  return result;
}

uint64_t sub_10019E8E8()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if ((result & 1) != 0 || (result = static UIDevice.isIPhone()(), (result & 1) == 0))
  {
    v1 = 20;
  }

  else
  {
    result = [objc_opt_self() jasperAvailable];
    v1 = 20;
    if (result)
    {
      v1 = 18;
    }
  }

  qword_1004D5290 = v1;
  return result;
}

uint64_t sub_10019E968()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  v1 = 0;
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v1 = -15;
    if (result)
    {
      result = [objc_opt_self() jasperAvailable];
      if (result)
      {
        v1 = 70;
      }
    }
  }

  qword_1004D5298 = v1;
  return result;
}

id sub_10019E9E4()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  qword_1004D52A0 = result;
  return result;
}

id sub_10019EA20()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  qword_1004D52A8 = result;
  return result;
}

void sub_10019EA5C()
{
  v0 = [objc_opt_self() systemBackgroundColor];
  v1 = sub_10007836C(0, 1, 1);

  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()() & 1) != 0 || (static UIDevice.isIPhone()())
  {
    v2 = [objc_opt_self() jasperAvailable];
    v3 = 0.4;
    if (v2)
    {
      v3 = 1.0;
    }
  }

  else
  {
    v3 = 0.4;
  }

  v4 = [v1 colorWithAlphaComponent:v3];

  qword_1004D52B0 = v4;
}

id sub_10019EB44()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  qword_1004D52B8 = result;
  return result;
}

void sub_10019EB94(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = sub_10007836C(0, 1, 1);

  *a3 = v5;
}

id sub_10019EC28(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

uint64_t sub_10019EC88()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()())
  {
    v0 = 1066192077;
  }

  else
  {
    result = static UIDevice.isIPhone()();
    if ((result & 1) == 0)
    {
      v3 = 0.55;
      goto LABEL_9;
    }

    v0 = 1060320051;
  }

  v2 = *&v0;
  result = [objc_opt_self() jasperAvailable];
  v3 = 0.55;
  if (result)
  {
    v3 = v2;
  }

LABEL_9:
  dword_1004D52D0 = LODWORD(v3);
  return result;
}

uint64_t sub_10019ED34()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()() & 1) != 0 || (result = static UIDevice.isIPhone()(), (result))
  {
    result = [objc_opt_self() jasperAvailable];
    v1 = 125.0;
    if (result)
    {
      v1 = 130.0;
    }
  }

  else
  {
    v1 = 125.0;
  }

  dword_1004D52D4 = LODWORD(v1);
  return result;
}

float sub_10019EDC0()
{
  if (qword_1004A0748 != -1)
  {
    swift_once();
  }

  v0 = *&dword_1004D52D4;
  if (qword_1004A0740 != -1)
  {
    swift_once();
  }

  result = v0 * *&dword_1004D52D0;
  *&dword_1004D52D8 = v0 * *&dword_1004D52D0;
  return result;
}

float sub_10019EE58()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()() & 1) != 0 || (v0 = 4.0, (static UIDevice.isIPhone()()))
  {
    if ([objc_opt_self() jasperAvailable])
    {
      v0 = 6.0;
    }

    else
    {
      v0 = 4.0;
    }
  }

  if (qword_1004A0740 != -1)
  {
    swift_once();
  }

  result = v0 * *&dword_1004D52D0;
  *&dword_1004D52DC = v0 * *&dword_1004D52D0;
  return result;
}

float sub_10019EF18(float a1)
{
  v1 = a1 < 1.0;
  v2 = 1.0 / a1;
  result = (2.5 - (a1 + a1)) + ((a1 * a1) * 0.5);
  if (!v1)
  {
    return v2;
  }

  return result;
}

id sub_10019EF54()
{
  result = [objc_opt_self() jasperAvailable];
  v1 = sub_10019EF48;
  if (result)
  {
    v1 = sub_10019EF18;
  }

  qword_1004D52E0 = v1;
  *algn_1004D52E8 = 0;
  return result;
}

float sub_10019EFB8()
{
  if (qword_1004A0750 != -1)
  {
    swift_once();
  }

  v0 = *&dword_1004D52D8;
  if (qword_1004A0758 != -1)
  {
    swift_once();
  }

  result = (v0 * 0.5) - (*&dword_1004D52DC * 0.5);
  *&dword_1004D52F0 = result;
  return result;
}

uint64_t sub_10019F05C()
{
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()() & 1) != 0 || (result = static UIDevice.isIPhone()(), v1 = 7.5, (result))
  {
    result = [objc_opt_self() jasperAvailable];
    v1 = 7.5;
    if (result)
    {
      v1 = 13.0;
    }
  }

  qword_1004D52F8 = *&v1;
  return result;
}

uint64_t sub_10019F0D8()
{
  if (qword_1004A0740 != -1)
  {
    swift_once();
  }

  v0 = *&dword_1004D52D0;
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPad()() & 1) != 0 || (result = static UIDevice.isIPhone()(), v2 = 2.0, (result))
  {
    v3 = v0 * 3.0;
    result = [objc_opt_self() jasperAvailable];
    v2 = 2.0;
    if (result)
    {
      v2 = v3;
    }
  }

  dword_1004D5300 = LODWORD(v2);
  return result;
}

void sub_10019F198()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent:0.7];

  qword_1004D5308 = v1;
}

void sub_10019F208()
{
  sub_100018630(0, &qword_1004A1930);
  v0 = static UIDevice.isIPad()();
  v1 = 0;
  if ((v0 & 1) == 0)
  {
    if (static UIDevice.isIPhone()())
    {
      v2 = [objc_opt_self() mainScreen];
      [v2 _peripheryInsets];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;

      if (v4 == UIEdgeInsetsZero.top && v6 == UIEdgeInsetsZero.left && v8 == UIEdgeInsetsZero.bottom)
      {
        v1 = 83;
        if (v10 == UIEdgeInsetsZero.right)
        {
          v1 = 49;
        }
      }

      else
      {
        v1 = 83;
      }
    }

    else
    {
      v1 = 49;
    }
  }

  qword_1004AE3D0 = v1;
}

float sub_10019F2F4()
{
  if (qword_1004A0788 != -1)
  {
    swift_once();
  }

  result = ARCoachingResetButtonPortraitVerticalOffset + qword_1004AE3D0;
  *&dword_1004D5310 = result;
  return result;
}

float sub_10019F360()
{
  result = ARCoachingResetButtonLandscapeVerticalOffset;
  dword_1004D5314 = ARCoachingResetButtonLandscapeVerticalOffset;
  return result;
}

uint64_t sub_10019F378()
{
  if (qword_1004A0528 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5098;
  if (qword_1004A0520 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D5090;
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v0 = v1;
  }

  qword_1004D5318 = v0;
  return result;
}

uint64_t sub_10019F440()
{
  if (qword_1004A0528 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1004D5098;
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    v0 = v0 + 47.0 + 18.0;
    result = static UIDevice.isIPhone()();
  }

  qword_1004D5320 = *&v0;
  return result;
}

uint64_t sub_10019F4E4()
{
  if (qword_1004A07E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5358;
  if (qword_1004A07D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D5350;
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v0 = v1;
  }

  qword_1004D5328 = v0;
  return result;
}

uint64_t sub_10019F5AC()
{
  if (qword_1004A07D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5350;
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
  }

  qword_1004D5330 = v0;
  return result;
}

double sub_10019F638()
{
  if (qword_1004A07E8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5360;
  qword_1004D5338 = qword_1004D5360;
  return result;
}

uint64_t sub_10019F690()
{
  if (qword_1004A07F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5368;
  if (qword_1004A07E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D5360;
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v0 = v1;
  }

  qword_1004D5340 = v0;
  return result;
}

double sub_10019F758()
{
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5088 * 0.5 + 6.0;
  *&qword_1004D5348 = result;
  return result;
}

double sub_10019F7C0()
{
  result = 0.0078125;
  qword_1004D5350 = 0x3F80000000000000;
  return result;
}

double sub_10019F800()
{
  *&result = 1065353216;
  qword_1004D5360 = 1065353216;
  return result;
}

float32x2_t sub_10019F840(uint64_t a1, void *a2, float32x2_t *a3, float32x2_t *a4)
{
  if (*a2 != -1)
  {
    v5 = a4;
    v6 = a3;
    swift_once();
    a3 = v6;
    a4 = v5;
  }

  result = vsub_f32(0, *a3);
  *a4 = result;
  return result;
}

id sub_10019F89C()
{
  result = [objc_opt_self() systemBackgroundColor];
  qword_1004D5370 = result;
  *algn_1004D5378 = 0;
  byte_1004D5380 = 1;
  qword_1004D5388 = 1;
  byte_1004D5390 = 0;
  return result;
}

id sub_10019F8EC()
{
  result = [objc_opt_self() systemBackgroundColor];
  qword_1004D5398 = result;
  unk_1004D53A0 = 0;
  byte_1004D53A8 = 1;
  qword_1004D53B0 = 0;
  byte_1004D53B8 = 1;
  return result;
}

id sub_10019F93C()
{
  result = [objc_opt_self() labelColor];
  qword_1004D53C0 = result;
  *algn_1004D53C8 = 0;
  byte_1004D53D0 = 1;
  qword_1004D53D8 = 0;
  byte_1004D53E0 = 0;
  return result;
}

id sub_10019F98C()
{
  result = [objc_opt_self() secondaryLabelColor];
  qword_1004D53E8 = result;
  unk_1004D53F0 = 0;
  byte_1004D53F8 = 1;
  qword_1004D5400 = 0;
  byte_1004D5408 = 1;
  return result;
}

void sub_10019F9DC()
{
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D4970;
  v2 = static UIContentSizeCategory.> infix(_:_:)();

  if (v2)
  {

    v1 = UIContentSizeCategoryAccessibilityLarge;
  }

  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [v4 traitCollectionWithPreferredContentSizeCategory:v1];

  v6 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v5];
  v7 = [v6 fontDescriptor];

  v8 = [v7 fontDescriptorWithSymbolicTraits:2];
  if (v8)
  {
    v9 = qword_1004D4970;
    v10 = static UIContentSizeCategory.> infix(_:_:)();

    if (v10)
    {

      v9 = UIContentSizeCategoryAccessibilityLarge;
    }

    v11 = [v4 traitCollectionWithPreferredContentSizeCategory:v9];

    v12 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v11];
    [v12 pointSize];
    v14 = v13;

    v15 = [objc_opt_self() mainScreen];
    [v15 scale];
    v17 = v16;

    v18 = [v3 fontWithDescriptor:v8 size:v14 * v17];
    v19 = [v18 fontDescriptor];
    v20 = sub_1001C9308();
    [v3 fontWithDescriptor:v20 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10019FCB8()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
  v1 = [v0 fontDescriptor];

  v2 = [v1 fontDescriptorWithSymbolicTraits:2];
  if (v2)
  {
    sub_10000F974(&qword_1004AE3D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003D5360;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10000F974(&qword_1004AE3E0);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1003D5360;
    *(v4 + 32) = UIFontWeightTrait;
    *(v4 + 40) = UIFontWeightMedium;
    v5 = UIFontDescriptorTraitsAttribute;
    v6 = UIFontWeightTrait;
    v7 = sub_100199F58(v4);
    swift_setDeallocating();
    sub_100018F04(v4 + 32, &qword_1004AE3E8);
    *(inited + 64) = sub_10000F974(&qword_1004AE3F0);
    *(inited + 40) = v7;
    sub_10019A048(inited);
    swift_setDeallocating();
    sub_100018F04(inited + 32, &qword_1004AE0C0);
    type metadata accessor for AttributeName(0);
    sub_10019FEDC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 fontDescriptorByAddingAttributes:isa];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10019FEDC()
{
  result = qword_1004A0CD8;
  if (!qword_1004A0CD8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0CD8);
  }

  return result;
}

id sub_10019FF34()
{
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D4970;
  v2 = static UIContentSizeCategory.> infix(_:_:)();

  if (v2)
  {

    v1 = UIContentSizeCategoryAccessibilityLarge;
  }

  v3 = objc_opt_self();
  v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v1];

  v5 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v4];
  v6 = [v5 fontDescriptor];
  sub_10000F974(&qword_1004AE3D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000F974(&qword_1004AE3E0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1003D5360;
  *(v8 + 32) = UIFontWeightTrait;
  *(v8 + 40) = UIFontWeightThin;
  v9 = UIFontDescriptorTraitsAttribute;
  v10 = UIFontWeightTrait;
  v11 = sub_100199F58(v8);
  swift_setDeallocating();
  sub_100018F04(v8 + 32, &qword_1004AE3E8);
  *(inited + 64) = sub_10000F974(&qword_1004AE3F0);
  *(inited + 40) = v11;
  sub_10019A048(inited);
  swift_setDeallocating();
  sub_100018F04(inited + 32, &qword_1004AE0C0);
  type metadata accessor for AttributeName(0);
  sub_10019FEDC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v6 fontDescriptorByAddingAttributes:isa];

  [v5 pointSize];
  v15 = v14;
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  v19 = [v3 fontWithDescriptor:v13 size:v15 * v18 + v15 * v18];
  return v19;
}

id sub_1001A0294@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPersonHeightCoachingEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1001A02DC()
{

  StateValue.ifUpdated(_:)();
}

uint64_t sub_1001A0338()
{
  v1 = v0;
  v2 = sub_10000F974(&unk_1004A3D90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v59 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  swift_beginAccess();
  sub_10006C92C(v1 + 64, v64, &qword_1004A4038);
  if (!*&v64[24])
  {
    return sub_100018F04(v64, &qword_1004A4038);
  }

  sub_10001D95C(v64, v65);
  if (*(v1 + 128) == 1)
  {
    v61 = v5;
    v62 = v9;
    v18 = *(**(*sub_10000FEBC(v65, v66) + qword_1004A3838) + 144);

    v18(v63, v19);

    memcpy(v64, v63, sizeof(v64));
    sub_10006BE28(v64);
    v20 = *(**(v1 + 120) + 144);

    v20(v63, v21);

    if (v63[0] == 0x8000000000000020)
    {
      v22 = *(**(v1 + 104) + 400);

      v23 = v22(v63);
      *v24 = 0;
      v23(v63, 0);
    }

    else
    {
      sub_10001B360(v63[0]);
      v60 = v64[456];
      v29 = *sub_10000FEBC(v65, v66);
      v30 = qword_1004A3900;
      swift_beginAccess();
      sub_10006C92C(v29 + v30, v7, &unk_1004A3D90);
      v31 = v62;
      v59 = *(v62 + 48);
      if (v59(v7, 1, v8) == 1)
      {
        sub_100018F04(v7, &unk_1004A3D90);
        v32 = v60;
      }

      else
      {
        (*(v31 + 32))(v17, v7, v8);
        Date.init()();
        Date.timeIntervalSince(_:)();
        v34 = v33;
        v35 = *(v31 + 8);
        v35(v15, v8);
        v35(v17, v8);
        v32 = v60;
        if (((v34 < 0.5) & v60) != 0)
        {
          v36 = *(**(v1 + 104) + 400);

          v37 = v36(v63);
          *v38 = 4;
          v37(v63, 0);
          goto LABEL_20;
        }
      }

      sub_10000FEBC(v65, v66);
      if (sub_10005D168() & v32)
      {
        goto LABEL_12;
      }

      sub_10000FEBC(v65, v66);
      if (sub_10005CEB0(0) & 1) == 0 || (sub_10000FEBC(v65, v66), ((sub_10005D4C0(0.0) | v32 ^ 1)))
      {
        v42 = *sub_10000FEBC(v65, v66);
        v43 = qword_1004A3908;
        swift_beginAccess();
        v44 = v42 + v43;
        v45 = v61;
        sub_10006C92C(v44, v61, &unk_1004A3D90);
        if (v59(v45, 1, v8) == 1)
        {
          sub_100018F04(v45, &unk_1004A3D90);
        }

        else
        {
          v46 = v62;
          (*(v62 + 32))(v12, v45, v8);
          Date.init()();
          Date.timeIntervalSince(_:)();
          v48 = v47;
          v49 = *(v46 + 8);
          v49(v15, v8);
          v49(v12, v8);
          if (v48 > 0.5)
          {
            v50 = *(**(v1 + 104) + 400);

            v51 = v50(v63);
            *v52 = 3;
            v51(v63, 0);
            goto LABEL_20;
          }
        }

        v53 = *(**(v1 + 104) + 400);

        v54 = v53(v63);
        *v55 = 0;
        v54(v63, 0);
        goto LABEL_20;
      }

      sub_10000FEBC(v65, v66);
      type metadata accessor for PersonHeightInstrument();
      if (sub_10006529C(0.0))
      {
LABEL_12:
        v39 = *(**(v1 + 104) + 400);

        v40 = v39(v63);
        *v41 = 1;
        v40(v63, 0);
      }

      else
      {
        sub_10000FEBC(v65, v66);
        if (!sub_100065320(0.0))
        {
          return sub_10000FF00(v65);
        }

        sub_10000FEBC(v65, v66);
        if (sub_1000653A4())
        {
          return sub_10000FF00(v65);
        }

        v56 = *(**(v1 + 104) + 400);

        v57 = v56(v63);
        *v58 = 2;
        v57(v63, 0);
      }
    }
  }

  else
  {
    v26 = *(**(v1 + 104) + 400);

    v27 = v26(v64);
    *v28 = 0;
    v27(v64, 0);
  }

LABEL_20:

  return sub_10000FF00(v65);
}

uint64_t sub_1001A0B74()
{
  v1 = v0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  sub_10000F974(&qword_1004AE548);
  swift_getKeyPath();
  *(v0 + 104) = MutableStateValue.__allocating_init(_:_:)();
  v2 = sub_10000F974(&qword_1004A1638);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 112) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = sub_10000F974(&unk_1004A2520);
  *(v1 + 120) = (*(v7 + 272))(v6, v4);
  *(v1 + 128) = 1;
  v8 = StateObserver.init(configuration:)();
  v9 = objc_opt_self();

  v10 = [v9 standardUserDefaults];
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  sub_10004D9B4();
  v11 = static OS_dispatch_queue.main.getter();
  NSUserDefaults.performOnChange<A>(to:on:action:)();

  return v8;
}

uint64_t sub_1001A0DE0(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 128) = v1;
    sub_1001A0338();
  }

  return result;
}

void sub_1001A0E48()
{
  sub_10000F974(&qword_1004AE548);
  swift_getKeyPath();
  MutableStateValue.__allocating_init(_:_:)();
  v0 = sub_10000F974(&qword_1004A1638);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5058;
  v3 = *(v0 + 272);
  swift_retain_n();
  v3(KeyPath, v2);
  v4 = swift_getKeyPath();
  v5 = sub_10000F974(&unk_1004A2520);
  (*(v5 + 272))(v4, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001A0FA8()
{
  sub_100018F04(v0 + 64, &qword_1004A4038);
}

uint64_t sub_1001A0FF8()
{
  StateObserver.deinit();

  sub_100018F04(v0 + 64, &qword_1004A4038);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonHeightCoachingController()
{
  result = qword_1004AE420;
  if (!qword_1004AE420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001A1134@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPersonHeightCoachingEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1001A117C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001A11BC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100464E18, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1001A122C(void *a1)
{
  v2 = [a1 type];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000748A4();
  v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (*(v3 + 16))
  {

    v4 = static String._fromSubstring(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = _findStringSwitchCase(cases:string:)(&off_100464E18, v7);

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1001A1374()
{
  result = qword_1004AE550;
  if (!qword_1004AE550)
  {
    sub_100013BB0(&qword_1004AE558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE550);
  }

  return result;
}

unint64_t sub_1001A13DC()
{
  result = qword_1004AE560;
  if (!qword_1004AE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE560);
  }

  return result;
}

id sub_1001A1430(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v7(v8, v9, v10);

  return v11;
}

id sub_1001A14D0()
{
  v0 = sub_10000F974(&qword_1004A2968);
  __chkstk_darwin(v0 - 8);
  v2 = v22 - v1;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = type metadata accessor for UIButton.Configuration.Size();
  v6 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0060 != -1)
  {
    swift_once();
  }

  v13 = *&qword_1004D4980;
  v14 = [objc_opt_self() mainBundle];
  v27._object = 0xE000000000000000;
  v15._object = 0x8000000100404380;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v27);

  v17 = type metadata accessor for ButtonWithCustomBackgroundColor();
  v26.receiver = v22[1];
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 375.0, v13);
  static UIButton.Configuration.glass()();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.Size.large(_:), v22[0]);
  UIButton.Configuration.buttonSize.setter();
  (*(v23 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v24);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.title.setter();
  (*(v10 + 16))(v2, v12, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  UIButton.configuration.setter();
  [v18 setTintColor:0];
  (*(v10 + 8))(v12, v9);
  aBlock[4] = sub_1001A192C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A1430;
  aBlock[3] = &unk_100471B78;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  [v20 setPointerStyleProvider:v19];
  _Block_release(v19);

  return v20;
}

uint64_t sub_1001A192C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A2D60);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_10000F974(&qword_1004AC3B8);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  *v11 = [objc_allocWithZone(UITargetedPreview) initWithView:a1];
  v16 = enum case for UIPointerEffect.TintMode.overlay(_:);
  v17 = type metadata accessor for UIPointerEffect.TintMode();
  (*(*(v17 - 8) + 104))(&v11[v13], v16, v17);
  v11[v14] = 0;
  v11[v15] = 0;
  (*(v6 + 104))(v11, enum case for UIPointerEffect.hover(_:), v5);
  sub_100040E00();
  (*(v6 + 16))(v8, v11, v5);
  v18 = type metadata accessor for UIPointerShape();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = UIPointerStyle.init(effect:shape:)();
  (*(v6 + 8))(v11, v5);
  return v19;
}

uint64_t sub_1001A1C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001A1CA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v117 = a1[8];
  v5 = a1[11];
  v120 = a1[10];
  v114 = a1[12];
  v115 = a1[13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_101;
  }

  v7 = Strong;
  v8 = swift_unknownObjectWeakLoadStrong();

  if (!v8)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v9 = String._bridgeToObjectiveC()();
  [v8 setText:v9];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v11 = v10;
  v12 = swift_unknownObjectWeakLoadStrong();

  if (!v12)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v4)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v12 setAccessibilityLabel:{v13, v114}];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    goto LABEL_104;
  }

  v15 = v14;
  v16 = swift_unknownObjectWeakLoadStrong();

  if (!v16)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if ((v2 != v120 || v3 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v22 = swift_unknownObjectWeakLoadStrong();
    if (!v22)
    {
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v23 = v22;
    v24 = [v22 isHidden];

    if (v24)
    {
      v25 = swift_unknownObjectWeakLoadStrong();
      if (!v25)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v26 = v25;
      [v25 setHidden:0];
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (!v27)
    {
      goto LABEL_131;
    }

    v28 = v27;
    v29 = String._bridgeToObjectiveC()();
    [v28 setText:v29];

    v30 = swift_unknownObjectWeakLoadStrong();
    if (!v30)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v31 = v30;
    if (v115)
    {
      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v21 = 0;
    }

    [v31 setAccessibilityLabel:v21];

LABEL_27:
    goto LABEL_28;
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v18 = v17;
  v19 = [v17 isHidden];

  if ((v19 & 1) == 0)
  {
    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v21 = v20;
    [v20 setHidden:1];
    goto LABEL_27;
  }

LABEL_28:
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v33 = v32;
  v34 = String._bridgeToObjectiveC()();
  [v33 setText:v34];

  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v36 = v35;
  if (v117)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v36 setAccessibilityLabel:v37];

  v38 = a1[15];
  v39 = a1[16];
  v40 = a1[18];
  v119 = a1[23];
  v41 = a1[25];
  v42 = a1[26];
  v116 = a1[28];
  v43 = swift_unknownObjectWeakLoadStrong();
  if (!v43)
  {
    goto LABEL_108;
  }

  v44 = v43;
  v45 = swift_unknownObjectWeakLoadStrong();

  if (!v45)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v46 = String._bridgeToObjectiveC()();
  [v45 setText:v46];

  v47 = swift_unknownObjectWeakLoadStrong();
  if (!v47)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v48 = v47;
  v49 = swift_unknownObjectWeakLoadStrong();

  if (!v49)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v40)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  [v49 setAccessibilityLabel:v50];

  v51 = swift_unknownObjectWeakLoadStrong();
  if (!v51)
  {
    goto LABEL_112;
  }

  v52 = v51;
  v53 = swift_unknownObjectWeakLoadStrong();

  if (!v53)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if ((v38 != v41 || v39 != v42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v59 = swift_unknownObjectWeakLoadStrong();
    if (!v59)
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v60 = v59;
    v61 = [v59 isHidden];

    if (v61)
    {
      v62 = swift_unknownObjectWeakLoadStrong();
      if (!v62)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v63 = v62;
      [v62 setHidden:0];
    }

    v64 = swift_unknownObjectWeakLoadStrong();
    if (!v64)
    {
      goto LABEL_134;
    }

    v65 = v64;
    v66 = String._bridgeToObjectiveC()();
    [v65 setText:v66];

    v67 = swift_unknownObjectWeakLoadStrong();
    if (!v67)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v68 = v67;
    if (v116)
    {
      v58 = String._bridgeToObjectiveC()();
    }

    else
    {
      v58 = 0;
    }

    [v68 setAccessibilityLabel:v58];

LABEL_59:
    goto LABEL_60;
  }

  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v55 = v54;
  v56 = [v54 isHidden];

  if ((v56 & 1) == 0)
  {
    v57 = swift_unknownObjectWeakLoadStrong();
    if (!v57)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v58 = v57;
    [v57 setHidden:1];
    goto LABEL_59;
  }

LABEL_60:
  v69 = swift_unknownObjectWeakLoadStrong();
  if (!v69)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v70 = v69;
  v71 = String._bridgeToObjectiveC()();
  [v70 setText:v71];

  v72 = swift_unknownObjectWeakLoadStrong();
  if (!v72)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v73 = v72;
  if (v119)
  {
    v74 = String._bridgeToObjectiveC()();
  }

  else
  {
    v74 = 0;
  }

  [v73 setAccessibilityLabel:v74];

  v76 = a1[30];
  v75 = a1[31];
  v77 = a1[33];
  v78 = a1[38];
  v79 = a1[40];
  v80 = a1[41];
  v118 = a1[43];
  v81 = swift_unknownObjectWeakLoadStrong();
  if (!v81)
  {
    goto LABEL_116;
  }

  v82 = v81;
  v83 = swift_unknownObjectWeakLoadStrong();

  if (!v83)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v84 = String._bridgeToObjectiveC()();
  [v83 setText:v84];

  v85 = swift_unknownObjectWeakLoadStrong();
  if (!v85)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v86 = v85;
  v87 = swift_unknownObjectWeakLoadStrong();

  if (!v87)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v77)
  {
    v88 = String._bridgeToObjectiveC()();
  }

  else
  {
    v88 = 0;
  }

  [v87 setAccessibilityLabel:v88];

  v89 = swift_unknownObjectWeakLoadStrong();
  if (!v89)
  {
    goto LABEL_120;
  }

  v90 = v89;
  v91 = swift_unknownObjectWeakLoadStrong();

  if (!v91)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if ((v76 != v79 || v75 != v80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v98 = swift_unknownObjectWeakLoadStrong();
    if (!v98)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v99 = v98;
    v100 = [v98 isHidden];

    if (v100)
    {
      v101 = swift_unknownObjectWeakLoadStrong();
      if (!v101)
      {
LABEL_141:
        __break(1u);
        return;
      }

      v102 = v101;
      [v101 setHidden:0];
    }

    v103 = swift_unknownObjectWeakLoadStrong();
    if (!v103)
    {
      goto LABEL_137;
    }

    v104 = v103;
    v105 = String._bridgeToObjectiveC()();
    [v104 setText:v105];

    v106 = swift_unknownObjectWeakLoadStrong();
    if (!v106)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v107 = v106;
    v95 = &off_100494000;
    if (v118)
    {
      v97 = String._bridgeToObjectiveC()();
    }

    else
    {
      v97 = 0;
    }

    [v107 setAccessibilityLabel:v97];

LABEL_91:
    goto LABEL_92;
  }

  v92 = swift_unknownObjectWeakLoadStrong();
  if (!v92)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v93 = v92;
  v94 = [v92 isHidden];

  v95 = &off_100494000;
  if ((v94 & 1) == 0)
  {
    v96 = swift_unknownObjectWeakLoadStrong();
    if (!v96)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v97 = v96;
    [v96 setHidden:1];
    goto LABEL_91;
  }

LABEL_92:
  v108 = swift_unknownObjectWeakLoadStrong();
  if (!v108)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v109 = v108;
  v110 = String._bridgeToObjectiveC()();
  [v109 setText:v110];

  v111 = swift_unknownObjectWeakLoadStrong();
  if (!v111)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v112 = v111;
  if (v78)
  {
    v113 = String._bridgeToObjectiveC()();
  }

  else
  {
    v113 = 0;
  }

  v121 = v113;
  [v112 v95[111]];
}

id sub_1001A26EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_fullContentHeight] = 0;
  v10 = &v5[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_numberOfRowsChangedCallback];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v5[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_minContentViewHeight] = 0x407AA00000000000;
  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v13 = 88.0;
  if (v11)
  {
    v13 = 222.0;
  }

  *&v6[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableRowHeight] = v13;
  *&v6[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_numberOfRows] = 4;
  v14 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_sketchView;
  type metadata accessor for SketchObject();
  *&v6[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_labelStrip;
  type metadata accessor for ObjectLabelStrip();
  *&v6[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableView;
  *&v6[v16] = [objc_allocWithZone(UITableView) init];
  v17 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial__historyState;
  v18 = sub_10000F974(&unk_1004A6940);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v20 = qword_1004D5058;
  v21 = *(v18 + 272);

  *&v6[v17] = v21(KeyPath, v20);
  v22 = &v6[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_measurementID];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v6[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_title];
  *v23 = a4;
  *(v23 + 1) = a5;
  v29.receiver = v6;
  v29.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001A1CA8(a3);
  sub_1001A38BC(a3);
  sub_1001A297C();
  sub_1001A2CD4();

  return v24;
}

void sub_1001A297C()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_labelStrip];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();

  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v24._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x4C5F5443454A424FLL;
  v7._object = 0xED00004854474E45;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v24);

  v9 = String._bridgeToObjectiveC()();

  [v4 setText:v9];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = swift_unknownObjectWeakLoadStrong();

  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = [v5 mainBundle];
  v25._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x575F5443454A424FLL;
  v14._object = 0xEC00000048544449;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v25);

  v16 = String._bridgeToObjectiveC()();

  [v12 setText:v16];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = swift_unknownObjectWeakLoadStrong();

  if (v19)
  {
    v20 = [v5 mainBundle];
    v26._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x485F5443454A424FLL;
    v21._object = 0xED00005448474945;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v26);

    v23 = String._bridgeToObjectiveC()();

    [v19 setText:v23];

    [v0 setAxis:1];
    [v0 addArrangedSubview:*&v0[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_sketchView]];
    [v0 addArrangedSubview:v1];
    [v0 addArrangedSubview:*&v0[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableView]];
    sub_1001D2E70(0, 2.0, 1.0, 1.0);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1001A2CD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_sketchView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 heightAnchor];
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v5 = 176.0;
  if (v3)
  {
    v5 = 444.0;
  }

  v6 = [v2 constraintEqualToConstant:v5];

  [v6 setActive:1];
}

__n128 sub_1001A2F14@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1001A34B4(a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v6[6];
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1001A2F68()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_title);

  return v1;
}

void *sub_1001A2FA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableView);
  v2 = v1;
  return v1;
}

void sub_1001A2FD4(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = (v1 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_title);
  *v5 = v4;
  v5[1] = v3;

  v6 = type metadata accessor for MeasurementHistoryItem();
  memcpy(__dst, (a1 + *(v6 + 28)), 0x346uLL);
  if (sub_1000218D8(__dst) == 2)
  {
    v7 = sub_10007CD94(__dst);
    memcpy(v8, v7, 0x346uLL);
    sub_1001A1CA8(v8);
  }
}

id sub_1001A3074(uint64_t a1)
{
  v2 = type metadata accessor for MeasurementHistoryItem();
  memcpy(__dst, (a1 + *(v2 + 28)), 0x346uLL);
  v3 = sub_1000218D8(__dst);
  result = 0;
  if (v3 == 2)
  {
    v5 = sub_10007CD94(__dst);
    v6 = sub_1001935F8();
    v52 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];

    sub_10000F974(&unk_1004AF710);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1003E19E0;
    v8 = objc_opt_self();
    v9 = [v8 mainBundle];
    v54._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0x4C5F5443454A424FLL;
    v10._object = 0xED00004854474E45;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v54);

    *(v7 + 56) = &type metadata for String;
    v13 = sub_1000192D0();
    *(v7 + 64) = v13;
    *(v7 + 32) = v12;
    v15 = *v5;
    v14 = v5[1];
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v13;
    *(v7 + 72) = v15;
    *(v7 + 80) = v14;
    v16 = v5[5];
    v17 = v5[6];
    *(v7 + 136) = &type metadata for String;
    *(v7 + 144) = v13;
    *(v7 + 112) = v16;
    *(v7 + 120) = v17;
    v18 = v5[10];
    v19 = v5[11];
    *(v7 + 176) = &type metadata for String;
    *(v7 + 184) = v13;
    *(v7 + 152) = v18;
    *(v7 + 160) = v19;

    v20 = [v8 mainBundle];
    v55._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x575F5443454A424FLL;
    v21._object = 0xEC00000048544449;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v55);

    *(v7 + 216) = &type metadata for String;
    *(v7 + 224) = v13;
    *(v7 + 192) = v23;
    v25 = v5[15];
    v24 = v5[16];
    *(v7 + 256) = &type metadata for String;
    *(v7 + 264) = v13;
    *(v7 + 232) = v25;
    *(v7 + 240) = v24;
    v26 = v5[20];
    v27 = v5[21];
    *(v7 + 296) = &type metadata for String;
    *(v7 + 304) = v13;
    *(v7 + 272) = v26;
    *(v7 + 280) = v27;
    v28 = v5[25];
    v29 = v5[26];
    *(v7 + 336) = &type metadata for String;
    *(v7 + 344) = v13;
    *(v7 + 312) = v28;
    *(v7 + 320) = v29;

    v30 = [v8 mainBundle];
    v56._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0x485F5443454A424FLL;
    v31._object = 0xED00005448474945;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v56);

    *(v7 + 376) = &type metadata for String;
    *(v7 + 384) = v13;
    *(v7 + 352) = v33;
    v35 = v5[30];
    v34 = v5[31];
    *(v7 + 416) = &type metadata for String;
    *(v7 + 424) = v13;
    *(v7 + 392) = v35;
    *(v7 + 400) = v34;
    v36 = v5[35];
    v37 = v5[36];
    *(v7 + 456) = &type metadata for String;
    *(v7 + 464) = v13;
    *(v7 + 432) = v36;
    *(v7 + 440) = v37;
    v38 = v5[40];
    v39 = v5[41];
    *(v7 + 496) = &type metadata for String;
    *(v7 + 504) = v13;
    *(v7 + 472) = v38;
    *(v7 + 480) = v39;

    v40 = [v8 mainBundle];
    v57._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0x454D554C4F56;
    v41._object = 0xE600000000000000;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v57);

    *(v7 + 536) = &type metadata for String;
    *(v7 + 544) = v13;
    *(v7 + 512) = v43;
    v45 = v5[45];
    v44 = v5[46];
    *(v7 + 576) = &type metadata for String;
    *(v7 + 584) = v13;
    *(v7 + 552) = v45;
    *(v7 + 560) = v44;
    v46 = v5[55];
    v47 = v5[56];
    *(v7 + 616) = &type metadata for String;
    *(v7 + 624) = v13;
    *(v7 + 592) = v46;
    *(v7 + 600) = v47;

    v48._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v48);

    v49 = objc_allocWithZone(NSAttributedString);
    v50 = String._bridgeToObjectiveC()();

    v51 = [v49 initWithString:v50];

    [v52 appendAttributedString:v51];
    return v52;
  }

  return result;
}

uint64_t sub_1001A34B4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for MeasurementHistoryItem() + 28);
  memcpy(__dst, (a1 + v4), 0x346uLL);
  memcpy(v36, (a1 + v4), 0x346uLL);
  result = sub_1000218D8(v36);
  if (result == 2)
  {
    v6 = sub_10007CD94(v36);
    memcpy(v34, __dst, 0x346uLL);
    v7 = sub_10007CD94(v34);
    sub_1001A385C(v7, v33);
    v8 = IndexPath.item.getter();
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v29 = [objc_opt_self() mainBundle];
        v40._object = 0xE000000000000000;
        v30._countAndFlagsBits = 0xD000000000000016;
        v30._object = 0x800000010040BE10;
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v40._countAndFlagsBits = 0;
        v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v40);
        countAndFlagsBits = v32._countAndFlagsBits;
        object = v32._object;

        v16 = v6[75];
        v15 = v6[76];
        v17 = v6[80];
        v18 = v6[81];
        v19 = v6[85];
        v20 = v6[86];
        goto LABEL_13;
      }

      if (v8 == 3)
      {
        v21 = [objc_opt_self() mainBundle];
        v38._object = 0xE000000000000000;
        v22._countAndFlagsBits = 0xD000000000000017;
        v22._object = 0x800000010040BDF0;
        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        v38._countAndFlagsBits = 0;
        v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v38);
        countAndFlagsBits = v24._countAndFlagsBits;
        object = v24._object;

        v16 = v6[90];
        v15 = v6[91];
        v17 = v6[95];
        v18 = v6[96];
        v19 = v6[100];
        v20 = v6[101];
        goto LABEL_13;
      }
    }

    else
    {
      if (!v8)
      {
        v25 = [objc_opt_self() mainBundle];
        v39._object = 0xE000000000000000;
        v26._countAndFlagsBits = 0x454D554C4F56;
        v26._object = 0xE600000000000000;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        v39._countAndFlagsBits = 0;
        v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v39);
        countAndFlagsBits = v28._countAndFlagsBits;
        object = v28._object;

        v16 = v6[45];
        v15 = v6[46];
        v17 = v6[50];
        v18 = v6[51];
        v19 = v6[55];
        v20 = v6[56];
        goto LABEL_13;
      }

      if (v8 == 1)
      {
        v9 = [objc_opt_self() mainBundle];
        v37._object = 0xE000000000000000;
        v10._object = 0x800000010040BE30;
        v10._countAndFlagsBits = 0xD000000000000010;
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        v37._countAndFlagsBits = 0;
        v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v37);
        countAndFlagsBits = v12._countAndFlagsBits;
        object = v12._object;

        v16 = v6[60];
        v15 = v6[61];
        v17 = v6[65];
        v18 = v6[66];
        v19 = v6[70];
        v20 = v6[71];
LABEL_13:

        result = sub_100022028(__dst);
        goto LABEL_14;
      }
    }

    result = sub_100022028(__dst);
    countAndFlagsBits = 0;
    v16 = 0;
    v17 = 0;
    v19 = 0;
    object = 0xE000000000000000;
    v15 = 0xE000000000000000;
    v18 = 0xE000000000000000;
    v20 = 0xE000000000000000;
  }

  else
  {
    v20 = 0xE800000000000000;
    v19 = 0x7374696E75627573;
    v18 = 0xE700000000000000;
    v17 = 0x65736963657270;
    v15 = 0xEA00000000007374;
    v16 = 0x696E75206E69616DLL;
    object = 0xE500000000000000;
    countAndFlagsBits = 0x656C746954;
  }

LABEL_14:
  *a2 = countAndFlagsBits;
  a2[1] = object;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = v17;
  a2[7] = v18;
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = v19;
  a2[11] = v20;
  a2[12] = 0;
  a2[13] = 0;
  return result;
}

void sub_1001A3910()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_fullContentHeight) = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_numberOfRowsChangedCallback);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_minContentViewHeight) = 0x407AA00000000000;
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v5 = 88.0;
  if (v3)
  {
    v5 = 222.0;
  }

  *(v1 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableRowHeight) = v5;
  *(v1 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_numberOfRows) = 4;
  v6 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_sketchView;
  type metadata accessor for SketchObject();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_labelStrip;
  type metadata accessor for ObjectLabelStrip();
  *(v1 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableView;
  *(v1 + v8) = [objc_allocWithZone(UITableView) init];
  v9 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial__historyState;
  v10 = sub_10000F974(&unk_1004A6940);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D5058;
  v13 = *(v10 + 272);

  *(v1 + v9) = v13(KeyPath, v12);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001A3B30()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3B78()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3BC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3C08()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3C50()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3C98()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3CE0()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3D28()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3D70()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3DB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3E00()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3E48()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

Class sub_1001A3EB4(uint64_t a1)
{
  if (*(a1 + qword_1004AE680))
  {
    sub_100018630(0, &qword_1004A7550);

    v1.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  return v1.super.isa;
}

uint64_t sub_1001A3F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100018630(0, &qword_1004A7550);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(a1 + qword_1004AE680) = v4;
}

id sub_1001A3FAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3FF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4060()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A40A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A40F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4138()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4180()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A41C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4210()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4258()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A42A0()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A42E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4330()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1001A4378()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1001A43A4()
{
  v3 = v0;
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() nibWithNibName:v4 bundle:0];

  v6 = [v5 instantiateWithOwner:v3 options:0];
  v7 = &type metadata for Any;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8[2])
  {
    sub_10000FE60((v8 + 4), v144);

    sub_100018630(0, &qword_1004A7550);
    v9 = swift_dynamicCast();
    v10 = v143;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = qword_1004AE610;
    v12 = *&v3[qword_1004AE610];
    *&v3[qword_1004AE610] = v10;

    v13 = *&v3[v11];
    if (!v13)
    {
      goto LABEL_77;
    }

    v14 = v13;
    [v3 bounds];
    [v14 setFrame:?];

    if (!*&v3[v11])
    {
      goto LABEL_77;
    }

    [v3 addSubview:?];
    v15 = [objc_opt_self() sharedApplication];
    v16 = [v15 preferredContentSizeCategory];

    LOBYTE(v15) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v2 = &off_100494000;
    if (v15)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v18 = Strong;
      [Strong setConstant:50.0];

      v19 = swift_unknownObjectWeakLoadStrong();
      if (!v19)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v20 = v19;
      [v19 setConstant:69.5];
    }

    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    v21 = swift_unknownObjectWeakLoadStrong();
    if (!v21)
    {
      goto LABEL_78;
    }

    v22 = v21;
    v7 = objc_opt_self();
    v23 = [v7 systemFontOfSize:60.0 weight:UIFontWeightRegular];
    v1 = &selRef_runAction_completion_;
    [v22 setFont:v23];

    v24 = swift_unknownObjectWeakLoadStrong();
    if (!v24)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v8 = v24;
    if (qword_1004A0548 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_13:
  [v8 setTextColor:qword_1004D50B8];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v26 = v25;
  v27 = [v25 font];

  if (!v27)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v27 descender];
  v29 = v28;

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v31 = v30;
  v32 = [v30 font];

  if (!v32)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v32 leading];
  v34 = v33;

  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v36 = v35;
  [v35 v2[333]];

  v37 = swift_unknownObjectWeakLoadStrong();
  if (!v37)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v38 = v37;
  sub_10019FCB8();
  v40 = v39;
  v41 = [v7 fontWithDescriptor:v39 size:0.0];

  [v38 v1[511]];
  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v43 = v42;
  if (qword_1004A0550 != -1)
  {
    swift_once();
  }

  [v43 setTextColor:qword_1004D50C0];

  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
    goto LABEL_87;
  }

  v45 = v44;
  v46 = [v44 font];

  if (!v46)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  [v46 descender];
  v48 = v47;

  v49 = swift_unknownObjectWeakLoadStrong();
  if (!v49)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v50 = v49;
  v51 = [v49 font];

  if (!v51)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  [v51 leading];
  v53 = v52;

  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v55 = v54;
  [v54 v2[333]];

  v56 = swift_unknownObjectWeakLoadStrong();
  if (!v56)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v57 = v56;
  sub_10019FCB8();
  v59 = v58;
  v60 = [v7 fontWithDescriptor:v58 size:0.0];

  [v57 v1[511]];
  v61 = swift_unknownObjectWeakLoadStrong();
  if (!v61)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v62 = v61;
  [v61 setTextColor:qword_1004D50C0];

  v63 = swift_unknownObjectWeakLoadStrong();
  if (!v63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v64 = v63;
  sub_10019FCB8();
  v66 = v65;
  v67 = [v7 fontWithDescriptor:v65 size:0.0];

  [v64 v1[511]];
  v68 = swift_unknownObjectWeakLoadStrong();
  if (!v68)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v69 = v68;
  [v68 setTextColor:qword_1004D50C0];

  v70 = swift_unknownObjectWeakLoadStrong();
  if (!v70)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v71 = v70;
  [v70 setAdjustsFontForContentSizeCategory:0];

  v72 = swift_unknownObjectWeakLoadStrong();
  if (!v72)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v73 = v72;
  [v72 setAdjustsFontSizeToFitWidth:0];

  v74 = swift_unknownObjectWeakLoadStrong();
  if (!v74)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v75 = v74;
  sub_10019FCB8();
  v77 = v76;
  v78 = [v7 fontWithDescriptor:v76 size:0.0];

  [v75 setFont:v78];
  v79 = swift_unknownObjectWeakLoadStrong();
  if (!v79)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v80 = v79;
  [v79 setTextColor:qword_1004D50C0];

  v81 = swift_unknownObjectWeakLoadStrong();
  if (!v81)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v82 = v81;
  [v81 setAdjustsFontForContentSizeCategory:0];

  v83 = swift_unknownObjectWeakLoadStrong();
  if (!v83)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v84 = v83;
  [v83 setAdjustsFontSizeToFitWidth:0];

  v85 = swift_unknownObjectWeakLoadStrong();
  if (!v85)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v86 = v85;
  v87 = swift_unknownObjectWeakLoadStrong();
  if (!v87)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v88 = v87;
  [v87 bounds];
  v90 = v89;

  v91 = swift_unknownObjectWeakLoadStrong();
  if (!v91)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v92 = v91;
  v93 = [v91 font];

  if (!v93)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v94 = v90 * 0.5;
  [v93 leading];
  v96 = v95;

  [v86 setConstant:v94 - v96 * 0.5];
  v97 = swift_unknownObjectWeakLoadStrong();
  if (!v97)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v98 = v97;
  v99 = swift_unknownObjectWeakLoadStrong();
  if (!v99)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v100 = v99;
  [v99 bounds];
  v102 = v101;

  v103 = swift_unknownObjectWeakLoadStrong();
  if (!v103)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v104 = v103;
  v105 = [v103 font];

  if (!v105)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v106 = v102 * 0.5;
  [v105 leading];
  v108 = v107;

  [v98 setConstant:v106 - v108 * 0.5];
  v109 = objc_allocWithZone(type metadata accessor for PlatterCopyButton());
  v110 = sub_1001A14D0();
  v111 = qword_1004AE690;
  v112 = *&v3[qword_1004AE690];
  *&v3[qword_1004AE690] = v110;

  v113 = *&v3[v111];
  if (v113)
  {
    v114 = objc_opt_self();
    v115 = v113;
    v116 = [v114 mainBundle];
    v145._object = 0xE000000000000000;
    v117._object = 0x8000000100404380;
    v117._countAndFlagsBits = 0xD000000000000010;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    v145._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v117, 0, v116, v118, v145);

    v119 = String._bridgeToObjectiveC()();

    [v115 setTitle:v119 forState:0];

    v120 = *&v3[v111];
    if (v120)
    {
      v121 = objc_opt_self();
      v122 = v120;
      v123 = [v121 whiteColor];
      [v122 setTitleColor:v123 forState:0];
    }
  }

  v124 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
  v125 = *&v3[v111];
  if (v125)
  {
    v126 = [v125 titleLabel];
    if (v126)
    {
      v127 = v126;
      v128 = [v7 preferredFontForTextStyle:UIFontTextStyleHeadline];
      v129 = [v128 fontDescriptor];

      v130 = [v129 fontDescriptorWithSymbolicTraits:2];
      if (!v130)
      {
LABEL_116:
        __break(1u);
        return;
      }

      v131 = [v7 fontWithDescriptor:v130 size:0.0];

      v132 = [v124 scaledFontForFont:v131 maximumPointSize:28.0];
      [v127 setFont:v132];
    }

    v133 = *&v3[v111];
    if (v133)
    {
      [v133 addTarget:v3 action:"copyMeasurement:" forControlEvents:64];
    }
  }

  v134 = swift_unknownObjectWeakLoadStrong();
  if (!v134)
  {
    goto LABEL_110;
  }

  if (!*&v3[v111])
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v135 = v134;
  [v134 addSubview:?];

  v136 = *&v3[qword_1004AE680];
  if (!v136)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v136 >> 62)
  {
    v137 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v137 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v137)
  {
    goto LABEL_69;
  }

  if (v137 < 1)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  for (i = 0; i != v137; ++i)
  {
    if ((v136 & 0xC000000000000001) != 0)
    {
      v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v139 = *(v136 + 8 * i + 32);
    }

    v140 = v139;
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v140 setBackgroundColor:qword_1004D50C8];
  }

LABEL_69:
  v141 = swift_unknownObjectWeakLoadStrong();
  if (!v141)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v142 = v141;
  if (qword_1004A0558 != -1)
  {
    swift_once();
  }

  [v142 setBackgroundColor:qword_1004D50C8];

  [v3 setAlpha:0.0];
  sub_100092530();
  sub_1000DB8D4();
  sub_1001A512C();
}

void sub_1001A512C()
{
  v1 = v0;
  v2 = *&v0[qword_1004AE610];
  if (!v2)
  {
    return;
  }

  v3 = *&v1[qword_1004AE690];
  if (!v3)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = v3;
  v7 = v2;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = v6;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v55 = v7;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10000F974(&unk_1004A3F10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003DE030;
  v12 = [v8 centerXAnchor];
  v13 = [v5 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v11 + 32) = v14;
  v15 = [v8 centerYAnchor];
  v16 = [v5 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v11 + 40) = v17;
  v18 = [v8 leadingAnchor];
  v19 = [v5 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 48) = v20;
  v21 = [v8 trailingAnchor];

  v22 = [v5 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 56) = v23;
  v24 = [v5 leadingAnchor];
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = v25;
  v27 = [v25 leadingAnchor];

  v28 = [v24 constraintEqualToAnchor:v27 constant:28.0];
  *(v11 + 64) = v28;
  v29 = [v5 trailingAnchor];
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor:v32 constant:-28.0];
  *(v11 + 72) = v33;
  v34 = [v5 topAnchor];
  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = [v34 constraintEqualToAnchor:v37 constant:28.0];
  *(v11 + 80) = v38;
  v39 = [v5 bottomAnchor];
  v40 = [v1 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-28.0];

  *(v11 + 88) = v41;
  v42 = [v1 topAnchor];
  v43 = [v55 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v11 + 96) = v44;
  v45 = [v1 bottomAnchor];
  v46 = [v55 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v11 + 104) = v47;
  v48 = [v1 leadingAnchor];
  v49 = [v55 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v11 + 112) = v50;
  v51 = [v1 trailingAnchor];
  v52 = [v55 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v11 + 120) = v53;
  v54 = objc_opt_self();
  sub_100018630(0, &qword_1004A1838);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v54 activateConstraints:isa];
}

void sub_1001A57A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_31;
  }

  v2 = Strong;
  if (qword_1004A0548 != -1)
  {
    swift_once();
  }

  [v2 setTextColor:qword_1004D50B8];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = v3;
  if (qword_1004A0550 != -1)
  {
    swift_once();
  }

  [v4 setTextColor:qword_1004D50C0];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = v5;
  [v5 setTextColor:qword_1004D50C0];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = v7;
  [v7 setTextColor:qword_1004D50C0];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = v9;
  [v9 setTextColor:qword_1004D50C0];

  v11 = *(v0 + qword_1004AE680);
  if (!v11)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12 < 1)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v15 setBackgroundColor:qword_1004D50C8];
  }

LABEL_23:
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v17 = v16;
  if (qword_1004A0558 != -1)
  {
    swift_once();
    v16 = v17;
  }

  [v16 setBackgroundColor:qword_1004D50C8];
}

void sub_1001A5A88(void *a1)
{
  v3 = [a1 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"close"];
  [v3 setRightBarButtonItem:v4];

  v5 = [objc_allocWithZone(UILabel) init];
  v6 = [objc_opt_self() whiteColor];
  [v5 setTextColor:v6];

  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle:UIFontTextStyleHeadline];
  v10 = [v9 fontDescriptor];

  v11 = [v10 fontDescriptorWithSymbolicTraits:2];
  if (v11)
  {
    v12 = [v8 fontWithDescriptor:v11 size:0.0];

    v13 = [v7 scaledFontForFont:v12 maximumPointSize:28.0];
    [v5 setFont:v13];

    v14 = [objc_opt_self() mainBundle];
    v20._object = 0xE000000000000000;
    v15._object = 0x800000010040C6A0;
    v15._countAndFlagsBits = 0xD000000000000022;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20);

    v17 = String._bridgeToObjectiveC()();

    [v5 setText:v17];

    v18 = [a1 navigationItem];
    [v18 setTitleView:v5];
  }

  else
  {
    __break(1u);
  }
}

void *sub_1001A5D6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[qword_1004AE610] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v5[qword_1004AE680] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_1004AE690] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = &v5[qword_1004AE700];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v5[qword_1004AE708];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v5[qword_1004AE710];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v5[qword_1004AE718];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v5[qword_1004AE720] = 0x4038000000000000;
  *&v5[qword_1004AE728] = 1136361472;
  *&v5[qword_1004AE730] = 0x403C000000000000;
  *&v5[qword_1004A5B30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = &v5[qword_1004A5B40];
  *v15 = a4;
  v15[1] = a5;
  v16 = &v5[qword_1004A5B38];
  *v16 = a2;
  *(v16 + 1) = a3;
  sub_100038EBC(a4);
  v21.receiver = v5;
  v21.super_class = type metadata accessor for GenericPlatter();
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v18 = *((swift_isaMask & *v17) + 0x138);
  v19 = v17;
  v18();
  sub_1000223C4(a4);

  return v19;
}

id sub_1001A6150(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1004AE610] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[qword_1004AE680] = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_1004AE690] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v1[qword_1004AE700];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v1[qword_1004AE708];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v1[qword_1004AE710];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = &v1[qword_1004AE718];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *&v1[qword_1004AE720] = 0x4038000000000000;
  *&v1[qword_1004AE728] = 1136361472;
  *&v1[qword_1004AE730] = 0x403C000000000000;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1001A64A0()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
}

uint64_t sub_1001A66F0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RectangleLabelDetailsPlatter()
{
  result = qword_1004AE760;
  if (!qword_1004AE760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001A6A5C()
{
  v1 = v0 + qword_1004A5B30;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v24 = [objc_opt_self() generalPasteboard];
  v4 = [objc_opt_self() mainBundle];
  v25._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4C414E4F47414944;
  v5._object = 0xE800000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v25);

  sub_10000F974(&unk_1004AF710);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1003D8D20;
  v10 = *(v0 + qword_1004AE700);
  v9 = *(v0 + qword_1004AE700 + 8);
  *(v8 + 56) = &type metadata for String;
  v11 = sub_1000192D0();
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  v12 = *(v0 + qword_1004AE708);
  v13 = *(v0 + qword_1004AE708 + 8);
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v11;
  *(v8 + 64) = v11;
  *(v8 + 72) = v12;
  *(v8 + 80) = v13;
  v14 = *(v0 + qword_1004AE710);
  v15 = *(v0 + qword_1004AE710 + 8);
  *(v8 + 136) = &type metadata for String;
  *(v8 + 144) = v11;
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  v16 = *(v0 + qword_1004AE718);
  v17 = *(v0 + qword_1004AE718 + 8);
  *(v8 + 176) = &type metadata for String;
  *(v8 + 184) = v11;
  *(v8 + 152) = v16;
  *(v8 + 160) = v17;
  *(v8 + 216) = &type metadata for String;
  *(v8 + 224) = v11;
  *(v8 + 192) = v7;

  String.init(format:_:)();
  v18 = String._bridgeToObjectiveC()();

  [v24 setString:v18];

  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v1 + 8);
    v20 = swift_getObjectType();
    (*(v19 + 24))(v20, v19);
    swift_unknownObjectRelease();
  }

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v21 = qword_1004D4F08;

  v22 = v21 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  result = *(v22 + 56) + 1.0;
  *(v22 + 56) = result;
  return result;
}

uint64_t sub_1001A6DA8()
{
  result = Contexts.UIKit.init()();
  qword_1004D5410 = result;
  return result;
}

id sub_1001A6DC8@<X0>(void *a1@<X8>)
{
  if (qword_1004A0818 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D5410;
  *a1 = qword_1004D5410;

  return v2;
}

unint64_t sub_1001A6E38(uint64_t a1)
{
  result = sub_1001A6E60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001A6E60()
{
  result = qword_1004AEA48;
  if (!qword_1004AEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEA48);
  }

  return result;
}

void sub_1001A6EB4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1001A7118();
}

uint64_t sub_1001A6F2C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = qword_1004AEA50;
  sub_10000F974(&unk_1004AEBF0);
  swift_getKeyPath();
  *&v3[v4] = MutableStateValue.__allocating_init(_:_:)();
  sub_1000336B4(a1, v7);
  v5 = StateObservingNSObject.init(configuration:)();
  sub_10000FF00(a1);
  return v5;
}

id sub_1001A6FD4(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = qword_1004AEA50;
  sub_10000F974(&unk_1004AEBF0);
  swift_getKeyPath();
  *&a1[v3] = MutableStateValue.__allocating_init(_:_:)();
  v5.receiver = a1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t type metadata accessor for TabBarControllerDelegate()
{
  result = qword_1004AEAE0;
  if (!qword_1004AEAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A7118()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = 0xD000000000000018;
    v2 = *(**(v0 + qword_1004AEA50) + 400);

    v3 = v2(v12);
    *(v4 + 1) = 1;
    v3(v12, 0);

    v5 = qword_1004A0280;
    v6 = "App will switch to Level";
  }

  else
  {
    type metadata accessor for ViewController();
    if (!swift_dynamicCastClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        return;
      }
    }

    v7 = *(**(v0 + qword_1004AEA50) + 400);

    v8 = v7(v12);
    *(v9 + 1) = 0;
    v8(v12, 0);

    v5 = qword_1004A0280;
    v1 = 0xD00000000000001ALL;
    v6 = "App will switch to Measure";
  }

  v10 = v6 - 32;
  if (v5 != -1)
  {
    swift_once();
  }

  v11._object = (v10 | 0x8000000000000000);
  v11._countAndFlagsBits = v1;
  Log.debug(_:isPrivate:)(v11, 0);
}

void sub_1001A72FC(unint64_t a1, uint64_t a2)
{
  v13 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1001CA5D4();
      v8 = swift_modifyAtWritableKeyPath();
      v10 = sub_1000550C8(v6, *v9);
      if ((v11 & 1) == 0)
      {
      }

      v8(v12, 0);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1001A7448(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = sub_1000A527C(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1001AD148(v8, v2, v3, v4);
  sub_10000FF00(a1);
  return v10;
}

uint64_t sub_1001A7578()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  __chkstk_darwin(v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  v12 = sub_1001AD574;
  v13 = v0;

  StateValue.ifUpdated(_:)();

  sub_10004D9B4();
  v7 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1001AD5A4;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100471CA0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001AD700(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

void sub_1001A78FC(uint64_t a1, uint64_t a2)
{
  sub_1001A7C30();
  sub_1001A7ED4();
  v3 = *(**(a2 + 120) + 144);

  v3(v21, v4);

  v5 = v21[0];
  if (!(v21[0] >> 62))
  {
    sub_1001A81A0();
LABEL_21:
    sub_10001B360(v5);
    return;
  }

  if (v21[0] >> 62 != 2 || (v21[0] | 8) != 0x8000000000000008)
  {
    goto LABEL_21;
  }

  v7 = *(**(a2 + 112) + 144);

  v7(v21, v8);

  v9 = sub_1001C9E48(v21[0], v21[1]);

  v21[0] = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ((*((swift_isaMask & *v12) + 0xD0))() == 9)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v11;
        if (v14 == i)
        {
          v15 = v21[0];
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_24:

    if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
    {
      v9 = *(v15 + 16);
      if (!v9)
      {
        break;
      }

      goto LABEL_27;
    }

    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      break;
    }

LABEL_27:
    v16 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v15 + 16))
        {
          goto LABEL_38;
        }

        v17 = *(v15 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = (*((swift_isaMask & *v17) + 0x160))();
      v20();

      ++v16;
      if (v19 == v9)
      {
        goto LABEL_41;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_41:
}

uint64_t sub_1001A7C30()
{
  v1 = *(**(v0 + 104) + 144);

  v1(__dst, v2);

  v23[0] = __dst[0];
  v23[1] = __dst[1];
  v23[2] = __dst[2];
  v24 = __dst[3].i64[0];
  v3 = *(v0 + 168);
  v21[0] = *(v0 + 152);
  v21[1] = v3;
  v21[2] = *(v0 + 184);
  v22 = *(v0 + 200);
  sub_1001AD5C4(v21, __dst);
  v4 = sub_10008EAE0(v21);
  sub_1001AD634(v21);
  sub_1001AD69C(v23);
  v5 = *(v4 + 2);
  if (v5)
  {

    v6 = 0;
    while (v6 < *(v4 + 2))
    {
      v7 = v6 + 1;
      sub_1001A9F84(*(v4 + v6 + 32));
      v6 = v7;
      if (v5 == v7)
      {

        v8 = *(**(v0 + 104) + 144);

        v8(__dst, v9);

        v10 = __dst[0];
        v12 = __dst[1].i64[1];
        v11 = __dst[1].i64[0];
        v13 = __dst[2].u32[0];
        v14 = *(&__dst[2] + 8);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    if (qword_1004A0180 == -1)
    {
      goto LABEL_7;
    }
  }

  result = swift_once();
LABEL_7:
  if (qword_1004D4B08)
  {

    StateValue.wrappedValue.getter();

    memcpy(__dst, v19, sizeof(__dst));
    sub_1000F673C(_swiftEmptyArrayStorage, __dst);
    sub_100013C4C(__dst);

    sub_1001A923C();
    sub_1001A9A34();
    sub_1001A9E40();
    v16 = *(**(v0 + 104) + 144);

    v16(v19, v17);

    v10 = v19[0];
    v12 = *(&v19[1] + 1);
    v11 = *&v19[1];
    v13 = v19[2];
    v14 = *(&v19[2] + 8);
LABEL_9:
    v18 = *(v0 + 152);
    *(v0 + 152) = v10;
    *(v0 + 168) = v11;
    *(v0 + 176) = v12;
    *(v0 + 184) = v13;
    *(v0 + 192) = v14;
    return sub_1001A91F0(v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A7ED4()
{
  v1 = v0;
  v2 = *(**(v0 + 112) + 144);

  v2(&v22, v3);

  v4 = sub_1001C98F0();

  if (v4)
  {
    v5 = *(**(v0 + 96) + 144);

    v5(&v22, v6);

    v8 = v22;
    v7 = v23;

    if (!v7)
    {
      v15 = *(v1 + 120);
      v16 = 0x8000000000000000;
LABEL_14:
      v22 = v16;
      v21 = *(*v15 + 392);

      v21(&v22);

      return;
    }
  }

  v9 = *(**(v1 + 120) + 144);

  v9(&v22, v10);

  if ((v22 >> 62) <= 1)
  {
    sub_10001B360(v22);
    return;
  }

  if (v22 == 0x8000000000000000)
  {
    v11 = *(**(v1 + 96) + 144);

    v11(&v22, v12);

    v14 = v22;
    v13 = v23;

    if (v13)
    {

LABEL_13:
      v15 = *(v1 + 120);
      v16 = 0x8000000000000008;
      goto LABEL_14;
    }

    v17 = *(**(v1 + 112) + 144);

    v17(&v22, v18);

    v19 = sub_1001C9E48(v22, v23);

    if (v19 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      goto LABEL_13;
    }
  }
}