uint64_t sub_100081770(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v11 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0;
  if ((a3 & 1) == 0)
  {
    *&v16 = a1;
    *(&v16 + 1) = a2;
    v24 = v16;
    type metadata accessor for MeasureCamera();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    CGPoint.init(xy:)();
    if (qword_1004A0150 != -1)
    {
      swift_once();
    }

    static CGSize.* infix(_:_:)();
    CGPoint.init(_:)();
    static CGPoint.- infix(_:_:)();
    v14 = v17;
    v15 = v18;
  }

  sub_100018630(0, &qword_1004A3F00);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a3 & 1;
  *(v20 + 32) = v14;
  *(v20 + 40) = v15;
  aBlock[4] = sub_100082E64;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046AC20;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v25);
}

uint64_t sub_100081AD0()
{
  result = CGSize.init(_:_:)();
  qword_1004A4C60 = v1;
  *algn_1004A4C68 = v2;
  return result;
}

UIColor sub_100081AFC()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.47451, 0.83922, 0.97647, 1.0).super.isa;
  qword_1004A4C70 = result.super.isa;
  return result;
}

UIColor sub_100081B68()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.7451, 0.15686, 0.07451, 1.0).super.isa;
  qword_1004A4C78 = result.super.isa;
  return result;
}

UIColor sub_100081BD4()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.7451, 0.15686, 0.07451, 1.0).super.isa;
  qword_1004A4C80 = result.super.isa;
  return result;
}

UIColor sub_100081C40()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.9098, 0.47843, 0.64314, 1.0).super.isa;
  qword_1004A4C88 = result.super.isa;
  return result;
}

UIColor sub_100081CAC()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.9098, 0.47843, 0.64314, 1.0).super.isa;
  qword_1004A4C90 = result.super.isa;
  return result;
}

char *sub_100081D18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView__frameState;
  KeyPath = swift_getKeyPath();
  v12 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D5058;
  v14 = *(v12 + 272);

  *&v5[v10] = v14(KeyPath, v13);
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_cornerViews] = _swiftEmptyArrayStorage;
  v15 = &v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint];
  *v15 = 0u;
  v15[1] = 0u;
  v15[2] = xmmword_1003D9060;
  v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingEdges] = 0;
  v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingLines] = 0;
  v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingSmoothLines] = 0;
  v16 = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_imageView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_imageView] = v16;
  [v16 setContentMode:4];
  [*&v5[v17] setAlpha:0.65];
  [*&v5[v17] setHidden:1];
  [*&v5[v17] setOpaque:0];
  v18 = [objc_allocWithZone(UIImageView) init];
  v19 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_edgeView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_edgeView] = v18;
  [v18 setContentMode:4];
  [*&v5[v19] setAlpha:0.65];
  [*&v5[v19] setHidden:1];
  [*&v5[v19] setOpaque:0];
  v20 = [objc_allocWithZone(UIImageView) init];
  v21 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_lineView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_lineView] = v20;
  [v20 setContentMode:4];
  [*&v5[v21] setAlpha:0.75];
  [*&v5[v21] setHidden:1];
  [*&v5[v21] setOpaque:0];
  v22 = [objc_allocWithZone(UIImageView) init];
  v23 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_smoothLineView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_smoothLineView] = v22;
  [v22 setContentMode:4];
  [*&v5[v23] setAlpha:0.85];
  [*&v5[v23] setHidden:0];
  [*&v5[v23] setOpaque:0];
  if (qword_1004A0150 != -1)
  {
    swift_once();
  }

  v24 = *&qword_1004A4C60;
  v25 = *algn_1004A4C68;
  v26 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *&qword_1004A4C60, *algn_1004A4C68}];
  v27 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_pointView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_pointView] = v26;
  [v26 setContentMode:4];
  v28 = qword_1004A0158;
  v29 = *&v5[v27];
  if (v28 != -1)
  {
    swift_once();
  }

  [v29 setBackgroundColor:qword_1004A4C70];

  [*&v5[v27] setHidden:1];
  v30 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v24, v25}];
  v31 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_unprojectedPointView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_unprojectedPointView] = v30;
  [v30 setContentMode:4];
  v32 = qword_1004A0178;
  v33 = *&v5[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  [v33 setBackgroundColor:qword_1004A4C90];

  [*&v5[v31] setHidden:1];
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v35 = *&v34[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_imageView];
  v36 = v34;
  [v36 addSubview:v35];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_edgeView]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_lineView]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_smoothLineView]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_pointView]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_unprojectedPointView]];
  [v36 setUserInteractionEnabled:0];

  return v36;
}

void sub_1000822A4(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v50 = a6;
  v23 = *(a2 + 32);
  v24 = *(a2 + 40);
  v25 = *&a1[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_imageView];
  v26 = [objc_opt_self() standardUserDefaults];
  v27 = [v26 kEdgeDetectionDebugReticleEnabled];

  [v25 setHidden:v27 ^ 1];
  v28 = *(a2 + 16);
  v51[0] = *a2;
  v51[1] = v28;
  v52 = v23;
  v53 = v24;
  [v25 setTransform:v51];
  [v25 setFrame:{a7, a8, a9, a10}];
  [v25 setImage:a3];
  v29 = *&a1[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_pointView];
  [v29 setHidden:a4 & 1];
  [v29 frame];
  [v29 setFrame:{a11, a12}];
  [v29 setBackgroundColor:a5];
  v30 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_cornerViews;
  swift_beginAccess();
  v31 = *&a1[v30];
  if (v31 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v33 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      [v34 setHidden:1];

      ++v33;
      if (v36 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_12:

  v37 = *(v50 + 16);
  v38 = &selRef_setFrame_;
  if (v37)
  {
    v31 = 0;
    v39 = v50 + 40;
    do
    {
      v40 = *&a1[v30];
      if (v40 >> 62)
      {
        if (v31 >= _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_16:
          v41 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 5.0, 5.0}];
          [v41 setContentMode:4];
          if (qword_1004A0170 != -1)
          {
            swift_once();
          }

          [v41 setBackgroundColor:{qword_1004A4C88, v50}];
          [a1 addSubview:v41];
          swift_beginAccess();
          v42 = v41;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&a1[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v38 = &selRef_setFrame_;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
        }
      }

      else if (v31 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      swift_beginAccess();
      v43 = *&a1[v30];
      if ((v43 & 0xC000000000000001) != 0)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v44 = *(v43 + 8 * v31 + 32);
      }

      v45 = v44;
      ++v31;
      swift_endAccess();
      [v45 setHidden:0];
      [v45 frame];
      static CGSize.* infix(_:_:)();
      CGPoint.init(_:)();
      static CGPoint.- infix(_:_:)();
      v47 = v46;
      v49 = v48;
      [v45 frame];
      [v45 *v38];

      v39 += 16;
    }

    while (v37 != v31);
  }
}

void sub_100082758(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = [objc_allocWithZone(UIImage) init];
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_1004D4AB8 + 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = [*(&xmmword_1004D4AB8 + 1) view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v47.origin.x = v15;
  v47.origin.y = v17;
  v47.size.width = v19;
  v47.size.height = v21;
  Width = CGRectGetWidth(v47);
  v48.origin.x = v15;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  v46.height = CGRectGetHeight(v48);
  v46.width = Width;
  UIGraphicsBeginImageContextWithOptions(v46, 0, 0.0);
  [v42 drawAtPoint:{0.0, 0.0}];
  v23 = UIGraphicsGetCurrentContext();
  if (v23)
  {
    v43 = v23;
    CGContextSetLineWidth(v23, 1.2);
    v24 = [objc_opt_self() greenColor];
    v25 = [v24 CGColor];

    CGContextSetStrokeColorWithColor(v43, v25);
    v26 = *(a1 + 16);
    if (v26)
    {
      v27 = a1 + 56;
      do
      {
        CGContextRef.move(to:)();
        CGContextRef.addLine(to:)();
        CGContextStrokePath(v43);
        v27 += 32;
        --v26;
      }

      while (v26);
    }

    v28 = UIGraphicsGetImageFromCurrentImageContext();
    if (v28)
    {
      v29 = v28;
      UIGraphicsEndImageContext();
      v49.origin.x = v15;
      v49.origin.y = v17;
      v49.size.width = v19;
      v49.size.height = v21;
      v30 = CGRectGetWidth(v49);
      v50.origin.x = v15;
      v50.origin.y = v17;
      v50.size.width = v19;
      v50.size.height = v21;
      Height = CGRectGetHeight(v50);
      sub_100018630(0, &qword_1004A3F00);
      v32 = static OS_dispatch_queue.main.getter();
      v33 = swift_allocObject();
      v33[3] = 0.0;
      v33[4] = 0.0;
      *(v33 + 2) = v2;
      v33[5] = v30;
      v33[6] = Height;
      *(v33 + 7) = v29;
      aBlock[4] = sub_10008310C;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_10046ACC0;
      v34 = _Block_copy(aBlock);
      v41 = v8;
      v35 = v9;
      v36 = v34;
      v37 = v2;
      v38 = v29;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10003180C();
      sub_10000F974(&unk_1004A3D80);
      sub_100031864();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*(v5 + 8))(v7, v4);
      (*(v35 + 8))(v11, v41);
      return;
    }

    v39 = v43;
  }

  else
  {
    UIGraphicsEndImageContext();
    v39 = v42;
  }
}

id sub_100082C7C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_smoothLineView);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = [v12 showEDLines];

  [v11 setHidden:v13 ^ 1];
  [v11 setFrame:{a3, a4, a5, a6}];

  return [v11 setImage:a2];
}

uint64_t sub_100082E2C()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_100082E64()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_unprojectedPointView);
  [v3 setHidden:*(v0 + 24)];
  [v3 frame];

  return [v3 setFrame:{v1, v2}];
}

uint64_t sub_100082EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082EFC()
{

  return _swift_deallocObject(v0, 152, 7);
}

void sub_100082F70()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView__frameState;
  KeyPath = swift_getKeyPath();
  v4 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v4 + 272);

  *(v1 + v2) = v6(KeyPath, v5);
  *(v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_cornerViews) = _swiftEmptyArrayStorage;
  v7 = (v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = xmmword_1003D9060;
  *(v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingEdges) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingLines) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingSmoothLines) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000830CC()
{

  return _swift_deallocObject(v0, 64, 7);
}

void sub_10008321C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled);
  *(v1 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) = a1;
  if (v2 != (a1 & 1) && (*(v1 + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) & 1) != 0)
  {
    v3 = 0.5;
    if (a1)
    {
      v3 = 1.0;
    }

    sub_1000838A8(v3);
  }
}

void sub_100083288()
{
  v1 = OBJC_IVAR____TtC7Measure10EditButton_editState;
  if ((*(v0 + OBJC_IVAR____TtC7Measure10EditButton_editState) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC7Measure10EditButton_animatingView;
    v3 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingView);
    if (v3)
    {
      v4 = [v3 layer];
      CATransform3DMakeScale(&v12, 0.666667, 0.666667, 1.0);
      [v4 setTransform:&v12];
    }

    v5 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_pressUpDownAnimation);
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setFromValue:isa];

    v7 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setToValue:v7];

    v8 = *(v0 + v2);
    if (v8)
    {
      v9 = [v8 layer];
      v10 = String._bridgeToObjectiveC()();
      [v9 addAnimation:v5 forKey:v10];
    }

    v11 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingBlur);
    if (v11)
    {
      [v11 setHighlighted:1];
    }
  }

  *(v0 + v1) = 1;
}

void sub_100083468()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) == 1)
  {
    v1 = v0 + OBJC_IVAR____TtC7Measure10EditButton_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    sub_100083584();
    if (qword_1004A02A8 != -1)
    {
      swift_once();
    }

    v4 = 0x8000000100403790;
    v5 = 0xD000000000000012;

    Log.default(_:isPrivate:)(*&v5, 0);
  }
}

void sub_100083584()
{
  v1 = OBJC_IVAR____TtC7Measure10EditButton_editState;
  if (*(v0 + OBJC_IVAR____TtC7Measure10EditButton_editState) == 1)
  {
    v2 = OBJC_IVAR____TtC7Measure10EditButton_animatingView;
    v3 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingView);
    if (v3)
    {
      v4 = [v3 layer];
      CATransform3DMakeScale(&v12, 1.0, 1.0, 1.0);
      [v4 setTransform:&v12];
    }

    v5 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_pressUpDownAnimation);
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setFromValue:isa];

    v7 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setToValue:v7];

    v8 = *(v0 + v2);
    if (v8)
    {
      v9 = [v8 layer];
      v10 = String._bridgeToObjectiveC()();
      [v9 addAnimation:v5 forKey:v10];
    }

    v11 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingBlur);
    if (v11)
    {
      [v11 setHighlighted:0];
    }
  }

  *(v0 + v1) = 0;
}

void sub_100083730()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) == 1 && (*(v0 + OBJC_IVAR____TtC7Measure10EditButton_isShowingAccessibilityHUD) & 1) == 0)
  {
    v1 = v0 + OBJC_IVAR____TtC7Measure10EditButton_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    sub_100083584();
  }
}

void sub_1000838A8(float a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  v8[4] = sub_10007ADB8;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100041180;
  v8[3] = &unk_10046ADA0;
  v5 = _Block_copy(v8);
  v6 = v1;

  v7 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:0.6];
  _Block_release(v5);
  if (a1 == 0.5)
  {
    sub_100083584();
  }

  [v7 setInterruptible:0];
  [v7 startAnimation];
}

unint64_t sub_100083B30()
{
  result = qword_1004A4D98;
  if (!qword_1004A4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4D98);
  }

  return result;
}

void sub_100083B84()
{
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingView) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingBlur) = 0;
  v1 = OBJC_IVAR____TtC7Measure10EditButton_pressUpDownAnimation;
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_editState) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_isShowingAccessibilityHUD) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100083CAC()
{
  v1 = sub_10000F974(&qword_1004A2D60);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  [v0 bounds];
  CGRect.center.getter();
  [v0 bounds];
  CGRect.init(centerPoint:size:)();
  v13 = [objc_opt_self() bezierPathWithOvalInRect:{v9, v10, v11, v12}];
  [v8 setVisiblePath:v13];

  sub_100040E00();
  *v7 = [objc_allocWithZone(UITargetedPreview) initWithView:v0 parameters:v8];
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v14 = type metadata accessor for UIPointerShape();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = UIPointerStyle.init(effect:shape:)();

  return v15;
}

uint64_t sub_100083F14()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100083F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100083F8C()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&unk_1004A72D0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A11D8);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(v1 + 88) = v8(v7, v4);
  v9 = sub_10000F974(&qword_1004A11E0);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  *(v1 + 96) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A4F28) + 272);

  *(v1 + 104) = v13(v12, v4);
  v14 = sub_10000F974(&qword_1004A3F50);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v1 + 112) = v16(v15, v4);
  v17 = sub_10000F974(&qword_1004A2C60);
  v18 = swift_getKeyPath();
  *(v1 + 120) = (*(v17 + 272))(v18, v4);
  v19 = sub_10000F974(&qword_1004A2C80);
  v20 = swift_getKeyPath();
  *(v1 + 128) = (*(v19 + 272))(v20, v4);
  *(v1 + 136) = 0x8000000000000000;
  *(v1 + 144) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100084250()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  if ([objc_opt_self() jasperAvailable])
  {

    StateValue.ifUpdated(_:)();
  }

  StateValue.ifUpdated(_:)();
}

void sub_100084388(unint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 136);
  if (v27 >> 62)
  {
    sub_100071684(v27);

    StateValue.wrappedValue.getter();

    v8 = aBlock;
    v9 = v36;
    if (!sub_1001CA154(&off_100464F30, aBlock, v36))
    {
      sub_1001CA154(&off_100464F58, v8, v9);
    }
  }

  else
  {
    v7 = v27;
  }

  StateValue.wrappedValue.getter();

  v10 = sub_1001C95B8(1, aBlock, v36);

  StateValue.wrappedValue.getter();

  v11 = sub_1001C98F0();

  StateValue.wrappedValue.getter();

  v12 = aBlock;
  v13 = v36;

  StateValue.wrappedValue.getter();

  v14 = sub_1000855D8(v13, aBlock, v36);

  sub_10004D9B4();
  v26 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v16 = v34;
  *(v15 + 16) = v2;
  *(v15 + 24) = v16;
  *(v15 + 32) = v10;
  *(v15 + 40) = !v11;
  *(v15 + 41) = v14;
  v17 = v27;
  *(v15 + 48) = v27;
  v39 = sub_100086118;
  v40 = v15;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100041180;
  v38 = &unk_10046AFE0;
  v18 = _Block_copy(&aBlock);
  sub_100071684(v17);

  sub_100071684(v16);
  v19 = v10;

  v20 = v28;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  v21 = v31;
  v22 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  sub_10001B360(v17);
  (*(v32 + 8))(v21, v22);
  (*(v29 + 8))(v20, v30);
  v24 = *(v2 + 136);
  *(v2 + 136) = v16;
  sub_100071684(v16);
  sub_10001B360(v24);
}

