uint64_t sub_1006480A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.default.getter();
  v12 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v11))
  {
    v26 = v12;
    v13 = swift_slowAlloc();
    v28 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v7;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    v17 = _typeName(_:qualified:)();
    v19 = a2;
    v20 = sub_10000AFDC(v17, v18, aBlock);

    *(v14 + 4) = v20;
    a2 = v19;
    v21 = v26;
    _os_log_impl(&_mh_execute_header, v26, v11, "%s received object will change", v14, 0xCu);
    sub_100005A40(v16);
    v7 = v27;

    v4 = v28;
  }

  sub_1000078CC();
  v22 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100648DD4;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100865FF8;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100648DDC(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_100648434()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong tableView];

    if (v2)
    {
      [v2 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_100648664(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  [v5 setSelectionStyle:0];
  type metadata accessor for WorkoutsListTableViewCell();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController_dataProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v5;
  static Published.subscript.getter();

  v37[3] = v35;
  v38[0] = *v36;
  v37[1] = v33;
  v37[2] = v34;
  *(v38 + 9) = *&v36[9];
  v37[0] = v32;

  sub_100319D40(v37);
  result = IndexPath.row.getter();
  v31 = v9;
  if ((*v36 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(*v36 + 8 * result + 32);
LABEL_6:
    v12 = v11;

    v13 = [objc_opt_self() clearColor];
    v14 = OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView;
    [*(*(v7 + OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView) + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_insetContentView) setBackgroundColor:v13];

    [*(*(*(v7 + v14) + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView) + OBJC_IVAR___CHWorkoutCellImageLabelView_separatorView) setHidden:0];
    v15 = *(v8 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fitnessAppContext);
    v16 = *(v8 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_workoutFormattingManager);
    v17 = *(v7 + v14);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = v18;
    v20 = *&v17[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
    *&v17[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = v12;
    v30 = v12;
    v21 = v15;
    v22 = v16;

    *&v17[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = 0;
    v23 = *&v17[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
    *&v17[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = v22;
    v24 = v22;

    v17[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 0;
    v25 = *&v17[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
    v26 = *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
    *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = v12;

    v27 = *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
    *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = v21;
    v28 = v21;

    v29 = *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
    *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = v22;

    *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = 0;
    *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 0;
    sub_100697158(sub_100175B38, v19);
    sub_100698004();
    [v17 configureWithCurrentWorkout];

    return v5;
  }

  __break(1u);
  return result;
}

id sub_100648BA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingFriendDetailWorkoutListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100648C48@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *&v8[1] = *&v7[9];
  *v8 = *&v7[8];
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = *v7;
  *(a1 + 73) = *&v8[1];
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100648D04(_OWORD *a1)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v10[0] = a1[4];
  *(v10 + 9) = *(a1 + 73);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[3];
  v7[8] = a1[2];
  v7[9] = v4;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v5 = a1[1];
  v7[6] = *a1;
  v7[7] = v5;

  sub_1002F7A50(v9, v7);
  return static Published.subscript.setter();
}

uint64_t sub_100648DDC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100648E24(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = &v4[OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_text];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_insets];
  *v11 = 0x4000000000000000;
  __asm { FMOV            V0.2D, #6.0 }

  *(v11 + 8) = _Q0;
  *(v11 + 3) = 0x4000000000000000;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for PillLabelView();
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label;
  v19 = *&v17[OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label];
  v20 = v17;
  [v20 addSubview:v19];
  v21 = [v20 layer];
  [v21 setCornerRadius:4.0];

  v22 = objc_opt_self();
  v23 = [v22 whiteColor];
  [v20 setBackgroundColor:v23];

  v24 = *&v17[v18];
  v25 = [v22 blackColor];
  [v24 setTextColor:v25];

  v26 = *&v17[v18];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v28 setFont:v29];

  return v20;
}

char *sub_1006492FC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_longPressRecognizer;
  *&v4[v9] = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:0 action:0];
  v10 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_lineView;
  *&v4[v10] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_labelView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for PillLabelView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = [objc_opt_self() energyColors];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_colors] = result;
    *&v4[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_dataSource + 8] = 0;
    swift_unknownObjectWeakInit();
    v13 = &v4[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_currentData];
    v14 = type metadata accessor for ChartValueGesturalOverlayView();
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *v13 = 0;
    v26.receiver = v4;
    v26.super_class = v14;
    v15 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
    v16 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_longPressRecognizer;
    v17 = *&v15[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_longPressRecognizer];
    v18 = v15;
    [v17 addTarget:v18 action:"gestureDidChangeWithSender:"];
    [*&v15[v16] setMinimumPressDuration:0.1];
    [v18 addGestureRecognizer:*&v15[v16]];
    v19 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_lineView;
    [*&v18[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_lineView] setAlpha:0.0];
    v20 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_labelView;
    [*&v18[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_labelView] setAlpha:0.0];
    v21 = *&v18[v19];
    v22 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_colors;
    v23 = [*&v18[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_colors] gradientLightColor];
    [v21 setBackgroundColor:v23];

    v24 = *&v18[v20];
    v25 = [*&v18[v22] gradientDarkColor];
    [v24 setBackgroundColor:v25];

    [v18 addSubview:*&v18[v19]];
    [v18 addSubview:*&v18[v20]];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006495B8(void *a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_longPressRecognizer;
  *(v1 + v3) = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:0 action:0];
  v4 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_lineView;
  *(v1 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_labelView;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for PillLabelView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = [objc_opt_self() energyColors];
  if (result)
  {
    v7 = result;

    v8 = OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_colors;
    *(v1 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_colors) = v7;
    v9 = v1 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_dataSource;
    *(v1 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_dataSource + 8) = 0;
    swift_unknownObjectWeakInit();
    v10 = (v1 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_currentData);
    v10[1] = 0;
    v10[2] = 0;
    *v10 = 0;

    sub_1000A7304(v9);

    type metadata accessor for ChartValueGesturalOverlayView();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100649764()
{
  v1 = &v0[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_currentData];
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_currentData + 16];
  if (v2)
  {
    v3 = *(v1 + 1);
    v4 = *v1;
    v5 = *&v0[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_labelView];
    v6 = &v5[OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_text];
    *v6 = v3;
    *(v6 + 1) = v2;
    swift_bridgeObjectRetain_n();

    v7 = *&v5[OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label];

    v8 = String._bridgeToObjectiveC()();

    [v7 setText:v8];

    [v5 setNeedsLayout];
    [v5 invalidateIntrinsicContentSize];
    [v5 sizeToFit];
    [*&v0[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_lineView] alpha];
    if (v9 >= 1.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v0;
    *(v12 + 32) = v4;
    *(v12 + 40) = v3;
    *(v12 + 48) = v2;
    v22 = sub_10064A150;
    v23 = v12;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1000449A8;
    v21 = &unk_100866118;
    v13 = _Block_copy(&v18);
    v14 = v0;

    [v11 animateKeyframesWithDuration:0 delay:v13 options:0 animations:0.1 completion:0.0];
  }

  else
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    v22 = sub_10064A148;
    v23 = v16;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1000449A8;
    v21 = &unk_1008660C8;
    v13 = _Block_copy(&v18);
    v17 = v0;

    [v15 animateWithDuration:v13 animations:0.1];
  }

  _Block_release(v13);
}

void sub_100649A20(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a5;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v21 = sub_10064A164;
  v22 = v11;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000449A8;
  v20 = &unk_100866168;
  v12 = _Block_copy(&v17);
  v13 = a1;

  [v10 addKeyframeWithRelativeStartTime:v12 relativeDuration:0.0 animations:a4];
  _Block_release(v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v21 = sub_10064A174;
  v22 = v14;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000449A8;
  v20 = &unk_1008661B8;
  v15 = _Block_copy(&v17);
  v16 = v13;

  [v10 addKeyframeWithRelativeStartTime:v15 relativeDuration:0.0 animations:1.0];
  _Block_release(v15);
}

void sub_100649BE8(char *a1, double a2)
{
  v4 = *&a1[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_lineView];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v5 = *&qword_100925B90;
  [a1 bounds];
  [v4 setFrame:{a2, 0.0, v5, CGRectGetHeight(v26)}];
  v6 = *&a1[OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_labelView];
  [v6 frame];
  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  [v6 setCenter:{a2, -v7}];
  [a1 bounds];
  v8 = CGRectGetMinX(v27) + -8.0;
  [a1 bounds];
  MaxX = CGRectGetMaxX(v28);
  [v6 frame];
  MinX = CGRectGetMinX(v29);
  [v6 frame];
  if (MinX >= v8)
  {
    v8 = MaxX + 8.0;
    if (MaxX + 8.0 >= CGRectGetMaxX(*&v11))
    {
      return;
    }

    [v6 frame];
    v18 = v20;
    v17 = v21;
    v16 = v22;
    v15 = v23;
    [v6 frame];
    v19 = CGRectGetMaxX(v31);
  }

  else
  {
    v15 = v14;
    v16 = v13;
    v17 = v12;
    v18 = v11;
    [v6 frame];
    v19 = CGRectGetMinX(v30);
  }

  v24 = v8 - v19;
  v32.origin.x = v18;
  v32.origin.y = v17;
  v32.size.width = v16;
  v32.size.height = v15;
  v33 = CGRectOffset(v32, v24, 0.0);

  [v6 setFrame:{v33.origin.x, v33.origin.y, v33.size.width, v33.size.height}];
}

uint64_t sub_100649E38(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = *(v3 + 8);
  [a1 locationInView:v1];
  v7 = v6;
  v9 = v8;
  v10 = [a1 state];
  if ((v10 - 3) >= 3)
  {
    if ((v10 - 1) >= 2)
    {
      if (v10)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      goto LABEL_8;
    }

    ObjectType = swift_getObjectType();
    v13 = (*(v5 + 8))(v1, ObjectType, v5, v7, v9);
    v14 = (v1 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_currentData);
    *v14 = v13;
    v14[1] = v15;
    v14[2] = v16;
  }

  else
  {
    v11 = (v1 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_currentData);
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  sub_100649764();
LABEL_8:

  return swift_unknownObjectRelease();
}

id sub_10064A04C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10064A17C(double a1)
{
  v3 = *(v1 + 16);
  [*(v3 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_lineView) setAlpha:?];
  v4 = *(v3 + OBJC_IVAR____TtC10FitnessApp29ChartValueGesturalOverlayView_labelView);

  return [v4 setAlpha:a1];
}

id sub_10064A1F8()
{
  v1 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_timeObserverToken;
  swift_beginAccess();
  sub_10001B104(&v0[v1], &v7, &qword_1008E51F0);
  if (v8)
  {
    sub_1001AA76C(&v7, &v9);
    v2 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player;
    swift_beginAccess();
    v3 = *&v0[v2];
    if (v3)
    {
      swift_endAccess();
      sub_1000066AC(&v9, v10);
      v4 = v3;
      [v4 removeTimeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(&v9);
    }

    else
    {
      sub_100005A40(&v9);
      swift_endAccess();
    }
  }

  else
  {
    sub_10000EA04(&v7, &qword_1008E51F0);
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for RingCelebrationViewController();
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t type metadata accessor for RingCelebrationViewController()
{
  result = qword_1008F7828;
  if (!qword_1008F7828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10064A494()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v102 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v102 - v10;
  v12 = type metadata accessor for RingCelebrationViewController();
  v114.receiver = v0;
  v114.super_class = v12;
  objc_msgSendSuper2(&v114, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = result;
  v15 = [objc_opt_self() blackColor];
  [v14 setBackgroundColor:v15];

  result = [objc_opt_self() celebrationMovieURLForGoalType:1];
  if (!result)
  {
    return result;
  }

  v16 = result;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 32))(v11, v8, v5);
  v17 = *(v6 + 16);
  v103 = v11;
  v17(v4, v11, v5);
  v104 = v6;
  v105 = v5;
  (*(v6 + 56))(v4, 0, 1, v5);
  v18 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_url;
  swift_beginAccess();
  sub_100060E68(v4, &v1[v18], &unk_1008EB5B0);
  swift_endAccess();
  [v1 configurePlayer];
  v19 = *&v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_titleLabel];
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [v19 setText:v23];
  [v19 setTextAlignment:1];
  v107 = v19;
  [v19 setNumberOfLines:0];
  v24 = *&v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_subtitleLabel];
  v25 = [v20 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  [v24 setText:v27];
  [v24 setTextAlignment:1];
  [v24 setNumberOfLines:0];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_26;
  }

  v28 = result;
  v29 = *&v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_containerView];
  [result addSubview:v29];

  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v30 = result;
  [result addSubview:v107];

  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = result;
  [result addSubview:v24];

  v32 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v32 _scaledValueForValue:-40.0];
  v34 = v33;

  v35 = [v24 lastBaselineAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = result;
  v106 = v24;
  v37 = [result safeAreaLayoutGuide];

  v38 = [v37 bottomAnchor];
  v39 = [v35 constraintEqualToAnchor:v38 constant:v34];

  v40 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_bottomLabelConstraint;
  v41 = *&v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_bottomLabelConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_bottomLabelConstraint] = v39;

  sub_100140278(&unk_1008E4E20);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1006E41A0;
  v43 = [v29 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = result;
  v102 = v40;
  v45 = [result topAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v42 + 32) = v46;
  v47 = [v29 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v48 = result;
  v49 = [result leadingAnchor];

  v50 = [v47 constraintEqualToAnchor:v49];
  *(v42 + 40) = v50;
  v51 = [v29 trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v52 = result;
  v53 = [result trailingAnchor];

  v54 = [v51 constraintEqualToAnchor:v53];
  *(v42 + 48) = v54;
  v55 = [v29 bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v56 = result;
  v57 = [result bottomAnchor];

  v58 = [v55 constraintEqualToAnchor:v57];
  *(v42 + 56) = v58;
  v59 = v107;
  v60 = [v107 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v61 = result;
  v62 = [result leadingAnchor];

  v63 = [v60 constraintEqualToAnchor:v62 constant:16.0];
  *(v42 + 64) = v63;
  v64 = [v59 trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v65 = result;
  v66 = [result trailingAnchor];

  v67 = [v64 constraintEqualToAnchor:v66 constant:-16.0];
  *(v42 + 72) = v67;
  v68 = [v59 bottomAnchor];
  v69 = v106;
  v70 = [v106 topAnchor];
  v71 = [v68 constraintEqualToAnchor:v70];

  *(v42 + 80) = v71;
  v72 = [v69 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v73 = result;
  v74 = [result leadingAnchor];

  v75 = [v72 constraintEqualToAnchor:v74 constant:16.0];
  *(v42 + 88) = v75;
  v76 = [v69 trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v77 = result;
  v78 = objc_opt_self();
  v79 = [v77 trailingAnchor];

  v80 = [v76 constraintEqualToAnchor:v79];
  v81 = *&v1[v102];
  *(v42 + 96) = v80;
  *(v42 + 104) = v81;
  sub_1000059F8(0, &qword_1008DC980);
  v82 = v81;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v78 activateConstraints:isa];

  v84 = objc_opt_self();
  v85 = [v84 defaultCenter];
  [v85 addObserver:v1 selector:"textSizeChangedWithNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v86 = [v84 defaultCenter];
  [v86 addObserver:v1 selector:"appWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];

  v87 = [v84 defaultCenter];
  v88 = objc_opt_self();
  v89 = [v88 mainQueue];
  v90 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = sub_10064DAE4;
  v113 = v90;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_100026F8C;
  v111 = &unk_100866500;
  v91 = _Block_copy(&aBlock);

  v92 = [v87 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v89 usingBlock:v91];
  _Block_release(v91);
  swift_unknownObjectRelease();

  v93 = [v84 defaultCenter];
  v94 = [v88 mainQueue];
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = sub_10064DAEC;
  v113 = v95;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_100026F8C;
  v111 = &unk_100866528;
  v96 = _Block_copy(&aBlock);

  v97 = [v93 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v94 usingBlock:v96];
  _Block_release(v96);
  swift_unknownObjectRelease();

  if (v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_shouldIncludeIntroFade] != 1)
  {
    [v107 setAlpha:0.0];
    [v106 setAlpha:0.0];
    v99 = v104;
    v98 = v105;
    v100 = v103;
    return (*(v99 + 8))(v100, v98);
  }

  result = [v1 view];
  v99 = v104;
  v98 = v105;
  v100 = v103;
  if (!result)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v101 = result;
  [result setAlpha:0.0];

  return (*(v99 + 8))(v100, v98);
}

void sub_10064B2E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong configurePlayer];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player;
    v4 = v2;
    swift_beginAccess();
    v5 = *&v4[v3];

    [v5 play];
  }
}

void sub_10064B3A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong teardownPlayer];
  }
}

void sub_10064B4EC(char a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for RingCelebrationViewController();
  objc_msgSendSuper2(&v23, "viewDidAppear:", a1 & 1);
  [v1 configurePlayer];
  v3 = v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_shouldIncludeIntroFade];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  if (v3 == 1)
  {
    v21 = sub_10064DA84;
    v22 = v5;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1000449A8;
    v20 = &unk_100866488;
    v6 = _Block_copy(&v17);
    v7 = v1;

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v21 = sub_10064DA8C;
    v22 = v8;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10043B93C;
    v20 = &unk_1008664D8;
    v9 = _Block_copy(&v17);
    v10 = v7;

    [v4 animateWithDuration:v6 animations:v9 completion:0.5];
    _Block_release(v9);
    _Block_release(v6);
  }

  else
  {
    v21 = sub_10064DA14;
    v22 = v5;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1000449A8;
    v20 = &unk_1008663E8;
    v11 = _Block_copy(&v17);
    v12 = v1;

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v21 = sub_10064DB44;
    v22 = v13;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10043B93C;
    v20 = &unk_100866438;
    v14 = _Block_copy(&v17);
    v15 = v12;

    [v4 animateWithDuration:v11 animations:v14 completion:0.3];
    _Block_release(v14);
    _Block_release(v11);
    v16 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player;
    swift_beginAccess();
    [*&v15[v16] play];
  }
}

void sub_10064B82C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:1.0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10064BAD0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_10064BB6C, v4, v3);
}

uint64_t sub_10064BB6C()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = [v3 currentItem]) != 0)
  {
    v5 = v4;
    v0[11] = [v4 asset];

    sub_100140278(&qword_1008DFA18);
    v6 = static AVPartialAsyncProperty<A>.duration.getter();
    v0[12] = v6;
    v7 = static MainActor.shared.getter();
    v0[13] = v7;
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_10064BCF8;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 15, v6, v7, &protocol witness table for MainActor);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10064BCF8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 88);
  if (v0)
  {

    v5 = *(v3 + 72);
    v6 = *(v3 + 80);
    v7 = sub_10064BF48;
  }

  else
  {

    v5 = *(v3 + 72);
    v6 = *(v3 + 80);
    v7 = sub_10064BE84;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10064BE84()
{

  v2 = *(v0 + 120);
  if ((v2 & 0x8000000000000000) != 0 || (v3 = *(v0 + 128), (v3 & 0x80000000) != 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v2 / v3;
  if (!is_mul_ok(v4, 0x3B9ACA00uLL))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if ((1000000000 * v4) * 0.9 < *(v0 + 40))
  {
    sub_10064C094();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10064BF48()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10064C094()
{
  if ((v0[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_fadeOutStarted] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_fadeOutStarted] = 1;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v12 = sub_10064D9F4;
    v13 = v2;
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_1000449A8;
    v11 = &unk_1008662A8;
    v3 = _Block_copy(&v8);
    v4 = v0;

    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v12 = sub_10064D9FC;
    v13 = v5;
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_10043B93C;
    v11 = &unk_1008662F8;
    v6 = _Block_copy(&v8);
    v7 = v4;

    [v1 animateKeyframesWithDuration:0 delay:v3 options:v6 animations:1.5 completion:0.0];
    _Block_release(v6);
    _Block_release(v3);
  }
}

void sub_10064C238(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_10064DA04;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000449A8;
  v12 = &unk_100866348;
  v4 = _Block_copy(&v9);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_10064DA0C;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000449A8;
  v12 = &unk_100866398;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.5 animations:1.0];
  _Block_release(v7);
}

void sub_10064C3E0(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [a1 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha:0.0];
}

id sub_10064C4B4(uint64_t a1, void *a2)
{
  static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  return [a2 dismissViewControllerAnimated:0 completion:0];
}

id sub_10064C594(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_shouldIncludeIntroFade] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_observers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_playerLayer] = 0;
  v5 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_url;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = &v3[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_timeObserverToken];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v3[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_fadeOutStarted] = 0;
  v8 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_containerView;
  v9 = [objc_allocWithZone(UIView) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v8] = v9;
  v10 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_titleLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000059F8(0, &qword_1008F73C0);
  v12 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  v13 = UILabel.withFont(_:)();

  v14 = objc_opt_self();
  v15 = [v14 whiteColor];
  v16 = UILabel.withTextColor(_:)();

  *&v4[v10] = v16;
  v17 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_subtitleLabel;
  v18 = [objc_allocWithZone(UILabel) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = 1;
  v19 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  v20 = UILabel.withFont(_:)();

  v21 = [v14 fu_systemTextGreyColor];
  [v20 setTextColor:v21];

  *&v4[v17] = v20;
  v22 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_bottomLabelConstraint;
  *&v4[v22] = [objc_allocWithZone(NSLayoutConstraint) init];
  if (a2)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v28.receiver = v4;
  v28.super_class = type metadata accessor for RingCelebrationViewController();
  v24 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v23, a3);

  return v24;
}

id sub_10064C92C(void *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_shouldIncludeIntroFade] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_observers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_playerLayer] = 0;
  v3 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_url;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_timeObserverToken];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v1[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_fadeOutStarted] = 0;
  v6 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_containerView;
  v7 = [objc_allocWithZone(UIView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_titleLabel;
  v9 = [objc_allocWithZone(UILabel) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000059F8(0, &qword_1008F73C0);
  v10 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  v11 = UILabel.withFont(_:)();

  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = UILabel.withTextColor(_:)();

  *&v2[v8] = v14;
  v15 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_subtitleLabel;
  v16 = [objc_allocWithZone(UILabel) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = 1;
  v17 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  v18 = UILabel.withFont(_:)();

  v19 = [v12 fu_systemTextGreyColor];
  [v18 setTextColor:v19];

  *&v2[v15] = v18;
  v20 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_bottomLabelConstraint;
  *&v2[v20] = [objc_allocWithZone(NSLayoutConstraint) init];
  v24.receiver = v2;
  v24.super_class = type metadata accessor for RingCelebrationViewController();
  v21 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);

  if (v21)
  {
  }

  return v21;
}

void sub_10064CC70()
{
  sub_1001B0B70();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10064CD44()
{
  v1 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v1 - 8);
  v3 = &epoch - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &epoch - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player;
  result = swift_beginAccess();
  if (!*&v0[v8])
  {
    v10 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_playerLayer;
    if (!*&v0[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_playerLayer])
    {
      v11 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_url;
      swift_beginAccess();
      sub_10001B104(&v0[v11], v3, &unk_1008EB5B0);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        return sub_10000EA04(v3, &unk_1008EB5B0);
      }

      else
      {
        (*(v5 + 32))(v7, v3, v4);
        v12 = objc_allocWithZone(AVPlayerItem);
        v13 = v0;
        URL._bridgeToObjectiveC()(v14);
        v16 = v15;
        v17 = [v12 initWithURL:v15];
        v43 = v17;

        v18 = [objc_allocWithZone(AVPlayer) init];
        [v18 _setParticipatesInAudioSession:0];
        [v18 setActionAtItemEnd:1];
        [v18 replaceCurrentItemWithPlayerItem:v17];
        v19 = objc_opt_self();
        v20 = v18;
        v41 = v20;
        v21 = [v19 playerLayerWithPlayer:v20];
        [v21 setVideoGravity:AVLayerVideoGravityResizeAspect];
        v22 = *&v13[v8];
        *&v13[v8] = v18;

        v23 = v13;
        v24 = *&v13[v10];
        *&v13[v10] = v21;
        v25 = v21;
        v42 = v25;

        v26 = [*&v13[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_containerView] layer];
        [v26 addSublayer:v25];

        v27 = [objc_opt_self() defaultCenter];
        v28 = String._bridgeToObjectiveC()();
        v29 = [v20 currentItem];
        [v27 addObserver:v23 selector:"beginFadeOut" name:v28 object:v29];

        v50 = CMTime.init(seconds:preferredTimescale:)(0.1, 1000000000);
        value = v50.value;
        timescale = v50.timescale;
        epoch = v50.epoch;
        v32 = HIDWORD(*&v50.timescale);
        sub_1000059F8(0, &qword_1008E3FD0);
        v33 = static OS_dispatch_queue.main.getter();
        v34 = swift_allocObject();
        *(v34 + 16) = v23;
        v48 = sub_10064D918;
        v49 = v34;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10064D770;
        v47 = &unk_100866208;
        v35 = _Block_copy(&aBlock);
        v36 = v23;

        aBlock = value;
        v45 = __PAIR64__(v32, timescale);
        v37 = v41;
        v46 = epoch;
        v38 = [v41 addPeriodicTimeObserverForInterval:&aBlock queue:v33 usingBlock:v35];
        _Block_release(v35);

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        (*(v5 + 8))(v7, v4);
        v39 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_timeObserverToken;
        swift_beginAccess();
        sub_100060E68(&aBlock, v36 + v39, &qword_1008E51F0);
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_10064D294(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v11;
  *(v13 + 40) = a1;
  *(v13 + 48) = v4;
  *(v13 + 52) = v6;
  *(v13 + 56) = a3;

  sub_10026E7AC(0, 0, v9, &unk_100702720, v13);
}

uint64_t sub_10064D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  type metadata accessor for MainActor();
  v7[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[11] = v9;
  v7[12] = v8;

  return _swift_task_switch(sub_10064D4B0, v9, v8);
}

uint64_t sub_10064D4B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_10064D5BC;
    v3 = *(v0 + 56);

    return sub_10064BAD0(v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 104) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10064D5BC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_10064D6FC, v4, v3);
}

uint64_t sub_10064D6FC()
{

  **(v0 + 40) = *(v0 + 104) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10064D770(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

void sub_10064D824()
{
  v1 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 replaceCurrentItemWithPlayerItem:0];
  }

  v3 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_playerLayer;
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_playerLayer);
  if (v4)
  {
    [v4 setPlayer:0];
    v5 = *(v0 + v3);
    if (v5)
    {
      [v5 removeFromSuperlayer];
    }
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;
}

uint64_t sub_10064D920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002BACC;

  return sub_10064D410(a1, v4, v5, v6, v7, v9, v8);
}

id sub_10064DA1C(double a1)
{
  v3 = *(v1 + 16);
  [*(v3 + OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_titleLabel) setAlpha:?];
  v4 = *(v3 + OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_subtitleLabel);

  return [v4 setAlpha:a1];
}

id sub_10064DA90()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_player;
  swift_beginAccess();
  return [*(v1 + v2) play];
}

void sub_10064DB48()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle2;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_100926160 = v2;
}

char *sub_10064DBB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp45TrophyCaseAwardDetailViewControllerHeaderView_label;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = UILabel.withNumberOfLines(_:)();

  v13 = UILabel.withLineBreakMode(_:)();
  if (qword_1008DAF68 != -1)
  {
    swift_once();
  }

  v14 = UILabel.withFont(_:)();

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v14;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for TrophyCaseAwardDetailViewControllerHeaderView();
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC10FitnessApp45TrophyCaseAwardDetailViewControllerHeaderView_label];
  v17 = v15;
  [v17 addSubview:v16];
  sub_10064DFAC();

  return v17;
}

id sub_10064DD28(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp45TrophyCaseAwardDetailViewControllerHeaderView_label;
  v5 = [objc_allocWithZone(UILabel) init];
  v6 = UILabel.withNumberOfLines(_:)();

  v7 = UILabel.withLineBreakMode(_:)();
  if (qword_1008DAF68 != -1)
  {
    swift_once();
  }

  v8 = UILabel.withFont(_:)();

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v4] = v8;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for TrophyCaseAwardDetailViewControllerHeaderView();
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

void sub_10064DE68()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp45TrophyCaseAwardDetailViewControllerHeaderView_label);
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  [v1 setText:v4];
}

void sub_10064DFAC()
{
  v1 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D5300;
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp45TrophyCaseAwardDetailViewControllerHeaderView_label];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:25.0];

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-10.0];

  *(v2 + 40) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

id sub_10064E218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrophyCaseAwardDetailViewControllerHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10064E280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation) == 1 && *(Strong + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_didAppear) == 1 && (*(Strong + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted) & 1) == 0)
    {
      sub_1006520D0();
    }
  }
}

void sub_10064E30C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell);
  *(v2 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell) = a1;
  v18 = a1;

  if (*(v2 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_needToAnimatedBadgeView) == 1)
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100653FB0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100866730;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100045F80(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = v18;
  }
}

id sub_10064E8FC()
{
  sub_100007C5C(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider, v5);
  sub_1000066AC(v5, v5[3]);
  sub_100045F80(&unk_1008EAEE0, v1, type metadata accessor for TrophyCaseAwardDetailViewController);
  v2 = v0;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v5);
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TrophyCaseAwardDetailViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10064EC28()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v54 - v7;
  if (v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation] == 1 && v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowCelebration] == 1)
  {
    v9 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement];
    if (([v9 unearned] & 1) == 0)
    {
      v10 = [v9 template];
      v11 = [v10 uniqueName];
      if (v11)
      {
        v12 = v11;

        v13 = [objc_opt_self() celebrationMovieURLForAchievementIdentifer:v12];
        if (!v13)
        {
          return;
        }

        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v2 + 32))(v8, v4, v1);
        v14 = [v0 view];
        if (v14)
        {
          v15 = v14;
          v16 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer];
          [v14 addSubview:v16];

          v17 = [v16 topAnchor];
          v18 = [v0 view];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 topAnchor];

            v21 = [v17 constraintEqualToAnchor:v20];
            [v21 setActive:1];

            v22 = [v16 leadingAnchor];
            v23 = [v0 view];
            if (v23)
            {
              v24 = v23;
              v25 = [v23 leadingAnchor];

              v26 = [v22 constraintEqualToAnchor:v25];
              [v26 setActive:1];

              v27 = [v16 trailingAnchor];
              v28 = [v0 view];
              if (v28)
              {
                v29 = v28;
                v30 = [v28 trailingAnchor];

                v31 = [v27 constraintEqualToAnchor:v30];
                [v31 setActive:1];

                v32 = [v16 bottomAnchor];
                v33 = v0;
                v34 = [v0 view];
                if (v34)
                {
                  v35 = v34;
                  v36 = [v34 safeAreaLayoutGuide];

                  v37 = [v36 bottomAnchor];
                  v38 = [v32 constraintEqualToAnchor:v37];

                  [v38 setActive:1];
                  v39 = objc_allocWithZone(AVPlayer);
                  URL._bridgeToObjectiveC()(v40);
                  v42 = v41;
                  v43 = [v39 initWithURL:v41];

                  [v43 setActionAtItemEnd:1];
                  v44 = objc_opt_self();
                  v45 = v43;
                  v46 = [v44 playerLayerWithPlayer:v45];
                  [v46 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
                  v47 = v33;
                  v48 = *&v33[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer];
                  *&v33[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer] = v43;

                  v49 = *&v33[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer];
                  *&v47[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer] = v46;
                  v50 = v46;

                  v51 = [v16 layer];
                  [v51 addSublayer:v50];

                  v52 = [objc_opt_self() defaultCenter];
                  v53 = [v45 currentItem];
                  [v52 addObserver:v47 selector:"playerFinished:" name:AVPlayerItemDidPlayToEndTimeNotification object:v53];

                  (*(v2 + 8))(v8, v1);
                  return;
                }

LABEL_18:
                __break(1u);
                return;
              }

LABEL_17:
              __break(1u);
              goto LABEL_18;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_15;
    }
  }
}

void sub_10064F288(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TrophyCaseAwardDetailViewController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_didAppear] = 1;
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer];
  if (v3)
  {
    [v3 play];
  }

  else if (v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation] == 1 && (v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted] & 1) == 0)
  {
    sub_1006520D0();
  }
}

void sub_10064F378()
{
  if (v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation] == 1 && (v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationComplete] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationComplete] = 1;
    v1 = [v0 collectionView];
    if (v1)
    {
      v2 = v1;
      [v1 setAlpha:0.0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10064F4FC(char a1)
{
  v3 = [v1 navigationController];
  if (!v3)
  {
    return;
  }

  v17 = v3;
  v4 = [v3 viewControllers];
  sub_1000059F8(0, &qword_1008E4DD0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= 2)
  {
    v7 = [v17 viewControllers];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = __OFSUB__(v9, 2);
    v11 = v9 - 2;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v12 = [v17 viewControllers];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v13 & 0xC000000000000001) == 0)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v13 + 8 * v11 + 32);
LABEL_12:
          v15 = v14;

          v20 = &OBJC_PROTOCOL___UINavigationControllerDelegate;
          if (swift_dynamicCastObjCProtocolConditional())
          {
            [v17 setDelegate:?];
          }

          v19 = &OBJC_PROTOCOL___CHActivityHistoryPaletteNavigationController;
          v16 = swift_dynamicCastObjCProtocolConditional();
          if (v16)
          {
            [v16 detachPalette];
          }

          v18.receiver = v1;
          v18.super_class = type metadata accessor for TrophyCaseAwardDetailViewController();
          objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1);

          return;
        }

        __break(1u);
        return;
      }
    }

    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }
}

uint64_t sub_10064F818(uint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (!*(&off_100846490 + result + 32))
    {
      v23 = objc_opt_self();
      v24 = [v23 mainScreen];
      [v24 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v79.origin.x = v26;
      v79.origin.y = v28;
      v79.size.width = v30;
      v79.size.height = v32;
      Height = CGRectGetHeight(v79);
      v34 = [v23 mainScreen];
      [v34 scale];
      v36 = v35;

      v37 = objc_opt_self();
      v38 = [v37 fractionalWidthDimension:1.0];
      v39 = Height / v36 * 0.8;
      v40 = [v37 estimatedDimension:v39];
      v41 = objc_opt_self();
      v42 = [v41 sizeWithWidthDimension:v38 heightDimension:v40];

      v43 = [objc_opt_self() itemWithLayoutSize:v42];
      [v43 setContentInsets:{0.0, 0.0, 10.0, 0.0}];
      v44 = [v37 fractionalWidthDimension:1.0];
      v45 = [v37 estimatedDimension:v39];
      v46 = [v41 sizeWithWidthDimension:v44 heightDimension:v45];

      v47 = objc_opt_self();
      sub_100140278(&unk_1008E4E20);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1006D4E70;
      *(v48 + 32) = v43;
      sub_1000059F8(0, &unk_1008E7F70);
      v49 = v43;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v51 = [v47 verticalGroupWithLayoutSize:v46 subitems:isa];

      v52 = [objc_opt_self() sectionWithGroup:v51];
      return v52;
    }

    if (*(&off_100846490 + result + 32) == 1)
    {
      v1 = objc_opt_self();
      v2 = [v1 fractionalWidthDimension:1.0];
      v3 = [v1 estimatedDimension:80.0];
      v4 = objc_opt_self();
      v5 = [v4 sizeWithWidthDimension:v2 heightDimension:v3];

      v6 = [objc_opt_self() itemWithLayoutSize:v5];
      v7 = [v1 fractionalWidthDimension:1.0];
      v8 = [v1 estimatedDimension:80.0];
      v9 = [v4 sizeWithWidthDimension:v7 heightDimension:v8];

      v10 = objc_opt_self();
      sub_100140278(&unk_1008E4E20);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1006D4E70;
      *(v11 + 32) = v6;
      sub_1000059F8(0, &unk_1008E7F70);
      v12 = v6;
      v13 = Array._bridgeToObjectiveC()().super.isa;

      v14 = [v10 verticalGroupWithLayoutSize:v9 subitems:v13];

      v15 = [v1 fractionalWidthDimension:1.0];
      v16 = [v1 estimatedDimension:0.0];
      v17 = [v4 sizeWithWidthDimension:v15 heightDimension:v16];

      v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v17 elementKind:UICollectionElementKindSectionHeader alignment:1];
      [v18 setContentInsets:{0.0, 15.0, 0.0, 15.0}];
      v19 = [objc_opt_self() sectionWithGroup:v14];
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1006D4E70;
      *(v20 + 32) = v18;
      sub_1000059F8(0, &qword_1008E7F68);
      v21 = v18;
      v22 = Array._bridgeToObjectiveC()().super.isa;

      [v19 setBoundarySupplementaryItems:v22];

      return v19;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v54 = *(Strong + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement);
      v55 = Strong;

      if (!(v54 >> 62))
      {
LABEL_9:
        v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_10;
      }
    }

    else
    {
      v54 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_9;
      }
    }

    v56 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:

    if (v56)
    {
      v57 = objc_opt_self();
      v58 = [v57 estimatedDimension:80.0];
      v59 = [v57 estimatedDimension:100.0];
      v60 = objc_opt_self();
      v78 = [v60 sizeWithWidthDimension:v58 heightDimension:v59];

      v61 = [objc_opt_self() itemWithLayoutSize:v78];
      v62 = [v57 estimatedDimension:80.0];
      v63 = [v57 estimatedDimension:0.0];
      v64 = [v60 sizeWithWidthDimension:v62 heightDimension:v63];

      v65 = objc_opt_self();
      sub_100140278(&unk_1008E4E20);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1006D4E70;
      *(v66 + 32) = v61;
      sub_1000059F8(0, &unk_1008E7F70);
      v67 = v61;
      v68 = Array._bridgeToObjectiveC()().super.isa;

      v69 = [v65 horizontalGroupWithLayoutSize:v64 subitems:v68];

      v70 = [v57 fractionalWidthDimension:1.0];
      v71 = [v57 estimatedDimension:0.0];
      v72 = [v60 sizeWithWidthDimension:v70 heightDimension:v71];

      v73 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v72 elementKind:UICollectionElementKindSectionHeader alignment:1];
      [v73 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
      v74 = [objc_opt_self() sectionWithGroup:v69];
      [v74 setOrthogonalScrollingBehavior:1];
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1006D4E70;
      *(v75 + 32) = v73;
      sub_1000059F8(0, &qword_1008E7F68);
      v76 = v73;
      v77 = Array._bridgeToObjectiveC()().super.isa;

      [v74 setBoundarySupplementaryItems:v77];

      [v74 setContentInsets:{0.0, 15.0, 0.0, 15.0}];
      return v74;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_100650294()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement) relevantEarnedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 externalIdentifier];

    if (v11)
    {
      v25 = v6;
      v26 = v2;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      v15 = *(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutDataProvider);
      v16 = [v15 workoutForUUID:v11];

      if (v16)
      {

        v17 = *(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout);
        *(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout) = v16;
        v18 = v16;

        sub_1000059F8(0, &qword_1008E3FD0);
        v19 = static OS_dispatch_queue.main.getter();
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = sub_10031A428;
        v32 = v20;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_1000449A8;
        v30 = &unk_1008666B8;
        v21 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100045F80(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
        sub_100140278(&unk_1008E7F50);
        sub_10002621C();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v21);

        (*(v26 + 8))(v4, v1);
        (*(v25 + 8))(v8, v5);
      }

      else
      {
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        v23[2] = v22;
        v23[3] = v12;
        v23[4] = v14;
        v31 = sub_100653F58;
        v32 = v23;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_1000449A8;
        v30 = &unk_100866690;
        v24 = _Block_copy(&aBlock);

        [v15 addUpdateHandler:v24];
        _Block_release(v24);
      }
    }
  }
}

void sub_100650704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = *(Strong + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout), v14 = v11, v15 = v8, v16 = v5, v17 = v9, v18 = a3, v19 = v6, v20 = a2, v21 = Strong, v27 = v13, v21, a2 = v20, v6 = v19, a3 = v18, v9 = v17, v5 = v16, v8 = v15, v11 = v14, v13))
  {
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = a2;
    v25[4] = a3;
    aBlock[4] = sub_100653FA4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100866708;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100045F80(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v28);
  }
}

void sub_100650AA8()
{
  v0 = type metadata accessor for IndexSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutDataProvider);

      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 workoutForUUID:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = *&v5[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout];
    *&v5[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout] = v10;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 collectionView];

    if (v14)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
      }

      IndexSet.init(integer:)();
      IndexSet._bridgeToObjectiveC()(v16);
      v18 = v17;
      (*(v1 + 8))(v3, v0);
      [v14 reloadSections:v18];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100650E90(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

id sub_100650F20(id a1)
{
  v6 = v1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = IndexPath.section.getter();
  if (v12 <= 2)
  {
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    if (*(&off_100846468 + v12 + 32))
    {
      if (*(&off_100846468 + v12 + 32) == 1)
      {
        v13 = String._bridgeToObjectiveC()();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        a1 = [a1 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:isa];

        type metadata accessor for TrophyCaseAwardDetailWorkoutCell();
        v15 = swift_dynamicCastClass();
        if (!v15)
        {
          return a1;
        }

        v3 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout);
        if (!v3)
        {
          return a1;
        }

        v2 = v15;
        v16 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider + 24);
        v78 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider + 32);
        v77 = sub_1000066AC((v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider), v16);
        a1 = a1;
        v79 = v3;
        v17 = [v79 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.uuidString.getter();
        (*(v9 + 8))(v11, v8);
        v18 = dispatch thunk of AAUIAwardsDataProviding.achievements(forWorkoutIdentifier:)();

        v5 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_fitnessAppContext);
        v4 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutFormattingManager);
        if (!(v18 >> 62))
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

          v20 = *(v2 + OBJC_IVAR____TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell_workoutContentView);
          v21 = *&v20[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
          *&v20[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = v3;
          v22 = v79;

          *&v20[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = v19;
          v23 = *&v20[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
          *&v20[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = v4;
          v24 = v4;

          v20[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 1;
          v25 = *&v20[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
          v26 = *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
          *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = v3;

          v27 = *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
          *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = v5;
          v28 = v5;

          v29 = *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
          *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = v4;

          *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = v19;
          *(v25 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
          sub_100697158(0, 0);
          sub_100698004();
          [v20 configureWithCurrentWorkout];

          return a1;
        }

LABEL_43:
        v19 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_9;
      }

      v57 = String._bridgeToObjectiveC()();
      v58 = IndexPath._bridgeToObjectiveC()().super.isa;
      a1 = [a1 dequeueReusableCellWithReuseIdentifier:v57 forIndexPath:v58];

      type metadata accessor for TrophyCaseAwardDetailFriendCell();
      if (!swift_dynamicCastClass())
      {
        return a1;
      }

      a1 = a1;
      v59 = IndexPath.row.getter();
      v60 = *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement);
      if ((v60 & 0xC000000000000001) == 0)
      {
        if ((v59 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v59 < *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v61 = *(v60 + 8 * v59 + 32);
LABEL_24:
          sub_100578848(v61);

LABEL_37:
          return a1;
        }

        __break(1u);
        goto LABEL_43;
      }

LABEL_40:

      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_24;
    }

    v32 = String._bridgeToObjectiveC()();
    v33 = IndexPath._bridgeToObjectiveC()().super.isa;
    a1 = [a1 dequeueReusableCellWithReuseIdentifier:v32 forIndexPath:v33];

    type metadata accessor for TrophyCaseAwardDetailBadgeCell();
    v34 = swift_dynamicCastClass();
    if (!v34)
    {
      return a1;
    }

    v35 = v34;
    v36 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_localizationProvider);
    v37 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_pauseRingsCoordinator);
    v38 = a1;
    [v36 setPaused:{objc_msgSend(v37, "isPaused")}];
    v39 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement);
    v40 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowEarned);
    sub_1000066AC((v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider), *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider + 24));
    LODWORD(v79) = dispatch thunk of AAUIAwardsDataProviding.shouldShowProgressBar(for:)();
    v41 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeView);
    v42 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_resourceProvider);
    v43 = *(v6 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formatsForFriend);
    v44 = [objc_allocWithZone(AAUIAchievementFormatter) initWithStyle:1 achievement:v39 achLocalizationProvider:v36];
    if (!v44)
    {
LABEL_36:
      a1 = v38;
      sub_10064E30C(v35);
      goto LABEL_37;
    }

    v45 = v44;
    LODWORD(v77) = v43;
    [v44 setFormatsForFriend:v43];
    v46 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeView;
    v47 = *&v35[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeView];
    v78 = v38;
    if (!v47)
    {
      [*&v35[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeViewContainer] bounds];
      [v41 setFrame:?];
      [v41 setOpaque:0];
      v48 = *&v35[v46];
      *&v35[v46] = v41;
      v49 = v41;

      sub_10054E810(v39, v45, v42);
    }

    v76 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementTitleLabel;
    v50 = *&v35[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementTitleLabel];
    v51 = [v36 titleForAchievement:{v39, OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementTitleLabel}];
    [v50 setText:v51];

    v52 = *&v35[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementDescriptionLabel];
    if (v40)
    {
      v53 = [v36 achievedDescriptionForAchievement:v39];
      [v52 setText:v53];

      [*&v35[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar] setHidden:1];
      v54 = objc_opt_self();
      sub_1000059F8(0, &qword_1008DC980);

      v55.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v54 deactivateConstraints:v55.super.isa];
      v56 = v77;
    }

    else
    {
      v62 = [v36 unachievedDescriptionForAchievement:v39];
      [v52 setText:v62];

      v56 = v77;
      if (v79)
      {
        v63 = [v39 progress];
        if (v63)
        {
          v55.super.isa = v63;
          v64 = [v39 goal];
          if (v64)
          {
            v65 = v64;
            [(objc_class *)v55.super.isa _value];
            v67 = v66;
            [v65 _value];
            v69 = v67 / v68;
            if (v69 < 2.22044605e-16)
            {
              v69 = 0.01;
            }

            v70 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar;
            *&v69 = v69;
            [*&v35[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar] setProgress:v69];
            [*&v35[v70] setHidden:0];
            sub_10054E448();

            goto LABEL_33;
          }
        }
      }

      [*&v35[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar] setHidden:1];
      v71 = objc_opt_self();
      sub_1000059F8(0, &qword_1008DC980);

      v55.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v71 deactivateConstraints:v55.super.isa];
    }

LABEL_33:

    if (v56)
    {
      v72 = *&v35[v76];
      v73 = [v36 friendAchievedTitleForAchievement:v39];
      [v72 setText:v73];

      v74 = *&v35[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementDescriptionLabel];
      v75 = [v36 friendAchievedDescriptionForAchievement:v39];
      [v74 setText:v75];
    }

    v38 = v78;
    goto LABEL_36;
  }

  v30 = objc_allocWithZone(UICollectionViewCell);

  return [v30 init];
}

double sub_100651CB4()
{
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Width = CGRectGetWidth(v24);
  v12 = [v1 mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  v21 = [v0 navigationController];
  if (v21)
  {
    v22 = v21;
    [v21 _topBarHeight];
  }

  return (Width - Width * 0.76) * 0.5;
}

void sub_100651E10()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeView];
    if (v2)
    {
      v3 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeViewContainer;
      v4 = *&v1[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeViewContainer];
      v7 = v1;
      v5 = v2;
      [v4 addSubview:v5];
      [*&v1[v3] bounds];
      MidX = CGRectGetMidX(v9);
      [*&v1[v3] bounds];
      [v5 setCenter:{MidX, CGRectGetMidY(v10)}];
    }
  }
}

void sub_1006520D0()
{
  if (*&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell])
  {
    v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_needToAnimatedBadgeView] = 0;
    v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted] = 1;
    v1 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeView];
    [v0 badgeFrame];
    [v1 setFrame:?];
    [v1 resizeBadgeForCurrentViewSize];
    [v0 placeBadgeViewInContainer];
    if ([*&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement] unearned])
    {
      v2 = 0.75;
      v3 = 0.5;
    }

    else
    {
      [v1 setPaused:0];
      [v1 playFlipInAnimation];
      v2 = 0.5;
      v3 = 1.0;
    }

    CGAffineTransformMakeScale(&aBlock, v2, v2);
    v15 = *&aBlock.c;
    v16 = *&aBlock.a;
    tx = aBlock.tx;
    ty = aBlock.ty;
    v6 = [v0 collectionView];
    if (v6)
    {
      v7 = v6;
      *&aBlock.a = v16;
      *&aBlock.c = v15;
      aBlock.tx = tx;
      aBlock.ty = ty;
      [v6 setTransform:&aBlock];

      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      v9 = objc_opt_self();
      *&aBlock.tx = sub_100653F48;
      *&aBlock.ty = v8;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1000449A8;
      *&aBlock.d = &unk_1008665C8;
      v10 = _Block_copy(&aBlock);
      v11 = v0;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *&aBlock.tx = sub_100653F50;
      *&aBlock.ty = v12;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10043B93C;
      *&aBlock.d = &unk_100866618;
      v13 = _Block_copy(&aBlock);
      v14 = v11;

      [v9 animateWithDuration:v10 animations:v13 completion:v3];
      _Block_release(v13);
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_needToAnimatedBadgeView] = 1;
  }
}

void sub_1006523AC(void *a1)
{
  v2 = [a1 collectionView];
  if (v2)
  {
    v3 = v2;
    v6[0] = 0x3FF0000000000000;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0x3FF0000000000000;
    v6[4] = 0;
    v6[5] = 0;
    [v2 setTransform:v6];

    v4 = [a1 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha:1.0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100652454(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setNavigationBarHidden:0 animated:0];
  }
}

void sub_1006524C4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v87[3] = a19;
  v87[4] = a20;
  v76 = sub_100005994(v87);
  (*(*(a19 - 8) + 32))(v76, a4, a19);
  v84 = type metadata accessor for TrophyCaseAwardDetailViewController();
  v25 = objc_allocWithZone(v84);
  v26 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer;
  v27 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v28 = [objc_opt_self() blackColor];
  [v27 setBackgroundColor:v28];

  v29 = UIView.forAutoLayout()();
  *&v25[v26] = v29;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell] = 0;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout] = 0;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer] = 0;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer] = 0;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationComplete] = 0;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted] = 0;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_didAppear] = 0;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_needToAnimatedBadgeView] = 0;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingImage] = 0;
  v30 = &v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingText];
  *v30 = 0;
  v30[1] = 0;
  v80 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement] = _swiftEmptyArrayStorage;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement] = a1;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_healthStore] = a2;
  sub_100007C5C(v87, &v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider]);
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeImageFactory] = a5;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_resourceProvider] = a6;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formattingManager] = a7;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_localizationProvider] = a8;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_pauseRingsCoordinator] = a9;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_fitnessAppContext] = a10;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutFormattingManager] = a11;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutDataProvider] = a12;
  v77 = objc_allocWithZone(AAUIBadgeView);
  v79 = a1;
  v31 = a2;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a9;
  v37 = a10;
  v38 = a11;
  v39 = a12;
  v40 = [v77 initUsingEarnedShader:a15 & 1];
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeView] = v40;
  *&v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendListManager] = a3;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation] = a13;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowCelebration] = a14;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowEarned] = a15;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowAssociatedWorkout] = a16;
  v25[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formatsForFriend] = a17;
  type metadata accessor for FriendsAchievementDataProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v79;
  *(inited + 24) = a3;
  v42 = a3;
  v43 = v79;
  v44 = v42;
  v45 = sub_100288680();
  swift_setDeallocating();

  *&v25[v80] = v45;

  v46 = [objc_allocWithZone(UICollectionViewLayout) init];
  v86.receiver = v25;
  v86.super_class = v84;
  v47 = objc_msgSendSuper2(&v86, "initWithCollectionViewLayout:", v46);

  v48 = v47;
  v49 = [v48 navigationItem];
  [v49 setLargeTitleDisplayMode:2];

  v50 = [v48 collectionView];
  if (!v50)
  {
    __break(1u);
    goto LABEL_10;
  }

  v51 = v50;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_100319D94;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006871C;
  aBlock[3] = &unk_100866758;
  v54 = _Block_copy(aBlock);
  v55 = [v53 initWithSectionProvider:v54];
  _Block_release(v54);

  [v51 setCollectionViewLayout:v55];

  v56 = [v48 collectionView];
  if (!v56)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v57 = v56;
  type metadata accessor for TrophyCaseAwardDetailBadgeCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = String._bridgeToObjectiveC()();
  [v57 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v59];

  v60 = [v48 collectionView];
  if (!v60)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v61 = v60;
  type metadata accessor for TrophyCaseAwardDetailWorkoutCell();
  v62 = swift_getObjCClassFromMetadata();
  v63 = String._bridgeToObjectiveC()();
  [v61 registerClass:v62 forCellWithReuseIdentifier:v63];

  v64 = [v48 collectionView];
  if (!v64)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v65 = v64;
  type metadata accessor for TrophyCaseAwardDetailFriendCell();
  v66 = swift_getObjCClassFromMetadata();
  v67 = String._bridgeToObjectiveC()();
  [v65 registerClass:v66 forCellWithReuseIdentifier:v67];

  v68 = [v48 collectionView];
  if (!v68)
  {
LABEL_13:
    __break(1u);
    return;
  }

  type metadata accessor for TrophyCaseAwardDetailViewControllerHeaderView();
  v69 = swift_getObjCClassFromMetadata();
  v70 = UICollectionElementKindSectionHeader;
  v71 = String._bridgeToObjectiveC()();
  [v68 registerClass:v69 forSupplementaryViewOfKind:v70 withReuseIdentifier:v71];

  v72 = v48;
  if ((a17 & 1) == 0)
  {
    v73 = [v48 navigationItem];
    v72 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:9 target:v48 action:"shareTapped:"];

    [v73 setRightBarButtonItem:v72];
  }

  sub_100045F80(&unk_1008EAEE0, v74, type metadata accessor for TrophyCaseAwardDetailViewController);
  v75 = v48;
  dispatch thunk of AAUIAwardsDataProviding.add(observer:)();

  sub_100650294();
  sub_100005A40(v87);
}

void sub_100652CB0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = [objc_opt_self() blackColor];
  [v3 setBackgroundColor:v4];

  v5 = UIView.forAutoLayout()();
  *(v1 + v2) = v5;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationComplete) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_didAppear) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_needToAnimatedBadgeView) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingImage) = 0;
  v6 = (v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingText);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100652E28()
{
  v1 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer;
  [*&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer] pause];
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer];
  if (v2)
  {
    [v2 removeFromSuperlayer];
  }

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  [*&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer] removeFromSuperview];
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 setAlpha:1.0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100652EEC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1006531B4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100866578;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045F80(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006531BC(unint64_t a1)
{
  if (a1 > 2)
  {
    __break(1u);
  }

  else
  {
    if (!*(&off_1008464E0 + a1 + 32))
    {
      return 1;
    }

    if (*(&off_1008464E0 + a1 + 32) == 1)
    {
      return *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout) && (*(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowAssociatedWorkout) & 1) != 0;
    }

    if (*(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formatsForFriend))
    {
      return 0;
    }

    v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement);
    if (!(v3 >> 62))
    {
      return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_100653254()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v59 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = IndexPath.section.getter();
  if (v13 > 2)
  {
    return;
  }

  if (v13 < 0)
  {
    __break(1u);
LABEL_20:

    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_14;
  }

  if (!*(&off_100846508 + v13 + 32))
  {
    return;
  }

  if (*(&off_100846508 + v13 + 32) == 1)
  {
    v14 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout];
    if (!v14)
    {
      return;
    }

    v15 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_healthStore];
    v16 = objc_allocWithZone(FIUIModel);
    v59 = v14;
    v17 = [v16 initWithHealthStore:v15];
    if (v17)
    {
      v18 = v17;
      v19 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_fitnessAppContext];
      v57 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutFormattingManager];
      v58 = v19;
      v20 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutDataProvider];
      v55 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeImageFactory];
      v56 = v20;
      v21 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendListManager];
      v53 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_localizationProvider];
      v54 = v21;
      v52 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_pauseRingsCoordinator];
      v22 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_resourceProvider];
      v23 = *&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formattingManager];
      v24 = type metadata accessor for CHAwardsDataProvider();
      sub_100007C5C(&v1[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider], v60);
      v25 = v61;
      v26 = v62;
      v27 = sub_1001DF03C(v60, v61);
      v28 = __chkstk_darwin(v27);
      v30 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30, v28);
      v32 = sub_1001E0AF8(v30, v24, v25, v26);
      sub_100005A40(v60);
      v33 = objc_allocWithZone(CHWorkoutDetailViewController);
      v34 = v59;
      LOBYTE(v50) = 1;
      v35 = [v33 initWithWorkout:v34 workoutActivity:0 healthStore:v15 model:v18 fitnessAppContext:v58 workoutFormattingManager:v57 workoutDataProvider:v56 badgeImageFactory:v55 friendListManager:v54 achievementLocalizationProvider:v53 pauseRingsCoordinator:v52 achievementResourceProvider:v22 formattingManager:v23 awardsDataProvider:v32 shouldExposeDeepLinkToTrainingLoadFromEffort:v50];

      if (v35)
      {
        [v35 setEdgesForExtendedLayout:0];
        v36 = [v1 navigationController];
        [v36 pushViewController:v35 animated:1];
      }

      return;
    }

LABEL_23:
    __break(1u);
    return;
  }

  v37 = IndexPath.row.getter();
  v38 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement];
  if ((v38 & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v37 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = *(v38 + 8 * v37 + 32);
LABEL_14:
  v58 = v10;
  v40 = [v39 UUID];
  if (v40)
  {
    v41 = v40;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v42.super.isa = 0;
  }

  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v59 + 1))(v4, v2);
  v44 = ASActivityAppLaunchURLForFriendOnDate();

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v46);
  v48 = v47;
  sub_1004C9534(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100045F80(&qword_1008F7990, 255, type metadata accessor for OpenExternalURLOptionsKey);
  v49 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v45 openURL:v48 options:v49 completionHandler:0];

  (*(v58 + 8))(v12, v9);
}

uint64_t sub_1006538EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {

LABEL_10:
    v10 = UICollectionElementKindSectionHeader;
    v11 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:isa];

    result = IndexPath.section.getter();
    if (result <= 2)
    {
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      type metadata accessor for TrophyCaseAwardDetailViewControllerHeaderView();
      if (swift_dynamicCastClass())
      {
        v13 = v13;
        sub_10064DE68();
      }
    }

    return v13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_10;
  }

  v8 = objc_allocWithZone(UICollectionReusableView);

  return [v8 init];
}

void sub_100653A6C()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement];
  v2 = [*&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_localizationProvider] shareDescriptionForAchievement:v1];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_1000F021C(v1);
  v8 = &v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingText];
  *v8 = v4;
  v8[1] = v6;

  v9 = *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingImage];
  *&v0[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingImage] = v7;
  v10 = v7;

  sub_100140278(&qword_1008E7590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006D64F0;
  v12 = type metadata accessor for TrophyCaseAwardDetailViewController();
  *(v11 + 32) = v0;
  *(v11 + 88) = &type metadata for String;
  *(v11 + 56) = v12;
  *(v11 + 64) = v4;
  *(v11 + 72) = v6;
  *(v11 + 120) = sub_1000059F8(0, &qword_1008DD8C0);
  *(v11 + 96) = v10;
  v13 = objc_allocWithZone(UIActivityViewController);
  v23 = v10;
  v14 = v0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithActivityItems:isa applicationActivities:0];

  v17 = sub_1000B882C();
  if (!v17)
  {
    type metadata accessor for ActivityType(0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v16 setExcludedActivityTypes:v17];

  v18 = [v14 navigationController];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v21 = [v14 hk_window];
    if (!v21 || (v22 = v21, v19 = [v21 rootViewController], v22, !v19))
    {
      v20 = v23;
      v23 = v16;
      goto LABEL_11;
    }
  }

  [v19 presentViewController:v16 animated:1 completion:0];

  v20 = v16;
LABEL_11:
}

id sub_100653D20()
{
  v1 = [objc_allocWithZone(LPLinkMetadata) init];
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingImage);
  if (v2)
  {
    v3 = v2;
    v4 = UIImagePNGRepresentation(v3);
    if (v4)
    {
      v5 = v4;
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = objc_allocWithZone(LPImage);
      sub_100215414(v6, v8);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v11 = String._bridgeToObjectiveC()();
      v12 = [v9 initWithData:isa MIMEType:v11];

      sub_10000AF88(v6, v8);
      [v1 setImage:v12];

      if (*(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingText + 8))
      {

        v13 = String._bridgeToObjectiveC()();
      }

      else
      {
        v13 = 0;
      }

      [v1 setSummary:v13];

      sub_10000AF88(v6, v8);
    }
  }

  return v1;
}

void sub_100653EAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer);
  if (v1)
  {
    [v1 removeFromSuperlayer];
  }

  [*(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer) setAlpha:0.0];
  if (*(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation) == 1 && *(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_didAppear) == 1 && (*(v0 + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted) & 1) == 0)
  {

    sub_1006520D0();
  }
}

uint64_t sub_100653F64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100653FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10056CCD0(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000686B4(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000686B4(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000686B4(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100654280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10056CCD0(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000686B4(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_100140278(&qword_1008F5238);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000686B4(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000686B4(a3);
  sub_100140278(&qword_1008F5238);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100654514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_10056CCD0(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000686B4(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000686B4(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000686B4(a3);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

char *sub_10065479C(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_playerLayer] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_observers] = _swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtC10FitnessApp15VideoLooperView_url;
  v8 = type metadata accessor for URL();
  v33 = *(v8 - 8);
  v34 = v8;
  v35 = a1;
  (*(v33 + 16))(&v3[v7], a1);
  v3[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_isStatic] = a2;
  v42.receiver = v3;
  v42.super_class = type metadata accessor for VideoLooperView();
  v9 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 configurePlayer];
  v10 = [v9 window];
  if (v10 && (v10, (v9[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_isStatic] & 1) == 0))
  {
    v11 = *&v9[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player];
    v12 = ObjectType;
    if (!v11)
    {
      goto LABEL_8;
    }

    v13 = &selRef_play;
  }

  else
  {
    v11 = *&v9[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player];
    v12 = ObjectType;
    if (!v11)
    {
      goto LABEL_8;
    }

    v13 = &selRef_pause;
  }

  [v11 *v13];
LABEL_8:
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  if (qword_1008DA778 != -1)
  {
    swift_once();
  }

  v16 = qword_100925420;
  v17 = objc_opt_self();
  v18 = [v17 mainQueue];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v12;
  v40 = sub_100655924;
  v41 = v20;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100026F8C;
  v39 = &unk_100866878;
  v21 = _Block_copy(&aBlock);
  v22 = v9;

  v23 = [v15 addObserverForName:v16 object:0 queue:v18 usingBlock:v21];
  _Block_release(v21);

  v24 = [v14 defaultCenter];
  if (qword_1008DA780 != -1)
  {
    swift_once();
  }

  v25 = qword_100925428;
  v26 = [v17 mainQueue];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v12;
  v40 = sub_10065592C;
  v41 = v28;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100026F8C;
  v39 = &unk_1008668C8;
  v29 = _Block_copy(&aBlock);

  v30 = [v24 addObserverForName:v25 object:0 queue:v26 usingBlock:v29];
  _Block_release(v29);

  sub_100140278(&qword_1008E7590);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1006D1F70;
  *(v31 + 56) = swift_getObjectType();
  *(v31 + 32) = v23;
  *(v31 + 88) = swift_getObjectType();
  *(v31 + 64) = v30;
  (*(v33 + 8))(v35, v34);
  *&v22[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_observers] = v31;

  return v22;
}

void sub_100654C8C()
{
  v0 = static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13[0] = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, v13);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v0, "%s did receive ActivityTileViewControllerPlayVideos", v3, 0xCu);
    sub_100005A40(v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong window];
    if (v10 && (v10, (v9[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_isStatic] & 1) == 0))
    {
      v11 = *&v9[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player];
      if (v11)
      {
        v12 = &selRef_play;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *&v9[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player];
      if (v11)
      {
        v12 = &selRef_pause;
LABEL_10:
        [v11 *v12];
      }
    }
  }
}

void sub_100654E34()
{
  v0 = static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, v12);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v0, "%s did receive ActivityTileViewControllerPauseVideos", v3, 0xCu);
    sub_100005A40(v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player);
    v10 = Strong;
    v11 = v9;

    if (v9)
    {
      [v11 pause];
    }
  }
}

id sub_100654FA0()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_observers];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_10000B1B4(v4, v9);
      v5 = [v3 defaultCenter];
      sub_1000066AC(v9, v9[3]);
      v6 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_100005A40(v9);
      [v5 removeObserver:v6];

      swift_unknownObjectRelease();
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for VideoLooperView();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t type metadata accessor for VideoLooperView()
{
  result = qword_1008F79D0;
  if (!qword_1008F79D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1006551C8()
{
  v1 = [v0 window];
  if (v1 && (v1, (v0[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_isStatic] & 1) == 0))
  {
    result = *&v0[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player];
    if (!result)
    {
      return result;
    }

    v3 = &selRef_play;
  }

  else
  {
    result = *&v0[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player];
    if (!result)
    {
      return result;
    }

    v3 = &selRef_pause;
  }

  v4 = *v3;

  return [result v4];
}

uint64_t sub_100655400()
{
  result = type metadata accessor for URL();
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

void sub_1006554B4()
{
  v1 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player;
  if (!*&v0[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player])
  {
    v5 = OBJC_IVAR____TtC10FitnessApp15VideoLooperView_playerLayer;
    if (!*&v0[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_playerLayer])
    {
      v6 = objc_allocWithZone(AVPlayerItem);
      v7 = v0;
      URL._bridgeToObjectiveC()(v8);
      v10 = v9;
      v11 = [v6 initWithURL:v9];

      v12 = [objc_allocWithZone(AVQueuePlayer) init];
      [v12 _setParticipatesInAudioSession:0];
      [v12 setPreventsDisplaySleepDuringVideoPlayback:0];
      [v12 setAllowsExternalPlayback:0];
      [v12 insertItem:v11 afterItem:0];
      v13 = [objc_opt_self() playerLayerWithPlayer:v12];
      v14 = *&v7[v4];
      *&v7[v4] = v12;
      v15 = v12;

      v16 = *&v7[v5];
      *&v7[v5] = v13;
      v17 = v13;

      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
      type metadata accessor for MainActor();
      v19 = v15;
      v20 = static MainActor.shared.getter();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = &protocol witness table for MainActor;
      v21[4] = v19;
      sub_100653FFC(0, 0, v3, &unk_1007028D0, v21);

      v22 = [v7 layer];
      [v22 addSublayer:v17];
    }
  }
}

void sub_10065578C()
{
  v1 = OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player);
  if (v2)
  {
    [v2 replaceCurrentItemWithPlayerItem:0];
  }

  v3 = OBJC_IVAR____TtC10FitnessApp15VideoLooperView_playerLayer;
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp15VideoLooperView_playerLayer);
  if (v4)
  {
    [v4 setPlayer:0];
    v5 = *(v0 + v3);
    if (v5)
    {
      [v5 removeFromSuperlayer];
    }
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;
}

uint64_t sub_100655870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1001C0274(a1, v4, v5, v6);
}

void sub_10065593C()
{
  v1 = v0;
  sub_1000059F8(0, &qword_1008DEE18);
  isa = HKQuantityType.init(_:)(HKQuantityTypeIdentifierRunningPower).super.super.super.isa;
  v3 = [v0 statisticsForType:isa];

  v4 = [v3 averageQuantity];
  if (v4 || (v5 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierCyclingPower).super.super.super.isa, v6 = [v1 statisticsForType:v5], v5, v4 = objc_msgSend(v6, "averageQuantity"), v6, v4))
  {
LABEL_3:
    v7 = objc_opt_self();
    v8 = v4;
    v9 = [v7 wattUnit];
    v10 = [v8 isCompatibleWithUnit:v9];

    if (v10)
    {
      v11 = [v7 wattUnit];
    }

    else
    {
      v12 = String._bridgeToObjectiveC()();
      v11 = [v7 unitFromString:v12];
    }

    [v8 doubleValueForUnit:v11];

    return;
  }

  v13 = [v1 metadata];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v15 + 16))
  {

    goto LABEL_16;
  }

  v18 = sub_100066F20(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_16:

    return;
  }

  sub_10000B1B4(*(v15 + 56) + 32 * v18, v21);

  sub_1000059F8(0, &unk_1008DEED8);
  if (swift_dynamicCast())
  {
    v4 = v22;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    goto LABEL_3;
  }
}

void *sub_100655C20()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - v8;
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  v13 = [v1 endDate];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v11, v9, v2);
    v15 = [v1 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = [v1 workoutEvents];
    sub_1000059F8(0, &qword_1008DC000);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003AB3F0(v6, v11, v17, &v21);

    v18 = *(v3 + 8);
    v18(v6, v2);
    v18(v11, v2);
    return v21;
  }

  return v12;
}

uint64_t sub_100655EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v22 = type metadata accessor for DateInterval();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v7 + 16);
  v16(v12, a1, v6);
  v16(v10, a2, v6);
  DateInterval.init(start:end:)();
  swift_beginAccess();
  v17 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1001A1B60(0, v17[2] + 1, 1, v17);
    *(a3 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1001A1B60(v19 > 1, v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  result = (*(v13 + 32))(v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20, v15, v22);
  *(a3 + 16) = v17;
  return result;
}

uint64_t sub_10065610C(uint64_t a1, uint64_t a2, void **a3)
{
  v24 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 16);
  v16(v11, a1, v5);
  v16(v9, a2, v5);
  v17 = v24;
  DateInterval.init(start:end:)();
  v18 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1001A1B60(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1001A1B60(v20 > 1, v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  return (*(v13 + 32))(v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v15, v12);
}

double sub_100656390()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v19 - v10;
  v12 = [v0 endDate];
  if (!v12)
  {
    return 0.0;
  }

  v13 = v12;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v2 + 32))(v11, v7, v1);
  v14 = [v0 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v4, v1);
  v17(v11, v1);
  return v16;
}

id sub_1006565F0()
{
  v1 = v0;
  v2 = [v0 workoutConfiguration];
  v3 = [v2 activityType];

  v4 = [v1 workoutConfiguration];
  v5 = [v4 locationType];

  v6 = v5 == 2;
  sub_100140278(&qword_1008F79E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  v9 = [v1 workoutConfiguration];
  v10 = [v9 swimmingLocationType];

  *(inited + 48) = v10;
  v11 = sub_1004CD068(inited);
  swift_setDeallocating();
  sub_1006576C0(inited + 32);
  sub_100377598(v11);

  v12 = objc_allocWithZone(FIUIWorkoutActivityType);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithActivityTypeIdentifier:v3 isIndoor:v6 metadata:isa];

  return v14;
}

double sub_10065679C()
{
  v1 = v0;
  sub_1000059F8(0, &qword_1008DEE18);
  isa = HKQuantityType.init(_:)(HKQuantityTypeIdentifierCyclingCadence).super.super.super.isa;
  v3 = [v1 statisticsForType:isa];

  v4 = [v3 averageQuantity];
  if (v4)
  {
LABEL_2:
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 _countPerMinuteUnit];
    [v6 doubleValueForUnit:v7];
    v9 = v8;

    return v9;
  }

  v10 = [v1 metadata];
  if (v10)
  {
    v11 = v10;
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v12 + 16))
    {
      v15 = sub_100066F20(v13, v14);
      v17 = v16;

      if (v17)
      {
        sub_10000B1B4(*(v12 + 56) + 32 * v15, v26);

        sub_1000059F8(0, &unk_1008DEED8);
        if (swift_dynamicCast())
        {
          v4 = v27;
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          goto LABEL_2;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_13:
  v18 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierStepCount).super.super.super.isa;
  v19 = [v1 statisticsForType:v18];

  v9 = 0.0;
  if (v19)
  {
    v20 = [v19 sumQuantity];

    if (v20)
    {
      v21 = [objc_opt_self() countUnit];
      [v20 doubleValueForUnit:v21];
      v23 = v22;

      [v1 duration];
      return v23 / (v24 / 60.0);
    }
  }

  return v9;
}

uint64_t sub_100656BE8()
{
  v1 = v0;
  v2 = [v0 metadata];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v4 + 16))
  {

    goto LABEL_7;
  }

  v7 = sub_100066F20(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_10000B1B4(*(v4 + 56) + 32 * v7, v19);

  sub_1000059F8(0, &unk_1008DEED8);
  if (swift_dynamicCast())
  {
    return v20;
  }

LABEL_8:
  v11 = [v1 metadata];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v13 + 16))
  {

    goto LABEL_15;
  }

  v16 = sub_100066F20(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

  sub_10000B1B4(*(v13 + 56) + 32 * v16, v19);

  sub_1000059F8(0, &unk_1008DEED8);
  if (swift_dynamicCast())
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

void *sub_100656E40(void *a1)
{
  [a1 _isMetricDistance];
  isa = [v1 workoutEvents];
  if (!isa)
  {
    sub_1000059F8(0, &qword_1008DC000);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v3 = FISplitsForMeasuringSystemIdentifier();

  sub_1000059F8(0, &qword_1008DC000);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10065755C(v4);

  return v5;
}

void sub_100656FC8()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v3 + 16))
    {
      v6 = sub_100066F20(v4, v5);
      v8 = v7;

      if (v8)
      {
        sub_10000B1B4(*(v3 + 56) + 32 * v6, v11);

        sub_1000059F8(0, &unk_1008DEED8);
        if (swift_dynamicCast())
        {
          v9 = [objc_opt_self() countUnit];
          [v10 doubleValueForUnit:v9];
        }

        return;
      }
    }

    else
    {
    }
  }
}

void sub_100657178(id *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [*a1 metadata];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v13 + 16))
  {

    v39 = 0;
    goto LABEL_17;
  }

  v42 = v6;
  v43 = v2;
  v16 = sub_100066F20(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {

LABEL_12:
    v39 = 0;
    goto LABEL_17;
  }

  sub_10000B1B4(*(v13 + 56) + 32 * v16, v44);

  sub_1000059F8(0, &unk_1008DEED8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v39 = 0;
    goto LABEL_17;
  }

  v19 = v45;
  v20 = [v10 metadata];
  if (!v20)
  {
LABEL_15:

    goto LABEL_16;
  }

  v21 = v19;
  v22 = v20;
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v23 + 16))
  {

    goto LABEL_14;
  }

  v41 = sub_100066F20(v24, v25);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_14:

    v19 = v21;
    goto LABEL_15;
  }

  sub_10000B1B4(*(v23 + 56) + 32 * v41, v44);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v28 = v45;
  v29 = objc_opt_self();
  v30 = [v29 meterUnit];
  [v28 doubleValueForUnit:v30];
  v32 = v31;

  v33 = [v29 secondUnit];
  [v21 doubleValueForUnit:v33];
  v35 = v34;

  v36 = [v10 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = objc_allocWithZone(FIUIWorkoutSplit);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  (*(v42 + 8))(v9, v5);
  v39 = [v37 initWithDistance:isa duration:v32 dateInterval:v35];

LABEL_17:
  *a2 = v39;
}

void *sub_10065755C(unint64_t a1)
{
  v11 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v5;
      sub_100657178(&v10, &v9);

      if (v9)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v11;
      }

      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1006576C0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F79E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ActivityDailyGoalChartView()
{
  result = qword_1008F7A48;
  if (!qword_1008F7A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10065779C()
{
  type metadata accessor for Calendar();
  if (v0 <= 0x3F)
  {
    sub_10046440C();
    if (v1 <= 0x3F)
    {
      sub_100657848();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100657848()
{
  if (!qword_1008F7A58)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F7A58);
    }
  }
}

uint64_t sub_1006578B4(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDailyGoalChartView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[1] = *(a1 + *(v5 + 36));
  sub_10065AC7C(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_10065ACE0(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  sub_100140278(&unk_1008EBD40);
  sub_100140278(&qword_1008F7AB8);
  sub_10014A6B0(&qword_1008F7B40, &unk_1008EBD40);
  sub_10065A6DC();
  sub_10065ADC4();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100657A64@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v93 = sub_100140278(&qword_1008F7B50);
  __chkstk_darwin(v93);
  v92 = &v75 - v5;
  v6 = sub_100140278(&qword_1008F7B58);
  __chkstk_darwin(v6 - 8);
  v82 = &v75 - v7;
  v8 = sub_100140278(&qword_1008E3730);
  __chkstk_darwin(v8 - 8);
  v98 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v75 - v11;
  v84 = type metadata accessor for RuleMark();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100140278(&qword_1008E1CE0);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v75 - v13;
  v91 = sub_100140278(&qword_1008E1DD0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = &v75 - v16;
  v17 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100140278(&qword_1008F7AD0);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v21 = &v75 - v20;
  v22 = sub_100140278(&qword_1008F7B60);
  v95 = *(v22 - 8);
  v96 = v22;
  __chkstk_darwin(v22);
  v76 = &v75 - v23;
  v24 = sub_100140278(&qword_1008F7B68);
  __chkstk_darwin(v24 - 8);
  v26 = &v75 - v25;
  v27 = type metadata accessor for BarMark();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100140278(&qword_1008F7AC8);
  __chkstk_darwin(v31 - 8);
  v79 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v75 - v34;
  v36 = a1[1];
  v107 = *a1;
  v108 = v36;
  v109 = *(a1 + 32);
  sub_1006586AC(&v107, v26);
  v37 = (*(v28 + 48))(v26, 1, v27);
  v89 = a2;
  v99 = v35;
  if (v37 == 1)
  {
    sub_10000EA04(v26, &qword_1008F7B68);
    v38 = 1;
    v40 = v95;
    v39 = v96;
  }

  else
  {
    v41 = *(v28 + 32);
    v75 = v30;
    v41(v30, v26, v27);
    v42 = *(v17 + 20);
    v43 = enum case for RoundedCornerStyle.continuous(_:);
    v44 = type metadata accessor for RoundedCornerStyle();
    (*(*(v44 - 8) + 104))(&v19[v42], v43, v44);
    __asm { FMOV            V0.2D, #5.0 }

    *v19 = _Q0;
    v50 = sub_10065AB60(&qword_1008F7AD8, &type metadata accessor for RoundedRectangle);
    ChartContent.clipShape<A>(_:style:)();
    sub_10065AE6C(v19);
    v51 = v108;
    v52 = Color.gradient.getter();
    v53 = 1.0;
    if (v51 < *(&v51 + 1))
    {
      v53 = 0.5;
    }

    v100 = v52;
    *&v101 = v53;
    sub_100140278(&qword_1008E35B8);
    *&v104 = v27;
    *(&v104 + 1) = v17;
    v105 = &protocol witness table for BarMark;
    v106 = v50;
    swift_getOpaqueTypeConformance2();
    v35 = v99;
    sub_10014A6B0(&qword_1008E35E0, &qword_1008E35B8);
    v54 = v76;
    v55 = v78;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v77 + 8))(v21, v55);
    (*(v28 + 8))(v75, v27);
    v57 = v95;
    v56 = v96;
    (*(v95 + 32))(v35, v54, v96);
    v38 = 0;
    v39 = v56;
    v40 = v57;
  }

  (*(v40 + 56))(v35, v38, 1, v39);
  LocalizedStringKey.init(stringLiteral:)();
  v58 = v107;
  v104 = v107;
  swift_bridgeObjectRetain_n();
  static PlottableValue.value(_:_:)();

  sub_10065AE18(&v107);
  LocalizedStringKey.init(stringLiteral:)();
  v104 = v58;
  static PlottableValue.value(_:_:)();

  sub_10065AE18(&v107);
  result = LocalizedStringKey.init(stringLiteral:)();
  if (__OFADD__(*(&v108 + 1), 1))
  {
    __break(1u);
  }

  else
  {
    *&v104 = *(&v108 + 1) + 1;
    static PlottableValue.value(_:_:)();

    v60 = v80;
    RuleMark.init<A, B>(xStart:xEnd:y:)();
    *&v104 = Color.opacity(_:)();
    v61 = v83;
    v62 = v84;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v81 + 8))(v60, v62);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v100 = v62;
    v101 = &type metadata for Color;
    v102 = &protocol witness table for RuleMark;
    v103 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v63 = v86;
    v64 = v87;
    ChartContent.lineStyle(_:)();
    sub_10021D934(&v104);
    (*(v85 + 8))(v61, v64);
    v65 = v79;
    sub_1000A4E94(v99, v79);
    v66 = v90;
    v67 = *(v90 + 16);
    v68 = v88;
    v69 = v91;
    v67(v88, v63, v91);
    sub_10065A7F0();
    v70 = v92;
    sub_1000A4E94(v65, v92);
    v71 = v93;
    v72 = *(v93 + 48);
    v67((v70 + v72), v68, v69);
    v73 = v94;
    sub_1000A4F04(v70, v94);
    (*(v66 + 32))(v73 + *(v71 + 48), v70 + v72, v69);
    v74 = *(v66 + 8);
    v74(v63, v69);
    sub_1000A4F74(v99);
    v74(v68, v69);
    return sub_1000A4F74(v65);
  }

  return result;
}

uint64_t sub_1006586AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v34 = a2;
  v2 = sub_100140278(&qword_1008F7B58);
  __chkstk_darwin(v2 - 8);
  v28[1] = v28 - v3;
  v4 = sub_100140278(&qword_1008E3730);
  __chkstk_darwin(v4 - 8);
  v28[0] = v28 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateComponents();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Calendar();
  v30 = *(v13 - 8);
  v31 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() hk_gregorianCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100140278(&unk_1008E51B0);
  v17 = type metadata accessor for Calendar.Component();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006D46C0;
  (*(v18 + 104))(v20 + v19, enum case for Calendar.Component.weekday(_:), v17);
  sub_10001C970(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  v21 = v29;
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:)();

  (*(v7 + 8))(v9, v6);
  v22 = *(v21 + 16);
  if (v22 < 1 || (*(v21 + 32) & 1) != 0)
  {
    v23 = 1;
    v24 = v34;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v25 = *(v21 + 8);
    v35 = *v21;
    v36 = v25;

    static PlottableValue.value(_:_:)();

    sub_10065AE18(v21);
    LocalizedStringKey.init(stringLiteral:)();
    v35 = v22;
    static PlottableValue.value(_:_:)();

    v24 = v34;
    BarMark.init<A, B>(x:y:width:height:stacking:)();
    v23 = 0;
  }

  (*(v32 + 8))(v12, v33);
  (*(v30 + 8))(v15, v31);
  v26 = type metadata accessor for BarMark();
  return (*(*(v26 - 8) + 56))(v24, v23, 1, v26);
}

uint64_t sub_100658C08()
{
  v0 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v2 - 8);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  static AxisMarkValues.automatic.getter();
  sub_100140278(&qword_1008F7B30);
  sub_10065ABA8();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_100658D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AxisTick();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for AxisGridLine();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v37 - v13;
  v14 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100140278(&qword_1008E3790);
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  v49 = a1;
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  sub_100140278(&qword_1008F7B20);
  sub_10065AA58();
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v23 = v42;
  AxisGridLine.init(centered:stroke:)();
  static AxisTick.Length.automatic.getter();
  AxisTick.init(centered:length:stroke:)();
  v24 = *(v17 + 16);
  v41 = v19;
  v24(v19, v22, v16);
  v50[0] = v19;
  v25 = v44;
  v26 = *(v44 + 16);
  v38 = v11;
  v27 = v45;
  v26(v11, v23, v45);
  v50[1] = v11;
  v29 = v46;
  v28 = v47;
  v30 = v43;
  (*(v46 + 16))(v43, v8, v47);
  v50[2] = v30;
  sub_100248D84(v50, v48);
  v31 = *(v29 + 8);
  v31(v8, v28);
  v32 = *(v25 + 8);
  v32(v23, v27);
  v33 = *(v40 + 8);
  v34 = v22;
  v35 = v39;
  v33(v34, v39);
  v31(v30, v28);
  v32(v38, v27);
  return (v33)(v41, v35);
}

uint64_t sub_10065925C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v31 - v6;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v42 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v42);
  v41 = &v31 - v14;
  v15 = sub_100140278(&qword_1008E2B50);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v39 = &v31 - v17;
  AxisValue.as<A>(_:)();
  if (!v44)
  {
    v30 = 1;
    return (*(v16 + 56))(a1, v30, 1, v15);
  }

  v38 = v16;
  sub_10000FCBC();
  v18 = Text.init<A>(_:)();
  v35 = v19;
  v36 = v18;
  v43 = v18;
  v44 = v19;
  v34 = v20 & 1;
  v45 = v20 & 1;
  v37 = v21;
  v46 = v21;
  v22 = v8[13];
  v22(v13, enum case for DynamicTypeSize.xSmall(_:), v7);
  v22(v10, enum case for DynamicTypeSize.xxxLarge(_:), v7);
  sub_10065AB60(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v33 = a1;
    v24 = v8[4];
    v25 = v40;
    v24(v40, v13, v7);
    v24((v25 + *(v2 + 48)), v10, v7);
    sub_10001B104(v25, v4, &qword_1008E2B40);
    v26 = *(v2 + 48);
    v27 = v41;
    v24(v41, v4, v7);
    v32 = v15;
    v28 = v8[1];
    v28(&v4[v26], v7);
    sub_100015E80(v25, v4, &qword_1008E2B40);
    v24((v27 + *(v42 + 36)), &v4[*(v2 + 48)], v7);
    a1 = v33;
    v28(v4, v7);
    v15 = v32;
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    v29 = v39;
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v27, &qword_1008E2B48);
    sub_10004642C(v36, v35, v34);

    v16 = v38;
    (*(v38 + 32))(a1, v29, v15);
    v30 = 0;
    return (*(v16 + 56))(a1, v30, 1, v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_100659764()
{
  v0 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v2 - 8);
  static AxisMarkValues.automatic(desiredCount:roundLowerBound:roundUpperBound:)();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008F7B08);
  sub_10065A990();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_1006598DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = sub_100140278(&qword_1008F7B18);
  __chkstk_darwin(v43);
  v4 = &v37 - v3;
  v5 = type metadata accessor for AxisGridLine();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E2998);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100140278(&qword_1008E3790);
  v41 = *(v15 - 8);
  v42 = v15;
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  v45 = a1;
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  sub_100140278(&qword_1008F7B20);
  sub_10065AA58();
  v21 = 1;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  v22 = AxisValue.index.getter();
  v23 = v40;
  if (!v22)
  {
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v49 = v46;
    v50 = v47;
    v51 = v48;
    v24 = v20;
    v25 = v38;
    AxisGridLine.init(centered:stroke:)();
    v26 = v25;
    v20 = v24;
    (*(v23 + 32))(v12, v26, v5);
    v21 = 0;
  }

  v39 = v20;
  (*(v23 + 56))(v12, v21, 1, v5);
  v27 = v41;
  v28 = v42;
  v29 = *(v41 + 16);
  v29(v17, v20, v42);
  sub_10001B104(v12, v9, &qword_1008E2998);
  sub_10014A6B0(&qword_1008E3798, &qword_1008E3790);
  v29(v4, v17, v28);
  sub_1002336B8();
  v30 = v12;
  v31 = v9;
  v32 = v43;
  v33 = *(v43 + 48);
  sub_10001B104(v31, &v4[v33], &qword_1008E2998);
  v34 = v44;
  (*(v27 + 32))(v44, v4, v28);
  sub_100015E80(&v4[v33], v34 + *(v32 + 48), &qword_1008E2998);
  sub_10000EA04(v30, &qword_1008E2998);
  v35 = *(v27 + 8);
  v35(v39, v28);
  sub_10000EA04(v31, &qword_1008E2998);
  return (v35)(v17, v28);
}

uint64_t sub_100659E1C@<X0>(uint64_t a1@<X8>)
{
  v42 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v42);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v44 = sub_100140278(&qword_1008E2B50);
  v16 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v33 - v17;
  AxisValue.as<A>(_:)();
  if (v46 == 1)
  {
    v18 = 1;
    v19 = v44;
    return (*(v16 + 56))(a1, v18, 1, v19);
  }

  v40 = a1;
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v46 = v20;
  sub_10000FCBC();
  v21 = Text.init<A>(_:)();
  v37 = v22;
  v38 = v21;
  v45 = v21;
  v46 = v22;
  v36 = v23 & 1;
  v47 = v23 & 1;
  v39 = v24;
  v48 = v24;
  v25 = *(v43 + 104);
  v25(v12, enum case for DynamicTypeSize.xSmall(_:), v7);
  v25(v9, enum case for DynamicTypeSize.xxxLarge(_:), v7);
  sub_10065AB60(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v35 = v16;
    v27 = v43;
    v28 = *(v43 + 32);
    v28(v6, v12, v7);
    v34 = v13;
    v29 = v42;
    v28(&v6[*(v42 + 48)], v9, v7);
    sub_10001B104(v6, v3, &qword_1008E2B40);
    v30 = *(v29 + 48);
    v28(v15, v3, v7);
    v31 = *(v27 + 8);
    v31(&v3[v30], v7);
    sub_100015E80(v6, v3, &qword_1008E2B40);
    v28(&v15[*(v34 + 36)], &v3[*(v29 + 48)], v7);
    v31(v3, v7);
    v16 = v35;
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    v32 = v41;
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v15, &qword_1008E2B48);
    sub_10004642C(v38, v37, v36);

    a1 = v40;
    v19 = v44;
    (*(v16 + 32))(v40, v32, v44);
    v18 = 0;
    return (*(v16 + 56))(a1, v18, 1, v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_10065A340@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_100140278(&qword_1008F7A90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - v4;
  v14[0] = sub_100140278(&qword_1008F7A98);
  v6 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v8 = v14 - v7;
  v15 = v1;
  sub_100140278(&qword_1008F7AA0);
  sub_10065A658();
  Chart.init(content:)();
  v9 = sub_100140278(&qword_1008F7AE0);
  v10 = sub_10014A6B0(&qword_1008F7AE8, &qword_1008F7A90);
  v11 = sub_10014A6B0(&qword_1008F7AF0, &qword_1008F7AE0);
  View.chartXAxis<A>(content:)();
  (*(v3 + 8))(v5, v2);
  sub_100140278(&qword_1008F7AF8);
  v16 = v2;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008F7B00, &qword_1008F7AF8);
  v12 = v14[0];
  View.chartYAxis<A>(content:)();
  return (*(v6 + 8))(v8, v12);
}

unint64_t sub_10065A658()
{
  result = qword_1008F7AA8;
  if (!qword_1008F7AA8)
  {
    sub_100141EEC(&qword_1008F7AA0);
    sub_10065A6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7AA8);
  }

  return result;
}

unint64_t sub_10065A6DC()
{
  result = qword_1008F7AB0;
  if (!qword_1008F7AB0)
  {
    sub_100141EEC(&qword_1008F7AB8);
    sub_10065A7F0();
    sub_100141EEC(&qword_1008E1CE0);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7AB0);
  }

  return result;
}

unint64_t sub_10065A7F0()
{
  result = qword_1008F7AC0;
  if (!qword_1008F7AC0)
  {
    sub_100141EEC(&qword_1008F7AC8);
    sub_100141EEC(&qword_1008F7AD0);
    sub_100141EEC(&qword_1008E35B8);
    type metadata accessor for BarMark();
    type metadata accessor for RoundedRectangle();
    sub_10065AB60(&qword_1008F7AD8, &type metadata accessor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E35E0, &qword_1008E35B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7AC0);
  }

  return result;
}

unint64_t sub_10065A990()
{
  result = qword_1008F7B10;
  if (!qword_1008F7B10)
  {
    sub_100141EEC(&qword_1008F7B08);
    sub_10014A6B0(&qword_1008E3798, &qword_1008E3790);
    sub_1002336B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7B10);
  }

  return result;
}

unint64_t sub_10065AA58()
{
  result = qword_1008F7B28;
  if (!qword_1008F7B28)
  {
    sub_100141EEC(&qword_1008F7B20);
    sub_100141EEC(&qword_1008E2B48);
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7B28);
  }

  return result;
}

uint64_t sub_10065AB60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10065ABA8()
{
  result = qword_1008F7B38;
  if (!qword_1008F7B38)
  {
    sub_100141EEC(&qword_1008F7B30);
    sub_10014A6B0(&qword_1008E3798, &qword_1008E3790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7B38);
  }

  return result;
}

uint64_t sub_10065AC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDailyGoalChartView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10065ACE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDailyGoalChartView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10065AD44@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActivityDailyGoalChartView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100657A64(a1, v6, a2);
}

unint64_t sub_10065ADC4()
{
  result = qword_1008F7B48;
  if (!qword_1008F7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7B48);
  }

  return result;
}

uint64_t sub_10065AE6C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10065AEC8()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() separatorColor];
  [v0 setBackgroundColor:v1];

  return v0;
}

id sub_10065AF60()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

uint64_t type metadata accessor for TrendsStack()
{
  result = qword_1008F7BC8;
  if (!qword_1008F7BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10065B030()
{
  sub_10065B18C(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10005C818();
    if (v1 <= 0x3F)
    {
      sub_10005C6EC();
      if (v2 <= 0x3F)
      {
        sub_10065B18C(319, &unk_1008F7BD8, type metadata accessor for TrendListMetric, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_10065B18C(319, &qword_1008E63B8, type metadata accessor for DashboardCardCellViewCache, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10065B18C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10065B20C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for TrendsStack();
  v2 = v1 - 8;
  v40 = *(v1 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v1);
  v39 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v11 = sub_100140278(&qword_1008F7C18);
  __chkstk_darwin(v11 - 8);
  v13 = v38 - v12;
  v14 = static HorizontalAlignment.leading.getter();
  sub_10005491C(v10);
  v43 = enum case for DynamicTypeSize.xLarge(_:);
  v15 = *(v5 + 104);
  v44 = v5 + 104;
  v45 = v15;
  v15(v7);
  v42 = sub_10005BE64(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v16 = dispatch thunk of static Comparable.< infix(_:_:)();
  v17 = *(v5 + 8);
  v41 = v17;
  v17(v7, v4);
  v17(v10, v4);
  v18 = 0x4035000000000000;
  if (v16)
  {
    v18 = 0x4024000000000000;
  }

  *v13 = v14;
  *(v13 + 1) = v18;
  v13[16] = 0;
  v38[1] = *(sub_100140278(&qword_1008F7C20) + 44);
  v50 = *(v47 + *(v2 + 36));
  v19 = v39;
  sub_10065CA8C(v47, v39, type metadata accessor for TrendsStack);
  v20 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v21 = swift_allocObject();
  sub_10065C958(v19, v21 + v20, type metadata accessor for TrendsStack);

  sub_100140278(&qword_1008F7C28);
  sub_100140278(&qword_1008F7C30);
  sub_10014A6B0(&qword_1008F7C38, &qword_1008F7C28);
  v22 = sub_100141EEC(&qword_1008F7C40);
  v23 = sub_10065C874();
  v48 = v22;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  sub_10005BE64(&qword_1008F7C60, type metadata accessor for TrendListMetric);
  ForEach<>.init(_:content:)();
  v24 = static Edge.Set.top.getter();
  sub_10005491C(v10);
  v45(v7, v43, v4);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v25 = v7;
  v26 = v41;
  v41(v25, v4);
  v26(v10, v4);
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v46;
  sub_1000A543C(v13, v46);
  result = sub_100140278(&qword_1008F7C68);
  v37 = v35 + *(result + 36);
  *v37 = v24;
  *(v37 + 8) = v28;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_10065B734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = type metadata accessor for TrendsStack();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = type metadata accessor for TrendListMetric();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008F7C40);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = sub_100140278(&qword_1008F7C70);
  sub_10065BA00(a2, a1, &v14[*(v15 + 44)]);
  v14[*(v12 + 36)] = 0;
  sub_10065CA8C(a1, v11, type metadata accessor for TrendListMetric);
  sub_10065CA8C(a2, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrendsStack);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_10065C958(v11, v18 + v16, type metadata accessor for TrendListMetric);
  sub_10065C958(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TrendsStack);
  sub_10065C874();
  View.onTapGesture(count:perform:)();

  return sub_10000EA04(v14, &qword_1008F7C40);
}

uint64_t sub_10065BA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_100140278(&qword_1008E63F8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  sub_10065CA8C(a2, &v33 - v10, type metadata accessor for TrendListMetric);
  v12 = type metadata accessor for TrendsStack();
  v13 = (a1 + *(v12 + 20));
  v14 = v13[3];
  v15 = v13[4];
  sub_1000066AC(v13, v14);
  v16 = (*(v15 + 24))(v14, v15);
  v17 = *(a1 + *(v12 + 32));
  v18 = type metadata accessor for TrendArrowIndicatorViewRepresentable();
  v11[*(v18 + 20)] = v16 & 1;
  *&v11[*(v18 + 24)] = v17;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v11[*(sub_100140278(&qword_1008E6400) + 36)];
  v20 = v38;
  *v19 = v37;
  *(v19 + 1) = v20;
  *(v19 + 2) = v39;
  v21 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v22 = &v11[*(v6 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = static HorizontalAlignment.leading.getter();
  v36 = 0;
  sub_10065BD6C(a2, a1, v43);
  memcpy(v40, v43, sizeof(v40));
  memcpy(v41, v43, sizeof(v41));
  sub_10001B104(v40, v42, &qword_1008F7C78);
  sub_10000EA04(v41, &qword_1008F7C78);
  memcpy(&v35[7], v40, 0x1C8uLL);
  LOBYTE(v15) = v36;
  sub_10001B104(v11, v8, &qword_1008E63F8);
  v28 = v34;
  sub_10001B104(v8, v34, &qword_1008E63F8);
  v29 = sub_100140278(&qword_1008F7C80);
  v30 = *(v29 + 48);
  v42[0] = v27;
  v42[1] = 0;
  LOBYTE(v42[2]) = v15;
  memcpy(&v42[2] + 1, v35, 0x1CFuLL);
  memcpy((v28 + v30), v42, 0x1E0uLL);
  v31 = v28 + *(v29 + 64);
  *v31 = 0;
  *(v31 + 8) = 0;
  sub_10001B104(v42, v43, &qword_1008F7C88);
  sub_10000EA04(v11, &qword_1008E63F8);
  v43[0] = v27;
  v43[1] = 0;
  LOBYTE(v43[2]) = v15;
  memcpy(&v43[2] + 1, v35, 0x1CFuLL);
  sub_10000EA04(v43, &qword_1008F7C88);
  return sub_10000EA04(v8, &qword_1008E63F8);
}

uint64_t sub_10065BD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v52 = a2;
  v63 = a3;
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v50 - v8;
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = v13;
  v54 = v13;
  v119 = v14;
  v120 = v15;
  sub_10000FCBC();

  v17 = Text.init<A>(_:)();
  v66 = v18;
  v67 = v17;
  LOBYTE(v15) = v19;
  v64 = v20;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v68 = v15 & 1;
  v170 = v15 & 1;
  KeyPath = swift_getKeyPath();
  *(&v70 + 1) = static Font.callout.getter();
  *&v70 = swift_getKeyPath();
  v69 = swift_getKeyPath();
  v171 = 0;
  v21 = type metadata accessor for TrendListMetric();
  (*(v10 + 16))(v12, &v16[*(v21 + 28)], v9);
  v22 = Text.init(_:)();
  v60 = v23;
  v61 = v22;
  LOBYTE(v10) = v24;
  v62 = v25;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v57 = v10 & 1;
  v156 = v10 & 1;
  v59 = swift_getKeyPath();
  v58 = swift_getKeyPath();
  v157 = 0;
  v26 = v53;
  sub_10005491C(v53);
  v27 = enum case for DynamicTypeSize.xLarge(_:);
  v51 = *(v5 + 104);
  v28 = v56;
  v51(v56, enum case for DynamicTypeSize.xLarge(_:), v4);
  sub_10005BE64(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  LOBYTE(v10) = dispatch thunk of static Comparable.< infix(_:_:)();
  v29 = *(v5 + 8);
  v29(v28, v4);
  v29(v26, v4);
  if (v10)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = -3.0;
  }

  v55 = static Edge.Set.bottom.getter();
  sub_10005491C(v26);
  v51(v28, v27, v4);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v29(v28, v4);
  v29(v26, v4);
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v159 = 0;
  v39 = sub_100582888(*v54);
  v40 = *&v39[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  v41 = Color.init(uiColor:)();
  *&v89 = v67;
  *(&v89 + 1) = v66;
  LOBYTE(v90) = v68;
  *(&v90 + 1) = *v169;
  DWORD1(v90) = *&v169[3];
  v95 = v166;
  v96 = v167;
  v97 = v168;
  v91 = v162;
  v92 = v163;
  v93 = v164;
  v94 = v165;
  *(&v90 + 1) = v64;
  *&v98 = KeyPath;
  *(&v98 + 1) = 0x3FE999999999999ALL;
  v99 = v70;
  *&v100 = v69;
  *(&v100 + 1) = 1;
  v101 = 0;
  v88[192] = 0;
  *&v88[96] = v166;
  *&v88[112] = v167;
  *&v88[32] = v162;
  *&v88[48] = v163;
  *&v88[64] = v164;
  *&v88[80] = v165;
  *v88 = v89;
  *&v88[16] = v90;
  *&v88[128] = v168;
  *&v88[144] = v98;
  *&v88[160] = v70;
  *&v88[176] = v100;
  v43 = v60;
  v42 = v61;
  *&v102 = v61;
  *(&v102 + 1) = v60;
  v44 = v57;
  LOBYTE(v103) = v57;
  *(&v103 + 1) = *v155;
  DWORD1(v103) = *&v155[3];
  v45 = v62;
  *(&v103 + 1) = v62;
  v108 = v152;
  v109 = v153;
  v110 = v154;
  v104 = v148;
  v105 = v149;
  v107 = v151;
  v106 = v150;
  v47 = v58;
  v46 = v59;
  *&v111 = v59;
  *(&v111 + 1) = 0x3FE999999999999ALL;
  *&v112 = v58;
  *(&v112 + 1) = 1;
  LOBYTE(v113) = 0;
  *(&v113 + 1) = *v158;
  HIDWORD(v113) = *&v158[3];
  v114 = 0;
  *&v115 = v30;
  v48 = v55;
  BYTE8(v115) = v55;
  *(&v115 + 9) = *v160;
  HIDWORD(v115) = *&v160[3];
  *&v116 = v32;
  *(&v116 + 1) = v34;
  *&v117 = v36;
  *(&v117 + 1) = v38;
  LOBYTE(v118) = 0;
  DWORD1(v118) = *&v161[3];
  *(&v118 + 1) = *v161;
  *(&v118 + 1) = v41;
  *&v88[296] = v152;
  *&v88[312] = v153;
  *&v88[264] = v150;
  *&v88[280] = v151;
  *&v88[360] = v112;
  *&v88[376] = v113;
  *&v88[328] = v154;
  *&v88[344] = v111;
  *&v88[424] = v117;
  *&v88[440] = v118;
  *&v88[392] = v115;
  *&v88[408] = v116;
  *&v88[248] = v149;
  *&v88[232] = v148;
  *&v88[216] = v103;
  *&v88[200] = v102;
  memcpy(v63, v88, 0x1C8uLL);
  v119 = v42;
  v120 = v43;
  v121 = v44;
  *v122 = *v155;
  *&v122[3] = *&v155[3];
  v123 = v45;
  v128 = v152;
  v129 = v153;
  v130 = v154;
  v124 = v148;
  v125 = v149;
  v127 = v151;
  v126 = v150;
  v131 = v46;
  v132 = 0x3FE999999999999ALL;
  v133 = v47;
  v134 = 1;
  v135 = 0;
  *v136 = *v158;
  *&v136[3] = *&v158[3];
  v137 = 0;
  v138 = v30;
  v139 = v48;
  *v140 = *v160;
  *&v140[3] = *&v160[3];
  v141 = v32;
  v142 = v34;
  v143 = v36;
  v144 = v38;
  v145 = 0;
  *&v146[3] = *&v161[3];
  *v146 = *v161;
  v147 = v41;
  sub_10001B104(&v89, v71, &qword_1008F7C90);
  sub_10001B104(&v102, v71, &qword_1008F7C98);
  sub_10000EA04(&v119, &qword_1008F7C98);
  v71[0] = v67;
  v71[1] = v66;
  v72 = v68;
  *v73 = *v169;
  *&v73[3] = *&v169[3];
  v74 = v64;
  v79 = v166;
  v80 = v167;
  v81 = v168;
  v75 = v162;
  v76 = v163;
  v77 = v164;
  v78 = v165;
  v82 = KeyPath;
  v83 = 0x3FE999999999999ALL;
  v84 = v70;
  v85 = v69;
  v86 = 1;
  v87 = 0;
  return sub_10000EA04(v71, &qword_1008F7C90);
}

uint64_t sub_10065C60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendsActionContext(0);
  __chkstk_darwin(v4);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10065CA8C(a1, v6, type metadata accessor for TrendListMetric);
  v7 = type metadata accessor for TrendListMetric();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = &v6[*(v4 + 20)];
  *v8 = 0;
  v8[8] = -1;
  v9 = type metadata accessor for TrendsStack();
  sub_10001B104(a2 + *(v9 + 24), v20, &qword_1008DC808);
  if (v21)
  {
    v10 = sub_1000066AC(v20, v21);
    v11 = (a2 + *(v9 + 20));
    v19[3] = v4;
    v12 = sub_100005994(v19);
    sub_10065CA8C(v6, v12, type metadata accessor for TrendsActionContext);
    v13 = *v10;
    v14 = v11[3];
    v15 = v11[4];
    v16 = sub_1000066AC(v11, v14);
    sub_100607BA4(v16, v19, v13, v14, v15);
    sub_1002DD1C4(v6);
    sub_10000EA04(v19, &qword_1008E51F0);
    return sub_100005A40(v20);
  }

  else
  {
    sub_1002DD1C4(v6);
    return sub_10000EA04(v20, &qword_1008DC808);
  }
}

uint64_t sub_10065C7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TrendsStack() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10065B734(a1, v6, a2);
}

unint64_t sub_10065C874()
{
  result = qword_1008F7C48;
  if (!qword_1008F7C48)
  {
    sub_100141EEC(&qword_1008F7C40);
    sub_10014A6B0(&qword_1008F7C50, &qword_1008F7C58);
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7C48);
  }

  return result;
}

uint64_t sub_10065C958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10065C9C0()
{
  v1 = *(type metadata accessor for TrendListMetric() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for TrendsStack() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10065C60C(v0 + v2, v5);
}

uint64_t sub_10065CA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10065CAF4()
{
  result = qword_1008F7CA0;
  if (!qword_1008F7CA0)
  {
    sub_100141EEC(&qword_1008F7C68);
    sub_10014A6B0(&qword_1008F7CA8, &qword_1008F7C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7CA0);
  }

  return result;
}

double sub_10065CBBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v11 = a3;
  v12 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26[-1] - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 < 3 || a1 ^ 6 | a2)
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1004D9430(a4, v26);
  v19 = v27;
  if (!v27)
  {
    sub_10000EA04(v26, &qword_1008DCC60);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_8:
    UUID.init()();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_10000EA04(v14, &unk_1008DB8A0);
    }

    goto LABEL_10;
  }

  v20 = v28;
  sub_1000066AC(v26, v27);
  (*(v20 + 8))(v19, v20);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100005A40(v26);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_8;
  }

  (*(v16 + 32))(v18, v14, v15);
LABEL_10:
  v22 = type metadata accessor for FitnessPlusSampleContentCard();
  *(a6 + 24) = v22;
  *(a6 + 32) = &off_10084B820;
  v23 = sub_100005994(a6);
  (*(v16 + 32))(v23, v18, v15);
  v24 = v23 + v22[5];
  *&result = 6;
  *v24 = xmmword_1006D4A90;
  v24[16] = 3;
  *(v23 + v22[6]) = 1;
  *(v23 + v22[7]) = a5 & 1;
  *(v23 + v22[8]) = 1;
  return result;
}

void sub_10065CEC0(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v2;
  v8 = [v2 allValidLocations];
  v37 = sub_10028CAC8();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
LABEL_36:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 >= 2)
  {
    v11 = [v38 allValidLocations];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;

    v36 = v14;
    v15 = [v14 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v17 = v16;
    v19 = *(v5 + 8);
    v5 += 8;
    v18 = v19;
    v19(v7, v4);
    v20 = [v38 allValidLocations];
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = fabs(v17);

    v24 = 0;
    while (v24 < v22)
    {
      if (__OFSUB__(v22, v24))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v25 = v24 + (v22 - v24) / 2;
      if (__OFADD__(v24, (v22 - v24) / 2))
      {
        goto LABEL_32;
      }

      v26 = [v38 allValidLocations];
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v25 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v28 = *(v27 + 8 * v25 + 32);
      }

      v29 = v28;

      v30 = [v29 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      v32 = v31;
      v18(v7, v4);
      v33 = fabs(v32);
      if (v33 < 0.5)
      {

        return;
      }

      if (v33 < v23)
      {

        v36 = v29;
        v23 = v33;
      }

      v34 = [v29 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v34) = static Date.< infix(_:_:)();
      v18(v7, v4);
      if (v34)
      {
        v24 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        v22 = v24 + (v22 - v24) / 2;
      }
    }

    if (v23 > a1)
    {
    }
  }
}

__n128 sub_10065D2D4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10065D300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10065D348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10065D3A4(unsigned __int8 a1)
{
  if (*(*v1 + 16) <= a1 || (v2 = 24 * a1, v3 = *v1 + v2, (*(v3 + 48) & 1) != 0) || (v4 = v1[7], *(v4 + 16) <= a1) || (*(v4 + v2 + 48) & 1) != 0 || (v5 = *(v4 + v2 + 32), v5 <= 0.0))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = *(v3 + 32) / v5;
  }

  return result;
}

uint64_t sub_10065D414(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[7];
  v3 = a1[8];
  v5 = a2[1];
  v7 = a2[7];
  v6 = a2[8];
  if ((sub_10031B088(*a1, *a2) & 1) == 0 || (sub_10031B100(v2, v5) & 1) == 0 || (sub_10031B088(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_10031B100(v3, v6);
}

id sub_10065D520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10065D564(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_titleLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = UILabel.withNumberOfLines(_:)();

  v13 = UILabel.withLineBreakMode(_:)();
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_descriptionLabel;
  v15 = [objc_allocWithZone(UILabel) init];
  v16 = UILabel.withNumberOfLines(_:)();

  v17 = UILabel.withLineBreakMode(_:)();
  v18 = [objc_opt_self() secondaryLabelColor];
  v19 = UILabel.withTextColor(_:)();

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v14] = v19;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for TrophyCaseSectionHeaderView();
  v20 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_titleLabel];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_descriptionLabel]];
  sub_10065D8D4();

  return v22;
}

id sub_10065D740(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_titleLabel;
  v5 = [objc_allocWithZone(UILabel) init];
  v6 = UILabel.withNumberOfLines(_:)();

  v7 = UILabel.withLineBreakMode(_:)();
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v4] = v7;
  v8 = OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_descriptionLabel;
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = UILabel.withNumberOfLines(_:)();

  v11 = UILabel.withLineBreakMode(_:)();
  v12 = [objc_opt_self() secondaryLabelColor];
  v13 = UILabel.withTextColor(_:)();

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v8] = v13;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for TrophyCaseSectionHeaderView();
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

void sub_10065D8D4()
{
  v25 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D9800;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_titleLabel];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [v2 trailingAnchor];
  v7 = [v0 trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-15.0];

  *(v1 + 40) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:15.0];

  *(v1 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_descriptionLabel];
  v13 = [v12 topAnchor];
  v14 = [v2 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:8.0];

  *(v1 + 56) = v15;
  v16 = [v12 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-15.0];

  *(v1 + 64) = v18;
  v19 = [v12 trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-15.0];

  *(v1 + 72) = v21;
  v22 = [v12 leadingAnchor];
  v23 = [v0 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:15.0];

  *(v1 + 80) = v24;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];
}

id sub_10065DC64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrophyCaseSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10065DD08()
{
  AAUIAwardsDataProviderSection.localized()();
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  v1 = sub_1000059F8(0, &qword_1008F73C0);
  v2 = NSFontAttributeName;
  v3 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  *(inited + 64) = v1;
  *(inited + 40) = v3;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100198304(inited + 32);
  v4 = objc_allocWithZone(NSAttributedString);
  v5 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10017597C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithString:v5 attributes:isa];

  return v7;
}

id sub_10065DEA0()
{
  _StringGuts.grow(_:)(22);
  AAUIAwardsDataProviderSection.rawValue.getter();

  v0._object = 0x8000000100769430;
  v0._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v0);
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  v5 = objc_opt_self();
  v6 = NSFontAttributeName;
  v7 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 40) = v7;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100198304(inited + 32);
  v8 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10017597C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithString:v3 attributes:isa];

  return v10;
}

double sub_10065E0F0(double a1)
{
  v1 = a1 + -30.0;
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = UILabel.withNumberOfLines(_:)();

  v4 = UILabel.withLineBreakMode(_:)();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [objc_allocWithZone(UILabel) init];
  v6 = UILabel.withNumberOfLines(_:)();

  v7 = UILabel.withLineBreakMode(_:)();
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = sub_10065DD08();
  [v4 setAttributedText:v8];

  v9 = sub_10065DEA0();
  [v7 setAttributedText:v9];

  [v4 sizeThatFits:{v1, 1.79769313e308}];
  v11 = v10;
  [v7 sizeThatFits:{v1, 1.79769313e308}];
  v13 = v12;

  return v11 + 8.0 + v13 + 15.0;
}

uint64_t sub_10065E288(void *a1)
{
  *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_lastCollectionViewContentHeight) = 0;
  v3 = v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_delegate;
  *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_protectedAppsSubscription) = 0;
  v4 = v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_suggestedMinutesToWalk;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_walkSuggestionCell;
  *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_walkSuggestionCell) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendations) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appStoreRecommendations) = _swiftEmptyArrayStorage;

  *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations) = _swiftEmptyArrayStorage;
  sub_1000A7304(v3);
  swift_unknownObjectRelease();

  type metadata accessor for AddToYourRingCollectionViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10065E3C0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    [result removeObserver:v0];

    v3 = OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_protectedAppsSubscription;
    v4 = *&v0[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_protectedAppsSubscription];
    if (v4)
    {
      [v4 invalidate];
    }

    *&v0[v3] = 0;
    swift_unknownObjectRelease();
    v5.receiver = v0;
    v5.super_class = type metadata accessor for AddToYourRingCollectionViewController();
    return objc_msgSendSuper2(&v5, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10065E5A8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AddToYourRingCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  [v1 setDelegate:v0];

  v3 = [v0 collectionView];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setDataSource:v0];

  v5 = [v0 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setScrollEnabled:0];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10065E6D4()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3 - 8];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = sub_100663DD4;
  v9[6] = v5;

  sub_10026E7AC(0, 0, v4, &unk_100702D98, v9);

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    [result addObserver:v1];

    v12 = [objc_msgSend(objc_opt_self() "subjectMonitorRegistry")];
    swift_unknownObjectRelease();
    *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_protectedAppsSubscription) = v12;
    swift_unknownObjectRelease();
    swift_getObjectType();
    type metadata accessor for NetworkConditionsChanged();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

    sub_100005A40(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10065E9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v8;
  v6[16] = v7;

  return _swift_task_switch(sub_10065EA70, v8, v7);
}

uint64_t sub_10065EA70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendationDataProvider, v0 + 16);

    v3 = sub_1000066AC((v0 + 16), *(v0 + 40));
    v4 = *v3;
    *(v0 + 144) = *v3;

    return _swift_task_switch(sub_10065EB70, v4, 0);
  }

  else
  {

    **(v0 + 80) = *(v0 + 136) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10065EB70()
{
  v1 = v0[13];
  v2 = (v0[18] + OBJC_IVAR____TtC10FitnessApp40SeymourWorkoutRecommendationDataProvider_updateHandler);
  v3 = *v2;
  *v2 = v0[12];
  v2[1] = v1;

  sub_1000245E0(v3);
  sub_10016E640();
  v4 = v0[15];
  v5 = v0[16];

  return _swift_task_switch(sub_10065EC08, v4, v5);
}

uint64_t sub_10065EC08()
{

  sub_100005A40(v0 + 16);
  **(v0 + 80) = *(v0 + 136) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_10065EC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;

    sub_10026E198(0, 0, v6, a3, v12);
  }
}

uint64_t sub_10065EE00()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = ObjectType;

  sub_10026E198(0, 0, v3, &unk_100702D70, v8);

  v5(v3, 1, 1, v4);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  sub_10026E198(0, 0, v3, &unk_100702D80, v11);

  v5(v3, 1, 1, v4);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;

  sub_10026E198(0, 0, v3, &unk_100702D88, v14);
}

id sub_10065F0CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  IndexSet.init()();
  v20 = *(v5 + 16);
  v41 = v16;
  v20(v13, v16, v4);
  v21 = *(a1 + 16);
  if (v21)
  {
    v39 = v19;
    v40 = v2;
    v22 = a1 + 32;
    v23 = (v5 + 8);
    v24 = (v5 + 32);
    v37 = v5;
    v38 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      ++v22;
      IndexSet.init(integer:)();
      IndexSet.union(_:)();
      v25 = *v23;
      (*v23)(v7, v4);
      v25(v13, v4);
      (*v24)(v13, v10, v4);
      --v21;
    }

    while (v21);
    v19 = v39;
    v2 = v40;
    v26 = v37;
  }

  else
  {
    v26 = v5;
    v25 = *(v5 + 8);
  }

  v25(v41, v4);
  (*(v26 + 32))(v19, v13, v4);
  result = [v2 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v28 = result;
  v29 = [result window];

  if (!v29)
  {
    result = [v2 collectionView];
    if (result)
    {
      v33 = result;
      [result reloadData];
      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  result = [v2 collectionView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = result;
  IndexSet._bridgeToObjectiveC()(v30);
  v33 = v32;
  [v31 reloadSections:v32];

LABEL_13:
  v34 = *&v2[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_lastCollectionViewContentHeight];
  sub_1006715E8();
  if (v34 != v35)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10050FDD8();
      swift_unknownObjectRelease();
    }
  }

  return (v25)(v19, v4);
}

uint64_t sub_10065F480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[42] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[43] = v8;
  v4[44] = v7;

  return _swift_task_switch(sub_10065F5D0, v8, v7);
}

id sub_10065F5D0()
{
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result isStandalonePhoneFitnessMode];

  if (v3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v5 = swift_task_alloc();
      v0[45] = v5;
      *v5 = v0;
      v5[1] = sub_10065FA2C;

      return sub_1005C24C8();
    }

    v6 = v0[41];
    v7 = v0[38];
    v17 = v0[40];
    v18 = v0[39];
    v9 = v0[36];
    v8 = v0[37];
    sub_1000078CC();
    v16 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v0[13] = v13;
    v0[12] = sub_100663DA8;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_1000449A8;
    v0[11] = &unk_100866C80;
    v12 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[33] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
  }

  else
  {
    v6 = v0[41];
    v17 = v0[40];
    v18 = v0[39];
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];

    sub_1000078CC();
    v16 = static OS_dispatch_queue.main.getter();
    v10 = swift_allocObject();
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v0[7] = v10;
    v0[6] = sub_100663D84;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000449A8;
    v0[5] = &unk_100866C58;
    v12 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[32] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
  }

  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v8 + 8))(v7, v9);
  (*(v17 + 8))(v6, v18);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10065FA2C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 368) = a1;
  *(v4 + 376) = a2;

  v5 = *(v3 + 352);
  v6 = *(v3 + 344);

  return _swift_task_switch(sub_10065FB58, v6, v5);
}

uint64_t sub_10065FB58()
{
  v1 = v0;
  v2 = *(v0 + 376);
  v3 = v1[46];

  if ((v2 & 1) != 0 || v3 > 9)
  {
    v5 = v1[41];
    v6 = v1[38];
    v18 = v1[40];
    v19 = v1[39];
    v7 = v1[36];
    v8 = v1[37];
    sub_1000078CC();
    v17 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v1[13] = v13;
    v1[12] = sub_100663DA8;
    v1[8] = _NSConcreteStackBlock;
    v1[9] = 1107296256;
    v1[10] = sub_1000449A8;
    v1[11] = &unk_100866C80;
    v12 = _Block_copy(v1 + 8);

    static DispatchQoS.unspecified.getter();
    v1[33] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
  }

  else
  {
    v4 = v1[46];
    v5 = v1[41];
    v6 = v1[38];
    v18 = v1[40];
    v19 = v1[39];
    v7 = v1[36];
    v8 = v1[37];
    sub_1000078CC();
    v17 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v11 = swift_allocObject();
    v1[19] = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v4;
    v1[18] = sub_100663DCC;
    v1[14] = _NSConcreteStackBlock;
    v1[15] = 1107296256;
    v1[16] = sub_1000449A8;
    v1[17] = &unk_100866CD0;
    v12 = _Block_copy(v1 + 14);

    static DispatchQoS.unspecified.getter();
    v1[34] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
  }

  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v8 + 8))(v6, v7);
  (*(v18 + 8))(v5, v19);

  v15 = v1[1];

  return v15();
}

void sub_10065FEE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = &Strong[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_suggestedMinutesToWalk];
    *v4 = 0;
    v4[8] = 1;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_10065F0CC(a2);
  }
}

void sub_10065FF80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = &Strong[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_suggestedMinutesToWalk];
    *v4 = a2;
    v4[8] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_walkSuggestionCell), v7 = v5, v8 = v6, v7, v6))
  {
    sub_1003E7838();
  }

  else
  {
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      return;
    }

    v8 = v9;
    sub_10065F0CC(&off_1008465A8);
  }
}

uint64_t sub_10066007C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[35] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[36] = v8;
  v4[37] = v7;

  return _swift_task_switch(sub_1006601CC, v8, v7);
}

uint64_t sub_1006601CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendationDataProvider, (v0 + 8));

    sub_1000066AC(v0 + 8, v0[11]);
    v3 = swift_task_alloc();
    v0[38] = v3;
    *v3 = v0;
    v3[1] = sub_1006604E8;

    return sub_100173378();
  }

  else
  {

    v5 = v0[34];
    v6 = v0[31];
    v15 = v0[33];
    v16 = v0[32];
    v7 = v0[29];
    v8 = v0[30];
    sub_1000078CC();
    v14 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = _swiftEmptyArrayStorage;
    v0[6] = sub_100663D7C;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000449A8;
    v0[5] = &unk_100866C30;
    v12 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[27] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v8 + 8))(v6, v7);
    (*(v15 + 8))(v5, v16);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1006604E8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 312) = a1;

  if (v1)
  {

    v4 = *(v3 + 288);
    v5 = *(v3 + 296);
    v6 = sub_10066098C;
  }

  else
  {
    v9 = v3 + 288;
    v8 = *(v3 + 288);
    v7 = *(v9 + 8);

    v6 = sub_100660638;
    v4 = v8;
    v5 = v7;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100660638()
{
  v1 = v0[39];

  sub_100005A40((v0 + 8));
  if (!*(v1 + 16))
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v3 = Strong;
  sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_networkEvaluator, (v0 + 13));

  sub_1000066AC(v0 + 13, v0[16]);
  dispatch thunk of NetworkEvaluating.queryNetworkConditions()();
  sub_100005A40((v0 + 13));
  v4 = NetworkConditions.rawValue.getter();
  v6 = v5;
  if (v4 == NetworkConditions.rawValue.getter() && v6 == v7)
  {

    v8 = v0[39];
    goto LABEL_7;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v8 = v0[39];
  if ((v19 & 1) == 0)
  {
LABEL_6:

    v8 = _swiftEmptyArrayStorage;
  }

LABEL_7:
  v9 = v0[34];
  v10 = v0[31];
  v21 = v0[33];
  v22 = v0[32];
  v11 = v0[29];
  v12 = v0[30];
  sub_1000078CC();
  v20 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v8;
  v0[6] = sub_100663D7C;
  v0[7] = v15;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_100866C30;
  v16 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[27] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v12 + 8))(v10, v11);
  (*(v21 + 8))(v9, v22);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10066098C()
{

  sub_100005A40((v0 + 8));
  v1 = v0[34];
  v2 = v0[31];
  v12 = v0[33];
  v13 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  sub_1000078CC();
  v11 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = _swiftEmptyArrayStorage;
  v0[6] = sub_100663D7C;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_100866C30;
  v8 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[27] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v4 + 8))(v2, v3);
  (*(v12 + 8))(v1, v13);

  v9 = v0[1];

  return v9();
}

void sub_100660BD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendations) = a2;
    v4 = Strong;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_10065F0CC(&off_1008465D0);
  }
}

uint64_t sub_100660C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[35] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[36] = v8;
  v4[37] = v7;

  return _swift_task_switch(sub_100660DD8, v8, v7);
}

uint64_t sub_100660DD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider, (v0 + 8));

    v3 = sub_1000066AC(v0 + 8, v0[11]);
    v4 = *v3;
    v0[38] = *v3;
    v5 = sub_10066112C;
LABEL_5:

    return _swift_task_switch(v5, v4, 0);
  }

  v0[43] = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_100007C5C(v6 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider, (v0 + 13));

    v8 = sub_1000066AC(v0 + 13, v0[16]);
    v4 = *v8;
    v0[44] = *v8;
    v5 = sub_100661A68;
    goto LABEL_5;
  }

  v19 = v0[43];
  v9 = v0[34];
  v10 = v0[31];
  v21 = v0[33];
  v22 = v0[32];
  v11 = v0[29];
  v12 = v0[30];
  sub_1000078CC();
  v20 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v19;
  v15[4] = _swiftEmptyArrayStorage;
  v0[6] = sub_1006639E0;
  v0[7] = v15;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_100866AC8;
  v16 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[27] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v12 + 8))(v10, v11);
  (*(v21 + 8))(v9, v22);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10066112C()
{
  v1 = v0[38];
  v2 = *(v1 + 216);
  v0[39] = v2;
  v0[40] = *(v1 + 224);
  if (*(v1 + 232) == 1)
  {
    v0[42] = *(v1 + 216);
    v5 = v0[36];
    v6 = v0[37];

    v7 = sub_10066147C;
    v8 = v5;
    v9 = v6;
  }

  else
  {
    if (!*(v1 + 232))
    {

      v3 = swift_task_alloc();
      v0[41] = v3;
      v4 = sub_100140278(&qword_1008EB640);
      *v3 = v0;
      v3[1] = sub_100661290;

      return Task.value.getter(v4, v2, &type metadata for () + 8, v4, &protocol self-conformance witness table for Error);
    }

    v8 = v0[36];
    v9 = v0[37];
    v7 = sub_100661770;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100661290()
{
  v2 = *v1;

  v3 = *(v2 + 304);
  if (v0)
  {

    v4 = sub_100663F68;
  }

  else
  {
    v4 = sub_1006613C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006613C8()
{
  v1 = v0[38];
  sub_10039EC30(v0[39], v0[40], 0);
  if (*(v1 + 232) == 1)
  {
    v2 = v0[37];
    v0[42] = *(v0[38] + 216);
    v3 = v0[36];

    v4 = sub_10066147C;
    v5 = v3;
    v6 = v2;
  }

  else
  {
    v5 = v0[36];
    v6 = v0[37];
    v4 = sub_100661770;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10066147C()
{
  sub_100005A40((v0 + 8));
  v0[43] = v0[42];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider, (v0 + 13));

    v3 = sub_1000066AC(v0 + 13, v0[16]);
    v4 = *v3;
    v0[44] = *v3;

    return _swift_task_switch(sub_100661A68, v4, 0);
  }

  else
  {

    v5 = v0[43];
    v6 = v0[34];
    v7 = v0[31];
    v17 = v0[33];
    v18 = v0[32];
    v8 = v0[29];
    v9 = v0[30];
    sub_1000078CC();
    v16 = static OS_dispatch_queue.main.getter();
    v10 = swift_allocObject();
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v5;
    v12[4] = _swiftEmptyArrayStorage;
    v0[6] = sub_1006639E0;
    v0[7] = v12;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000449A8;
    v0[5] = &unk_100866AC8;
    v13 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[27] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v9 + 8))(v7, v8);
    (*(v17 + 8))(v6, v18);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100661770()
{
  sub_100005A40((v0 + 8));
  v0[43] = _swiftEmptyArrayStorage;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider, (v0 + 13));

    v3 = sub_1000066AC(v0 + 13, v0[16]);
    v4 = *v3;
    v0[44] = *v3;

    return _swift_task_switch(sub_100661A68, v4, 0);
  }

  else
  {

    v15 = v0[43];
    v5 = v0[34];
    v6 = v0[31];
    v17 = v0[33];
    v18 = v0[32];
    v7 = v0[29];
    v8 = v0[30];
    sub_1000078CC();
    v16 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v15;
    v11[4] = _swiftEmptyArrayStorage;
    v0[6] = sub_1006639E0;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000449A8;
    v0[5] = &unk_100866AC8;
    v12 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[27] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v8 + 8))(v6, v7);
    (*(v17 + 8))(v5, v18);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100661A68()
{
  v1 = v0[44];
  v2 = *(v1 + 216);
  v0[45] = v2;
  v3 = *(v1 + 224);
  v0[46] = v3;
  v4 = *(v1 + 232);
  if (v4 == 1)
  {
    v0[48] = v3;
    v7 = v0[36];
    v8 = v0[37];

    v9 = sub_100661DB4;
    v10 = v7;
    v11 = v8;
  }

  else
  {
    if (!v4)
    {

      v5 = swift_task_alloc();
      v0[47] = v5;
      v6 = sub_100140278(&qword_1008EB640);
      *v5 = v0;
      v5[1] = sub_100661BC8;

      return Task.value.getter(v6, v2, &type metadata for () + 8, v6, &protocol self-conformance witness table for Error);
    }

    v10 = v0[36];
    v11 = v0[37];
    v9 = sub_100662030;
  }

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100661BC8()
{
  v2 = *v1;

  v3 = *(v2 + 352);
  if (v0)
  {

    v4 = sub_100661D00;
  }

  else
  {
    v4 = sub_100663F6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100661D00()
{
  v1 = v0[44];
  sub_10039EC30(v0[45], v0[46], 0);
  if (*(v1 + 232) == 1)
  {
    v0[48] = *(v0[44] + 224);
    v2 = v0[36];
    v3 = v0[37];

    v4 = sub_100661DB4;
    v5 = v2;
    v6 = v3;
  }

  else
  {
    v5 = v0[36];
    v6 = v0[37];
    v4 = sub_100662030;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100661DB4()
{
  v1 = v0[48];

  sub_100005A40((v0 + 13));
  v2 = v0[48];
  if (!*(v1 + 16))
  {

    v2 = _swiftEmptyArrayStorage;
  }

  v13 = v0[43];
  v3 = v0[34];
  v4 = v0[31];
  v15 = v0[33];
  v16 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  sub_1000078CC();
  v14 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v13;
  v9[4] = v2;
  v0[6] = sub_1006639E0;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_100866AC8;
  v10 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[27] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v6 + 8))(v4, v5);
  (*(v15 + 8))(v3, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100662030()
{

  sub_100005A40((v0 + 13));
  v1 = v0[43];
  v2 = v0[34];
  v3 = v0[31];
  v13 = v0[33];
  v14 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  sub_1000078CC();
  v12 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v1;
  v8[4] = _swiftEmptyArrayStorage;
  v0[6] = sub_1006639E0;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_100866AC8;
  v9 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[27] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v13 + 8))(v2, v14);

  v10 = v0[1];

  return v10();
}

void sub_100662284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appStoreRecommendations) = a2;
    v6 = Strong;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    *(v7 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations) = a3;
    v8 = v7;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_10065F0CC(&off_1008465F8);
  }
}

uint64_t sub_10066240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  sub_100140278(&qword_1008E1760);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v6;
  v4[18] = v5;

  return _swift_task_switch(sub_1006624E0, v6, v5);
}

uint64_t sub_1006624E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider, (v0 + 2));

    sub_1000066AC(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_10066271C;

    return sub_10052C244();
  }

  else
  {

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = v0[14];
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v10 = static MainActor.shared.getter();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v9;

      sub_10026E198(0, 0, v7, &unk_100702D60, v11);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10066271C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_10066283C, v3, v2);
}

uint64_t sub_10066283C()
{

  sub_100005A40(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 112);
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;

    sub_10026E198(0, 0, v3, &unk_100702D60, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100662A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  sub_100140278(&qword_1008E1760);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v6;
  v4[18] = v5;

  return _swift_task_switch(sub_100662B0C, v6, v5);
}

uint64_t sub_100662B0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider, (v0 + 2));

    sub_1000066AC(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_100662D48;

    return sub_10052C244();
  }

  else
  {

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = v0[14];
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v10 = static MainActor.shared.getter();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v9;

      sub_10026E198(0, 0, v7, &unk_100702D48, v11);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100662D48()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_100662E68, v3, v2);
}

uint64_t sub_100662E68()
{

  sub_100005A40(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 112);
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;

    sub_10026E198(0, 0, v3, &unk_100702D48, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100663064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  sub_100140278(&qword_1008E1760);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v6;
  v4[18] = v5;

  return _swift_task_switch(sub_100663138, v6, v5);
}

uint64_t sub_100663138()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider, (v0 + 2));

    sub_1000066AC(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_10066324C;

    return sub_10052C244();
  }

  else
  {

    return _swift_task_switch(sub_1006633D4, 0, 0);
  }
}

uint64_t sub_10066324C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_10066336C, v3, v2);
}

uint64_t sub_10066336C()
{
  sub_100005A40(v0 + 16);

  return _swift_task_switch(sub_1006633D4, 0, 0);
}

uint64_t sub_1006633D4()
{
  *(v0 + 160) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100663460, v2, v1);
}

uint64_t sub_100663460()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[14];
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;

    sub_10026E198(0, 0, v3, &unk_100702D30, v7);
  }

  v8 = v0[17];
  v9 = v0[18];

  return _swift_task_switch(sub_1006635DC, v8, v9);
}

uint64_t sub_1006635DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006636D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  static os_log_type_t.default.getter();
  v8 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;

  sub_10026E198(0, 0, v7, a4, v12);
}

uint64_t sub_100663878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100663064(a1, v4, v5, v6);
}

uint64_t sub_10066392C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100660C88(a1, v4, v5, v6);
}

uint64_t sub_1006639EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100662A38(a1, v4, v5, v6);
}

uint64_t sub_100663AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_100660C88(a1, v4, v5, v6);
}

uint64_t sub_100663B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10066240C(a1, v4, v5, v6);
}

uint64_t sub_100663C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10065F480(a1, v4, v5, v6);
}

uint64_t sub_100663CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10066007C(a1, v4, v5, v6);
}

uint64_t sub_100663E0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BBC0;

  return sub_10065E9D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100663F0C(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

__n128 sub_100663F98@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  v5 = *v4;
  v6 = *(v4 + 8);
  v8 = *(v4 + 16);
  v7 = *(v4 + 32);
  if (*v4)
  {
    v9 = *(v4 + 48);
    v10 = *v4;
    v11 = v6;
    v18 = v7;
    v19 = v8;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = *(Strong + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_nBins);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 24;
    }

    sub_10001C204(v13, &v21, 0.0, v13);
    v14 = v24;
    v15 = *v4;
    v16 = v22;
    *v4 = v21;
    *(v4 + 16) = v16;
    *(v4 + 32) = v23;
    *(v4 + 48) = v14;
    sub_100386EA8(&v21, v20);
    sub_100383E48(v15);
    v9 = v24;
    v18 = v23;
    v19 = v22;
    v11 = *(&v21 + 1);
    v10 = v21;
  }

  sub_100383E08(v5);
  *a2 = v10;
  *(a2 + 8) = v11;
  result = v19;
  *(a2 + 16) = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v9;
  return result;
}

char *sub_100664118()
{
  sub_100663F80(v7);
  v0 = objc_allocWithZone(type metadata accessor for BarSeriesLayer());
  v1 = sub_10046461C(v7);
  v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_drawsEmptyBins] = 0;
  result = [objc_opt_self() sedentaryColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_100140278(&unk_1008E4E20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D68D0;
  result = [v3 gradientDarkColor];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v4 + 32) = result;
  result = [v3 gradientLightColor];
  if (result)
  {
    *(v4 + 40) = result;
    *&v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors] = v4;

    sub_10051A974(v5);

    v6 = &v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing];
    *v6 = 0x4000000000000000;
    v6[8] = 0;
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_10066429C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_100664300()
{
  sub_100663F8C(v13);
  v0 = objc_allocWithZone(type metadata accessor for BarSeriesLayer());
  v1 = sub_10046461C(v13);
  v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_drawsEmptyBins] = 0;
  result = [objc_opt_self() sedentaryColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  result = [result gradientDarkColor];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = [result colorWithAlphaComponent:0.3];

  result = [v3 gradientLightColor];
  if (result)
  {
    v6 = result;
    v7 = [result colorWithAlphaComponent:0.3];

    sub_100140278(&unk_1008E4E20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006D68D0;
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    *&v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors] = v8;
    v9 = v5;
    v10 = v7;

    sub_10051A974(v11);

    v12 = &v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing];
    *v12 = 0x4000000000000000;
    v12[8] = 0;
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1006644D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___stoodHistogram];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 6) = 0;
  v11 = &v4[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___sedentaryHistogram];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 6) = 0;
  v12 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_axisLayer;
  v13 = objc_allocWithZone(type metadata accessor for ChartAxisGridLayer());
  *&v4[v12] = sub_100215CE8(1);
  *&v4[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___stoodBarLayer] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___sedentaryBarLayer] = 0;
  v14 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_labels;
  sub_100384674();
  *&v5[v14] = v15;
  v16 = &v5[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_listener];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_dataProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_chartHeight] = 0x4051400000000000;
  v38.receiver = v5;
  v38.super_class = type metadata accessor for ActivityStandChartView();
  v17 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 layer];
  [v18 addSublayer:*&v17[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_axisLayer]];

  v19 = [v17 layer];
  v20 = sub_1006640F8();
  [v19 addSublayer:v20];

  v21 = [v17 layer];
  v22 = sub_10066427C();
  [v21 addSublayer:v22];

  v23 = *&v17[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_labels];
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_10:
    v28 = [objc_opt_self() defaultCenter];
    v29 = [objc_opt_self() mainQueue];
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = sub_100665D48;
    v37 = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026F8C;
    ObjectType = &unk_100866D98;
    v31 = _Block_copy(aBlock);

    v32 = [v28 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:v29 usingBlock:v31];
    _Block_release(v31);

    ObjectType = swift_getObjectType();
    aBlock[0] = v32;
    v33 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_listener;
    swift_beginAccess();
    sub_1002885B8(aBlock, &v17[v33]);
    swift_endAccess();

    return;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v24 >= 1)
  {

    for (i = 0; i != v24; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v23 + 8 * i + 32);
      }

      v27 = v26;
      [v17 addSubview:v26];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1006648E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100664958();
  }
}

id sub_100664958()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_labels);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    [v9 setNeedsLayout];

    return [v9 invalidateIntrinsicContentSize];
  }

LABEL_14:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    if (!result)
    {
      break;
    }

    v8 = result;
    [v5 setFont:result];

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100664AD0(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___stoodHistogram;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  v5 = v1 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___sedentaryHistogram;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v6 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_axisLayer;
  v7 = objc_allocWithZone(type metadata accessor for ChartAxisGridLayer());
  *(v1 + v6) = sub_100215CE8(1);
  v8 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___stoodBarLayer;
  *(v1 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___stoodBarLayer) = 0;
  v9 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___sedentaryBarLayer;
  *(v1 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___sedentaryBarLayer) = 0;
  v10 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_labels;
  sub_100384674();
  v12 = v11;

  *(v2 + v10) = v12;
  v13 = (v2 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_listener);
  *v13 = 0u;
  v13[1] = 0u;
  v14 = v2 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_dataProvider;
  *(v2 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_dataProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_chartHeight) = 0x4051400000000000;
  sub_100383E48(*v4);
  sub_100383E48(*v5);

  sub_1001B3EEC(v13);
  sub_1000A7304(v14);
  type metadata accessor for ActivityStandChartView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100664C80()
{
  v1 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_listener;
  swift_beginAccess();
  sub_1002E12DC(v0 + v1, &v5);
  if (v6)
  {
    sub_1001AA76C(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    sub_1000066AC(&v7, v8);
    [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100005A40(&v7);
  }

  else
  {
    sub_1001B3EEC(&v5);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ActivityStandChartView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100664E68(int a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v96 = v3;
  v97 = v4;
  __chkstk_darwin(v3);
  v95 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  HIDWORD(v92) = a1;
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_nBins);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 24;
  }

  sub_10001C204(v7, v108, 0.0, v7);
  v8 = v109;
  v9 = v1 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___stoodHistogram;
  v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___stoodHistogram);
  v11 = v108[1];
  *v9 = v108[0];
  *(v9 + 16) = v11;
  *(v9 + 32) = v108[2];
  *(v9 + 48) = v8;
  sub_100383E48(v10);
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_nBins);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 24;
  }

  sub_10001C204(v13, v110, 0.0, v13);
  v14 = v111;
  v15 = v1 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___sedentaryHistogram;
  v16 = *(v1 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___sedentaryHistogram);
  v17 = v110[1];
  *v15 = v110[0];
  *(v15 + 16) = v17;
  *(v15 + 32) = v110[2];
  v103 = v15;
  *(v15 + 48) = v14;
  sub_100383E48(v16);
  sub_100663F80(v112);
  v18 = *(v112[0] + 16);
  sub_100386E54(v112);
  v102 = v18;
  v104 = v1;
  if (!v18)
  {
LABEL_72:
    v82 = sub_1006640F8();
    v83 = *v9;
    v84 = *(v9 + 8);
    v85 = *(v9 + 24);
    v107 = *(v9 + 16);
    v86 = *(v9 + 32);
    v87 = *(v9 + 40);
    v88 = *(v9 + 48);
    v117[0] = v83;
    v117[1] = v84;
    v117[2] = v107;
    v117[3] = v85;
    v117[4] = v86;
    v117[5] = v87;
    v117[6] = v88;

    sub_100464458(v117, BYTE4(v92) & 1);
    sub_100383E48(v83);

    v89 = v104;
    v90 = sub_10066427C();
    sub_100663F8C(v116);
    sub_100464458(v116, BYTE4(v92) & 1);
    sub_100386E54(v116);

    v91 = *(v89 + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_axisLayer);
    *&v91[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay] = *(*v9 + 16);
    [v91 setNeedsLayout];
    swift_unknownObjectRelease();
    return;
  }

  v101 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData;
  v107 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartBuckets;
  swift_beginAccess();
  v19 = 0;
  v93 = v97 + 8;
  v94 = v97 + 16;
  __asm { FMOV            V0.2D, #1.0 }

  v98 = _Q0;
  while (1)
  {
    v37 = Strong;
    v38 = *(Strong + v107);
    if (v38)
    {
      break;
    }

    v40 = 0.0;
    *&_Q0 = 0;
LABEL_29:
    v106 = _Q0;
LABEL_55:
    v67 = *v9;
    v68 = *(v9 + 8);
    v69 = *(v9 + 16);
    v70 = *(v9 + 24);
    v71 = *(v9 + 32);
    v72 = *(v9 + 40);
    v73 = *(v9 + 48);
    if (v19 >= *(*v9 + 16))
    {

      v76 = v67;
    }

    else
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_10057F5E0(v67);
      }

      if (v19 >= *(v67 + 2))
      {
        goto LABEL_78;
      }

      v74 = &v67[24 * v19];
      *(v74 + 4) = v40;
      *(v74 + 5) = 0x3FF0000000000000;
      v74[48] = 0;
      if (v70 < v40)
      {
        v70 = v40;
        v71 = 1.0;
      }

      v75 = v72 < 0.0;
      if (v40 < v72)
      {
        v75 = 1;
      }

      if (v75)
      {
        v72 = v40;
        v73 = 1.0;
      }

      v76 = v67;
      v67 = *v9;
    }

    *v9 = v76;
    *(v9 + 8) = v68;
    *(v9 + 16) = v69;
    *(v9 + 24) = v70;
    *(v9 + 32) = v71;
    *(v9 + 40) = v72;
    *(v9 + 48) = v73;
    sub_100383E48(v67);
    sub_100663F8C(v113);
    v77 = v113[0];
    v78 = v113[1];
    v79 = v113[2];
    v30 = v114;
    v34 = v115;
    if (v19 < *(v113[0] + 16))
    {
      v99 = v115;
      v100 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_10057F5E0(v77);
      }

      v81 = v99;
      v80 = v100;
      if (v19 >= *(v77 + 2))
      {
        goto LABEL_79;
      }

      v25 = *&v106;
      v26 = vdup_n_s32(*v100.i64 < *&v106);
      v27 = &v77[24 * v19];
      *(v27 + 4) = v106;
      *(v27 + 5) = 0x3FF0000000000000;
      v27[48] = 0;
      v28.i64[0] = v26.u32[0];
      v28.i64[1] = v26.u32[1];
      v29.i64[1] = *(&v98 + 1);
      *v29.i64 = v25;
      v30 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v28, 0x3FuLL)), v29, v80);
      v31 = *v81.i64 < 0.0;
      if (v25 < *v81.i64)
      {
        v31 = 1;
      }

      v32 = vdup_n_s32(v31);
      v33.i64[0] = v32.u32[0];
      v33.i64[1] = v32.u32[1];
      v34 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v33, 0x3FuLL)), v29, v81);
    }

    ++v19;
    v35 = v103;
    v36 = *v103;
    *v103 = v77;
    v35[1] = v78;
    v35[2] = v79;
    *(v35 + 3) = v30;
    *(v35 + 5) = v34;
    sub_100383E48(v36);
    if (v19 == v102)
    {
      goto LABEL_72;
    }
  }

  v39 = *(Strong + v101);
  *&_Q0 = 0;
  v106 = _Q0;
  v40 = 0.0;
  if (!v39 || v19 >= *(v38 + 16))
  {
    goto LABEL_36;
  }

  v41 = v96;
  v42 = v97;
  v43 = v95;
  (*(v97 + 16))(v95, v38 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v19, v96);

  Date.timeIntervalSinceReferenceDate.getter();
  v45 = v44;
  (*(v42 + 8))(v43, v41);
  if (v39 >> 62)
  {
    v46 = _CocoaArrayWrapper.endIndex.getter();
    if (v46)
    {
LABEL_19:
      v47 = 0;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v47 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v48 = *(v39 + 8 * v47 + 32);
        }

        v49 = v48;
        v50 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        [v48 timeStamp];
        if (vabdd_f64(v51, v45) < 2.22044605e-16)
        {
          break;
        }

        ++v47;
        if (v50 == v46)
        {
          goto LABEL_34;
        }
      }

      v52 = [v49 state];

      if (v52)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v46 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_19;
    }
  }

LABEL_34:

  v40 = 0.0;
LABEL_35:
  v37 = Strong;
LABEL_36:
  v53 = *(v37 + v107);
  if (!v53)
  {
    goto LABEL_55;
  }

  v54 = *(v37 + v101);
  if (!v54 || v19 >= *(v53 + 16))
  {
    goto LABEL_55;
  }

  v55 = v96;
  v56 = v97;
  v57 = v95;
  (*(v97 + 16))(v95, v53 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v19, v96);

  Date.timeIntervalSinceReferenceDate.getter();
  v59 = v58;
  (*(v56 + 8))(v57, v55);
  if (!(v54 >> 62))
  {
    v60 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

  v60 = _CocoaArrayWrapper.endIndex.getter();
  if (!v60)
  {
LABEL_54:

    goto LABEL_55;
  }

LABEL_41:
  v61 = 0;
  while (1)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v61 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v62 = *(v54 + 8 * v61 + 32);
    }

    v63 = v62;
    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    [v62 timeStamp];
    if (vabdd_f64(v65, v59) < 2.22044605e-16)
    {

      v66 = [v63 state];

      if (v66 == 1)
      {
        *&_Q0 = 1.0;
      }

      else
      {
        *&_Q0 = 0.0;
      }

      goto LABEL_29;
    }

    ++v61;
    if (v64 == v60)
    {
      goto LABEL_54;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

void sub_1006656F8()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for ActivityStandChartView();
  objc_msgSendSuper2(&v27, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v28);
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_chartHeight];
  v3 = sub_1006640F8();
  [v3 setFrame:{0.0, 0.0, Width, v2}];

  v4 = sub_10066427C();
  [v4 setFrame:{0.0, 0.0, Width, v2}];

  [*&v0[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_axisLayer] setFrame:sub_100665D2C(0.0)];
  [v0 bounds];
  v5 = CGRectGetWidth(v29);
  v26 = v0;
  v6 = *&v0[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_labels];
  if (v6 >> 62)
  {
LABEL_16:
    v24 = v5;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v24;
    v7 = v25;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___stoodBarLayer;
  if (v7)
  {
    v9 = 0;
    v10 = v5 * 0.25;
    v11 = 0.0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(v6 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      [v12 sizeToFit];
      [v13 bounds];
      [v13 setFrame:{v11, 0.0}];
      [*&v26[v8] frame];
      MaxY = CGRectGetMaxY(v30);
      v16 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      [v16 _scaledValueForValue:13.0];
      v19 = v18;

      [v13 _setFirstLineBaselineFrameOriginY:MaxY + v19];
      v11 = v10 + v11;
      ++v9;
      if (v14 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v20 = *&v26[v8];
    v21 = objc_opt_self();
    v22 = v20;
    [v21 begin];
    [v21 setDisableActions:1];
    v22[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 1;
    sub_100464574();
    [v21 commit];

    v23 = *&v26[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView____lazy_storage___sedentaryBarLayer];
    [v21 begin];
    [v21 setDisableActions:1];
    v23[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 1;
    sub_100464574();
    [v21 commit];
  }
}

void *sub_100665C28()
{
  sub_100663F80(v9);
  sub_10006C958();
  v1 = v0;
  sub_100386E54(v9);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10018616C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage[2];
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      v6 = _swiftEmptyArrayStorage[3];
      if (v3 >= v6 >> 1)
      {
        v8 = *(v1 + v4);
        sub_10018616C((v6 > 1), v3 + 1, 1);
        v5 = v8;
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *&_swiftEmptyArrayStorage[2 * v3 + 4] = v5;
      v4 += 16;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void sub_100665D50()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  sub_100666080();
  if (v1)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  [v0 setDateFormat:v2];

  qword_1008F7F00 = v0;
}

id sub_100665DD4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (result)
  {
    v2 = result;
    [v0 setFont:result];

    v3 = [objc_opt_self() secondaryLabelColor];
    [v0 setTextColor:v3];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100665EB0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v20[0] = a3;
          v20[1] = v19;
          v11 = v20 + v9;
        }

        else
        {
          v10 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      LODWORD(v20[0]) = v12;
      v15 = a1(v20);
      if (v4)
      {
      }

      if (v15)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return v21;
      }
    }
  }

  return 0;
}

uint64_t sub_100666080()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _CPTimeFormatIs24HourMode();
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();

  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  v11 = [v8 dateFormatFromTemplate:v9 options:0 locale:isa];

  if (!v11)
  {
    return 0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v23 = v12;
  v24 = v14;
  v21 = 97;
  v22 = 0xE100000000000000;
  sub_10000FCBC();
  if (StringProtocol.contains<A>(_:)())
  {
    v15 = CharacterSet.init(charactersIn:)();
    __chkstk_darwin(v15);
    *&v20[-16] = v3;

    v16 = sub_100665EB0(sub_100666394, &v20[-32], v12, v14);
    v18 = v17;

    v23 = 0;
    v24 = 0xE000000000000000;
    v21 = v16;
    v22 = v18;
    String.UnicodeScalarView.append<A>(contentsOf:)();

    v12 = v23;
    (*(v1 + 8))(v3, v0);
  }

  return v12;
}

void *sub_1006663CC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for Date();
  v26 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v25 = &v22 - v16;
  if (a3 == a4)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    if (a4 >= a3)
    {
      v27 = (v26 + 32);
      v28 = (v26 + 48);
      v29 = _swiftEmptyArrayStorage;
      v23 = a1;
      v24 = a4;
      v22 = v14;
      while (a4 != a3)
      {
        v30 = a3;
        a1(&v30);
        if (v4)
        {

          return v29;
        }

        if ((*v28)(v10, 1, v11) == 1)
        {
          result = sub_10000EA04(v10, &unk_1008F73A0);
        }

        else
        {
          v17 = *v27;
          v18 = v25;
          (*v27)(v25, v10, v11);
          v17(v14, v18, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_10001AC68(0, v29[2] + 1, 1, v29);
          }

          v20 = v29[2];
          v19 = v29[3];
          if (v20 >= v19 >> 1)
          {
            v29 = sub_10001AC68(v19 > 1, v20 + 1, 1, v29);
          }

          v21 = v29;
          v29[2] = v20 + 1;
          v14 = v22;
          result = (v17)(v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20, v22, v11);
          a1 = v23;
          a4 = v24;
        }

        if (a4 == ++a3)
        {
          return v29;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_1006666CC(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v15 = v8;
    a1(&v12, &v15);
    if (v3)
    {
      break;
    }

    if (v13)
    {
      sub_100006260(&v12, v14);
      sub_100006260(v14, &v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1001A1E58(0, v6[2] + 1, 1, v6);
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        v6 = sub_1001A1E58((v9 > 1), v10 + 1, 1, v6);
      }

      v6[2] = v10 + 1;
      sub_100006260(&v12, &v6[5 * v10 + 4]);
    }

    else
    {
      sub_10000EA04(&v12, &qword_1008DCC60);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_10066682C(void *result, uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

char *sub_100666970(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008EC4E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for CatalogLockup();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for PersonalizationCandidate() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = _swiftEmptyArrayStorage;
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_10000EA04(v8, &qword_1008EC4E8);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1001A2F40(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1001A2F40(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

char *sub_100666C9C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008F80C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_100140278(&unk_1008E4D90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for Artwork() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = _swiftEmptyArrayStorage;
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_10000EA04(v8, &qword_1008F80C8);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1001A3360(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1001A3360(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void *sub_100666FD4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008E0600);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v29 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v27 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for SleepingSampleBaselineComparison() - 8);
  v24 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v18 = _swiftEmptyArrayStorage;
  v25 = v9;
  v26 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_10000EA04(v8, &qword_1008E0600);
    }

    else
    {
      v19 = v27;
      sub_1005544C0(v8, v27);
      sub_1005544C0(v19, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1001A3728(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1001A3728(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_1005544C0(v29, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21);
      v9 = v25;
      a1 = v26;
    }

    v17 += v28;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_1006672B8(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &qword_1008EE6E0;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_100670CE0();
      for (i = 0; i != v14; ++i)
      {
        sub_100140278(v3);
        v18 = v3;
        v19 = sub_10047463C(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1000059F8(0, &qword_1008DC980);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_1006675DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setLocalizedDateFormatFromTemplate:v6];

  *a4 = v5;
}

void *sub_100667654()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer) frame];
  Width = CGRectGetWidth(v10);
  v2 = Width / 52.0 + (Width / 52.0 + -2.0) / 52.0;
  sub_100185EE8(0, 52, 0);
  v3 = 0.0;
  v4 = 1;
  result = _swiftEmptyArrayStorage;
  do
  {
    v9 = result;
    v7 = result[2];
    v6 = result[3];
    if (v7 >= v6 >> 1)
    {
      sub_100185EE8((v6 > 1), v7 + 1, 1);
      result = v9;
    }

    v8 = v2 * v3;
    v3 = v4;
    result[2] = v7 + 1;
    *&result[v7 + 4] = v8 + 1.0;
    ++v4;
  }

  while (v4 != 53);
  return result;
}

void *sub_100667804()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer) frame];
  Width = CGRectGetWidth(v10);
  v2 = (Width / 52.0 + (Width / 52.0 + -2.0) / 52.0) * 0.5;
  sub_100185EE8(0, 103, 0);
  v3 = 0.0;
  v4 = 1;
  result = _swiftEmptyArrayStorage;
  while (v3 < 103.0)
  {
    v9 = result;
    v7 = result[2];
    v6 = result[3];
    if (v7 >= v6 >> 1)
    {
      sub_100185EE8((v6 > 1), v7 + 1, 1);
      result = v9;
    }

    v8 = v2 * v3;
    v3 = v4;
    result[2] = v7 + 1;
    *&result[v7 + 4] = v8 + 1.0;
    if (++v4 == 104)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

char *sub_100667924(int a1, int a2, _OWORD *a3, _OWORD *a4, void *a5, double a6, double a7)
{
  v8 = v7;
  v80 = a5;
  v81 = a3;
  v83 = a4;
  v87 = a2;
  v79 = a1;
  v11 = type metadata accessor for Date();
  v84 = *(v11 - 8);
  v85 = v11;
  __chkstk_darwin(v11);
  v82 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_titleLabel;
  v14 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setAdjustsFontForContentSizeCategory:1];
  *&v7[v13] = v14;
  v89 = sub_1000059F8(0, &qword_1008E2D40);
  v15 = sub_100555C98();
  v16 = objc_opt_self();
  v90 = UIFontTextStyleCaption2;
  v88 = UIContentSizeCategoryExtraExtraExtraLarge;
  result = [v16 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:?];
  if (result)
  {
    v18 = result;
    v19 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMaxLabel;
    [v15 setFont:result];

    *&v8[v19] = v15;
    v20 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer;
    v21 = sub_1000059F8(0, &qword_1008E7580);
    *&v8[v20] = sub_10065AF60();
    v22 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_container365;
    *&v8[v22] = sub_10065AF60();
    v23 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_container90;
    v78[1] = v21;
    *&v8[v23] = sub_10065AF60();
    v24 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisContainer;
    *&v8[v24] = [objc_allocWithZone(UILayoutGuide) init];
    v25 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisLayer;
    *&v8[v25] = [objc_allocWithZone(CAShapeLayer) init];
    v26 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_gradientLayer90;
    *&v8[v26] = [objc_allocWithZone(CAGradientLayer) init];
    v27 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90;
    *&v8[v27] = [objc_allocWithZone(CAShapeLayer) init];
    v28 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_gradientLayer365;
    *&v8[v28] = [objc_allocWithZone(CAGradientLayer) init];
    v29 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365;
    *&v8[v29] = [objc_allocWithZone(CAShapeLayer) init];
    v30 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer90;
    *&v8[v30] = [objc_allocWithZone(CAShapeLayer) init];
    v31 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer365;
    *&v8[v31] = [objc_allocWithZone(CAShapeLayer) init];
    v32 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter365;
    type metadata accessor for TrendAveragePlatterView();
    *&v8[v32] = sub_10065AF60();
    v33 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter90;
    *&v8[v33] = sub_10065AF60();
    v34 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMask;
    type metadata accessor for TrendChartMaskingView();
    *&v8[v34] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v35 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberPlatter;
    type metadata accessor for TrendsScrubberPlatterView();
    *&v8[v35] = sub_10065AF60();
    v36 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpole;
    type metadata accessor for TrendsScrubberFlagpoleView();
    v37 = sub_10065AF60();
    v86 = v8;
    *&v8[v36] = v37;
    *&v102[0] = _swiftEmptyArrayStorage;
    v38 = 12;
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      v39 = sub_100555C98();
      result = [v16 _preferredFontForTextStyle:v90 variant:1024 maximumContentSizeCategory:v88];
      if (!result)
      {
        __break(1u);
        goto LABEL_14;
      }

      v40 = result;
      [v39 setFont:result];

      v41 = [objc_opt_self() secondaryLabelColor];
      [v39 setTextColor:v41];

      [v39 setTextAlignment:0];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v38;
    }

    while (v38);
    v42 = v86;
    *&v86[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisMonthLabels] = *&v102[0];
    v43 = sub_100555C98();
    result = [v16 _preferredFontForTextStyle:v90 variant:1024 maximumContentSizeCategory:v88];
    if (!result)
    {
      goto LABEL_15;
    }

    v44 = result;
    v45 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisYearLabel;
    [v43 setFont:result];

    *&v42[v45] = v43;
    v46 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_monthLabelsStackView;
    sub_1000059F8(0, &qword_1008E6F30);
    *&v42[v46] = sub_10065AF60();
    v47 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_div;
    *&v42[v47] = sub_10065AEC8();
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops] = _swiftEmptyArrayStorage;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineStops] = _swiftEmptyArrayStorage;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_extraTopPaddingPercentage] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_januaryLabel] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewLeftConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewRightConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_yearLabelLeftConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterXConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterYConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterXConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterYConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberCenterXConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleBottomConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleCenterXConstraint] = 0;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_nWeeksIn90DayBucket] = 13;
    v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_filled] = 0;
    v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type] = v79;
    v48 = v87;
    v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_direction] = v87;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_average90] = a6;
    v49 = &v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_histogram90];
    v50 = v81;
    v51 = v81[1];
    *v49 = *v81;
    *(v49 + 1) = v51;
    *(v49 + 2) = *(v50 + 32);
    *(v49 + 6) = *(v50 + 48);
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_average365] = a7;
    v52 = &v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_histogram365];
    v53 = v83;
    v54 = v83[1];
    *v52 = *v83;
    *(v52 + 1) = v54;
    *(v52 + 2) = *(v53 + 32);
    *(v52 + 6) = *(v53 + 48);
    v55 = v80;
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_formattingManager] = v80;
    v56 = *v53;
    v57 = *(v53 + 8);
    v58 = *(v53 + 40);
    v105 = *(v53 + 24);
    v106 = v58;
    v104 = v57;
    v59 = *(v56 + 16) - 1;
    v60 = v55;
    sub_100315628(v50, v102);
    sub_100315628(v53, v102);
    sub_10057EB58(1, v59, &v92);
    if (*&v92)
    {
      v96 = v92;
      v97 = v93;
      v98 = v94;
      v99 = v95;
      sub_10057EFC0(7, v102);
      sub_10000EA04(&v92, &qword_1008F5138);
      v61 = &v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365];
      v62 = v102[1];
      *v61 = v102[0];
      *(v61 + 1) = v62;
      *(v61 + 2) = v102[2];
      *(v61 + 6) = v103;
    }

    else
    {
      v63 = &v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365];
      *v63 = v56;
      v64 = v105;
      *(v63 + 8) = v104;
      *(v63 + 24) = v64;
      *(v63 + 40) = v106;
      sub_100315628(v53, v102);
    }

    sub_10057EFC0(7, v100);
    sub_100670C8C(v50);
    v65 = &v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram90];
    v66 = v100[1];
    *v65 = v100[0];
    *(v65 + 1) = v66;
    *(v65 + 2) = v100[2];
    *(v65 + 6) = v101;
    v67 = v82;
    v68 = sub_10066829C(v82, v53);
    sub_100670C8C(v53);
    v69 = &v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_firstFirstOfMonth];
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_firstFirstOfMonth] = v68;
    v70 = sub_100140278(&qword_1008F80B0);
    (*(v84 + 32))(&v69[*(v70 + 48)], v67, v85);
    v71 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
    *&v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_longPressRecognizer] = v71;
    v72 = type metadata accessor for TrendDetailChartView();
    v91.receiver = v42;
    v91.super_class = v72;
    v73 = objc_msgSendSuper2(&v91, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v74 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_longPressRecognizer;
    v75 = *&v73[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_longPressRecognizer];
    v76 = v73;
    [v75 addTarget:v76 action:"longPressWithSender:"];
    [*&v73[v74] setMinimumPressDuration:0.2];
    [v76 addGestureRecognizer:*&v73[v74]];
    sub_10066B0D4();
    sub_10066C010();
    [v76 addLayoutGuide:*&v76[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisContainer]];
    sub_100668828();
    if (v48 == 1)
    {
      v77 = *&v76[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer];
      [v77 setAlpha:0.3];
    }

    else
    {
      v77 = v60;
      v60 = v76;
    }

    return v76;
  }

  else
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_10066829C(char *a1, __int128 *a2)
{
  v42 = a1;
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v46 = &v41 - v4;
  v48 = type metadata accessor for Calendar.Component();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48 - 8);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = a2[1];
  v57 = *a2;
  v58 = v13;
  v59 = a2[2];
  v60 = *(a2 + 6);
  v52 = *(*(&v57 + 1) + 16);
  v43 = *(&v57 + 1);
  Date.init(timeIntervalSinceReferenceDate:)();
  v14 = (v8 + 8);
  v15 = (v5 + 104);
  v16 = enum case for Calendar.Component.day(_:);
  v17 = (v5 + 8);
  v44 = (v8 + 48);
  v47 = (v8 + 32);
  v18 = v50;
  v49 = v7;
  v45 = (v8 + 8);
  v54 = v12;
  while (1)
  {
    v19 = v51;
    Date.init(timeIntervalSinceReferenceDate:)();
    v20 = static Date.< infix(_:_:)();
    v21 = *v14;
    (*v14)(v19, v7);
    if ((v20 & 1) == 0)
    {
      Date.init()();
      v21(v12, v7);
      return -1;
    }

    v53 = v21;
    if (qword_1008DA540 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Calendar();
    sub_10001AC90(v22, qword_100924FE8);
    v23 = *v15;
    v24 = v16;
    v25 = v15;
    v26 = v16;
    v27 = v48;
    v23(v18, v24, v48);
    v28 = Calendar.component(_:from:)();
    v29 = *v17;
    (*v17)(v18, v27);
    if (v28 == 1)
    {
      break;
    }

    v30 = v26;
    v23(v18, v26, v27);
    v31 = v46;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v32 = v17;
    v29(v18, v27);
    v7 = v49;
    if ((*v44)(v31, 1, v49) == 1)
    {
      sub_10000EA04(v31, &unk_1008F73A0);
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v55 = 0xD000000000000017;
      v56 = 0x8000000100769BC0;
      sub_10057FAA0();
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v15 = v25;
    v33 = v54;
    v14 = v45;
    v53(v54, v7);
    (*v47)(v33, v31, v7);
    v16 = v30;
    v12 = v33;
    v18 = v50;
    v17 = v32;
  }

  v35 = v54;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_1005C665C(v36);
  if (v38)
  {
    (*v47)(v42, v35, v49);
    return 0;
  }

  else
  {
    v39 = v37 / 7;
    (*v47)(v42, v35, v49);
    return v39;
  }
}

void sub_100668828()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_titleLabel];
  v3 = [v2 topAnchor];
  v4 = [v1 topAnchor];
  v290 = [v3 constraintEqualToAnchor:v4 constant:9.0];

  v5 = [v2 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v289 = [v5 constraintEqualToAnchor:v6 constant:16.0];

  v7 = [v2 trailingAnchor];
  v8 = [v1 trailingAnchor];
  v287 = [v7 constraintEqualToAnchor:v8 constant:-16.0];

  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMaxLabel];
  v10 = [v9 rightAnchor];
  v11 = [v1 rightAnchor];
  v288 = [v10 constraintEqualToAnchor:v11 constant:-14.0];

  v12 = [v9 topAnchor];
  v13 = [v2 bottomAnchor];
  v286 = [v12 constraintEqualToAnchor:v13 constant:8.0];

  v14 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer];
  v15 = [v14 topAnchor];
  v267 = v9;
  v16 = [v9 bottomAnchor];
  v258 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:3.0];

  v17 = [v14 leftAnchor];
  v18 = [v1 leftAnchor];
  v285 = [v17 constraintEqualToAnchor:v18 constant:14.0];

  v19 = [v14 rightAnchor];
  v20 = [v1 rightAnchor];
  v284 = [v19 constraintEqualToAnchor:v20 constant:-14.0];

  v21 = [v14 heightAnchor];
  v283 = [v21 constraintEqualToConstant:103.0];

  v22 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_container90];
  v23 = [v22 topAnchor];
  v24 = [v14 topAnchor];
  v282 = [v23 constraintEqualToAnchor:v24];

  v25 = [v22 leftAnchor];
  v26 = [v14 leftAnchor];
  v281 = [v25 constraintEqualToAnchor:v26];

  v27 = [v22 rightAnchor];
  v28 = [v14 rightAnchor];
  v280 = [v27 constraintEqualToAnchor:v28];

  v29 = [v22 bottomAnchor];
  v30 = [v14 bottomAnchor];
  v279 = [v29 constraintEqualToAnchor:v30];

  v31 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_container365];
  v32 = [v31 topAnchor];
  v33 = [v14 topAnchor];
  v278 = [v32 constraintEqualToAnchor:v33];

  v34 = [v31 leftAnchor];
  v35 = [v14 leftAnchor];
  v277 = [v34 constraintEqualToAnchor:v35];

  v36 = [v31 rightAnchor];
  v37 = [v14 rightAnchor];
  v276 = [v36 constraintEqualToAnchor:v37];

  v38 = [v31 bottomAnchor];
  v39 = [v14 bottomAnchor];
  v275 = [v38 constraintEqualToAnchor:v39];

  v40 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisContainer];
  v41 = [v40 topAnchor];
  v42 = [v14 bottomAnchor];
  v274 = [v41 constraintEqualToAnchor:v42];

  v43 = [v40 leftAnchor];
  v44 = [v14 leftAnchor];
  v273 = [v43 constraintEqualToAnchor:v44];

  v45 = [v40 rightAnchor];
  v46 = [v14 rightAnchor];
  v272 = [v45 constraintEqualToAnchor:v46];

  v47 = [v40 bottomAnchor];
  v48 = [v1 bottomAnchor];
  v271 = [v47 constraintEqualToAnchor:v48 constant:-10.0];

  v49 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_div];
  v50 = [v49 leadingAnchor];
  v51 = [v1 leadingAnchor];
  v257 = [v50 constraintEqualToAnchor:v51 constant:16.0];

  v52 = [v49 trailingAnchor];
  v53 = [v1 trailingAnchor];
  v263 = [v52 constraintEqualToAnchor:v53];

  v54 = [v49 heightAnchor];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v270 = [v54 constraintEqualToConstant:*&qword_100925B90];

  v55 = [v49 bottomAnchor];
  v56 = [v1 bottomAnchor];
  v269 = [v55 constraintEqualToAnchor:v56];

  v57 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_monthLabelsStackView];
  v58 = [v57 leftAnchor];
  v59 = [v40 leftAnchor];
  v60 = 0.0;
  v61 = [v58 constraintEqualToAnchor:v59 constant:0.0];

  v62 = [v57 rightAnchor];
  v63 = [v40 rightAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:0.0];

  v65 = [v57 topAnchor];
  v66 = [v40 topAnchor];
  v256 = [v65 constraintEqualToAnchor:v66];

  v67 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewLeftConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewLeftConstraint] = v61;
  v262 = v61;

  v68 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewRightConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewRightConstraint] = v64;
  v255 = v64;

  if (!FIUICurrentLanguageRequiresTallScript())
  {
    v60 = -3.0;
  }

  v69 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisYearLabel];
  v70 = [v69 leftAnchor];
  v71 = [v40 leftAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:0.0];

  v73 = [v69 topAnchor];
  v74 = [v57 bottomAnchor];
  v261 = [v73 constraintEqualToAnchor:v74 constant:v60];

  v75 = [v69 bottomAnchor];
  v76 = [v40 bottomAnchor];
  v250 = [v75 constraintEqualToAnchor:v76];

  v77 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_yearLabelLeftConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_yearLabelLeftConstraint] = v72;
  v254 = v72;

  v78 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter365];
  v79 = [v78 centerXAnchor];
  v80 = [v14 leftAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:0.0];

  v82 = [v78 centerYAnchor];
  v83 = [v14 topAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:0.0];

  v85 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterXConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterXConstraint] = v81;
  v249 = v81;

  v86 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterYConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterYConstraint] = v84;
  v247 = v84;

  v87 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter90];
  v88 = [v87 centerXAnchor];
  v89 = [v14 leftAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:0.0];

  v91 = [v87 centerYAnchor];
  v92 = [v14 topAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:0.0];

  v94 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterXConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterXConstraint] = v90;
  v248 = v90;

  v95 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterYConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterYConstraint] = v93;
  v246 = v93;

  v96 = [v87 topAnchor];
  v97 = [v267 bottomAnchor];
  v245 = [v96 constraintGreaterThanOrEqualToAnchor:v97 constant:3.0];

  v98 = [v78 topAnchor];
  v99 = [v267 bottomAnchor];
  v244 = [v98 constraintGreaterThanOrEqualToAnchor:v99 constant:3.0];

  v100 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberPlatter];
  v101 = [v100 topAnchor];
  v102 = [v1 topAnchor];
  v268 = [v101 constraintEqualToAnchor:v102 constant:2.0];

  v103 = [v100 leftAnchor];
  v104 = [v1 leftAnchor];
  v266 = [v103 constraintGreaterThanOrEqualToAnchor:v104 constant:7.0];

  v105 = [v100 rightAnchor];
  v106 = [v1 rightAnchor];
  v265 = [v105 constraintLessThanOrEqualToAnchor:v106 constant:-7.0];

  v107 = [v100 centerXAnchor];
  v108 = [v14 leftAnchor];
  v109 = [v107 constraintEqualToAnchor:v108 constant:0.0];

  LODWORD(v110) = 1144750080;
  [v109 setPriority:v110];
  v111 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberCenterXConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberCenterXConstraint] = v109;
  v253 = v109;

  v112 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpole];
  v113 = [v112 topAnchor];
  v114 = [v100 centerYAnchor];
  v260 = [v113 constraintEqualToAnchor:v114];

  v115 = [v112 bottomAnchor];
  v116 = [v14 topAnchor];
  v117 = [v115 constraintEqualToAnchor:v116 constant:3.0];

  v118 = [v112 centerXAnchor];
  v119 = [v14 leftAnchor];
  v120 = [v118 constraintEqualToAnchor:v119 constant:0.0];

  v121 = [v112 widthAnchor];
  v264 = [v121 constraintEqualToConstant:2.0];

  v122 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleBottomConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleBottomConstraint] = v117;
  v252 = v117;

  v123 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleCenterXConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleCenterXConstraint] = v120;
  v251 = v120;

  LODWORD(v120) = v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_direction];
  sub_100140278(&qword_1008E2D48);
  if (v120 == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006EB190;
    sub_100140278(&unk_1008E4E20);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_1006D68C0;
    *(v125 + 32) = v290;
    *(v125 + 40) = v289;
    *(v125 + 48) = v287;
    *(inited + 32) = v125;
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_1006D5300;
    *(v126 + 32) = v258;
    *(v126 + 40) = v285;
    *(v126 + 48) = v284;
    *(v126 + 56) = v283;
    *(inited + 40) = v126;
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_1006D5300;
    *(v127 + 32) = v282;
    *(v127 + 40) = v281;
    *(v127 + 48) = v280;
    *(v127 + 56) = v279;
    *(inited + 48) = v127;
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1006D5300;
    *(v128 + 32) = v278;
    *(v128 + 40) = v277;
    *(v128 + 48) = v276;
    *(v128 + 56) = v275;
    *(inited + 56) = v128;
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1006D5300;
    *(v129 + 32) = v274;
    *(v129 + 40) = v273;
    *(v129 + 48) = v272;
    *(v129 + 56) = v271;
    *(inited + 64) = v129;
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1006D5300;
    *(v130 + 32) = v257;
    *(v130 + 40) = v263;
    *(v130 + 48) = v270;
    *(v130 + 56) = v269;
    *(inited + 72) = v130;
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_1006D68D0;
    *(v131 + 32) = v288;
    *(v131 + 40) = v286;
    *(inited + 80) = v131;
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_1006D68C0;
    *(v132 + 32) = v262;
    *(v132 + 40) = v255;
    *(v132 + 48) = v256;
    *(inited + 88) = v132;
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_1006D68C0;
    *(v133 + 32) = v254;
    *(v133 + 40) = v261;
    v134 = v250;
    *(v133 + 48) = v250;
    *(inited + 96) = v133;
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_1006D5300;
    *(v135 + 32) = v268;
    *(v135 + 40) = v266;
    *(v135 + 48) = v265;
    *(v135 + 56) = v253;
    *(inited + 104) = v135;
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_1006D5300;
    *(v136 + 32) = v260;
    *(v136 + 40) = v251;
    *(v136 + 48) = v252;
    *(v136 + 56) = v264;
    *(inited + 112) = v136;
    v259 = objc_opt_self();
    v137 = v262;
    v138 = v255;
    v139 = v254;
    v140 = v253;
    v141 = v252;
    v142 = v258;
    v143 = v251;
    v144 = v290;
    v145 = v289;
    v146 = v287;
    v147 = v258;
    v148 = v285;
    v149 = v284;
    v150 = v283;
    v151 = v282;
    v152 = v281;
    v153 = v280;
    v154 = v279;
    v155 = v278;
    v156 = v277;
    v157 = v276;
    v158 = v275;
    v159 = v274;
    v160 = v273;
    v161 = v272;
    v162 = v271;
    v163 = v257;
    v164 = v257;
    v165 = v263;
    v166 = v270;
    v167 = v269;
    v168 = v288;
    v169 = v286;
    v170 = v256;
    v171 = v261;
    v172 = v250;
    v173 = v268;
    v174 = v266;
    v175 = v265;
    v176 = v260;
    v177 = v264;
    sub_1006672B8(inited);
    v178 = v256;
    swift_setDeallocating();
    sub_100140278(&qword_1008EE6E0);
    swift_arrayDestroy();
    v179 = v249;
    v180 = v247;
    v181 = v244;
    v182 = v245;
  }

  else
  {
    v183 = swift_initStackObject();
    *(v183 + 16) = xmmword_100702DE0;
    sub_100140278(&unk_1008E4E20);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_1006D68C0;
    *(v184 + 32) = v290;
    *(v184 + 40) = v289;
    *(v184 + 48) = v287;
    *(v183 + 32) = v184;
    v185 = swift_allocObject();
    *(v185 + 16) = xmmword_1006D5300;
    *(v185 + 32) = v258;
    *(v185 + 40) = v285;
    *(v185 + 48) = v284;
    *(v185 + 56) = v283;
    *(v183 + 40) = v185;
    v186 = swift_allocObject();
    *(v186 + 16) = xmmword_1006D5300;
    *(v186 + 32) = v282;
    *(v186 + 40) = v281;
    *(v186 + 48) = v280;
    *(v186 + 56) = v279;
    *(v183 + 48) = v186;
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_1006D5300;
    *(v187 + 32) = v278;
    *(v187 + 40) = v277;
    *(v187 + 48) = v276;
    *(v187 + 56) = v275;
    *(v183 + 56) = v187;
    v188 = swift_allocObject();
    *(v188 + 16) = xmmword_1006D5300;
    *(v188 + 32) = v274;
    *(v188 + 40) = v273;
    *(v188 + 48) = v272;
    *(v188 + 56) = v271;
    *(v183 + 64) = v188;
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_1006D5300;
    *(v189 + 32) = v257;
    *(v189 + 40) = v263;
    *(v189 + 48) = v270;
    *(v189 + 56) = v269;
    *(v183 + 72) = v189;
    v190 = swift_allocObject();
    *(v190 + 16) = xmmword_1006D68D0;
    *(v190 + 32) = v288;
    *(v190 + 40) = v286;
    *(v183 + 80) = v190;
    v191 = swift_allocObject();
    *(v191 + 16) = xmmword_1006D68C0;
    *(v191 + 32) = v262;
    *(v191 + 40) = v255;
    *(v191 + 48) = v256;
    *(v183 + 88) = v191;
    v192 = swift_allocObject();
    *(v192 + 16) = xmmword_1006D68C0;
    *(v192 + 32) = v254;
    *(v192 + 40) = v261;
    *(v192 + 48) = v250;
    *(v183 + 96) = v192;
    v193 = swift_allocObject();
    *(v193 + 16) = xmmword_1006D68D0;
    *(v193 + 32) = v249;
    *(v193 + 40) = v247;
    *(v183 + 104) = v193;
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_1006D68D0;
    *(v194 + 32) = v248;
    *(v194 + 40) = v246;
    *(v183 + 112) = v194;
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_1006D68D0;
    *(v195 + 32) = v245;
    *(v195 + 40) = v244;
    *(v183 + 120) = v195;
    v196 = swift_allocObject();
    *(v196 + 16) = xmmword_1006D5300;
    *(v196 + 32) = v268;
    *(v196 + 40) = v266;
    *(v196 + 48) = v265;
    *(v196 + 56) = v253;
    *(v183 + 128) = v196;
    v197 = swift_allocObject();
    *(v197 + 16) = xmmword_1006D5300;
    *(v197 + 32) = v260;
    *(v197 + 40) = v251;
    *(v197 + 48) = v252;
    *(v197 + 56) = v264;
    *(v183 + 136) = v197;
    v259 = objc_opt_self();
    v198 = v262;
    v199 = v255;
    v200 = v254;
    v178 = v256;
    v201 = v249;
    v180 = v247;
    v202 = v247;
    v203 = v248;
    v204 = v246;
    v205 = v253;
    v206 = v252;
    v207 = v251;
    v208 = v290;
    v209 = v289;
    v210 = v287;
    v211 = v258;
    v212 = v285;
    v213 = v284;
    v214 = v283;
    v215 = v282;
    v216 = v281;
    v217 = v280;
    v218 = v279;
    v219 = v278;
    v220 = v277;
    v221 = v276;
    v222 = v275;
    v223 = v274;
    v224 = v273;
    v225 = v272;
    v226 = v271;
    v163 = v257;
    v227 = v257;
    v228 = v263;
    v229 = v270;
    v230 = v269;
    v231 = v288;
    v232 = v286;
    v233 = v256;
    v234 = v261;
    v134 = v250;
    v235 = v250;
    v182 = v245;
    v236 = v245;
    v181 = v244;
    v237 = v244;
    v238 = v268;
    v239 = v266;
    v240 = v265;
    v241 = v260;
    v242 = v264;
    sub_1006672B8(v183);
    v142 = v258;
    swift_setDeallocating();
    sub_100140278(&qword_1008EE6E0);
    swift_arrayDestroy();
    v179 = v249;
  }

  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v259 activateConstraints:isa];
}

void sub_10066A400()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisMonthLabels);
  if (v1 >> 62)
  {
LABEL_20:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &selRef_initWithLayer_;
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = v3;
      v9 = [objc_opt_self() v3[19]];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      [v6 setFont:v9];

      ++v4;
      v3 = v8;
      if (v7 == v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_13:
  v11 = *(v17 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMaxLabel);
  v12 = objc_opt_self();
  v13 = [v12 v3[19]];
  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = v13;
  [v11 setFont:v13];

  v15 = *(v17 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisYearLabel);
  v16 = [v12 v3[19]];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v18 = v16;
  [v15 setFont:?];
}

void sub_10066A6F8()
{
  v0 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateTemplate:v1];

  qword_100926180 = v0;
}

uint64_t sub_10066A768(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DateInterval();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v50 = type metadata accessor for Date();
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v23 = &v45 - v22;
  if ((a1 & 0x8000000000000000) == 0 && *(*(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365 + 8) + 16) > a1)
  {
    v46 = v21;
    Date.init(timeIntervalSinceReferenceDate:)();
    if (qword_1008DA540 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Calendar();
    sub_10001AC90(v24, qword_100924FE8);
    (*(v7 + 104))(v9, enum case for Calendar.Component.day(_:), v6);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v7 + 8))(v9, v6);
    v25 = v13;
    v26 = *(v13 + 48);
    v27 = v50;
    if (v26(v12, 1, v50) == 1)
    {
      (*(v25 + 8))(v23, v27);
      sub_10000EA04(v12, &unk_1008F73A0);
    }

    else
    {
      v28 = v46;
      (*(v25 + 32))(v46, v12, v27);
      v29 = *(v25 + 16);
      v45 = v23;
      v29(v18, v23, v27);
      v29(v15, v28, v27);
      v30 = v47;
      DateInterval.init(start:end:)();
      if (qword_1008DAF88 != -1)
      {
        swift_once();
      }

      v31 = qword_100926180;
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v33 = [v31 stringFromDateInterval:isa];

      if (v33)
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = [objc_opt_self() mainBundle];
        v38 = String._bridgeToObjectiveC()();
        v39 = [v37 localizedStringForKey:v38 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1006D46C0;
        *(v40 + 56) = &type metadata for String;
        *(v40 + 64) = sub_10000A788();
        *(v40 + 32) = v34;
        *(v40 + 40) = v36;
        v41 = static String.localizedStringWithFormat(_:_:)();

        (*(v48 + 8))(v30, v49);
        v42 = *(v25 + 8);
        v42(v46, v27);
        v42(v45, v27);
        return v41;
      }

      (*(v48 + 8))(v30, v49);
      v44 = *(v25 + 8);
      v44(v46, v27);
      v44(v45, v27);
    }
  }

  return 0;
}

id sub_10066AD94(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365);
  if (*(v2 + 16) <= a1)
  {
    return 0;
  }

  v3 = v2 + 24 * a1;
  if (*(v3 + 48))
  {
    return 0;
  }

  v4 = *(v3 + 32);
  v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type);
  v6 = sub_1003D2500(byte_100702F10[v5]);
  v7 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v4];

  if (((v5 - 3) & 0xFB) != 0)
  {
    v8 = sub_100602918(v7, v5);
    if (v9)
    {
      goto LABEL_15;
    }

    v10 = [objc_allocWithZone(NSNumber) initWithDouble:*&v8];
    v11 = [objc_opt_self() stringWithNumber:v10 decimalPrecision:qword_100702EC8[v5] roundingMode:4];

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_10007ABFC(v5, 0, v4);
    if (v15)
    {
      sub_10000FCBC();
      v16 = StringProtocol.localizedUppercase.getter();
      v18 = v17;

      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v19 = sub_100603864(v7);
  if (!v20)
  {
LABEL_15:

    return 0;
  }

  v12 = v19;
  v14 = v20;
  sub_10007ABFC(v5, 0, v4);
  if (!v21)
  {
LABEL_14:

    goto LABEL_15;
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_12:
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (result)
  {
    v23 = result;
    v24 = sub_1004C154C(v12, v14, v16, v18, result);

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10066B00C(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365 + 24);
  v3 = 0.0;
  if (v2 < 2.22044605e-16)
  {
    goto LABEL_2;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365);
    if (*(v7 + 16) > a1)
    {
      v8 = v7 + 24 * a1;
      if ((*(v8 + 48) & 1) == 0)
      {
        v3 = *(v8 + 32) / v2;
LABEL_2:
        v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer);
        [v4 bounds];
        Height = CGRectGetHeight(v9);
        [v4 bounds];
        *&result = CGRectGetMaxY(v10) - v3 * Height;
        return result;
      }
    }
  }

  *&result = 0.0;
  return result;
}

uint64_t sub_10066B0D4()
{
  v1 = v0;
  v106 = type metadata accessor for Calendar.Component();
  i = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008F80B8);
  v102 = *(v3 - 8);
  __chkstk_darwin(v3);
  v97 = (&v94 - v4);
  v5 = sub_100140278(&qword_1008F80C0);
  v6 = __chkstk_darwin(v5 - 8);
  v113 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = (&v94 - v8);
  v111 = sub_100140278(&qword_1008F80B0);
  __chkstk_darwin(v111);
  v110 = &v94 - v9;
  v115 = type metadata accessor for Date();
  v100 = *(v115 - 8);
  v10 = __chkstk_darwin(v115);
  v119 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v94 - v13;
  v15 = __chkstk_darwin(v12);
  v95 = &v94 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v94 - v18;
  __chkstk_darwin(v17);
  v21 = &v94 - v20;
  v22 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_titleLabel];
  [v1 addSubview:v22];
  v23 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  [v22 setFont:v23];

  [v22 setNumberOfLines:0];
  v114 = objc_opt_self();
  v24 = [v114 labelColor];
  [v22 setTextColor:v24];

  v118 = v1;
  v25 = objc_opt_self();
  Date.init(timeIntervalSinceReferenceDate:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v116 = *(v100 + 8);
  v117 = v100 + 8;
  v116(v21, v115);
  v27 = [v25 localizedStringFromDate:isa dateStyle:2 timeStyle:0];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v29;
  v109 = v28;

  Date.init(timeIntervalSinceReferenceDate:)();
  v30 = Date._bridgeToObjectiveC()().super.isa;
  v116(v19, v115);
  v31 = [v25 localizedStringFromDate:v30 dateStyle:2 timeStyle:0];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = [objc_opt_self() mainBundle];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 localizedStringForKey:v36 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1006D1F70;
  *(v38 + 56) = &type metadata for String;
  v39 = sub_10000A788();
  v40 = v108;
  *(v38 + 32) = v109;
  *(v38 + 40) = v40;
  *(v38 + 96) = &type metadata for String;
  *(v38 + 104) = v39;
  *(v38 + 64) = v39;
  *(v38 + 72) = v32;
  *(v38 + 80) = v34;
  static String.localizedStringWithFormat(_:_:)();

  v41 = String._bridgeToObjectiveC()();

  [v22 setText:v41];

  v42 = v118;
  v43 = *&v118[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMaxLabel];
  [v118 addSubview:v43];
  v44 = v42[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type];
  v45 = 2.0;
  if (((v44 - 3) & 0xFB) == 0)
  {
    v45 = 1.0;
  }

  v46 = sub_10007ABFC(v44, 1, v45);
  if (v47)
  {
    v120 = v46;
    v121 = v47;
    sub_10000FCBC();
    StringProtocol.localizedUppercase.getter();

    v48 = String._bridgeToObjectiveC()();
  }

  else
  {
    v48 = 0;
  }

  v49 = v113;
  [v43 setText:v48];

  v50 = [v114 secondaryLabelColor];
  [v43 setTextColor:v50];

  v51 = v118;
  v52 = v110;
  sub_100670E94(&v118[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_firstFirstOfMonth], v110);
  v53 = v100 + 32;
  v54 = &v52[*(v111 + 48)];
  v55 = v95;
  v56 = v115;
  v108 = *(v100 + 32);
  v57 = v108(v95, v54, v115);
  __chkstk_darwin(v57);
  *(&v94 - 2) = v55;
  v58 = sub_1006663CC(sub_100670F04, (&v94 - 4), 0, 12);
  v59 = *&v51[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_monthLabelsStackView];
  [v51 addSubview:v59];
  [v59 setAxis:0];
  v104 = v59;
  [v59 setDistribution:1];
  v98 = v14;
  Date.init()();
  v60 = 0;
  v99 = v58;
  v61 = v58[2];
  v109 = v53;
  v110 = (v53 - 16);
  v111 = (v102 + 7);
  v107 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisMonthLabels;
  v62 = (v102 + 6);
  v102 = (i + 104);
  v96 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_januaryLabel;
  v101 = enum case for Calendar.Component.month(_:);
  v63 = (i + 8);
  for (i = v61; ; v61 = i)
  {
    if (v60 == v61)
    {
      v65 = 1;
      v60 = v61;
    }

    else
    {
      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v60 >= v99[2])
      {
        goto LABEL_34;
      }

      v66 = v100;
      v67 = v99 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v60;
      v68 = *(v3 + 48);
      v69 = v97;
      *v97 = v60;
      (*(v66 + 16))(v69 + v68, v67, v56);
      sub_100015E80(v69, v49, &qword_1008F80B8);
      v65 = 0;
      ++v60;
    }

    (*v111)(v49, v65, 1, v3);
    v70 = v112;
    sub_100015E80(v49, v112, &qword_1008F80C0);
    if ((*v62)(v70, 1, v3) == 1)
    {
      break;
    }

    v71 = *v70;
    v108(v119, v70 + *(v3 + 48), v56);
    v72 = *&v118[v107];
    if ((v72 & 0xC000000000000001) != 0)
    {
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v71 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v71 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v73 = *(v72 + 8 * v71 + 32);
    }

    v74 = v73;
    if (qword_1008DAF78 != -1)
    {
      swift_once();
    }

    v75 = qword_1008F7F08;
    v76 = Date._bridgeToObjectiveC()().super.isa;
    v77 = [v75 stringFromDate:v76];

    if (!v77)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = String._bridgeToObjectiveC()();
    }

    v78 = v3;
    [v74 setText:v77];

    v56 = v115;
    if (qword_1008DA540 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Calendar();
    sub_10001AC90(v79, qword_100924FE8);
    v81 = v105;
    v80 = v106;
    (*v102)(v105, v101, v106);
    v82 = v119;
    v83 = Calendar.component(_:from:)();
    (*v63)(v81, v80);
    if (v83 == 1)
    {
      v84 = v98;
      v116(v98, v56);
      v85 = *&v118[v96];
      *&v118[v96] = v74;
      v86 = v74;

      (*v110)(v84, v82, v56);
    }

    v64 = [v114 secondaryLabelColor];
    [v74 setTextColor:v64];

    [v104 addArrangedSubview:v74];
    v116(v82, v56);
    v3 = v78;
    v49 = v113;
  }

  v63 = *&v118[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisYearLabel];
  if (qword_1008DAF80 == -1)
  {
    goto LABEL_28;
  }

LABEL_35:
  swift_once();
LABEL_28:
  v87 = qword_1008F7F10;
  v88 = v98;
  v89 = Date._bridgeToObjectiveC()().super.isa;
  v90 = [v87 stringFromDate:v89];

  if (!v90)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = String._bridgeToObjectiveC()();
  }

  [v63 setText:v90];

  v91 = [v114 secondaryLabelColor];
  [v63 setTextColor:v91];

  [v118 addSubview:v63];
  [v63 setTextAlignment:0];
  v92 = v116;
  v116(v88, v56);
  return v92(v95, v56);
}

uint64_t sub_10066BEA4()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Calendar();
  sub_10001AC90(v4, qword_100924FE8);
  (*(v1 + 104))(v3, enum case for Calendar.Component.month(_:), v0);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_10066C010()
{
  v1 = v0;
  v2 = [v0 layer];
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisLayer];
  [v2 addSublayer:v3];

  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer];
  [v1 addSubview:v4];
  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_container365];
  [v4 addSubview:v5];
  v6 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_container90];
  [v4 addSubview:v6];
  v168 = objc_opt_self();
  v7 = [v168 tertiaryLabelColor];
  v8 = [v7 CGColor];

  [v3 setStrokeColor:v8];
  [v3 setLineCap:?];
  [v3 setLineWidth:1.0];
  v166 = v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_direction];
  if (v166 != 1)
  {
    v9 = [v1 layer];
    v10 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer365];
    [v9 addSublayer:v10];

    v11 = [v1 layer];
    v12 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer90];
    [v11 addSublayer:v12];

    v13 = sub_100582888(v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type]);
    v14 = *&v13[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

    v15 = [v14 CGColor];
    [v12 setStrokeColor:v15];

    v16 = [v168 secondaryLabelColor];
    v17 = [v16 CGColor];

    [v10 setStrokeColor:v17];
    [v12 setLineWidth:2.0];
    [v10 setLineWidth:2.0];
    [v12 setLineCap:kCALineCapRound];
    [v10 setLineCap:kCALineCapRound];
  }

  v18 = [v5 layer];
  v163 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365];
  [v18 addSublayer:?];

  v19 = [v5 layer];
  v20 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_gradientLayer365];
  v161 = v20;
  [v19 addSublayer:v20];

  v21 = kCAFilterSourceAtop;
  v22 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterSourceAtop];
  [v20 setCompositingFilter:v22];

  v23 = [v6 layer];
  v162 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90];
  [v23 addSublayer:?];

  v24 = [v6 layer];
  v25 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_gradientLayer90];
  [v24 addSublayer:v25];

  v26 = [objc_allocWithZone(CAFilter) initWithType:v21];
  [v25 setCompositingFilter:v26];

  sub_100140278(&qword_1008E7590);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006D1F70;
  v28 = v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type];
  v165 = v28;
  v29 = sub_100582888(v28);
  v30 = *&v29[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v31 = *&v30[OBJC_IVAR____TtC10FitnessApp14GradientColors_light];
  v32 = [v31 CGColor];

  type metadata accessor for CGColor(0);
  *(v27 + 56) = v33;
  v34 = v33;
  *(v27 + 32) = v32;
  v35 = sub_100582888(v28);
  v36 = *&v35[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v37 = *&v36[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark];
  v38 = [v37 CGColor];

  *(v27 + 88) = v34;
  *(v27 + 64) = v38;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 setColors:isa];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1006D1F70;
  sub_1000059F8(0, &qword_1008E7FC0);
  v41 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v42 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
  v43 = type metadata accessor for GradientColors();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v41;
  *&v44[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v42;
  v180.receiver = v44;
  v180.super_class = v43;
  v45 = objc_msgSendSuper2(&v180, "init");
  v46 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v47 = type metadata accessor for MetricColors();
  v48 = objc_allocWithZone(v47);
  *&v48[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v45;
  *&v48[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v46;
  v179.receiver = v48;
  v179.super_class = v47;
  v49 = objc_msgSendSuper2(&v179, "init");
  v50 = *&v49[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v51 = *&v50[OBJC_IVAR____TtC10FitnessApp14GradientColors_light];
  v52 = [v51 CGColor];

  *(v40 + 56) = v34;
  *(v40 + 32) = v52;
  v53 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v54 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
  v55 = objc_allocWithZone(v43);
  *&v55[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v53;
  *&v55[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v54;
  v178.receiver = v55;
  v178.super_class = v43;
  v158 = v43;
  v56 = objc_msgSendSuper2(&v178, "init");
  v57 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v58 = objc_allocWithZone(v47);
  *&v58[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v56;
  *&v58[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v57;
  v177.receiver = v58;
  v177.super_class = v47;
  v159 = v47;
  v59 = objc_msgSendSuper2(&v177, "init");
  v60 = *&v59[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v61 = *&v60[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark];
  v62 = [v61 CGColor];

  *(v40 + 88) = v34;
  *(v40 + 64) = v62;
  v63 = Array._bridgeToObjectiveC()().super.isa;

  [v161 setColors:v63];

  v64 = [v168 blackColor];
  v65 = [v64 CGColor];

  [v162 setStrokeColor:v65];
  [v162 setLineWidth:2.0];
  [v162 setLineCap:kCALineCapRound];
  v66 = [v168 blackColor];
  v67 = [v66 CGColor];

  [v163 setStrokeColor:v67];
  [v163 setLineWidth:2.0];
  [v163 setLineCap:kCALineCapRound];
  if (v166 != 1)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter365]];
    [v1 addSubview:*&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter90]];
  }

  v68 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_formattingManager];
  v69 = sub_1003D2500(byte_100702F10[v165]);
  v70 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_average90];
  v71 = objc_opt_self();
  v72 = [v71 quantityWithUnit:v69 doubleValue:v70];

  if (((v165 - 3) & 0xFB) != 0)
  {
    v73 = sub_100602918(v72, v165);
    if ((v74 & 1) != 0 || (v75 = [objc_allocWithZone(NSNumber) initWithDouble:*&v73], v76 = qword_100702EC8[v165], v77 = objc_opt_self(), v78 = objc_msgSend(v77, "stringWithNumber:decimalPrecision:roundingMode:", v75, v76, 4), v75, !v78))
    {
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v79 = sub_1003D2500(byte_100702F10[v165]);
      v80 = [v71 quantityWithUnit:v79 doubleValue:*&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_average365]];

      v81 = sub_100602918(v80, v165);
      if ((v82 & 1) != 0 || (v83 = [objc_allocWithZone(NSNumber) initWithDouble:*&v81], v84 = objc_msgSend(v77, "stringWithNumber:decimalPrecision:roundingMode:", v83, qword_100702EC8[v165], 4), v83, !v84))
      {
      }

      else
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v85 = sub_100582888(v165);
        sub_100596768(v85);

        v86 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
        v87 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
        v88 = objc_allocWithZone(v158);
        *&v88[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v86;
        *&v88[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v87;
        v176.receiver = v88;
        v176.super_class = v158;
        v89 = objc_msgSendSuper2(&v176, "init");
        v90 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
        v91 = objc_allocWithZone(v159);
        *&v91[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v89;
        *&v91[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v90;
        v175.receiver = v91;
        v175.super_class = v159;
        v92 = objc_msgSendSuper2(&v175, "init");
        sub_100596768(v92);
      }
    }
  }

  else
  {
    sub_100602BB8(v72);
    v94 = v93;
    v169 = v95;
    v97 = v96;

    if (v94)
    {
      v171 = v97;
      v98 = sub_1003D2500(byte_100702F10[v165]);
      v99 = [v71 quantityWithUnit:v98 doubleValue:*&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_average365]];

      sub_100602BB8(v99);
      v101 = v100;
      v103 = v102;
      v105 = v104;

      if (v101)
      {
        v164 = v105;
        v152 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter90];
        v154 = sub_100582888(v165);
        v156 = OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter;
        v106 = *(v68 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter);
        v107 = objc_allocWithZone(FIUIWorkoutActivityType);
        v108 = v106;
        v153 = [v107 initWithActivityTypeIdentifier:52 isIndoor:0];
        v109 = [v108 localizedSpeedUnitStringForActivityType:?];
        v157 = v103;
        if (v109)
        {
          v110 = v109;
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;
        }

        else
        {
          v113 = 0xE400000000000000;
          v111 = 1414090325;
        }

        v155 = objc_opt_self();
        v114 = [v155 mainBundle];
        v115 = String._bridgeToObjectiveC()();
        v116 = [v114 localizedStringForKey:v115 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1006D1F70;
        *(v117 + 56) = &type metadata for String;
        v118 = sub_10000A788();
        *(v117 + 32) = v169;
        *(v117 + 40) = v171;
        *(v117 + 96) = &type metadata for String;
        *(v117 + 104) = v118;
        v170 = v118;
        *(v117 + 64) = v118;
        *(v117 + 72) = v111;
        *(v117 + 80) = v113;

        static String.localizedStringWithFormat(_:_:)();

        v119 = *(v152 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label2);
        [*(v152 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack) addArrangedSubview:v119];
        v120 = *(v152 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label1);
        v121 = String._bridgeToObjectiveC()();
        [v120 setText:v121];

        v122 = String._bridgeToObjectiveC()();

        [v119 setText:v122];

        v123 = *(v152 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_pill);
        v124 = [*&v154[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] CGColor];
        [v123 setFillColor:v124];

        v125 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter365];
        v126 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
        v127 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
        v128 = objc_allocWithZone(v158);
        *&v128[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v126;
        *&v128[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v127;
        v174.receiver = v128;
        v174.super_class = v158;
        v129 = objc_msgSendSuper2(&v174, "init");
        v130 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
        v131 = objc_allocWithZone(v159);
        *&v131[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v129;
        *&v131[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v130;
        v173.receiver = v131;
        v173.super_class = v159;
        v172 = objc_msgSendSuper2(&v173, "init");
        v132 = *(v68 + v156);
        v133 = objc_allocWithZone(FIUIWorkoutActivityType);
        v167 = v132;
        v160 = [v133 initWithActivityTypeIdentifier:52 isIndoor:0];
        v134 = [v167 localizedSpeedUnitStringForActivityType:?];
        if (v134)
        {
          v135 = v134;
          v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v138 = v137;
        }

        else
        {
          v138 = 0xE400000000000000;
          v136 = 1414090325;
        }

        v139 = [v155 mainBundle];
        v140 = String._bridgeToObjectiveC()();
        v141 = [v139 localizedStringForKey:v140 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v142 = swift_allocObject();
        *(v142 + 16) = xmmword_1006D1F70;
        *(v142 + 56) = &type metadata for String;
        *(v142 + 64) = v170;
        *(v142 + 32) = v157;
        *(v142 + 40) = v164;
        *(v142 + 96) = &type metadata for String;
        *(v142 + 104) = v170;
        *(v142 + 72) = v136;
        *(v142 + 80) = v138;

        static String.localizedStringWithFormat(_:_:)();

        v143 = *(v125 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label2);
        [*(v125 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack) addArrangedSubview:v143];
        v144 = *(v125 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label1);
        v145 = String._bridgeToObjectiveC()();
        [v144 setText:v145];

        v146 = String._bridgeToObjectiveC()();

        [v143 setText:v146];

        v147 = *(v125 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_pill);
        v148 = [*&v172[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] CGColor];
        [v147 setFillColor:v148];
      }

      else
      {
      }
    }
  }

  [v1 addSubview:*&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_div]];
  v149 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpole];
  [v1 addSubview:v149];
  [v149 setAlpha:0.0];
  v150 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberPlatter];
  [v1 addSubview:v150];
  return [v150 setAlpha:0.0];
}

id sub_10066D4B0()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90) bounds];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v5 = CGRectGetHeight(v17);
  v6 = [objc_allocWithZone(UIBezierPath) init];
  v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365);

    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v11 >= 0x27)
      {
        v12 = *(v7 + 8 * v11 + 32);
        v13 = v9[3];
        v14 = 0.0;
        if (v13 >= 2.22044605e-16)
        {
          if (v11 >= *(*v9 + 16))
          {
            goto LABEL_4;
          }

          v15 = *v9 + v10;
          if (*(v15 + 48))
          {
            goto LABEL_4;
          }

          v14 = *(v15 + 32) / v13;
        }

        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        [v6 moveToPoint:{v12, CGRectGetMaxY(v18) + -1.0}];
        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        [v6 addLineToPoint:{v12, CGRectGetMaxY(v19) - v5 * v14 + 1.0}];
      }

LABEL_4:
      ++v11;
      v10 += 24;
      if (v8 == v11)
      {

        return v6;
      }
    }
  }

  return v6;
}

id sub_10066D660()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90) bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_allocWithZone(UIBezierPath) init];
  v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365);

    v13 = 0;
    v14 = 48;
    do
    {
      if (v13 >= 0x27)
      {
        v15 = *(v10 + 8 * v13 + 32);
        if (v12[3] < 2.22044605e-16 || v13 < *(*v12 + 16) && (*(*v12 + v14) & 1) == 0)
        {
          v17.origin.x = v2;
          v17.origin.y = v4;
          v17.size.width = v6;
          v17.size.height = v8;
          [v9 moveToPoint:{v15, CGRectGetMaxY(v17) + -1.0}];
          v18.origin.x = v2;
          v18.origin.y = v4;
          v18.size.width = v6;
          v18.size.height = v8;
          [v9 addLineToPoint:{v15, CGRectGetMaxY(v18) + -1.0}];
        }
      }

      ++v13;
      v14 += 24;
    }

    while (v11 != v13);
  }

  return v9;
}

id sub_10066D7E4(double a1)
{
  v3 = [objc_allocWithZone(UIBezierPath) init];
  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineStops);
  v5 = *(v4 + 16);
  if (v5)
  {

    for (i = 0; i != v5; ++i)
    {
      if (i >= 0x4E)
      {
        v7 = *(v4 + 8 * i + 32);
        [v3 moveToPoint:{v7, a1}];
        [v3 addLineToPoint:{v7, a1}];
      }
    }
  }

  return v3;
}

id sub_10066D8B8()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365) bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v5 = CGRectGetHeight(v18);
  v6 = [objc_allocWithZone(UIBezierPath) init];
  v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops);
  v8 = *(v7 + 16);
  v9 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365;

  if (!v8)
  {
LABEL_11:

    return v6;
  }

  v11 = 0;
  v12 = 0;
  v13 = (v0 + v9);
  while (v12 < *(v7 + 16))
  {
    if (v12 == 39)
    {
      goto LABEL_11;
    }

    v14 = *(v7 + 32 + 8 * v12);
    v15 = v13[3];
    v16 = 0.0;
    if (v15 >= 2.22044605e-16)
    {
      if (v12 >= *(*v13 + 16))
      {
        goto LABEL_4;
      }

      v17 = *v13 + v11;
      if (*(v17 + 48))
      {
        goto LABEL_4;
      }

      v16 = *(v17 + 32) / v15;
    }

    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    [v6 moveToPoint:{v14, CGRectGetMaxY(v19) + -1.0}];
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    result = [v6 addLineToPoint:{v14, CGRectGetMaxY(v20) - v5 * v16 + 1.0}];
LABEL_4:
    ++v12;
    v11 += 24;
    if (v8 == v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

id sub_10066DA78()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365) bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_allocWithZone(UIBezierPath) init];
  v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops);
  v11 = *(v10 + 16);
  v12 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365;

  if (v11)
  {
    v14 = 0;
    v15 = (v0 + v12);
    v16 = 48;
    while (v14 < *(v10 + 16))
    {
      if (v16 != 984)
      {
        v17 = *(v10 + 32 + 8 * v14);
        if (v15[3] < 2.22044605e-16 || v14 < *(*v15 + 16) && (*(*v15 + v16) & 1) == 0)
        {
          v18.origin.x = v2;
          v18.origin.y = v4;
          v18.size.width = v6;
          v18.size.height = v8;
          [v9 moveToPoint:{v17, CGRectGetMaxY(v18) + -1.0}];
          v19.origin.x = v2;
          v19.origin.y = v4;
          v19.size.width = v6;
          v19.size.height = v8;
          result = [v9 addLineToPoint:{v17, CGRectGetMaxY(v19) + -1.0}];
        }

        ++v14;
        v16 += 24;
        if (v11 != v14)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return v9;
  }

  return result;
}

void sub_10066DC0C()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisLayer) bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v5 = CGRectGetWidth(v11);
  v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops);
  v7 = *(v6 + 16);
  if (v7 < 0x28)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v6 + 344) + -1.0 + (v5 / 52.0 + -2.0) * -0.5;
    v9 = *(v6 + 8 * v7 + 24);
    v10 = [objc_allocWithZone(UIBezierPath) init];
    [v10 moveToPoint:{1.0, 0.0}];
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    [v10 addLineToPoint:{0.0, CGRectGetMaxY(v12)}];
    [v10 moveToPoint:{v8, 0.0}];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    [v10 addLineToPoint:{v8, CGRectGetMaxY(v13)}];
    [v10 moveToPoint:{v9, 0.0}];
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    [v10 addLineToPoint:{v9, CGRectGetMaxY(v14)}];
  }
}

void sub_10066DD9C()
{
  v1 = sub_100140278(&qword_1008F80B0);
  __chkstk_darwin(v1);
  v3 = &v102 - v2;
  v4 = type metadata accessor for TrendDetailChartView();
  v106.receiver = v0;
  v106.super_class = v4;
  objc_msgSendSuper2(&v106, "layoutSubviews");
  v5 = sub_100667654();
  v6 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops;
  *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops] = v5;

  *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineStops] = sub_100667804();

  v7 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v7 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [*&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisLayer] setFrame:{v9, v11, v13, v15}];
  v24 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_gradientLayer90];
  [v24 setFrame:{v17, v19, v21, v23}];
  v25 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_gradientLayer365];
  v105 = v17;
  [v25 setFrame:{v17, v19, v21, v23}];
  v26 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90];
  [v24 bounds];
  [v26 setFrame:?];
  v27 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365];
  [v25 bounds];
  [v27 setFrame:?];
  [*&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer90] setFrame:{v9, v11, v13, v15}];
  [*&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer365] setFrame:{v9, v11, v13, v15}];
  v28 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMask];
  [v7 bounds];
  [v28 setFrame:?];
  v29 = v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type];
  v30 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_average90];
  v31 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_formattingManager];
  v32 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365 + 24];
  v33 = OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter;
  v34 = [*(v31 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) unitManager];
  if (!v34)
  {
    goto LABEL_32;
  }

  v35 = v34;
  v36 = sub_1005831C0(v34, v29, v30);

  v37 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_average365];
  v38 = [*(v31 + v33) unitManager];
  if (!v38)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v39 = v38;
  v40 = sub_1005831C0(v38, v29, v37);

  v41 = [*(v31 + v33) unitManager];
  if (!v41)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v42 = v41;
  v43 = sub_1005831C0(v41, v29, v32);

  v44 = 0.0;
  v45 = v32 <= 0.0;
  v46 = 0.0;
  if (!v45)
  {
    v46 = v36 / v43;
    v44 = v40 / v43;
  }

  v47 = v105;
  v107.origin.x = v105;
  v107.origin.y = v19;
  v107.size.width = v21;
  v107.size.height = v23;
  Height = CGRectGetHeight(v107);
  v108.origin.x = v47;
  v108.origin.y = v19;
  v108.size.width = v21;
  v108.size.height = v23;
  v49 = CGRectGetMaxY(v108) - v46 * Height;
  v109.origin.x = v47;
  v109.origin.y = v19;
  v109.size.width = v21;
  v109.size.height = v23;
  MaxY = CGRectGetMaxY(v109);
  v51 = v44 * Height;
  v52 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterYConstraint];
  if (v52)
  {
    v53 = 0.0;
    if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v53 = v49;
    }

    [v52 setConstant:v53];
  }

  v54 = MaxY - v51;
  v55 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterYConstraint];
  if (v55)
  {
    v56 = 0.0;
    if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v56 = v54;
    }

    [v55 setConstant:v56];
  }

  [v0 bounds];
  Width = CGRectGetWidth(v110);
  v58 = *&v0[v6];
  v59 = *(v58 + 16);
  if (v59 < 0x28)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v60 = *(v58 + 344) + -1.0 + (Width / 52.0 + -2.0) * -0.5;
  v61 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterXConstraint];
  if (v61)
  {
    [v61 setConstant:v60 + (*(v58 + 8 * v59 + 24) - v60) * 0.5];
  }

  v62 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterXConstraint];
  if (v62)
  {
    [v62 setConstant:v60 * 0.5];
  }

  sub_100670E94(&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_firstFirstOfMonth], v3);
  v63 = *v3;
  v64 = *(v1 + 48);
  v65 = type metadata accessor for Date();
  (*(*(v65 - 8) + 8))(&v3[v64], v65);
  if ((v63 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v66 = *&v0[v6];
  if (v63 >= *(v66 + 16))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v67 = *(v66 + 8 * v63 + 32) + -2.0;
  [*&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewLeftConstraint] setConstant:v67];
  [*&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewRightConstraint] setConstant:v67];
  v68 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_januaryLabel];
  if (v68)
  {
    v69 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_yearLabelLeftConstraint;
    v70 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_yearLabelLeftConstraint];
    v103 = v54;
    v104 = v49;
    v71 = v68;
    if (v70)
    {
      [v70 setActive:0];
    }

    v72 = v68;
    [v72 frame];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = [v72 superview];
    [v0 convertRect:v81 fromView:{v74, v76, v78, v80}];
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;

    v111.origin.x = v83;
    v111.origin.y = v85;
    v111.size.width = v87;
    v111.size.height = v89;
    MinX = CGRectGetMinX(v111);
    v91 = *&v0[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisYearLabel];
    [v91 bounds];
    v92 = MinX + CGRectGetWidth(v112);
    v113.origin.x = v105;
    v113.origin.y = v19;
    v113.size.width = v21;
    v113.size.height = v23;
    if (CGRectGetMaxX(v113) >= v92)
    {
      v93 = [v72 leftAnchor];

      v94 = [v91 leftAnchor];
      v98 = [v93 constraintEqualToAnchor:v94];
    }

    else
    {
      v93 = [v91 leftAnchor];
      v94 = [v72 leftAnchor];
      [v91 bounds];
      v95 = CGRectGetWidth(v114);
      [v72 intrinsicContentSize];
      v97 = v96;

      v98 = [v93 constraintEqualToAnchor:v94 constant:-(v95 - v97)];
    }

    v54 = v103;
    v49 = v104;
    v99 = v98;

    [v99 setActive:1];
    v100 = *&v0[v69];
    *&v0[v69] = v99;
  }

  v101 = objc_opt_self();
  [v101 begin];
  [v101 setDisableActions:1];
  sub_10066E58C(v0, v54, v49);
  [v101 commit];
}

void sub_10066E58C(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90);
  if (*(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_filled) == 1)
  {
    v7 = sub_10066D4B0();
    v8 = [v7 CGPath];

    [v6 setPath:v8];
    v9 = *(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365);
    v10 = sub_10066D8B8();
  }

  else
  {
    v11 = sub_10066D660();
    v12 = [v11 CGPath];

    [v6 setPath:v12];
    v9 = *(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365);
    v10 = sub_10066DA78();
  }

  v13 = v10;
  v14 = [v10 CGPath];

  [v9 setPath:v14];
  v15 = *(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisLayer);
  sub_10066DC0C();
  v17 = v16;
  v18 = [v16 CGPath];

  [v15 setPath:v18];
  v19 = *(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer365);
  v20 = [objc_allocWithZone(UIBezierPath) init];
  v21 = *(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineStops);
  v22 = *(v21 + 16);
  if (v22)
  {

    v23 = 32;
    do
    {
      v24 = *(v21 + v23);
      [v20 moveToPoint:{v24, a2}];
      [v20 addLineToPoint:{v24, a2}];
      v23 += 8;
      --v22;
    }

    while (v22);
  }

  v25 = [v20 CGPath];

  [v19 setPath:v25];
  v26 = *(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer90);
  v27 = sub_10066D7E4(a3);
  v28 = [v27 CGPath];

  [v26 setPath:v28];
}

id sub_10066E86C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_titleLabel;
  v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAdjustsFontForContentSizeCategory:1];
  v53 = v3;
  *(v1 + v3) = v4;
  sub_1000059F8(0, &qword_1008E2D40);
  v5 = sub_100555C98();
  v6 = objc_opt_self();
  result = [v6 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:?];
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMaxLabel;
    [v5 setFont:result];

    v50 = v9;
    *(v2 + v9) = v5;
    v10 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer;
    sub_1000059F8(0, &qword_1008E7580);
    v49 = v10;
    *(v2 + v10) = sub_10065AF60();
    v48 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_container365;
    *(v2 + v48) = sub_10065AF60();
    v47 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_container90;
    *(v2 + v47) = sub_10065AF60();
    v46 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisContainer;
    *(v2 + v46) = [objc_allocWithZone(UILayoutGuide) init];
    v45 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisLayer;
    *(v2 + v45) = [objc_allocWithZone(CAShapeLayer) init];
    v44 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_gradientLayer90;
    *(v2 + v44) = [objc_allocWithZone(CAGradientLayer) init];
    v43 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90;
    *(v2 + v43) = [objc_allocWithZone(CAShapeLayer) init];
    v42 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_gradientLayer365;
    *(v2 + v42) = [objc_allocWithZone(CAGradientLayer) init];
    v40 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365;
    *(v2 + v40) = [objc_allocWithZone(CAShapeLayer) init];
    v39 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer90;
    *(v2 + v39) = [objc_allocWithZone(CAShapeLayer) init];
    v38 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer365;
    *(v2 + v38) = [objc_allocWithZone(CAShapeLayer) init];
    v11 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter365;
    type metadata accessor for TrendAveragePlatterView();
    v37 = v11;
    *(v2 + v11) = sub_10065AF60();
    v36 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter90;
    *(v2 + v36) = sub_10065AF60();
    v12 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMask;
    type metadata accessor for TrendChartMaskingView();
    v35 = v12;
    *(v2 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v13 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberPlatter;
    type metadata accessor for TrendsScrubberPlatterView();
    v34 = v13;
    *(v2 + v13) = sub_10065AF60();
    v14 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpole;
    type metadata accessor for TrendsScrubberFlagpoleView();
    v33 = v14;
    *(v2 + v14) = sub_10065AF60();
    v15 = 12;
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      v16 = sub_100555C98();
      result = [v6 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      if (!result)
      {
        __break(1u);
        goto LABEL_8;
      }

      v17 = result;
      [v16 setFont:result];

      v18 = [objc_opt_self() secondaryLabelColor];
      [v16 setTextColor:v18];

      [v16 setTextAlignment:0];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v15;
    }

    while (v15);
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisMonthLabels) = _swiftEmptyArrayStorage;
    v19 = sub_100555C98();
    result = [v6 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    if (!result)
    {
      goto LABEL_9;
    }

    v20 = result;
    v21 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisYearLabel;
    v54 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_axisYearLabel;
    [v19 setFont:result];

    *(v2 + v21) = v19;
    v22 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_monthLabelsStackView;
    v31 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_monthLabelsStackView;
    sub_1000059F8(0, &qword_1008E6F30);
    *(v2 + v22) = sub_10065AF60();
    v23 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_div;
    v24 = sub_10065AEC8();

    *(v2 + v23) = v24;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops) = _swiftEmptyArrayStorage;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineStops) = _swiftEmptyArrayStorage;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_extraTopPaddingPercentage) = 0;
    v25 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_januaryLabel;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_januaryLabel) = 0;
    v26 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewLeftConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewLeftConstraint) = 0;
    v27 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewRightConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_stackViewRightConstraint) = 0;
    v28 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_yearLabelLeftConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_yearLabelLeftConstraint) = 0;
    v29 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterXConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterXConstraint) = 0;
    v30 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterYConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter90CenterYConstraint) = 0;
    v32 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterXConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterXConstraint) = 0;
    v41 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterYConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_platter365CenterYConstraint) = 0;
    v52 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberCenterXConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberCenterXConstraint) = 0;
    v55 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleBottomConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleBottomConstraint) = 0;
    v56 = OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleCenterXConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleCenterXConstraint) = 0;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_nWeeksIn90DayBucket) = 13;
    *(v2 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_filled) = 0;

    type metadata accessor for TrendDetailChartView();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

id sub_10066F090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendDetailChartView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TrendDetailChartView()
{
  result = qword_1008F80A0;
  if (!qword_1008F80A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10066F428()
{
  v3 = &unk_100702E18;
  v4 = &unk_100702E30;
  v5 = &value witness table for Builtin.Int64 + 64;
  v6 = &unk_100702E48;
  v7 = &value witness table for Builtin.Int64 + 64;
  v8 = &unk_100702E48;
  v9 = &unk_100702E48;
  v10 = &unk_100702E48;
  v11 = &value witness table for Builtin.UnknownObject + 64;
  v12 = &value witness table for Builtin.UnknownObject + 64;
  v13 = &value witness table for Builtin.UnknownObject + 64;
  v14 = &value witness table for Builtin.UnknownObject + 64;
  v15 = &value witness table for Builtin.UnknownObject + 64;
  v16 = &value witness table for Builtin.UnknownObject + 64;
  v17 = &value witness table for Builtin.UnknownObject + 64;
  v18 = &value witness table for Builtin.UnknownObject + 64;
  v19 = &value witness table for Builtin.UnknownObject + 64;
  v20 = &value witness table for Builtin.UnknownObject + 64;
  v21 = &value witness table for Builtin.UnknownObject + 64;
  v22 = &value witness table for Builtin.UnknownObject + 64;
  v23 = &value witness table for Builtin.UnknownObject + 64;
  v24 = &value witness table for Builtin.UnknownObject + 64;
  v25 = &value witness table for Builtin.UnknownObject + 64;
  v26 = &value witness table for Builtin.UnknownObject + 64;
  v27 = &value witness table for Builtin.UnknownObject + 64;
  v28 = &value witness table for Builtin.UnknownObject + 64;
  v29 = &value witness table for Builtin.UnknownObject + 64;
  v30 = &value witness table for Builtin.BridgeObject + 64;
  v31 = &value witness table for Builtin.UnknownObject + 64;
  v32 = &value witness table for Builtin.UnknownObject + 64;
  v33 = &value witness table for Builtin.UnknownObject + 64;
  v34 = &value witness table for Builtin.BridgeObject + 64;
  v35 = &value witness table for Builtin.BridgeObject + 64;
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v36 = &v2;
    v37 = &value witness table for Builtin.UnknownObject + 64;
    v38 = &value witness table for Builtin.Int64 + 64;
    v39 = &unk_100702E60;
    v40 = &unk_100702E60;
    v41 = &unk_100702E60;
    v42 = &unk_100702E60;
    v43 = &unk_100702E60;
    v44 = &unk_100702E60;
    v45 = &unk_100702E60;
    v46 = &unk_100702E60;
    v47 = &unk_100702E60;
    v48 = &unk_100702E60;
    v49 = &unk_100702E60;
    v50 = &value witness table for Builtin.Int64 + 64;
    v51 = &unk_100702E78;
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_10066F580()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions:1];
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90);
  v3 = sub_10066D660();
  v4 = [v3 CGPath];

  [v2 setPath:v4];
  v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365);
  v6 = sub_10066DA78();
  v7 = [v6 CGPath];

  [v5 setPath:v7];

  return [v1 commit];
}

void sub_10066F688()
{
  *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_filled) = 1;
  v12 = sub_10066D660();
  v1 = sub_10066DA78();
  v2 = sub_10066D4B0();
  v3 = sub_10066D8B8();
  v4 = sub_10066F81C(v12, v2);
  v5 = sub_10066F81C(v1, v3);
  v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer90);
  v7 = String._bridgeToObjectiveC()();
  [v6 addAnimation:v4 forKey:v7];

  v8 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barLayer365);
  v9 = String._bridgeToObjectiveC()();
  [v8 addAnimation:v5 forKey:v9];

  v10 = [v2 CGPath];
  [v6 setPath:v10];

  v11 = [v3 CGPath];
  [v8 setPath:v11];
}

id sub_10066F81C(void *a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() animationWithKeyPath:v4];

  v6 = [a1 CGPath];
  [v5 setFromValue:v6];

  v7 = [a2 CGPath];
  [v5 setToValue:v7];

  v8 = v5;
  [v8 setDuration:2.15];
  v9 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
  [v8 setTimingFunction:v9];

  return v8;
}

void sub_10066F9A8(void *a1)
{
  v2 = v1;
  p_ivars = &ResourceBundleClass.ivars;
  if ([a1 state] == 1 || objc_msgSend(a1, "state") == 2)
  {
    v5 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer];
    [*&v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer] setAlpha:1.0];
    if ([a1 state] == 1)
    {
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v2;
      v87 = sub_100670E14;
      v88 = v7;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_1000449A8;
      v86 = &unk_100866F40;
      v8 = _Block_copy(&aBlock);
      v9 = v2;

      [v6 animateWithDuration:v8 animations:0.1];
      _Block_release(v8);
      v10 = objc_opt_self();
      [v10 begin];
      [v10 setDisableActions:1];
      LODWORD(v11) = 1050253722;
      [*&v9[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer90] setOpacity:v11];
      LODWORD(v12) = 1050253722;
      [*&v9[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer365] setOpacity:v12];
      [v10 commit];
      v13 = *&v9[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMask];
      [v5 setMaskView:v13];
      *&v13[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedWidth] = 0x4000000000000000;
      [v13 setNeedsLayout];
    }

    [a1 locationInView:v5];
    v15 = *&v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = v15 + 32;
      v20 = 0;
      v21 = 1.79769313e308;
      do
      {
        v22 = vabdd_f64(v14, *(v19 + 8 * v18));
        if (v22 < v21)
        {
          v17 = v18;
        }

        v23 = v18 + 1;
        if (v22 < v21)
        {
          v20 = *(v19 + 8 * v18);
        }

        v21 = v22;
        ++v18;
      }

      while (v16 != v23);
    }

    else
    {
      v17 = 0;
      v20 = 0;
    }

    sub_10066A768(v17);
    if (v24)
    {
      v25 = sub_10066AD94(v17);
      if (v25)
      {
        v26 = v25;
        v27 = *&v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberPlatter];
        v28 = *(v27 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel);
        v29 = String._bridgeToObjectiveC()();

        [v28 setText:v29];

        v30 = *(v27 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel);
        p_ivars = &ResourceBundleClass.ivars;
        [v30 setAttributedText:v26];
        v31 = objc_opt_self();
        v32 = swift_allocObject();
        *(v32 + 16) = v2;
        v87 = sub_100670DA4;
        v88 = v32;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_1000449A8;
        v86 = &unk_100866EF0;
        v33 = _Block_copy(&aBlock);
        v34 = v2;

        [v31 animateWithDuration:v33 animations:0.1];
        _Block_release(v33);

        goto LABEL_23;
      }
    }

    v43 = objc_opt_self();
    v44 = swift_allocObject();
    *(v44 + 16) = v2;
    v87 = sub_100670D4C;
    v88 = v44;
    aBlock = _NSConcreteStackBlock;
    v84 = 1107296256;
    v85 = sub_1000449A8;
    v86 = &unk_100866E50;
    v45 = _Block_copy(&aBlock);
    v46 = v2;

    [v43 animateWithDuration:v45 animations:0.1];
    _Block_release(v45);
LABEL_23:
    v47 = COERCE_DOUBLE(sub_10066B00C(v17));
    if ((v48 & 1) == 0 && *&v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleBottomConstraint])
    {
      [*&v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleBottomConstraint] setConstant:v47 + -5.0];
    }

    if (v17 >= 39)
    {
      v66 = v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type];
      v67 = sub_100582888(v66);
      v68 = *&v67[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

      sub_10060AE7C(v68);
      v65 = sub_100582888(v66);
    }

    else
    {
      sub_1000059F8(0, &qword_1008E7FC0);
      isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
      v50 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
      v51 = type metadata accessor for GradientColors();
      v52 = objc_allocWithZone(v51);
      *&v52[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
      *&v52[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v50;
      v82.receiver = v52;
      v82.super_class = v51;
      v53 = objc_msgSendSuper2(&v82, "init");
      v54 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
      v55 = type metadata accessor for MetricColors();
      v56 = objc_allocWithZone(v55);
      *&v56[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v53;
      *&v56[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v54;
      v81.receiver = v56;
      v81.super_class = v55;
      v57 = objc_msgSendSuper2(&v81, "init");
      v58 = *&v57[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

      sub_10060AE7C(v58);
      v59 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
      v60 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
      v61 = objc_allocWithZone(v51);
      *&v61[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v59;
      *&v61[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v60;
      v80.receiver = v61;
      v80.super_class = v51;
      v62 = objc_msgSendSuper2(&v80, "init");
      v63 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
      v64 = objc_allocWithZone(v55);
      *&v64[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v62;
      *&v64[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v63;
      v79.receiver = v64;
      v79.super_class = v55;
      p_ivars = (&ResourceBundleClass + 48);
      v65 = objc_msgSendSuper2(&v79, "init");
    }

    v69 = v65;
    v70 = *&v65[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

    sub_10060AE8C(v70);
    v71 = *&v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMask];
    v72 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedCenterX;
    *&v71[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedCenterX] = v20;
    [v71 setNeedsLayout];
    v73 = *&v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberCenterXConstraint];
    if (v73)
    {
      [v73 setConstant:*&v71[v72]];
    }

    v74 = *&v2[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpoleCenterXConstraint];
    if (v74)
    {
      [v74 setConstant:*&v71[v72]];
    }

    if ([a1 p_ivars[431]] == 1)
    {
      [v71 layoutIfNeeded];
      [v2 layoutIfNeeded];
    }

    else
    {
      v75 = objc_opt_self();
      v76 = swift_allocObject();
      *(v76 + 16) = v2;
      v87 = sub_100670D54;
      v88 = v76;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_1000449A8;
      v86 = &unk_100866EA0;
      v77 = _Block_copy(&aBlock);
      v78 = v2;

      [v75 animateWithDuration:v77 animations:0.1];
      _Block_release(v77);
    }

    return;
  }

  if ([a1 state] == 3 || objc_msgSend(a1, "state") == 4)
  {
    v35 = objc_opt_self();
    v36 = swift_allocObject();
    *(v36 + 16) = v2;
    v87 = sub_100670D44;
    v88 = v36;
    aBlock = _NSConcreteStackBlock;
    v84 = 1107296256;
    v85 = sub_1000449A8;
    v86 = &unk_100866E00;
    v37 = _Block_copy(&aBlock);
    v38 = v2;

    [v35 animateWithDuration:v37 animations:0.2];
    _Block_release(v37);
    v39 = objc_opt_self();
    [v39 begin];
    [v39 setDisableActions:1];
    LODWORD(v40) = 1.0;
    [*&v38[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer90] setOpacity:v40];
    LODWORD(v41) = 1.0;
    [*&v38[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_lineLayer365] setOpacity:v41];
    [v39 commit];
    v42 = *&v38[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartContainer];
    [v42 setMaskView:0];
    if (v38[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_direction] == 1)
    {
      [v42 setAlpha:0.3];
    }
  }
}

id sub_1006704A4(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter90) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter365) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_titleLabel) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberPlatter) setAlpha:0.0];
  v2 = *(a1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpole);

  return [v2 setAlpha:0.0];
}

uint64_t sub_100670654@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = type metadata accessor for Calendar.Component();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  __chkstk_darwin(v19);
  v22 = &v31 - v21;
  if ((a1 & 0x8000000000000000) == 0 && *(*(v3 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365 + 8) + 16) > a1)
  {
    v32 = v20;
    Date.init(timeIntervalSinceReferenceDate:)();
    if (qword_1008DA540 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Calendar();
    sub_10001AC90(v23, qword_100924FE8);
    v24 = v33;
    (*(v33 + 104))(v7, enum case for Calendar.Component.day(_:), v5);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v24 + 8))(v7, v5);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v18, v10, v11);
      v29 = *(v12 + 16);
      v29(v15, v22, v11);
      v29(v32, v18, v11);
      v26 = v34;
      DateInterval.init(start:end:)();
      v30 = *(v12 + 8);
      v30(v18, v11);
      v30(v22, v11);
      v25 = 0;
      goto LABEL_8;
    }

    (*(v12 + 8))(v22, v11);
    sub_10000EA04(v10, &unk_1008F73A0);
  }

  v25 = 1;
  v26 = v34;
LABEL_8:
  v27 = type metadata accessor for DateInterval();
  return (*(*(v27 - 8) + 56))(v26, v25, 1, v27);
}

id sub_100670B90(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartHistogram365);
  if (*(v2 + 16) <= a1)
  {
    return 0;
  }

  v3 = v2 + 24 * a1;
  if (*(v3 + 48))
  {
    return 0;
  }

  v5 = *(v3 + 32);
  v6 = sub_1003D2500(byte_100702F10[*(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type)]);
  v7 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v5];

  return v7;
}

unint64_t sub_100670CE0()
{
  result = qword_1008EE6E8;
  if (!qword_1008EE6E8)
  {
    sub_100141EEC(&qword_1008EE6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE6E8);
  }

  return result;
}

id sub_100670D54()
{
  v1 = *(v0 + 16);
  [*&v1[OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_chartMask] layoutIfNeeded];

  return [v1 layoutIfNeeded];
}

id sub_100670DAC(double a1)
{
  v3 = *(v1 + 16);
  [*(v3 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberPlatter) setAlpha:?];
  v4 = *(v3 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_scrubberFlagpole);

  return [v4 setAlpha:a1];
}

id sub_100670E14()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter90) setAlpha:0.0];
  [*(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_averagePlatter365) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_titleLabel);

  return [v2 setAlpha:0.3];
}

uint64_t sub_100670E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F80B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100670F54()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1052266988;
  LODWORD(v2) = 1059145646;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1008F80D0 = result;
  return result;
}

id sub_100670FA8()
{
  v0 = [objc_allocWithZone(CABasicAnimation) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setKeyPath:v1];

  v2 = v0;
  [v2 setDuration:0.134];
  [v2 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  if (qword_1008DAF90 != -1)
  {
    swift_once();
  }

  [v2 setTimingFunction:qword_1008F80D0];
  LODWORD(v5) = 2139095039;
  [v2 setRepeatCount:v5];
  [v2 setAutoreverses:1];
  [v2 setRemovedOnCompletion:0];

  return v2;
}

id sub_100671148()
{
  v0 = [objc_allocWithZone(CABasicAnimation) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setKeyPath:v1];

  v2 = v0;
  [v2 setDuration:0.128];
  [v2 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  if (qword_1008DAF90 != -1)
  {
    swift_once();
  }

  [v2 setTimingFunction:qword_1008F80D0];
  LODWORD(v5) = 2139095039;
  [v2 setRepeatCount:v5];
  [v2 setAutoreverses:1];
  [v2 setRemovedOnCompletion:0];

  return v2;
}

void sub_1006712E8(char a1, id a2)
{
  [a2 frame];
  CGRectGetHeight(v16);
  [a2 frame];
  CGRectGetWidth(v17);
  v14 = [a2 layer];
  if (a1)
  {
    v4 = sub_100670FA8();
    v5 = String._bridgeToObjectiveC()();
    [v4 setKeyPath:v5];

    [v4 setDuration:0.134];
    v6 = String._bridgeToObjectiveC()();
    [v14 addAnimation:v4 forKey:v6];

    v7 = sub_100670FA8();
    v8 = String._bridgeToObjectiveC()();
    [v7 setKeyPath:v8];

    [v7 setDuration:0.142];
    v9 = String._bridgeToObjectiveC()();
    [v14 addAnimation:v7 forKey:v9];

    v10 = sub_100671148();
    v11 = String._bridgeToObjectiveC()();
    [v14 addAnimation:v10 forKey:v11];
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();
    [v14 removeAnimationForKey:v12];

    v13 = String._bridgeToObjectiveC()();
    [v14 removeAnimationForKey:v13];

    v11 = String._bridgeToObjectiveC()();
    [v14 removeAnimationForKey:v11];
  }
}

void sub_1006715E8()
{
  v1 = 64.0;
  if (v0[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_suggestedMinutesToWalk + 8])
  {
    v1 = 0.0;
  }

  if (*(*&v0[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendations] + 16))
  {
    v2 = v1 + 170.0 + 30.0 + 5.0 + 15.0;
  }

  else
  {
    v2 = v1;
  }

  v3 = OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations;
  if (*(*&v0[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations] + 16))
  {
    v4 = [v0 collectionView];
    if (!v4)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 frame];
    v7 = v6;

    v2 = v2 + v7 * 0.25 + 18.0 + 10.0 + 10.0;
  }

  v8 = *(*&v0[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appStoreRecommendations] + 16);
  if (v8)
  {
    v2 = v2 + v8 * 70.0 + 10.0 + 10.0;
  }

  v9 = *(*&v0[v3] + 16);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = 30.0;
  if (!v11)
  {
    v12 = 0.0;
  }

  *&v0[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_lastCollectionViewContentHeight] = v2 + v12;
}

id sub_100671764()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v9[4] = sub_100672894;
  v9[5] = v1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10006871C;
  v9[3] = &unk_100866F90;
  v3 = _Block_copy(v9);
  v4 = v0;

  v5 = [v2 initWithSectionProvider:v3];
  _Block_release(v3);

  type metadata accessor for BackgroundSupplementaryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v7];

  return v5;
}

void sub_1006718AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v105 = a2;
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v104 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UICollectionLayoutListConfiguration();
  __chkstk_darwin(v16);
  v22 = __chkstk_darwin(v17);
  if (a1 > 3)
  {
    __break(1u);
  }

  else if (*(&off_100846620 + a1 + 32) > 1u)
  {
    if (*(&off_100846620 + a1 + 32) == 2)
    {
      if (*(*(a3 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations) + 16))
      {
        [objc_msgSend(v105 container];
        v37 = v36;
        swift_unknownObjectRelease();
        v38 = v37 * 0.25 + 18.0;
        v39 = objc_opt_self();
        v40 = [v39 fractionalWidthDimension:0.25];
        v41 = [v39 estimatedDimension:v38];
        v42 = objc_opt_self();
        v43 = [v42 sizeWithWidthDimension:v40 heightDimension:v41];
        v104 = v43;

        v44 = [objc_opt_self() itemWithLayoutSize:v43];
        v45 = [v39 fractionalWidthDimension:1.0];
        v46 = [v39 estimatedDimension:v38];
        v47 = [v42 sizeWithWidthDimension:v45 heightDimension:v46];

        v48 = objc_opt_self();
        sub_100140278(&unk_1008E4E20);
        v49 = swift_allocObject();
        v105 = xmmword_1006D4E70;
        *(v49 + 16) = xmmword_1006D4E70;
        *(v49 + 32) = v44;
        sub_1000059F8(0, &unk_1008E7F70);
        v103 = v44;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v51 = [v48 horizontalGroupWithLayoutSize:v47 subitems:isa];

        v52 = [objc_opt_self() sectionWithGroup:v51];
        [v52 setOrthogonalScrollingBehavior:0];
        [v52 setContentInsets:{5.0, 16.0, 5.0, 16.0}];
        v53 = [v39 fractionalWidthDimension:1.0];
        v54 = [v39 estimatedDimension:30.0];
        v55 = [v42 sizeWithWidthDimension:v53 heightDimension:v54];

        v56 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v55 elementKind:UICollectionElementKindSectionHeader alignment:1];
        v57 = swift_allocObject();
        *(v57 + 16) = v105;
        *(v57 + 32) = v56;
        sub_1000059F8(0, &qword_1008E7F68);
        v58 = v56;
        v59 = Array._bridgeToObjectiveC()().super.isa;

        [v52 setBoundarySupplementaryItems:v59];

        v60 = objc_opt_self();
        v61 = String._bridgeToObjectiveC()();
        v62 = [v60 backgroundDecorationItemWithElementKind:v61];

        [v62 setContentInsets:{35.0, 16.0, 5.0, 16.0}];
        v63 = swift_allocObject();
        *(v63 + 16) = v105;
        *(v63 + 32) = v62;
        sub_1000059F8(0, &qword_1008F80E0);
        v64 = v62;
        v65 = Array._bridgeToObjectiveC()().super.isa;

        [v52 setDecorationItems:v65];
      }
    }

    else if (*(*(a3 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appStoreRecommendations) + 16))
    {
      v91 = v20;
      v103 = v18;
      v92 = v12;
      v93 = v21;
      (*(v13 + 104))(v15, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v92, v22);
      UICollectionLayoutListConfiguration.init(appearance:)();
      (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v8);
      UICollectionLayoutListConfiguration.footerMode.setter();
      (*(v104 + 13))(v7, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v5);
      UICollectionLayoutListConfiguration.headerMode.setter();
      sub_1000059F8(0, &qword_1008F80D8);
      v94 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      if (!*(*(a3 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations) + 16))
      {
        v95 = objc_opt_self();
        v96 = [v95 fractionalWidthDimension:1.0];
        v97 = [v95 estimatedDimension:30.0];
        v98 = [objc_opt_self() sizeWithWidthDimension:v96 heightDimension:v97];

        v99 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v98 elementKind:UICollectionElementKindSectionHeader alignment:1];
        sub_100140278(&unk_1008E4E20);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1006D4E70;
        *(v100 + 32) = v99;
        sub_1000059F8(0, &qword_1008E7F68);
        v101 = v99;
        v102 = Array._bridgeToObjectiveC()().super.isa;

        [v94 setBoundarySupplementaryItems:v102];
      }

      [v94 setContentInsets:{5.0, 16.0, 5.0, 16.0}];
      (*(v91 + 8))(v93, v103);
    }
  }

  else if (*(&off_100846620 + a1 + 32))
  {
    if (*(*(a3 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendations) + 16))
    {
      v66 = objc_opt_self();
      v67 = [v66 estimatedDimension:222.0];
      v68 = [v66 estimatedDimension:170.0];
      v69 = objc_opt_self();
      v70 = [v69 sizeWithWidthDimension:v67 heightDimension:v68];

      v71 = [objc_opt_self() itemWithLayoutSize:v70];
      v72 = objc_opt_self();
      sub_100140278(&unk_1008E4E20);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1006D4E70;
      *(v73 + 32) = v71;
      sub_1000059F8(0, &unk_1008E7F70);
      *&v105 = v71;
      v74 = Array._bridgeToObjectiveC()().super.isa;

      v104 = [v72 horizontalGroupWithLayoutSize:v70 subitems:v74];

      v75 = [v66 fractionalWidthDimension:1.0];
      v76 = [v66 absoluteDimension:30.0];
      v77 = [v69 sizeWithWidthDimension:v75 heightDimension:v76];

      v78 = objc_opt_self();
      v79 = [v78 boundarySupplementaryItemWithLayoutSize:v77 elementKind:UICollectionElementKindSectionHeader alignment:1];
      v80 = [v66 fractionalWidthDimension:1.0];
      v81 = [v66 absoluteDimension:0.5];
      v82 = [v69 sizeWithWidthDimension:v80 heightDimension:v81];

      v83 = [v78 boundarySupplementaryItemWithLayoutSize:v82 elementKind:UICollectionElementKindSectionFooter alignment:5];
      v84 = objc_opt_self();
      v85 = v104;
      v86 = [v84 sectionWithGroup:v104];
      [v86 setOrthogonalScrollingBehavior:1];
      [v86 setInterGroupSpacing:10.0];
      [v86 setContentInsets:{5.0, 16.0, 15.0, 0.0}];
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1006D68D0;
      *(v87 + 32) = v79;
      *(v87 + 40) = v83;
      sub_1000059F8(0, &qword_1008E7F68);
      v88 = v79;
      v89 = v83;
      v90 = Array._bridgeToObjectiveC()().super.isa;

      [v86 setBoundarySupplementaryItems:v90];
    }
  }

  else if ((*(a3 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_suggestedMinutesToWalk + 8) & 1) == 0)
  {
    v23 = *(v13 + 104);
    v103 = v18;
    v24 = v12;
    v25 = v20;
    v26 = &v103 - v19;
    v23(v15, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v24, v22);
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v8);
    UICollectionLayoutListConfiguration.footerMode.setter();
    (*(v104 + 13))(v7, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v5);
    UICollectionLayoutListConfiguration.headerMode.setter();
    sub_1000059F8(0, &qword_1008F80D8);
    v27 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    [v27 setContentInsets:{10.0, 16.0, 10.0, 0.0}];
    v28 = objc_opt_self();
    v29 = [v28 fractionalWidthDimension:1.0];
    v30 = [v28 absoluteDimension:0.5];
    v31 = [objc_opt_self() sizeWithWidthDimension:v29 heightDimension:v30];

    v32 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v31 elementKind:UICollectionElementKindSectionFooter alignment:5];
    sub_100140278(&unk_1008E4E20);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006D4E70;
    *(v33 + 32) = v32;
    sub_1000059F8(0, &qword_1008E7F68);
    v34 = v32;
    v35 = Array._bridgeToObjectiveC()().super.isa;

    [v27 setBoundarySupplementaryItems:v35];

    (*(v25 + 8))(v26, v103);
  }
}

uint64_t sub_10067289C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10067290C()
{
  result = qword_1008F81B0;
  if (!qword_1008F81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F81B0);
  }

  return result;
}

id sub_100672970(double a1)
{
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 linkWithBundleIdentifier:v3];

  if (v4)
  {
    [v4 setDisplayIcon:0];
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v27.origin.x = v7;
    v27.origin.y = v9;
    v27.size.width = v11;
    v27.size.height = v13;
    Width = CGRectGetWidth(v27);
    v15 = v4;
    result = [v15 view];
    if (result)
    {
      v19 = result;
      LODWORD(v17) = 1148846080;
      LODWORD(v18) = 1112014848;
      [result systemLayoutSizeFittingSize:Width - (a1 + a1) withHorizontalFittingPriority:INFINITY verticalFittingPriority:{v17, v18}];
      v21 = v20;
      v23 = v22;

      [v15 setPreferredContentSize:{v21, v23}];
      return v15;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    v24 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v25 = objc_allocWithZone(OBPrivacyLinkController);

    return [v25 init];
  }

  return result;
}

uint64_t sub_100672B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100672CD0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100672BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100672CD0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100672C50()
{
  sub_100672CD0();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100672C7C()
{
  result = qword_1008F81B8;
  if (!qword_1008F81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F81B8);
  }

  return result;
}

unint64_t sub_100672CD0()
{
  result = qword_1008F81C0;
  if (!qword_1008F81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F81C0);
  }

  return result;
}

uint64_t sub_100672D24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a1;
  v52 = a2;
  *&v53 = type metadata accessor for Font.Leading();
  v2 = *(v53 - 8);
  __chkstk_darwin(v53);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString();
  __chkstk_darwin(v5 - 8);
  sub_100055AD8(&ShelfLockupAttributedTagStrings.title.getter);
  v6 = Text.init(_:)();
  v8 = v7;
  v10 = v9;
  v56 = v11;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v48 = enum case for Font.Leading.tight(_:);
  v12 = *(v2 + 104);
  v46[1] = v2 + 104;
  v47 = v12;
  v13 = v53;
  v12(v4);
  Font.leading(_:)();

  v46[0] = *(v2 + 8);
  (v46[0])(v4, v13);
  v50 = Text.font(_:)();
  v51 = v14;
  v57 = v15;
  v17 = v16;

  sub_10004642C(v6, v8, v10 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v54 = v17 & 1;
  v120 = v17 & 1;
  KeyPath = swift_getKeyPath();
  v121 = 0;
  LODWORD(v56) = static Edge.Set.all.getter();
  v122 = 0;
  sub_100055AD8(&ShelfLockupAttributedTagStrings.subtitle.getter);
  v18 = Text.init(_:)();
  v20 = v19;
  v22 = v21;
  static Font.caption.getter();
  v23 = v53;
  v47(v4, v48, v53);
  Font.leading(_:)();

  (v46[0])(v4, v23);
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v2) = v27;

  sub_10004642C(v18, v20, v22 & 1);

  LODWORD(v98[0]) = static HierarchicalShapeStyle.secondary.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10004642C(v24, v26, v2 & 1);

  LOBYTE(v26) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v32 &= 1u;
  LOBYTE(v98[0]) = v32;
  v43 = v50;
  *&v68 = v50;
  *(&v68 + 1) = v57;
  LOBYTE(v69) = v54;
  *(&v69 + 1) = *v119;
  DWORD1(v69) = *&v119[3];
  v72 = v63;
  v71 = v62;
  v70 = v61;
  v76 = v67;
  v75 = v66;
  v74 = v65;
  v73 = v64;
  v44 = v51;
  *(&v69 + 1) = v51;
  *&v77 = KeyPath;
  *(&v77 + 1) = 4;
  LOBYTE(v78) = 0;
  DWORD1(v78) = *(v124 + 3);
  *(&v78 + 1) = v124[0];
  BYTE8(v78) = v56;
  HIDWORD(v78) = *&v123[3];
  *(&v78 + 9) = *v123;
  v80 = 0;
  v79 = 0;
  v53 = xmmword_1006D46B0;
  v81 = xmmword_1006D46B0;
  v82 = 0;
  LOBYTE(v58[13]) = 0;
  v58[11] = 0u;
  v58[12] = xmmword_1006D46B0;
  v58[0] = v68;
  v58[1] = v69;
  v58[4] = v63;
  v58[5] = v64;
  v58[2] = v61;
  v58[3] = v62;
  v58[9] = v77;
  v58[10] = v78;
  v58[7] = v66;
  v58[8] = v67;
  v58[6] = v65;
  *&v83 = v28;
  *(&v83 + 1) = v30;
  LOBYTE(v84) = v32;
  *(&v84 + 1) = *v60;
  DWORD1(v84) = *&v60[3];
  *(&v84 + 1) = v34;
  LOBYTE(v85) = v26;
  *(&v85 + 1) = *v59;
  DWORD1(v85) = *&v59[3];
  *(&v85 + 1) = v35;
  *&v86[0] = v37;
  *(&v86[0] + 1) = v39;
  *&v86[1] = v41;
  BYTE8(v86[1]) = 0;
  *(&v58[17] + 1) = *(v86 + 9);
  *(&v58[16] + 8) = v86[0];
  *(&v58[13] + 8) = v83;
  *(&v58[15] + 8) = v85;
  *(&v58[14] + 8) = v84;
  memcpy(v52, v58, 0x121uLL);
  v87[0] = v28;
  v87[1] = v30;
  v88 = v32;
  *v89 = *v60;
  *&v89[3] = *&v60[3];
  v90 = v34;
  v91 = v26;
  *v92 = *v59;
  *&v92[3] = *&v59[3];
  v93 = v36;
  v94 = v38;
  v95 = v40;
  v96 = v42;
  v97 = 0;
  sub_10001B104(&v68, v98, &qword_1008F8300);
  sub_10001B104(&v83, v98, &qword_1008DC4C0);
  sub_10000EA04(v87, &qword_1008DC4C0);
  v98[0] = v43;
  v98[1] = v57;
  v99 = v54;
  *v100 = *v119;
  *&v100[3] = *&v119[3];
  v101 = v44;
  v105 = v64;
  v106 = v65;
  v107 = v66;
  v108 = v67;
  v102 = v61;
  v103 = v62;
  v104 = v63;
  v109 = KeyPath;
  v110 = 4;
  v111 = 0;
  *v112 = v124[0];
  *&v112[3] = *(v124 + 3);
  v113 = v56;
  *v114 = *v123;
  *&v114[3] = *&v123[3];
  v115 = 0;
  v116 = 0;
  v117 = v53;
  v118 = 0;
  return sub_10000EA04(v98, &qword_1008F8300);
}

uint64_t sub_100673424@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  type metadata accessor for CatalogTipCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*v38)
  {
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v7 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v38[0] = 1;
    *&v17[4] = v39;
    *&v17[20] = v40;
    *&v17[36] = v41;
    v8 = static Edge.Set.all.getter();
    v18 = v7;
    LOBYTE(v19[0]) = 1;
    *(v19 + 1) = 1;
    BYTE3(v19[0]) = 1;
    *(v19 + 4) = *v17;
    *(&v19[1] + 4) = *&v17[16];
    *(&v19[2] + 4) = *&v17[32];
    DWORD1(v19[3]) = *&v17[48];
    BYTE8(v19[3]) = v8;
    HIDWORD(v19[3]) = *&v38[3];
    *(&v19[3] + 9) = *v38;
    v20 = 0x4000000000000000uLL;
    *&v21 = 0;
    *(&v21 + 1) = 0x4020000000000000;
    *&v37[64] = v19[3];
    *&v37[80] = 0x4000000000000000uLL;
    *&v37[96] = v21;
    *v37 = v7;
    *&v37[16] = v19[0];
    *&v37[32] = v19[1];
    LOBYTE(v22) = 0;
    v37[112] = 0;
    *&v37[48] = v19[2];
    v34[0] = 0;
    v37[113] = 0;
    sub_10001B104(&v18, v38, &qword_1008F8308);
    sub_10001B104(&v18, v38, &qword_1008F8308);
    sub_100140278(&qword_1008F8308);
    sub_100140278(&qword_1008F8310);
    sub_1006744E4();
    sub_1006746B4();
    _ConditionalContent<>.init(storage:)();

    sub_10000EA04(&v18, &qword_1008F8308);
    sub_10000EA04(&v18, &qword_1008F8308);
    v46 = *&v38[64];
    v47 = *&v38[80];
    v48 = *&v38[96];
    v49 = *&v38[112];
    v42 = *v38;
    v43 = *&v38[16];
    v44 = *&v38[32];
    v45 = *&v38[48];
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v9 = v39;
    v10 = v40;
    v11 = v41;
    LOBYTE(v18) = 1;
    v34[0] = BYTE8(v39);
    v33[0] = BYTE8(v40);
    v12 = static Edge.Set.all.getter();
    v37[0] = 1;
    *v38 = 0;
    v38[8] = v18;
    *&v38[16] = v9;
    v38[24] = v34[0];
    *&v38[32] = v10;
    v38[40] = v33[0];
    *&v38[48] = v11;
    v38[64] = v12;
    *&v38[72] = 0x4000000000000000;
    *&v38[80] = 0;
    *&v38[88] = 0;
    *&v38[96] = 0x4020000000000000;
    v38[104] = 0;
    v38[113] = 1;
    sub_100140278(&qword_1008F8308);
    sub_100140278(&qword_1008F8310);
    sub_1006744E4();
    sub_1006746B4();
    _ConditionalContent<>.init(storage:)();
  }

  v13 = static HorizontalAlignment.leading.getter();
  LOBYTE(v18) = 0;
  sub_100673A5C(a1, v38);
  memcpy(v33, v38, 0x109uLL);
  memcpy(v34, v38, 0x109uLL);
  sub_10001B104(v33, v37, &qword_1008F8358);
  sub_10000EA04(v34, &qword_1008F8358);
  memcpy(&v32[7], v33, 0x109uLL);
  v28 = v46;
  v29 = v47;
  v30 = v48;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v35[3] = v45;
  v35[2] = v44;
  v35[1] = v43;
  v35[0] = v42;
  v35[6] = v48;
  v35[5] = v47;
  v35[4] = v46;
  v23[2] = v44;
  v23[3] = v45;
  v14 = v18;
  v31 = v49;
  v36 = v49;
  v23[0] = v42;
  v23[1] = v43;
  LOWORD(v23[7]) = v49;
  v23[5] = v47;
  v23[6] = v48;
  v23[4] = v46;
  *v37 = v13;
  *&v37[8] = 0;
  v37[16] = v18;
  memcpy(&v37[17], v32, 0x110uLL);
  memcpy(&v23[7] + 8, v37, 0x121uLL);
  memcpy(v16, v23, 0x199uLL);
  *v38 = v13;
  *&v38[8] = 0;
  v38[16] = v14;
  memcpy(&v38[17], v32, 0x110uLL);
  sub_10001B104(v35, &v18, &qword_1008F8360);
  sub_10001B104(v37, &v18, &qword_1008F8368);
  sub_10000EA04(v38, &qword_1008F8368);
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v18 = v24;
  v19[0] = v25;
  v19[1] = v26;
  v19[2] = v27;
  v19[3] = v28;
  return sub_10000EA04(&v18, &qword_1008F8360);
}

uint64_t sub_100673A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = type metadata accessor for Font.Leading();
  v65 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100055AD8(&ShelfLockupAttributedTagStrings.title.getter);
  v8 = Text.init(_:)();
  KeyPath = v9;
  v11 = v10;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v57 = enum case for Font.Leading.tight(_:);
  v12 = v65;
  v13 = *(v65 + 104);
  v55 = v65 + 104;
  v56 = v13;
  v13(v5);
  Font.leading(_:)();

  v14 = *(v12 + 8);
  v65 = v12 + 8;
  v53 = v14;
  v14(v5, v3);
  v15 = KeyPath;
  v61 = Text.font(_:)();
  v62 = v16;
  v64 = v17;
  v19 = v18;

  sub_10004642C(v8, v15, v11 & 1);

  KeyPath = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v110[55] = v119;
  *&v110[71] = v120;
  *&v110[87] = v121;
  *&v110[103] = v122;
  *&v110[7] = v116;
  *&v110[23] = v117;
  v60 = v19 & 1;
  v113 = v19 & 1;
  v111 = 0;
  *&v110[39] = v118;
  v54 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v114 = 0;
  sub_100055AD8(&ShelfLockupAttributedTagStrings.subtitle.getter);
  v28 = Text.init(_:)();
  v30 = v29;
  v32 = v31;
  static Font.caption.getter();
  v56(v5, v57, v3);
  Font.leading(_:)();

  v53(v5, v3);
  v33 = Text.font(_:)();
  v35 = v34;
  LOBYTE(v5) = v36;
  v59 = v37;

  sub_10004642C(v28, v30, v32 & 1);

  LODWORD(v75) = static HierarchicalShapeStyle.secondary.getter();
  v38 = Text.foregroundStyle<A>(_:)();
  v40 = v39;
  LODWORD(v65) = v41;
  v43 = v42;
  sub_10004642C(v33, v35, v5 & 1);

  v44 = swift_getKeyPath();
  *&v68 = v61;
  *(&v68 + 1) = v64;
  LOBYTE(v69) = v60;
  *(&v69 + 1) = *v112;
  DWORD1(v69) = *&v112[3];
  *(&v69 + 1) = v62;
  *&v70 = KeyPath;
  *(&v70 + 1) = 2;
  LOBYTE(v71[0]) = 0;
  *(&v71[3] + 1) = *&v110[48];
  *(&v71[2] + 1) = *&v110[32];
  *(&v71[1] + 1) = *&v110[16];
  *(v71 + 1) = *v110;
  *&v71[7] = *&v110[111];
  *(&v71[6] + 1) = *&v110[96];
  *(&v71[5] + 1) = *&v110[80];
  *(&v71[4] + 1) = *&v110[64];
  LOBYTE(v5) = v54;
  BYTE8(v71[7]) = v54;
  HIDWORD(v71[7]) = *&v115[3];
  *(&v71[7] + 9) = *v115;
  *&v72 = v21;
  *(&v72 + 1) = v23;
  *&v73 = v25;
  *(&v73 + 1) = v27;
  v74 = 0;
  LOBYTE(v88) = 0;
  v86 = v72;
  v87 = v73;
  v75 = v68;
  v76 = v69;
  v79 = v71[1];
  v80 = v71[2];
  v77 = v70;
  v78 = v71[0];
  v84 = v71[6];
  v85 = v71[7];
  v82 = v71[4];
  v83 = v71[5];
  v81 = v71[3];
  LOBYTE(v35) = v65 & 1;
  v67 = v65 & 1;
  v66 = 0;
  v45 = v72;
  *(a2 + 160) = v71[7];
  *(a2 + 176) = v45;
  *(a2 + 192) = v87;
  v46 = v88;
  v47 = v82;
  *(a2 + 96) = v81;
  *(a2 + 112) = v47;
  v48 = v84;
  *(a2 + 128) = v83;
  *(a2 + 144) = v48;
  v49 = v78;
  *(a2 + 32) = v77;
  *(a2 + 48) = v49;
  v50 = v80;
  *(a2 + 64) = v79;
  *(a2 + 80) = v50;
  v51 = v76;
  *a2 = v75;
  *(a2 + 16) = v51;
  *(a2 + 208) = v46;
  *(a2 + 216) = v38;
  *(a2 + 224) = v40;
  *(a2 + 232) = v35;
  *(a2 + 240) = v43;
  *(a2 + 248) = v44;
  *(a2 + 256) = 2;
  *(a2 + 264) = 0;
  sub_10001B104(&v68, v89, &qword_1008F8370);
  sub_10006965C(v38, v40, v35);

  sub_10004642C(v38, v40, v35);

  v100 = *&v110[64];
  v101 = *&v110[80];
  *v102 = *&v110[96];
  v96 = *v110;
  v97 = *&v110[16];
  v98 = *&v110[32];
  v89[0] = v61;
  v89[1] = v64;
  v90 = v60;
  *v91 = *v112;
  *&v91[3] = *&v112[3];
  v92 = v62;
  v93 = KeyPath;
  v94 = 2;
  v95 = 0;
  *&v102[15] = *&v110[111];
  v99 = *&v110[48];
  v103 = v5;
  *&v104[3] = *&v115[3];
  *v104 = *v115;
  v105 = v21;
  v106 = v23;
  v107 = v25;
  v108 = v27;
  v109 = 0;
  return sub_10000EA04(v89, &qword_1008F8370);
}

uint64_t sub_100674128(uint64_t a1)
{
  v2 = type metadata accessor for CatalogTipCardView();
  sub_10001B104(a1 + *(v2 + 24), v7, &qword_1008DC808);
  if (!v8)
  {
    return sub_10000EA04(v7, &qword_1008DC808);
  }

  v3 = sub_1000066AC(v7, v8);
  v4 = *(v2 + 20);
  memset(v6, 0, sizeof(v6));
  sub_1004A6C54(a1 + v4, v6, *v3);
  sub_10000EA04(v6, &qword_1008E51F0);
  return sub_100005A40(v7);
}

uint64_t sub_100674200(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return Promise.init(asyncOperation:)();
}

uint64_t sub_1006742A0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&unk_1008E4D90) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_10041F704(a1, a2, v2 + v6, v8, v9);
}

void sub_10067435C()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CatalogTipCard();
    if (v1 <= 0x3F)
    {
      sub_10005C6EC();
      if (v2 <= 0x3F)
      {
        sub_100674410();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100674410()
{
  if (!qword_1008F8238)
  {
    type metadata accessor for TipArtworkImageLoader();
    sub_100053BC0();
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F8238);
    }
  }
}

uint64_t sub_100674474()
{
  v1 = *(type metadata accessor for CatalogTipCardView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100674128(v2);
}

unint64_t sub_1006744E4()
{
  result = qword_1008F8318;
  if (!qword_1008F8318)
  {
    sub_100141EEC(&qword_1008F8308);
    sub_100674570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8318);
  }

  return result;
}

unint64_t sub_100674570()
{
  result = qword_1008F8320;
  if (!qword_1008F8320)
  {
    sub_100141EEC(&qword_1008F8328);
    sub_1006745FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8320);
  }

  return result;
}

unint64_t sub_1006745FC()
{
  result = qword_1008F8330;
  if (!qword_1008F8330)
  {
    sub_100141EEC(&qword_1008F8338);
    sub_10024504C();
    sub_10014A6B0(&qword_1008F8340, &qword_1008F8348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8330);
  }

  return result;
}

unint64_t sub_1006746B4()
{
  result = qword_1008F8350;
  if (!qword_1008F8350)
  {
    sub_100141EEC(&qword_1008F8310);
    sub_1001D1144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8350);
  }

  return result;
}

uint64_t sub_100674740()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1006747B4(id *a1)
{
  v1 = *a1;
  Image.init(uiImage:)();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10067483C()
{
  v1 = OBJC_IVAR____TtC10FitnessApp21TipArtworkImageLoader__image;
  v2 = sub_100140278(&qword_1008EF830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1006748EC()
{
  sub_1004BE398();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10067497C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1006749FC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_100674A78()
{
  result = [objc_allocWithZone(type metadata accessor for WorkoutDetailAnalyticsTracker()) init];
  qword_1009261B0 = result;
  return result;
}

void sub_100674BC4()
{
  v1 = OBJC_IVAR___CHWorkoutDetailAnalyticsTracker_trackingWorkouts;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    sub_10067572C();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      *(v0 + v1) = &_swiftEmptyDictionarySingleton;

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100674DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v9[4] = sub_100675C2C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100674EC0;
  v9[3] = &unk_100867208;
  v8 = _Block_copy(v9);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

Class sub_100674EC0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000059F8(0, &qword_1008DB898);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100674FB4(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  if (a2)
  {
    v12 = a2;
    v13 = [v12 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = 0;
  }

  (*(v5 + 16))(v7, v11, v4);
  v15 = objc_allocWithZone(type metadata accessor for WorkoutDetailAnalyticsEventBuilder());
  v16 = v12;
  v17 = a1;
  v18 = sub_1003F7E10(v17, a2);

  swift_beginAccess();
  sub_10055AAD4(v18, v7);
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100675220(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v22[-v12];
  if (a2)
  {
    v14 = a2;
    v15 = [v14 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v16 = OBJC_IVAR___CHWorkoutDetailAnalyticsTracker_trackingWorkouts;
  swift_beginAccess();
  v17 = *(v3 + v16);
  if (*(v17 + 16))
  {

    v18 = sub_10005F9DC(v13);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      sub_10067572C();
    }

    else
    {
    }
  }

  (*(v7 + 16))(v9, v13, v6);
  swift_beginAccess();
  sub_10055AAD4(0, v9);
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

id sub_1006754A8(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    v11 = [v10 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = OBJC_IVAR___CHWorkoutDetailAnalyticsTracker_trackingWorkouts;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_10005F9DC(v9);
    if (v15)
    {
      v16 = *(v6 + 8);
      v17 = *(*(v13 + 56) + 8 * v14);
      v16(v9, v5);

      return v17;
    }
  }

  (*(v6 + 8))(v9, v5);
  return 0;
}

id sub_1006756C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailAnalyticsTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10067572C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedConnection];
  if (v10 && (v11 = v10, v12 = [v10 isHealthDataSubmissionAllowed], v11, v12))
  {
    v13 = sub_1003F776C();
    if (v13)
    {
      v14 = v13;
      sub_1000059F8(0, &qword_1008E3FD0);
      (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.utility(_:), v6);
      v15 = static OS_dispatch_queue.global(qos:)();
      (*(v7 + 8))(v9, v6);
      v16 = swift_allocObject();
      v16[2] = 0xD000000000000029;
      v16[3] = 0x800000010075BDD0;
      v16[4] = v14;
      aBlock[4] = sub_100675C20;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_1008671B8;
      v17 = _Block_copy(aBlock);
      static DispatchQoS.unspecified.getter();
      v27 = _swiftEmptyArrayStorage;
      sub_1000261C4();
      sub_100140278(&unk_1008E7F50);
      sub_10002621C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);

      v26[1](v2, v0);
      (*(v24 + 8))(v5, v25);
    }

    else
    {
      static os_log_type_t.error.getter();
      v26 = HKLogWorkouts;
      os_log(_:dso:log:_:_:)();
      v23 = v26;
    }
  }

  else
  {
    v18 = static os_log_type_t.debug.getter();
    v19 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v18))
    {
      v20 = v19;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10000AFDC(0xD000000000000029, 0x800000010075BDD0, aBlock);
      _os_log_impl(&_mh_execute_header, v20, v18, "[Core Analytics] Health data submission not allowed. Not sending analytics. eventName=%s", v21, 0xCu);
      sub_100005A40(v22);
    }
  }
}

uint64_t sub_100675C2C()
{
  sub_100675C5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_100675C5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = static os_log_type_t.debug.getter();
  v7 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10000AFDC(a1, a2, &v14);
    *(v9 + 12) = 2080;
    sub_1000059F8(0, &qword_1008DB898);
    v10 = Dictionary.description.getter();
    v12 = sub_10000AFDC(v10, v11, &v14);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "[Core Analytics] Sent analytics. eventName=%s event=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return a3;
}

void sub_100675E58()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_player;
  if (!*&v1[OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_player])
  {
    v11 = OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer;
    if (!*&v1[OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer])
    {
      v33 = v7;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v14 = String._bridgeToObjectiveC()();
      v15 = String._bridgeToObjectiveC()();
      v16 = [v13 URLForResource:v14 withExtension:v15];

      v17 = v11;
      v18 = v33;
      if (v16)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v3 + 32))(v9, v5, v18);
        URL._bridgeToObjectiveC()(v19);
        v21 = v20;
        v22 = [objc_opt_self() assetWithURL:v20];

        v23 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v22];
        v24 = [objc_allocWithZone(AVPlayer) init];
        [v24 _setParticipatesInAudioSession:0];
        [v24 setPreventsDisplaySleepDuringVideoPlayback:0];
        [v24 setAllowsExternalPlayback:0];
        [v24 replaceCurrentItemWithPlayerItem:v23];
        v25 = objc_opt_self();
        v26 = v24;
        v27 = [v25 playerLayerWithPlayer:v26];
        v28 = *&v1[v10];
        *&v1[v10] = v24;

        v29 = *&v1[v17];
        *&v1[v17] = v27;
        v30 = v27;

        v31 = [v1 layer];
        [v31 addSublayer:v30];

        (*(v3 + 8))(v9, v33);
      }
    }
  }
}

void sub_1006761A4()
{
  v1 = OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_player;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_player);
  if (v2)
  {
    [v2 replaceCurrentItemWithPlayerItem:0];
  }

  v3 = OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer;
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer);
  if (v4)
  {
    [v4 setPlayer:0];
    v5 = *(v0 + v3);
    if (v5)
    {
      [v5 removeFromSuperlayer];
    }
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;
}

id sub_100676458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1006764FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100073020(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 48) + 16 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_100073020((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v22;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100453590(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100453590(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
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

void sub_100676770(unint64_t a1, void *a2, unint64_t *a3, uint64_t a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v22[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000059F8(0, a3);
    sub_10001D4A8(a5, a3);
    Set.Iterator.init(_cocoa:)();
    v8 = v22[2];
    v10 = v22[3];
    v11 = v22[4];
    v12 = v22[5];
    v13 = v22[6];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v8 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_100022DEC();
      return;
    }

    while (1)
    {
      a6(v22);

      v12 = v20;
      v13 = v21;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000059F8(0, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v22[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10067696C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1006769E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 40);
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    v20 = v8 & 0xC000000000000001;
    v21 = v8;
    do
    {
      if (v20)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      isa = Set._bridgeToObjectiveC()().super.isa;
      v14 = swift_allocObject();
      v14[2] = a2;
      v14[3] = a3;
      v14[4] = v12;
      v28 = sub_100679620;
      v29 = v14;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_10067962C;
      v27 = &unk_100867348;
      v15 = _Block_copy(&aBlock);

      v16 = v12;

      v17 = swift_allocObject();
      v17[2] = a4;
      v17[3] = a5;
      v17[4] = v16;
      v28 = sub_1006795FC;
      v29 = v17;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_10067962C;
      v27 = &unk_100867398;
      v18 = _Block_copy(&aBlock);
      v19 = v16;

      [v19 queryDestinations:isa updateHandler:v15 completionHandler:v18];
      _Block_release(v18);
      _Block_release(v15);

      v8 = v21;
    }

    while (v9 != v10);
  }
}

id sub_100676C48(id result, void (*a2)(id, uint64_t, uint64_t), int a3, id a4)
{
  if (result)
  {
    v5 = result;
    result = [a4 serviceIdentifier];
    if (result)
    {
      v6 = result;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      a2(v5, v7, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100676CF4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008E1750);
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

id sub_100676D8C(uint64_t a1, unint64_t a2)
{
  sub_100679534();
  v5 = *(v2 + 24);
  v6 = String._bridgeToObjectiveC()();
  sub_100140278(&unk_1008E53F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = 0;
  v8 = [v5 unifiedContactWithIdentifier:v6 keysToFetch:isa error:&v19];

  v9 = v19;
  if (!v8)
  {
    v10 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = static os_log_type_t.error.getter();
    v12 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v11))
    {
      v13 = v12;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_10000AFDC(a1, a2, &v19);
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v13, v11, "Failed to fetch contact for identifier: %s with error: %@", v14, 0x16u);
      sub_10000EA04(v15, &unk_1008DB8B0);

      sub_100005A40(v16);
    }

    else
    {
    }

    return 0;
  }

  return v8;
}

uint64_t sub_100676FD8()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10029DA00(_swiftEmptyArrayStorage);
  }

  v1 = sub_1006786C4();
  v2 = sub_100678A58();
  sub_100676770(v2, v1, &qword_1008F8670, CNContact_ptr, &qword_1008DF0D8, sub_1001A4D14);
  v4 = sub_100311834(v3);

  if (v4 < 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = (v4 >> 62) & 1;
  }

  if (v5 != 1)
  {
    v6 = *(v4 + 16);
    if (v6 >= 0x32)
    {
      v7 = 50;
    }

    else
    {
      v7 = *(v4 + 16);
    }

    result = *(v4 + 16);
    if (v6 >= v7)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19 >= 50)
  {
    v7 = 50;
  }

  else
  {
    v7 = v19;
  }

  if (v19 < 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = v19;
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v6 = v20;
  if (result < v7)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  if ((v4 & 0xC000000000000001) != 0 && v6)
  {
    sub_1000059F8(0, &qword_1008F8670);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v7 != v10);
  }

  else
  {
  }

  if (!v5)
  {
    v0 = 0;
    v5 = v4 + 32;
    v7 = (2 * v7) | 1;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_100311724(v4, v5, v0, v7);
    v16 = v15;
LABEL_27:
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v11 = _CocoaArrayWrapper.subscript.getter();
  v5 = v12;
  v0 = v13;
  v7 = v14;

  v4 = v11;
  if ((v7 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v18 = v17[2];

  if (__OFSUB__(v7 >> 1, v0))
  {
    goto LABEL_38;
  }

  if (v18 != (v7 >> 1) - v0)
  {
LABEL_39:
    swift_unknownObjectRelease_n();
    goto LABEL_20;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v16)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

LABEL_28:
  sub_100677284(v16);
}

uint64_t sub_100677284(unint64_t a1)
{
  v3 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  static os_log_type_t.default.getter();
  v6 = HKLogActivity;
  v7 = _swiftEmptyArrayStorage;
  os_log(_:dso:log:_:_:)();

  v25 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v24 = v10;
      sub_100677670(&v25, &v24);

      ++v9;
      if (v7 == i)
      {
        v12 = v25;
        v7 = _swiftEmptyArrayStorage;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v12 = &_swiftEmptyDictionarySingleton;
LABEL_15:
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = sub_1006764FC(v12);
  if (ASManateeContainerEnabled())
  {
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v1;
    v15[4] = v12;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v18[5] = v14;
    v18[6] = sub_100679454;
    v18[7] = v15;

    sub_10026E198(0, 0, v5, &unk_1006FB1D8, v18);
  }

  else
  {
    v20 = sub_1001AA6D4(v14);

    v21 = swift_allocObject();
    v21[2] = v13;
    v21[3] = v1;
    v21[4] = v12;
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    *(v22 + 24) = v13;
    swift_retain_n();
    swift_retain_n();
    sub_1006769E0(v20, sub_1006793F8, v21, sub_100679404, v22);
  }
}

uint64_t sub_100677670(unint64_t *a1, id *a2)
{
  v66 = *a2;
  v3 = [*a2 phoneNumbers];
  sub_100140278(&qword_1008F8668);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v65 = a1;
  if (!v6)
  {
LABEL_24:

    v30 = [v66 emailAddresses];
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v31 >> 62)
    {
      goto LABEL_50;
    }

    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
    }

LABEL_26:
    v33 = 0;
    v60 = v31;
    v62 = v31 & 0xC000000000000001;
    v56 = v31 & 0xFFFFFFFFFFFFFF8;
    v58 = v32;
    while (1)
    {
      if (v62)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v33 >= *(v56 + 16))
        {
          goto LABEL_49;
        }

        v36 = *(v31 + 8 * v33 + 32);
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          v32 = _CocoaArrayWrapper.endIndex.getter();
          if (!v32)
          {
          }

          goto LABEL_26;
        }
      }

      v64 = v37;
      v38 = v36;
      v39 = [v36 value];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *a1;
      v68 = *a1;
      v46 = sub_100066F20(v40, v42);
      v47 = *(v31 + 16);
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_47;
      }

      a1 = v45;
      if (*(v31 + 24) >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v45)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_100496670();
          if (a1)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_10048F3D0(v49, isUniquelyReferenced_nonNull_native);
        v50 = sub_100066F20(v40, v42);
        if ((a1 & 1) != (v51 & 1))
        {
          goto LABEL_53;
        }

        v46 = v50;
        if (a1)
        {
LABEL_27:

          v31 = v68;
          v34 = v68[7];
          v35 = *(v34 + 8 * v46);
          *(v34 + 8 * v46) = v43;

          goto LABEL_28;
        }
      }

      v31 = v68;
      v68[(v46 >> 6) + 8] |= 1 << v46;
      v52 = (v68[6] + 16 * v46);
      *v52 = v40;
      v52[1] = v42;
      *(v68[7] + 8 * v46) = v43;

      v53 = v68[2];
      v27 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v27)
      {
        goto LABEL_48;
      }

      v68[2] = v54;
LABEL_28:
      a1 = v65;
      *v65 = v31;
      ++v33;
      v31 = v60;
      if (v64 == v58)
      {
      }
    }
  }

  while (v6 >= 1)
  {
    v7 = 0;
    v59 = v5;
    v61 = v5 & 0xC000000000000001;
    v57 = v6;
    while (1)
    {
      v11 = v61 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v5 + 8 * v7 + 32);
      v63 = v11;
      v10 = [v11 value];
      v12 = [v10 stringValue];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = v66;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *a1;
      v67 = *a1;
      v19 = sub_100066F20(v13, v15);
      v20 = *(v18 + 16);
      v21 = (v5 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        break;
      }

      a1 = v5;
      if (*(v18 + 24) >= v22)
      {
        if (v17)
        {
          v24 = v67;
          if (v5)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_100496670();
          v24 = v67;
          if (a1)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_10048F3D0(v22, v17);
        v23 = sub_100066F20(v13, v15);
        if ((a1 & 1) != (v5 & 1))
        {
          goto LABEL_53;
        }

        v19 = v23;
        v24 = v67;
        if (a1)
        {
LABEL_5:
          v8 = v24[7];
          v9 = *(v8 + 8 * v19);
          *(v8 + 8 * v19) = v16;

          v10 = v9;
          goto LABEL_6;
        }
      }

      v24[(v19 >> 6) + 8] |= 1 << v19;
      v25 = (v24[6] + 16 * v19);
      *v25 = v13;
      v25[1] = v15;
      *(v24[7] + 8 * v19) = v16;
      v26 = v24[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v24[2] = v28;

LABEL_6:
      ++v7;

      a1 = v65;
      *v65 = v24;
      v5 = v59;
      if (v57 == v7)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v29 = v5;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v29;
    v65 = a1;
    if (!v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_53:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100677B4C(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    v14 = a1;
    v15 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v14;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    v16 = a1;

    sub_1006792F4(v16, (a3 + 16), a4, a5);

    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    return;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v17 = a2;
  v9 = static os_log_type_t.default.getter();
  v10 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v9))
  {
    v11 = v10;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v17;
    *v13 = a2;
    v17 = v17;
    _os_log_impl(&_mh_execute_header, v11, v9, "ReachableContactDataSource fetching destinations failed: %@", v12, 0xCu);
    sub_10000EA04(v13, &unk_1008DB8B0);
  }
}

void sub_100677D68(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = (*a1 + OBJC_IVAR___CHReachableDestination_destination);
  v10 = *v8;
  v9 = v8[1];
  swift_beginAccess();
  if (*(*a2 + 16) <= 0xAuLL)
  {
    v11 = *(a3 + 16);

    if ((sub_1003A5CE8(v10, v9, v11) & 1) == 0)
    {
      if (*(a4 + 16))
      {
        v12 = sub_100066F20(v10, v9);
        if (v13)
        {
          v31 = v10;
          v14 = *(*(a4 + 56) + 8 * v12);
          v15 = [v14 identifier];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v19 = sub_1006790B8(v16, v18);

          if (v19)
          {
LABEL_15:

            return;
          }

          v32 = v14;
          v30 = v9;
          swift_beginAccess();
          v20 = *(*a2 + 16);
          v33 = *a2;

          if (v20)
          {
            v21 = 0;
            v22 = v33 + 72;
            while (v21 < *(v33 + 16))
            {
              v16 = *(v22 - 24);
              v14 = *(v22 - 40);

              v19 = [v14 isEqual:v32];

              if (v19)
              {

                return;
              }

              ++v21;
              v22 += 48;
              if (v20 == v21)
              {
                goto LABEL_11;
              }
            }

            __break(1u);
          }

          else
          {
LABEL_11:

            v23 = v7 + OBJC_IVAR___CHReachableDestination_preferredServiceIdentifier;
            v7 = *(v7 + OBJC_IVAR___CHReachableDestination_preferredServiceIdentifier);
            v19 = *(v23 + 8);
            swift_beginAccess();
            v16 = *a2;
            swift_bridgeObjectRetain_n();

            v14 = v32;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v16;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_12:
              v26 = *(v16 + 16);
              v25 = *(v16 + 24);
              v27 = v26 + 1;
              if (v26 >= v25 >> 1)
              {
                v29 = sub_1001A3B38((v25 > 1), v26 + 1, 1, v16);
                v27 = v26 + 1;
                v16 = v29;
                *a2 = v29;
              }

              *(v16 + 16) = v27;
              v28 = (v16 + 48 * v26);
              v28[4] = v14;
              v28[5] = v31;
              v28[6] = v30;
              v28[7] = v7;
              v28[8] = v19;
              v28[9] = _swiftEmptyArrayStorage;
              swift_endAccess();

              goto LABEL_15;
            }
          }

          v16 = sub_1001A3B38(0, *(v16 + 16) + 1, 1, v16);
          *a2 = v16;
          goto LABEL_12;
        }
      }
    }
  }
}

void sub_10067808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);

  swift_beginAccess();
  v66 = a4;
  swift_beginAccess();
  v13 = 0;
  v14 = (v10 + 63) >> 6;
  v61 = v14;
  v62 = v9;
  while (v12)
  {
LABEL_12:
    if (*(*(v66 + 16) + 16) > 0xAuLL)
    {
LABEL_49:

      return;
    }

    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (v8[6] + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v8[7] + 8 * v17);
    v22 = v8[2];

    v67 = v21;
    v68 = v19;
    if (!v22)
    {
      v36 = v21;
LABEL_28:
      if (!*(a6 + 16))
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }

    v23 = v21;
    v24 = sub_100066F20(v19, v20);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      goto LABEL_28;
    }

    v27 = *(v8[7] + 8 * v24);
    if (Int.init(truncating:)() != 1)
    {

      goto LABEL_6;
    }

    v28 = *(a5 + 16);
    if (*(v28 + 16))
    {
      v58 = v8;
      v29 = a6;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v34 = (*(v28 + 48) + 16 * v32);
          v35 = *v34 == v68 && v34[1] == v20;
          if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        a6 = v29;
LABEL_48:
        v8 = v58;
        goto LABEL_6;
      }

LABEL_25:

      a6 = v29;
      v8 = v58;
      if (!*(v29 + 16))
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (!*(a6 + 16))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

LABEL_29:

    v37 = sub_100066F20(v68, v20);
    v39 = v38;

    if (v39)
    {
      v60 = a6;
      v40 = *(*(a6 + 56) + 8 * v37);
      v41 = [v40 identifier];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      LOBYTE(v41) = sub_1006790B8(v42, v44);

      if (v41)
      {

        a6 = v60;
      }

      else
      {
        v64 = v40;
        v58 = v8;
        v45 = *(*(v66 + 16) + 16);
        v65 = *(v66 + 16);

        v63 = v45;
        if (v45)
        {
          v46 = 0;
          v47 = v65 + 72;
          while (v46 < *(v65 + 16))
          {
            v48 = *(v47 - 40);

            v49 = [v48 isEqual:v64];

            if (v49)
            {

              a6 = v60;
              goto LABEL_48;
            }

            ++v46;
            v47 += 48;
            if (v63 == v46)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_51;
        }

LABEL_39:

        swift_beginAccess();
        v50 = *(v66 + 16);

        v51 = v64;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v66 + 16) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_1001A3B38(0, *(v50 + 2) + 1, 1, v50);
          *(v66 + 16) = v50;
        }

        a6 = v60;
        v54 = *(v50 + 2);
        v53 = *(v50 + 3);
        v8 = v58;
        if (v54 >= v53 >> 1)
        {
          v50 = sub_1001A3B38((v53 > 1), v54 + 1, 1, v50);
        }

        *(v50 + 2) = v54 + 1;
        v55 = &v50[48 * v54];
        *(v55 + 4) = v51;
        *(v55 + 5) = v68;
        *(v55 + 6) = v20;
        *(v55 + 7) = a2;
        *(v55 + 8) = a3;
        *(v55 + 9) = _swiftEmptyArrayStorage;
        *(v66 + 16) = v50;
        swift_endAccess();
      }
    }

    else
    {
    }

LABEL_6:
    v14 = v61;
    v9 = v62;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      goto LABEL_49;
    }

    v12 = *(v9 + 8 * v15);
    ++v13;
    if (v12)
    {
      v13 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_1006785E4()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1006786C4()
{
  v1 = [objc_allocWithZone(CNFavorites) initWithContactStore:*(v0 + 24)];
  v2 = [v1 entries];
  sub_1000059F8(0, &qword_1008F8660);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_27:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v25 = v1;
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 contactProperty];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 contact];

        v12 = [v11 identifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        sub_100676D8C(v13, v15);
      }

      ++v6;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v4 != v6);

    v1 = v25;
  }

  else
  {
  }

  v16 = 0;
  v3 = _swiftEmptyArrayStorage[2];
  while (v3 != v16)
  {
    if (v16 >= _swiftEmptyArrayStorage[2])
    {
      __break(1u);
      goto LABEL_27;
    }

    v17 = _swiftEmptyArrayStorage[v16++ + 4];
    if (v17)
    {
      v18 = v17;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = static os_log_type_t.default.getter();
  v21 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v20))
  {
    v22 = v21;
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v22, v20, "Found %ld suggestions from Favorites.", v23, 0xCu);
  }

  v24 = sub_1001AAAB4(_swiftEmptyArrayStorage);

  return v24;
}

uint64_t sub_100678A58()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.notOnQueue(_:), v1);
  v5 = _dispatchPreconditionTest(_:)();
  v7 = *(v2 + 8);
  v6 = v2 + 8;
  v7(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_15:

    v20 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v0 = [objc_allocWithZone(_PSContactSuggester) init];
  v4 = _swiftEmptyArrayStorage;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = [v0 contactSuggestionsWithMaxSuggestions:10 excludeContactsWithIdentifiers:isa];

  sub_1000059F8(0, &qword_1008F8658);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_14;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:
  v27 = v4;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v10 < 0)
  {
    goto LABEL_25;
  }

  v26 = v0;
  v12 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v6 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = [v13 contactIdentifier];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_100676D8C(v17, v19);
    }

    ++v12;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v10 != v12);

  v0 = v26;
  v20 = v27;
  v4 = _swiftEmptyArrayStorage;
LABEL_16:
  v21 = 0;
  v27 = v4;
  v22 = v20[2];
  while (1)
  {
    if (v22 == v21)
    {

      v25 = sub_1001AAAB4(v4);

      return v25;
    }

    if (v21 >= v20[2])
    {
      break;
    }

    v23 = v20[v21++ + 4];
    if (v23)
    {
      v24 = v23;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v27;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100678DF8()
{

  v1 = OBJC_IVAR____TtC10FitnessApp27ReachableContactsDataSource__friendSuggestionList;
  v2 = sub_100140278(&qword_1008F8678);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100678ED0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReachableContactsDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100678F10@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100678F90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10067900C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_100679044(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

BOOL sub_1006790B8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 objectForKey:@"CHRemovedSuggestedContactsAsDestinationsKey"];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_100140278(&unk_1008E99C0);
    if (swift_dynamicCast())
    {
      v6 = (v15 + 40);
      v7 = *(v15 + 16) + 1;
      while (--v7)
      {
        if (*(v6 - 1) != a1 || *v6 != a2)
        {
          v6 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  else
  {
    sub_10000EA04(v18, &qword_1008E51F0);
  }

  v10 = static os_log_type_t.default.getter();
  v11 = HKLogActivity;
  result = os_log_type_enabled(HKLogActivity, v10);
  if (!result)
  {
    return result;
  }

  v12 = v11;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *&v18[0] = v14;
  *v13 = 136315138;
  *(v13 + 4) = sub_10000AFDC(0xD000000000000028, 0x800000010076A110, v18);
  _os_log_impl(&_mh_execute_header, v12, v10, "%s found no stored contacts as removed suggestions.", v13, 0xCu);
  sub_100005A40(v14);

  return 0;
}

void sub_1006792F4(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_100677D68(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10067940C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100679460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002BACC;

  return sub_1005986D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100679534()
{
  v0 = objc_opt_self();
  v1 = [v0 descriptorForRequiredKeysForStyle:0];
  v2 = [v0 descriptorForRequiredKeysForStyle:1003];
  sub_100140278(&unk_1008E4E20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D5300;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = CNContactEmailAddressesKey;
  *(v3 + 56) = CNContactPhoneNumbersKey;
  v4 = CNContactEmailAddressesKey;
  v5 = CNContactPhoneNumbersKey;
  return v3;
}

uint64_t sub_100679630()
{
  result = sub_100679654();
  byte_1008F8688 = result & 1;
  return result;
}

uint64_t sub_100679654()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2 && (v3 = v2, v4 = String._bridgeToObjectiveC()(), v5 = [v3 BOOLForKey:v4], v3, v4, v5))
  {
    static os_log_type_t.default.getter();
    v6 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v7 = 1;
    v2 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100679788()
{
  result = sub_1006797AC();
  byte_1008F8689 = result & 1;
  return result;
}

uint64_t sub_1006797AC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2 && (v3 = v2, v4 = String._bridgeToObjectiveC()(), v5 = [v3 BOOLForKey:v4], v3, v4, v5))
  {
    static os_log_type_t.default.getter();
    v6 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v7 = 1;
    v2 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1006798E0()
{
  result = sub_100679904();
  byte_1008F868A = result & 1;
  return result;
}

uint64_t sub_100679904()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2 && (v3 = v2, v4 = String._bridgeToObjectiveC()(), v5 = [v3 BOOLForKey:v4], v3, v4, v5))
  {
    static os_log_type_t.default.getter();
    v6 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v7 = 1;
    v2 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *sub_100679A38()
{
  v1 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_timeLabel;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_distanceLabel;
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v0[v3] = v4;
  v28.receiver = v0;
  v28.super_class = type metadata accessor for WorkoutChartHeaderView();
  v5 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_timeLabel;
  v7 = *&v5[OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_timeLabel];
  sub_1000059F8(0, &qword_1008F73C0);
  v8 = v5;
  v9 = v7;
  v10 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  v11 = objc_opt_self();
  v12 = [v11 traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v13 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];

  [v9 setFont:v13];
  v14 = *&v5[v6];
  v15 = objc_opt_self();
  v16 = v14;
  result = [v15 elapsedTimeColors];
  if (result)
  {
    v18 = result;
    v19 = [result nonGradientTextColor];

    [v16 setTextColor:v19];
    [v8 addSubview:*&v5[v6]];
    v20 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_distanceLabel;
    v21 = *&v8[OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_distanceLabel];
    v22 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
    v23 = [v11 traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    v24 = [v22 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v23];

    [v21 setFont:v24];
    v25 = *&v8[v20];
    result = [v15 distanceColors];
    if (result)
    {
      v26 = result;
      v27 = [result nonGradientTextColor];

      [v25 setTextColor:v27];
      [v8 addSubview:*&v8[v20]];
      sub_100679DEC();

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100679DEC()
{
  v1 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006DF610;
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_timeLabel];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = *&v0[OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_distanceLabel];
  v14 = [v13 topAnchor];
  v15 = [v0 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v2 + 56) = v16;
  v17 = [v13 trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v2 + 64) = v19;
  v20 = [v13 bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v2 + 72) = v22;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

id sub_10067A164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutChartHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10067A208()
{
  v1 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_timeLabel;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_distanceLabel;
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10067A300@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_100140278(&qword_1008E6738);
  __chkstk_darwin(v5 - 8);
  v52 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = (v43 - v8);
  v9 = type metadata accessor for SegmentedPickerStyle();
  v10 = *(v9 - 8);
  v49 = v9;
  v50 = v10;
  __chkstk_darwin(v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008E4B18);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v43 - v15;
  v17 = sub_100140278(&qword_1008E4B20);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v43 - v22;
  v24 = LocalizedStringKey.init(stringLiteral:)();
  v45 = v25;
  v46 = v24;
  v43[3] = v26;
  v44 = v27;
  type metadata accessor for WorkoutDetailSwimmingSetDataSource(0);
  sub_10067AA8C();
  v28 = a2;
  v29 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v56 = v58;
  v57 = v59;
  v54 = a1;
  v55 = v28;
  sub_100140278(&qword_1008E4B30);
  sub_10026DF38();
  Picker<>.init(_:selection:content:)();
  SegmentedPickerStyle.init()();
  sub_10014A6B0(&qword_1008E4B40, &qword_1008E4B18);
  v30 = v47;
  v31 = v49;
  View.pickerStyle<A>(_:)();
  (*(v50 + 8))(v12, v31);
  (*(v48 + 8))(v16, v30);
  LOBYTE(v31) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v32 = &v23[*(v18 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v37 = v51;
  sub_1002CF078(v51);
  sub_1000A5ABC(v23, v20);
  v38 = v37;
  v39 = v52;
  sub_10067AAEC(v37, v52);
  v40 = v53;
  sub_1000A5ABC(v20, v53);
  v41 = sub_100140278(&qword_1008F86D8);
  sub_10067AAEC(v39, v40 + *(v41 + 48));
  sub_10067AB5C(v38);
  sub_1000A5B2C(v23);
  sub_10067AB5C(v39);
  return sub_1000A5B2C(v20);
}

uint64_t sub_10067A784@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10067A804(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10067A874(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  sub_100140278(&qword_1008E4B50);
  sub_100140278(&qword_1008E4520);
  sub_10014A6B0(&qword_1008E4B58, &qword_1008E4B50);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

double sub_10067A9F0@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_100140278(&qword_1008F86C8);
  sub_10067A300(v4, v3, a1 + *(v5 + 44));
  LOBYTE(v3) = static Edge.Set.all.getter();
  v6 = a1 + *(sub_100140278(&qword_1008F86D0) + 36);
  *v6 = v3;
  result = 0.0;
  *(v6 + 8) = xmmword_1006D6F10;
  *(v6 + 24) = xmmword_1006D6F10;
  *(v6 + 40) = 0;
  return result;
}

unint64_t sub_10067AA8C()
{
  result = qword_1008E24D8;
  if (!qword_1008E24D8)
  {
    type metadata accessor for WorkoutDetailSwimmingSetDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E24D8);
  }

  return result;
}

uint64_t sub_10067AAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E6738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067AB5C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E6738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10067ABC4()
{
  result = qword_1008F86E0;
  if (!qword_1008F86E0)
  {
    sub_100141EEC(&qword_1008F86D0);
    sub_10014A6B0(&qword_1008F86E8, &qword_1008F86F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F86E0);
  }

  return result;
}

id sub_10067ACCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPausedRingsObserverBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10067AD10@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR___CHActivityPausedRingsObserver_bridgedValue);
  *a1 = v2;
  return v2;
}

uint64_t sub_10067AD64@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008DB078);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  sub_10001B104(v1 + *(v10 + 28), v9, &qword_1008DB078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for WithCurrentHostingControllerAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t property wrapper backing initializer of WorkoutVoiceOnboardingViewiOS.selectedVoiceIndex()
{
  sub_100140278(&qword_1008DECE8);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t WorkoutVoiceOnboardingViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ListSectionSpacing();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = v1;
  sub_100140278(&qword_1008F8728);
  sub_10014A6B0(&qword_1008F8730, &qword_1008F8728);
  List<>.init(content:)();
  static ListSectionSpacing.compact.getter();
  v7 = *(sub_100140278(&qword_1008F8738) + 36);
  (*(v4 + 16))(a1 + v7, v6, v3);
  v8 = *(v4 + 56);
  v8(a1 + v7, 0, 1, v3);
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(sub_100140278(&qword_1008F8740) + 36));
  v11 = *(sub_100140278(&qword_1008F3538) + 28);
  (*(v4 + 32))(v10 + v11, v6, v3);
  v8(v10 + v11, 0, 1, v3);
  *v10 = KeyPath;
  v12 = static HorizontalAlignment.center.getter();
  v13 = a1 + *(sub_100140278(&qword_1008F8748) + 36);
  sub_10067D9DC(v1, v13);
  VerticalEdge.rawValue.getter();
  v14 = Edge.init(rawValue:)();
  v15 = static SafeAreaRegions.container.getter();
  result = sub_100140278(&qword_1008F8750);
  v17 = v13 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v17 + 17) = v14;
  *(v17 + 24) = v12;
  return result;
}

uint64_t sub_10067B258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v78 = sub_100140278(&qword_1008F88E8);
  __chkstk_darwin(v78);
  v84 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = (&v65 - v5);
  v71 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v73 = v6;
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for InferenceClient();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for WorkoutVoicePickerView();
  v87 = *(v79 - 8);
  __chkstk_darwin(v79);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008F88F0);
  __chkstk_darwin(v9 - 8);
  v82 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v65 - v12;
  v77 = sub_100140278(&qword_1008F88F8);
  v13 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v65 - v14;
  v15 = type metadata accessor for EnvironmentValues();
  v88 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100140278(&qword_1008F8900);
  __chkstk_darwin(v18 - 8);
  v81 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  v23 = sub_100140278(&qword_1008F8908);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v80 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v65 - v27;
  sub_100140278(&qword_1008F8910);
  sub_10014A6B0(&qword_1008F8918, &qword_1008F8910);
  Section<>.init(content:)();
  v92 = static Color.clear.getter();
  v29 = AnyView.init<A>(_:)();
  v30 = *(v24 + 44);
  v90 = v28;
  *&v28[v30] = v29;
  v31 = *(a1 + 32);
  v32 = a1;
  v75 = *(a1 + 40);
  if (v75 == 1)
  {
    v33 = v31;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v31, 0);
    (*(v88 + 8))(v17, v15);
    v33 = v92;
  }

  v35 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

  v36 = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
  v37 = sub_10032F118(v35);
  v89 = v22;
  v66 = v15;
  if (v36)
  {
    __chkstk_darwin(v37);
    *(&v65 - 2) = a1;
    sub_100140278(&qword_1008ED558);
    sub_10014A6B0(&qword_1008ED560, &qword_1008ED558);
    v38 = v76;
    Section<>.init(content:)();
    v22 = v89;
    v32 = a1;
    v39 = v77;
    (*(v13 + 32))(v89, v38, v77);
    v40 = 0;
    v41 = v79;
  }

  else
  {
    v40 = 1;
    v41 = v79;
    v39 = v77;
  }

  (*(v13 + 56))(v22, v40, 1, v39);
  v42 = *(v32 + 8);
  LOBYTE(v92) = *v32;
  v93 = v42;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  v43 = 1;
  v44 = v88;
  if (v91 == 1)
  {
    if (v75)
    {
      v45 = v31;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v46 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v31, 0);
      (*(v44 + 8))(v17, v66);
      v45 = v92;
    }

    v47 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    v48 = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
    sub_10032F118(v47);
    if (v48)
    {
      (*(v67 + 16))(v70, v32 + *(v71 + 36), v69);
      v49 = v74;
      sub_10067EE38(v32, v74);
      v50 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v51 = swift_allocObject();
      sub_10067EE9C(v49, v51 + v50);
      v52 = v68;
      WorkoutVoicePickerView.init(inferenceClient:selectedRowCallback:)();
      (*(v87 + 32))(v86, v52, v41);
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }
  }

  v53 = v86;
  (*(v87 + 56))(v86, v43, 1, v41);
  v54 = static HorizontalAlignment.leading.getter();
  v55 = v83;
  *v83 = v54;
  *(v55 + 8) = 0;
  *(v55 + 16) = 1;
  v56 = sub_100140278(&qword_1008F8920);
  sub_10067CA88(v32, v55 + *(v56 + 44));
  v92 = static Color.clear.getter();
  *(v55 + *(v78 + 36)) = AnyView.init<A>(_:)();
  v57 = v80;
  sub_10001B104(v90, v80, &qword_1008F8908);
  v58 = v89;
  v59 = v81;
  sub_10001B104(v89, v81, &qword_1008F8900);
  v60 = v82;
  sub_10001B104(v53, v82, &qword_1008F88F0);
  v61 = v84;
  sub_10001B104(v55, v84, &qword_1008F88E8);
  v62 = v85;
  sub_10001B104(v57, v85, &qword_1008F8908);
  v63 = sub_100140278(&qword_1008F8928);
  sub_10001B104(v59, v62 + v63[12], &qword_1008F8900);
  sub_10001B104(v60, v62 + v63[16], &qword_1008F88F0);
  sub_10001B104(v61, v62 + v63[20], &qword_1008F88E8);
  sub_10000EA04(v55, &qword_1008F88E8);
  sub_10000EA04(v53, &qword_1008F88F0);
  sub_10000EA04(v58, &qword_1008F8900);
  sub_10000EA04(v90, &qword_1008F8908);
  sub_10000EA04(v61, &qword_1008F88E8);
  sub_10000EA04(v60, &qword_1008F88F0);
  sub_10000EA04(v59, &qword_1008F8900);
  return sub_10000EA04(v57, &qword_1008F8908);
}

uint64_t sub_10067BDDC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_100140278(&qword_1008F8980);
  return sub_10067BE2C(a1 + *(v2 + 44));
}

uint64_t sub_10067BE2C@<X0>(uint64_t a1@<X8>)
{
  v36[0] = a1;
  v1 = type metadata accessor for LocalizationFeature();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F8988);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v36 - v10;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = sub_100140278(&qword_1008F8990);
  sub_10067C158(&v11[*(v12 + 44)]);
  v13 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v14 = &v11[*(v6 + 44)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  (*(v2 + 104))(v4, enum case for LocalizationFeature.workout(_:), v1);
  v19 = static Localization.workoutUILocalizedString(_:feature:)();
  v21 = v20;
  (*(v2 + 8))(v4, v1);
  v37 = v19;
  v38 = v21;
  sub_10000FCBC();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v2) = v25;
  LODWORD(v37) = static HierarchicalShapeStyle.secondary.getter();
  v26 = Text.foregroundStyle<A>(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10004642C(v22, v24, v2 & 1);

  sub_10001B104(v11, v8, &qword_1008F8988);
  v33 = v36[0];
  sub_10001B104(v8, v36[0], &qword_1008F8988);
  v34 = v33 + *(sub_100140278(&qword_1008F8998) + 48);
  *v34 = v26;
  *(v34 + 8) = v28;
  *(v34 + 16) = v30 & 1;
  *(v34 + 24) = v32;
  sub_10006965C(v26, v28, v30 & 1);

  sub_10000EA04(v11, &qword_1008F8988);
  sub_10004642C(v26, v28, v30 & 1);

  return sub_10000EA04(v8, &qword_1008F8988);
}

uint64_t sub_10067C158@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LocalizationFeature();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008DC498);
  __chkstk_darwin(v7 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v47 - v10;
  v11 = sub_100140278(&qword_1008DCAF8);
  __chkstk_darwin(v11 - 8);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = Image.init(_internalSystemName:)();
  v17 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v54 = v16;
  LOBYTE(v55) = v17;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60 = 0;
  sub_100140278(&qword_1008DCB00);
  sub_10015ECA8();
  View.accessibilityHidden(_:)();

  (*(v4 + 104))(v6, enum case for LocalizationFeature.workout(_:), v3);
  v22 = static Localization.workoutUILocalizedString(_:feature:)();
  v24 = v23;
  (*(v4 + 8))(v6, v3);
  v54 = v22;
  v55 = v24;
  sub_10000FCBC();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  LOBYTE(v6) = v28;
  static Font.title3.getter();
  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;

  sub_10004642C(v25, v27, v6 & 1);

  static Font.Weight.semibold.getter();
  v34 = Text.fontWeight(_:)();
  v36 = v35;
  LOBYTE(v25) = v37;
  v39 = v38;
  sub_10004642C(v29, v31, v33 & 1);

  v54 = v34;
  v55 = v36;
  LOBYTE(v56) = v25 & 1;
  v57 = v39;
  v40 = v50;
  static AccessibilityTraits.isHeader.getter();
  v41 = v47;
  View.accessibilityAddTraits(_:)();
  (*(v51 + 8))(v40, v52);
  sub_10004642C(v34, v36, v25 & 1);

  v42 = v48;
  sub_10001B104(v15, v48, &qword_1008DCAF8);
  v43 = v49;
  sub_10001B104(v41, v49, &qword_1008DC498);
  v44 = v53;
  sub_10001B104(v42, v53, &qword_1008DCAF8);
  v45 = sub_100140278(&qword_1008F89A0);
  sub_10001B104(v43, v44 + *(v45 + 48), &qword_1008DC498);
  sub_10000EA04(v41, &qword_1008DC498);
  sub_10000EA04(v15, &qword_1008DCAF8);
  sub_10000EA04(v43, &qword_1008DC498);
  return sub_10000EA04(v42, &qword_1008DCAF8);
}

uint64_t sub_10067C670()
{
  sub_100140278(&qword_1008DDBB8);
  State.projectedValue.getter();
  return Toggle.init(isOn:label:)();
}

uint64_t sub_10067C700@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for LocalizationFeature();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  Image.init(_internalSystemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  v32 = "CHActivityPausedRingsObserver";
  v8 = enum case for LocalizationFeature.workout(_:);
  v9 = *(v2 + 104);
  v9(v4, enum case for LocalizationFeature.workout(_:), v1);
  v10 = static Localization.workoutUILocalizedString(_:feature:)();
  v12 = v11;
  v31 = *(v2 + 8);
  v31(v4, v1);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v13);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringKey.init(stringInterpolation:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  LOBYTE(v12) = v18;
  v9(v4, v8, v1);
  v19 = static Localization.workoutUILocalizedString(_:feature:)();
  v21 = v20;
  v31(v4, v1);
  v34 = v19;
  v35 = v21;
  sub_10000FCBC();
  v22 = Text.accessibilityLabel<A>(_:)();
  v24 = v23;
  LOBYTE(v19) = v25;
  v27 = v26;
  sub_10004642C(v15, v17, v12 & 1);

  v29 = v33;
  *v33 = v22;
  v29[1] = v24;
  *(v29 + 16) = v19 & 1;
  v29[3] = v27;
  return result;
}

uint64_t sub_10067C9F8()
{
  type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  sub_100140278(&qword_1008F88D8);
  return State.wrappedValue.setter();
}

uint64_t sub_10067CA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  v132 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v133 = v4;
  v134 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_100140278(&qword_1008F8930);
  __chkstk_darwin(v137);
  v138 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v131 = &v116 - v7;
  v8 = type metadata accessor for LocalizationFeature();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100140278(&qword_1008F8938);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v17 = &v116 - v16;
  v125 = sub_100140278(&qword_1008F8940);
  __chkstk_darwin(v125);
  v127 = &v116 - v18;
  v124 = sub_100140278(&qword_1008F8948);
  __chkstk_darwin(v124);
  v128 = &v116 - v19;
  v126 = sub_100140278(&qword_1008F8950);
  __chkstk_darwin(v126);
  v135 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v123 = &v116 - v22;
  __chkstk_darwin(v23);
  v140 = &v116 - v24;
  v25 = *(a1 + 32);
  v136 = a1;
  if (*(a1 + 40) == 1)
  {
    v26 = v25;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v25, 0);
    (*(v13 + 8))(v15, v12);
    v26 = v147;
  }

  v28 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

  WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
  sub_10032F118(v28);
  v120 = enum case for LocalizationFeature.workout(_:);
  v29 = *(v9 + 104);
  v121 = v9 + 104;
  v122 = v29;
  v29(v11);
  v30 = static Localization.workoutUILocalizedString(_:feature:)();
  v32 = v31;

  v119 = *(v9 + 8);
  v119(v11, v8);
  v147 = v30;
  v148 = v32;
  v118 = sub_10000FCBC();
  v33 = Text.init<A>(_:)();
  v117 = v8;
  v35 = v34;
  LOBYTE(v30) = v36;
  v38 = v37;
  v147 = static Color.clear.getter();
  v39 = AnyView.init<A>(_:)();
  v147 = v33;
  v148 = v35;
  v149 = v30 & 1;
  v151 = v38;
  v152 = v39;
  sub_100140278(&qword_1008F8958);
  sub_10067F5D4();
  View.hideListRowSeparator()();
  sub_10004642C(v33, v35, v30 & 1);

  LODWORD(v30) = static HierarchicalShapeStyle.secondary.getter();
  v40 = v127;
  (*(v129 + 32))(v127, v17, v130);
  *(v40 + *(v125 + 36)) = v30;
  LOBYTE(v30) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v128;
  sub_100015E80(v40, v128, &qword_1008F8940);
  v50 = v49 + *(v124 + 36);
  *v50 = v30;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  v51 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v53 = v123;
  sub_100015E80(v49, v123, &qword_1008F8948);
  v54 = (v53 + *(v126 + 36));
  *v54 = KeyPath;
  v54[1] = v51;
  sub_100015E80(v53, v140, &qword_1008F8950);
  v55 = v117;
  v122(v11, v120, v117);
  v56 = static Localization.workoutUILocalizedString(_:feature:)();
  v58 = v57;
  v119(v11, v55);
  v147 = v56;
  v148 = v58;
  v59 = Text.init<A>(_:)();
  v61 = v60;
  LOBYTE(v58) = v62;
  static Font.footnote.getter();
  v63 = Text.font(_:)();
  v65 = v64;
  v67 = v66;

  sub_10004642C(v59, v61, v58 & 1);

  LODWORD(v147) = static HierarchicalShapeStyle.secondary.getter();
  v129 = Text.foregroundStyle<A>(_:)();
  v128 = v68;
  LOBYTE(v61) = v69;
  v130 = v70;
  sub_10004642C(v63, v65, v67 & 1);

  LODWORD(v127) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  LODWORD(v126) = v61 & 1;
  LOBYTE(v147) = v61 & 1;
  LOBYTE(v143) = 0;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = Text.init(_:tableName:bundle:comment:)();
  v81 = v80;
  LOBYTE(v59) = v82;
  static Font.footnote.getter();
  v83 = Text.font(_:)();
  v85 = v84;
  LOBYTE(v63) = v86;
  v88 = v87;

  sub_10004642C(v79, v81, v59 & 1);

  LOBYTE(v79) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  LOBYTE(v49) = v63 & 1;
  LOBYTE(v147) = v63 & 1;
  LOBYTE(v143) = 0;
  v97 = swift_getKeyPath();
  v98 = v134;
  sub_10067EE38(v136, v134);
  v99 = (*(v132 + 80) + 16) & ~*(v132 + 80);
  v100 = swift_allocObject();
  sub_10067EE9C(v98, v100 + v99);
  v101 = sub_100140278(&qword_1008F8968);
  v102 = v131;
  v103 = &v131[*(v101 + 36)];
  sub_100140278(&qword_1008F8970);
  OpenURLAction.init(handler:)();
  *v103 = v97;
  *v102 = v83;
  *(v102 + 8) = v85;
  *(v102 + 16) = v49;
  *(v102 + 24) = v88;
  *(v102 + 32) = v79;
  *(v102 + 40) = v90;
  *(v102 + 48) = v92;
  *(v102 + 56) = v94;
  *(v102 + 64) = v96;
  *(v102 + 72) = 0;
  v147 = static Color.clear.getter();
  *(v102 + *(v137 + 36)) = AnyView.init<A>(_:)();
  v104 = v135;
  sub_10001B104(v140, v135, &qword_1008F8950);
  v105 = v138;
  sub_10001B104(v102, v138, &qword_1008F8930);
  v106 = v139;
  sub_10001B104(v104, v139, &qword_1008F8950);
  v107 = sub_100140278(&qword_1008F8978);
  v108 = (v106 + *(v107 + 48));
  v109 = v129;
  *&v143 = v129;
  v110 = v128;
  *(&v143 + 1) = v128;
  LOBYTE(v85) = v126;
  LOBYTE(v144) = v126;
  *(&v144 + 1) = *v142;
  DWORD1(v144) = *&v142[3];
  v111 = v130;
  *(&v144 + 1) = v130;
  LOBYTE(v83) = v127;
  LOBYTE(v145) = v127;
  *(&v145 + 1) = *v141;
  DWORD1(v145) = *&v141[3];
  *(&v145 + 1) = v72;
  *v146 = v74;
  *&v146[8] = v76;
  *&v146[16] = v78;
  v146[24] = 0;
  v112 = v143;
  v113 = v144;
  *(v108 + 57) = *&v146[9];
  v114 = *v146;
  v108[2] = v145;
  v108[3] = v114;
  *v108 = v112;
  v108[1] = v113;
  sub_10001B104(v105, v106 + *(v107 + 64), &qword_1008F8930);
  sub_10001B104(&v143, &v147, &qword_1008DC4C0);
  sub_10000EA04(v102, &qword_1008F8930);
  sub_10000EA04(v140, &qword_1008F8950);
  sub_10000EA04(v105, &qword_1008F8930);
  v147 = v109;
  v148 = v110;
  v149 = v85;
  *v150 = *v142;
  *&v150[3] = *&v142[3];
  v151 = v111;
  LOBYTE(v152) = v83;
  *(&v152 + 1) = *v141;
  HIDWORD(v152) = *&v141[3];
  v153 = v72;
  v154 = v74;
  v155 = v76;
  v156 = v78;
  v157 = 0;
  sub_10000EA04(&v147, &qword_1008DC4C0);
  return sub_10000EA04(v104, &qword_1008F8950);
}

void sub_10067D830()
{
  v0 = type metadata accessor for WithCurrentHostingControllerAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v4];

  if (v5)
  {
    v6 = sub_10067AD64(v3);
    __chkstk_darwin(v6);
    *(&v7 - 2) = v5;
    WithCurrentHostingControllerAction.callAsFunction(_:)();
    (*(v1 + 8))(v3, v0);
    static OpenURLAction.Result.handled.getter();
  }

  else
  {

    static OpenURLAction.Result.discarded.getter();
  }
}

uint64_t sub_10067D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v67 = type metadata accessor for BorderedProminentButtonStyle();
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin(v5 - 8);
  v59 = sub_100140278(&qword_1008F8840);
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v8 = &v56 - v7;
  v65 = sub_100140278(&qword_1008F8848);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v10 = &v56 - v9;
  v11 = sub_100140278(&qword_1008F8850);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v58 = &v56 - v13;
  v14 = sub_100140278(&qword_1008F8858);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v62 = &v56 - v16;
  v17 = sub_100140278(&qword_1008F8860);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v60 = &v56 - v19;
  v63 = sub_100140278(&qword_1008F8868) - 8;
  __chkstk_darwin(v63);
  v66 = &v56 - v20;
  v69 = sub_100140278(&qword_1008F8870);
  __chkstk_darwin(v69);
  v22 = &v56 - v21;
  sub_10067EE38(a1, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v24 = swift_allocObject();
  sub_10067EE9C(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_100140278(&qword_1008F8878);
  sub_10067EF60();
  Button.init(action:label:)();
  v25 = v4;
  BorderedProminentButtonStyle.init()();
  sub_10014A6B0(&qword_1008F88A8, &qword_1008F8840);
  sub_10067F130(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
  v26 = v10;
  v27 = v59;
  v28 = v67;
  View.buttonStyle<A>(_:)();
  (*(v68 + 8))(v25, v28);
  (*(v61 + 8))(v8, v27);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v58;
  (*(v64 + 32))(v58, v26, v65);
  v30 = (v29 + *(v12 + 44));
  v31 = v76;
  v30[4] = v75;
  v30[5] = v31;
  v30[6] = v77;
  v32 = v72;
  *v30 = v71;
  v30[1] = v32;
  v33 = v74;
  v30[2] = v73;
  v30[3] = v33;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = v62;
  sub_100015E80(v29, v62, &qword_1008F8850);
  v35 = (v34 + *(v15 + 44));
  v36 = v79;
  *v35 = v78;
  v35[1] = v36;
  v35[2] = v80;
  v37 = v60;
  v38 = &v60[*(v18 + 44)];
  v39 = *(type metadata accessor for RoundedRectangle() + 20);
  v40 = enum case for RoundedCornerStyle.continuous(_:);
  v41 = type metadata accessor for RoundedCornerStyle();
  v42 = *(*(v41 - 8) + 104);
  v42(&v38->i8[v39], v40, v41);
  *v38 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(v38->i16 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
  sub_100015E80(v34, v37, &qword_1008F8858);
  v43 = v66;
  v44 = &v66[*(v63 + 44)];
  v45 = sub_100140278(&qword_1008F27B0);
  static ContentShapeKinds.accessibility.getter();
  v42(v44, v40, v41);
  v44[*(v45 + 36)] = 0;
  sub_100015E80(v37, v43, &qword_1008F8860);
  LOBYTE(v44) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_100015E80(v43, v22, &qword_1008F8868);
  v54 = &v22[*(v69 + 36)];
  *v54 = v44;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  static Edge.Set.all.getter();
  sub_10067F178();
  View.scenePadding(_:)();
  return sub_10000EA04(v22, &qword_1008F8870);
}

void sub_10067E268(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v6;
    if (v8 == 1)
    {
      sub_1000A72F0(v7, 1);
    }

    else
    {
      sub_1000A72F0(v7, 0);
      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v7, 0);
      (*(v3 + 8))(v5, v2);
      v7 = v22;
    }

    v11 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    v12 = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
    sub_10032F118(v11);
    v13 = *(a1 + 8);
    LOBYTE(v22) = *a1;
    v23 = v13;
    sub_100140278(&qword_1008DDBB8);
    State.wrappedValue.getter();
    v14 = v20;
    v15 = a1 + *(type metadata accessor for WorkoutVoiceOnboardingViewiOS() + 32);
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v22 = v16;
    LOBYTE(v23) = v17;
    v24 = v18;
    sub_100140278(&qword_1008F88D8);
    State.wrappedValue.getter();
    sub_10032DE40(1, v12 & 1, v14, v20, v21);
  }

  else
  {
    type metadata accessor for WorkoutOnboardingCoordinatoriOS();
    sub_10067F130(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10067E4F0@<X0>(uint64_t a1@<X8>)
{
  v46 = type metadata accessor for Font.Leading();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizationFeature();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for LocalizationFeature.workout(_:), v5, v7);
  v10 = static Localization.workoutUILocalizedString(_:feature:)();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v54 = v10;
  v55 = v12;
  sub_10000FCBC();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v54 = static Color.black.getter();
  v45 = Text.foregroundStyle<A>(_:)();
  v44 = v18;
  LOBYTE(v9) = v19;
  v21 = v20;
  sub_10004642C(v13, v15, v17 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v13) = v9 & 1;
  v56 = v9 & 1;
  static Font.body.getter();
  v22 = v46;
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v46);
  Font.leading(_:)();

  (*(v2 + 8))(v4, v22);
  static Font.Weight.semibold.getter();
  v23 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  LOBYTE(v5) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v57 = 0;
  LOBYTE(v9) = static Edge.Set.horizontal.getter();
  result = EdgeInsets.init(_all:)();
  v34 = v44;
  *a1 = v45;
  *(a1 + 8) = v34;
  *(a1 + 16) = v13;
  *(a1 + 24) = v21;
  v35 = v52;
  *(a1 + 96) = v51;
  *(a1 + 112) = v35;
  *(a1 + 128) = v53;
  v37 = v48;
  v36 = v49;
  *(a1 + 32) = v47;
  *(a1 + 48) = v37;
  v38 = v50;
  *(a1 + 64) = v36;
  *(a1 + 80) = v38;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v23;
  *(a1 + 160) = v5;
  *(a1 + 168) = v26;
  *(a1 + 176) = v28;
  *(a1 + 184) = v30;
  *(a1 + 192) = v32;
  *(a1 + 200) = 0;
  *(a1 + 208) = v9;
  *(a1 + 216) = v39;
  *(a1 + 224) = v40;
  *(a1 + 232) = v41;
  *(a1 + 240) = v42;
  *(a1 + 248) = 0;
  return result;
}

uint64_t sub_10067E8D8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F88E0);
  __chkstk_darwin(v2 - 8);
  sub_10001B104(a1, &v5 - v3, &qword_1008F88E0);
  return EnvironmentValues.listSectionSpacing.setter();
}

uint64_t type metadata accessor for WorkoutVoiceOnboardingViewiOS()
{
  result = qword_1008F87B8;
  if (!qword_1008F87B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10067EA10()
{
  sub_10006DC4C();
  if (v0 <= 0x3F)
  {
    sub_1004110E0();
    if (v1 <= 0x3F)
    {
      sub_10067EB2C(319, &qword_1008ECD68, &type metadata accessor for WorkoutVoiceAvailabilityProvider);
      if (v2 <= 0x3F)
      {
        sub_10067EB2C(319, &qword_1008F87C8, &type metadata accessor for WithCurrentHostingControllerAction);
        if (v3 <= 0x3F)
        {
          sub_10067EB80();
          if (v4 <= 0x3F)
          {
            type metadata accessor for InferenceClient();
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

void sub_10067EB2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10067EB80()
{
  if (!qword_1008F87D0)
  {
    sub_100141EEC(&qword_1008DECE8);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F87D0);
    }
  }
}

unint64_t sub_10067EBE4()
{
  result = qword_1008F8810;
  if (!qword_1008F8810)
  {
    sub_100141EEC(&qword_1008F8748);
    sub_10067EC9C();
    sub_10014A6B0(&qword_1008F8838, &qword_1008F8750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8810);
  }

  return result;
}

unint64_t sub_10067EC9C()
{
  result = qword_1008F8818;
  if (!qword_1008F8818)
  {
    sub_100141EEC(&qword_1008F8740);
    sub_10067ED54();
    sub_10014A6B0(&qword_1008F3530, &qword_1008F3538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8818);
  }

  return result;
}

unint64_t sub_10067ED54()
{
  result = qword_1008F8820;
  if (!qword_1008F8820)
  {
    sub_100141EEC(&qword_1008F8738);
    sub_10014A6B0(&qword_1008F8828, &qword_1008F8830);
    sub_10014A6B0(&qword_1008F3520, &qword_1008F3528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8820);
  }

  return result;
}

uint64_t sub_10067EE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067EE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10067EF00()
{
  v1 = *(type metadata accessor for WorkoutVoiceOnboardingViewiOS() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10067E268(v2);
}

unint64_t sub_10067EF60()
{
  result = qword_1008F8880;
  if (!qword_1008F8880)
  {
    sub_100141EEC(&qword_1008F8878);
    sub_10067EFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8880);
  }

  return result;
}

unint64_t sub_10067EFEC()
{
  result = qword_1008F8888;
  if (!qword_1008F8888)
  {
    sub_100141EEC(&qword_1008F8890);
    sub_10067F078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8888);
  }

  return result;
}

unint64_t sub_10067F078()
{
  result = qword_1008F8898;
  if (!qword_1008F8898)
  {
    sub_100141EEC(&qword_1008F88A0);
    sub_100065FB4();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8898);
  }

  return result;
}

uint64_t sub_10067F130(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10067F178()
{
  result = qword_1008F88B0;
  if (!qword_1008F88B0)
  {
    sub_100141EEC(&qword_1008F8870);
    sub_10067F204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F88B0);
  }

  return result;
}

unint64_t sub_10067F204()
{
  result = qword_1008F88B8;
  if (!qword_1008F88B8)
  {
    sub_100141EEC(&qword_1008F8868);
    sub_10067F2BC();
    sub_10014A6B0(&qword_1008F27A8, &qword_1008F27B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F88B8);
  }

  return result;
}

unint64_t sub_10067F2BC()
{
  result = qword_1008F88C0;
  if (!qword_1008F88C0)
  {
    sub_100141EEC(&qword_1008F8860);
    sub_10067F374();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F88C0);
  }

  return result;
}

unint64_t sub_10067F374()
{
  result = qword_1008F88C8;
  if (!qword_1008F88C8)
  {
    sub_100141EEC(&qword_1008F8858);
    sub_10067F400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F88C8);
  }

  return result;
}

unint64_t sub_10067F400()
{
  result = qword_1008F88D0;
  if (!qword_1008F88D0)
  {
    sub_100141EEC(&qword_1008F8850);
    sub_100141EEC(&qword_1008F8840);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10014A6B0(&qword_1008F88A8, &qword_1008F8840);
    sub_10067F130(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F88D0);
  }

  return result;
}

uint64_t sub_10067F54C()
{
  type metadata accessor for WorkoutVoiceOnboardingViewiOS();

  return sub_10067C9F8();
}

unint64_t sub_10067F5D4()
{
  result = qword_1008F8960;
  if (!qword_1008F8960)
  {
    sub_100141EEC(&qword_1008F8958);
    sub_10014A6B0(&qword_1008E3198, &qword_1008E3180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8960);
  }

  return result;
}

void sub_10067F68C()
{
  type metadata accessor for WorkoutVoiceOnboardingViewiOS();

  sub_10067D830();
}

id sub_10067F70C(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController:a1];

  return [v2 present];
}

uint64_t type metadata accessor for TrainingLoadChartLollipopView()
{
  result = qword_1008F8A00;
  if (!qword_1008F8A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10067F7D0()
{
  type metadata accessor for TrainingLoadViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DayIndex();
    if (v1 <= 0x3F)
    {
      sub_10067F964(319, &qword_1008ECE58, &qword_1008ED7C0, HKWorkout_ptr, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10067F964(319, &qword_1008E3090, &qword_1008E3098, HKActivitySummary_ptr, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000059F8(319, &qword_1008F24B0);
          if (v4 <= 0x3F)
          {
            sub_1001E4C0C();
            if (v5 <= 0x3F)
            {
              sub_1001EA3F8();
              if (v6 <= 0x3F)
              {
                sub_1000059F8(319, &qword_1008F73C0);
                if (v7 <= 0x3F)
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

void sub_10067F964(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000059F8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10067F9E8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  v6 = String._bridgeToObjectiveC()();
  [v4 setLocalizedDateFormatFromTemplate:v6];

  qword_1009261B8 = v4;
}

uint64_t sub_10067FB24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  ChartLollipopView = type metadata accessor for TrainingLoadChartLollipopView();
  v79 = *(ChartLollipopView - 8);
  __chkstk_darwin(ChartLollipopView);
  v80 = v3;
  v81 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008F2808);
  __chkstk_darwin(v4 - 8);
  v78 = &v72 - v5;
  v6 = sub_100140278(&qword_1008F8A58);
  __chkstk_darwin(v6 - 8);
  v8 = &v72 - v7;
  v9 = sub_100140278(&qword_1008F8A60);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v72 - v11;
  v72 = sub_100140278(&qword_1008F8A68);
  __chkstk_darwin(v72);
  v14 = &v72 - v13;
  v74 = sub_100140278(&qword_1008F8A70);
  __chkstk_darwin(v74);
  v16 = &v72 - v15;
  v73 = sub_100140278(&qword_1008F8A78);
  __chkstk_darwin(v73);
  v18 = &v72 - v17;
  v75 = sub_100140278(&qword_1008F8A80);
  __chkstk_darwin(v75);
  v20 = &v72 - v19;
  v76 = sub_100140278(&qword_1008F8A88);
  __chkstk_darwin(v76);
  v22 = &v72 - v21;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = &v8[*(sub_100140278(&qword_1008F8A90) + 44)];
  v82 = v2;
  sub_100680368(v2, v23);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v8, v12, &qword_1008F8A58);
  v24 = &v12[*(v10 + 44)];
  v25 = v89;
  *(v24 + 4) = v88;
  *(v24 + 5) = v25;
  *(v24 + 6) = v90;
  v26 = v85;
  *v24 = v84;
  *(v24 + 1) = v26;
  v27 = v87;
  *(v24 + 2) = v86;
  *(v24 + 3) = v27;
  sub_100140278(&qword_1008E0700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  v29 = static Edge.Set.top.getter();
  *(inited + 32) = v29;
  v30 = static Edge.Set.horizontal.getter();
  *(inited + 33) = v30;
  v31 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_100015E80(v12, v14, &qword_1008F8A60);
  v40 = &v14[*(v72 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_100015E80(v14, v16, &qword_1008F8A68);
  v50 = &v16[*(v74 + 36)];
  *v50 = v41;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = static Color.black.getter();
  sub_100015E80(v16, v18, &qword_1008F8A70);
  *&v18[*(v73 + 36)] = v51;
  v52 = v82;
  v53 = v78;
  TrainingLoadViewModel.band(onDay:)();
  Band = type metadata accessor for TrainingLoadBand();
  v55 = *(Band - 8);
  if ((*(v55 + 48))(v53, 1, Band) == 1)
  {
    sub_10000EA04(v53, &qword_1008F2808);
    v56 = static Color.gray.getter();
  }

  else
  {
    v56 = TrainingLoadBand.color.getter();
    (*(v55 + 8))(v53, Band);
  }

  v57 = static Edge.Set.all.getter();
  sub_100015E80(v18, v20, &qword_1008F8A78);
  v58 = &v20[*(v75 + 36)];
  *v58 = v56;
  v58[8] = v57;
  v59 = &v22[*(v76 + 36)];
  v60 = *(type metadata accessor for RoundedRectangle() + 20);
  v61 = enum case for RoundedCornerStyle.continuous(_:);
  v62 = type metadata accessor for RoundedCornerStyle();
  (*(*(v62 - 8) + 104))(&v59[v60], v61, v62);
  __asm { FMOV            V0.2D, #8.0 }

  *v59 = _Q0;
  *&v59[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
  sub_100015E80(v20, v22, &qword_1008F8A80);
  v68 = v81;
  sub_100681CC8(v52, v81);
  v69 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v70 = swift_allocObject();
  sub_100681D2C(v68, v70 + v69);
  sub_100681DF0();
  View.onTapGesture(count:perform:)();

  return sub_1000A6220(v22);
}

uint64_t sub_100680368@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - v4;
  v46 = sub_100140278(&qword_1008F8AD0);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v43 - v6;
  v51 = sub_100140278(&qword_1008F8AD8);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v43 - v10;
  v11 = sub_100140278(&qword_1008F8AE0);
  __chkstk_darwin(v11);
  v13 = (&v43 - v12);
  v47 = sub_100140278(&qword_1008F8AE8);
  v45 = *(v47 - 8);
  v14 = v45;
  __chkstk_darwin(v47);
  v53 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  sub_1006809C4(a1, v13);
  v19 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v21 = (v13 + *(v11 + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  static Font.Weight.medium.getter();
  sub_1006821B0();
  v44 = v18;
  View.fontWeight(_:)();
  sub_10000EA04(v13, &qword_1008F8AE0);
  sub_1006818D4(v60);
  v22 = static Font.body.getter();
  v23 = swift_getKeyPath();
  v55 = v60[0];
  v56 = v60[1];
  v57 = v60[2];
  *&v58 = v61;
  *(&v58 + 1) = v23;
  v59 = v22;
  static Font.Weight.medium.getter();
  v24 = sub_100140278(&qword_1008F8B18);
  v25 = sub_100682318();
  View.fontWeight(_:)();
  v62[2] = v57;
  v62[3] = v58;
  v63 = v59;
  v62[0] = v55;
  v62[1] = v56;
  sub_10000EA04(v62, &qword_1008F8B18);
  v26 = enum case for Font.Design.rounded(_:);
  v27 = type metadata accessor for Font.Design();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v5, v26, v27);
  (*(v28 + 56))(v5, 0, 1, v27);
  *&v55 = v24;
  *(&v55 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v54;
  v30 = v46;
  View.fontDesign(_:)();
  sub_10000EA04(v5, &qword_1008DC448);
  (*(v50 + 8))(v7, v30);
  v31 = *(v14 + 16);
  v32 = v53;
  v33 = v47;
  v31(v53, v18, v47);
  v34 = v49;
  v35 = *(v49 + 16);
  v36 = v48;
  v37 = v51;
  v35(v48, v29, v51);
  v38 = v52;
  v31(v52, v32, v33);
  v39 = sub_100140278(&qword_1008F8B68);
  v35(&v38[*(v39 + 48)], v36, v37);
  v40 = *(v34 + 8);
  v40(v54, v37);
  v41 = *(v45 + 8);
  v41(v44, v33);
  v40(v36, v37);
  return (v41)(v53, v33);
}

uint64_t sub_1006809C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v121 = a2;
  v122 = a1;
  v120 = sub_100140278(&qword_1008F8B70);
  v108 = *(v120 - 8);
  __chkstk_darwin(v120);
  v107 = &v106 - v2;
  v116 = sub_100140278(&qword_1008F8B78);
  __chkstk_darwin(v116);
  v117 = (&v106 - v3);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v109 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v113 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v112 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F8B80);
  __chkstk_darwin(v7 - 8);
  v119 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v106 - v10;
  v11 = type metadata accessor for Calendar.Identifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Calendar();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChartLollipopView = type metadata accessor for TrainingLoadChartLollipopView();
  (*(v12 + 104))(v14, enum case for Calendar.Identifier.gregorian(_:), v11);
  Calendar.init(identifier:)();
  (*(v12 + 8))(v14, v11);
  DayIndex.startDate(in:)();
  (*(v16 + 8))(v18, v15);
  if (qword_1008DAFB8 != -1)
  {
    swift_once();
  }

  v23 = qword_1009261B8;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v25 = [v23 stringFromDate:isa];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  (*(v20 + 8))(v22, v19);
  *&v126 = v26;
  *(&v126 + 1) = v28;
  sub_10000FCBC();
  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  static Font.Weight.bold.getter();
  v34 = Text.fontWeight(_:)();
  v36 = v35;
  v115 = v37;
  v39 = v38;
  sub_10004642C(v29, v31, v33 & 1);

  v40 = v112;
  v41 = v122;
  TrainingLoadViewModel.dataType.getter();
  v42 = v113;
  v43 = DataType;
  LODWORD(v29) = (*(v113 + 88))(v40, DataType);
  LODWORD(v31) = enum case for TrainingLoadDataType.allDay(_:);
  (*(v42 + 8))(v40, v43);
  if (v29 == v31)
  {
    DataType = v34;
    v44 = ChartLollipopView;
    v45 = *(v41 + *(ChartLollipopView + 32));
    v106 = v39;
    v110 = v36;
    if (v45)
    {
      v46 = v45;
      v47 = [v46 activeEnergyBurned];
      v48 = [v46 activeEnergyBurnedGoal];
      v49 = *(v41 + *(v44 + 36));
      v50 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      v51 = sub_10021E444(v47, v48, v49, v50);

      if (v51)
      {
        AttributedString.init(_:)();
      }

      else
      {
        AttributedString.init()();
      }

      v61 = Text.init(_:)();
      v63 = v62;
      v65 = v64;
      v66 = Text.bold()();
      v68 = v67;
      v70 = v69;
      v72 = v71;
      sub_10004642C(v61, v63, v65 & 1);

      *&v123 = v66;
      *(&v123 + 1) = v68;
      *&v124 = v70 & 1;
      *(&v124 + 1) = v72;
      LOBYTE(v125) = 0;
      sub_10006965C(v66, v68, v70 & 1);

      _ConditionalContent<>.init(storage:)();

      sub_10004642C(v66, v68, v70 & 1);
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
      *&v123 = Text.init(_:tableName:bundle:comment:)();
      *(&v123 + 1) = v59;
      *&v124 = v58 & 1;
      *(&v124 + 1) = v60;
      LOBYTE(v125) = 1;
      _ConditionalContent<>.init(storage:)();
    }

    v123 = v126;
    v124 = v127;
    v125 = v128;
    v73 = v126;
    v122 = *(&v126 + 1);
    v74 = v127;
    v112 = *(&v127 + 1);
    v113 = v127;
    LODWORD(ChartLollipopView) = v128;
    sub_10017A7AC(v126, *(&v126 + 1), v127);
    sub_10017A7AC(v73, *(&v73 + 1), v74);
    sub_100140278(&qword_1008E36D0);
    sub_100335B80();
    _ConditionalContent<>.init(storage:)();
    v75 = v126;
    v77 = *(&v127 + 1);
    v76 = v127;
    v78 = v129;
    v79 = v128;
    v80 = v117;
    *v117 = v126;
    v108 = v75;
    v80[1] = __PAIR128__(v77, v76);
    *(v80 + 32) = v79;
    *(v80 + 33) = v78;
    LODWORD(v109) = v78;
    swift_storeEnumTagMultiPayload();
    sub_10068279C(v75, *(&v75 + 1), v76, v77, v79, v78);
    sub_100140278(&qword_1008F8B88);
    sub_100682624();
    sub_1006826B0();
    v53 = v118;
    _ConditionalContent<>.init(storage:)();
    v81 = v122;
    v82 = v113;
    sub_10017A8F0(v73, v122, v113);
    sub_1006827F0(v108, *(&v75 + 1), v76, v77, v79, v109);
    sub_10017A8F0(v73, v81, v82);
    v39 = v106;
    goto LABEL_21;
  }

  v52 = *(v41 + *(ChartLollipopView + 28));
  v53 = v118;
  if (v52 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() && _CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_10;
    }

LABEL_17:
    DataType = v34;
    v83 = [objc_opt_self() mainBundle];
    v84 = String._bridgeToObjectiveC()();
    v85 = [v83 localizedStringForKey:v84 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1006D46C0;
    v110 = v36;
    if (v52 >> 62)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v86 + 56) = &type metadata for Int;
    *(v86 + 64) = &protocol witness table for Int;
    *(v86 + 32) = v87;
    v88 = String.init(format:_:)();
    v90 = v89;

    *&v126 = v88;
    *(&v126 + 1) = v90;
    v91 = Text.init<A>(_:)();
    v93 = v92;
    v95 = v94 & 1;
    *&v123 = v91;
    *(&v123 + 1) = v92;
    *&v124 = v94 & 1;
    *(&v124 + 1) = v96;
    v125 = 256;
    sub_10006965C(v91, v92, v94 & 1);

    sub_100140278(&qword_1008E36D0);
    sub_100335B80();
    _ConditionalContent<>.init(storage:)();
    v97 = v128;
    v98 = v129;
    v99 = v127;
    v100 = v117;
    *v117 = v126;
    v100[1] = v99;
    *(v100 + 32) = v97;
    *(v100 + 33) = v98;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008F8B88);
    sub_100682624();
    sub_1006826B0();
    _ConditionalContent<>.init(storage:)();
    sub_10004642C(v91, v93, v95);

LABEL_21:
    v34 = DataType;
    v36 = v110;
    goto LABEL_22;
  }

  v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v54 || v54 >= 2)
  {
    goto LABEL_17;
  }

LABEL_10:
  *&v126 = v52;
  swift_getKeyPath();

  sub_100140278(&unk_1008E4010);
  sub_10014A6B0(&qword_1008ED2E0, &unk_1008E4010);
  sub_1001447C0();
  v55 = v107;
  ForEach<>.init(_:id:content:)();
  v56 = v108;
  v57 = v120;
  (*(v108 + 16))(v117, v55, v120);
  swift_storeEnumTagMultiPayload();
  sub_100140278(&qword_1008F8B88);
  sub_100682624();
  sub_1006826B0();
  _ConditionalContent<>.init(storage:)();
  (*(v56 + 8))(v55, v57);
LABEL_22:
  v101 = v119;
  sub_10068272C(v53, v119);
  v102 = v121;
  *v121 = v34;
  v102[1] = v36;
  v103 = v115 & 1;
  *(v102 + 16) = v115 & 1;
  v102[3] = v39;
  v104 = sub_100140278(&qword_1008F8BA0);
  sub_10068272C(v101, v102 + *(v104 + 48));
  sub_10006965C(v34, v36, v103);

  sub_10000EA04(v53, &qword_1008F8B80);
  sub_10000EA04(v101, &qword_1008F8B80);
  sub_10004642C(v34, v36, v103);
}

id sub_100681848@<X0>(uint64_t a1@<X8>)
{
  result = FILocalizedActivityNameWithWorkout();
  if (result)
  {
    v3 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000FCBC();
    result = Text.init<A>(_:)();
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1006818D4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008F2808);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  type metadata accessor for TrainingLoadChartLollipopView();
  if (TrainingLoadViewModel.hasValue(onDay:)())
  {
    TrainingLoadViewModel.band(onDay:)();
    Band = type metadata accessor for TrainingLoadBand();
    v6 = (*(*(Band - 8) + 48))(v4, 1, Band);
    sub_10000EA04(v4, &qword_1008F2808);
    if (v6 == 1)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v7 = Text.init(_:tableName:bundle:comment:)();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      KeyPath = swift_getKeyPath();
      *&v30 = v7;
      *(&v30 + 1) = v9;
      *&v31 = v11 & 1;
      *(&v31 + 1) = v13;
      *&v32 = KeyPath;
      *(&v32 + 1) = 0x3FE0000000000000;
      LOBYTE(v33) = 1;
    }

    else
    {
      *&v36 = TrainingLoadViewModel.loadPercentage(onDay:)();
      *(&v36 + 1) = v23;
      sub_10000FCBC();
      *&v30 = Text.init<A>(_:)();
      *(&v30 + 1) = v24;
      *&v31 = v25 & 1;
      *(&v31 + 1) = v26;
      v32 = 0uLL;
      LOBYTE(v33) = 0;
    }

    sub_100140278(&qword_1008F8B60);
    sub_10068256C();
    _ConditionalContent<>.init(storage:)();
    v35 = v39;
    v34 = 0;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v15 = Text.init(_:tableName:bundle:comment:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = swift_getKeyPath();
    v35 = v19 & 1;
    v34 = 1;
    *&v30 = v15;
    *(&v30 + 1) = v17;
    LOBYTE(v31) = v19 & 1;
    *(&v31 + 1) = v21;
    *&v32 = v22;
    *(&v32 + 1) = 0x3FE0000000000000;
    HIBYTE(v33) = 1;
  }

  sub_100140278(&qword_1008F8B50);
  sub_100140278(&qword_1008F8B60);
  sub_1006824E0();
  sub_10068256C();
  _ConditionalContent<>.init(storage:)();
  v27 = v37;
  *a1 = v36;
  *(a1 + 16) = v27;
  result = *&v38;
  *(a1 + 32) = v38;
  *(a1 + 48) = v39;
  return result;
}

uint64_t sub_100681C00()
{
  type metadata accessor for TrainingLoadChartLollipopView();

  sub_100140278(&qword_1008DDE80);
  Binding.wrappedValue.getter();
  Binding.wrappedValue.setter();
}

uint64_t sub_100681CC8(uint64_t a1, uint64_t a2)
{
  ChartLollipopView = type metadata accessor for TrainingLoadChartLollipopView();
  (*(*(ChartLollipopView - 8) + 16))(a2, a1, ChartLollipopView);
  return a2;
}

uint64_t sub_100681D2C(uint64_t a1, uint64_t a2)
{
  ChartLollipopView = type metadata accessor for TrainingLoadChartLollipopView();
  (*(*(ChartLollipopView - 8) + 32))(a2, a1, ChartLollipopView);
  return a2;
}

uint64_t sub_100681D90()
{
  type metadata accessor for TrainingLoadChartLollipopView();

  return sub_100681C00();
}

unint64_t sub_100681DF0()
{
  result = qword_1008F8A98;
  if (!qword_1008F8A98)
  {
    sub_100141EEC(&qword_1008F8A88);
    sub_100681EA8();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8A98);
  }

  return result;
}

unint64_t sub_100681EA8()
{
  result = qword_1008F8AA0;
  if (!qword_1008F8AA0)
  {
    sub_100141EEC(&qword_1008F8A80);
    sub_100681F60();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8AA0);
  }

  return result;
}

unint64_t sub_100681F60()
{
  result = qword_1008F8AA8;
  if (!qword_1008F8AA8)
  {
    sub_100141EEC(&qword_1008F8A78);
    sub_100682074(&qword_1008F8AB0, &qword_1008F8A70, &unk_100703B20, sub_100682044);
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8AA8);
  }

  return result;
}

uint64_t sub_100682074(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006820F8()
{
  result = qword_1008F8AC0;
  if (!qword_1008F8AC0)
  {
    sub_100141EEC(&qword_1008F8A60);
    sub_10014A6B0(&qword_1008F8AC8, &qword_1008F8A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8AC0);
  }

  return result;
}

unint64_t sub_1006821B0()
{
  result = qword_1008F8AF0;
  if (!qword_1008F8AF0)
  {
    sub_100141EEC(&qword_1008F8AE0);
    sub_100682268();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8AF0);
  }

  return result;
}

unint64_t sub_100682268()
{
  result = qword_1008F8AF8;
  if (!qword_1008F8AF8)
  {
    sub_100141EEC(&qword_1008F8B00);
    sub_10014A6B0(&qword_1008F8B08, &qword_1008F8B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8AF8);
  }

  return result;
}

unint64_t sub_100682318()
{
  result = qword_1008F8B20;
  if (!qword_1008F8B20)
  {
    sub_100141EEC(&qword_1008F8B18);
    sub_1006823D0();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8B20);
  }

  return result;
}

unint64_t sub_1006823D0()
{
  result = qword_1008F8B28;
  if (!qword_1008F8B28)
  {
    sub_100141EEC(&qword_1008F8B30);
    sub_100682454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8B28);
  }

  return result;
}

unint64_t sub_100682454()
{
  result = qword_1008F8B38;
  if (!qword_1008F8B38)
  {
    sub_100141EEC(&qword_1008F8B40);
    sub_1006824E0();
    sub_10068256C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8B38);
  }

  return result;
}

unint64_t sub_1006824E0()
{
  result = qword_1008F8B48;
  if (!qword_1008F8B48)
  {
    sub_100141EEC(&qword_1008F8B50);
    sub_10068256C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8B48);
  }

  return result;
}

unint64_t sub_10068256C()
{
  result = qword_1008F8B58;
  if (!qword_1008F8B58)
  {
    sub_100141EEC(&qword_1008F8B60);
    sub_10014A6B0(&qword_1008E39E0, &qword_1008E39E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8B58);
  }

  return result;
}

unint64_t sub_100682624()
{
  result = qword_1008F8B90;
  if (!qword_1008F8B90)
  {
    sub_100141EEC(&qword_1008F8B88);
    sub_100335B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8B90);
  }

  return result;
}

unint64_t sub_1006826B0()
{
  result = qword_1008F8B98;
  if (!qword_1008F8B98)
  {
    sub_100141EEC(&qword_1008F8B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8B98);
  }

  return result;
}

uint64_t sub_10068272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F8B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10068279C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_10006965C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_10017A7AC(a1, a2, a3);
  }
}

uint64_t sub_1006827F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_10004642C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_10017A8F0(a1, a2, a3);
  }
}

uint64_t sub_100682848()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[PhoneSceneDelegate] dismissLiveActivities", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for MirrorLiveActivity();
  return static MirrorLiveActivity.discard()();
}

Swift::Int sub_10068298C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v6 = *(v1 + 17);
  Hasher.init(_seed:)();
  v7._countAndFlagsBits = v2;
  v7._object = v3;
  sub_100035B30(v7, v4);
  String.hash(into:)();

  if (!v4 || v4 == 2)
  {
    Hasher._combine(_:)(v2);
  }

  else if (v4 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(v6);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100682A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x706D655464726163 && a2 == 0xEC0000006574616CLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746143657A6973 && a2 == 0xEC00000079726F67)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100682B54(uint64_t a1)
{
  v2 = sub_100057B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100682B90(uint64_t a1)
{
  v2 = sub_100057B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100682BCC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006830C0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100682C18()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  sub_100035B30(*v0, *(v0 + 16));
  String.hash(into:)();

  if (!v2 || v2 == 2)
  {
    Hasher._combine(_:)(v1);
  }

  else if (v2 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(v3);

  return String.hash(into:)();
}

Swift::Int sub_100682CEC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  sub_100035B30(v6, v3);
  String.hash(into:)();

  if (!v3 || v3 == 2)
  {
    Hasher._combine(_:)(v2);
  }

  else if (v3 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100682DC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 17);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = sub_100054C8C(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
  result = 0;
  if ((v8 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
    if (v3 == v6 && v4 == v7)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_100682EB8()
{
  result = qword_1008F8C78;
  if (!qword_1008F8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8C78);
  }

  return result;
}

unint64_t sub_100682F0C()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dataForKey:v1];

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_100140278(&qword_1008F8C98);
    sub_100043564(&qword_1008F8CB0, sub_1006832E8);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000AF88(v3, v5);

    return v8;
  }

  else
  {
    v6 = sub_1004CC354(_swiftEmptyArrayStorage);

    return v6;
  }
}

uint64_t sub_1006830C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100140278(&qword_1008F8C80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1000066AC(a1, a1[3]);
  sub_100057B48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005A40(a1);
  }

  v23 = 0;
  sub_10015922C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v18;
  v17 = v19;
  v22 = v20;
  v16 = v21;
  LOBYTE(v18) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = sub_100005A40(a1);
  v14 = v17;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v22;
  *(a2 + 17) = v16;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  return result;
}

unint64_t sub_1006832E8()
{
  result = qword_1008F8CB8;
  if (!qword_1008F8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8CB8);
  }

  return result;
}

unint64_t sub_100683340()
{
  result = qword_1008F8CC0;
  if (!qword_1008F8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8CC0);
  }

  return result;
}

unint64_t sub_100683398()
{
  result = qword_1008F8CC8;
  if (!qword_1008F8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8CC8);
  }

  return result;
}

unint64_t sub_1006833F0()
{
  result = qword_1008F8CD0;
  if (!qword_1008F8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8CD0);
  }

  return result;
}

id sub_1006834A0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, "initWithOverlay:", a1);
  swift_unknownObjectRelease();
  return v6;
}

id sub_100683540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutOverlayPathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100683600@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[10];
  v6 = v4[11];
  swift_getTupleTypeMetadata2();
  v7 = static Array._allocateUninitialized(_:)();
  v8 = sub_100683C70(v7, v5, v6, v4[12]);

  v22 = v8;
  v9 = v2[3];
  v10 = swift_allocObject();
  *(v10 + 16) = &v22;
  *(v10 + 24) = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10028E3C0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10007BD60;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003579C0;
  aBlock[3] = &unk_100867748;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v9, v12);
  _Block_release(v12);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v18 = -1 << *(v22 + 32);
      v15 = ~v18;
      v14 = v22 + 64;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v16 = v20 & *(v22 + 64);
      v17 = v22;
    }

    *a1 = v17;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = 0;
    a1[4] = v16;
  }

  return result;
}

uint64_t sub_10068386C()
{

  return v0;
}

uint64_t sub_100683894()
{

  return swift_deallocClassInstance();
}

double sub_100683908@<D0>(uint64_t a1@<X8>)
{
  sub_100683600(v4);

  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100683958()
{
  type metadata accessor for ThreadSafeDictionary();
  v0 = j___ss30_copySequenceToContiguousArrayys0dE0Vy7ElementQzGxSTRzlF();

  return v0;
}

uint64_t sub_1006839A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ThreadSafeDictionary();

  return Sequence._copyContents(initializing:)(a1, a2, a3, v9, a5);
}

unint64_t sub_100683A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100683AE8(a1, v6, a2, a3);
}

unint64_t sub_100683AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_100683C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_100683A8C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

double sub_100683FA4()
{
  if (qword_1008DA8F8 != -1)
  {
    swift_once();
  }

  result = *&qword_1008E7A70 + 10.0;
  *&qword_1008F8E70 = *&qword_1008E7A70 + 10.0;
  return result;
}

uint64_t sub_100684004()
{
  ScrollTarget.rect.getter();
  v1 = v0;
  if (qword_1008DA8F8 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1008E7A70;
  ScrollTarget.rect.getter();
  if (qword_1008DAFC0 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v4 = *&qword_1008F8E70 * round((v3 + (v1 - v2) * 0.5) / *&qword_1008F8E70) - (v1 - v2) * 0.5;
  v5 = ScrollTarget.rect.modify();
  *v6 = v4;
  return v5(&v9, 0);
}

uint64_t sub_10068411C(uint64_t result, int a2, int a3)
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
    *(result + 1800) = 0u;
    *(result + 1816) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
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
      *(result + 1832) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 1832) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100684350()
{
  sub_100140278(&qword_1008F8E78);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006E44D0;
  v2 = v0[8];
  v169[9] = v0[9];
  v3 = v0[9];
  v169[10] = v0[10];
  v4 = v0[10];
  v169[11] = v0[11];
  v5 = v0[4];
  v169[5] = v0[5];
  v6 = v0[5];
  v169[6] = v0[6];
  v7 = v0[6];
  v169[7] = v0[7];
  v8 = v0[7];
  v169[8] = v0[8];
  v9 = *v0;
  v169[1] = v0[1];
  v10 = v0[1];
  v169[2] = v0[2];
  v11 = v0[2];
  v169[3] = v0[3];
  v12 = v0[3];
  v169[4] = v0[4];
  v169[0] = *v0;
  *(v1 + 184) = v3;
  *(v1 + 200) = v4;
  *(v1 + 216) = v0[11];
  *(v1 + 120) = v6;
  *(v1 + 136) = v7;
  *(v1 + 152) = v8;
  *(v1 + 168) = v2;
  *(v1 + 56) = v10;
  *(v1 + 72) = v11;
  *(v1 + 88) = v12;
  *(v1 + 104) = v5;
  *(v1 + 40) = v9;
  v13 = *(v0 + 328);
  v167[9] = *(v0 + 344);
  v14 = *(v0 + 344);
  v167[10] = *(v0 + 360);
  v15 = *(v0 + 360);
  v167[11] = *(v0 + 376);
  v16 = *(v0 + 264);
  v167[5] = *(v0 + 280);
  v17 = *(v0 + 280);
  v167[6] = *(v0 + 296);
  v18 = *(v0 + 296);
  v167[7] = *(v0 + 312);
  v19 = *(v0 + 312);
  v167[8] = *(v0 + 328);
  v167[1] = *(v0 + 216);
  v167[2] = *(v0 + 232);
  v167[3] = *(v0 + 248);
  v167[4] = *(v0 + 264);
  v167[0] = *(v0 + 200);
  *(v1 + 392) = v14;
  *(v1 + 408) = v15;
  *(v1 + 424) = *(v0 + 376);
  *(v1 + 328) = v17;
  *(v1 + 344) = v18;
  *(v1 + 360) = v19;
  *(v1 + 376) = v13;
  v20 = *(v0 + 232);
  *(v1 + 264) = *(v0 + 216);
  *(v1 + 280) = v20;
  *(v1 + 296) = *(v0 + 248);
  *(v1 + 312) = v16;
  *(v1 + 248) = *(v0 + 200);
  v21 = v0[33];
  v165[9] = v0[34];
  v22 = v0[34];
  v165[10] = v0[35];
  v23 = v0[35];
  v165[11] = v0[36];
  v24 = v0[29];
  v165[5] = v0[30];
  v25 = v0[30];
  v165[6] = v0[31];
  v26 = v0[31];
  v165[7] = v0[32];
  v27 = v0[32];
  v165[8] = v0[33];
  v28 = v0[25];
  v165[1] = v0[26];
  v29 = v0[26];
  v165[2] = v0[27];
  v30 = v0[27];
  v165[3] = v0[28];
  v31 = v0[28];
  v165[4] = v0[29];
  v165[0] = v0[25];
  v32 = v0[36];
  *(v1 + 616) = v23;
  *(v1 + 632) = v32;
  *(v1 + 552) = v26;
  *(v1 + 568) = v27;
  *(v1 + 584) = v21;
  *(v1 + 600) = v22;
  *(v1 + 488) = v30;
  *(v1 + 504) = v31;
  *(v1 + 520) = v24;
  *(v1 + 536) = v25;
  *(v1 + 456) = v28;
  *(v1 + 472) = v29;
  v33 = *(v0 + 728);
  v163[9] = *(v0 + 744);
  v34 = *(v0 + 744);
  v163[10] = *(v0 + 760);
  v35 = *(v0 + 760);
  v163[11] = *(v0 + 776);
  v36 = *(v0 + 664);
  v163[5] = *(v0 + 680);
  v37 = *(v0 + 680);
  v163[6] = *(v0 + 696);
  v38 = *(v0 + 696);
  v163[7] = *(v0 + 712);
  v39 = *(v0 + 712);
  v163[8] = *(v0 + 728);
  v40 = *(v0 + 600);
  v163[1] = *(v0 + 616);
  v41 = *(v0 + 616);
  v163[2] = *(v0 + 632);
  v42 = *(v0 + 632);
  v163[3] = *(v0 + 648);
  v43 = *(v0 + 648);
  v163[4] = *(v0 + 664);
  v163[0] = *(v0 + 600);
  v44 = *(v0 + 776);
  *(v1 + 824) = v35;
  *(v1 + 840) = v44;
  *(v1 + 760) = v38;
  *(v1 + 776) = v39;
  *(v1 + 792) = v33;
  *(v1 + 808) = v34;
  *(v1 + 696) = v42;
  *(v1 + 712) = v43;
  *(v1 + 728) = v36;
  *(v1 + 744) = v37;
  *(v1 + 664) = v40;
  *(v1 + 680) = v41;
  v45 = v0[59];
  v46 = v0[61];
  v160 = v0[60];
  v161 = v46;
  v47 = v0[55];
  v48 = v0[57];
  v156 = v0[56];
  v49 = v156;
  v157 = v48;
  v50 = v0[57];
  v51 = v0[59];
  v158 = v0[58];
  v52 = v158;
  v159 = v51;
  v53 = v0[51];
  v54 = v0[53];
  v152 = v0[52];
  v55 = v152;
  v153 = v54;
  v56 = v0[53];
  v57 = v0[55];
  v154 = v0[54];
  v58 = v154;
  v155 = v57;
  v59 = v0[51];
  v151[0] = v0[50];
  v60 = v151[0];
  v151[1] = v59;
  v61 = v0[61];
  *(v1 + 1032) = v160;
  *(v1 + 1048) = v61;
  *(v1 + 968) = v49;
  *(v1 + 984) = v50;
  *(v1 + 1000) = v52;
  *(v1 + 1016) = v45;
  *(v1 + 904) = v55;
  *(v1 + 920) = v56;
  *(v1 + 936) = v58;
  *(v1 + 952) = v47;
  *(v1 + 872) = v60;
  *(v1 + 888) = v53;
  v62 = *(v0 + 1144);
  v63 = *(v0 + 1176);
  v148 = *(v0 + 1160);
  v149 = v63;
  v64 = *(v0 + 1080);
  v65 = *(v0 + 1112);
  v144 = *(v0 + 1096);
  v66 = v144;
  v145 = v65;
  v67 = *(v0 + 1112);
  v68 = *(v0 + 1144);
  v146 = *(v0 + 1128);
  v69 = v146;
  v147 = v68;
  v70 = *(v0 + 1016);
  v71 = *(v0 + 1048);
  v140 = *(v0 + 1032);
  v72 = v140;
  v141 = v71;
  v73 = *(v0 + 1048);
  v74 = *(v0 + 1080);
  v142 = *(v0 + 1064);
  v75 = v142;
  v143 = v74;
  v76 = *(v0 + 1016);
  v139[0] = *(v0 + 1000);
  v77 = v139[0];
  v139[1] = v76;
  v78 = *(v0 + 1176);
  *(v1 + 1240) = v148;
  *(v1 + 1256) = v78;
  *(v1 + 1176) = v66;
  *(v1 + 1192) = v67;
  *(v1 + 1208) = v69;
  *(v1 + 1224) = v62;
  *(v1 + 1112) = v72;
  *(v1 + 1128) = v73;
  *(v1 + 1144) = v75;
  *(v1 + 1160) = v64;
  *(v1 + 1080) = v77;
  *(v1 + 1096) = v70;
  v79 = v0[84];
  v80 = v0[86];
  v137[10] = v0[85];
  v137[11] = v80;
  v81 = v0[80];
  v82 = v0[82];
  v137[6] = v0[81];
  v137[7] = v82;
  v137[8] = v0[83];
  v137[9] = v79;
  v83 = v0[76];
  v84 = v0[78];
  v137[2] = v0[77];
  v137[3] = v84;
  v137[4] = v0[79];
  v137[5] = v81;
  v137[0] = v0[75];
  v137[1] = v83;
  v85 = v0[84];
  v86 = v0[86];
  *(v1 + 1448) = v0[85];
  *(v1 + 1464) = v86;
  v87 = v0[80];
  v88 = v0[82];
  *(v1 + 1384) = v0[81];
  *(v1 + 1400) = v88;
  *(v1 + 1416) = v0[83];
  *(v1 + 1432) = v85;
  v89 = v0[76];
  v90 = v0[78];
  *(v1 + 1320) = v0[77];
  *(v1 + 1336) = v90;
  *(v1 + 1352) = v0[79];
  *(v1 + 1368) = v87;
  *(v1 + 1288) = v0[75];
  *(v1 + 1304) = v89;
  v91 = *(v0 + 1544);
  v92 = *(v0 + 1576);
  v134 = *(v0 + 1560);
  v135 = v92;
  v93 = *(v0 + 1480);
  v94 = *(v0 + 1512);
  v130 = *(v0 + 1496);
  v95 = v130;
  v131 = v94;
  v96 = *(v0 + 1512);
  v97 = *(v0 + 1544);
  v132 = *(v0 + 1528);
  v98 = v132;
  v133 = v97;
  v99 = *(v0 + 1416);
  v100 = *(v0 + 1448);
  v126 = *(v0 + 1432);
  v101 = v126;
  v127 = v100;
  v102 = *(v0 + 1448);
  v104 = *(v0 + 1480);
  v128 = *(v0 + 1464);
  v103 = v128;
  v129 = v104;
  v105 = *(v0 + 1416);
  v125[0] = *(v0 + 1400);
  v106 = v125[0];
  v125[1] = v105;
  v107 = *(v0 + 1576);
  *(v1 + 1656) = v134;
  *(v1 + 1672) = v107;
  *(v1 + 1592) = v95;
  *(v1 + 1608) = v96;
  *(v1 + 1624) = v98;
  *(v1 + 1640) = v91;
  *(v1 + 1528) = v101;
  *(v1 + 1544) = v102;
  *(v1 + 32) = 1;
  v170 = *(v0 + 192);
  *(v1 + 232) = *(v0 + 192);
  *(v1 + 240) = 5;
  v168 = *(v0 + 392);
  *(v1 + 440) = *(v0 + 392);
  *(v1 + 448) = 0;
  v166 = *(v0 + 592);
  *(v1 + 648) = *(v0 + 592);
  *(v1 + 656) = 2;
  v164 = *(v0 + 792);
  *(v1 + 856) = *(v0 + 792);
  *(v1 + 864) = 8;
  v162 = *(v0 + 992);
  *(v1 + 1064) = *(v0 + 992);
  *(v1 + 1072) = 4;
  v150 = *(v0 + 1192);
  *(v1 + 1272) = *(v0 + 1192);
  *(v1 + 1280) = 6;
  v138 = *(v0 + 1392);
  *(v1 + 1480) = *(v0 + 1392);
  *(v1 + 1488) = 3;
  v136 = *(v0 + 1592);
  *(v1 + 1688) = *(v0 + 1592);
  *(v1 + 1560) = v103;
  *(v1 + 1576) = v93;
  *(v1 + 1496) = v106;
  *(v1 + 1512) = v99;
  *(v1 + 1696) = 7;
  v108 = v0[109];
  v109 = v0[111];
  v123[10] = v0[110];
  v123[11] = v109;
  v124 = *(v0 + 1792);
  v110 = v0[105];
  v111 = v0[107];
  v123[6] = v0[106];
  v123[7] = v111;
  v123[8] = v0[108];
  v123[9] = v108;
  v112 = v0[101];
  v113 = v0[103];
  v123[2] = v0[102];
  v123[3] = v113;
  v123[4] = v0[104];
  v123[5] = v110;
  v123[0] = v0[100];
  v123[1] = v112;
  v114 = v0[109];
  v115 = v0[111];
  *(v1 + 1864) = v0[110];
  *(v1 + 1880) = v115;
  *(v1 + 1896) = *(v0 + 1792);
  v116 = v0[105];
  v117 = v0[107];
  *(v1 + 1800) = v0[106];
  *(v1 + 1816) = v117;
  *(v1 + 1832) = v0[108];
  *(v1 + 1848) = v114;
  v118 = v0[101];
  v119 = v0[103];
  *(v1 + 1736) = v0[102];
  *(v1 + 1752) = v119;
  *(v1 + 1768) = v0[104];
  *(v1 + 1784) = v116;
  *(v1 + 1704) = v0[100];
  *(v1 + 1720) = v118;
  v120 = sub_1004CA93C(v1);
  swift_setDeallocating();
  sub_10003E4F0(v169, v122);
  sub_10003E4F0(v167, v122);
  sub_10003E4F0(v165, v122);
  sub_10003E4F0(v163, v122);
  sub_10003E4F0(v151, v122);
  sub_10003E4F0(v139, v122);
  sub_10003E4F0(v137, v122);
  sub_10003E4F0(v125, v122);
  sub_10003E4F0(v123, v122);
  sub_100140278(&qword_1008EF930);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v120;
}

void sub_1006849DC(char a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator];
  v5 = v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isStandalonePhoneSummary];
  v6 = *(*&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
  v7 = type metadata accessor for PauseRingsViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_hostingController] = 0;
  v9 = &v8[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 6) = 0;
  *&v8[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_pauseRingsCoordinator] = v4;
  v8[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_isStandalone] = v5;
  v8[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_isWheelchair] = v6;
  v8[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_shouldShowEditFlow] = a1;
  v21.receiver = v8;
  v21.super_class = v7;
  v10 = v4;
  v11 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  sub_1003BFF20(v20);
  v12 = objc_allocWithZone(sub_100140278(&qword_1008EAF78));
  v13 = UIHostingController.init(rootView:)();
  v14 = *&v11[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_hostingController];
  *&v11[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_hostingController] = v13;
  v15 = v13;

  v16 = v11;
  v17 = v15;
  [v16 addChildViewController:v17];
  v18 = [v16 view];

  if (v18)
  {
    v19 = [v17 view];

    if (v19)
    {
      [v18 addSubview:v19];

      [v2 presentViewController:v16 animated:1 completion:0];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100684C08(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = v2;
      v5 = a1;
      v16 = a2;
      v6 = [v16 activityMoveMode];
      v7 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType;
      if (v6 == 2)
      {
        v5[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] = 1;
        sub_10037E9EC();
        v8 = [v16 appleMoveMinutes];
        v9 = [v16 appleMoveMinutesGoal];
        if (v5[v7])
        {
          sub_100383C9C(v8, v9);
        }

        else
        {
          sub_100383B04(v8, v9);
        }
      }

      else
      {
        v5[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] = 0;
        sub_10037E9EC();
        v12 = [v16 activeEnergyBurned];
        v13 = [v16 activeEnergyBurnedGoal];
        if (v5[v7])
        {
          sub_100383C9C(v12, v13);
        }

        else
        {
          sub_100383B04(v12, v13);
        }

        v14 = *(v4 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_totalEnergy);
        v15 = v14;
        sub_10037EC74(v14);
      }
    }

    else
    {
      v10 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType;
      *(a1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType) = 0;
      v16 = a1;
      sub_10037E9EC();
      if (*(a1 + v10))
      {
        sub_100383C9C(0, 0);
      }

      else
      {
        sub_100383B04(0, 0);
      }
    }
  }
}

unsigned __int8 *sub_100684E58(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v240 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v240);
  v241 = &v236 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v7 - 8);
  v239 = &v236 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexPath();
  v243 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v236 - v13;
  __chkstk_darwin(v15);
  v17 = &v236 - v16;
  v18 = type metadata accessor for UUID();
  v238 = *(v18 - 1);
  __chkstk_darwin(v18);
  v20 = &v236 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = IndexPath.section.getter();
  v22 = sub_1001E5AFC(v21);
  v23 = v22;
  if (v22 != 11)
  {
    v237 = v9;
    v244 = v3;
    v246 = 0;
    v247 = 0xE000000000000000;
    v245 = v22;
    _print_unlocked<A, B>(_:_:)();
    v26 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v28 = [a1 dequeueReusableCellWithIdentifier:v26 forIndexPath:isa];

    if (v23 > 4)
    {
      if (v23 <= 7)
      {
        v29 = v244;
        if (v23 == 5)
        {
          type metadata accessor for DayViewFlightsTableViewCell();
          v101 = swift_dynamicCastClass();
          if (v101)
          {
            v102 = *&v29[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary];
            v103 = v28;
            if (v102)
            {
              v104 = v102;
              v105 = v101;
              v106 = v28;
              v107 = [v104 _flightsClimbed];
              sub_10026CA48(v107);

              v28 = v106;
            }
          }

          v108 = *&v29[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsCell];
          *&v29[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsCell] = v101;

          return v28;
        }

        if (v23 == 6)
        {
          type metadata accessor for DayViewRingsConfigurationCell();
          v30 = swift_dynamicCastClass();
          if (v30)
          {
            v31 = v28;
            v32 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v33 = (v30 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onChangeGoals);
            v34 = *(v30 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onChangeGoals);
            *v33 = sub_1006885B8;
            v33[1] = v32;
            v35 = v29;
            v36 = v31;
            v37 = v31;

            sub_1000245E0(v34);

            v38 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v39 = (v30 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onEditPauseRings);
            v40 = *(v30 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onEditPauseRings);
            *v39 = sub_1006885C0;
            v39[1] = v38;

            sub_1000245E0(v40);

            v41 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v42 = (v30 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onPauseRings);
            v43 = *(v30 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onPauseRings);
            *v42 = sub_1006885E0;
            v42[1] = v41;

            sub_1000245E0(v43);

            v44 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v45 = (v30 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onUnpauseRings);
            v46 = *(v30 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onUnpauseRings);
            *v45 = sub_100688600;
            v45[1] = v44;

            sub_1000245E0(v46);

            v47 = *&v35[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary];
            v48 = *&v35[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator];
            if (v47)
            {
              v49 = [v48 isPausedForActivitySummary:v47];
            }

            else
            {
              v49 = [v48 isPausedForActivitySummaryCacheIndex:*&v35[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_summaryIndex]];
            }

            sub_1004350AC(v49);

            v28 = v36;
            v29 = v244;
          }

          v170 = *&v29[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringsConfigurationCell];
          *&v29[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringsConfigurationCell] = v30;

          return v28;
        }

        type metadata accessor for WorkoutsListTableViewCell();
        v58 = swift_dynamicCastClass();
        v236 = v28;
        if (v58)
        {
          v137 = v28;
        }

        v138 = *&v29[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts];
        if (v138)
        {

          v139 = IndexPath.row.getter();
          v65 = v138 & 0xFFFFFFFFFFFFFF8;
          if (v138 >> 62)
          {
            v220 = v139;
            v221 = _CocoaArrayWrapper.endIndex.getter();
            v222 = v220;
            v29 = v244;
            if (v222 < v221)
            {
LABEL_67:
              v140 = IndexPath.row.getter();
              if ((v138 & 0xC000000000000001) != 0)
              {
                v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_71:
                v65 = v141;

                if (v58)
                {
                  [v58 setSelectionStyle:0];
                }

                if (AAUIShouldUseNewTrophyCase())
                {
                  sub_1000066AC(&v29[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsDataProvider], *&v29[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsDataProvider + 24]);
                  v142 = [v65 UUID];
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  UUID.uuidString.getter();
                  (*(v238 + 8))(v20, v18);
                  v143 = dispatch thunk of AAUIAwardsDataProviding.achievements(forWorkoutIdentifier:)();
                }

                else
                {
                  v143 = _swiftEmptyArrayStorage;
                }

                if (!v58)
                {

                  return v236;
                }

                v18 = *&v244[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fitnessAppContext];
                v14 = *&v244[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workoutFormattingManager];
                if (!(v143 >> 62))
                {
                  v183 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_117:
                  v184 = v58;

                  v185 = *&v184[OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView];
                  v186 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v187 = swift_allocObject();
                  v187[3] = 0;
                  v187[4] = 0;
                  v187[2] = v186;
                  v188 = *&v185[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
                  *&v185[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = v65;
                  v244 = v65;

                  *&v185[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = v183;
                  v189 = *&v185[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
                  *&v185[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = v14;
                  v190 = v14;

                  v185[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 1;
                  v191 = *&v185[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
                  v192 = *(v191 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
                  *(v191 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = v65;

                  v193 = *(v191 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
                  *(v191 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = v18;
                  v194 = v18;

                  v195 = *(v191 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
                  *(v191 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = v14;

                  *(v191 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = v183;
                  *(v191 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
                  sub_100697158(sub_100175B38, v187);
                  sub_100698004();
                  [v185 configureWithCurrentWorkout];

                  return v236;
                }

LABEL_146:
                v183 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_117;
              }

              if ((v140 & 0x8000000000000000) == 0)
              {
                if (v140 < *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v141 = *(v138 + 8 * v140 + 32);
                  goto LABEL_71;
                }

LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

              goto LABEL_143;
            }
          }

          else if (v139 < *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v223 = static os_log_type_t.error.getter();
          v224 = HKLogActivity;
          v225 = v243;
          v226 = v237;
          (v243)[2](v17, a2, v237);
          if (os_log_type_enabled(v224, v223))
          {
            v227 = v224;
            v228 = swift_slowAlloc();
            v229 = swift_slowAlloc();
            v246 = v229;
            *v228 = 136315394;
            v230 = _typeName(_:qualified:)();
            v232 = sub_10000AFDC(v230, v231, &v246);

            *(v228 + 4) = v232;
            *(v228 + 12) = 2048;
            v233 = IndexPath.row.getter();
            (v225[1])(v17, v226);
            *(v228 + 14) = v233;
            _os_log_impl(&_mh_execute_header, v227, v223, "%s Attempted to access workout with index: %ld however index was out of range.", v228, 0x16u);
            sub_100005A40(v229);
          }

          else
          {
            v234 = v225[1];
            v235 = v224;
            v234(v17, v226);
          }
        }

        return v236;
      }

      v58 = v244;
      if (v23 != 8)
      {
        v59 = v237;
        if (v23 == 9)
        {
          type metadata accessor for AchievementsListTableViewCell();
          v60 = swift_dynamicCastClass();
          v236 = v28;
          if (v60)
          {
            v61 = v28;
          }

          v62 = IndexPath.row.getter();
          v63 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards;
          v64 = *&v58[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards];
          if (v64 >> 62)
          {
            if (v62 < _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_25;
            }
          }

          else if (v62 < *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_25:
            v65 = *&v58[v63];

            v66 = IndexPath.row.getter();
            if ((v65 & 0xC000000000000001) != 0)
            {
              v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              goto LABEL_29;
            }

            if ((v66 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v66 < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v67 = *(v65 + 8 * v66 + 32);
LABEL_29:
              v68 = v67;

              if (v60)
              {
                [v60 setSelectionStyle:0];
                v69 = *&v58[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_badgeImageFactory];
                v70 = *&v58[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_achievementLocalizationProvider];
                v71 = v60;
                sub_1001E1FE8(v68, v69, v70);
                sub_100140278(&unk_1008F8F40);
                v72 = v68;
                LocalizedStringResource.init(stringLiteral:)();
                v73 = EntityProperty<>.init(title:)();
                v74 = v72;

                LOBYTE(v246) = [v74 unearned] ^ 1;
                EntityProperty.wrappedValue.setter();

                v246 = _swiftEmptyArrayStorage;
                sub_10033A70C();
                sub_100140278(&unk_1008F8F50);
                sub_10033A764();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v246 = v73;
                v247 = v74;
                v75 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
                sub_10007151C();
                v68 = AppEntityViewAnnotation.init<A>(entity:state:)();
                UIView.annotate(with:)();
              }

              return v236;
            }

            __break(1u);
            goto LABEL_140;
          }

          v196 = static os_log_type_t.error.getter();
          v197 = HKLogActivity;
          v198 = v243;
          (v243)[2](v11, a2, v59);
          if (os_log_type_enabled(v197, v196))
          {
            v199 = v197;
            v200 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v246 = v201;
            *v200 = 136315394;
            v202 = _typeName(_:qualified:)();
            v204 = sub_10000AFDC(v202, v203, &v246);

            *(v200 + 4) = v204;
            *(v200 + 12) = 2048;
            v205 = IndexPath.row.getter();
            (v198[1])(v11, v59);
            *(v200 + 14) = v205;
            _os_log_impl(&_mh_execute_header, v199, v196, "%s Attempted to access achievement with index: %ld however index was out of range.", v200, 0x16u);
            sub_100005A40(v201);
          }

          else
          {
            v206 = v198[1];
            v207 = v197;
            v206(v11, v59);
          }

          return v236;
        }

        type metadata accessor for AddToYourRingTableViewCell();
        v144 = swift_dynamicCastClass();
        v145 = *&v58[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController];
        if (v144)
        {
          v146 = v28;
          if (v145)
          {
            v147 = v146;
            v148 = v145;
            v149 = v144;
            sub_1002DFDCC(v148);

            return v147;
          }
        }

        else if (v145)
        {
          return v28;
        }

        return v28;
      }

      type metadata accessor for MindfulnessSessionListTableViewCell();
      v65 = swift_dynamicCastClass();
      v18 = v237;
      if (v65)
      {
        v109 = v28;
      }

      v110 = *&v58[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels];
      if (!v110)
      {

        return v28;
      }

      v236 = v28;

      v111 = IndexPath.row.getter();
      if (v110 >> 62)
      {
        if (v111 < _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_49:
          v112 = IndexPath.row.getter();
          if ((v110 & 0xC000000000000001) == 0)
          {
            if ((v112 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            if (v112 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            v113 = *(v110 + 8 * v112 + 32);
LABEL_53:
            v114 = v113;

            if (v65)
            {
              [v65 setSelectionStyle:0];
              v115 = *&v58[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fitnessAppContext];
              v116 = *&v58[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionFormattingManager];
              v117 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v118 = v65;

              sub_1004D643C(v114, v115, v116, sub_100192CCC, v117);
            }

            else
            {
            }

            return v236;
          }

LABEL_140:
          v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_53;
        }
      }

      else if (v111 < *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v208 = static os_log_type_t.error.getter();
      v209 = HKLogActivity;
      v210 = v243;
      (v243)[2](v14, a2, v18);
      if (os_log_type_enabled(v209, v208))
      {
        v211 = v209;
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        v246 = v213;
        *v212 = 136315394;
        v214 = _typeName(_:qualified:)();
        v216 = sub_10000AFDC(v214, v215, &v246);

        *(v212 + 4) = v216;
        *(v212 + 12) = 2048;
        v217 = IndexPath.row.getter();
        (v210[1])(v14, v18);
        *(v212 + 14) = v217;
        _os_log_impl(&_mh_execute_header, v211, v208, "%s Attempted to access mindfulness session with index: %ld however index was out of range.", v212, 0x16u);
        sub_100005A40(v213);
      }

      else
      {
        v218 = v210[1];
        v219 = v209;
        v218(v14, v18);
      }

      return v236;
    }

    if (v23 <= 1)
    {
      v50 = v244;
      if (!v23)
      {
        type metadata accessor for DayViewActivityRingsTableViewCell();
        v52 = swift_dynamicCastClass();
        if (v52)
        {
          v76 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_summaryIndex);
          v77 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary);
          v78 = v28;
          v79 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator);
          v80 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isStandalonePhoneSummary);
          v81 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isToday);
          v82 = v77;
          v83 = v78;
          v84 = v79;
          v28 = v78;
          sub_10035689C(v76, v77, v84, v80, v81);

          v50 = v244;
          v52[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isWheelchair] = *(*&v244[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
          sub_1003551F0();
        }

        v85 = &OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringCell;
        goto LABEL_105;
      }

LABEL_60:
      type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
      v128 = swift_dynamicCastClass();
      if (v128)
      {
        v129 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fiuiFormattingManager);
        v130 = v28;
        v131 = v28;
        v132 = v129;
        sub_10037ED50(v129);
        v128[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_isToday] = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isToday);
        v133 = swift_allocObject();
        *(v133 + 16) = v50;
        v134 = &v128[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_onEditGoal];
        v135 = *&v128[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_onEditGoal];
        *v134 = sub_100688648;
        v134[1] = v133;
        v136 = v50;
        sub_1000245E0(v135);
      }

      else
      {
        v130 = v28;
      }

      v150 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary);
      v151 = v150;
      sub_100684C08(v128, v150);

      if (v128)
      {
        v152 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts);
        if (v152)
        {
          *&v128[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = v152;
        }
      }

      v153 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell);
      *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell) = v128;

      return v130;
    }

    v50 = v244;
    if (v23 != 2)
    {
      if (v23 == 3)
      {
        type metadata accessor for DayViewStandChartTableViewCell();
        v51 = swift_dynamicCastClass();
        v52 = v51;
        if (!v51)
        {
LABEL_104:
          v85 = &OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell;
          goto LABEL_105;
        }

        *(v51 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isToday) = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isToday);
        v53 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary;
        v54 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary);
        if (v54)
        {
          v55 = v28;
          v54 = [v54 appleStandHours];
          v56 = *(v50 + v53);
          if (v56)
          {
            v57 = [v56 appleStandHoursGoal];
LABEL_100:
            sub_1001EE4BC(v54, v57);

            if (*(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData))
            {
            }

            else
            {
              v163 = 0;
            }

            *&v52[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData] = v163;

            sub_1001ED8BC();
            v52[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isWheelchair] = *(*(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
            sub_1001ED708();
            v164 = swift_allocObject();
            *(v164 + 16) = v50;
            v165 = &v52[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_onEditGoal];
            v166 = *&v52[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_onEditGoal];
            *v165 = sub_100688608;
            v165[1] = v164;
            v167 = v50;
            sub_1000245E0(v166);

            goto LABEL_104;
          }
        }

        else
        {
          v162 = v28;
        }

        v57 = 0;
        goto LABEL_100;
      }

      type metadata accessor for DayViewStepsAndDistanceTableViewCell();
      v119 = swift_dynamicCastClass();
      v120 = v119;
      if (!v119 || (*(v119 + OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_isWheelchair) = *(*(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser), v121 = v28, sub_10059A490(), v121, (v122 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary)) == 0))
      {
LABEL_112:
        v182 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_stepsAndDistanceCell);
        *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_stepsAndDistanceCell) = v120;

        return v28;
      }

      v236 = v28;
      v123 = v122;
      v28 = v120;
      v124 = [v123 stepCount];
      v125 = [v123 _pushCount];
      v241 = [v123 distanceWalkingRunning];
      v240 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fiuiFormattingManager);
      v126 = v28[OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_isWheelchair];
      v50 = &OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
      v127 = [*(*&v28[OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_stepsLabelPair] + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
      ObjectType = v125;
      v243 = v124;
      if (v126 == 1)
      {
        result = v125;
        if (!v127)
        {
          __break(1u);
          goto LABEL_60;
        }
      }

      else
      {
        result = v124;
        if (!v127)
        {
          goto LABEL_148;
        }
      }

      v171 = sub_10021E9A4(result);
      v173 = v172;

      sub_10022F3B0(v171, v173);
      v174 = *&v28[OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_distanceLabelPair];
      v175 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
      result = [*(v174 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
      if (result)
      {
        v176 = result;
        v177 = v241;
        v178 = sub_10021EA9C(v241, v240, result);

        v179 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
        v180 = *(v174 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
        *(v174 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v178;
        v181 = v178;

        [*(v174 + v175) setText:0];
        [*(v174 + v175) setAttributedText:*(v174 + v179)];

        v28 = v236;
        v50 = v244;
        goto LABEL_112;
      }

      __break(1u);
LABEL_148:
      __break(1u);
      return result;
    }

    type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
    v52 = swift_dynamicCastClass();
    if (!v52)
    {
LABEL_97:
      v85 = &OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell;
LABEL_105:
      v168 = *v85;
      v169 = *(v50 + v168);
      *(v50 + v168) = v52;

      return v28;
    }

    v86 = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fiuiFormattingManager);
    v87 = v50;
    v88 = v28;
    v89 = v28;
    v90 = v86;
    sub_10037ED50(v86);
    v52[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_isToday] = *(v50 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isToday);
    v91 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType;
    v52[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] = 2;
    sub_10037E9EC();
    v92 = swift_allocObject();
    *(v92 + 16) = v87;
    v93 = &v52[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_onEditGoal];
    v94 = *&v52[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_onEditGoal];
    *v93 = sub_100688628;
    v93[1] = v92;
    v95 = v87;
    sub_1000245E0(v94);
    v96 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary;
    v97 = *(v95 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary);
    if (v97)
    {
      v98 = [v97 appleExerciseTime];
      v99 = *(v95 + v96);
      if (v99)
      {
        v100 = [v99 appleExerciseTimeGoal];
LABEL_88:
        if (v52[v91])
        {
          sub_100383C9C(v98, v100);
        }

        else
        {
          sub_100383B04(v98, v100);
        }

        v154 = *(v95 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts);
        if (v154)
        {
          *&v52[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = v154;
        }

        v155 = *(v95 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData);
        if (v155)
        {
          v156 = objc_opt_self();
          v157 = v52;
          v158 = v155;
          v159 = [v156 minuteUnit];
          v160 = [objc_opt_self() quantityWithUnit:v159 doubleValue:*&v158[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_numberOfActiveMinutes]];
        }

        else
        {
          v161 = v52;
          v160 = 0;
        }

        v28 = v88;
        sub_10037EC74(v160);

        v50 = v244;
        goto LABEL_97;
      }
    }

    else
    {
      v98 = 0;
    }

    v100 = 0;
    goto LABEL_88;
  }

  v24 = objc_allocWithZone(UITableViewCell);

  return [v24 init];
}

void sub_100686900(char a1, void *a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(CHASActivitySetupViewController) initWithPresentationContext:6 goalType:a3 editTodayOnly:a1 & 1];
  v5 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v4];
  [a2 presentViewController:v5 animated:1 completion:0];
}

void sub_1006869B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(CHASActivitySetupViewController) initWithPresentationContext:6];
    v3 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v2];
    [v1 presentViewController:v3 animated:1 completion:0];
  }
}

void sub_100686A70(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1006849DC(a2 & 1);
  }
}

void sub_100686ACC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator);

    [v2 unpauseRingsWithCompletionHandler:0];
  }
}

id sub_100686C60(void *a1, uint64_t a2)
{
  v4 = 0;
  v5 = sub_1001E5AFC(a2);
  if (v5 > 8)
  {
    if (v5 == 9)
    {
      v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards);
      if (v12 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          return 0;
        }
      }

      else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return 0;
      }

      v13 = String._bridgeToObjectiveC()();
      v4 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v13];

      if (!v4)
      {
        return v4;
      }

      type metadata accessor for ActivityTileSectionHeader();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        return v4;
      }

      goto LABEL_30;
    }

    if (v5 != 10)
    {
      return v4;
    }

    v9 = *(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator);
    if (*(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary))
    {
      if ([v9 isPausedForActivitySummary:?])
      {
        return 0;
      }
    }

    else if ([v9 isPausedForActivitySummaryCacheIndex:*(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_summaryIndex)])
    {
      return 0;
    }

    if (*(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController))
    {
      v14 = String._bridgeToObjectiveC()();
      v4 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v14];

      if (!v4)
      {
        return v4;
      }

      type metadata accessor for ActivityTileSectionHeader();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        return v4;
      }

      goto LABEL_30;
    }

    return 0;
  }

  if (v5 == 7)
  {
    v10 = *(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts);
    if (v10)
    {
      if (v10 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          return 0;
        }
      }

      else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return 0;
      }

      v11 = String._bridgeToObjectiveC()();
      v4 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v11];

      if (!v4)
      {
        return v4;
      }

      type metadata accessor for ActivityTileSectionHeader();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        return v4;
      }

      goto LABEL_30;
    }

    return 0;
  }

  if (v5 != 8)
  {
    return v4;
  }

  v6 = *(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels);
  if (!v6)
  {
    return 0;
  }

  if (v6 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_7:
  v7 = String._bridgeToObjectiveC()();
  v4 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v7];

  if (!v4)
  {
    return v4;
  }

  type metadata accessor for ActivityTileSectionHeader();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    return v4;
  }

LABEL_30:
  v15 = v8;
  v16 = objc_opt_self();
  v17 = v4;
  v18 = [v16 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = _UISolariumEnabled();
  v22 = *(v15 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel);
  if (v21)
  {
    [*(v15 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel) setAttributedText:0];
    v23 = String._bridgeToObjectiveC()();
    [v22 setText:v23];

    [v22 setUserInteractionEnabled:0];
    v24 = *(v15 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleTapGestureRecognizer);
    if (v24)
    {
      [v24 setEnabled:0];
    }
  }

  else
  {
    v25 = String._bridgeToObjectiveC()();
    [v22 setText:v25];
  }

  [*(v15 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_subtitleLabel) setText:0];
  sub_100509EF8(18.0);

  return v4;
}

void sub_100687528(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  v5 = IndexPath.section.getter();
  v6 = sub_1001E5AFC(v5);
  if (v6 != 9)
  {
    if (v6 != 8)
    {
      if (v6 != 7)
      {
        return;
      }

      v7 = *&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts];
      if (!v7)
      {
        return;
      }

      v8 = IndexPath.row.getter();
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
        v57 = v9;

        v10 = *(*&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore);
        v11 = objc_allocWithZone(FIUIModel);
        v12 = v10;
        v13 = [v11 initWithHealthStore:v12];
        if (v13)
        {
          v14 = v13;
          v56 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fitnessAppContext];
          v55 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workoutFormattingManager];
          v54 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workoutDataProvider];
          v53 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_badgeImageFactory];
          v52 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_friendListManager];
          v51 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_achievementLocalizationProvider];
          v50 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator];
          v15 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_achievementResourceProvider];
          v16 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fiuiFormattingManager];
          v17 = type metadata accessor for CHAwardsDataProvider();
          sub_100007C5C(&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsDataProvider], v58);
          v18 = v59;
          v19 = v60;
          v20 = sub_1001DF03C(v58, v59);
          v21 = __chkstk_darwin(v20);
          v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v24 + 16))(v23, v21);
          v25 = sub_1001E0AF8(v23, v17, v18, v19);
          sub_100005A40(v58);
          v26 = objc_allocWithZone(CHWorkoutDetailViewController);
          v27 = v57;
          LOBYTE(v48) = 1;
          v28 = [v26 initWithWorkout:v27 workoutActivity:0 healthStore:v12 model:v14 fitnessAppContext:v56 workoutFormattingManager:v55 workoutDataProvider:v54 badgeImageFactory:v53 friendListManager:v52 achievementLocalizationProvider:v51 pauseRingsCoordinator:v50 achievementResourceProvider:v15 formattingManager:v16 awardsDataProvider:v25 shouldExposeDeepLinkToTrainingLoadFromEffort:v48];

          if (v28)
          {
            [v28 setEdgesForExtendedLayout:0];
            v29 = [v2 navigationController];
            [v29 pushViewController:v28 animated:1];
          }

          return;
        }

LABEL_40:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v7 + 8 * v8 + 32);
          goto LABEL_9;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v7 = *&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels];
    if (!v7)
    {
      return;
    }

    v30 = IndexPath.row.getter();
    if ((v7 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v30 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v31 = *(v7 + 8 * v30 + 32);
    }

    v32 = v31;

    v33 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fitnessAppContext];
    v34 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionFormattingManager];
    objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController());
    v57 = v32;
    sub_100349480(v57, v33, v34);
    v36 = v35;
    [v35 setEdgesForExtendedLayout:0];
    v37 = [v2 navigationController];
    [v37 pushViewController:v36 animated:1];

LABEL_27:
    v47 = v57;
    goto LABEL_28;
  }

  v38 = IndexPath._bridgeToObjectiveC()().super.isa;
  v57 = [a1 cellForRowAtIndexPath:v38];

  if (!v57)
  {
    return;
  }

  type metadata accessor for AchievementsListTableViewCell();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    goto LABEL_27;
  }

  v7 = v39;
  v40 = *&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards];

  v41 = IndexPath.row.getter();
  if ((v40 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v41 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v42 = *(v40 + 8 * v41 + 32);
LABEL_25:
  v56 = v42;

  [*(v7 + OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_achievementBadgeView) frame];
  sub_100511A30(v56, v7, v43, v44, v45, v46);

  v47 = v56;
LABEL_28:
}

uint64_t sub_100687C2C(uint64_t a1)
{
  v2 = sub_1001E5AFC(a1);
  if (v2 > 5)
  {
    if (v2 > 8)
    {
      if (v2 != 9)
      {
        if (v2 == 10)
        {
          v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator);
          if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary))
          {
            if ([v5 isPausedForActivitySummary:?])
            {
              return 0;
            }
          }

          else if ([v5 isPausedForActivitySummaryCacheIndex:*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_summaryIndex)])
          {
            return 0;
          }

          if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController))
          {
            return 1;
          }
        }

        return 0;
      }

      v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards);
      if (!(v10 >> 62))
      {
        return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      if (v2 == 6)
      {
        return *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isToday);
      }

      if (v2 == 7)
      {
        v4 = &OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts;
      }

      else
      {
        v4 = &OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels;
      }

      v11 = *(v1 + *v4);
      if (!v11)
      {
        return 0;
      }

      if (!(v11 >> 62))
      {
        return *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    if (v2 > 1)
    {
      if ((v2 - 2) >= 2)
      {
        if (v2 == 4)
        {
          if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isStandalonePhoneSummary) == 1)
          {
            return ~*(*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser) & 1;
          }
        }

        else if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsClimbedEnabled) != 1 || *(*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser) == 1)
        {
          return 0;
        }

        return 1;
      }

      if ((*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isStandalonePhoneSummary) & 1) == 0)
      {
        v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator);
        if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary))
        {
          if ([v3 isPausedForActivitySummary:?])
          {
            return 0;
          }
        }

        else if ([v3 isPausedForActivitySummaryCacheIndex:*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_summaryIndex)])
        {
          return 0;
        }

        return 1;
      }

      return 0;
    }

    if (!v2)
    {
      return 1;
    }

    v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary);
    v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator);
    if (v6)
    {
      v8 = [v7 isPausedForActivitySummary:v6];
    }

    else
    {
      v8 = [v7 isPausedForActivitySummaryCacheIndex:*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_summaryIndex)];
    }

    return v8 ^ 1;
  }
}

void sub_100687F10(uint64_t a1)
{
  v2 = sub_1001E5AFC(a1);
  if (v2 > 8)
  {
    if (v2 != 9)
    {
      if (v2 == 10)
      {
        v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController);
        if (v4)
        {
          v5 = v4;
          sub_1006715E8();
        }
      }

      return;
    }

    v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards);
    if (!(v7 >> 62))
    {
      return;
    }

LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    return;
  }

  if (v2 == 7)
  {
    v3 = &OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts;
  }

  else
  {
    if (v2 != 8)
    {
      return;
    }

    v3 = &OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels;
  }

  v6 = *(v1 + *v3);
  if (v6 && v6 >> 62)
  {
    goto LABEL_15;
  }
}

void sub_10068803C(void *a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  v5 = sub_1001E5AFC(v4);
  if (v5 > 3)
  {
    if ((v5 - 6) < 6)
    {
      return;
    }

    if (v5 == 4)
    {
      v24 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_stepsAndDistanceCell;
      if (*(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_stepsAndDistanceCell))
      {
        return;
      }

      type metadata accessor for DayViewStepsAndDistanceTableViewCell();
      v25 = swift_dynamicCastClass();
      if (!v25)
      {
        *(v2 + v24) = 0;
        return;
      }

      *(v2 + v24) = v25;
      v25[OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_isWheelchair] = *(*(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
      v46 = v25;
      v26 = a1;
      sub_10059A490();
      goto LABEL_52;
    }

    v33 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsCell;
    if (!*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsCell))
    {
      type metadata accessor for DayViewFlightsTableViewCell();
      v34 = swift_dynamicCastClass();
      if (v34)
      {
        v35 = a1;
      }

      *(v2 + v33) = v34;
    }
  }

  else
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        v6 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringCell;
        if (!*(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringCell))
        {
          type metadata accessor for DayViewActivityRingsTableViewCell();
          v7 = swift_dynamicCastClass();
          if (v7)
          {
            *(v2 + v6) = v7;
            v7[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isWheelchair] = *(*(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
            v8 = v7;
            v9 = a1;
            sub_1003551F0();
          }

          else
          {
            *(v2 + v6) = 0;
          }

          sub_1005113C8();
        }

        return;
      }

      v10 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell;
      if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell))
      {
        return;
      }

      type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        *(v1 + v10) = v17;
        *(v17 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts) = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts);
        v18 = v17;
        v19 = a1;
        v20 = v18;

        v21 = *(v1 + v10);
        if (v21)
        {
          v22 = *(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData);
          if (v22)
          {
            v23 = *(v22 + OBJC_IVAR____TtC10FitnessApp17ActivityChartData_moveData);
          }

          else
          {
            v23 = 0;
          }

          *(v21 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData) = v23;
        }

        return;
      }

LABEL_32:
      *(v1 + v10) = 0;
      return;
    }

    if (v5 == 2)
    {
      v10 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell;
      if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell))
      {
        return;
      }

      type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
      v11 = swift_dynamicCastClass();
      if (!v11)
      {
        goto LABEL_32;
      }

      *(v1 + v10) = v11;
      *(v11 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts) = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts);
      v12 = v11;
      v13 = a1;
      v14 = v12;

      v15 = *(v1 + v10);
      if (!v15)
      {
        return;
      }

      v16 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData) ?  : 0;
      *(v15 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData) = v16;

      v38 = *(v1 + v10);
      if (!v38)
      {
        return;
      }

      v39 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData);
      v46 = *(v2 + v10);
      if (v39)
      {
        v40 = objc_opt_self();
        v41 = v46;
        v42 = v39;
        v43 = [v40 minuteUnit];
        v44 = [objc_opt_self() quantityWithUnit:v43 doubleValue:*&v42[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_numberOfActiveMinutes]];
      }

      else
      {
        v45 = v38;
        v44 = 0;
      }

      sub_10037EC74(v44);
      goto LABEL_52;
    }

    v27 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell;
    if (!*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell))
    {
      type metadata accessor for DayViewStandChartTableViewCell();
      v28 = swift_dynamicCastClass();
      if (!v28)
      {
        *(v1 + v27) = 0;
        return;
      }

      v29 = v28;
      *(v2 + v27) = v28;
      v30 = *(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData);
      v31 = a1;
      v32 = v30 ?  : 0;
      *&v29[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData] = v32;
      v36 = v29;

      sub_1001ED8BC();

      v37 = *(v2 + v27);
      if (v37)
      {
        v37[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isWheelchair] = *(*(v2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
        v46 = v37;
        sub_1001ED708();
LABEL_52:
      }
    }
  }
}

void sub_1006886B0()
{
  sub_1000059F8(0, &qword_1008F73C0);
  v0 = UIFontTextStyleBody;
  v1 = UIFontDescriptorSystemDesignRounded;
  v2 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();

  qword_1009261C0 = v2;
}

char *sub_100688844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_groupView;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [v7 layer];
  [v8 setCornerRadius:12.0];

  [v7 setClipsToBounds:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v7;
  v9 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutImageView;
  v10 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v9] = v10;
  v11 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutIconView;
  v12 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v11] = v12;
  v13 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutTypeLabel;
  v14 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v13] = v14;
  v15 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_distanceLabel;
  v16 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v15] = v16;
  v17 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_durationLabel;
  v18 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v17] = v18;
  v19 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_paceLabel;
  v20 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v19] = v20;
  v21 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView;
  v22 = [objc_allocWithZone(UIImageView) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v21] = v22;
  v23 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortLabel;
  v24 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v23] = v24;
  *&v3[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_standardAnchors] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_transitionAnchors] = _swiftEmptyArrayStorage;
  v25 = &v3[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType];
  *v25 = 0;
  v25[8] = 1;
  *&v3[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_formattingManager] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_dataCalculator] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workout] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutActivity] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_noteSink] = 0;
  v26 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effort;
  v27 = type metadata accessor for AppleExertionScale();
  (*(*(v27 - 8) + 56))(&v3[v26], 1, 1, v27);
  swift_unknownObjectWeakInit();
  if (a3)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  v41.receiver = v3;
  v41.super_class = type metadata accessor for WorkoutDetailActivityTableViewCell();
  v29 = objc_msgSendSuper2(&v41, "initWithStyle:reuseIdentifier:", a1, v28);

  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 systemBackgroundColor];
  [v31 setBackgroundColor:v32];

  v33 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_groupView;
  [*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_groupView] addSubview:*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutImageView]];
  [*&v31[v33] addSubview:*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutIconView]];
  [*&v31[v33] addSubview:*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutTypeLabel]];
  [*&v31[v33] addSubview:*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_distanceLabel]];
  [*&v31[v33] addSubview:*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_durationLabel]];
  [*&v31[v33] addSubview:*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_paceLabel]];
  [*&v31[v33] addSubview:*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView]];
  [*&v31[v33] addSubview:*&v31[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortLabel]];
  v34 = *&v31[v33];
  v35 = [v30 secondarySystemGroupedBackgroundColor];
  [v34 setBackgroundColor:v35];

  v36 = v31;
  v37 = [v36 contentView];
  [v37 addSubview:*&v31[v33]];

  v38 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v36 action:"didTapWorkoutActivity"];
  v39 = [v36 contentView];

  [v39 addGestureRecognizer:v38];
  sub_1006890F4();

  return v36;
}

uint64_t sub_100688E90()
{
  v1 = sub_100140278(&qword_1008DF280);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for WorkoutDetailActivityTableViewCell();
  v14.receiver = v0;
  v14.super_class = v4;
  objc_msgSendSuper2(&v14, "prepareForReuse");
  v5 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];

  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v5 deactivateConstraints:v7];

  v8 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_groupView];
  v9 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v8 setBackgroundColor:v9];

  [*&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutIconView] setImage:0];
  v10 = type metadata accessor for AppleExertionScale();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effort;
  swift_beginAccess();
  sub_100341FE0(v3, &v0[v11]);
  return swift_endAccess();
}

void sub_1006890F4()
{
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006EE9A0;
  v2 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutImageView];
  v3 = [v2 heightAnchor];
  v4 = [v3 constraintEqualToConstant:43.0];

  *(v1 + 32) = v4;
  v5 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutTypeLabel];
  v6 = [v5 topAnchor];
  v7 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_groupView];
  v113 = v7;
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:12.0];

  *(v1 + 40) = v9;
  v10 = [v5 leadingAnchor];
  v11 = [v2 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];

  *(v1 + 48) = v12;
  v13 = [v5 trailingAnchor];
  v14 = [v7 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-8.0];

  *(v1 + 56) = v15;
  v16 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_durationLabel];
  v17 = [v16 topAnchor];
  v18 = [v5 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v1 + 64) = v19;
  v114 = v16;
  v20 = [v16 leadingAnchor];
  v21 = [v2 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v1 + 72) = v22;
  v23 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView];
  v24 = [v23 centerYAnchor];
  v25 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortLabel];
  v26 = [v25 centerYAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  *(v1 + 80) = v27;
  v28 = [v23 leadingAnchor];
  v29 = [v2 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

  *(v1 + 88) = v30;
  v31 = [v25 topAnchor];
  v32 = [v16 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v1 + 96) = v33;
  v34 = [v25 leadingAnchor];
  v35 = [v23 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:8.0];

  *(v1 + 104) = v36;
  v37 = [v25 bottomAnchor];
  v38 = [v113 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-12.0];

  *(v1 + 112) = v39;
  *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_standardAnchors] = v1;

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1006D9800;
  v41 = [v2 heightAnchor];
  v42 = [v41 constraintEqualToConstant:0.0];

  *(v40 + 32) = v42;
  v43 = [v5 topAnchor];
  v44 = [v113 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v40 + 40) = v45;
  v46 = [v5 bottomAnchor];
  v47 = [v113 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v40 + 48) = v48;
  v49 = [v5 leadingAnchor];
  v50 = [v113 leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:8.0];

  *(v40 + 56) = v51;
  v52 = [v16 bottomAnchor];
  v53 = [v113 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v40 + 64) = v54;
  v55 = [v16 leadingAnchor];
  v56 = [v5 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:8.0];

  *(v40 + 72) = v57;
  v58 = [v16 firstBaselineAnchor];
  v59 = [v5 firstBaselineAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v40 + 80) = v60;
  *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_transitionAnchors] = v40;

  v112 = objc_opt_self();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1006D9830;
  v62 = [v113 leadingAnchor];
  v63 = [v0 contentView];
  v64 = [v63 leadingAnchor];

  v65 = [v62 constraintEqualToAnchor:v64];
  *(v61 + 32) = v65;
  v66 = [v113 trailingAnchor];
  v67 = [v0 contentView];
  v68 = [v67 trailingAnchor];

  v69 = [v66 constraintEqualToAnchor:v68];
  *(v61 + 40) = v69;
  v70 = [v113 topAnchor];
  v71 = [v0 contentView];
  v72 = [v71 topAnchor];

  v73 = [v70 constraintEqualToAnchor:v72 constant:16.0];
  *(v61 + 48) = v73;
  v74 = [v113 bottomAnchor];
  v75 = [v0 contentView];
  v76 = [v75 bottomAnchor];

  v77 = [v74 constraintEqualToAnchor:v76];
  *(v61 + 56) = v77;
  v78 = [v2 leadingAnchor];
  v79 = [v113 leadingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:8.0];

  *(v61 + 64) = v80;
  v81 = [v2 centerYAnchor];
  v82 = [v113 centerYAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v61 + 72) = v83;
  v84 = [v2 widthAnchor];
  v85 = [v84 constraintEqualToConstant:43.0];

  *(v61 + 80) = v85;
  v86 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutIconView];
  v87 = [v86 centerXAnchor];
  v88 = [v2 centerXAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v61 + 88) = v89;
  v90 = [v86 centerYAnchor];
  v91 = [v2 centerYAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v61 + 96) = v92;
  v93 = [v16 firstBaselineAnchor];
  v94 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_distanceLabel];
  v95 = [v94 firstBaselineAnchor];
  v96 = [v93 constraintEqualToAnchor:v95];

  *(v61 + 104) = v96;
  v97 = [v94 leadingAnchor];
  v98 = [v16 trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 constant:8.0];

  *(v61 + 112) = v99;
  v100 = *&v0[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_paceLabel];
  v101 = [v100 leadingAnchor];
  v102 = [v94 trailingAnchor];
  v103 = [v101 constraintEqualToAnchor:v102 constant:8.0];

  *(v61 + 120) = v103;
  v104 = [v100 trailingAnchor];
  v105 = [v113 trailingAnchor];
  v106 = [v104 constraintLessThanOrEqualToAnchor:v105 constant:-8.0];

  *(v61 + 128) = v106;
  v107 = [v100 firstBaselineAnchor];
  v108 = [v114 firstBaselineAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];

  *(v61 + 136) = v109;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:isa];

  v111 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v111];

  v115 = Array._bridgeToObjectiveC()().super.isa;

  [v112 deactivateConstraints:v115];
}

void sub_100689F8C()
{
  v1 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints:isa];

  v3 = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:v3];

  v4 = *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_groupView);
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  v7 = *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutTypeLabel);
  v8 = [v5 secondaryLabelColor];
  [v7 setTextColor:v8];
}

void sub_10068A108()
{
  v1 = v0;
  v2 = type metadata accessor for LocalizationFeature();
  v80 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExertionValue();
  v83 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v72 - v8;
  v9 = type metadata accessor for AppleExertionScale();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v81 = &v72 - v14;
  v15 = sub_100140278(&qword_1008DF280);
  __chkstk_darwin(v15 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  if (FIIsTinkerVegaOrFitnessJunior())
  {
    [*(v1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView) setImage:0];
    v24 = *(v1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortLabel);
    v83 = String._bridgeToObjectiveC()();
    [v24 setText:v83];
    v25 = v83;
  }

  else if ((*(v1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType + 8) & 1) != 0 || *(v1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType) != 83)
  {
    v73 = v12;
    v74 = v5;
    v77 = v10;
    v29 = v9;
    sub_1000059F8(0, &qword_1008E7FC0);
    v30 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effort;
    swift_beginAccess();
    sub_10068DBE0(v1 + v30, v23);
    static EffortColors.textColor(exertion:)();
    sub_10000EA04(v23, &qword_1008DF280);
    v31 = UIColor.init(_:)();
    if (qword_1008DAFC8 != -1)
    {
      swift_once();
    }

    v32 = UILabel.withFont(_:)();
    v76 = v31;
    v75 = UILabel.withTextColor(_:)();

    v78 = v1;
    sub_10068DBE0(v1 + v30, v20);
    v33 = v77;
    v34 = *(v77 + 48);
    if (v34(v20, 1, v29))
    {
      sub_10000EA04(v20, &qword_1008DF280);
      v72 = v17;
      v35 = v30;
      v36 = v34;
      v37 = v80;
      (v80[13])(v4, enum case for LocalizationFeature.workout(_:), v2);
      static Localization.workoutUILocalizedString(_:feature:)();
      v37[1](v4, v2);
      v34 = v36;
      v30 = v35;
      v17 = v72;
    }

    else
    {
      v38 = v81;
      (*(v33 + 16))(v81, v20, v29);
      sub_10000EA04(v20, &qword_1008DF280);
      v39 = v82;
      AppleExertionScale.exertionValue.getter();
      (*(v33 + 8))(v38, v29);
      ExertionValue.shortDescription.getter();
      v83[1](v39, v74);
    }

    v40 = String._bridgeToObjectiveC()();
    v41 = v75;
    [v75 setText:v40];

    v42 = objc_opt_self();
    v43 = [v42 configurationWithScale:1];
    v44 = v78;
    sub_10068DBE0(v78 + v30, v17);
    if (v34(v17, 1, v29) == 1)
    {
      sub_10000EA04(v17, &qword_1008DF280);
      v45 = String._bridgeToObjectiveC()();
      v46 = [objc_opt_self() systemImageNamed:v45];

      v47 = *(v44 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView);
      v48 = v76;
      [v47 setTintColor:v76];
    }

    else
    {
      v75 = v42;
      v80 = v43;
      v49 = v77;
      v50 = v73;
      (*(v77 + 32))(v73, v17, v29);
      v51 = v81;
      (*(v49 + 104))(v81, enum case for AppleExertionScale.skipped(_:), v29);
      sub_10068DB88(&qword_1008F9028, &type metadata accessor for AppleExertionScale);
      v52 = v82;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v53 = v79;
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_10068DB88(&qword_1008F9030, &type metadata accessor for ExertionValue);
      v54 = v74;
      v55 = v52;
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = v83[1];
      v57(v53, v54);
      v57(v55, v54);
      v58 = *(v49 + 8);
      v58(v51, v29);
      if (v56)
      {
        v59 = String._bridgeToObjectiveC()();
        v60 = [objc_opt_self() smm_systemImageNamed:v59];

        v61 = [v60 imageFlippedForRightToLeftLayoutDirection];
        v62 = v78;
        if (v61)
        {
          v63 = [v61 imageWithRenderingMode:2];
          v46 = [v63 imageWithSymbolConfiguration:v80];
        }

        else
        {
          v46 = 0;
        }

        v47 = *(v62 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView);
        [v47 setTintColor:v76];
      }

      else
      {
        v83 = v58;
        AppleExertionScale.exertionValue.getter();
        v64 = ExertionValue.level.getter();
        v57(v55, v54);
        v84 = v64;
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v65;
        v66._countAndFlagsBits = 0x2E656C637269632ELL;
        v66._object = 0xEC0000006C6C6966;
        String.append(_:)(v66);
        v67 = String._bridgeToObjectiveC()();

        v68 = [objc_opt_self() systemImageNamed:v67];

        v69 = [v75 configurationWithHierarchicalColor:v76];
        v70 = [v80 configurationByApplyingConfiguration:v69];

        v71 = v78;
        if (v68)
        {
          v46 = [v68 imageWithSymbolConfiguration:v70];
        }

        else
        {
          v46 = 0;
        }

        v47 = *(v71 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView);
        [v47 setTintColor:0];

        v58 = v83;
      }

      v58(v50, v29);
      v48 = v76;
      v43 = v80;
    }

    [v47 setImage:v46];
  }

  else
  {
    v26 = *(v1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortLabel);
    v27 = String._bridgeToObjectiveC()();
    [v26 setText:v27];

    v28 = *(v1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView);

    [v28 setImage:0];
  }
}

void sub_10068AC0C()
{
  if ((*(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType + 8) & 1) != 0 || *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType) != 83)
  {
    v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_dataCalculator);
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workout);
      v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutActivity);
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9[4] = sub_10068DBD0;
      v9[5] = v4;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100644714;
      v9[3] = &unk_100867A48;
      v5 = _Block_copy(v9);
      v6 = v3;
      v7 = v1;
      v8 = v2;

      [v7 effortForWorkout:v8 workoutActivity:v6 completion:v5];
      _Block_release(v5);
    }
  }
}

uint64_t sub_10068AD64(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10068DBD8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100867A98;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10068DB88(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

void sub_10068B0A4(uint64_t a1, void *a2)
{
  v3 = sub_100140278(&qword_1008DF280);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a2)
    {
      v8 = a2;
      AppleExertionScale.init(quantity:)();
    }

    else
    {
      v9 = type metadata accessor for AppleExertionScale();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    }

    v10 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effort;
    swift_beginAccess();
    sub_100341FE0(v5, v7 + v10);
    swift_endAccess();
    sub_10068A108();
  }
}

void sub_10068B1D8(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_100140278(&qword_1008E98A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v98 - v11;
  v13 = type metadata accessor for NSNotificationCenter.Publisher();
  v14 = *(v13 - 1);
  v100 = v13;
  v101 = v14;
  __chkstk_darwin(v13);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&qword_1008E98B0);
  v18 = *(v17 - 1);
  v102 = v17;
  v103 = v18;
  *&v19 = __chkstk_darwin(v17).n128_u64[0];
  v21 = &v98 - v20;
  v22 = [a2 workoutConfiguration];
  v23 = [v22 activityType];

  v24 = &v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType];
  v104 = v23;
  *v24 = v23;
  v24[8] = 0;
  v25 = *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_formattingManager];
  *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_formattingManager] = a3;
  v99 = a3;

  v26 = *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workout];
  *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workout] = a1;
  v27 = a1;

  v28 = *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutActivity];
  *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutActivity] = a2;
  v29 = a2;

  v30 = *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_dataCalculator];
  v98 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_dataCalculator;
  *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_dataCalculator] = a4;
  v31 = a4;

  v32 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_1000059F8(0, &qword_1008E3FD0);
  v33 = static OS_dispatch_queue.main.getter();
  aBlock[0] = v33;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
  sub_10068DB88(&qword_1008E98B8, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_100341AF0();
  v35 = v100;
  Publisher.subscribe<A>(on:options:)();
  sub_10000EA04(v12, &qword_1008E98A8);

  (v101)[1](v16, v35);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v27;
  sub_10014A6B0(&qword_1008E98C8, &qword_1008E98B0);
  v38 = v27;
  v39 = v102;
  v40 = Publisher<>.sink(receiveValue:)();

  v103[1](v21, v39);
  *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_noteSink] = v40;

  sub_10068AC0C();
  sub_10068A108();
  if (qword_1008DAFC8 != -1)
  {
    swift_once();
  }

  v41 = UILabel.withFont(_:)();
  v42 = [objc_opt_self() labelColor];
  v43 = UILabel.withTextColor(_:)();

  sub_10068DA78(v29);
  v44 = String._bridgeToObjectiveC()();
  [v43 setText:v44];

  v45 = UILabel.withFont(_:)();
  v46 = objc_opt_self();
  v47 = [v46 elapsedTimeColors];
  if (!v47)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v48 = v47;
  v103 = v38;
  v49 = [v47 nonGradientTextColor];

  [v45 setTextColor:v49];
  [v29 duration];
  v50 = [v99 stringWithDuration:2 durationFormat:?];
  if (v50)
  {
    v51 = v50;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = 0;
  }

  [v45 setText:v52];

  v53 = v104;
  if (v104 == 83)
  {
    sub_100689F8C();
    return;
  }

  v54 = [v29 workoutConfiguration];
  v55 = [v54 locationType];

  v56 = v55 == 2;
  sub_100140278(&qword_1008DD8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v58;
  v102 = v29;
  v59 = [v29 workoutConfiguration];
  v60 = [v59 swimmingLocationType];

  *(inited + 72) = &type metadata for Int;
  *(inited + 48) = v60;
  sub_1002FC244(inited);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &qword_1008DD8E8);
  v61 = objc_allocWithZone(FIUIWorkoutActivityType);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v63 = [v61 initWithActivityTypeIdentifier:v53 isIndoor:v56 metadata:isa];

  v101 = v63;
  v64 = FIUIStaticWorkoutIconImage();
  if (!v64)
  {
    goto LABEL_24;
  }

  v65 = v64;
  v66 = [v64 imageWithRenderingMode:2];

  v67 = *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutIconView];
  v100 = v66;
  [v67 setImage:v66];
  v68 = [v46 metricColorsForGoalTypeIdentifier:0];
  v69 = [v68 nonGradientTextColor];

  [v67 setTintColor:v69];
  v70 = *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutImageView];
  v71 = FIUICircularWorkoutGradientImage();
  [v70 setImage:v71];

  v99 = *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_distanceLabel];
  v72 = UILabel.withFont(_:)();
  v73 = [v46 distanceColors];
  if (!v73)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v74 = v73;
  v75 = [v73 nonGradientTextColor];

  [v72 setTextColor:v75];
  v76 = String._bridgeToObjectiveC()();
  [v72 setText:v76];

  v77 = *&v5[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_paceLabel];
  v78 = UILabel.withFont(_:)();
  v79 = [v46 paceColors];
  if (!v79)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v80 = v79;

  v81 = [v80 nonGradientTextColor];

  [v78 setTextColor:v81];
  v82 = String._bridgeToObjectiveC()();
  [v78 setText:v82];

  v83 = v102;
  v84 = [v102 distanceType];
  if (!v84)
  {
LABEL_21:

    return;
  }

  v85 = v84;
  v86 = [v83 statisticsForType:v84];
  if (!v86)
  {
LABEL_20:

    goto LABEL_21;
  }

  v87 = v86;
  v88 = [v86 sumQuantity];
  if (!v88)
  {

    goto LABEL_21;
  }

  v89 = v88;
  v90 = sub_10068D0CC(v88);
  [v99 setAttributedText:v90];

  if (v104 != 46)
  {
    [v83 duration];
    v97 = sub_10068C2D0(v89, 0, 1, v96);
    [v77 setAttributedText:v97];

    goto LABEL_20;
  }

  v91 = *&v5[v98];
  if (v91)
  {
    v92 = swift_allocObject();
    *(v92 + 16) = v5;
    aBlock[4] = sub_10068DB70;
    aBlock[5] = v92;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10068D024;
    aBlock[3] = &unk_1008679D0;
    v93 = _Block_copy(aBlock);
    v94 = v91;
    v95 = v5;

    [v94 swimmingPacePerHundredForWorkout:v103 workoutActivity:v83 completion:v93];

    _Block_release(v93);
  }

  else
  {
  }
}

void sub_10068BDC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v16 = Notification.userInfo.getter();
  if (!v16)
  {

    v26 = 0u;
    v27 = 0u;
    goto LABEL_11;
  }

  v17 = v16;
  v24[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24[2] = v18;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v19 = sub_1004C5BC0(v25), (v20 & 1) == 0))
  {

    sub_100282EF8(v25);
    v26 = 0u;
    v27 = 0u;
    goto LABEL_9;
  }

  sub_10000B1B4(*(v17 + 56) + 32 * v19, &v26);
  sub_100282EF8(v25);

  if (!*(&v27 + 1))
  {
LABEL_9:

LABEL_11:
    sub_10000EA04(&v26, &qword_1008E51F0);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_12;
  }

  v21 = swift_dynamicCast();
  (*(v8 + 56))(v6, v21 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

LABEL_12:
    sub_10000EA04(v6, &unk_1008DB8A0);
    return;
  }

  (*(v8 + 32))(v13, v6, v7);
  v22 = [a3 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v22) = static UUID.== infix(_:_:)();
  v23 = *(v8 + 8);
  v23(v10, v7);
  if (v22)
  {
    sub_10068AC0C();

    v23(v13, v7);
  }

  else
  {
    v23(v13, v7);
  }
}

void sub_10068C1D8()
{
  v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutActivity);
  if (v1 && ((*(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType + 8) & 1) != 0 || *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType) != 83))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = v1;
      [v3 pushWorkoutActivity:v4];

      swift_unknownObjectRelease();
    }
  }
}

id sub_10068C2D0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if ((*(v4 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType + 8) & 1) == 0)
  {
    v5 = *(v4 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_formattingManager);
    if (v5)
    {
      v8 = *(v4 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType);
      v11 = objc_allocWithZone(FIUIWorkoutActivityType);
      v12 = v5;
      v13 = [v11 initWithActivityTypeIdentifier:v8 isIndoor:0];
      v14 = FIUIPaceFormatForWorkoutActivityType();
      v15 = FIUIDistanceTypeForActivityType();
      v16 = [v12 localizedPaceStringWithDistance:a1 overDuration:v14 paceFormat:v15 distanceType:a4];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v14 == 4)
        {
LABEL_5:
          result = [v12 localizedSpeedUnitStringForActivityType:v13];
          if (result)
          {
            v22 = result;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            sub_10000FCBC();
            v23 = StringProtocol.localizedUppercase.getter();
            v25 = v24;

            if (qword_1008DAFC8 != -1)
            {
              swift_once();
            }

            v26 = qword_1009261C0;
            v27 = v18;
LABEL_22:
            v57 = sub_1004C154C(v27, v20, v23, v25, v26);

            return v57;
          }

          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        v20 = 0xE200000000000000;
        v18 = 11565;
        if (v14 == 4)
        {
          goto LABEL_5;
        }
      }

      if (v8 == 46)
      {
        if ((a3 & 1) != 0 || (v32 = objc_opt_self(), v33 = [objc_allocWithZone(NSNumber) initWithDouble:*&a2], v34 = objc_msgSend(v32, "stringWithNumber:decimalPrecision:", v33, 1), v33, !v34))
        {
          v45 = 0;
          v44 = 0xE000000000000000;
        }

        else
        {
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = [objc_opt_self() mainBundle];
          v39 = String._bridgeToObjectiveC()();
          v40 = [v38 localizedStringForKey:v39 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1006D46C0;
          *(v41 + 56) = &type metadata for String;
          *(v41 + 64) = sub_10000A788();
          *(v41 + 32) = v35;
          *(v41 + 40) = v37;
          v42 = String.init(format:_:)();
          v44 = v43;

          v45 = v42;
        }

        if (qword_1008DAFC8 != -1)
        {
          v58 = v45;
          swift_once();
          v45 = v58;
        }

        v57 = sub_1004C154C(v18, v20, v45, v44, qword_1009261C0);

        return v57;
      }

      result = [v12 unitManager];
      if (result)
      {
        v46 = result;
        v59 = v18;
        v47 = [result paceDistanceUnitForDistanceType:v15];

        result = [v12 localizedShortUnitStringForDistanceUnit:v47];
        if (result)
        {
          v48 = result;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10000FCBC();
          v49 = StringProtocol.localizedUppercase.getter();
          v51 = v50;

          v52 = [objc_opt_self() mainBundle];
          v53 = String._bridgeToObjectiveC()();
          v54 = [v52 localizedStringForKey:v53 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1006D46C0;
          *(v55 + 56) = &type metadata for String;
          *(v55 + 64) = sub_10000A788();
          *(v55 + 32) = v49;
          *(v55 + 40) = v51;
          v23 = String.init(format:_:)();
          v25 = v56;

          if (qword_1008DAFC8 != -1)
          {
            swift_once();
          }

          v26 = qword_1009261C0;
          v27 = v59;
          goto LABEL_22;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }
  }

  v28 = [objc_opt_self() mainBundle];
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 localizedStringForKey:v29 value:0 table:0];

  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  v31 = [objc_allocWithZone(NSAttributedString) initWithString:v30];
  return v31;
}

void sub_10068C954(void *a1, void *a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_errorRetain();
    v17 = static os_log_type_t.error.getter();
    v18 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v17))
    {
      v19 = v18;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_10000AFDC(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v19, v17, "Error loading swimming splits pace: %s", v20, 0xCu);
      sub_100005A40(v21);
    }

    else
    {
    }

    return;
  }

  if (!a1 || !a2)
  {
    return;
  }

  v46 = v14;
  v47 = v9;
  v48 = v13;
  v25 = *&a4[OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_formattingManager];
  if (!v25)
  {
    v32 = a1;
    v33 = a2;
    goto LABEL_13;
  }

  v26 = a1;
  v27 = a2;
  v28 = v25;
  [v26 doubleValue];
  v29 = [v28 stringWithDuration:1 durationFormat:?];

  if (!v29)
  {
LABEL_13:
    v30 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_14;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v31;

LABEL_14:
  v34 = [objc_opt_self() stringWithNumber:a2 decimalPrecision:1];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  sub_1000059F8(0, &qword_1008E3FD0);
  v44 = static OS_dispatch_queue.main.getter();
  v39 = swift_allocObject();
  v39[2] = a4;
  v39[3] = v30;
  v39[4] = v45;
  v39[5] = v36;
  v39[6] = v38;
  aBlock[4] = sub_10068DB78;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100867A20;
  v40 = _Block_copy(aBlock);
  v41 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10068DB88(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v42 = v44;
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v40);
  (*(v47 + 8))(v11, v8);
  (*(v46 + 8))(v16, v48);
}

void sub_10068CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_paceLabel);
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D1F70;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_10000A788();
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v14;
  *(v13 + 64) = v14;
  *(v13 + 72) = a4;
  *(v13 + 80) = a5;

  String.init(format:_:)();

  v15 = String._bridgeToObjectiveC()();

  [v9 setText:v15];
}

void sub_10068D024(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

id sub_10068D0CC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_formattingManager);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutActivity);
    if (v3)
    {
      v5 = v3;
      v6 = v2;
      v7 = [v5 workoutConfiguration];
      v8 = [v7 swimmingLocationType];

      v9 = [v5 fiui_activityType];
      v10 = FIUIDistanceTypeForActivityType();
      result = [v6 localizedShortUnitStringForDistanceType:v10];
      if (result)
      {
        v12 = result;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v35 = v13;
        sub_10000FCBC();
        v16 = StringProtocol.localizedUppercase.getter();
        v18 = v17;

        result = [v6 unitManager];
        if (result)
        {
          v19 = result;
          v20 = [result userDistanceUnitForDistanceType:v10];

          v21 = [objc_opt_self() meterUnit];
          [a1 doubleValueForUnit:v21];
          v23 = v22;

          if (v8 == 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          v25 = [v6 localizedStringWithDistanceInMeters:v20 distanceUnit:0 unitStyle:v24 decimalPrecision:v23];
          if (v25)
          {
            v26 = v25;
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v28;
          }

          else
          {
            v29 = 0xE200000000000000;
            v27 = 11565;
          }

          if (qword_1008DAFC8 != -1)
          {
            swift_once();
          }

          v34 = sub_1004C154C(v27, v29, v16, v18, qword_1009261C0);

          return v34;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v30 = [objc_opt_self() mainBundle];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 localizedStringForKey:v31 value:0 table:0];

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  v33 = [objc_allocWithZone(NSAttributedString) initWithString:v32];
  return v33;
}

id sub_10068D404()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailActivityTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutDetailActivityTableViewCell()
{
  result = qword_1008F9018;
  if (!qword_1008F9018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10068D5EC()
{
  sub_10033D12C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10068D6D4()
{
  v1 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_groupView;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [v2 layer];
  [v3 setCornerRadius:12.0];

  [v2 setClipsToBounds:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v4 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutImageView;
  v5 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutIconView;
  v7 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutTypeLabel;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_distanceLabel;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_durationLabel;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_paceLabel;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortImageView;
  v17 = [objc_allocWithZone(UIImageView) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v16) = v17;
  v18 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effortLabel;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v18) = v19;
  *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_standardAnchors) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_transitionAnchors) = _swiftEmptyArrayStorage;
  v20 = v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_activityType;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_formattingManager) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_dataCalculator) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workout) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_workoutActivity) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_noteSink) = 0;
  v21 = OBJC_IVAR___CHWorkoutDetailActivityTableViewCell_effort;
  v22 = type metadata accessor for AppleExertionScale();
  (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10068DA78(void *a1)
{
  v2 = [a1 workoutConfiguration];
  [v2 locationType];

  v3 = [a1 workoutConfiguration];
  [v3 activityType];

  v4 = [a1 workoutConfiguration];
  [v4 swimmingLocationType];

  result = FILocalizedNameForActivityType();
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10068DB88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10068DBE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10068DC64()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  byte_1009261D8 = v2 ^ 1;
}

uint64_t WorkoutOnboardingNavigationiOS.body.getter()
{
  type metadata accessor for WorkoutOnboardingCoordinatoriOS();
  sub_10068F0C8(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
  v0 = EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  sub_100140278(&qword_1008E8F88);
  sub_100140278(&qword_1008F9038);
  sub_10014A6B0(&qword_1008F9040, &qword_1008E8F88);
  sub_10014A6B0(&qword_1008F9048, &qword_1008E8F88);
  sub_10014A6B0(&qword_1008F9050, &qword_1008E8F88);
  sub_100141EEC(&qword_1008F9058);
  sub_100141EEC(&qword_1008F9060);
  sub_10068E230();
  sub_10068E340();
  sub_10068E394();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(path:root:)();
}

uint64_t sub_10068DF50@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10068DFD0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10068E048(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutOnboardingNavigationiOS();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100140278(&qword_1008F9058);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10068E46C();
  sub_10068F110(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutOnboardingNavigationiOS);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_10068EF7C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_100140278(&qword_1008F9060);
  sub_10068E230();
  sub_10068E340();
  sub_10068E394();
  View.navigationDestination<A, B>(for:destination:)();

  return sub_10068F060(v7);
}

unint64_t sub_10068E230()
{
  result = qword_1008F9068;
  if (!qword_1008F9068)
  {
    sub_100141EEC(&qword_1008F9058);
    sub_10068E2EC();
    sub_10068F0C8(&qword_1008F9078, type metadata accessor for WorkoutVoiceOnboardingViewiOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9068);
  }

  return result;
}

unint64_t sub_10068E2EC()
{
  result = qword_1008F9070;
  if (!qword_1008F9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9070);
  }

  return result;
}

unint64_t sub_10068E340()
{
  result = qword_1008F9080;
  if (!qword_1008F9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9080);
  }

  return result;
}

unint64_t sub_10068E394()
{
  result = qword_1008F9088;
  if (!qword_1008F9088)
  {
    sub_100141EEC(&qword_1008F9060);
    sub_10068F0C8(&qword_1008F9078, type metadata accessor for WorkoutVoiceOnboardingViewiOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9088);
  }

  return result;
}

uint64_t sub_10068E46C()
{
  v1 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  __chkstk_darwin(v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008F9138);
  __chkstk_darwin(v4);
  v6 = (&v20 - v5);
  if (qword_1008DAFD0 != -1)
  {
    swift_once();
  }

  if (byte_1009261D8 == 1)
  {
    type metadata accessor for WorkoutOnboardingCoordinatoriOS();
    sub_10068F0C8(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
    *v6 = EnvironmentObject.init()();
    v6[1] = v7;
    swift_storeEnumTagMultiPayload();
    sub_10068E2EC();
    sub_10068F0C8(&qword_1008F9078, type metadata accessor for WorkoutVoiceOnboardingViewiOS);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v9 = *(type metadata accessor for WorkoutOnboardingNavigationiOS() + 20);
    v10 = v1[9];
    v11 = type metadata accessor for InferenceClient();
    (*(*(v11 - 8) + 16))(&v3[v10], v0 + v9, v11);
    type metadata accessor for WorkoutOnboardingCoordinatoriOS();
    sub_10068F0C8(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
    v12 = EnvironmentObject.init()();
    v14 = v13;
    *&v3[v1[7]] = swift_getKeyPath();
    sub_100140278(&qword_1008DB078);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v21) = 0;
    State.init(wrappedValue:)();
    v15 = v24;
    *v3 = v23;
    *(v3 + 1) = v15;
    *(v3 + 2) = v12;
    *(v3 + 3) = v14;
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    sub_10068F0C8(&qword_1008DB070, &type metadata accessor for WorkoutVoiceAvailabilityProvider);
    *(v3 + 4) = Environment.init<A>(_:)();
    v3[40] = v16 & 1;
    v17 = &v3[v1[8]];
    v21 = 0;
    v22 = 1;
    sub_100140278(&qword_1008DECE8);
    State.init(wrappedValue:)();
    v18 = v24;
    v19 = v25;
    *v17 = v23;
    v17[8] = v18;
    *(v17 + 2) = v19;
    sub_10068F110(v3, v6, type metadata accessor for WorkoutVoiceOnboardingViewiOS);
    swift_storeEnumTagMultiPayload();
    sub_10068E2EC();
    sub_10068F0C8(&qword_1008F9078, type metadata accessor for WorkoutVoiceOnboardingViewiOS);
    _ConditionalContent<>.init(storage:)();
    return sub_10068F178(v3);
  }
}

uint64_t sub_10068E890(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F9130);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  if (*a1)
  {
    v10 = *(type metadata accessor for WorkoutOnboardingNavigationiOS() + 20);
    v11 = v4[9];
    v12 = type metadata accessor for InferenceClient();
    (*(*(v12 - 8) + 16))(&v6[v11], a2 + v10, v12);
    type metadata accessor for WorkoutOnboardingCoordinatoriOS();
    sub_10068F0C8(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
    v13 = EnvironmentObject.init()();
    v15 = v14;
    *&v6[v4[7]] = swift_getKeyPath();
    sub_100140278(&qword_1008DB078);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v23) = 0;
    State.init(wrappedValue:)();
    v16 = v26;
    *v6 = v25;
    *(v6 + 1) = v16;
    *(v6 + 2) = v13;
    *(v6 + 3) = v15;
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    sub_10068F0C8(&qword_1008DB070, &type metadata accessor for WorkoutVoiceAvailabilityProvider);
    *(v6 + 4) = Environment.init<A>(_:)();
    v6[40] = v17 & 1;
    v18 = &v6[v4[8]];
    v23 = 0;
    v24 = 1;
    sub_100140278(&qword_1008DECE8);
    State.init(wrappedValue:)();
    v19 = v26;
    v20 = v27;
    *v18 = v25;
    v18[8] = v19;
    *(v18 + 2) = v20;
    sub_10068F110(v6, v9, type metadata accessor for WorkoutVoiceOnboardingViewiOS);
    swift_storeEnumTagMultiPayload();
    sub_10068F0C8(&qword_1008F9078, type metadata accessor for WorkoutVoiceOnboardingViewiOS);
    _ConditionalContent<>.init(storage:)();
    return sub_10068F178(v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10068F0C8(&qword_1008F9078, type metadata accessor for WorkoutVoiceOnboardingViewiOS);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10068EC2C()
{
  type metadata accessor for WorkoutOnboardingCoordinatoriOS();
  sub_10068F0C8(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
  v0 = EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  sub_100140278(&qword_1008E8F88);
  sub_100140278(&qword_1008F9038);
  sub_10014A6B0(&qword_1008F9040, &qword_1008E8F88);
  sub_10014A6B0(&qword_1008F9048, &qword_1008E8F88);
  sub_10014A6B0(&qword_1008F9050, &qword_1008E8F88);
  sub_100141EEC(&qword_1008F9058);
  sub_100141EEC(&qword_1008F9060);
  sub_10068E230();
  sub_10068E340();
  sub_10068E394();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(path:root:)();
}

uint64_t type metadata accessor for WorkoutOnboardingNavigationiOS()
{
  result = qword_1008F90E8;
  if (!qword_1008F90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10068EEF8()
{
  sub_1004110E0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InferenceClient();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10068EF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutOnboardingNavigationiOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10068EFE0(_BYTE *a1)
{
  v3 = *(type metadata accessor for WorkoutOnboardingNavigationiOS() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10068E890(a1, v4);
}

uint64_t sub_10068F060(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F9058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10068F0C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10068F110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10068F178(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10068F1D8(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR___CHStandardActivityItemsViewModel_compoundActivityTypeProvider);
  swift_unknownObjectRetain();
  v8 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();
  v9 = dispatch thunk of LiveWorkoutConfiguration.topLevelActivityType.getter();

  v10 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();
  v11 = dispatch thunk of LiveWorkoutConfiguration.currentGoal.getter();

  v12 = [a1 activityEndDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v14 = *(v4 + 8);
  v14(v6, v3);
  [v7 registerWorkoutOccurrenceWithActivityType:v9 goal:v11 date:isa];
  swift_unknownObjectRelease();

  v15 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();
  v16 = LiveWorkoutConfiguration.configuration.getter();

  v17 = [a1 activityEndDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of WorkoutConfigurationOccurrenceStore.registerOccurrence(for:completionDate:)();
  return (v14)(v6, v3);
}

id sub_10068F3FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardActivityItemsViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10068F49C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StandardActivityItemsViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10068F4D8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10068F540()
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ChartPoint();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10068F5D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10068F644(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_10068F794(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

BOOL sub_10068F9B8(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case '\'':
      if (a2 != 39)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '(':
      if (a2 != 40)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case ')':
      if (a2 != 41)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '*':
      if (a2 != 42)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '+':
      if (a2 != 43)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case ',':
      if (a2 != 44)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '-':
      if (a2 != 45)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '.':
      if (a2 != 46)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '/':
      if (a2 != 47)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '0':
      if (a2 != 48)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '1':
      if (a2 != 49)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '2':
      if (a2 != 50)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '3':
      if (a2 != 51)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    case '4':
      if (a2 != 52)
      {
        goto LABEL_31;
      }

      result = 1;
      break;
    default:
      if (a2 - 39 >= 0xE)
      {
        result = a1 == a2;
      }

      else
      {
LABEL_31:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryCoordinatorEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 52;
  if (a2 + 52 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 52;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 52;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x27)
  {
    v8 = v7 - 38;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xF)
  {
    return v8 - 14;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SummaryCoordinatorEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 52;
  if (a3 + 52 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xCC)
  {
    v5 = 0;
  }

  if (a2 > 0xCB)
  {
    v6 = ((a2 - 204) >> 8) + 1;
    *result = a2 + 52;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 52;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10068FC44(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x27)
  {
    return v1 - 38;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10068FC58(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 38;
  }

  return result;
}

uint64_t type metadata accessor for EntryLinksListView()
{
  result = qword_1008F92D0;
  if (!qword_1008F92D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10068FCEC()
{
  type metadata accessor for ActivityDashboardViewController();
  if (v0 <= 0x3F)
  {
    sub_100182A34();
    if (v1 <= 0x3F)
    {
      sub_10068FD98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10068FD98()
{
  if (!qword_1008F92E0)
  {
    sub_100479000();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F92E0);
    }
  }
}

uint64_t sub_10068FE10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EntryLinksListView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100183F44(*(v1 + 8));
  KeyPath = swift_getKeyPath();
  sub_100690BA0(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_100690C04(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v18 = v6;
  v14 = &v18;
  v15 = KeyPath;
  v16 = sub_100690C68;
  v17 = v9;
  sub_100140278(&qword_1008F9320);
  sub_100690CF4();
  List<>.init(content:)();

  sub_100690BA0(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = swift_allocObject();
  sub_100690C04(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v8);
  result = sub_100140278(&qword_1008F9340);
  v12 = (a1 + *(result + 36));
  *v12 = sub_100690DA4;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

uint64_t sub_100690000(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryLinksListView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *a1;
  sub_100690BA0(a2, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100690C04(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + v8 + v6) = v7;
  v11[16] = v7;
  v12 = a2;
  sub_100140278(&qword_1008F9350);
  sub_10014A6B0(&qword_1008F9358, &qword_1008F9350);
  return Button.init(action:label:)();
}

uint64_t sub_100690190()
{
  sub_100140278(&qword_1008F9360);
  sub_100140278(&qword_1008F9368);
  sub_10014A6B0(&qword_1008F9370, &qword_1008F9360);
  sub_100690EE4();
  return Label.init(title:icon:)();
}

double sub_100690284@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v22 = 1;
  sub_10069042C(a1, &v12);
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_10001B104(&v23, v11, &qword_1008F93A0);
  sub_10000EA04(v32, &qword_1008F93A0);
  *(&v21[6] + 7) = v29;
  *(&v21[5] + 7) = v28;
  *(&v21[2] + 7) = v25;
  *(&v21[1] + 7) = v24;
  *(&v21[7] + 7) = v30;
  *(&v21[8] + 7) = v31;
  *(&v21[3] + 7) = v26;
  *(&v21[4] + 7) = v27;
  *(v21 + 7) = v23;
  v5 = v21[4];
  *(a2 + 97) = v21[5];
  v6 = v21[7];
  *(a2 + 113) = v21[6];
  *(a2 + 129) = v6;
  *(a2 + 144) = *(&v21[7] + 15);
  v7 = v21[0];
  *(a2 + 33) = v21[1];
  result = *&v21[2];
  v9 = v21[3];
  *(a2 + 49) = v21[2];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_10069042C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000492D8(a1);
  v54 = v8;
  sub_10000FCBC();
  v43 = Text.init<A>(_:)();
  v42 = v9;
  v11 = v10;
  v44 = v12;
  KeyPath = swift_getKeyPath();
  static Font.body.getter();
  v13 = enum case for Font.Leading.tight(_:);
  v14 = *(v5 + 104);
  v14(v7, enum case for Font.Leading.tight(_:), v4);
  v40 = Font.leading(_:)();

  v15 = *(v5 + 8);
  v15(v7, v4);
  v38 = swift_getKeyPath();
  LOBYTE(v53) = v11 & 1;
  v16 = v11 & 1;
  HIDWORD(v34) = v16;
  LOBYTE(v48) = 0;
  v37 = static Color.white.getter();
  v39 = Image.init(systemName:)();
  static Font.body.getter();
  v14(v7, v13, v4);
  v36 = Font.leading(_:)();

  v15(v7, v4);
  v35 = swift_getKeyPath();
  v17 = [objc_opt_self() tertiaryLabelColor];
  v18 = Color.init(_:)();
  v19 = swift_getKeyPath();
  v53 = v18;
  v20 = AnyShapeStyle.init<A>(_:)();
  v21 = v43;
  v22 = v42;
  *&v48 = v43;
  *(&v48 + 1) = v42;
  LOBYTE(v49) = v16;
  *(&v49 + 1) = *v47;
  DWORD1(v49) = *&v47[3];
  v23 = v44;
  v24 = KeyPath;
  *(&v49 + 1) = v44;
  *&v50 = KeyPath;
  *(&v50 + 1) = 1;
  LOBYTE(v51) = 0;
  *(&v51 + 1) = *v46;
  DWORD1(v51) = *&v46[3];
  v25 = v38;
  v26 = v40;
  *(&v51 + 1) = v38;
  *&v52 = v40;
  v27 = v37;
  *(&v52 + 1) = v37;
  v45 = 1;
  v28 = v48;
  v29 = v49;
  v30 = v52;
  v31 = v50;
  *(a2 + 48) = v51;
  *(a2 + 64) = v30;
  *(a2 + 16) = v29;
  *(a2 + 32) = v31;
  *a2 = v28;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  v32 = v35;
  *(a2 + 96) = v39;
  *(a2 + 104) = v32;
  *(a2 + 112) = v36;
  *(a2 + 120) = v19;
  *(a2 + 128) = v20;
  sub_10001B104(&v48, &v53, &qword_1008F93A8);
  v53 = v21;
  v54 = v22;
  v55 = BYTE4(v34);
  *v56 = *v47;
  *&v56[3] = *&v47[3];
  v57 = v23;
  v58 = v24;
  v59 = 1;
  v60 = 0;
  *v61 = *v46;
  *&v61[3] = *&v46[3];
  v62 = v25;
  v63 = v26;
  v64 = v27;
  return sub_10000EA04(&v53, &qword_1008F93A8);
}

void sub_10069081C(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100183C84(a1);
  v8 = Image.init(_internalSystemName:)();
  static Font.body.getter();
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  v9 = Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v11 = [objc_opt_self() briskColors];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 gradientLightColor];

    if (v13)
    {
      v14 = Color.init(uiColor:)();
      type metadata accessor for EntryLinksListView();
      sub_100140278(&qword_1008F9270);
      ScaledMetric.wrappedValue.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *a2 = v8;
      *(a2 + 8) = 1;
      *(a2 + 16) = KeyPath;
      *(a2 + 24) = v9;
      *(a2 + 32) = v14;
      v15 = v16[1];
      *(a2 + 40) = v16[0];
      *(a2 + 56) = v15;
      *(a2 + 72) = v16[2];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100690A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_100140278(&qword_1008DE240);
  sub_100140278(&qword_1008F9338);
  sub_10014A6B0(&qword_1008F9348, &qword_1008DE240);
  sub_10018297C();
  sub_10014A6B0(&qword_1008F9330, &qword_1008F9338);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100690BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryLinksListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100690C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryLinksListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100690C68(char *a1)
{
  v3 = *(type metadata accessor for EntryLinksListView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100690000(a1, v4);
}

unint64_t sub_100690CF4()
{
  result = qword_1008F9328;
  if (!qword_1008F9328)
  {
    sub_100141EEC(&qword_1008F9320);
    sub_10014A6B0(&qword_1008F9330, &qword_1008F9338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9328);
  }

  return result;
}

uint64_t sub_100690E08(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

unint64_t sub_100690EE4()
{
  result = qword_1008F9378;
  if (!qword_1008F9378)
  {
    sub_100141EEC(&qword_1008F9368);
    sub_100690F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9378);
  }

  return result;
}

unint64_t sub_100690F70()
{
  result = qword_1008F9380;
  if (!qword_1008F9380)
  {
    sub_100141EEC(&qword_1008F9388);
    sub_100691028();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9380);
  }

  return result;
}

unint64_t sub_100691028()
{
  result = qword_1008F9390;
  if (!qword_1008F9390)
  {
    sub_100141EEC(&qword_1008F9398);
    sub_10034171C();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9390);
  }

  return result;
}

unint64_t sub_1006910E0()
{
  result = qword_1008F93B0;
  if (!qword_1008F93B0)
  {
    sub_100141EEC(&qword_1008F9340);
    sub_10014A6B0(&qword_1008F93B8, &qword_1008F93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F93B0);
  }

  return result;
}

id sub_100691198()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = [objc_opt_self() grayColor];
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSForegroundColorAttributeName;
  *(inited + 64) = sub_1001C8DCC();
  *(inited + 40) = v3;
  v5 = NSForegroundColorAttributeName;
  v6 = v3;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100198304(inited + 32);
  v7 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10017597C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithString:v2 attributes:isa];

  return v9;
}

void sub_1006913B8()
{
  type metadata accessor for WorkoutEffort();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v1 <= 0x3F)
    {
      sub_10069147C();
      if (v2 <= 0x3F)
      {
        sub_10005C91C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10069147C()
{
  if (!qword_1008DDF08)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DDF08);
    }
  }
}

uint64_t sub_1006914E8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_100140278(&qword_1008F9468);
  __chkstk_darwin(v25);
  v3 = &v23 - v2;
  v23 = sub_100140278(&qword_1008F9470);
  __chkstk_darwin(v23);
  v5 = &v23 - v4;
  v24 = sub_100140278(&qword_1008F9478);
  __chkstk_darwin(v24);
  v7 = &v23 - v6;
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  type metadata accessor for EffortGoalAndDate(0);
  v15 = v1;
  sub_10005491C(v14);
  (*(v9 + 104))(v11, enum case for DynamicTypeSize.xLarge(_:), v8);
  sub_10005BEAC(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v16 = dispatch thunk of static Comparable.< infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  if (v16)
  {
    *v3 = static VerticalAlignment.center.getter();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v18 = sub_100140278(&qword_1008F9498);
    sub_100691C78(v15, &v3[*(v18 + 44)]);
    v19 = &qword_1008F9468;
    sub_10001B104(v3, v5, &qword_1008F9468);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F9488, &qword_1008F9478);
    sub_10014A6B0(&qword_1008F9490, &qword_1008F9468);
    _ConditionalContent<>.init(storage:)();
    v20 = v3;
  }

  else
  {
    *v7 = static HorizontalAlignment.center.getter();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v21 = sub_100140278(&qword_1008F9480);
    sub_100691954(v15, &v7[*(v21 + 44)]);
    v19 = &qword_1008F9478;
    sub_10001B104(v7, v5, &qword_1008F9478);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F9488, &qword_1008F9478);
    sub_10014A6B0(&qword_1008F9490, &qword_1008F9468);
    _ConditionalContent<>.init(storage:)();
    v20 = v7;
  }

  return sub_10000EA04(v20, v19);
}

uint64_t sub_100691954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for GoalAndDate(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for EffortView(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for EffortGoalAndDate(0);
  v16 = v15[7];
  v17 = *(a1 + v15[8]);
  v18 = *(a1 + v16);
  v19 = *(a1 + v16 + 8);
  v20 = type metadata accessor for WorkoutEffort();
  (*(*(v20 - 8) + 16))(v14, a1, v20);
  v14[v10[7]] = v17;
  v21 = &v14[v10[8]];
  *v21 = v18;
  v21[8] = v19;
  *&v14[v10[9]] = 0x4020000000000000;
  LOBYTE(v10) = WorkoutEffort.itemHasEffort.getter();
  v22 = v15[5];
  v23 = v4[7];
  v24 = type metadata accessor for AttributedString();
  (*(*(v24 - 8) + 16))(&v8[v23], a1 + v22, v24);
  v25 = (a1 + v15[6]);
  v26 = *v25;
  v27 = v25[1];
  *v8 = v10 & 1;
  v28 = &v8[v4[8]];
  *v28 = v26;
  v28[1] = v27;
  v29 = &v8[v4[9]];
  *v29 = v18;
  v29[8] = v19;
  *&v8[v4[10]] = 0x4020000000000000;
  *&v8[v4[11]] = 0xC008000000000000;
  v30 = v36;
  sub_100692D4C(v14, v36, type metadata accessor for EffortView);
  v31 = v37;
  sub_100692D4C(v8, v37, type metadata accessor for GoalAndDate);
  v32 = v38;
  sub_100692D4C(v30, v38, type metadata accessor for EffortView);
  v33 = sub_100140278(&qword_1008F94A8);
  sub_100692D4C(v31, v32 + *(v33 + 48), type metadata accessor for GoalAndDate);

  sub_100692DB4(v8, type metadata accessor for GoalAndDate);
  sub_100692DB4(v14, type metadata accessor for EffortView);
  sub_100692DB4(v31, type metadata accessor for GoalAndDate);
  return sub_100692DB4(v30, type metadata accessor for EffortView);
}

uint64_t sub_100691C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for GoalAndDate(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for EffortView(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for EffortGoalAndDate(0);
  v16 = v15[7];
  v17 = *(a1 + v15[8]);
  v18 = *(a1 + v16);
  v19 = *(a1 + v16 + 8);
  v20 = type metadata accessor for WorkoutEffort();
  (*(*(v20 - 8) + 16))(v14, a1, v20);
  v14[v10[7]] = v17;
  v21 = &v14[v10[8]];
  *v21 = v18;
  v21[8] = v19;
  *&v14[v10[9]] = 0x4020000000000000;
  LOBYTE(v10) = WorkoutEffort.itemHasEffort.getter();
  v22 = v15[5];
  v23 = v4[7];
  v24 = type metadata accessor for AttributedString();
  (*(*(v24 - 8) + 16))(&v8[v23], a1 + v22, v24);
  v25 = (a1 + v15[6]);
  v26 = *v25;
  v27 = v25[1];
  *v8 = v10 & 1;
  v28 = &v8[v4[8]];
  *v28 = v26;
  v28[1] = v27;
  v29 = &v8[v4[9]];
  *v29 = v18;
  v29[8] = v19;
  *&v8[v4[10]] = 0x4020000000000000;
  *&v8[v4[11]] = 0xC008000000000000;
  v30 = v37;
  sub_100692D4C(v14, v37, type metadata accessor for EffortView);
  v31 = v38;
  sub_100692D4C(v8, v38, type metadata accessor for GoalAndDate);
  v32 = v39;
  sub_100692D4C(v30, v39, type metadata accessor for EffortView);
  v33 = sub_100140278(&qword_1008F94A0);
  v34 = v32 + *(v33 + 48);
  *v34 = 0;
  *(v34 + 8) = 0;
  sub_100692D4C(v31, v32 + *(v33 + 64), type metadata accessor for GoalAndDate);

  sub_100692DB4(v8, type metadata accessor for GoalAndDate);
  sub_100692DB4(v14, type metadata accessor for EffortView);
  sub_100692DB4(v31, type metadata accessor for GoalAndDate);
  return sub_100692DB4(v30, type metadata accessor for EffortView);
}

uint64_t sub_100691FB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v47 = a1;
  v3 = type metadata accessor for RedactionReasons();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  __chkstk_darwin(v3);
  v48 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v6 - 8);
  v8 = v40 - v7;
  v9 = sub_100140278(&qword_1008E5BA8);
  __chkstk_darwin(v9);
  v11 = v40 - v10;
  v12 = sub_100140278(&qword_1008E5BB0);
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  v15 = sub_100140278(&qword_1008F9620);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v41 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v40 - v19;
  v21 = type metadata accessor for WorkoutEffort();
  (*(*(v21 - 8) + 16))(v11, a1, v21);
  static Font.body.getter();
  static Font.Weight.medium.getter();
  v22 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v24 = &v11[*(v9 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = enum case for Font.Design.rounded(_:);
  v26 = type metadata accessor for Font.Design();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v8, v25, v26);
  (*(v27 + 56))(v8, 0, 1, v26);
  v28 = sub_10029A088();
  View.fontDesign(_:)();
  sub_10000EA04(v8, &qword_1008DC448);
  sub_10000EA04(v11, &qword_1008E5BA8);
  v29 = type metadata accessor for EffortView(0);
  if (*(v47 + *(v29 + 20)) == 1)
  {
    static RedactionReasons.placeholder.getter();
    v30 = v44;
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
    v40[1] = sub_10005BEAC(&qword_1008F9628, &type metadata accessor for RedactionReasons);
    sub_100140278(&qword_1008F9630);
    sub_10014A6B0(&qword_1008F9638, &qword_1008F9630);
    v30 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  v49 = v9;
  v50 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v48;
  v32 = v43;
  View.redacted(reason:)();
  (*(v45 + 8))(v31, v30);
  (*(v42 + 8))(v14, v32);
  v33 = *(v47 + *(v29 + 28));
  v34 = *(v16 + 16);
  v35 = v41;
  v34(v41, v20, v15);
  v36 = v46;
  v34(v46, v35, v15);
  v37 = &v36[*(sub_100140278(&qword_1008F9640) + 48)];
  *v37 = v33;
  v37[8] = 0;
  v38 = *(v16 + 8);
  v38(v20, v15);
  return (v38)(v35, v15);
}

double sub_100692574@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&qword_1008F9608);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_100140278(&qword_1008F9610);
  sub_100691FB0(v1, &v5[*(v6 + 44)]);
  WorkoutEffort.itemHasEffort.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000A7078(v5, a1);
  v7 = (a1 + *(sub_100140278(&qword_1008F9618) + 36));
  v8 = v10[1];
  *v7 = v10[0];
  v7[1] = v8;
  result = *&v11;
  v7[2] = v11;
  return result;
}

__n128 sub_1006926C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  v19 = 1;
  sub_100692894(v2, &v12);
  v25 = v16;
  v26[0] = v17[0];
  *(v26 + 9) = *(v17 + 9);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v27[0] = v12;
  v27[1] = v13;
  v27[2] = v14;
  v27[3] = v15;
  v27[4] = v16;
  v28[0] = v17[0];
  *(v28 + 9) = *(v17 + 9);
  sub_10001B104(&v21, &v11, &qword_1008F95F8);
  sub_10000EA04(v27, &qword_1008F95F8);
  *&v18[55] = v24;
  *&v18[71] = v25;
  *&v18[87] = v26[0];
  *&v18[96] = *(v26 + 9);
  *&v18[7] = v21;
  *&v18[23] = v22;
  *&v18[39] = v23;
  v5 = v19;
  if (*v2 == 1)
  {
    type metadata accessor for GoalAndDate(0);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v20[7] = v12;
  *&v20[23] = v13;
  *&v20[39] = v14;
  v6 = *&v18[32];
  *(a1 + 65) = *&v18[48];
  v7 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v7;
  *(a1 + 113) = *&v18[96];
  v8 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v8;
  *(a1 + 49) = v6;
  *(a1 + 176) = *&v20[47];
  result = *&v20[16];
  *(a1 + 161) = *&v20[32];
  v10 = *v20;
  *(a1 + 145) = result;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 129) = v10;
  return result;
}

uint64_t sub_100692894@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v3 - 8);
  v49 = &v48 - v4;
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v51 = a1;
  if (*a1 == 1)
  {
    v48 = type metadata accessor for GoalAndDate(0);
    (*(v6 + 16))(v8, &v51[*(v48 + 20)], v5);
    v14 = Text.init(_:)();
    v16 = v15;
    v18 = v17;
    v19 = enum case for Font.Design.rounded(_:);
    v20 = type metadata accessor for Font.Design();
    v21 = *(v20 - 8);
    v22 = v49;
    (*(v21 + 104))(v49, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);
    v9 = Text.fontDesign(_:)();
    v10 = v23;
    v25 = v24;
    v12 = v26;
    sub_10004642C(v14, v16, v18 & 1);

    sub_10000EA04(v22, &qword_1008DC448);
    v13 = *&v51[*(v48 + 32)];
    v11 = v25 & 1;
    sub_10006965C(v9, v10, v11);

    sub_10004642C(v9, v10, v11);

    sub_10006965C(v9, v10, v11);
  }

  v27 = &v51[*(type metadata accessor for GoalAndDate(0) + 24)];
  v28 = v13;
  v29 = *v27;
  v30 = v27[1];

  v31 = v12;
  v32 = v10;
  v33 = v9;
  v34 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  LOBYTE(v56[0]) = 0;
  *&v53 = v29;
  *(&v53 + 1) = v30;
  LOBYTE(v54) = v34;
  *(&v54 + 1) = v35;
  *v55 = v37;
  *&v55[8] = v39;
  *&v55[16] = v41;
  v55[24] = 0;
  sub_1001E53F8(v33, v32, v11, v31);
  sub_10001B104(&v53, v56, &qword_1008F9600);
  sub_1001E543C(v33, v32, v11, v31);
  *(v52 + 7) = v53;
  *(&v52[1] + 7) = v54;
  *(&v52[2] + 7) = *v55;
  v52[3] = *&v55[9];
  v43 = v50;
  *v50 = v33;
  v43[1] = v32;
  v43[2] = v11;
  v43[3] = v31;
  v43[4] = v28;
  *(v43 + 40) = 0;
  v44 = v52[0];
  v45 = v52[1];
  v46 = v52[2];
  *(v43 + 89) = v52[3];
  *(v43 + 73) = v46;
  *(v43 + 57) = v45;
  *(v43 + 41) = v44;
  v56[0] = v29;
  v56[1] = v30;
  v57 = v34;
  v58 = v36;
  v59 = v38;
  v60 = v40;
  v61 = v42;
  v62 = 0;
  sub_10000EA04(v56, &qword_1008F9600);
  return sub_1001E543C(v33, v32, v11, v31);
}

uint64_t sub_100692D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100692DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100692E3C()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_10069147C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100692F10()
{
  type metadata accessor for WorkoutEffort();
  if (v0 <= 0x3F)
  {
    sub_10069147C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100692FA4()
{
  result = qword_1008F95E8;
  if (!qword_1008F95E8)
  {
    sub_100141EEC(&qword_1008F95F0);
    sub_10014A6B0(&qword_1008F9488, &qword_1008F9478);
    sub_10014A6B0(&qword_1008F9490, &qword_1008F9468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F95E8);
  }

  return result;
}

unint64_t sub_1006930C0()
{
  result = qword_1008F9648;
  if (!qword_1008F9648)
  {
    sub_100141EEC(&qword_1008F9650);
    sub_10014A6B0(&qword_1008F9658, &qword_1008F9660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9648);
  }

  return result;
}

unint64_t sub_100693178()
{
  result = qword_1008F9668;
  if (!qword_1008F9668)
  {
    sub_100141EEC(&qword_1008F9618);
    sub_10014A6B0(&qword_1008F9670, &qword_1008F9608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9668);
  }

  return result;
}

void sub_100693230()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008F9678 = v2;
}

uint64_t sub_10069329C()
{
  result = FIUICurrentLanguageRequiresTallScript();
  v1 = 0.0;
  if (result)
  {
    v1 = 5.0;
  }

  qword_1008F9680 = *&v1;
  return result;
}

char *sub_1006932CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_titleLabel;
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DAFD8 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();

  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];
  v5 = [objc_opt_self() whiteColor];
  v6 = UILabel.withTextColor(_:)();

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v2] = v6;
  v7 = OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_subtitleLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v7] = v8;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MindfulnessSessionDetailItemView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_titleLabel];
  v11 = v9;
  [v11 addSubview:v10];
  [v11 addSubview:*&v11[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_subtitleLabel]];
  sub_1006934C0();

  return v11;
}

void sub_1006934C0()
{
  v1 = v0;
  v26 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D9800;
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_titleLabel];
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  if (qword_1008DAFE0 != -1)
  {
    swift_once();
  }

  v6 = [v4 constraintEqualToAnchor:v5 constant:{*&qword_1008F9680, v26}];

  *(v2 + 32) = v6;
  v7 = [v3 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = *&v1[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_subtitleLabel];
  v14 = [v13 topAnchor];
  v15 = [v3 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v2 + 56) = v16;
  v17 = [v13 leadingAnchor];
  v18 = [v1 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v2 + 64) = v19;
  v20 = [v13 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v2 + 72) = v22;
  v23 = [v13 bottomAnchor];
  v24 = [v1 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v2 + 80) = v25;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
}

id sub_10069386C(uint64_t a1, unsigned __int8 a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_titleLabel);
  if (a2 <= 1u)
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 localizedStringForKey:v6 value:0 table:0];

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v10 value:0 table:v11];

  if (!v7)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

LABEL_4:

  [v4 setText:v7];
  v8 = *(v2 + OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_subtitleLabel);

  return [v8 setAttributedText:a1];
}

id sub_100693AF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindfulnessSessionDetailItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100693B9C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  return *(a1 + 8) == 1 && *(a2 + 8) != 0;
}

BOOL sub_100693BC0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v2 = *(a2 + 8) == 1;
  }

  else
  {
    v2 = 0;
  }

  return !v2;
}

BOOL sub_100693BE4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (*(a2 + 8))
  {
    v2 = *(a1 + 8) == 1;
  }

  else
  {
    v2 = 0;
  }

  return !v2;
}

BOOL sub_100693C08(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    return 1;
  }

  return *(a2 + 8) == 1 && *(a1 + 8) != 0;
}

unint64_t sub_100693C48()
{
  result = qword_1008F96C0;
  if (!qword_1008F96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F96C0);
  }

  return result;
}

uint64_t sub_100693C9C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
LABEL_4:
        sub_1000059F8(0, &qword_1008DB898);
        return static NSObject.== infix(_:_:)() & 1;
      }
    }

    else if (a4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_100693D2C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_titleLabel;
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DAFD8 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();

  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];
  v5 = [objc_opt_self() whiteColor];
  v6 = UILabel.withTextColor(_:)();

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v6;
  v7 = OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_subtitleLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v7) = v8;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

FitnessApp::DiveSectionMode_optional __swiftcall DiveSectionMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_100693EF4()
{
  result = qword_1008F96C8;
  if (!qword_1008F96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F96C8);
  }

  return result;
}

id sub_100693F58()
{
  result = [objc_opt_self() fu_sausageFontOfSize:30.0];
  if (result)
  {
    qword_1009261E0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100693FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = UIView.forAutoLayout()();

  *&v4[v7] = v9;
  v10 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = UIView.forAutoLayout()();

  *&v4[v10] = v12;
  v13 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
  v14 = [objc_allocWithZone(UILabel) init];
  v15 = UIView.forAutoLayout()();

  *&v4[v13] = v15;
  v16 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2;
  v17 = [objc_allocWithZone(UILabel) init];
  v18 = UIView.forAutoLayout()();

  *&v4[v16] = v18;
  v19 = OBJC_IVAR___CHDivingDetailMapTableViewCell_separatorView;
  v20 = [objc_allocWithZone(UIView) init];
  v21 = UIView.forAutoLayout()();

  *&v4[v19] = v21;
  *&v4[OBJC_IVAR___CHDivingDetailMapTableViewCell_dive] = 0;
  *&v4[OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator] = 0;
  if (a3)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v25.receiver = v4;
  v25.super_class = type metadata accessor for DivingDetailMapTableViewCell();
  v23 = objc_msgSendSuper2(&v25, "initWithStyle:reuseIdentifier:", a1, v22);

  return v23;
}

void sub_100694190(void *a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + OBJC_IVAR___CHDivingDetailMapTableViewCell_dive);
  *(v3 + OBJC_IVAR___CHDivingDetailMapTableViewCell_dive) = a1;
  v7 = a1;

  v8 = OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator;
  v9 = *(v3 + OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator);
  *(v3 + OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator) = a3;
  v10 = a3;

  v11 = *(v3 + v8);
  if (!v11 || (v12 = *(v11 + OBJC_IVAR___CHDivingDataCalculator_diveSectionMode)) == 0)
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      sub_1001AB77C();
      goto LABEL_10;
    }

    sub_1001ABD60();
    goto LABEL_19;
  }

  if (v12 == 1)
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      sub_1006007E8();
LABEL_10:
      sub_1006943D0();

      sub_100694E08();
      return;
    }

    sub_100600E6C();
LABEL_19:

    sub_1006943D0();
    return;
  }

  sub_1003DAC48(a2);
}

void sub_1006943D0()
{
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = OBJC_IVAR___CHDivingDetailMapTableViewCell_separatorView;
  v4 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_separatorView];
  v5 = [v1 separatorColor];
  [v4 setBackgroundColor:v5];

  v6 = [v0 contentView];
  v52 = v3;
  [v6 addSubview:*&v0[v3]];

  v7 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
  v8 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1];
  v9 = [v0 contentView];
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 constraintWithItem:v11 attribute:11 relatedBy:0 toItem:v9 attribute:3 multiplier:1.0 constant:28.0];

  v13 = *&v0[v7];
  v14 = [v0 contentView];
  v15 = sub_1000059F8(0, &qword_1008E7580);
  v53[3] = v15;
  v53[0] = v14;
  v16 = sub_1000B7B88();
  if (v15)
  {
    v17 = sub_1000066AC(v53, v15);
    v18 = *(v15 - 8);
    v19 = __chkstk_darwin(v17);
    v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = v13;
    v23 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v21, v15);
    sub_100005A40(v53);
  }

  else
  {
    v24 = v13;
    v23 = 0;
  }

  v25 = [v10 constraintWithItem:v13 attribute:5 relatedBy:0 toItem:v23 attribute:5 multiplier:1.0 constant:v16];

  swift_unknownObjectRelease();
  v26 = [v0 contentView];
  sub_100140278(&unk_1008E4E20);
  v27 = swift_allocObject();
  v49 = xmmword_1006D68D0;
  *(v27 + 16) = xmmword_1006D68D0;
  *(v27 + 32) = v12;
  *(v27 + 40) = v25;
  sub_1000059F8(0, &qword_1008DC980);
  v51 = v12;
  v50 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 addConstraints:isa];

  v29 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
  v30 = [v10 constraintWithItem:*&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1] attribute:11 relatedBy:0 toItem:*&v0[v7] attribute:11 multiplier:1.0 constant:30.0];
  v31 = [v10 constraintWithItem:*&v0[v29] attribute:5 relatedBy:0 toItem:*&v0[v7] attribute:5 multiplier:1.0 constant:0.0];
  v32 = [v0 contentView];
  v33 = swift_allocObject();
  *(v33 + 16) = v49;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  v34 = v30;
  v35 = v31;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v32 addConstraints:v36];

  v37 = *&v0[v52];
  v38 = [v0 contentView];
  sub_100694A28(v37, v38);

  v39 = [v0 contentView];
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v39 addConstraints:v40];

  v41 = [v0 contentView];
  v42 = [v41 heightAnchor];

  v43 = [v42 constraintEqualToConstant:74.0];
  LODWORD(v44) = 1148829696;
  [v43 setPriority:v44];
  [v43 setActive:1];
  v45 = [v0 contentView];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1006D4E70;
  *(v46 + 32) = v43;
  v47 = v43;
  v48 = Array._bridgeToObjectiveC()().super.isa;

  [v45 addConstraints:v48];
}

double sub_100694A28(void *a1, void *a2)
{
  v4 = sub_1000059F8(0, &qword_1008E7580);
  v37 = v4;
  v36[0] = a2;
  v5 = a2;
  v6 = sub_1000B7B88();
  if (v4)
  {
    v7 = sub_1000066AC(v36, v4);
    v8 = *(v4 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = a1;
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v4);
    sub_100005A40(v36);
  }

  else
  {
    v14 = a1;
    v13 = 0;
  }

  v15 = objc_opt_self();
  v16 = [v15 constraintWithItem:a1 attribute:5 relatedBy:0 toItem:v13 attribute:5 multiplier:1.0 constant:{v6, v36[0]}];

  swift_unknownObjectRelease();
  v17 = [v15 constraintWithItem:a1 attribute:4 relatedBy:0 toItem:v5 attribute:4 multiplier:1.0 constant:0.0];
  v37 = v4;
  v36[0] = v5;
  v18 = v5;
  v19 = sub_1000B7B88();
  if (v4)
  {
    v20 = sub_1000066AC(v36, v4);
    v21 = *(v4 - 8);
    v22 = __chkstk_darwin(v20);
    v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = a1;
    v26 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v21 + 8))(v24, v4);
    sub_100005A40(v36);
  }

  else
  {
    v27 = a1;
    v26 = 0;
  }

  v28 = [v15 constraintWithItem:a1 attribute:6 relatedBy:0 toItem:v26 attribute:6 multiplier:1.0 constant:-v19];

  swift_unknownObjectRelease();
  v29 = [objc_opt_self() mainScreen];
  [v29 scale];
  v31 = v30;

  v32 = a1;
  v33 = [v15 constraintWithItem:v32 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:1.0 / v31];

  sub_100140278(&unk_1008E4E20);
  v34 = swift_allocObject();
  *&result = 4;
  *(v34 + 16) = xmmword_1006D5300;
  *(v34 + 32) = v16;
  *(v34 + 40) = v17;
  *(v34 + 48) = v28;
  *(v34 + 56) = v33;
  return result;
}

void sub_100694E08()
{
  v1 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2;
  v2 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2];
  v3 = [v0 contentView];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 constraintWithItem:v5 attribute:11 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:28.0];

  v7 = *&v0[v1];
  v8 = [v0 contentView];
  v9 = sub_1000059F8(0, &qword_1008E7580);
  v36[3] = v9;
  v36[0] = v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];
  v12 = v11;

  if (v9)
  {
    v13 = sub_1000066AC(v36, v9);
    v14 = *(v9 - 8);
    v15 = __chkstk_darwin(v13);
    v17 = &v36[-2] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17, v15);
    v18 = v7;
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v14 + 8))(v17, v9);
    sub_100005A40(v36);
  }

  else
  {
    v20 = v7;
    v19 = 0;
  }

  v21 = [v4 constraintWithItem:v7 attribute:5 relatedBy:0 toItem:v19 attribute:5 multiplier:1.0 constant:v12 * 0.5];

  swift_unknownObjectRelease();
  v22 = [v0 contentView];
  sub_100140278(&unk_1008E4E20);
  v23 = swift_allocObject();
  v35 = xmmword_1006D68D0;
  *(v23 + 16) = xmmword_1006D68D0;
  *(v23 + 32) = v6;
  *(v23 + 40) = v21;
  sub_1000059F8(0, &qword_1008DC980);
  v24 = v6;
  v25 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 addConstraints:isa];

  v27 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2;
  v28 = [v4 constraintWithItem:*&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2] attribute:11 relatedBy:0 toItem:*&v0[v1] attribute:11 multiplier:1.0 constant:30.0];
  v29 = [v4 constraintWithItem:*&v0[v27] attribute:5 relatedBy:0 toItem:*&v0[v1] attribute:5 multiplier:1.0 constant:0.0];
  v30 = [v0 contentView];
  v31 = swift_allocObject();
  *(v31 + 16) = v35;
  *(v31 + 32) = v28;
  *(v31 + 40) = v29;
  v32 = v28;
  v33 = v29;
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v30 addConstraints:v34];
}

id sub_10069524C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DivingDetailMapTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100695340()
{
  v1 = v0;
  v2 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
  v3 = [objc_allocWithZone(UILabel) init];
  v4 = UIView.forAutoLayout()();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2;
  v6 = [objc_allocWithZone(UILabel) init];
  v7 = UIView.forAutoLayout()();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = UIView.forAutoLayout()();

  *(v1 + v8) = v10;
  v11 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = UIView.forAutoLayout()();

  *(v1 + v11) = v13;
  v14 = OBJC_IVAR___CHDivingDetailMapTableViewCell_separatorView;
  v15 = [objc_allocWithZone(UIView) init];
  v16 = UIView.forAutoLayout()();

  *(v1 + v14) = v16;
  *(v1 + OBJC_IVAR___CHDivingDetailMapTableViewCell_dive) = 0;
  *(v1 + OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1006954B0()
{
  result = qword_1008F9730;
  if (!qword_1008F9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9730);
  }

  return result;
}

unint64_t sub_100695508()
{
  result = qword_1008F9738;
  if (!qword_1008F9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9738);
  }

  return result;
}

unint64_t sub_100695560()
{
  result = qword_1008F9740;
  if (!qword_1008F9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9740);
  }

  return result;
}

uint64_t sub_1006955B8()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD198);
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_1009261E8 = v0;
  unk_1009261F0 = result;
  return result;
}

uint64_t sub_100695678()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_1009261F8);
  sub_10001AC90(v5, qword_1009261F8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1006957E8@<X0>(void *a1@<X8>)
{
  if (qword_1008DAFF0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1009261F0;
  *a1 = qword_1009261E8;
  a1[1] = v1;
}

unint64_t sub_100695868()
{
  result = qword_1008F9748;
  if (!qword_1008F9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9748);
  }

  return result;
}

unint64_t sub_1006958BC()
{
  result = qword_1008F9750;
  if (!qword_1008F9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9750);
  }

  return result;
}

unint64_t sub_100695914()
{
  result = qword_1008F9758;
  if (!qword_1008F9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9758);
  }

  return result;
}

void sub_100695968(void *a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t sub_10069597C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAFF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_1009261F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100695A28()
{
  result = qword_1008F9760;
  if (!qword_1008F9760)
  {
    sub_100141EEC(&qword_1008F9768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9760);
  }

  return result;
}

uint64_t sub_100695A8C(uint64_t a1)
{
  v2 = sub_100200F48();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100695ADC()
{
  v0 = FILocalizedNameForIndoorAgnosticActivityType();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v0 = v2;
  }

  else
  {
    __break(1u);
  }

  return DisplayRepresentation.init(stringLiteral:)(v0);
}

uint64_t sub_100695B4C(uint64_t a1)
{
  v2 = sub_100695914();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_100695BBC()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008F9770 = v2;
}

char *sub_100695C28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR___CHWorkoutCellImageLabelView_workout] = 0;
  *&v4[OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext] = 0;
  *&v4[OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager] = 0;
  *&v4[OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount] = 0;
  v4[OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle] = 1;
  v10 = OBJC_IVAR___CHWorkoutCellImageLabelView_workoutImageView;
  v11 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = [v11 layer];
  [v12 setCornerRadius:10.0];

  [v11 setClipsToBounds:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v5[v10] = v11;
  v13 = OBJC_IVAR___CHWorkoutCellImageLabelView_workoutIconView;
  v14 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v13] = v14;
  v15 = OBJC_IVAR___CHWorkoutCellImageLabelView_labelStackView;
  v16 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v16 setAxis:1];
  [v16 setDistribution:3];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v15] = v16;
  v17 = OBJC_IVAR___CHWorkoutCellImageLabelView_workoutTitleLabel;
  v18 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];
  [v18 setLineBreakMode:0];
  [v18 setNumberOfLines:0];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v5[v17] = v18;
  v20 = OBJC_IVAR___CHWorkoutCellImageLabelView_goalLabel;
  v21 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v20] = v21;
  v22 = OBJC_IVAR___CHWorkoutCellImageLabelView_badgeCountLabel;
  v23 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = UIView.forAutoLayout()();

  *&v5[v22] = v24;
  v25 = OBJC_IVAR___CHWorkoutCellImageLabelView_separatorView;
  v26 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v27 = [objc_opt_self() separatorColor];
  [v26 setBackgroundColor:v27];

  [v26 setHidden:1];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v25] = v26;
  v36.receiver = v5;
  v36.super_class = type metadata accessor for WorkoutCellImageLabelView();
  v28 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v29 = OBJC_IVAR___CHWorkoutCellImageLabelView_badgeCountLabel;
  v30 = *&v28[OBJC_IVAR___CHWorkoutCellImageLabelView_badgeCountLabel];
  v31 = v28;
  v32 = v30;
  if (FIUILocaleIsRightToLeft())
  {
    v33 = 0;
  }

  else
  {
    v33 = 2;
  }

  [v32 setTextAlignment:v33];

  [v31 addSubview:*&v31[OBJC_IVAR___CHWorkoutCellImageLabelView_workoutImageView]];
  [v31 addSubview:*&v31[OBJC_IVAR___CHWorkoutCellImageLabelView_workoutIconView]];
  [v31 addSubview:*&v28[v29]];
  v34 = OBJC_IVAR___CHWorkoutCellImageLabelView_labelStackView;
  [*&v31[OBJC_IVAR___CHWorkoutCellImageLabelView_labelStackView] addArrangedSubview:*&v31[OBJC_IVAR___CHWorkoutCellImageLabelView_workoutTitleLabel]];
  [*&v31[v34] addArrangedSubview:*&v31[OBJC_IVAR___CHWorkoutCellImageLabelView_goalLabel]];
  [v31 addSubview:*&v31[v34]];
  [v31 addSubview:*&v31[OBJC_IVAR___CHWorkoutCellImageLabelView_separatorView]];
  sub_1006960D8();

  return v31;
}

void sub_1006960D8()
{
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006E9D90;
  v2 = *&v0[OBJC_IVAR___CHWorkoutCellImageLabelView_workoutImageView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [v2 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:15.0];

  *(v1 + 40) = v8;
  v9 = [v2 widthAnchor];
  v10 = [v9 constraintEqualToConstant:48.0];

  *(v1 + 48) = v10;
  v11 = [v2 heightAnchor];
  v12 = [v11 constraintEqualToConstant:48.0];

  *(v1 + 56) = v12;
  v13 = *&v0[OBJC_IVAR___CHWorkoutCellImageLabelView_workoutIconView];
  v113 = v13;
  v14 = [v13 centerXAnchor];
  v15 = [v2 centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v1 + 64) = v16;
  v17 = [v13 centerYAnchor];
  v18 = [v2 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v1 + 72) = v19;
  v20 = *&v0[OBJC_IVAR___CHWorkoutCellImageLabelView_labelStackView];
  v21 = [v20 topAnchor];
  v22 = [v2 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:10.0];

  *(v1 + 80) = v23;
  v24 = [v20 leadingAnchor];
  v25 = [v0 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v1 + 88) = v26;
  v112 = v20;
  v27 = [v20 trailingAnchor];
  v28 = [v0 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v1 + 96) = v29;
  v30 = [v20 bottomAnchor];
  v31 = [v0 bottomAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor:v31 constant:-15.0];

  *(v1 + 104) = v32;
  v33 = *&v0[OBJC_IVAR___CHWorkoutCellImageLabelView_goalLabel];
  v111 = v33;
  v34 = [v33 topAnchor];
  v114 = *&v0[OBJC_IVAR___CHWorkoutCellImageLabelView_workoutTitleLabel];
  v35 = [v114 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v1 + 112) = v36;
  v37 = *&v0[OBJC_IVAR___CHWorkoutCellImageLabelView_separatorView];
  v38 = [v37 widthAnchor];
  v39 = [v0 widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v1 + 120) = v40;
  v41 = [v37 heightAnchor];
  v42 = [v41 constraintEqualToConstant:0.5];

  *(v1 + 128) = v42;
  v43 = [v37 bottomAnchor];
  v44 = [v0 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v1 + 136) = v45;
  v46 = *&v0[OBJC_IVAR___CHWorkoutCellImageLabelView_badgeCountLabel];
  v47 = [v46 topAnchor];
  v48 = [v33 lastBaselineAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];

  *(v1 + 144) = v49;
  v50 = [v46 trailingAnchor];
  v51 = [v0 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v1 + 152) = v52;
  v53 = [v46 bottomAnchor];
  v54 = [v0 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-15.0];

  *(v1 + 160) = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1006EAFA0;
  v57 = [v2 leadingAnchor];
  v58 = [v0 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v56 + 32) = v59;
  v60 = [v2 centerYAnchor];
  v61 = [v0 centerYAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  *(v56 + 40) = v62;
  v63 = [v2 topAnchor];
  v64 = [v0 topAnchor];
  v65 = [v63 constraintGreaterThanOrEqualToAnchor:v64 constant:15.0];

  *(v56 + 48) = v65;
  v66 = [v2 bottomAnchor];
  v67 = [v0 bottomAnchor];
  v68 = [v66 constraintLessThanOrEqualToAnchor:v67 constant:-15.0];

  *(v56 + 56) = v68;
  v69 = [v2 widthAnchor];
  v70 = [v69 constraintEqualToConstant:48.0];

  *(v56 + 64) = v70;
  v71 = [v2 heightAnchor];
  v72 = [v71 constraintEqualToConstant:48.0];

  *(v56 + 72) = v72;
  v73 = [v113 centerXAnchor];
  v74 = [v2 centerXAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v56 + 80) = v75;
  v76 = [v113 centerYAnchor];
  v77 = [v2 centerYAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v56 + 88) = v78;
  v79 = [v112 topAnchor];
  v80 = [v0 topAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:13.0];

  *(v56 + 96) = v81;
  v82 = [v112 leadingAnchor];
  v83 = [v2 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:8.0];

  *(v56 + 104) = v84;
  v85 = [v112 trailingAnchor];
  v86 = [v46 leadingAnchor];
  v87 = [v85 constraintLessThanOrEqualToAnchor:v86 constant:-5.0];

  *(v56 + 112) = v87;
  v88 = [v112 bottomAnchor];
  v89 = [v0 bottomAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:-10.0];

  *(v56 + 120) = v90;
  v91 = [v111 topAnchor];
  v92 = [v114 bottomAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:3.0];

  *(v56 + 128) = v93;
  v94 = [v37 widthAnchor];
  v95 = [v0 widthAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v56 + 136) = v96;
  v97 = [v37 heightAnchor];
  v98 = [v97 constraintEqualToConstant:0.5];

  *(v56 + 144) = v98;
  v99 = [v37 bottomAnchor];
  v100 = [v0 bottomAnchor];
  v101 = [v99 constraintEqualToAnchor:v100];

  *(v56 + 152) = v101;
  v102 = [v46 firstBaselineAnchor];
  v103 = [v114 firstBaselineAnchor];
  v104 = [v102 constraintEqualToAnchor:v103];

  *(v56 + 160) = v104;
  v105 = [v46 trailingAnchor];
  v106 = [v0 trailingAnchor];
  v107 = [v105 constraintEqualToAnchor:v106];

  *(v56 + 168) = v107;
  v108 = [objc_opt_self() sharedApplication];
  v109 = [v108 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();

  v110 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v110 activateConstraints:isa];
}

id sub_100696F30(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
  *(v6 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = a1;
  v13 = a1;

  v14 = *(v6 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
  *(v6 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = a2;
  v15 = a2;

  v16 = *(v6 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
  *(v6 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = a3;
  v17 = a3;

  *(v6 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = a4;
  *(v6 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
  sub_100697158(a5, a6);

  return sub_100698004();
}

void sub_100697158(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
    if (v4)
    {
      v5 = *(v2 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
      if (v5)
      {
        v42 = a1;
        v43 = a2;
        v6 = v3;
        v45 = v4;
        v46 = v5;
        v44 = [v46 formattedTypeForWorkout:v6 workoutActivity:0 context:@"WorkoutsListDisplayContext"];
        v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v44];
        v8 = [v7 length];
        sub_100140278(&unk_1008E7FB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1006D1F70;
        *(inited + 32) = NSForegroundColorAttributeName;
        v10 = objc_opt_self();
        v11 = NSForegroundColorAttributeName;
        v12 = [v10 whiteColor];
        v13 = sub_1000059F8(0, &qword_1008E7FC0);
        *(inited + 40) = v12;
        *(inited + 64) = v13;
        *(inited + 72) = NSFontAttributeName;
        v14 = qword_1008DB000;
        v15 = NSFontAttributeName;
        if (v14 != -1)
        {
          swift_once();
        }

        v16 = qword_1008F9770;
        *(inited + 104) = sub_1000059F8(0, &qword_1008F73C0);
        *(inited + 80) = v16;
        v17 = v16;
        sub_1004C9200(inited);
        swift_setDeallocating();
        sub_100140278(&unk_1008EE730);
        swift_arrayDestroy();
        type metadata accessor for Key(0);
        sub_10069880C(&qword_1008E7FD0, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v7 addAttributes:isa range:{0, v8}];

        [*(v2 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutTitleLabel) setAttributedText:v7];
        if ([v6 workoutActivityType] == 84 && (*(v2 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) & 1) == 0)
        {
          v19 = *(v2 + OBJC_IVAR___CHWorkoutCellImageLabelView_goalLabel);
          v20 = v46;
          v21 = [v46 formattedDurationForWorkout:v6 workoutActivity:0 context:@"WorkoutsListDisplayContext"];
        }

        else
        {
          v19 = *(v2 + OBJC_IVAR___CHWorkoutCellImageLabelView_goalLabel);
          v20 = v46;
          v21 = [v46 formattedGoalForWorkout:v6 context:{@"WorkoutsListDisplayContext", v42, v43}];
        }

        v22 = v21;
        [v19 setAttributedText:v22];

        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v6;
        aBlock[4] = sub_100698854;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100644714;
        aBlock[3] = &unk_100867E08;
        v25 = _Block_copy(aBlock);
        v26 = v6;
        v27 = @"WorkoutsListDisplayContext";

        [v20 fetchIconImageForWorkout:v26 context:v27 completion:v25];
        _Block_release(v25);

        if ([v26 fiui_isConnectedGymWorkout])
        {
          v28 = [v20 hasConnectedGymVendorIconForWorkout:v26];
          v29 = [v26 isFirstPartyWorkout];
          if ((v28 & 1) != 0 || (v29 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (([v26 isFirstPartyWorkout] & 1) == 0)
        {
LABEL_13:

LABEL_17:
          v37 = v26;
          v38 = sub_10069885C(v37);

          if (v38)
          {
            v39 = *&v45[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
            v40 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v41 = v37;

            sub_10000B210(v42);
            sub_100422CF8(v41, v39, v40, v41, v42, v43);

            sub_1000245E0(v42);
          }

          else
          {
          }

          return;
        }

        v30 = [v26 fiui_activityType];
        v31 = FIUIStaticWorkoutIconImage();
        if (!v31)
        {
          __break(1u);
          return;
        }

        v32 = v31;

        v33 = [v32 imageWithRenderingMode:2];

        v34 = sub_100433844(v26);
        v35 = *(v2 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutIconView);
        v36 = [v34 nonGradientTextColor];
        [v35 setTintColor:v36];

        [v35 setImage:v33];
        goto LABEL_17;
      }
    }
  }
}

void sub_1006977BC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      sub_1000059F8(0, &qword_1008ED7C0);
      v9 = a3;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        swift_beginAccess();
        v11 = swift_unknownObjectWeakLoadStrong();
        if (!v11 || (v12 = v11, v13 = *(v11 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutImageView), v12, v14 = [v13 image], v13, !v14))
        {
          swift_beginAccess();
          v15 = swift_unknownObjectWeakLoadStrong();
          if (!v15)
          {
            return;
          }

          v16 = v15;
          v14 = *(v15 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutImageView);

          [v14 setImage:a1];
        }
      }
    }
  }
}

void sub_100697930(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
    v11 = Strong;
    v12 = v10;

    if (v10)
    {
      v13 = sub_1000059F8(0, &qword_1008ED7C0);
      v14 = a3;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        if (a1)
        {
          v16 = *&a1[OBJC_IVAR___CHCatalogItemViewModel_title];
          v17 = objc_allocWithZone(NSMutableAttributedString);
          v46 = a1;
          v18 = [v17 initWithAttributedString:v16];
          v45 = [v18 length];
          sub_100140278(&unk_1008E7FB0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1006D1F70;
          *(inited + 32) = NSForegroundColorAttributeName;
          v20 = objc_opt_self();
          v21 = NSForegroundColorAttributeName;
          v22 = [v20 whiteColor];
          v23 = sub_1000059F8(0, &qword_1008E7FC0);
          *(inited + 40) = v22;
          *(inited + 64) = v23;
          *(inited + 72) = NSFontAttributeName;
          v24 = qword_1008DB000;
          v25 = NSFontAttributeName;
          if (v24 != -1)
          {
            swift_once();
          }

          v26 = qword_1008F9770;
          *(inited + 104) = sub_1000059F8(0, &qword_1008F73C0);
          *(inited + 80) = v26;
          v27 = v26;
          sub_1004C9200(inited);
          swift_setDeallocating();
          sub_100140278(&unk_1008EE730);
          swift_arrayDestroy();
          type metadata accessor for Key(0);
          sub_10069880C(&qword_1008E7FD0, type metadata accessor for Key);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v18 addAttributes:isa range:{0, v45}];

          swift_beginAccess();
          v29 = swift_unknownObjectWeakLoadStrong();
          if (v29)
          {
            v30 = v29;
            v31 = *(v29 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutTitleLabel);

            [v31 setAttributedText:v18];
          }

          swift_beginAccess();
          v32 = swift_unknownObjectWeakLoadStrong();
          if (v32 && (v33 = *(v32 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext), v34 = v32, v35 = v33, v34, v33))
          {
            v36 = *&v35[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];

            v37 = swift_allocObject();
            swift_beginAccess();
            v38 = swift_unknownObjectWeakLoadStrong();
            swift_unknownObjectWeakInit();

            v39 = swift_allocObject();
            v39[2] = v37;
            v39[3] = v14;
            v39[4] = a4;
            v39[5] = a5;
            v40 = v14;

            sub_10000B210(a4);
            sub_100419358(v46, sub_10069894C, v39);
          }

          else
          {
          }
        }

        else
        {
          static os_log_type_t.error.getter();
          v41 = HKLogActivity;
          sub_100140278(&unk_1008E4E50);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1006D1F70;
          *(v42 + 56) = &type metadata for String;
          *(v42 + 64) = sub_10000A788();
          *(v42 + 32) = 0xD000000000000028;
          *(v42 + 40) = 0x800000010076ADB0;
          *(v42 + 96) = v13;
          *(v42 + 104) = sub_1001ED4D4();
          *(v42 + 72) = v14;
          v43 = v14;
          v44 = v41;
          os_log(_:dso:log:_:_:)();
        }
      }
    }
  }
}

void sub_100697E78(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
    v9 = Strong;
    v10 = v8;

    if (v8)
    {
      sub_1000059F8(0, &qword_1008ED7C0);
      v11 = a3;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        if (a1)
        {
          swift_beginAccess();
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            v15 = *(v13 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutIconView);

            [v15 setImage:0];
          }

          swift_beginAccess();
          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            v18 = *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutImageView);

            [v18 setImage:a1];
          }
        }
      }
    }
  }

  if (a4)
  {
    a4();
  }
}

id sub_100698004()
{
  v1 = v0;
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString();
  v6 = __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v49 - v10;
  v12 = __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = __chkstk_darwin(v13);
  v59 = &v49 - v19;
  v20 = OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount;
  if (*(v1 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) < 1)
  {
    v34 = *(v1 + OBJC_IVAR___CHWorkoutCellImageLabelView_badgeCountLabel);

    return [v34 setHidden:1];
  }

  else
  {
    v55 = v4;
    v56 = v16;
    v53 = v8;
    v57 = v18;
    v58 = v17;
    v21 = [objc_opt_self() secondaryLabelColor];
    v22 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
    sub_100140278(&unk_1008E4E20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006D4E70;
    *(v23 + 32) = v21;
    sub_1000059F8(0, &qword_1008E7FC0);
    v52 = v21;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = [objc_opt_self() configurationWithPaletteColors:isa];

    v26 = v25;
    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() smm_systemImageNamed:v27 withConfiguration:v26];

    v54 = v26;
    v29 = v28;
    v30 = [v29 imageWithRenderingMode:2];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_opt_self() textAttachmentWithImage:v30];
      v33 = [objc_opt_self() attributedStringWithAttachment:v32];
    }

    else
    {
      [objc_allocWithZone(NSAttributedString) init];
    }

    v51 = v29;

    AttributedString.init(_:)();
    v36 = [objc_allocWithZone(NSNumberFormatter) init];
    [v36 setNumberStyle:0];
    [v36 setRoundingMode:4];
    v37 = Int._bridgeToObjectiveC()().super.super.isa;
    v50 = v36;
    v38 = [v36 stringForObjectValue:v37];

    if (v38)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v60 = *(v1 + v20);
      dispatch thunk of CustomStringConvertible.description.getter();
    }

    v39 = v1;
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v40 = v58;
    AttributedString.init(stringLiteral:)();
    AttributedString.init()();
    sub_10069880C(&qword_1008E1918, &type metadata accessor for AttributedString);
    v41 = v56;
    AttributedString.append<A>(_:)();
    AttributedString.append<A>(_:)();
    v42 = v59;
    AttributedString.append<A>(_:)();
    v60 = v22;
    sub_1001ED5AC();
    v55 = v22;
    AttributedString.subscript.setter();
    v43 = v52;
    v60 = v52;
    sub_1002EFC08();
    v44 = v43;
    AttributedString.subscript.setter();
    v45 = *(v39 + OBJC_IVAR___CHWorkoutCellImageLabelView_badgeCountLabel);
    sub_1000059F8(0, &qword_1008DD230);
    v46 = v57;
    (*(v57 + 16))(v53, v11, v41);
    v47 = NSAttributedString.init(_:)();
    [v45 setAttributedText:v47];

    [v45 setHidden:0];
    v48 = *(v46 + 8);
    v48(v11, v41);
    v48(v40, v41);
    v48(v15, v41);
    return (v48)(v42, v41);
  }
}

id sub_1006986E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCellImageLabelView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10069880C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10069885C(uint64_t a1)
{
  v11 = a1;
  sub_1000059F8(0, &qword_1008ED7C0);
  v1 = sub_100289324();
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v5 = sub_100066F20(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v8 = 0;
    memset(v10, 0, sizeof(v10));
    goto LABEL_8;
  }

  sub_10000B1B4(*(v2 + 56) + 32 * v5, v10);

  v8 = 1;
LABEL_8:
  sub_1001B3EEC(v10);
  return v8;
}

uint64_t sub_100698958()
{
  v0 = MindfulnessSessionViewModel.metadata.getter();
  if (!v0)
  {
    goto LABEL_7;
  }

  v1 = v0;
  v2 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v1 + 16))
  {

    goto LABEL_6;
  }

  v4 = sub_100066F20(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v7 = 0;
    memset(v9, 0, sizeof(v9));
    goto LABEL_8;
  }

  sub_10000B1B4(*(v1 + 56) + 32 * v4, v9);

  v7 = 1;
LABEL_8:
  sub_1001B3EEC(v9);
  return v7;
}

void sub_100698A10()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
  v2 = OBJC_IVAR___CHWorkoutCellImageLabelView_workoutImageView;
  v3 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = [v3 layer];
  [v4 setCornerRadius:10.0];

  [v3 setClipsToBounds:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v2) = v3;
  v5 = OBJC_IVAR___CHWorkoutCellImageLabelView_workoutIconView;
  v6 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v5) = v6;
  v7 = OBJC_IVAR___CHWorkoutCellImageLabelView_labelStackView;
  v8 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setAxis:1];
  [v8 setDistribution:3];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v7) = v8;
  v9 = OBJC_IVAR___CHWorkoutCellImageLabelView_workoutTitleLabel;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v9) = v10;
  v12 = OBJC_IVAR___CHWorkoutCellImageLabelView_goalLabel;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v12) = v13;
  v14 = OBJC_IVAR___CHWorkoutCellImageLabelView_badgeCountLabel;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = UIView.forAutoLayout()();

  *(v1 + v14) = v16;
  v17 = OBJC_IVAR___CHWorkoutCellImageLabelView_separatorView;
  v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = [objc_opt_self() separatorColor];
  [v18 setBackgroundColor:v19];

  [v18 setHidden:1];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v17) = v18;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100698DA8(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = swift_getObjectType();

  return _swift_task_switch(sub_100698E1C, 0, 0);
}

uint64_t sub_100698E1C()
{
  v26 = v0;
  v1 = *(v0 + 72);
  if (v1 == 38)
  {
    v2 = swift_allocObject();
    *(v0 + 40) = v2;
    swift_unknownObjectWeakInit();
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    v4 = type metadata accessor for Date();
    *v3 = v0;
    v3[1] = sub_100699148;
    v5 = *(v0 + 16);

    return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000015, 0x800000010076AE10, sub_10069A810, v2, v4);
  }

  v6 = sub_10069ABB0(v1);
  if (v7)
  {
    v8 = sub_10069AB38(*(v0 + 72));
    *(v0 + 56) = v8;
    if (v8)
    {
      v9 = v8;
      v10 = swift_task_alloc();
      *(v0 + 64) = v10;
      *v10 = v0;
      v10[1] = sub_100699258;
      v11 = *(v0 + 16);

      return sub_100699714(v11, v9);
    }

    v12 = static os_log_type_t.error.getter();
    v13 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v12))
    {
      v14 = *(v0 + 72);
      v15 = v13;
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v16 = 136315394;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10000AFDC(v17, v18, &v25);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = sub_10002A094(v14);
      v22 = sub_10000AFDC(v20, v21, &v25);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v15, v12, "%s firstSampleDate: fail to find activity type or sample type for %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    Date.init()();
  }

  else
  {
    sub_1006993B4(v6, *(v0 + 16));
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100699148()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100699258()
{

  return _swift_task_switch(sub_100699354, 0, 0);
}

uint64_t sub_100699354()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006993B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = [*(v2 + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataProvider) unfilteredWorkouts];
  sub_1000059F8(0, &qword_1008ED7C0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = v12;
  v29 = a2;
  v30 = v5;
  v28 = v6;
  if (v12 >> 62)
  {
    goto LABEL_21;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v13)
  {
    if (__OFSUB__(v13--, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *(v12 + 32 + 8 * v13);
LABEL_9:
      v16 = v15;
      v33 = v15;
      v17 = sub_10069A6B0(&v33, a1);

      if (v17)
      {
        __chkstk_darwin(v18);
        *(&v27 - 2) = &v31;
        v32 = v13;
        sub_10069A900(&v32, &v33);
        v19 = v33;
        goto LABEL_13;
      }
    }
  }

  v19 = 0;
LABEL_13:
  v20 = v28;

  if (v19)
  {
    v21 = [v19 endDate];
    v22 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v20 + 32);
    v24 = v30;
    v23(v10, v22, v30);
    (*(v20 + 56))(v10, 0, 1, v24);
    return (v23)(v29, v10, v24);
  }

  else
  {
    v26 = v30;
    (*(v20 + 56))(v10, 1, 1, v30);
    Date.init()();
    result = (*(v20 + 48))(v10, 1, v26);
    if (result != 1)
    {
      return sub_1001F145C(v10);
    }
  }

  return result;
}

uint64_t sub_100699714(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_100140278(&unk_1008F73A0);
  v3[9] = swift_task_alloc();
  v5 = sub_100140278(&qword_1008E6048);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_100140278(&qword_1008E6058);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1006998EC, 0, 0);
}

uint64_t sub_1006998EC()
{
  v1 = [objc_opt_self() _predicateForObjectsFromAppleWatches];
  v0[16] = v1;
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v4 = v2;
    v5 = [v2 isStandalonePhoneFitnessMode];

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v6 = v1;
    }

    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    v10 = v0[4];
    sub_1000059F8(0, &qword_1008E04D0);
    static HKSamplePredicate.quantitySample(type:predicate:)();

    sub_100140278(&qword_1008E6060);
    v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1006D46C0;
    (*(v8 + 16))(v12 + v11, v7, v9);
    sub_100140278(&qword_1008E6068);
    sub_100140278(&qword_1008E6050);
    *(swift_allocObject() + 16) = xmmword_1006D46C0;
    swift_getKeyPath();
    SortDescriptor.init<A>(_:order:)();
    sub_1000059F8(0, &qword_1008EE6F0);
    HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
    v13 = *(v10 + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_healthStore);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_100699BA4;
    v3 = v0[10];
    v2 = v13;
  }

  else
  {
    __break(1u);
  }

  return HKSampleQueryDescriptor.result(for:)(v2, v3);
}

uint64_t sub_100699BA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_100699F60;
  }

  else
  {
    v4 = sub_100699CB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100699CB8()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = v0[16];
    v14 = v0[14];
    v26 = v0[13];
    v28 = v0[15];
    v15 = v0[11];
    v16 = v0[12];
    v18 = v0[9];
    v17 = v0[10];
    v20 = v0[6];
    v19 = v0[7];

    (*(v19 + 56))(v18, 1, 1, v20);
    Date.init()();

    (*(v15 + 8))(v16, v17);
    (*(v14 + 8))(v28, v26);
    if ((*(v19 + 48))(v18, 1, v20) != 1)
    {
      sub_1001F145C(v0[9]);
    }

    goto LABEL_10;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[18] + 32);
  }

  v4 = v0[14];
  v24 = v0[13];
  v25 = v0[15];
  v5 = v0[11];
  v22 = v0[16];
  v23 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  v27 = v0[2];

  v11 = [v3 endDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v23, v7);
  (*(v4 + 8))(v25, v24);
  v12 = *(v9 + 32);
  v12(v6, v8, v10);
  (*(v9 + 56))(v6, 0, 1, v10);
  v12(v27, v6, v10);
LABEL_10:

  v21 = v0[1];

  return v21();
}

uint64_t sub_100699F60()
{
  v23 = v0;
  v1 = static os_log_type_t.error.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v0[3];
    v4 = v2;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v5 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000AFDC(v8, v9, &v22);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    *(v5 + 14) = v3;
    *v6 = v3;
    *(v5 + 22) = 2112;
    v11 = v3;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v12;
    v6[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v1, "%s error firstQuantitySampleDate for %@: %@", v5, 0x20u);
    sub_100140278(&unk_1008DB8B0);
    swift_arrayDestroy();

    sub_100005A40(v7);
  }

  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[10];
  Date.init()();

  (*(v18 + 8))(v17, v19);
  (*(v16 + 8))(v13, v15);

  v20 = v0[1];

  return v20();
}

void sub_10069A1AC(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F9800);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - v4;
  v6 = type metadata accessor for Date();
  __chkstk_darwin(v6 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_mindfulnessDataProvider);
    v9 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v5, v2);
    aBlock[4] = sub_10069A818;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004476B0;
    aBlock[3] = &unk_100867ED0;
    v12 = _Block_copy(aBlock);
    v13 = v8;

    [v13 allMindfulnessSessionsWithCompletion:v12];
    _Block_release(v12);
  }

  else
  {
    Date.init()();
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10069A400(unint64_t a1)
{
  v2 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  if (a1 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
LABEL_12:
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(a1 + 8 * v14 + 32);
    if (v15)
    {
LABEL_8:
      v16 = [v15 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = *(v6 + 32);
      v17(v4, v9, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      v17(v11, v4, v5);
LABEL_16:
      sub_100140278(&qword_1008F9800);
      CheckedContinuation.resume(returning:)();

      return;
    }

LABEL_13:
    (*(v6 + 56))(v4, 1, 1, v5);
    Date.init()();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_1001F145C(v4);
    }

    v15 = 0;
    goto LABEL_16;
  }

  __break(1u);
}

BOOL sub_10069A6B0(id *a1, id a2)
{
  v3 = [*a1 workoutActivities];
  sub_1000059F8(0, &qword_1008EAF90);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
LABEL_15:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = [v8 fiui_activityType];
    v11 = [v10 identifier];

    v6 = v7 + 1;
  }

  while (v11 != a2);

  return v5 != v7;
}

void sub_10069A818(unint64_t a1)
{
  sub_100140278(&qword_1008F9800);

  sub_10069A400(a1);
}

unint64_t sub_10069A894@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_10069A920()
{
  result = qword_1008E04E0;
  if (!qword_1008E04E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E04E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityDashboardMetric(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityDashboardMetric(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10069AAB0()
{
  result = qword_1008F9808;
  if (!qword_1008F9808)
  {
    sub_100141EEC(&qword_1008E6C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9808);
  }

  return result;
}

id sub_10069AB38(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    return 0;
  }

  v1 = *(&off_100868018 + a1);
  sub_1000059F8(0, &unk_1008E4E30);
  return [swift_getObjCClassFromMetadata() quantityTypeForIdentifier:*v1];
}

uint64_t sub_10069ABB0(unsigned __int8 a1)
{
  if (a1 <= 0x12u)
  {
    if (a1 - 4 < 9)
    {
      return 37;
    }

    if (a1 - 13 < 6)
    {
      return 13;
    }
  }

  else
  {
    if (a1 <= 0x25u)
    {
      if (((1 << a1) & 0x3C0000000) != 0)
      {
        return 70;
      }

      if (((1 << a1) & 0x3C00000000) != 0)
      {
        return 71;
      }

      if (((1 << a1) & 0x38000000) != 0)
      {
        return 46;
      }
    }

    if (a1 - 19 < 4)
    {
      return 24;
    }

    if (a1 - 23 < 4)
    {
      return 52;
    }
  }

  return 0;
}

void sub_10069AC84(uint64_t *a1@<X8>)
{
  v2 = 0x6C61746F74;
  if (*v1)
  {
    v2 = 0x65676172657661;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10069ACC0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10069AE3C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10069AD60()
{
  result = qword_1008F9810;
  if (!qword_1008F9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9810);
  }

  return result;
}

unint64_t sub_10069ADB8()
{
  result = qword_1008F9818;
  if (!qword_1008F9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9818);
  }

  return result;
}

_UNKNOWN **sub_10069AE0C(char a1)
{
  if ((a1 - 1) > 0x11u)
  {
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    return off_100868038[(a1 - 1)];
  }
}

unint64_t sub_10069AE3C(unint64_t result)
{
  if (result >= 0x27)
  {
    return 39;
  }

  return result;
}

BOOL sub_10069AE78(int a1, int a2, int a3)
{
  if (qword_100924F20 == -1)
  {
    v3 = dword_100924F10 < a1;
    if (dword_100924F10 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_10069D09C();
    a2 = v6;
    a3 = v5;
    v3 = dword_100924F10 < a1;
    if (dword_100924F10 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_100924F14 > a2)
  {
    return 1;
  }

  if (dword_100924F14 < a2)
  {
    return 0;
  }

  return dword_100924F18 >= a3;
}

uint64_t sub_10069AF38(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100924F28 == -1)
  {
    if (qword_100924F30)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10069D0B4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100924F30)
    {
      return _availability_version_check();
    }
  }

  if (qword_100924F20 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10069D09C();
    a3 = v10;
    a4 = v9;
    v8 = dword_100924F10 < v11;
    if (dword_100924F10 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100924F14 > a3)
      {
        return 1;
      }

      if (dword_100924F14 >= a3)
      {
        return dword_100924F18 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100924F10 < a2;
  if (dword_100924F10 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10069B0CC(uint64_t result)
{
  v1 = qword_100924F30;
  if (qword_100924F30)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100924F30 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100924F10, &dword_100924F14, &dword_100924F18);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void sub_10069B458()
{
  dlerror();
  v0 = abort_report_np();
  sub_10069B47C(v0, v1, v2);
}

void sub_10069B47C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[sharing-setup] %{public}@ Failed to complete end to end Cloud sync with error: %{public}@", &v4, 0x16u);
}

void sub_10069B508(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Existing move goal lookup failed with error %@", &v2, 0xCu);
}

void sub_10069B668()
{
  sub_1000C1F00(__stack_chk_guard);
  sub_1000C1EA0();
  sub_1000C1EB8(&_mh_execute_header, v0, v1, "Error deleting future goals of type %@: %@");
}

void sub_10069B858()
{
  sub_1000C1F00(__stack_chk_guard);
  sub_1000C1EA0();
  sub_1000C1EB8(&_mh_execute_header, v0, v1, "Failed to fetch active sample for type %@ error %@");
}

void sub_10069B8C0()
{
  sub_1000C1F00(__stack_chk_guard);
  sub_1000C1EA0();
  sub_1000C1EB8(&_mh_execute_header, v0, v1, "Failed to fetch most recent sample for type %@ error %@");
}

void sub_10069B928()
{
  sub_1000C1F00(__stack_chk_guard);
  sub_1000C1EA0();
  sub_1000C1EB8(&_mh_execute_header, v0, v1, "Failed to fetch most recent samples for type %@ error %@");
}

void sub_10069BA60(uint64_t a1, char a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error sending invite (%@), destination unreachable=%d", &v3, 0x12u);
}

void sub_10069BB30(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error getting heart rates: %{public}@", &v2, 0xCu);
}

void sub_10069BBA8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error getting data (%@) for workout: %@", &v4, 0x16u);
}

void sub_10069BE28(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "CHASActivitySetupMetricsCollectionViewController found unexpected presentation context %ld", &v3, 0xCu);
}

void sub_10069C040(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 UUID];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error deleting workout: %@: %@", &v7, 0x16u);
}

void sub_10069C2C8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch watch accounts info with error: %{public}@", &v3, 0xCu);
}

void sub_10069C3C4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[mirror] Error fetching workout: %@", &v3, 0xCu);
}

void sub_10069C440(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained workout];
  v6 = [v5 fiui_finalWorkoutUUID];
  sub_1000FF1C4(&_mh_execute_header, v7, v8, "[mirror] No workout found for UUID: %@", v9, v10, v11, v12, 2u);
}

void sub_10069C4FC(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[mirror] Error updating workout: %@", &v3, 0xCu);
}

void sub_10069C578(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = [NSNumber numberWithInteger:a2];
  v7 = [NSNumber numberWithDouble:a3];
  v8 = 138544130;
  v9 = v6;
  v10 = 2114;
  v11 = &off_10086E260;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = &off_10086E510;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Workout heart rate chart unavailable for statistics pairs with data: %{public}@, mininum required: %{public}@, readings/min: %{public}@, minimum required: %{public}@", &v8, 0x2Au);
}

void sub_10069C698(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve activity item providers for seymour workout: %@. Falling back to sharing generic workout", &v2, 0xCu);
}

void sub_10069C7D8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Fetching app info for bundle ID %@ failed with error %@", &v4, 0x16u);
}

void sub_10069C864(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No result returned from AMS for bundle ID %@", &v3, 0xCu);
}

void sub_10069C8E0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_100109BB4();
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to create (%@) dir: %@", &v5, 0x16u);
}

void sub_10069CAA4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[CHWorkoutDataProvider] Error updating workouts: %@", &v2, 0xCu);
}

void sub_10069CBBC(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = 134217984;
  v5 = [v2 currentPhase];
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "PhoneSceneDelegate found unexpected onboarding phase %ld", &v4, 0xCu);
}

void sub_10069CC58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Data collection preference: %@", &v2, 0xCu);
}

void sub_10069CD04(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error reading data from workout sharing URL: %@ error: %@", &v3, 0x16u);
}

void sub_10069CDF4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown Fitness Coaching notification type (%d)", v2, 8u);
}

void sub_10069CF24(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Couldn't find row for friend with UUID: %{public}@", &v5, 0xCu);
}

void sub_10069CFCC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't find friend list section for date: %{public}@", &v2, 0xCu);
}

uint64_t EntityProperty<>.init(title:)()
{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

uint64_t static _DialogBuilderEntity.buildExpression<A>(_:)()
{
  return static _DialogBuilderEntity.buildExpression<A>(_:)();
}

{
  return static _DialogBuilderEntity.buildExpression<A>(_:)();
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t AttributeDynamicLookup.subscript.getter()
{
  return AttributeDynamicLookup.subscript.getter();
}

{
  return AttributeDynamicLookup.subscript.getter();
}

Swift::String __swiftcall Date.formatted()()
{
  v0 = Date.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

uint64_t static PortableEnum<>.== infix(_:_:)()
{
  return static PortableEnum<>.== infix(_:_:)();
}

{
  return static PortableEnum<>.== infix(_:_:)();
}

Swift::Double_optional __swiftcall RaceWorkoutConfiguration.secondsAheadFrom(_:)(HKWorkout a1)
{
  v1 = RaceWorkoutConfiguration.secondsAheadFrom(_:)(a1.super.super.super.isa);
  result.value = v2;
  result.is_nil = v1;
  return result;
}

uint64_t dispatch thunk of WorkoutCoreInjector.inject()()
{
  return dispatch thunk of WorkoutCoreInjector.inject()();
}

{
  return dispatch thunk of WorkoutCoreInjector.inject()();
}

Swift::String_optional __swiftcall SleepingSampleDataType.localizedUnitString(for:)(HKUnit a1)
{
  v1 = SleepingSampleDataType.localizedUnitString(for:)(a1.super.isa);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)()
{
  return dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
}

{
  return dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
}

{
  return dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
}

uint64_t static Log.default.getter()
{
  return static Log.default.getter();
}

{
  return static Log.default.getter();
}

Swift::String __swiftcall AAUIAwardsDataProviderSection.localized()()
{
  v0 = AAUIAwardsDataProviderSection.localized()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t AxisMarks.init(preset:position:values:content:)()
{
  return AxisMarks.init(preset:position:values:content:)();
}

{
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t ViewDimensions.subscript.getter()
{
  return ViewDimensions.subscript.getter();
}

{
  return ViewDimensions.subscript.getter();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t Color.init(_:)()
{
  return Color.init(_:)();
}

{
  return Color.init(_:)();
}

uint64_t ForEach<>.init(_:content:)()
{
  return ForEach<>.init(_:content:)();
}

{
  return ForEach<>.init(_:content:)();
}

{
  return ForEach<>.init(_:content:)();
}

uint64_t ForEach<>.init(_:id:content:)()
{
  return ForEach<>.init(_:id:content:)();
}

{
  return ForEach<>.init(_:id:content:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t static DayIndex.- infix(_:_:)()
{
  return static DayIndex.- infix(_:_:)();
}

{
  return static DayIndex.- infix(_:_:)();
}

Swift::String __swiftcall TrainingLoadViewModel.localizedName()()
{
  View = TrainingLoadViewModel.localizedName()();
  result._object = v1;
  result._countAndFlagsBits = View;
  return result;
}

Swift::String __swiftcall TrainingLoadViewModel.loadPercentageToday()()
{
  View = TrainingLoadViewModel.loadPercentageToday()();
  result._object = v1;
  result._countAndFlagsBits = View;
  return result;
}

Swift::String __swiftcall TrainingLoadViewModel.loadBandTodayLocalizedDescription()()
{
  View = TrainingLoadViewModel.loadBandTodayLocalizedDescription()();
  result._object = v1;
  result._countAndFlagsBits = View;
  return result;
}

Swift::String __swiftcall TrainingLoadViewModel.loadBandTodayLocalizedLongDescriptionInNonActiveState()()
{
  View = TrainingLoadViewModel.loadBandTodayLocalizedLongDescriptionInNonActiveState()();
  result._object = v1;
  result._countAndFlagsBits = View;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.workoutLocalized()()
{
  v0 = String.workoutLocalized()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t AMSBagProtocol.makeNavigationRequest(with:annotation:)()
{
  return AMSBagProtocol.makeNavigationRequest(with:annotation:)();
}

{
  return AMSBagProtocol.makeNavigationRequest(with:annotation:)();
}

{
  return AMSBagProtocol.makeNavigationRequest(with:annotation:)();
}

__C::CMTime __swiftcall CMTime.init(seconds:preferredTimescale:)(Swift::Double seconds, Swift::Int32 preferredTimescale)
{
  v2 = CMTime.init(seconds:preferredTimescale:)(*&preferredTimescale, seconds);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = *(&v3 + 4);
  result.value = v2;
  return result;
}

uint64_t UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)()
{
  return UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();
}

{
  return UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();
}

uint64_t Optional.description.getter()
{
  return Optional.description.getter();
}

{
  return Optional.description.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}