void sub_100084844(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  StateValue.wrappedValue.getter();

  sub_1000848F0(v7, v3, v4);
  v5 = *(a2 + 136);
  sub_100071684(v5);
  sub_100084388(v5);
  sub_10001B360(v5);
}

void sub_1000848F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  StateValue.wrappedValue.getter();

  v8 = sub_1001C95B8(1, v17, v18);

  if (v8)
  {
LABEL_2:

    goto LABEL_3;
  }

  v15 = *(*(v4 + 64) + qword_1004A4F38);
  if (v15 && *(v15 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
  {
    v8 = v15;
    sub_1001B2F18(0);
    v16 = *&v8[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v16)
    {
      [v16 setUserInteractionEnabled:0];
    }

    goto LABEL_2;
  }

LABEL_3:
  v9 = *(v4 + 64);
  v10 = sub_1000855D8(a1, a2, a3);
  v11 = *(v9 + qword_1004A4F50);
  if (v11)
  {
    v12 = v11[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled];
    v11[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = v10;
    if (v10 != v12 && v11[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] == 1)
    {
      if (v10)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.5;
      }

      v14 = v11;
      sub_10013833C(v13);
    }
  }
}

void sub_100084AA0()
{

  StateValue.wrappedValue.getter();

  StateValue.wrappedValue.getter();

  v0 = 0.0;
  if (v1 & 1 | ((v2 & 1) == 0))
  {
    v0 = 1.0;
  }

  sub_100085488(v0);
}

void sub_100084B2C()
{

  StateValue.wrappedValue.getter();

  if ((v2 & 1) == 0)
  {

    StateValue.wrappedValue.getter();

    v0 = 1.0;
    if (v1)
    {
      v0 = 0.0;
    }

    sub_100085488(v0);
  }
}

uint64_t sub_100084BB0(uint64_t a1)
{
  v1 = *(a1 + 8);

  StateValue.wrappedValue.getter();

  sub_1000848F0(v1, v3, v4);
}

void sub_100084C40()
{

  v1 = *(v0 + 136);

  sub_10001B360(v1);
}

uint64_t sub_100084CB0()
{
  v0 = StateObserver.deinit();

  sub_10001B360(*(v0 + 136));
  return v0;
}

uint64_t sub_100084D28()
{
  sub_100084CB0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditController()
{
  result = qword_1004A4DC8;
  if (!qword_1004A4DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100084E30()
{
  result = qword_1004A4F20;
  if (!qword_1004A4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4F20);
  }

  return result;
}

uint64_t sub_100084ED4(uint64_t a1, uint64_t a2)
{
  sub_10008E8B4(9uLL);
  v3 = *(*(a2 + 64) + qword_1004A4F38);
  if (v3 && *(v3 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
  {
    v4 = v3;
    sub_1001B2F18(0);
    v5 = *&v4[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v5)
    {
      [v5 setUserInteractionEnabled:0];
    }
  }

  return sub_1000867B4(0);
}

void sub_100084F78()
{
  v1 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v1);
  v3 = (&v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + 64);
  v5 = *(v4 + qword_1004A4F58);
  if (v5)
  {
    [v5 setEnabled:0];
  }

  v6 = *(v4 + qword_1004A4F60);
  if (v6)
  {
    [v6 setEnabled:0];
  }

  v7 = swift_allocObject();
  swift_weakInit();

  sub_100034F84(sub_100085F68, v7);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D4AD0;
  if (qword_1004D4AD0)
  {
    v9 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v8 + v9, v3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *v3;
      v11 = v8;
      v12 = sub_1000E0CE8();

      sub_100072394(5, 0, 0, 1);
    }

    else
    {
      sub_100085FD4(v3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008515C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100086030;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046AF40;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1000853CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 64);

    v2 = *&v1[qword_1004A4F58];
    if (v2)
    {
      [v2 setEnabled:1];
    }

    v3 = *&v1[qword_1004A4F60];
    if (v3)
    {
      v4 = v3;
      [v4 setEnabled:1];
    }
  }
}

void sub_100085488(double a1)
{
  [*(v1 + 64) alpha];
  if (v3 != a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v5 = objc_allocWithZone(UIViewPropertyAnimator);
    v8[4] = sub_1000860B0;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100041180;
    v8[3] = &unk_10046AF90;
    v6 = _Block_copy(v8);

    v7 = [v5 initWithDuration:v6 dampingRatio:0.5 animations:0.6];
    _Block_release(v6);
    [v7 setInterruptible:0];
    [v7 startAnimation];
  }
}

BOOL sub_1000855D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 144))
  {
    return 0;
  }

  StateValue.wrappedValue.getter();

  if (v20 >> 62 == 1)
  {
    sub_10001B360(v20);
    return 0;
  }

  if (v20 >> 62 == 2 && v20 == 0x8000000000000020)
  {
    return 0;
  }

  sub_10001B360(v20);
  if (a1)
  {
    v9 = *((swift_isaMask & *a1) + 0xD0);
    v10 = a1;
    v11 = v9();

    if (v11 != 4)
    {
      return 1;
    }
  }

  v12 = sub_1001C9E48(a2, a3);
  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((*((swift_isaMask & *v16) + 0xD0))() == 6)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v15;
      if (v18 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *&_swiftEmptyArrayStorage[2];
  }

  return v19 != 0;
}

void sub_100085840(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  sub_100086324(a2, a3 != 0, a4, a5);
  if (a6 == 0x8000000000000010)
  {
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    sub_10008A8FC(7u);

    Synchronized.wrappedValue.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BB308(1, 2, isUniquelyReferenced_nonNull_native);
    Synchronized.wrappedValue.setter();

    Synchronized.wrappedValue.getter();
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BB308(1, 1, v9);
    Synchronized.wrappedValue.setter();
  }

  if (a2 >> 62 == 2 && (a2 | 8) == 0x8000000000000018)
  {
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    sub_10008A8FC(6u);

    StateValue.wrappedValue.getter();

    if (v14)
    {
      v10 = *(*((swift_isaMask & *v14) + 0x2C0))();
      (*(v10 + 368))();

      if (simd_float4x4.isAlmostHorizontal(marginInDegrees:)(10.0) && (*((swift_isaMask & *v14) + 0x2F0))() < 3)
      {

        Synchronized.wrappedValue.getter();
        v11 = swift_isUniquelyReferenced_nonNull_native();
        sub_1000BB308(1, 1, v11);
        Synchronized.wrappedValue.setter();

        Synchronized.wrappedValue.getter();
        v12 = swift_isUniquelyReferenced_nonNull_native();
        sub_1000BB308(1, 2, v12);
        Synchronized.wrappedValue.setter();
      }
    }
  }
}

uint64_t sub_100085C0C(void *a1, uint64_t a2)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v7 = sub_10000F974(&unk_1004A72D0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v7 + 272);
  swift_retain_n();
  *(v3 + 80) = v9(KeyPath, v8);
  v10 = sub_10000F974(&qword_1004A11D8);
  v11 = swift_getKeyPath();
  v12 = *(v10 + 272);

  *(v3 + 88) = v12(v11, v8);
  v13 = sub_10000F974(&qword_1004A11E0);
  v14 = swift_getKeyPath();
  v15 = *(v13 + 272);

  *(v3 + 96) = v15(v14, v8);
  v16 = swift_getKeyPath();
  v17 = *(sub_10000F974(&qword_1004A4F28) + 272);

  *(v3 + 104) = v17(v16, v8);
  v18 = sub_10000F974(&qword_1004A3F50);
  v19 = swift_getKeyPath();
  v20 = *(v18 + 272);

  *(v3 + 112) = v20(v19, v8);
  v21 = sub_10000F974(&qword_1004A2C60);
  v22 = swift_getKeyPath();
  *(v3 + 120) = (*(v21 + 272))(v22, v8);
  v23 = sub_10000F974(&qword_1004A2C80);
  v24 = swift_getKeyPath();
  *(v3 + 128) = (*(v23 + 272))(v24, v8);
  *(v3 + 136) = 0x8000000000000000;
  *(v3 + 144) = 0;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v25 = a1;
  v26 = StateObserver.init(configuration:)();
  *&v25[qword_1004A4F30 + 8] = &off_10046AEF0;
  swift_unknownObjectWeakAssign();
  return v26;
}

uint64_t sub_100085F30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100085F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085FD4(uint64_t a1)
{
  v2 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100086038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100086078()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000860C8()
{

  sub_10001B360(*(v0 + 24));

  sub_10001B360(*(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100086140()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

uint64_t sub_10008621C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(**(result + 80) + 200);
    v2 = result;

    v4 = v1(v3);

    v5 = *(*v4 + 280);
    swift_unknownObjectRetain();
    v5(sub_100089BCC, v2);
  }

  return result;
}

void sub_100086324(unint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  v7 = qword_1004A4F50;
  v8 = *(v4 + qword_1004A4F50);
  if (v8)
  {
    v9 = v8[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled];
    v8[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = 1;
    if (v9 != 1 && v8[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] == 1)
    {
      v10 = a4;
      v11 = a3;
      v12 = a1;
      v13 = v8;
      sub_10013833C(1.0);

      a1 = v12;
      a3 = v11;
      a4 = v10;
    }
  }

  if (!(a1 >> 62))
  {
    sub_1000867B4(1);
    v20 = *(v5 + qword_1004A4F38);
    if (!v20 || v20[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled] == (a2 & 1))
    {
      goto LABEL_25;
    }

    v21 = v20;
    sub_1001B2F18((a2 & 1));
    v22 = *&v21[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v22)
    {
      [v22 setUserInteractionEnabled:a2 & 1];
    }

    goto LABEL_24;
  }

  if (a1 >> 62 != 1)
  {
    v24 = __ROR8__(a1 ^ 0x8000000000000000, 3);
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        if (v24 != 3)
        {
          goto LABEL_7;
        }

        v25 = *(v5 + qword_1004A4F38);
        if (v25 && *(v25 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
        {
          v26 = v25;
          sub_1001B2F18(0);
          v27 = *&v26[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
          if (v27)
          {
            [v27 setUserInteractionEnabled:0];
          }
        }

        sub_1000867B4(0);
        v23 = 0;
LABEL_26:

        sub_100086898(v23);
        return;
      }

      sub_1000867B4(1);
      v32 = *(v5 + qword_1004A4F38);
      if (!v32 || (v32[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled] & 1) != 0)
      {
LABEL_25:
        v23 = 1;
        goto LABEL_26;
      }

      v21 = v32;
      sub_1001B2F18(1);
      v33 = *&v21[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
      if (v33)
      {
        [v33 setUserInteractionEnabled:1];
      }

LABEL_24:

      goto LABEL_25;
    }

    v28 = a4;
    if (v24)
    {
      sub_1000867B4(a3 & 1);
      v34 = *(v5 + qword_1004A4F38);
      if (v34 && *(v34 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) != (a2 & 1))
      {
        v30 = v34;
        sub_1001B2F18((a2 & 1));
        v35 = *&v30[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
        if (v35)
        {
          [v35 setUserInteractionEnabled:a2 & 1];
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_1000867B4(0);
      v29 = *(v5 + qword_1004A4F38);
      if (v29 && *(v29 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
      {
        v30 = v29;
        sub_1001B2F18(0);
        v31 = *&v30[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
        if (v31)
        {
          [v31 setUserInteractionEnabled:0];
        }

LABEL_51:
      }
    }

    sub_100086898(1);
    v36 = *(v5 + v7);
    if (!v36)
    {
      return;
    }

    v37 = v36[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled];
    v36[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = v28 & 1;
    if (v37 == (v28 & 1) || v36[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] != 1)
    {
      return;
    }

    v38 = v36;
    if (v28)
    {
      v19 = 1.0;
      goto LABEL_17;
    }

LABEL_16:
    v19 = 0.5;
LABEL_17:
    sub_10013833C(v19);

    return;
  }

LABEL_7:
  sub_1000867B4(a3 & 1);
  v14 = *(v5 + qword_1004A4F38);
  if (v14 && *(v14 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) != (a2 & 1))
  {
    v15 = v14;
    sub_1001B2F18((a2 & 1));
    v16 = *&v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v16)
    {
      [v16 setUserInteractionEnabled:a2 & 1];
    }
  }

  v17 = *(v5 + v7);
  if (v17)
  {
    v18 = v17[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled];
    v17[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = 0;
    if (v18 == 1 && v17[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] == 1)
    {
      v38 = v17;
      goto LABEL_16;
    }
  }
}

uint64_t sub_1000867B4(uint64_t result)
{
  v2 = *(v1 + qword_1004A4F40);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  v4 = *(v2 + 32);
  if (v4)
  {

    if ([v4 isEnabled])
    {
      if (v3)
      {
        goto LABEL_16;
      }

LABEL_12:
      v6 = *(v2 + 32);
      if (v6)
      {
        [v6 setEnabled:v3 & 1];
      }

      v7 = *(v2 + 40);
      if (v7)
      {
        v8 = v7;
        [v8 setEnabled:v3 & 1];
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v5 = *(v2 + 40);
  if (v5)
  {
    if ((([v5 isEnabled] ^ v3) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v3)
  {
    goto LABEL_12;
  }

LABEL_16:
}

void sub_100086898(char a1)
{
  v2 = qword_1004A4F50;
  v3 = *(v1 + qword_1004A4F50);
  if (v3)
  {
    [*(v3 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton) setHidden:(a1 & 1) == 0];
    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled];
      v5[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] = a1 & 1;
      if (v6 != (a1 & 1))
      {
        v8 = v5;
        v7 = 0.5;
        if (a1)
        {
          v7 = 1.0;
        }

        sub_10013833C(v7);
      }
    }
  }
}

uint64_t sub_10008696C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  if (*(a2 + qword_1004A4F68) == 1)
  {
    v5 = *((swift_isaMask & *a2) + 0x298);
    v6 = a2;
    v5(v3);
  }

  else
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100088A24;
    *(v9 + 24) = v4;
    v13[4] = sub_100031688;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000DC708;
    v13[3] = &unk_10046B0B8;
    v10 = _Block_copy(v13);
    v11 = a2;

    [v8 performWithoutAnimation:v10];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100086B68()
{

  StateValue.wrappedValue.getter();

  if (v6 == 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = *(**(result + 80) + 200);
      v2 = result;

      v4 = v1(v3);

      v5 = *(*v4 + 280);
      swift_unknownObjectRetain();
      v5(sub_100089BCC, v2);
    }
  }

  return result;
}

uint64_t sub_100086C94(uint64_t result)
{
  if (*result == 3)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = *(**(result + 80) + 200);
      v2 = result;

      v4 = v1(v3);

      v5 = *(*v4 + 280);
      swift_unknownObjectRetain();
      v5(sub_1000889E4, v2);
    }
  }

  return result;
}

uint64_t sub_10008717C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[qword_1004A4F30 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[qword_1004A4F38] = 0;
  *&v4[qword_1004A4F40] = 0;
  *&v4[qword_1004A4F48] = 0;
  *&v4[qword_1004A4F50] = 0;
  *&v4[qword_1004A4F58] = 0;
  *&v4[qword_1004A4F60] = 0;
  v4[qword_1004A4F68] = 0;
  *&v4[qword_1004A4F70] = 0;
  v10 = qword_1004A4F78;
  v11 = sub_10000F974(&unk_1004A6950);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D5058;
  v14 = *(v11 + 272);
  swift_retain_n();
  *&v5[v10] = v14(KeyPath, v13);
  v15 = qword_1004A4F80;
  v16 = sub_10000F974(&qword_1004A3F50);
  v17 = swift_getKeyPath();
  *&v5[v15] = (*(v16 + 272))(v17, v13);
  v18 = qword_1004A4F88;
  v19 = sub_10000F974(&qword_1004A53F8);
  v20 = swift_getKeyPath();
  *&v5[v18] = (*(v19 + 272))(v20, v13);
  v21 = qword_1004A4F90;
  *&v5[v21] = [objc_allocWithZone(UIView) init];
  v22 = qword_1004A4F98;
  type metadata accessor for TouchPassThroughView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = qword_1004A4FA0;
  *&v5[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = &v5[qword_1004A4FA8];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v42.receiver = v5;
  v42.super_class = type metadata accessor for EditView();
  v26 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v27 = objc_allocWithZone(UIAccessibilityHUDGestureManager);
  v28 = v26;
  v29 = [v27 initWithView:v28 delegate:v28];
  v30 = *(v28 + qword_1004A4F70);
  *(v28 + qword_1004A4F70) = v29;

  v31 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100089B6C;
  *(v33 + 24) = v32;
  v40 = sub_100089BB8;
  v41 = v33;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 1107296256;
  v38[2] = sub_1000DC708;
  v39 = &unk_10046B248;
  v34 = _Block_copy(v38);

  [v31 performWithoutAnimation:v34];
  _Block_release(v34);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = (*((swift_isaMask & *v28) + 0x2E8))(result);
  (*((swift_isaMask & *v28) + 0x2F0))(v36);
  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_9;
  }

  (*((swift_isaMask & *v28) + 0x2F8))();
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v37 = *(v28 + qword_1004A4F48);
  if (!v37)
  {
    goto LABEL_11;
  }

  if (*(v37 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad))
  {
    [*(v28 + qword_1004A4F98) addSubview:?];
LABEL_9:
    v39 = type metadata accessor for _GlassGroup();
    v40 = &protocol witness table for _GlassGroup;
    sub_1000315D4(v38);
    _GlassGroup.init(foreground:)();
    UIView._background.setter();

    return v28;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10008770C(void *a1)
{

  StateValue.wrappedValue.getter();

  return (*((swift_isaMask & *a1) + 0x298))();
}

void sub_1000877F4()
{
  v1 = qword_1004A4F68;
  if ((*(v0 + qword_1004A4F68) & 1) == 0)
  {
    v2 = v0;
    v3 = qword_1004A4F90;
    v4 = *(v0 + qword_1004A4F90);
    [v2 bounds];
    [v4 setFrame:?];

    v5 = &selRef_runAction_completion_;
    [v2 addSubview:*(v2 + v3)];
    m22 = *&qword_1004A4F98;
    v7 = *(v2 + qword_1004A4F98);
    [v2 bounds];
    [v7 setFrame:?];

    [v2 addSubview:*(v2 + *&m22)];
    v8 = qword_1004A4FA0;
    v9 = *(v2 + qword_1004A4FA0);
    [v2 bounds];
    [v9 setFrame:?];

    v10 = [v2 addSubview:*(v2 + v8)];
    v11 = (*((swift_isaMask & *v2) + 0x2C8))(v10);
    v12 = (*((swift_isaMask & *v2) + 0x2D0))(v11);
    v13 = *(v2 + qword_1004A4F50);
    if (v13)
    {
      v14 = *(v2 + *&m22);
      v15 = *&v13[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton];
      v16 = v13;
      [v14 addSubview:v15];
      *&v16[OBJC_IVAR____TtC7Measure18EditButtonSolarium_delegate + 8] = &off_10046B058;
      swift_unknownObjectWeakAssign();
    }

    v17 = qword_1004A4F38;
    v18 = *(v2 + qword_1004A4F38);
    if (v18)
    {
      *(v18 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_delegate + 8) = &off_10046B018;
      v12 = swift_unknownObjectWeakAssign();
      if (*(v18 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton))
      {
        v12 = [*(v2 + *&m22) addSubview:?];
      }
    }

    v19 = *(v2 + qword_1004A4F40);
    if (v19)
    {
      *(v19 + 24) = &off_10046B038;
      v12 = swift_unknownObjectWeakAssign();
      v20 = *(v19 + 40);
      if (v20)
      {
        v21 = objc_opt_self();

        v22 = v20;
        if (([v21 jasperAvailable] & 1) == 0)
        {
          v23 = *(v2 + *&m22);
          [v23 addSubview:v22];

          v22 = v23;
        }
      }
    }

    (*((swift_isaMask & *v2) + 0x2D8))(v12);
    v24 = *(v2 + qword_1004A4F58);
    if (!v24)
    {
      goto LABEL_17;
    }

    v25 = v24;
    [v2 frame];
    [v25 setFrame:?];
    [v25 setExclusiveTouch:1];
    [v25 addTarget:v2 action:"capture" forControlEvents:64];
    v26 = &selRef_runAction_completion_;
    v27 = [v25 layer];
    CGSize.init(_:_:)();
    [v27 setShadowOffset:?];

    v28 = [v25 layer];
    [v28 setShadowRadius:10.0];

    v29 = [v25 layer];
    LODWORD(v30) = 1036831949;
    [v29 setShadowOpacity:v30];

    v31 = qword_1004A0530;
    v32 = v25;
    if (v31 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      [v32 setTintColor:qword_1004D50A0];
      [*(v2 + *&m22) v5[408]];
      v33 = [v32 sizeToFit];
      v34 = (*((swift_isaMask & *v2) + 0x2A0))(v33);
      v36 = v35;
      v37 = [v32 v26[466]];

      CATransform3DMakeTranslation(&v52, v34, v36, 0.0);
      [v37 setTransform:&v52];

      [v32 setAdjustsImageWhenDisabled:1];
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = objc_allocWithZone(AVCaptureEventInteraction);
      *&v52.m21 = sub_1000898E8;
      *&v52.m22 = v38;
      *&v52.m11 = _NSConcreteStackBlock;
      *&v52.m12 = 1107296256;
      *&v52.m13 = sub_1000508F8;
      *&v52.m14 = &unk_10046B1D0;
      v40 = _Block_copy(&v52);

      v41 = [v39 initWithEventHandler:v40];
      _Block_release(v40);

      v42 = *(v2 + qword_1004A4F60);
      *(v2 + qword_1004A4F60) = v41;
      v43 = v41;

      if (v43)
      {
        v44 = *(v2 + *&m22);
        v45 = v43;
        v46 = v44;
        [v46 addInteraction:v45];
      }

LABEL_17:
      sub_1000867B4(0);
      v47 = *(v2 + v17);
      if (v47 && *(v47 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
      {
        v48 = v47;
        sub_1001B2F18(0);
        v49 = *&v48[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
        if (v49)
        {
          [v49 setUserInteractionEnabled:0];
        }
      }

      v1[v2] = 1;
      v50 = objc_opt_self();
      v32 = swift_allocObject();
      v32[2] = v2;
      v26 = swift_allocObject();
      v26[2] = sub_1000898E0;
      v26[3] = v32;
      *&v52.m21 = sub_100089BB8;
      *&v52.m22 = v26;
      *&v52.m11 = _NSConcreteStackBlock;
      *&v52.m12 = 1107296256;
      *&v52.m13 = sub_1000DC708;
      *&v52.m14 = &unk_10046B1A8;
      v1 = _Block_copy(&v52);
      m22 = v52.m22;
      v5 = v2;

      [v50 performWithoutAnimation:v1];
      _Block_release(v1);
      LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

      if ((v50 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_26:
      swift_once();
    }

    (*((swift_isaMask & *v5) + 0x2E0))(v51);
  }
}

void sub_10008804C(void *a1)
{
  v1 = [a1 phase];
  if (v1 == 2)
  {
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = *(Strong + qword_1004A4F58);
      v11 = Strong;
      v12 = v10;

      if (v10)
      {
        [v12 setHighlighted:0];
      }
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v5 = v13;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100084F78();
        swift_unknownObjectRelease();
      }

      goto LABEL_17;
    }

    return;
  }

  if (v1)
  {
LABEL_7:
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = *(v6 + qword_1004A4F58);
      v8 = v6;
      v5 = v7;

      if (v7)
      {
        [v5 setHighlighted:0];
        goto LABEL_17;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = *(v2 + qword_1004A4F58);
      v4 = v2;
      v5 = v3;

      if (v3)
      {
        [v5 setHighlighted:1];
LABEL_17:
      }
    }
  }
}

uint64_t sub_1000881EC(void *a1)
{
  (*((swift_isaMask & *a1) + 0x300))();

  StateValue.wrappedValue.getter();

  return (*((swift_isaMask & *a1) + 0x298))();
}

void sub_1000882C8(void *a1)
{
  v1 = a1;
  sub_1000877F4();
}

uint64_t sub_100088310(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(**(result + 80) + 200);

    v5 = v3(v4);

    (*(*v5 + 280))(a1, 0);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100088408(void *a1)
{
  v1 = a1;
  sub_100088310(sub_100084E84);
}

void sub_100088468(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1;
    sub_100084F78();
    swift_unknownObjectRelease();
  }
}

id sub_1000884E0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100088A9C();

  return v6;
}

void sub_100088554(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a2 setHighlighted:0];
    v5 = qword_1004A4F50;
    v6 = *&v4[qword_1004A4F50];
    if (v6 && [a2 isDescendantOfView:*(v6 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton)])
    {
      v7 = *&v4[v5];
      v8 = v7;

      if (!v7)
      {
        return;
      }

      v8[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isShowingAccessibilityHUD] = 1;
      v4 = v8;
    }
  }
}

void sub_100088624(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  sub_1000893B8(a2, a3);
}

void sub_1000886A4()
{
  sub_10001B9D0(v0 + qword_1004A4F30);

  v1 = *(v0 + qword_1004A4FA0);
}

id sub_1000887A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000887DC(uint64_t a1)
{
  sub_10001B9D0(a1 + qword_1004A4F30);

  v2 = *(a1 + qword_1004A4FA0);
}

uint64_t type metadata accessor for EditView()
{
  result = qword_1004A5038;
  if (!qword_1004A5038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000889EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100088A9C()
{
  v1 = v0;
  result = [v0 hitTest:0 withEvent:?];
  if (result)
  {
    v3 = result;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {

      return 0;
    }

    v5 = v4;
    objc_opt_self();
    object = swift_dynamicCastObjCClass();
    if (object)
    {
      v7 = v3;
      v8 = [object imageView];
      v9 = [v8 image];

      v10 = [object titleForState:0];
      if (v10)
      {
        v11 = v10;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v12;
      }

      else
      {

        object = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = *&v1[qword_1004A4F38];
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
      if (v14)
      {
        v15 = v14;
        if ([v5 isDescendantOfView:v15])
        {

          v16 = [objc_opt_self() mainBundle];
          v82._object = 0xE000000000000000;
          v17._object = 0x8000000100403AD0;
          v17._countAndFlagsBits = 0xD00000000000001FLL;
          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          v82._countAndFlagsBits = 0;
          object = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v82)._object;
        }
      }
    }

    v19 = *&v1[qword_1004A4F40];
    if (v19)
    {
      v20 = *(v19 + 40);
      if (v20)
      {
        v21 = v20;
        if ([v5 isDescendantOfView:v21])
        {

          v22 = [objc_opt_self() mainBundle];
          v23._countAndFlagsBits = 0xD000000000000012;
          v83._object = 0xE000000000000000;
          v23._object = 0x8000000100403AB0;
          v24._countAndFlagsBits = 0;
          v24._object = 0xE000000000000000;
          v83._countAndFlagsBits = 0;
          object = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v83)._object;
        }
      }
    }

    v25 = *&v1[qword_1004A4F58];
    if (v25)
    {
      v26 = v25;
      if ([v5 isDescendantOfView:v26])
      {

        v27 = [objc_opt_self() mainBundle];
        v84._object = 0xE000000000000000;
        v28._countAndFlagsBits = 0xD000000000000022;
        v28._object = 0x8000000100403A80;
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        v84._countAndFlagsBits = 0;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v84)._object;
      }
    }

    v30 = qword_1004A4F50;
    v31 = *&v1[qword_1004A4F50];
    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton);
      if ([v5 isDescendantOfView:v32])
      {

        v33 = [objc_opt_self() mainBundle];
        v85._object = 0xE000000000000000;
        v34._object = 0x8000000100403A60;
        v34._countAndFlagsBits = 0xD00000000000001FLL;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v85._countAndFlagsBits = 0;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v85)._object;

        v36 = *&v1[v30];
        if (v36)
        {
          *(v36 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isShowingAccessibilityHUD) = 1;
        }
      }

      else
      {
      }
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    if (!v9 || (v40 = v9, v41 = [v40 CGImage], v40, !v41))
    {
      if (object)
      {
        v52 = String._bridgeToObjectiveC()();
      }

      else
      {
        v52 = 0;
      }

      v53 = [objc_allocWithZone(UIAccessibilityHUDItem) initWithTitle:v52 image:v9 imageInsets:{UIEdgeInsetsZero.top, left, bottom, right}];

      return v53;
    }

    v42 = objc_opt_self();
    v43 = [v42 sharedApplication];
    v44 = [v43 preferredContentSizeCategory];

    LOBYTE(v43) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v45 = 1.0;
    if ((v43 & 1) == 0)
    {
LABEL_42:
      v56 = v41;
      [v40 scale];
      v58 = [objc_allocWithZone(UIImage) initWithCGImage:v56 scale:0 orientation:v45 * v57];

      v59 = [v58 imageWithRenderingMode:2];
      v60 = v59;
      if (object)
      {
        v61 = String._bridgeToObjectiveC()();
      }

      else
      {
        v61 = 0;
      }

      v53 = [objc_allocWithZone(UIAccessibilityHUDItem) initWithTitle:v61 image:v59 imageInsets:{UIEdgeInsetsZero.top, left, bottom, right}];

      return v53;
    }

    v46 = [v42 sharedApplication];
    v47 = [v46 preferredContentSizeCategory];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
    {
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v54 & 1) == 0)
      {
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;
        if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
        {
        }

        else
        {
          v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v66 & 1) == 0)
          {
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;
            if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
            {

              v45 = 0.5;
              goto LABEL_42;
            }

            v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v71)
            {

              v45 = 0.5;
              goto LABEL_42;
            }

            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v73;
            if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
            {
            }

            else
            {
              v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v76 & 1) == 0)
              {
                v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v79 = v78;
                if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
                {
                }

                else
                {
                  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v81 & 1) == 0)
                  {
                    goto LABEL_42;
                  }
                }

                *&v55 = 0.7;
                goto LABEL_41;
              }
            }

            *&v55 = 0.6;
LABEL_41:
            v45 = *&v55;
            goto LABEL_42;
          }
        }

        v45 = 0.4;
        goto LABEL_42;
      }
    }

    *&v55 = 0.3;
    goto LABEL_41;
  }

  return result;
}

void sub_1000893B8(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = (__chkstk_darwin)(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v33 = [v3 hitTest:0 withEvent:{a1, a2}];
  if (v33)
  {
    v31 = v10;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      [v20 setHighlighted:1];
      [v21 sendActionsForControlEvents:64];
      sub_100018630(0, &qword_1004A3F00);
      v30 = v9;
      v28 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v29 = *(v14 + 8);
      v29(v17, v13);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v21;
      aBlock[4] = sub_1000898A0;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_10046B130;
      v24 = _Block_copy(aBlock);
      v25 = v33;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10003180C();
      sub_10000F974(&unk_1004A3D80);
      sub_100031864();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v28;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v24);

      (*(v32 + 8))(v8, v6);
      (*(v31 + 8))(v12, v30);
      v29(v19, v13);
    }

    else
    {
      v27 = v33;
    }
  }
}

uint64_t sub_100089828()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100089860()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000898A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000898F0()
{
  v1 = v0;
  *(v0 + qword_1004A4F30 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004A4F38) = 0;
  *(v0 + qword_1004A4F40) = 0;
  *(v0 + qword_1004A4F48) = 0;
  *(v0 + qword_1004A4F50) = 0;
  *(v0 + qword_1004A4F58) = 0;
  *(v0 + qword_1004A4F60) = 0;
  *(v0 + qword_1004A4F68) = 0;
  *(v0 + qword_1004A4F70) = 0;
  v2 = qword_1004A4F78;
  v3 = sub_10000F974(&unk_1004A6950);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v3 + 272);
  swift_retain_n();
  *(v1 + v2) = v6(KeyPath, v5);
  v7 = qword_1004A4F80;
  v8 = sub_10000F974(&qword_1004A3F50);
  v9 = swift_getKeyPath();
  *(v1 + v7) = (*(v8 + 272))(v9, v5);
  v10 = qword_1004A4F88;
  v11 = sub_10000F974(&qword_1004A53F8);
  v12 = swift_getKeyPath();
  *(v1 + v10) = (*(v11 + 272))(v12, v5);
  v13 = qword_1004A4F90;
  *(v1 + v13) = [objc_allocWithZone(UIView) init];
  v14 = qword_1004A4F98;
  type metadata accessor for TouchPassThroughView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = qword_1004A4FA0;
  *(v1 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100089BD4()
{
  swift_getObjectType();
  v1 = sub_10008A35C();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 imageWithRenderingMode:2];

    v4 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v3 style:0 target:v0 action:"showHistory"];
    v5 = OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone;
    v6 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone);
    *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone) = v4;

    v7 = *(v0 + v5);
    if (v7)
    {
      swift_getMetatypeMetadata();
      v8 = v7;
      String.init<A>(describing:)();
      v9 = String._bridgeToObjectiveC()();

      [v8 setAccessibilityIdentifier:v9];

      v10 = *(v0 + v5);
      if (v10)
      {
        [v10 setEnabled:0];
        v11 = *(v0 + v5);
        if (v11)
        {
          v12 = objc_opt_self();
          v13 = v11;
          v14 = [v12 whiteColor];
          [v13 setTintColor:v14];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100089D58(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for _Glass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10008A35C();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 imageWithRenderingMode:2];

    v19 = [objc_allocWithZone(UIButton) initWithFrame:{a1, a2, a3, a4}];
    v20 = OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad;
    v21 = *(v4 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad);
    *(v4 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad) = v19;

    v22 = *(v4 + v20);
    if (v22)
    {
      [v22 setImage:v18 forState:0];
      v23 = *(v4 + v20);
      if (v23)
      {
        [v23 addTarget:v4 action:"showHistory" forControlEvents:64];
        v24 = *(v4 + v20);
        if (v24)
        {
          [v24 setEnabled:0];
          v25 = *(v4 + v20);
          if (v25)
          {
            v26 = objc_opt_self();
            v27 = v25;
            v28 = [v26 whiteColor];
            [v27 setTintColor:v28];

            v29 = *(v4 + v20);
            if (v29)
            {
              v43[0] = ObjectType;
              swift_getMetatypeMetadata();
              v30 = v29;
              String.init<A>(describing:)();
              v31 = String._bridgeToObjectiveC()();

              [v30 setAccessibilityIdentifier:v31];

              v32 = *(v4 + v20);
              if (v32)
              {
                v33 = v32;
                static _Glass._GlassVariant.regular.getter();
                _Glass.init(_:smoothness:)();
                v43[3] = v12;
                v43[4] = &protocol witness table for _Glass;
                sub_1000315D4(v43);
                _Glass.flexible(_:)();
                (*(v13 + 8))(v15, v12);
                UIView._background.setter();

                v34 = *(v4 + v20);
                if (v34)
                {
                  v35 = [v34 layer];
                  [v35 setMasksToBounds:1];

                  v36 = *(v5 + v20);
                  if (v36)
                  {
                    v37 = [v36 layer];
                    v44.origin.x = a1;
                    v44.origin.y = a2;
                    v44.size.width = a3;
                    v44.size.height = a4;
                    [v37 setCornerRadius:CGRectGetWidth(v44) * 0.5];
                  }
                }
              }
            }
          }
        }
      }
    }

    v38 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v5];
    v39 = *(v5 + v20);
    if (v39)
    {
      v40 = v39;
      v41 = v38;
      [v40 addInteraction:v41];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008A204()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone);
  if (v1 && (result = [v1 isEnabled], (result & 1) != 0) || (result = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad)) != 0 && (result = objc_msgSend(result, "isEnabled"), result))
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler);
    if (v3)
    {

      v3(v4);

      return sub_1000223C4(v3);
    }
  }

  return result;
}

id sub_10008A35C()
{
  v0 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v0];
  [v1 pointSize];
  v3 = [objc_opt_self() configurationWithPointSize:7 weight:3 scale:v2];
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  return v5;
}

uint64_t sub_10008A4A4(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone] = 0;
  *&v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad] = 0;
  v22.receiver = v6;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = &v15[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler];
  v17 = *&v15[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler];
  *v16 = a1;
  *(v16 + 1) = a2;
  v18 = v15;

  sub_1000223C4(v17);
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1)
  {
    sub_100089D58(a3, a4, a5, a6);
LABEL_5:

    return v18;
  }

  if (!v20)
  {
    sub_100089BD4();
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10008A624()
{
  v1 = sub_10000F974(&qword_1004A2D60);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad);
  if (!v8)
  {
    return 0;
  }

  v9 = objc_allocWithZone(UIPreviewParameters);
  v10 = v8;
  v11 = [v9 init];
  v12 = v10;
  [v12 bounds];
  CGRect.center.getter();
  [v12 bounds];
  CGRect.init(centerPoint:size:)();
  v17 = [objc_opt_self() bezierPathWithOvalInRect:{v13, v14, v15, v16}];
  [v11 setVisiblePath:v17];

  sub_100040E00();
  v18 = [objc_allocWithZone(UITargetedPreview) initWithView:v12 parameters:v11];

  *v7 = v18;
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v19 = type metadata accessor for UIPointerShape();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = UIPointerStyle.init(effect:shape:)();

  return v20;
}

double sub_10008A8C0()
{
  v0 = *effectiveStatusBarOrientation.unsafeMutableAddressor();
  result = 0.0;
  xmmword_1004D4AB8 = 0u;
  *&qword_1004D4AC8 = 0u;
  qword_1004D4AD8 = 0;
  qword_1004D4AE0 = v0;
  qword_1004D4B18 = 0;
  *&qword_1004D4AF8 = 0u;
  *&qword_1004D4B08 = 0u;
  xmmword_1004D4AE8 = 0u;
  return result;
}

void sub_10008A8FC(unsigned int a1)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v7 = *(v1 + 40);
  v8 = *(v2 + 48);
  *v6 = v7;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v4 + 104);
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v7;
  v12 = _dispatchPreconditionTest(_:)();
  v28 = *(v4 + 8);
  v28(v6, v3);

  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  Synchronized.wrappedValue.getter();

  v13 = v29;
  if ((v30[0] & 1) != 0 || v8 == v29)
  {
LABEL_8:
    swift_beginAccess();
    v16 = *(v2 + 40);
    *v6 = v16;
    v10(v6, v9, v3);
    v17 = v16;
    LOBYTE(v16) = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if ((v29 - 1) > 1u)
  {
    sub_10004D9B4();
    *v6 = static OS_dispatch_queue.main.getter();
    v10(v6, v9, v3);
    v18 = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if ((v18 & 1) == 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v19 = *(**(v2 + 56) + 144);

    v19(v30, v20);

    if (((BYTE3(v30[0]) | BYTE4(v30[0])) & 1) == 0)
    {
      sub_10008AF48(v29);
    }

    swift_beginAccess();
    v21 = *(v2 + 40);
    *v6 = v21;
    v10(v6, v9, v3);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if (v21)
    {
LABEL_19:
      *(v2 + 48) = v29;
      swift_endAccess();
      return;
    }

    __break(1u);
  }

  else if ((v8 & 0xFE) == 6)
  {
    swift_beginAccess();
    v14 = *(v2 + 40);
    *v6 = v14;
    v10(v6, v9, v3);
    v15 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if (v14)
    {
LABEL_9:
      *(v2 + 48) = v13;
      swift_endAccess();
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  sub_10004D9B4();
  *v6 = static OS_dispatch_queue.main.getter();
  v10(v6, v9, v3);
  v23 = _dispatchPreconditionTest(_:)();
  v28(v6, v3);
  if (v23)
  {
    v24 = *(**(v2 + 56) + 144);

    v24(v30, v25);

    if (((BYTE3(v30[0]) | BYTE4(v30[0])) & 1) == 0)
    {
      sub_10008AF48(v29);
    }

    swift_beginAccess();
    v26 = *(v2 + 40);
    *v6 = v26;
    v10(v6, v9, v3);
    v27 = v26;
    LOBYTE(v26) = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_10008ADB4()
{
  type metadata accessor for FeedbackGenerator();
  swift_allocObject();
  result = sub_10008ADF0();
  qword_1004D4B20 = result;
  return result;
}

uint64_t sub_10008ADF0()
{
  v1 = v0;
  sub_10000F974(&qword_1004A5508);
  swift_allocObject();
  *(v0 + 16) = Synchronized.init(wrappedValue:)();
  sub_10004D9B4();
  *(v0 + 24) = static OS_dispatch_queue.main.getter();
  *(v0 + 32) = 0;
  *(v0 + 40) = static OS_dispatch_queue.main.getter();
  *(v0 + 48) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);

  *(v1 + 56) = v5(KeyPath, v4);
  sub_10000F974(&qword_1004A3FA8);
  swift_allocObject();
  *(v1 + 64) = Synchronized.init(wrappedValue:)();
  return v1;
}

void sub_10008AF48(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004D9B4();
  *v7 = static OS_dispatch_queue.main.getter();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = _dispatchPreconditionTest(_:)();
  v33 = *(v5 + 8);
  v33(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  Synchronized.wrappedValue.getter();

  v11 = v36;
  if (*(v36 + 16) && (v12 = sub_10019C35C(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + v12);

    if (v14 == 1)
    {

      Synchronized.wrappedValue.getter();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35._countAndFlagsBits = v36;
      sub_1000BB308(0, a1, isUniquelyReferenced_nonNull_native);
      Synchronized.wrappedValue.setter();
LABEL_30:

      return;
    }
  }

  else
  {
  }

  v32 = a1;
  swift_beginAccess();
  v17 = *(v2 + 24);
  v16 = *(v2 + 32);
  *v7 = v17;
  v9(v7, v8, v4);

  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v33(v7, v4);

  if ((v19 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!v16)
  {
    if (qword_1004A0248 != -1)
    {
      swift_once();
    }

    v20._countAndFlagsBits = 0xD000000000000045;
    v20._object = 0x8000000100403C70;
    Log.debug(_:isPrivate:)(v20, 0);
    type metadata accessor for HapticFeedbackGenerator();
    swift_allocObject();
    v21 = sub_10008DB70();
    swift_beginAccess();
    v22 = *(v2 + 24);
    *v7 = v22;
    v9(v7, v8, v4);
    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    v33(v7, v4);
    if ((v22 & 1) == 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    *(v2 + 32) = v21;
    swift_endAccess();
  }

  v24 = *(v2 + 24);
  v25 = *(v2 + 32);
  *v7 = v24;
  v9(v7, v8, v4);

  v26 = v24;
  v27 = _dispatchPreconditionTest(_:)();
  v33(v7, v4);

  if ((v27 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_16:
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v28._object = 0x8000000100403CC0;
    v28._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v28);
    v29 = v32;
    v34 = v32;
    _print_unlocked<A, B>(_:_:)();
    Log.debug(_:isPrivate:)(v35, 0);

    if (v29 > 3u)
    {
      if (v29 > 5u)
      {
        if (v29 == 6 || v29 == 7)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      if (v29 != 4)
      {
LABEL_28:
        v30 = 0;
        goto LABEL_29;
      }

LABEL_27:
      v30 = 2;
      goto LABEL_29;
    }

    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        goto LABEL_27;
      }
    }

    else if (!v29)
    {
      goto LABEL_30;
    }

LABEL_25:
    v30 = 1;
LABEL_29:
    sub_10008D93C(v30);
    goto LABEL_30;
  }

  if (v25)
  {
    if (qword_1004A0248 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_10008B448()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for FeedbackGenerator.Feedback(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedbackGenerator.Feedback(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008B628()
{
  result = qword_1004A5500;
  if (!qword_1004A5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5500);
  }

  return result;
}

unint64_t sub_10008B680()
{
  _StringGuts.grow(_:)(34);

  v1 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_bundleIdentifier + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_bundleIdentifier);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_bundleIdentifier + 8);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6F6973726576202CLL;
  v5._object = 0xEB00000000203A6ELL;
  String.append(_:)(v5);
  v6 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_versionString + 8);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_versionString);
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_versionString + 8);
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0xD000000000000012;
}

id sub_10008B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (!a2)
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = [v11 bundleIdentifier];

    if (v12)
    {
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v13;
    }

    else
    {
      a1 = 0;
      a2 = 0;
    }
  }

  v14 = &v5[OBJC_IVAR____TtC7Measure8MetaData_bundleIdentifier];
  *v14 = a1;
  v14[1] = a2;
  if (!a4)
  {
    v15 = [objc_opt_self() mainBundle];
    v16 = [v15 infoDictionary];

    if (v16)
    {
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v17 + 16))
      {
        v18 = sub_100198230(0xD00000000000001ALL, 0x80000001004020E0);
        if (v19)
        {
          sub_10000FE60(*(v17 + 56) + 32 * v18, v24);

          v20 = swift_dynamicCast();
          if (v20)
          {
            a4 = v26;
          }

          else
          {
            a4 = 0;
          }

          if (v20)
          {
            a3 = v25;
          }

          else
          {
            a3 = 0;
          }

          goto LABEL_17;
        }
      }
    }

    a4 = 0;
    a3 = 0;
  }

LABEL_17:
  v21 = &v5[OBJC_IVAR____TtC7Measure8MetaData_versionString];
  *v21 = a3;
  *(v21 + 1) = a4;
  v23.receiver = v5;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, "init");
}

id sub_10008B98C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 decodeObjectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v17;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_10002D238(&v20);
    v6 = 0;
    v7 = 0;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 decodeObjectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_10002D238(&v20);
    v11 = 0;
    v12 = 0;
  }

  v13 = objc_allocWithZone(ObjectType);
  v14 = sub_10008B7A0(v6, v7, v11, v12);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

void sub_10008BBC8(void *a1)
{

  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v2 forKey:v3];

  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v4 forKey:v5];
}

uint64_t sub_10008BEA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10008BEFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008BF70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000F974(&qword_1004A28C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10008C040(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000F974(&qword_1004A28C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MeasurementsHistory()
{
  result = qword_1004A5660;
  if (!qword_1004A5660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008C13C()
{
  sub_10008C1F8(319, &qword_1004A5670, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10008C1F8(319, &unk_1004A5678, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10008C1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MeasurementHistoryItem();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10008C28C(uint64_t a1)
{
  result = sub_10008C2B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008C2B4()
{
  result = qword_1004A56D8;
  if (!qword_1004A56D8)
  {
    type metadata accessor for MeasurementsHistory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A56D8);
  }

  return result;
}

id sub_10008C318(uint64_t a1, uint64_t *a2)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v4 = *(&xmmword_1004D4AE8 + 1);
    *a2 = Contexts.PrivateQueue.init(_:)();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10008C3C4@<X0>(void *a1@<X2>, void **a2@<X3>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

uint64_t sub_10008C424(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      type metadata accessor for MeasureObject();
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10008C49C(uint64_t a1)
{
  result = sub_10008C4C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008C4C4()
{
  result = qword_1004A5708;
  if (!qword_1004A5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5708);
  }

  return result;
}

BOOL sub_10008C518(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for MeasurementHistoryItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000F974(&qword_1004A28C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v33[-v12];
  v14 = sub_10000F974(&qword_1004A5710);
  __chkstk_darwin(v14);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v33[-v18];
  if ((sub_10007B2EC(*a1) & 1) == 0)
  {
    return 0;
  }

  v35 = v10;
  v36 = v7;
  v37 = type metadata accessor for MeasurementsHistory();
  v20 = *(v37 + 20);
  v21 = *(v14 + 48);
  sub_10008C928(a1 + v20, v19);
  sub_10008C928(a2 + v20, &v19[v21]);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_10008C928(v19, v13);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v24 = &v19[v21];
      v25 = v36;
      sub_10008C998(v24, v36);
      v34 = sub_1001B2584(v13, v25);
      sub_10002339C(v25);
      sub_10002339C(v13);
      sub_100018F04(v19, &qword_1004A28C0);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_10002339C(v13);
LABEL_7:
    v23 = v19;
LABEL_15:
    sub_100018F04(v23, &qword_1004A5710);
    return 0;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_100018F04(v19, &qword_1004A28C0);
LABEL_9:
  v26 = *(v37 + 24);
  v27 = *(v14 + 48);
  sub_10008C928(a1 + v26, v16);
  sub_10008C928(a2 + v26, &v16[v27]);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v27], 1, v4) == 1)
    {
      sub_100018F04(v16, &qword_1004A28C0);
      return 1;
    }

    goto LABEL_14;
  }

  v28 = v35;
  sub_10008C928(v16, v35);
  if (v22(&v16[v27], 1, v4) == 1)
  {
    sub_10002339C(v28);
LABEL_14:
    v23 = v16;
    goto LABEL_15;
  }

  v30 = &v16[v27];
  v31 = v36;
  sub_10008C998(v30, v36);
  v32 = sub_1001B2584(v28, v31);
  sub_10002339C(v31);
  sub_10002339C(v28);
  sub_100018F04(v16, &qword_1004A28C0);
  return (v32 & 1) != 0;
}

uint64_t sub_10008C928(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A28C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeasurementHistoryItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008CA00(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10008CE7C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10008CE7C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10008CE88(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10008CE7C(v3, v5, v2 != 0);
  return v12;
}

id sub_10008CC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC7Measure29PanRecognizerWithInitialTouch_initialTouchLocation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_10002D2A0(a1, v18);
  v8 = v19;
  if (v19)
  {
    v9 = sub_10000FEBC(v18, v19);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_10000FF00(v18);
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithTarget:action:", v14, a2);
  swift_unknownObjectRelease();
  sub_10002D238(a1);
  return v15;
}

uint64_t sub_10008CE7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_10008CE88(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10001B92C();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10001B92C();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10008D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MeasurementHistoryItem();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10008D178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MeasurementHistoryItem();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SpatialPlattersHistoryItem()
{
  result = qword_1004A57A0;
  if (!qword_1004A57A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008D27C()
{
  type metadata accessor for MeasurementHistoryItem();
  if (v0 <= 0x3F)
  {
    sub_10008D300();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10008D300()
{
  if (!qword_1004A57B0)
  {
    sub_10008D358();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004A57B0);
    }
  }
}

unint64_t sub_10008D358()
{
  result = qword_1004ABAE0;
  if (!qword_1004ABAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004ABAE0);
  }

  return result;
}

uint64_t sub_10008D3AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 512))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10008D408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 504) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 512) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 512) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10008D4F0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (*(*v1 + 112))();
    if (v2)
    {

      return (*(*v1 + 112))();
    }
  }

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(62);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001004016C0;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x80000001004016F0;
  v5._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v5);
  sub_100046EB0();
  v6._countAndFlagsBits = static NSThread.prettyPrintCallStack(toDepth:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  Log.error(_:isPrivate:)(v7, 0);

  if (v1)
  {
    return (*(*v1 + 112))();
  }

  return 0;
}

uint64_t sub_10008D6BC()
{
  result = Contexts.UIKit.init()();
  qword_1004D4B38 = result;
  return result;
}

id sub_10008D6DC@<X0>(void *a1@<X8>)
{
  if (qword_1004A01A0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4B38;
  *a1 = qword_1004D4B38;

  return v2;
}

uint64_t sub_10008D74C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_10008D820(v4, __dst) & 1;
}

unint64_t sub_10008D7A4(uint64_t a1)
{
  result = sub_10008D7CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008D7CC()
{
  result = qword_1004A5808;
  if (!qword_1004A5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5808);
  }

  return result;
}

uint64_t sub_10008D820(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v12 = v2;
  v13 = v3;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!v4)
    {
      v6 = a1;
      v5 = a2;
      sub_10004B20C(a2, v10);
      goto LABEL_10;
    }

LABEL_12:
    v9 = 0;
    return v9 & 1;
  }

  v5 = a2;
  if (!v4)
  {
    sub_10004B20C(a2, v10);
    goto LABEL_12;
  }

  v6 = a1;
  sub_10000F974(&qword_1004AC2D0);
  sub_10004B20C(v5, v10);
  v7 = static HashableWeakRef.== infix(_:_:)();
  sub_100013C4C(v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  memcpy(v10, (v6 + 32), 0x1E0uLL);
  memcpy(__dst, (v5 + 32), sizeof(__dst));
  v9 = static ComputedCameraProperties.__derived_struct_equals(_:_:)();
  return v9 & 1;
}

uint64_t sub_10008D93C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004D9B4();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  v9 = *(v2 + 16);
  if (*(v9 + 16))
  {
    v10 = sub_10019C35C(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 24 * v10 + 8);

      v12(v13);
    }
  }

  if (qword_1004A0248 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v15._object = 0x8000000100403E60;
  v15._countAndFlagsBits = 0xD00000000000003ALL;
  String.append(_:)(v15);
  v16[15] = a1;
  _print_unlocked<A, B>(_:_:)();
  Log.error(_:isPrivate:)(v17, 0);
}

uint64_t sub_10008DB70()
{
  v0 = 0;
  while (1)
  {
    v3 = *(&off_100464D28 + v0 + 32);
    if (*(&off_100464D28 + v0 + 32))
    {
      if (v3 == 1)
      {
        v4 = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
        v5 = sub_10008E17C;
      }

      else
      {
        v6 = [objc_opt_self() lightConfiguration];
        v4 = [objc_allocWithZone(UISelectionFeedbackGenerator) initWithConfiguration:v6];

        v5 = sub_10008E1A4;
      }
    }

    else
    {
      v4 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
      v5 = sub_10008E18C;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v7;
    v10 = v8;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_10019C35C(v3);
    v14 = _swiftEmptyDictionarySingleton[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (_swiftEmptyDictionarySingleton[3] < v17)
    {
      sub_1000B6900(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_10019C35C(v3);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

LABEL_14:
      if (v18)
      {
        goto LABEL_2;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v23 = v12;
    sub_1000BDB0C();
    v12 = v23;
    if (v18)
    {
LABEL_2:
      v1 = _swiftEmptyDictionarySingleton[7] + 24 * v12;
      v2 = *v1;
      *v1 = v10;
      *(v1 + 8) = sub_10008E154;
      *(v1 + 16) = v9;

      goto LABEL_3;
    }

LABEL_15:
    _swiftEmptyDictionarySingleton[(v12 >> 6) + 8] |= 1 << v12;
    *(_swiftEmptyDictionarySingleton[6] + v12) = v3;
    v20 = (_swiftEmptyDictionarySingleton[7] + 24 * v12);
    *v20 = v10;
    v20[1] = sub_10008E154;
    v20[2] = v9;

    v21 = _swiftEmptyDictionarySingleton[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_21;
    }

    _swiftEmptyDictionarySingleton[2] = v22;
LABEL_3:
    if (++v0 == 3)
    {
      result = v25;
      *(v25 + 16) = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10008DE78()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for InstrumentationMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InstrumentationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10008E028()
{
  result = qword_1004A58B0;
  if (!qword_1004A58B0)
  {
    sub_100013BB0(&qword_1004A58B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A58B0);
  }

  return result;
}

unint64_t sub_10008E090()
{
  result = qword_1004A58C0;
  if (!qword_1004A58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A58C0);
  }

  return result;
}

uint64_t sub_10008E0E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E11C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for InstrumentExecutionPriority.Request(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for InstrumentExecutionPriority.Request(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008E318()
{
  result = qword_1004A58C8;
  if (!qword_1004A58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A58C8);
  }

  return result;
}

id sub_10008E36C@<X0>(void *a1@<X8>)
{
  a1[3] = &_s8SceneKitVN;
  a1[4] = sub_100028DB8();
  if (qword_1004A02D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D4E90;
  *a1 = qword_1004D4E90;

  return v2;
}

unint64_t sub_10008E480@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &_s20EdgeDetectionContextVN;
  result = sub_10008E4B4();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_10008E4B4()
{
  result = qword_1004A58D0;
  if (!qword_1004A58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A58D0);
  }

  return result;
}

id sub_10008E508@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &_s8SceneKitVN;
  a1[4] = sub_100028DB8();
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v3 = *(&xmmword_1004D4AE8 + 1);
    *a1 = Contexts.PrivateQueue.init(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneUpdate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10008E6FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10008E744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10008E7A0(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10008E7BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10008E818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10008E878(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_10008E8B4(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    result = sub_1001983A8(result);
    if (v6)
    {
      v5 = *(*(v4 + 56) + 8 * result);
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 8);
    result = sub_1000BB434(v7, v3, isUniquelyReferenced_nonNull_native);
    *(v2 + 8) = v9;
  }

  return result;
}

uint64_t sub_10008E948()
{
  result = Contexts.UIKit.init()();
  qword_1004D4B40 = result;
  return result;
}

void sub_10008E968(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 - 3;
  if ((a2 - 3) >= 7u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = a2;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10008E9B0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = a1 - 3;
  if ((a1 - 3) >= 7u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = a1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10008EA28()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = v1 - 3;
  if ((v1 - 3) >= 7)
  {
    Hasher._combine(_:)(7uLL);
    v2 = v1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10008EA88@<X0>(void *a1@<X8>)
{
  result = sub_100103A68(&off_100465060);
  *a1 = &off_100465030;
  return result;
}

double *sub_10008EAE0(void *a1)
{
  sub_100103A68(&off_100465060);
  v3 = 9;
  v4 = *(v1 + 8);
  v5 = &unk_100465050;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v8 = *v5++;
    v7 = v8;
    if (*(v4 + 16) && (v9 = sub_1001983A8(v7), (v10 & 1) != 0))
    {
      v11 = *(*(v4 + 56) + 8 * v9);
      if (!*a1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 0;
      if (!*a1)
      {
LABEL_7:
        if (v11 < 1)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v12 = a1[1];
    if (*(v12 + 16) && (v13 = sub_1001983A8(v7), (v14 & 1) != 0))
    {
      if (*(*(v12 + 56) + 8 * v13) >= v11)
      {
        goto LABEL_3;
      }
    }

    else if (v11 <= 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_10006731C(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_10006731C((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    *(v6 + v16 + 32) = v7;
LABEL_3:
    --v3;
  }

  while (v3);

  return v6;
}

id sub_10008EC64@<X0>(void *a1@<X8>)
{
  if (qword_1004A01A8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4B40;
  *a1 = qword_1004D4B40;

  return v2;
}

BOOL sub_10008ECD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  sub_10008F12C();
  if ((static OrderedDictionary<>.__derived_struct_equals(_:_:)() & 1) == 0 || (static SearchArea.__derived_struct_equals(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4)
  {
    return v3 == v5;
  }

  return 0;
}

id sub_10008EDC0()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4B48 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10008EE40@<X0>(void *a1@<X8>)
{
  if (qword_1004A01B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4B48;
  *a1 = qword_1004D4B48;

  return v2;
}

unint64_t sub_10008EEBC(uint64_t a1)
{
  result = sub_10008EEE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008EEE4()
{
  result = qword_1004A5900;
  if (!qword_1004A5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5900);
  }

  return result;
}

unint64_t sub_10008EF38(uint64_t a1)
{
  result = sub_10008EF60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008EF60()
{
  result = qword_1004A5930;
  if (!qword_1004A5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5930);
  }

  return result;
}

unint64_t sub_10008EFB4()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    return 0xD000000000000010;
  }

  if (v1 == 1)
  {
    return 0xD000000000000010;
  }

  v3 = __ROR8__(*v0 ^ 0x8000000000000000, 3);
  v4 = 1701602377;
  v5 = 0x4C20676E69646441;
  v6 = 0x5020676E69766F4DLL;
  if (v3 != 3)
  {
    v6 = 0xD000000000000028;
  }

  if (v3 != 2)
  {
    v5 = v6;
  }

  if (v3)
  {
    v4 = 0x6E69686372616553;
  }

  if (v3 <= 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

unint64_t sub_10008F0AC(uint64_t a1)
{
  result = sub_10008F0D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008F0D4()
{
  result = qword_1004A5960;
  if (!qword_1004A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5960);
  }

  return result;
}

unint64_t sub_10008F12C()
{
  result = qword_1004A5968;
  if (!qword_1004A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5968);
  }

  return result;
}

BOOL sub_10008F180(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {
        return a2 == 8;
      }

      if (a1 == 9)
      {
        return a2 == 9;
      }
    }

    else
    {
      if (a1 == 6)
      {
        return a2 == 6;
      }

      if (a1 == 7)
      {
        return a2 == 7;
      }
    }

LABEL_18:
    if (a2 - 3 >= 7)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    goto LABEL_18;
  }

  return a2 == 4;
}

uint64_t sub_10008F260(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      v11 = __ROR8__(a1 ^ 0x8000000000000000, 3);
      if (v11 <= 1)
      {
        if (v11)
        {
          if (a2 != 0x8000000000000008)
          {
            goto LABEL_23;
          }
        }

        else if (a2 != 0x8000000000000000)
        {
          goto LABEL_23;
        }
      }

      else if (v11 == 2)
      {
        if (a2 != 0x8000000000000010)
        {
          goto LABEL_23;
        }
      }

      else if (v11 == 3)
      {
        if (a2 != 0x8000000000000018)
        {
          goto LABEL_23;
        }
      }

      else if (a2 != 0x8000000000000020)
      {
        goto LABEL_23;
      }

LABEL_21:
      v10 = 1;
      return v10 & 1;
    }

    if (a2 >> 62 == 1)
    {
      v2 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v3 = ((a1 & 0x3FFFFFFFFFFFFFFFLL) + direct field offset for MeasureObject.id);
      swift_beginAccess();
      v4 = *v3;
      v5 = v3[1];
      v6 = (v2 + direct field offset for MeasureObject.id);
      goto LABEL_7;
    }

LABEL_23:
    v10 = 0;
    return v10 & 1;
  }

  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v7 = (a1 + direct field offset for MeasureObject.id);
  swift_beginAccess();
  v4 = *v7;
  v5 = v7[1];
  v6 = (a2 + direct field offset for MeasureObject.id);
LABEL_7:
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    goto LABEL_21;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  return v10 & 1;
}

uint64_t getEnumTagSinglePayload for UserInputs.Type(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UserInputs.Type(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10008F548(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10008F55C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_10008F580()
{
  result = qword_1004A5970;
  if (!qword_1004A5970)
  {
    sub_100013BB0(&qword_1004A5978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5970);
  }

  return result;
}

unint64_t sub_10008F5E8()
{
  result = qword_1004A5980;
  if (!qword_1004A5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5980);
  }

  return result;
}

uint64_t sub_10008F63C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[41])
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

uint64_t sub_10008F680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_10008F6E0()
{
  result = Contexts.UIKit.init()();
  qword_1004D4B50 = result;
  return result;
}

id sub_10008F700@<X0>(void *a1@<X8>)
{
  if (qword_1004A01B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4B50;
  *a1 = qword_1004D4B50;

  return v2;
}

uint64_t sub_10008F770(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    if (a1[40])
    {
      if (a2[40])
      {
        return 1;
      }
    }

    else if ((a2[40] & 1) == 0 && CGRectEqualToRect(*(a1 + 8), *(a2 + 8)))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_10008F7D4(uint64_t a1)
{
  result = sub_10008F7FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008F7FC()
{
  result = qword_1004A59B0;
  if (!qword_1004A59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A59B0);
  }

  return result;
}

unint64_t sub_10008F864()
{
  result = qword_1004A59B8;
  if (!qword_1004A59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A59B8);
  }

  return result;
}

float sub_10008F8B8()
{
  simd_float4x4.position.getter();
  v17 = v0;
  simd_float4x4.position.getter();
  v18 = v1;
  simd_float4x4.position.getter();
  v9 = vsubq_f32(v17, v18);
  v9.f32[2] = v17.f32[2] - v18.f32[2];
  v3 = vsubq_f32(v2, v18);
  v3.f32[2] = v2.f32[2] - v18.f32[2];
  v4 = vmulq_f32(v3, v3);
  v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  v6 = vrsqrte_f32(LODWORD(v5));
  v7 = vmul_f32(v6, vrsqrts_f32(LODWORD(v5), vmul_f32(v6, v6)));
  v8 = vmulq_f32(v9, vmulq_n_f32(v3, vmul_f32(v7, vrsqrts_f32(LODWORD(v5), vmul_f32(v7, v7))).f32[0]));
  v9.i32[3] = 0;
  v10 = v8.f32[2] + vaddv_f32(*v8.f32);
  if (v10 < 0.0)
  {
    v11 = vmulq_f32(v9, v9);
    return sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  }

  v2.i64[0] = vsubq_f32(v17, v2).u64[0];
  v12.f32[2] = v17.f32[2] - v2.f32[2];
  v12.i32[3] = 0;
  v13 = sqrtf(v5);
  if (v13 < v10)
  {
    v11 = vmulq_f32(v12, v12);
    return sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  }

  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v9)), v12, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v16 = vmulq_f32(v15, v15);
  return sqrtf(v16.f32[1] + (v16.f32[2] + v16.f32[0])) / v13;
}

void sub_10008FA10(uint64_t a1, float32x2_t a2, float a3)
{
  v3 = a1;
  v5 = a3 * a3;
  v6 = a1 + 64;
  v28 = 1;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v29 = 0;
  v11 = 0;

LABEL_4:
  v12 = v11;
  while (v9)
  {
    v11 = v12;
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(*(v3 + 56) + 8 * (v13 | (v11 << 6)));
    v15 = *((swift_isaMask & *v14) + 0x280);
    v16 = v14;

    v15(v17);
    v19 = v18;

    if (v19)
    {

      goto LABEL_17;
    }

    v20 = *((swift_isaMask & *v16) + 0xD0);
    v21 = v16;
    v20();
    if (MeasureObjectState.isMovable()())
    {
      type metadata accessor for MeasureCamera();
      (*((swift_isaMask & *v21) + 0x2B0))();
      simd_float4x4.position.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
      v27 = v22;
      v24 = v23;

      if (v24 >= 1.0)
      {

        v12 = v11;
        v3 = v30;
      }

      else
      {

        v25 = vsub_f32(a2, v27);
        v26 = vaddv_f32(vmul_f32(v25, v25));
        v3 = v30;
        if (v26 < v5)
        {

          v28 = 0;
          v5 = v26;
          v29 = v14;
          goto LABEL_4;
        }

        v12 = v11;
      }
    }

    else
    {

LABEL_17:

      v12 = v11;
      v3 = v30;
    }
  }

  while (2)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v11 < v10)
    {
      v9 = *(v6 + 8 * v11);
      ++v12;
      if (v9)
      {
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  if (v29 && (v28 & 1) != 0)
  {
LABEL_25:
    __break(1u);
  }
}

void sub_10008FD20(float32x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float32x2_t a4@<D0>, float a5@<S1>)
{
  v72 = *SIMD3<>.zero.unsafeMutableAddressor();
  simd_float4x4.forward.getter();
  simd_float4x4.position.getter();
  v10 = a1[2];
  v11 = 0uLL;
  if (!*&v10)
  {
    v29 = 0;
    v60 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
LABEL_32:
    *a3 = v29;
    *(a3 + 8) = 0;
    *(a3 + 16) = v11;
    *(a3 + 32) = v60;
    *(a3 + 48) = v61;
    *(a3 + 64) = v62;
    *(a3 + 80) = v10;
    return;
  }

  v70 = a3;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = a5 * a5;
  v91 = -*&v10;
  v16 = a1 + 5;
  v17 = &swift_isaMask;
  v18 = 1;
  v68 = matrix_identity_float4x4.columns[1];
  v69 = matrix_identity_float4x4.columns[0];
  v67 = matrix_identity_float4x4.columns[2];
  v74 = a2;
  v65 = a1 + 5;
LABEL_3:
  v71 = v18;
  v73 = v13;
  v66 = v12;
  v19 = &v16[2 * v14++];
  do
  {
    if (!*(a2 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v25 = *(v19 - 1);
    v26 = *v19;

    v27 = sub_100198230(v25, v26);
    if ((v28 & 1) == 0)
    {
      goto LABEL_34;
    }

    v29 = *(*(a2 + 56) + 8 * v27);
    v30 = *((*v17 & *v29) + 0x2C8);
    v31 = v29;
    v32 = v30();

    if (v32)
    {
      v33 = *((*v17 & *v31) + 0xD0);
      v34 = v31;
      v33();
      v35 = v17;

      if (MeasureObjectState.isMovable()())
      {
        v36 = *((*v17 & *v34) + 0x250);
        v37 = v34;
        v38 = v36();

        v87 = v36;
        if ((v38 & 0xC000000000000001) != 0)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v39 = *(v38 + 32);
        }

        v40 = v39;

        *v42.i64 = (*((*v35 & *v40) + 0x2B0))(v41);
        v81 = v42;
        v85 = v43;
        v83 = v44;

        v45 = v37;
        v46 = v87();

        if ((v46 & 0xC000000000000001) != 0)
        {
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          a2 = v74;
        }

        else
        {
          a2 = v74;
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_36;
          }

          v47 = *(v46 + 40);
        }

        v17 = v35;
        (*((*v35 & *v47) + 0x2B0))(v48);

        type metadata accessor for MeasureCamera();
        simd_float4x4.position.getter();
        v78 = v49;
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v89 = v50;
        simd_float4x4.position.getter();
        v76 = v51;
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        *v53.f32 = vsub_f32(*v76.f32, *v78.f32);
        if (v89 <= 1.0)
        {
          if (v52 > 1.0)
          {
            simd_float4x4.position.getter();
            v75 = v20;
            static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
            v21 = vsubq_f32(v75, v78);
            v21.i32[3] = 0;
            v77 = v21;
          }

          else
          {
            v53.i64[1] = COERCE_UNSIGNED_INT(v76.f32[2] - v78.f32[2]);
            v77 = v53;
          }
        }

        else
        {
          if (v52 > 1.0)
          {
            goto LABEL_6;
          }

          simd_float4x4.position.getter();
          v79 = v54;
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          v55 = vsubq_f32(v76, v79);
          v55.i32[3] = 0;
          v77 = v55;
        }

        closestPointOnLine(lineP1:lineP2:point:)();
        v23 = vsub_f32(a4, v22);
        v24 = vaddv_f32(vmul_f32(v23, v23));
        if (v24 < v15)
        {
          v88 = v22;

          v18 = 0;
          v12 = v88;
          v56 = v77;
          v72 = v77;
          v58 = v81;
          v57 = v83;
          v69 = v81;
          v59 = v85;
          v67 = v83;
          v68 = v85;
          v15 = v24;
          v13 = v29;
          v16 = v65;
          if (v91 + v14)
          {
            goto LABEL_3;
          }

          goto LABEL_30;
        }
      }
    }

LABEL_6:

    ++v14;
    v19 += 2;
  }

  while (v91 + v14 != 1);
  if (v71)
  {

    v29 = 0;
    v10 = 0;
    v60 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    a3 = v70;
    v11 = 0uLL;
    goto LABEL_32;
  }

  v56 = v72;
  v59 = v68;
  v58 = v69;
  v57 = v67;
  v29 = v73;
  v12 = v66;
LABEL_30:
  v82 = v58;
  v86 = v59;
  v84 = v57;
  v80 = v56;
  type metadata accessor for MeasureCamera();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  simd_float4x4.position.getter();
  v90 = v63;
  simd_float4x4.position.getter();
  lineIntersection(line1P1:line1P2:line2P1:line2P2:)();
  if (v29)
  {
    *&v62 = vaddq_f32(v90, vmulq_n_f32(v80, v64)).u64[0];
    *(&v62 + 2) = v90.f32[2] + vmuls_lane_f32(v64, v80, 2);
    HIDWORD(v62) = 1.0;
    v10 = v12;
    v11 = v82;
    v61 = v84;
    a3 = v70;
    v60 = v86;
    goto LABEL_32;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_10009055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float32x2_t a4@<D0>, float a5@<S1>)
{
  v6 = a1;
  *&v7 = a5;
  if (qword_1004A0408 != -1)
  {
LABEL_25:
    a1 = swift_once();
  }

  v10 = *&dword_1004D4FCC;
  v11 = *((swift_isaMask & *v6) + 0x250);
  result = v11(a1);
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v13 = *(result + 32);
  }

  v14 = v13;

  (*((swift_isaMask & *v14) + 0x2B0))(v15);

  result = v11(v16);
  if ((result & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v17 = *(result + 40);
  }

  v18 = v17;

  (*((swift_isaMask & *v18) + 0x2B0))(v19);

  simd_float4x4.position.getter();
  v51 = v20;
  result = simd_float4x4.position.getter();
  v22 = vsubq_f32(v51, v21);
  v23 = vmulq_f32(v22, v22);
  v24 = floorf(sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)) / v10);
  if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v24 <= -9.2234e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v24 >= 9.2234e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v25 = v24;
  if (v24 < 1)
  {
LABEL_20:
    v38 = 1;
    v39 = 0;
    v40 = 0uLL;
    v26 = 0.0;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
LABEL_23:
    *a3 = v26;
    *(a3 + 4) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = v40;
    *(a3 + 32) = v41;
    *(a3 + 48) = v42;
    *(a3 + 64) = v43;
    *(a3 + 80) = v39;
    *(a3 + 88) = v38;
    return result;
  }

  v26 = ((*&v7 * *&v7) * 0.6) * 0.6;
  type metadata accessor for MeasureCamera();
  v27 = 0;
  v6 = 0;
  v7 = *(a2 + 32);
  v28 = 1;
  v29 = 1;
  v47 = 0;
  a2 = 1;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  while (1)
  {
    slerp(transform1:transform2:percent:)();
    v48 = v31;
    v49 = v32;
    v50 = v34;
    v52 = v33;
    simd_float4x4.position.getter();
    result = static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v36 = vsub_f32(a4, v35);
    v37 = vaddv_f32(vmul_f32(v36, v36));
    if (v37 < v26)
    {
      v6 = *(&v48 + 1);
      v27 = v48;
      v44 = v52;
      v45 = v50;
      v46 = v49;
      v47 = v35;
      if (v25 == v28)
      {
        v26 = v37;
LABEL_22:
        v38 = 0;
        v43 = v46;
        v39 = v47;
        *&v40 = v27;
        *(&v40 + 1) = v6;
        v41 = v44;
        v42 = v45;
        goto LABEL_23;
      }

      a2 = 0;
      v29 = 0;
      v26 = v37;
      goto LABEL_14;
    }

    if (v25 == v28)
    {
      break;
    }

LABEL_14:
    if (__OFADD__(v28++, 1))
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  if (a2)
  {
    goto LABEL_20;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_100090968()
{
  v0 = sub_10000F974(&qword_1004A3F50);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5058;
  v3 = *(v0 + 272);
  swift_retain_n();
  v3(KeyPath, v2);
  v4 = sub_10000F974(&qword_1004A2890);
  v5 = swift_getKeyPath();
  v6 = *(v4 + 272);

  v6(v5, v2);
  v7 = sub_10000F974(&qword_1004A2C68);
  v8 = swift_getKeyPath();
  (*(v7 + 272))(v8, v2);
  v9 = swift_getKeyPath();
  v10 = sub_10000F974(&qword_1004A5B18);
  (*(v10 + 272))(v9, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100090B24()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

void sub_100090BE0(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 || a1[3])
  {
    sub_10004D9B4();
    v12 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100091CD4;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046BA30;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80);
    sub_100031864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100090E64(uint64_t result)
{
  v1 = *(result + 64);
  v2 = *(v1 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection);
    v4 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
    swift_beginAccess();

    os_unfair_lock_lock((v1 + v4));
    swift_endAccess();
    v5 = OBJC_IVAR____TtC7Measure9LabelView_labels;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (*(v6 + 16) && (v7 = sub_100198230(v3, v2), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      swift_endAccess();
      v10 = v9;

      sub_1000ADFD0();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    os_unfair_lock_unlock((v1 + v4));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100090F84()
{
}

uint64_t sub_100090FD4()
{
  v0 = StateObserver.deinit();
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LabelController()
{
  result = qword_1004A59E8;
  if (!qword_1004A59E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000910FC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_100091A34(*a1, *(a1 + 8));
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
}

double sub_100091180(uint64_t a1)
{
  sub_100091A34(*a1, *(a1 + 8));
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000911C0(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0xD0);
  if ((v2() - 3) <= 1)
  {
    v3 = byte_1004D4FB9;
    v4 = byte_1004D4FBA;
    v5 = a1;
    return sub_1000C2B4C(v5, v3, v4);
  }

  if (((*((swift_isaMask & *a1) + 0x2C8))() & 1) != 0 || v2() == 6 || (result = v2(), result == 9))
  {
    v5 = a1;
    v3 = 0;
    v4 = 0;
    return sub_1000C2B4C(v5, v3, v4);
  }

  return result;
}

void sub_1000912D4(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x230);
  v3 = v2();
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(v3 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v5 = i;

    sub_1000C23D0(v5);

    v6 = v2();
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v6 + 32);
    }

    v8 = v7;

    sub_1000C2B4C(v8, 0, 0);

    v9 = v2();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(v9 + 40);
    }

    v11 = v10;

    sub_1000C23D0(v11);

    v12 = v2();
    if ((v12 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v13 = *(v12 + 40);
      goto LABEL_13;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v14 = v13;

  sub_1000C2B4C(v14, 0, 0);

  sub_1000C2E94(a1);
  sub_1000C37F4(a1);
}

unint64_t sub_1000914D8(void *a1)
{
  v3 = *(v1 + 64);
  sub_1000C37F4(a1);
  result = (*((swift_isaMask & *a1) + 0x230))();
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_31;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v6)
  {
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
      v49 = v5 & 0xC000000000000001;
      v50 = OBJC_IVAR____TtC7Measure9LabelView_labels;
      v48 = v5;
      while (1)
      {
        v9 = v49 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v5 + 8 * v7 + 32);
        v10 = v9;
        swift_beginAccess();
        os_unfair_lock_lock((v3 + v8));
        v11 = swift_endAccess();
        v12 = (*((swift_isaMask & *v10) + 0xB8))(v11);
        v14 = v13;
        swift_beginAccess();
        v15 = *(v3 + v50);
        if (!*(v15 + 16))
        {
          break;
        }

        v16 = sub_100198230(v12, v14);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = *(*(v15 + 56) + 8 * v16);
        swift_endAccess();
        v20 = *((swift_isaMask & *v10) + 0x250);
        v21 = v19;
        v22 = v20();
        v5 = v22;
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            result = _CocoaArrayWrapper.endIndex.getter();
            v6 = result;
            goto LABEL_3;
          }

          v23 = *(v22 + 32);
        }

        v24 = v23;

        v26.n128_f64[0] = (*((swift_isaMask & *v24) + 0x2B0))(v25);
        v46 = v27;
        v47 = v26;
        v44 = v29;
        v45 = v28;

        v30 = v20();
        v5 = v30;
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_30;
          }

          v31 = *(v30 + 40);
        }

        v32 = v31;

        v34.n128_f64[0] = (*((swift_isaMask & *v32) + 0x2B0))(v33);
        v42 = v35;
        v43 = v34;
        v40 = v37;
        v41 = v36;

        sub_1000AE08C(0, 0, v47, v46, v45, v44, v43, v42, v41, v40);
        v38 = (*((swift_isaMask & *v10) + 0xD0))();
        v39 = *&v21[OBJC_IVAR____TtC7Measure11LabelRender_state];
        *&v21[OBJC_IVAR____TtC7Measure11LabelRender_state] = v38;
        if (v38 != v39)
        {
          sub_1000AB428(v38);
        }

LABEL_8:
        v5 = v48;
        ++v7;
        swift_beginAccess();
        os_unfair_lock_unlock((v3 + v8));
        swift_endAccess();

        if (v6 == v7)
        {
        }
      }

LABEL_7:
      swift_endAccess();
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_1000919AC(char a1)
{
  v3 = [*(*(v1 + 64) + OBJC_IVAR____TtC7Measure9LabelView_sceneView) overlaySKScene];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden:a1 & 1];
  }
}

uint64_t sub_100091A34(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100091A48(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000F974(&qword_1004A3F50);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v6 + 272);
  swift_retain_n();
  v3[10] = v9(KeyPath, v8);
  v10 = sub_10000F974(&qword_1004A2890);
  v11 = swift_getKeyPath();
  v12 = *(v10 + 272);

  v3[11] = v12(v11, v8);
  v13 = sub_10000F974(&qword_1004A2C68);
  v14 = swift_getKeyPath();
  v3[12] = (*(v13 + 272))(v14, v8);
  v15 = swift_getKeyPath();
  v16 = sub_10000F974(&qword_1004A5B18);
  v3[13] = (*(v16 + 272))(v15, v8);
  v3[8] = a1;
  v3[9] = a2;
  v17 = a1;
  v18 = StateObserver.init(configuration:)();
  *&v17[OBJC_IVAR____TtC7Measure9LabelView_delegate + 8] = &off_10046BA18;
  swift_unknownObjectWeakAssign();
  return v18;
}

unsigned __int8 *sub_100091C8C(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 == 4)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 5)
    {
      return result;
    }

    v2 = 0;
  }

  return sub_1000C4568(v2);
}

uint64_t sub_100091CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100091CF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0x80000001003FF830;
    v2 = 0xD000000000000011;
  }

  qword_1004D4B58 = v2;
  unk_1004D4B60 = v4;
}

uint64_t sub_100091D98()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D4FC(v2, qword_1004D4B68);
  v5 = sub_10001D4C4(v0, qword_1004D4B68);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v1 + 32))(v5, v4, v0);
}

void sub_100091ECC()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_1004D4B80 = v0;
}

id sub_100091F44()
{
  v0 = type metadata accessor for URL();
  sub_10001D4FC(v0, qword_1004D4B88);
  v1 = sub_10001D4C4(v0, qword_1004D4B88);
  return sub_100091F90(v1);
}

id sub_100091F90@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:isDirectory:)();
  v6 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  sub_10000F974(&qword_1004A5B20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5730;
  *(inited + 32) = NSFileOwnerAccountName;
  *(inited + 40) = 0x656C69626F6DLL;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = NSFileGroupOwnerAccountName;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = 0x656C69626F6DLL;
  *(inited + 88) = 0xE600000000000000;
  v11 = NSFileOwnerAccountName;
  v12 = NSFileGroupOwnerAccountName;
  sub_10019A608(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004A5B28);
  swift_arrayDestroy();
  type metadata accessor for FileAttributeKey(0);
  sub_10009226C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = 0;
  v14 = [v6 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:isa error:&v19];

  v18 = v19;
  if (v14)
  {
    (*(v3 + 32))(a1, v5, v2);
    v15 = v18;

    return v15;
  }

  else
  {
    v17 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_10009226C()
{
  result = qword_1004A0C50;
  if (!qword_1004A0C50)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0C50);
  }

  return result;
}

void sub_1000922C4(uint64_t a1)
{
  *(a1 + qword_1004A5B30 + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (a1 + qword_1004A5B40);
  *v2 = 0;
  v2[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100092350(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for GenericPlatter();
  v8 = v16.receiver;
  v9 = a5;
  v10 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", v9, a2, a3);
  if (!v10)
  {

    goto LABEL_5;
  }

  v12 = v10;
  v13 = (*((swift_isaMask & *v8) + 0x140))(v10, v11);
  v14 = [v12 isDescendantOfView:{v13, v16.receiver, v16.super_class}];

  v8 = v12;
  if ((v14 & 1) == 0)
  {
LABEL_5:

    v12 = 0;
  }

  return v12;
}

void sub_100092478(char *a1)
{
  v2 = &a1[qword_1004A5B30];
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

void sub_100092530()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1004A0858 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5430;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_100092C88;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000DB768;
  v7[3] = &unk_10046BAB0;
  v4 = _Block_copy(v7);
  v5 = v0;

  v6 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

uint64_t sub_10009268C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  aBlock[4] = sub_100092CA8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046BB00;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100092AB0()
{
  sub_10001B9D0(v0 + qword_1004A5B30);

  v1 = *(v0 + qword_1004A5B40);

  return sub_1000223C4(v1);
}

id sub_100092B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericPlatter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100092B40(uint64_t a1)
{
  sub_10001B9D0(a1 + qword_1004A5B30);

  v2 = *(a1 + qword_1004A5B40);

  return sub_1000223C4(v2);
}

uint64_t type metadata accessor for GenericPlatter()
{
  result = qword_1004A5B70;
  if (!qword_1004A5B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100092C50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100092D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v148 = a10;
  v147 = a9;
  if (a1 == a5 && a2 == a6 || (v11 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v12 = [objc_opt_self() sharedApplication];
    v13 = [v12 preferredContentSizeCategory];

    LOBYTE(v12) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v11 = v12 ^ 1;
  }

  v14 = *(v10 + qword_1004A5D90);
  v15 = String._bridgeToObjectiveC()();
  [v14 setText:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityLabel:v16];

  [v14 sizeToFit];
  v17 = *(v10 + qword_1004A5DA0);
  v18 = String._bridgeToObjectiveC()();
  [v17 setAccessibilityLabel:v18];

  v19 = *(v10 + qword_1004A5DA8);
  v20 = String._bridgeToObjectiveC()();
  [v19 setAccessibilityLabel:v20];

  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 preferredContentSizeCategory];

  LOBYTE(v21) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v21)
  {
    v23 = *(v10 + qword_1004A5DB0);
    sub_100097108(v14, v23);
    [v23 bounds];
    v24 = CGRectGetWidth(v151) * 0.5;
    [v23 bounds];
    [v14 setCenter:{v24, CGRectGetHeight(v152) * 0.5}];
    v25 = String._bridgeToObjectiveC()();
    [v17 setText:v25];

    [v17 sizeToFit];
    v26 = [v17 superview];
    if (v26)
    {
      v27 = v26;
      sub_100097108(v17, v26);

      v28 = String._bridgeToObjectiveC()();
      [v19 setText:v28];

      [v19 sizeToFit];
      v29 = [v19 superview];
      if (v29)
      {
        v30 = v29;
        sub_100097108(v19, v29);

        v31 = [v17 font];
        if (v31)
        {
          v32 = v31;
          [v31 pointSize];
          v34 = v33;

          v35 = [v19 font];
          if (v35)
          {
            v36 = v35;
            [v35 pointSize];
            v38 = v37;

            if (v34 != v38)
            {
              v39 = [v17 font];
              if (!v39)
              {
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              v40 = v39;
              [v39 pointSize];
              v42 = v41;

              v43 = [v19 font];
              if (!v43)
              {
LABEL_77:
                __break(1u);
                goto LABEL_78;
              }

              v44 = v43;
              [v43 pointSize];
              v46 = v45;

              if (v42 >= v46)
              {
                v47 = v19;
              }

              else
              {
                v47 = v17;
              }

              v48 = [v47 font];
              [v17 setFont:v48];
              [v19 setFont:v48];
            }

            v49 = [v17 superview];
            if (v49)
            {
              v50 = v49;
              [v49 bounds];
              v52 = v51;
              v54 = v53;
              v56 = v55;
              v58 = v57;

              v153.origin.x = v52;
              v153.origin.y = v54;
              v153.size.width = v56;
              v153.size.height = v58;
              Width = CGRectGetWidth(v153);
              v60 = [v17 superview];
              if (v60)
              {
                v61 = v60;
                [v60 bounds];
                v63 = v62;
                v65 = v64;
                v67 = v66;
                v69 = v68;

                v154.origin.x = v63;
                v154.origin.y = v65;
                v154.size.width = v67;
                v154.size.height = v69;
                [v17 setCenter:{Width * 0.5, CGRectGetHeight(v154) * 0.5}];
                v70 = [v19 superview];
                if (v70)
                {
                  v71 = v70;
                  [v70 bounds];
                  v73 = v72;
                  v75 = v74;
                  v77 = v76;
                  v79 = v78;

                  v155.origin.x = v73;
                  v155.origin.y = v75;
                  v155.size.width = v77;
                  v155.size.height = v79;
                  v80 = CGRectGetWidth(v155);
                  v81 = [v19 superview];
                  if (v81)
                  {
                    v82 = v81;
                    [v81 bounds];
                    v84 = v83;
                    v86 = v85;
                    v88 = v87;
                    v90 = v89;

                    v156.origin.x = v84;
                    v156.origin.y = v86;
                    v156.size.width = v88;
                    v156.size.height = v90;
                    v91 = CGRectGetHeight(v156) * 0.5;

                    [v19 setCenter:{v80 * 0.5, v91}];
                    return;
                  }

                  goto LABEL_73;
                }

LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              goto LABEL_70;
            }

            goto LABEL_68;
          }

          goto LABEL_65;
        }

        goto LABEL_63;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v92 = String._bridgeToObjectiveC()();
  [v17 setText:v92];

  if (v11)
  {
    v93 = String._bridgeToObjectiveC()();
    [v17 setAccessibilityLabel:v93];
  }

  else
  {
    [v17 sizeToFit];
  }

  v94 = String._bridgeToObjectiveC()();
  [v19 setText:v94];

  [v19 sizeToFit];
  if ((v11 & 1) == 0)
  {
    v95 = [v17 font];
    if (!v95)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v96 = v95;
    [v95 pointSize];
    v98 = v97;

    v99 = [v19 font];
    if (!v99)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v100 = v99;
    [v99 pointSize];
    v102 = v101;

    if (v98 != v102)
    {
      v103 = [v17 font];
      if (!v103)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v104 = v103;
      [v103 pointSize];
      v106 = v105;

      v107 = [v19 font];
      if (!v107)
      {
LABEL_79:
        __break(1u);
        return;
      }

      v108 = v107;
      [v107 pointSize];
      v110 = v109;

      if (v106 >= v110)
      {
        v111 = v19;
      }

      else
      {
        v111 = v17;
      }

      v112 = [v111 font];
      [v17 setFont:v112];
      [v19 setFont:v112];
    }
  }

  [v14 setTranslatesAutoresizingMaskIntoConstraints:{0, v147, v148}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v113 = [v14 centerXAnchor];
  v114 = [v14 superview];
  if (!v114)
  {
    goto LABEL_62;
  }

  v115 = v114;
  v116 = [v114 centerXAnchor];

  v117 = [v113 constraintEqualToAnchor:v116];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v118 = [v14 centerYAnchor];
  v119 = [v14 superview];
  if (!v119)
  {
    goto LABEL_64;
  }

  v120 = v119;
  v121 = [v119 centerYAnchor];

  v122 = [v118 constraintEqualToAnchor:v121];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v123 = [v17 centerXAnchor];
  v124 = [v17 superview];
  if (!v124)
  {
    goto LABEL_66;
  }

  v125 = v124;
  v126 = [v124 centerXAnchor];

  v127 = [v123 constraintEqualToAnchor:v126];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v128 = [v19 centerXAnchor];
  v129 = [v19 superview];
  if (!v129)
  {
    goto LABEL_67;
  }

  v130 = v129;
  v131 = [v129 centerXAnchor];

  v132 = [v128 constraintEqualToAnchor:v131];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v133 = [v17 topAnchor];
  v134 = [v17 superview];
  if (!v134)
  {
    goto LABEL_69;
  }

  v135 = v134;
  v136 = [v134 topAnchor];

  v137 = [v133 constraintEqualToAnchor:v136];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v138 = [v17 bottomAnchor];
  v139 = [v19 topAnchor];
  v140 = [v138 constraintEqualToAnchor:v139];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v141 = [v19 bottomAnchor];
  v142 = [v19 superview];
  if (!v142)
  {
    goto LABEL_71;
  }

  v143 = v142;
  v144 = [v142 bottomAnchor];

  v145 = [v141 constraintEqualToAnchor:v144];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v146 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v146 activateConstraints:isa];
}

void sub_100093AF8()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v84 = v1;
  if (v1)
  {
    v3 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
    v4 = qword_1004A5D28;
    [v3 scaledValueForValue:*&v0[qword_1004A5D28]];

    v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
    [v5 scaledValueForValue:*&v0[v4]];
    v7 = v6;

    v8 = 69.5;
    if (v7 <= 69.5)
    {
      v8 = v7;
    }

    *&v0[v4] = v8;
    v9 = v8 + v8 + 195.0 + 15.0;
    *&v0[qword_1004A5D08] = v9;
  }

  [v0 setAlpha:0.0];
  v10 = *&v0[qword_1004A5DC0];
  v11 = objc_opt_self();
  v12 = [v11 clearColor];
  [v10 setBackgroundColor:v12];

  v82 = v10;
  [v0 addSubview:v10];
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = [v11 clearColor];
  [v13 setBackgroundColor:v14];

  [v10 addSubview:v13];
  v83 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = [v11 clearColor];
  [v83 setBackgroundColor:v15];

  [v13 addSubview:v83];
  v16 = v0;
  sub_1000946CC(v83, v84 & 1);
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = [v11 clearColor];
  [v17 setBackgroundColor:v18];

  [v13 addSubview:v17];
  sub_100095D28(v17);
  v85 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = [v11 clearColor];
  [v85 setBackgroundColor:v19];

  [v13 addSubview:v85];
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000F974(&unk_1004A3F10);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1003D9FE0;
  v21 = [v83 topAnchor];
  v22 = [v16 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [v83 leadingAnchor];
  v25 = [v13 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v20 + 40) = v26;
  v27 = [v83 trailingAnchor];
  v28 = [v13 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v20 + 48) = v29;
  v30 = [v83 bottomAnchor];
  v31 = [v85 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  v33 = [v83 heightAnchor];
  v81 = qword_1004A5D28;
  v34 = [v33 constraintEqualToConstant:*&v16[qword_1004A5D28] + *&v16[qword_1004A5D28]];

  *(v20 + 64) = v34;
  v35 = [v85 leadingAnchor];
  v36 = [v13 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v20 + 72) = v37;
  v38 = [v85 trailingAnchor];
  v39 = [v13 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v20 + 80) = v40;
  v41 = [v85 bottomAnchor];
  v42 = [v17 topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v20 + 88) = v43;
  v44 = [v17 leadingAnchor];
  v45 = [v13 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:28.0];

  *(v20 + 96) = v46;
  v47 = [v17 trailingAnchor];
  v48 = [v13 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-28.0];

  *(v20 + 104) = v49;
  v50 = [v17 bottomAnchor];
  v51 = [v13 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-28.0];

  *(v20 + 112) = v52;
  v53 = [v17 heightAnchor];
  v54 = [v53 constraintEqualToConstant:*&v16[v81]];

  *(v20 + 120) = v54;
  v55 = [v82 topAnchor];
  v56 = [v13 topAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v20 + 128) = v57;
  v58 = [v82 leadingAnchor];
  v59 = [v13 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v20 + 136) = v60;
  v61 = [v82 trailingAnchor];
  v62 = [v13 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v20 + 144) = v63;
  v64 = [v82 bottomAnchor];
  v65 = [v13 bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v20 + 152) = v66;
  v67 = [v16 topAnchor];
  v68 = [v13 topAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v20 + 160) = v69;
  v70 = [v16 leadingAnchor];
  v71 = [v13 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v20 + 168) = v72;
  v73 = [v16 trailingAnchor];
  v74 = [v13 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v20 + 176) = v75;
  v76 = [v16 bottomAnchor];
  v77 = [v13 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v20 + 184) = v78;
  v79 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v79 activateConstraints:isa];

  sub_100092530();
  sub_1000DB8AC();
}

void sub_1000946CC(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = *(v2 + qword_1004A5DC8);
    CGSize.init(_:_:)();
    [v5 bounds];
    [v5 setBounds:?];
    [a1 bounds];
    [v5 setCenter:{CGRectGetWidth(v102) * 0.5, 150.0}];
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v5 setBackgroundColor:qword_1004D50C8];
    [a1 addSubview:v5];
    v6 = [objc_allocWithZone(UIView) init];
    [v5 frame];
    [v6 bounds];
    [v6 setBounds:?];
    [v6 bounds];
    v8 = v7 * 0.5 + 16.0;
    [v5 center];
    [v6 setCenter:v8];
    v9 = objc_opt_self();
    v10 = [v9 clearColor];
    [v6 setBackgroundColor:v10];

    [a1 addSubview:v6];
    v11 = *(v3 + qword_1004A5DA0);
    v12 = [v9 clearColor];
    [v11 setBackgroundColor:v12];

    [v11 setTextAlignment:1];
    sub_10019FCB8();
    v14 = v13;
    v98 = objc_opt_self();
    v15 = [v98 fontWithDescriptor:v14 size:0.0];

    [v11 setFont:v15];
    if (qword_1004A0550 != -1)
    {
      swift_once();
    }

    [v11 setTextColor:qword_1004D50C0];
    v16 = *(v3 + qword_1004A5DB0);
    [a1 bounds];
    CGRectGetWidth(v103);
    [v16 bounds];
    [v16 setBounds:?];
    [a1 bounds];
    [v16 setCenter:{CGRectGetWidth(v104) * 0.5, 45.0}];
    v17 = [v9 clearColor];
    [v16 setBackgroundColor:v17];

    [a1 addSubview:v16];
    v18 = *(v3 + qword_1004A5D90);
    v19 = [v9 clearColor];
    [v18 setBackgroundColor:v19];

    [v18 setTextAlignment:1];
    v20 = [v98 systemFontOfSize:60.0 weight:UIFontWeightRegular];
    [v18 setFont:v20];

    if (qword_1004A0548 != -1)
    {
      swift_once();
    }

    [v18 setTextColor:qword_1004D50B8];
    [v16 addSubview:v18];
    v21 = [objc_allocWithZone(UIView) init];
    [v6 bounds];
    [v21 bounds];
    [v21 setBounds:?];
    [v5 frame];
    v22 = CGRectGetMaxX(v105) + 16.0;
    [v21 bounds];
    v24 = v22 + v23 * 0.5;
    [v6 center];
    [v21 setCenter:v24];
    v25 = [v9 clearColor];
    [v21 setBackgroundColor:v25];

    [a1 addSubview:v21];
    v26 = *(v3 + qword_1004A5DA8);
    v27 = [v9 clearColor];
    [v26 setBackgroundColor:v27];

    [v26 setTextAlignment:1];
    sub_10019FCB8();
    v29 = v28;
    v30 = [v98 fontWithDescriptor:v28 size:0.0];

    [v26 setFont:v30];
    [v26 setTextColor:qword_1004D50C0];
    if (*(v3 + qword_1004A5DB8) == 1)
    {
      [v21 addSubview:v11];
      [v6 addSubview:v26];
    }

    else
    {
      [v6 addSubview:v11];
      [v21 addSubview:v26];
    }
  }

  else
  {
    v31 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [v31 widthAnchor];
    v33 = [v32 constraintEqualToConstant:1.0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v34 = [v31 topAnchor];
    v35 = [a1 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v37 = [v31 bottomAnchor];
    v38 = [a1 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v40 = [v31 centerXAnchor];
    v41 = [a1 centerXAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v31 setBackgroundColor:qword_1004D50C8];
    [a1 addSubview:v31];
    v6 = [objc_allocWithZone(UIView) init];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v97 = *(v3 + qword_1004A5D90);
    [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [v6 leadingAnchor];
    v44 = [a1 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v46 = [v6 trailingAnchor];
    v99 = v31;
    v47 = [v31 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v49 = [v6 topAnchor];
    v50 = [a1 topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v52 = [v6 bottomAnchor];
    v53 = [a1 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = [v6 leadingAnchor];
    v56 = [v97 leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v58 = [v6 trailingAnchor];
    v59 = [v97 trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v61 = [v6 topAnchor];
    v62 = [v97 topAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v96 = v3;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v64 = [v6 bottomAnchor];
    v65 = [v97 bottomAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v67 = objc_opt_self();
    v68 = [v67 clearColor];
    [v6 setBackgroundColor:v68];

    [a1 addSubview:v6];
    v69 = [v67 clearColor];
    [v97 setBackgroundColor:v69];

    [v97 setTextAlignment:1];
    v70 = objc_opt_self();
    v71 = [v70 systemFontOfSize:60.0 weight:UIFontWeightRegular];
    [v97 setFont:v71];

    if (qword_1004A0548 != -1)
    {
      swift_once();
    }

    [v97 setTextColor:qword_1004D50B8];
    v21 = [objc_allocWithZone(UIView) init];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [v21 leadingAnchor];
    v73 = [v31 trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v75 = [v21 trailingAnchor];
    v76 = [a1 trailingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v78 = [v21 topAnchor];
    v79 = [a1 topAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v81 = [v21 bottomAnchor];
    v82 = [a1 bottomAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v84 = [v67 clearColor];
    [v21 setBackgroundColor:v84];

    [a1 addSubview:v21];
    v85 = *(v96 + qword_1004A5DA0);
    v86 = [v67 clearColor];
    [v85 setBackgroundColor:v86];

    sub_10019FCB8();
    v88 = v87;
    v89 = [v70 fontWithDescriptor:v87 size:0.0];

    [v85 setFont:v89];
    if (qword_1004A0550 != -1)
    {
      swift_once();
    }

    [v85 setTextColor:qword_1004D50C0];
    v90 = *(v96 + qword_1004A5DA8);
    v91 = [v67 clearColor];
    [v90 setBackgroundColor:v91];

    sub_10019FCB8();
    v93 = v92;
    v94 = [v70 fontWithDescriptor:v92 size:0.0];

    [v90 setFont:v94];
    [v90 setTextColor:qword_1004D50C0];
    if (*(v96 + qword_1004A5DB8) == 1)
    {
      [v85 setTextAlignment:2];
      [v90 setTextAlignment:2];
      [v21 addSubview:v97];
      [v6 addSubview:v85];
      [v6 addSubview:v90];
    }

    else
    {
      [v85 setTextAlignment:0];
      [v90 setTextAlignment:0];
      [v6 addSubview:v97];
      [v21 addSubview:v85];
      [v21 addSubview:v90];
    }
  }

  v95 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v95 activateConstraints:isa];
}

void sub_100095D28(void *a1)
{
  v45 = a1;
  v1 = sub_10000F974(&qword_1004A2968);
  __chkstk_darwin(v1 - 8);
  v3 = v41 - v2;
  v43 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() mainBundle];
  v47._object = 0xE000000000000000;
  v15._object = 0x8000000100404380;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  v41[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v47)._object;

  [v45 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = type metadata accessor for ButtonWithCustomBackgroundColor();
  v46.receiver = objc_allocWithZone(v25);
  v46.super_class = v25;
  v26 = objc_msgSendSuper2(&v46, "initWithFrame:", v18, v20, v22, v24);
  static UIButton.Configuration.glass()();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.Size.large(_:), v42);
  UIButton.Configuration.buttonSize.setter();
  (*(v4 + 104))(v6, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v43);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.title.setter();
  (*(v11 + 16))(v3, v13, v10);
  (*(v11 + 56))(v3, 0, 1, v10);
  UIButton.configuration.setter();
  [v26 setTintColor:0];

  (*(v11 + 8))(v13, v10);
  [v26 addTarget:v44 action:"copyMeasurement" forControlEvents:0x2000];
  v27 = v26;
  v28 = v45;
  [v45 addSubview:v27];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000F974(&unk_1004A3F10);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1003D6290;
  v30 = [v27 centerXAnchor];
  v31 = [v28 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v29 + 32) = v32;
  v33 = [v27 centerYAnchor];

  v34 = [v28 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v29 + 40) = v35;
  v36 = [v27 widthAnchor];

  v37 = [v28 widthAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v29 + 48) = v38;
  v39 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints:isa];
}

id sub_1000962E8()
{
  v1 = *(v0 + qword_1004A5D90);
  if (qword_1004A0548 != -1)
  {
    v7 = *(v0 + qword_1004A5D90);
    swift_once();
    v1 = v7;
  }

  [v1 setTextColor:qword_1004D50B8];
  v2 = *(v0 + qword_1004A5DA0);
  if (qword_1004A0550 != -1)
  {
    v8 = *(v0 + qword_1004A5DA0);
    swift_once();
    v2 = v8;
  }

  [v2 setTextColor:qword_1004D50C0];
  [*(v0 + qword_1004A5DA8) setTextColor:qword_1004D50C0];
  v3 = *(v0 + qword_1004A5DD0);
  if (qword_1004A0558 != -1)
  {
    v9 = *(v0 + qword_1004A5DD0);
    swift_once();
    v3 = v9;
  }

  [v3 setBackgroundColor:qword_1004D50C8];
  v4 = *(v0 + qword_1004A5DC8);
  v5 = qword_1004D50C8;

  return [v4 setBackgroundColor:v5];
}

void sub_100096458(void *a1)
{
  v3 = [a1 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"close"];
  [v3 setRightBarButtonItem:v4];

  v5 = *(v1 + qword_1004A5D98);
  v6 = [objc_opt_self() mainBundle];
  v12._object = 0xE000000000000000;
  v7._object = 0x8000000100404350;
  v7._countAndFlagsBits = 0xD000000000000022;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v12);

  v9 = String._bridgeToObjectiveC()();

  [v5 setText:v9];

  v10 = [a1 navigationItem];
  [v10 setTitleView:v5];
}

void *sub_1000965D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = qword_1004A5D08;
  if (qword_1004A0540 != -1)
  {
    swift_once();
  }

  *&v5[v10] = dword_1004D50B0;
  *&v5[qword_1004A5D10] = 1136361472;
  *&v5[qword_1004A5D18] = 0x4038000000000000;
  *&v5[qword_1004A5D20] = 0x4030000000000000;
  *&v5[qword_1004A5D28] = 0x4046800000000000;
  *&v5[qword_1004A5D30] = 0x402E000000000000;
  *&v5[qword_1004A5D38] = 0x3FE3333333333333;
  *&v5[qword_1004A5D40] = 0x3FF0000000000000;
  *&v5[qword_1004A5D48] = 0x3FE0000000000000;
  *&v5[qword_1004A5D50] = 0x4030000000000000;
  *&v5[qword_1004A5D58] = 0x402E000000000000;
  *&v5[qword_1004A5D60] = 0x4068600000000000;
  *&v5[qword_1004A5D68] = 0x4056800000000000;
  *&v5[qword_1004A5D70] = 0x4056800000000000;
  *&v5[qword_1004A5D78] = 0x402E000000000000;
  *&v5[qword_1004A5D80] = 0x4051600000000000;
  *&v5[qword_1004A5D88] = 0x403C000000000000;
  v11 = qword_1004A5D90;
  *&v5[v11] = [objc_allocWithZone(UILabel) init];
  v12 = qword_1004A5D98;
  *&v5[v12] = [objc_allocWithZone(UILabel) init];
  v13 = qword_1004A5DA0;
  *&v5[v13] = [objc_allocWithZone(UILabel) init];
  v14 = qword_1004A5DA8;
  *&v5[v14] = [objc_allocWithZone(UILabel) init];
  v15 = qword_1004A5DB0;
  *&v5[v15] = [objc_allocWithZone(UIView) init];
  v16 = qword_1004A5DB8;
  v17 = [objc_opt_self() sharedApplication];
  v18 = [v17 userInterfaceLayoutDirection];

  v5[v16] = v18 == 1;
  v19 = qword_1004A5DC0;
  *&v5[v19] = [objc_allocWithZone(UIView) init];
  v20 = qword_1004A5DC8;
  *&v5[v20] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_1004A5DD0;
  *&v5[v21] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[qword_1004A5B30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v5[qword_1004A5B40];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v5[qword_1004A5B38];
  *v23 = a2;
  v23[1] = a3;
  sub_100038EBC(a4);
  v29.receiver = v5;
  v29.super_class = type metadata accessor for GenericPlatter();
  v24 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v25 = *((swift_isaMask & *v24) + 0x138);
  v26 = v24;
  v25();
  sub_1000223C4(a4);

  return v26;
}

id sub_1000969BC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_1004A5D08;
  if (qword_1004A0540 != -1)
  {
    swift_once();
  }

  *&v1[v4] = dword_1004D50B0;
  *&v1[qword_1004A5D10] = 1136361472;
  *&v1[qword_1004A5D18] = 0x4038000000000000;
  *&v1[qword_1004A5D20] = 0x4030000000000000;
  *&v1[qword_1004A5D28] = 0x4046800000000000;
  *&v1[qword_1004A5D30] = 0x402E000000000000;
  *&v1[qword_1004A5D38] = 0x3FE3333333333333;
  *&v1[qword_1004A5D40] = 0x3FF0000000000000;
  *&v1[qword_1004A5D48] = 0x3FE0000000000000;
  *&v1[qword_1004A5D50] = 0x4030000000000000;
  *&v1[qword_1004A5D58] = 0x402E000000000000;
  *&v1[qword_1004A5D60] = 0x4068600000000000;
  *&v1[qword_1004A5D68] = 0x4056800000000000;
  *&v1[qword_1004A5D70] = 0x4056800000000000;
  *&v1[qword_1004A5D78] = 0x402E000000000000;
  *&v1[qword_1004A5D80] = 0x4051600000000000;
  *&v1[qword_1004A5D88] = 0x403C000000000000;
  v5 = qword_1004A5D90;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = qword_1004A5D98;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = qword_1004A5DA0;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = qword_1004A5DA8;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  v9 = qword_1004A5DB0;
  *&v1[v9] = [objc_allocWithZone(UIView) init];
  v10 = qword_1004A5DB8;
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  v1[v10] = v12 == 1;
  v13 = qword_1004A5DC0;
  *&v1[v13] = [objc_allocWithZone(UIView) init];
  v14 = qword_1004A5DC8;
  *&v1[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = qword_1004A5DD0;
  *&v1[v15] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);

  if (v16)
  {
  }

  return v16;
}

void sub_100096D0C()
{
  v1 = *(v0 + qword_1004A5DD0);
}

void sub_100096DAC(uint64_t a1)
{
  v2 = *(a1 + qword_1004A5DD0);
}

uint64_t type metadata accessor for LabelDetailsPlatter()
{
  result = qword_1004A5E00;
  if (!qword_1004A5E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100096F44()
{
  v1 = v0 + qword_1004A5B30;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v4 = [objc_opt_self() generalPasteboard];
  v5 = [*(v0 + qword_1004A5D90) text];
  [v4 setString:v5];

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 8);
    v7 = swift_getObjectType();
    (*(v6 + 24))(v7, v6);
    swift_unknownObjectRelease();
  }

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D4F08;

  v9 = v8 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  result = *(v9 + 56) + 1.0;
  *(v9 + 56) = result;
  return result;
}

id sub_100097108(void *a1, void *a2)
{
  [a1 bounds];
  Width = CGRectGetWidth(v10);
  [a2 bounds];
  v5 = CGRectGetWidth(v11);
  if (v5 >= Width)
  {
    v6 = "setAdjustsFontSizeToFitWidth:";
    v7 = a1;
  }

  else
  {
    [a2 bounds];
    CGRectGetWidth(v12);
    [a1 bounds];
    CGRectGetHeight(v13);
    CGSize.init(_:_:)();
    [a1 bounds];
    [a1 setBounds:?];
    [a1 setAdjustsFontSizeToFitWidth:1];
    v6 = "setMinimumScaleFactor:";
    v5 = 0.3;
    v7 = a1;
  }

  return [v7 v6];
}

uint64_t sub_100097234(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100097290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100097308(uint64_t a1)
{
  result = sub_100097330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100097330()
{
  result = qword_1004A6090;
  if (!qword_1004A6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6090);
  }

  return result;
}

uint64_t sub_100097384(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    type metadata accessor for WorldEdge();
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      type metadata accessor for WorldEdge();
      v10 = a4;
      v11 = a2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void sub_100097454()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  v5 = [v4 fontDescriptor];

  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];

    [v1 setFont:v7];
    v8 = [objc_opt_self() secondaryLabelColor];
    [v1 setTextColor:v8];

    v9 = String._bridgeToObjectiveC()();
    [v1 setAccessibilityIdentifier:v9];

    v10 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits];
    v11 = String._bridgeToObjectiveC()();
    [v10 setText:v11];

    [v10 setUserInteractionEnabled:1];
    v12 = [v3 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    [v10 setFont:v12];

    v13 = String._bridgeToObjectiveC()();
    [v10 setAccessibilityIdentifier:v13];

    v14 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels];
    v15 = String._bridgeToObjectiveC()();
    [v14 setAccessibilityIdentifier:v15];

    [v0 addSubview:v1];
    [v0 addSubview:v10];

    [v0 addSubview:v14];
  }

  else
  {
    __break(1u);
  }
}

void sub_10009772C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v70 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels];
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000F974(&unk_1004A3F10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003D6280;
  v5 = [v2 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:16.0];

  *(v4 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:16.0];

  *(v4 + 40) = v10;
  *&v1[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_horizontalConstraints] = v4;

  v72 = v3;
  v11 = [v3 bottomAnchor];
  v12 = [v1 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-13.0];

  LODWORD(v14) = 1148813312;
  [v13 setPriority:v14];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003D6280;
  v71 = v2;
  v16 = [v2 topAnchor];
  v17 = [v1 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:12.0];

  *(v15 + 32) = v18;
  *(v15 + 40) = v13;
  v19 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints;
  swift_beginAccess();
  *&v1[v19] = v15;
  v69 = v13;

  sub_100103C58(v20);
  swift_endAccess();
  v21 = *&v1[v19];
  if (v21 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v23 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      [v24 setActive:1];

      ++v23;
      if (v26 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_12:

  v27 = [v72 font];
  v28 = 1.0;
  if (v27)
  {
    v29 = v27;
    v30 = [*(*&v70[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) font];
    v31 = &off_100494000;
    if (v30)
    {
      v32 = v30;
      [v29 descender];
      v34 = v33;
      [v29 leading];
      v36 = v34 + v35;
      [v32 descender];
      v38 = v36 - v37;
      [v32 leading];
      v40 = v39;

      v28 = v38 - v40 + 1.0;
    }

    else
    {
    }
  }

  else
  {
    v31 = &off_100494000;
  }

  v41 = [v70 bottomAnchor];
  v42 = [v72 bottomAnchor];
  v67 = [v41 constraintEqualToAnchor:v42 constant:v28];

  LODWORD(v43) = 1148813312;
  [v67 v31[134]];
  v68 = objc_opt_self();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1003D7B50;
  v45 = [v71 trailingAnchor];
  v46 = [v70 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-16.0];

  *(v44 + 32) = v47;
  v48 = [v72 topAnchor];
  v49 = [v71 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v44 + 40) = v50;
  v51 = [v72 trailingAnchor];
  v52 = [v70 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-16.0];

  *(v44 + 48) = v53;
  v54 = [v70 topAnchor];
  v55 = [v1 topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v44 + 56) = v56;
  *(v44 + 64) = v67;
  v57 = v67;
  v58 = [v70 widthAnchor];
  v59 = [v58 constraintEqualToConstant:103.66];

  *(v44 + 72) = v59;
  v60 = [v70 trailingAnchor];
  v61 = [v1 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-16.0];

  *(v44 + 80) = v62;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:isa];

  LODWORD(v64) = 1112014848;
  [v71 setContentHuggingPriority:1 forAxis:v64];
  LODWORD(v65) = 1148846080;
  [v71 setContentCompressionResistancePriority:1 forAxis:v65];
  LODWORD(v66) = 1148846080;
  [v72 setContentCompressionResistancePriority:1 forAxis:v66];
}

id sub_100097F44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits;
  type metadata accessor for InteractiveLabel();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for NewSecondaryLabelStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_horizontalConstraints] = _swiftEmptyArrayStorage;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_100097454();
  sub_10009772C();

  return v13;
}

id sub_1000980A8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits;
  type metadata accessor for InteractiveLabel();
  *&v1[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for NewSecondaryLabelStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_horizontalConstraints] = _swiftEmptyArrayStorage;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_100097454();
    sub_10009772C();
  }

  return v8;
}

uint64_t sub_1000982AC()
{
  result = Contexts.UIKit.init()();
  qword_1004D4BA0 = result;
  return result;
}

id sub_1000982CC@<X0>(void *a1@<X8>)
{
  if (qword_1004A01E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4BA0;
  *a1 = qword_1004D4BA0;

  return v2;
}