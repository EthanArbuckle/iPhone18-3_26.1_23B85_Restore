uint64_t sub_10004A5D4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return _swift_task_switch(sub_10004A6FC, v4, v3);
}

uint64_t sub_10004A6FC()
{
  v1 = *(v0 + 152);
  [*(v0 + 248) _setRendersInBackground:1];
  v2 = OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_mapSnapshotter;
  v3 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_mapSnapshotter);
  if (v3)
  {
    [v3 cancel];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 248);
  *(v1 + v2) = 0;

  v6 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v5];
  v7 = *(v1 + v2);
  *(v1 + v2) = v6;

  v8 = *(v1 + v2);
  *(v0 + 256) = v8;
  if (v8)
  {
    v9 = qword_10011FAF0;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_1001271E8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10004A950;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_100007BC0(&qword_100122730);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100097F90;
    *(v0 + 104) = &unk_10010F278;
    *(v0 + 112) = v12;
    [v10 startWithQueue:v11 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 248);

    sub_10004ADC8(*(v0 + 152));

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_10004A950()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {

    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_10004AB70;
  }

  else
  {
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_10004AA68;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10004AA68()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];

  v4 = v0[18];

  v5 = [objc_opt_self() polylineWithPoints:v3 + 32 count:*(v3 + 16)];

  [v1 mapRect];
  v10 = sub_10004D19C(v5, v4, v6, v7, v8, v9);

  sub_10004ADC8(v0[19]);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10004AB70()
{
  v17 = v0;
  v1 = v0[32];

  swift_willThrow();

  if (qword_10011F9F0 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = sub_1000DAFF4();
  sub_100007EBC(v3, qword_100122608);
  v4 = v2;
  swift_errorRetain();
  v5 = sub_1000DAFD4();
  v6 = sub_1000DC4C4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  if (v7)
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10001A58C(*(v9 + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_id), *(v9 + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_id + 8), &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "RouteMapGenerator [assetId: %s]: error generating snapshot: %@", v10, 0x16u);
    sub_1000080B0(v11, &qword_100120A80);

    sub_100007FC0(v12);
  }

  else
  {
  }

  sub_10004ADC8(v0[19]);

  v14 = v0[1];

  return v14(0);
}

void sub_10004ADC8(uint64_t a1)
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1000DCA04(83);
  v12._object = 0x80000001000E9510;
  v12._countAndFlagsBits = 0xD000000000000021;
  sub_1000DBFE4(v12);
  type metadata accessor for CGSize(0);
  sub_1000DCAE4();
  v13._countAndFlagsBits = 0x497465737361202CLL;
  v13._object = 0xEB00000000203A64;
  sub_1000DBFE4(v13);
  sub_1000DBFE4(*(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_id));
  v14._countAndFlagsBits = 0x73746E696F70202CLL;
  v14._object = 0xEA0000000000203ALL;
  sub_1000DBFE4(v14);
  if (*(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_routeCoordinates) >> 62)
  {
    sub_1000DCB14();
  }

  v15._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v15);

  v16._countAndFlagsBits = 0x6574756365786520;
  v16._object = 0xED0000206E692064;
  sub_1000DBFE4(v16);
  CFAbsoluteTimeGetCurrent();
  sub_1000DC274();
  v17._countAndFlagsBits = 0x73646E6F63657320;
  v17._object = 0xE800000000000000;
  sub_1000DBFE4(v17);
  v3 = v10;
  v2 = v11;
  if (qword_10011F9F0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000DAFF4();
  sub_100007EBC(v4, qword_100122608);

  v5 = sub_1000DAFD4();
  v6 = sub_1000DC4E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    v9 = sub_10001A58C(v3, v2, &v10);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_100007FC0(v8);
  }

  else
  {
  }
}

void sub_10004B0CC(void *a1, id a2, char a3, uint64_t a4, uint64_t a5, CLLocationDegrees a6, CLLocationDegrees a7, double a8, double a9, double a10, double a11, CLLocationDegrees a12, CLLocationDegrees a13)
{
  v84.latitude = a6;
  v84.longitude = a7;
  v24 = [a2 image];
  [v24 size];
  v26 = v25;

  v27 = [a2 image];
  [v27 size];
  v29 = v28;

  v30 = [a2 image];
  [v30 drawInRect:{0.0, 0.0, v26, v29}];

  v85 = sub_10004D60C(0, a3);
  v31 = 2.0;
  if ((a3 - 3) <= 4u)
  {
    v31 = dbl_1000E2790[(a3 - 3)];
  }

  v32 = OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_routeCoordinates;
  v33 = *(a4 + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_routeCoordinates);
  if (v33 >> 62)
  {
    if (sub_1000DCB14() == 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v48 = *(a4 + v32);
    v49 = type metadata accessor for WorkoutGradientPathRenderer();
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC20JournalWidgetsSecure27WorkoutGradientPathRenderer_routeCoordinates] = v48;
    v86.receiver = v50;
    v86.super_class = v49;

    v51 = objc_msgSendSuper2(&v86, "initWithOverlay:", a5);
    v52 = [a1 CGContext];
    v53 = a2;
    sub_10004D910(v52, v51, v53, a8, a9, a10, a11, v31);

    v54 = [a1 CGContext];
    CGContextStrokePath(v54);

    v55 = sub_10004D60C(1, a3);
    v88.latitude = a12;
    v88.longitude = a13;
    v56 = MKMapPointForCoordinate(v88);
    v57 = [a1 CGContext];
    v58 = MKCoordinateForMapPoint(v56);
    [v53 pointForCoordinate:{v58.latitude, v58.longitude}];
    v60 = v59;
    v62 = v61;
    [v55 bounds];
    v63 = v60 - CGRectGetMidX(v91);
    [v55 centerOffset];
    v65 = v63 + v64;
    [v55 bounds];
    v66 = v62 - CGRectGetMidY(v92);
    [v55 centerOffset];
    v68 = v66 + v67;
    CGContextSaveGState(v57);
    CGContextTranslateCTM(v57, v65, v68);
    [v55 prepareForSnapshotting];
    v69 = [v55 layer];
    [v69 renderInContext:v57];

    CGContextRestoreGState(v57);
    v70 = MKMapPointForCoordinate(v84);
    v71 = [a1 CGContext];
    v72 = MKCoordinateForMapPoint(v70);
    [v53 pointForCoordinate:{v72.latitude, v72.longitude}];
    v74 = v73;
    v76 = v75;
    [v85 bounds];
    v77 = v74 - CGRectGetMidX(v93);
    [v85 centerOffset];
    v79 = v77 + v78;
    [v85 bounds];
    v80 = v76 - CGRectGetMidY(v94);
    [v85 centerOffset];
    v82 = v80 + v81;
    CGContextSaveGState(v71);
    CGContextTranslateCTM(v71, v79, v82);
    [v85 prepareForSnapshotting];
    v83 = [v85 layer];
    [v83 renderInContext:v71];

    CGContextRestoreGState(v71);
    return;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = MKMapPointForCoordinate(v84);
  v35 = [a1 CGContext];
  v36 = MKCoordinateForMapPoint(v34);
  [a2 pointForCoordinate:{v36.latitude, v36.longitude}];
  v38 = v37;
  v40 = v39;
  [v85 bounds];
  v41 = v38 - CGRectGetMidX(v89);
  [v85 centerOffset];
  v43 = v41 + v42;
  [v85 bounds];
  v44 = v40 - CGRectGetMidY(v90);
  [v85 centerOffset];
  v46 = v44 + v45;
  CGContextSaveGState(v35);
  CGContextTranslateCTM(v35, v43, v46);
  [v85 prepareForSnapshotting];
  v47 = [v85 layer];
  [v47 renderInContext:v35];

  CGContextRestoreGState(v35);
}

void sub_10004B670(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_10004B7B0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void (*sub_10004B828(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10004C4E4(v4, a2);
  return sub_10004B8A0;
}

void sub_10004B8A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_10004B8EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC20JournalWidgetsSecure29WorkoutLocationAnnotationView_assetSizeType] = a4;
  if (a3)
  {
    v10 = sub_1000DBF04();
  }

  else
  {
    v10 = 0;
  }

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithAnnotation:reuseIdentifier:", a1, v10);

  v12 = 7.0;
  if ((a4 - 3) <= 4u)
  {
    v12 = dbl_1000E27B8[(a4 - 3)];
  }

  v13 = v11;
  [v13 setFrame:{0.0, 0.0, v12, v12}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  [v15 setCanShowCallout:1];
  sub_10004BA6C(a1);

  swift_unknownObjectRelease();
  return v15;
}

void sub_10004BA6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000DAE04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WorkoutStartLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_10004DEF4();
      if (qword_10011FC50 != -1)
      {
        swift_once();
      }

      v8 = qword_1001274C8;
LABEL_10:
      v9 = sub_100007EBC(v4, v8);
      (*(v5 + 16))(v7, v9, v4);
      v10 = sub_1000DC704();
      [v2 setTintColor:v10];

      return;
    }

    type metadata accessor for WorkoutEndLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_10004DEF4();
      if (qword_10011FC48 != -1)
      {
        swift_once();
      }

      v8 = qword_1001274B0;
      goto LABEL_10;
    }
  }

  v13 = [objc_opt_self() whiteColor];
  [v2 setTintColor:v13];
  v11 = v13;
}

void sub_10004BCC4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = 1.0;
    if (v4[OBJC_IVAR____TtC20JournalWidgetsSecure29WorkoutLocationAnnotationView_assetSizeType] - 3 <= 4)
    {
      v10 = dbl_1000E27E0[(v4[OBJC_IVAR____TtC20JournalWidgetsSecure29WorkoutLocationAnnotationView_assetSizeType] - 3)];
    }

    c = v9;
    CGContextSetLineWidth(v9, v10);
    v11 = [v4 tintColor];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 CGColor];

      CGContextSetFillColorWithColor(c, v13);
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 CGColor];

      CGContextSetStrokeColorWithColor(c, v15);
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      v19 = CGRectInset(v18, v10, v10);
      CGContextAddEllipseInRect(c, v19);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_10004C058(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *&_swiftEmptyArrayStorage[2];
    if (!v13)
    {

LABEL_43:
      v41 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
LABEL_44:
      v42 = v41;
      v43 = [v41 CGColor];

      return v43;
    }

LABEL_14:
    v14 = _swiftEmptyArrayStorage[4];
    v15 = v14;
    v16 = v13 - 1;
    if (v13 != 1)
    {
      v17 = &_swiftEmptyArrayStorage[5];
      v15 = _swiftEmptyArrayStorage[4];
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
        }

        --v16;
      }

      while (v16);
    }

    v20 = v13;
    if (v13 > 3)
    {
      v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = vdupq_lane_s64(*&v20, 0);
      v24 = &_swiftEmptyArrayStorage[6];
      v22 = 0.0;
      v25 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = vdivq_f64(v24[-1], v23);
        v27 = vdivq_f64(*v24, v23);
        v22 = v22 + v26.f64[0] + v26.f64[1] + v27.f64[0] + v27.f64[1];
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v13 == v21)
      {
LABEL_26:
        v31 = v13 - 1;
        if (v13 != 1)
        {
          v32 = &_swiftEmptyArrayStorage[5];
          do
          {
            v33 = *v32++;
            v34 = v33;
            if (v14 < v33)
            {
              v14 = v34;
            }

            --v31;
          }

          while (v31);
        }

        if (v22 * 0.9 >= a1)
        {
          if (a1 < 0.0 || v22 == 0.0)
          {
            goto LABEL_43;
          }
        }

        else if (a1 < 0.0 || v22 == 0.0 || v22 * 1.1 > a1)
        {
          goto LABEL_43;
        }

        v35 = (a1 - v15) / (v14 - v15);
        if (v35 >= 0.5)
        {
          v40 = v35 + -0.5 + v35 + -0.5;
          v37 = round(v40 * -179.0 + 255.0);
          v38 = round(v40 * 13.0 + 204.0);
          v39 = v40 * 100.0 + 0.0;
        }

        else
        {
          v36 = v35 + v35;
          v37 = round(v36 * 0.0 + 255.0);
          v38 = round(v36 * 145.0 + 59.0);
          v39 = 48.0 - v36 * 48.0;
        }

        v41 = [objc_allocWithZone(UIColor) initWithRed:v37 / 255.0 green:v38 / 255.0 blue:round(v39) / 255.0 alpha:0.85];
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0.0;
    }

    v28 = v13 - v21;
    v29 = &_swiftEmptyArrayStorage[v21 + 4];
    do
    {
      v30 = *v29++;
      v22 = v22 + v30 / v20;
      --v28;
    }

    while (v28);
    goto LABEL_26;
  }

  v4 = sub_1000DCB14();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_100017A14(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000DCA24();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 speed];
      v10 = v9;

      v12 = *&_swiftEmptyArrayStorage[2];
      v11 = *&_swiftEmptyArrayStorage[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_100017A14((v11 > 1), v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = v13;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_10004C47C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutGradientPathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_10004C4E4(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10004C74C(v5);
  v5[9] = sub_10004C5E8((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_10004C588;
}

void sub_10004C588(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_10004C5E8(uint64_t a1, unsigned __int8 a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_100063134(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1000D16C4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1000CF458(v14, a3 & 1);
    v9 = sub_100063134(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1000DCCC4();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_10004C704;
}

Swift::Int sub_10004C704(Swift::Int result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_1000D1224(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_1000D0908(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_10004C74C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10004C774;
}

double sub_10004C780(double *a1, unsigned __int8 a2, double a3, double a4, double a5)
{
  v10 = sub_1000DA374();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = &a1[2 * v14 + 4];
    v18 = *(v17 - 16);
    v19 = *(v17 - 8);
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
  }

  v20 = [objc_opt_self() polylineWithPoints:a1 + 4 count:v14];

  [v20 boundingMapRect];
  if (a3 >= 1.0 && a4 >= 1.0)
  {
    v51 = v16;
    v52 = v15;
    v53 = v19;
    v54 = v18;
    v25 = sqrt(v23 * v23 + v24 * v24) * 0.5;
    v26 = 8.0;
    v27 = v24;
    v28 = v23;
    v55 = v21;
    v56 = v22;
    if (a2 > 3u)
    {
      if (a2 > 6u)
      {
        (*(v11 + 104))(v13, enum case for JournalFeatureFlags.fullScreenViewer(_:), v10);
        v45 = sub_1000DA364();
        (*(v11 + 8))(v13, v10);

        v35 = v55;
        v36 = v56;
        v34 = v28;
        v33 = v27;
        v46 = 58.0;
        if (v45)
        {
          v46 = a3 * 0.5 - a5;
        }

        v37 = v25 / (a5 + -20.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v46;
        goto LABEL_30;
      }
    }

    else
    {
      v29 = 35.0;
      if (a2 == 2)
      {
        v29 = 8.0;
      }

      if (a2 > 1u)
      {
        v26 = v29;
      }
    }

    v30 = sub_1000DCC74();

    v31 = 20.0;
    if ((v30 & 1) == 0)
    {
      if (a2 == 1)
      {

        v37 = v25 / (a5 + -20.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v26;
        v33 = v27;
        v34 = v28;
        v35 = v55;
        v36 = v56;
        v43 = v53;
        v42 = v54;
        goto LABEL_31;
      }

      v32 = sub_1000DCC74();

      v33 = v27;
      v34 = v28;
      v35 = v55;
      v36 = v56;
      if (v32)
      {
        goto LABEL_26;
      }

      if (a2 == 3)
      {

        v35 = v55;
        v36 = v56;
        v34 = v28;
        v33 = v27;
        v37 = v25 / (a5 + -15.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v26;
        v43 = v53;
        v42 = v54;
        v44 = 12.0;
LABEL_33:
        v48 = v37 * v44 * 0.5;
        v59.origin.y = v51;
        v59.origin.x = v52;
        v59.size.width = v48;
        v59.size.height = v48;
        v57 = MKMapRectUnion(*&v35, v59);
        v60.origin.x = v42;
        v60.origin.y = v43;
        v60.size.width = v48;
        v60.size.height = v48;
        v58 = MKMapRectUnion(v57, v60);
        v21 = v58.origin.x + v58.size.width * 0.5 - (v41 + v38);
        v22 = v58.origin.y + v58.size.height * 0.5 - (v41 + v38);
        v23 = v39;
        v24 = v40;
        goto LABEL_34;
      }

      v47 = sub_1000DCC74();

      if (v47)
      {
        v31 = 15.0;
      }

      else
      {
        v31 = 10.0;
      }
    }

    v33 = v27;
    v34 = v28;
    v35 = v55;
    v36 = v56;
LABEL_26:
    v37 = v25 / (a5 - v31);
    v38 = v37 * a5;
    v39 = v37 * a3;
    v40 = v37 * a4;
    v41 = v26 * v37;
    if (a2 != 7)
    {
      v43 = v53;
      v42 = v54;
      if (a2 == 6)
      {
        v44 = 4.0;
        goto LABEL_33;
      }

      if (a2 == 3)
      {
        v44 = 12.0;
        goto LABEL_33;
      }

LABEL_31:
      v44 = 7.0;
      goto LABEL_33;
    }

LABEL_30:
    v44 = 24.0;
    v43 = v53;
    v42 = v54;
    goto LABEL_33;
  }

LABEL_34:
  *&v49 = MKCoordinateRegionForMapRect(*&v21);

  return v49;
}

uint64_t sub_10004CDC0(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1000DC224();
  *(v6 + 64) = sub_1000DC214();
  v8 = sub_1000DC1D4();

  return _swift_task_switch(sub_10004CE60, v8, v7);
}

uint64_t sub_10004CE60()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  [v5 setTraitCollection:v6];

  v14.latitude = v4;
  v14.longitude = v3;
  if (CLLocationCoordinate2DIsValid(v14) && v2 >= 0.0 && v1 >= 0.0)
  {
    [v5 setRegion:{*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)}];
  }

  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  [v5 setMapType:0];
  [v5 setSize:{v8, v7}];
  v9 = [objc_allocWithZone(MKStandardMapConfiguration) init];
  v10 = [objc_opt_self() filterExcludingAllCategories];
  [v9 setPointOfInterestFilter:v10];

  [v5 setPreferredConfiguration:v9];
  v11 = *(v0 + 8);

  return v11(v5);
}

id sub_10004D02C(double a1, double a2)
{
  if (qword_10011F9F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_100122620;
  if (*(off_100122620 + 2) && (v5 = sub_10006324C(a1, a2), (v6 & 1) != 0))
  {
    v11 = *(v4[7] + 8 * v5);
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    v8 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
    swift_beginAccess();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = off_100122620;
    off_100122620 = 0x8000000000000000;
    sub_1000D0DCC(v9, isUniquelyReferenced_nonNull_native, a1, a2);
    off_100122620 = v12;
    swift_endAccess();
    return v9;
  }
}

uint64_t sub_10004D19C(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v16 = OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_routeCoordinates;
  v17 = *&v6[OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_routeCoordinates];
  if (v17 >> 62)
  {
    result = sub_1000DCB14();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {

    v19 = sub_1000DCA24();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v19 = *(v17 + 32);
  }

  v7 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
  [v19 coordinate];
  v8 = v20;
  v9 = v21;

  v22 = *&v6[v16];
  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_8:
    v23 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v49 = a5;
      v51 = a6;
      if ((v22 & 0xC000000000000001) == 0)
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (v23 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_28:
          __break(1u);
          return result;
        }

        v24 = *(v22 + 8 * v23 + 32);
LABEL_13:
        [v24 *&v7[447]];
        v26 = v25;
        v28 = v27;

        v29 = v6[OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_sizeType];
        if (v29 == 8)
        {
          v30 = [a2 image];
          [v30 size];
          v32 = v31;
          v34 = v33;

          LOBYTE(v29) = sub_100064AA0(0.0, 0.0, v32, v34);
        }

        v35 = [a2 image];
        [v35 size];
        v37 = v36;
        v39 = v38;

        v40 = sub_10004D02C(v37, v39);
        v41 = swift_allocObject();
        *(v41 + 16) = a2;
        *(v41 + 24) = v29;
        *(v41 + 32) = v6;
        *(v41 + 40) = v8;
        *(v41 + 48) = v9;
        *(v41 + 56) = a1;
        *(v41 + 64) = a3;
        *(v41 + 72) = a4;
        *(v41 + 80) = v50;
        *(v41 + 88) = v52;
        *(v41 + 96) = v26;
        *(v41 + 104) = v28;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_10004D598;
        *(v42 + 24) = v41;
        aBlock[4] = sub_10004D5CC;
        aBlock[5] = v42;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10004B670;
        aBlock[3] = &unk_10010F2F0;
        v43 = _Block_copy(aBlock);
        v44 = a2;
        v45 = v6;
        v46 = a1;

        v47 = [v40 imageWithActions:v43];

        _Block_release(v43);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v47;
        }

        goto LABEL_27;
      }

LABEL_25:

      v24 = sub_1000DCA24();

      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_1000DCB14();
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10004D550()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10004D5F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10004D60C(char a1, char a2)
{
  if (qword_10011FA00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_100122628;
  if (*(off_100122628 + 2) && (v5 = sub_100063134(a2), (v6 & 1) != 0) && (v7 = *(v4[7] + 8 * v5), *(v7 + 16)) && (v8 = sub_1000632C0(a1 & 1), (v9 & 1) != 0))
  {
    v26 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    return v26;
  }

  else
  {
    v11 = 0xD000000000000027;
    swift_endAccess();
    if (a1)
    {
      started = type metadata accessor for WorkoutEndLocationAnnotation();
      v13 = "csImageRendererContext8";
    }

    else
    {
      started = type metadata accessor for WorkoutStartLocationAnnotation();
      v13 = "nnotationView.endingPin";
      v11 = 0xD000000000000029;
    }

    v14 = [objc_allocWithZone(started) init];
    v15 = objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView());
    v16 = sub_10004B8EC(v14, v11, v13 | 0x8000000000000000, a2);
    swift_beginAccess();
    if (*(off_100122628 + 2) && (sub_100063134(a2), (v17 & 1) != 0))
    {
      swift_endAccess();
      swift_beginAccess();
      v19 = sub_10004B828(v28, a2);
      if (*v18)
      {
        v20 = v18;
        v16 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v20;
        *v20 = 0x8000000000000000;
        sub_1000D1074(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
        *v20 = v27;
      }

      (v19)(v28, 0);
    }

    else
    {
      swift_endAccess();
      sub_100007BC0(&qword_100122740);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000DFEF0;
      *(inited + 32) = a1 & 1;
      v23 = inited + 32;
      *(inited + 40) = v16;
      v24 = sub_1000646D4(inited);
      swift_setDeallocating();
      v16 = v16;
      sub_1000080B0(v23, &qword_100122748);
      swift_beginAccess();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v29 = off_100122628;
      off_100122628 = 0x8000000000000000;
      sub_1000D0F28(v24, a2, v25);
      off_100122628 = v29;
    }

    swift_endAccess();
    return v16;
  }
}

void sub_10004D910(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  v65 = a3;
  v62 = a8;
  v63.size.width = a6;
  v63.size.height = a7;
  v63.origin.y = a5;
  v63.origin.x = a4;
  v68 = sub_1000DA084();
  v10 = *(v68 - 8);
  __chkstk_darwin(v68);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v57 = a2;
  v13 = *(a2 + OBJC_IVAR____TtC20JournalWidgetsSecure27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v13 >> 62))
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v61 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_1000DCA24();
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;
    v16 = [v14 timestamp];
    sub_1000DA044();

    sub_1000D9E24();
    v18 = v17;
    v20 = *(v10 + 8);
    v19 = v10 + 8;
    v67 = v20;
    v20(v12, v68);
    if (v13 >> 62)
    {
      v21 = sub_1000DCB14();
      if (!v21)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    if (v21 >= 1)
    {
      v60 = a1;
      v22 = 0;
      v23 = v62;
      v64 = v23 * v23;
      v56 = v23 + v23;
      v55 = xmmword_1000DE2C0;
      v24 = v61;
      v59 = v19;
      v58 = v13;
      do
      {
        v66 = v18;
        if (v24)
        {
          v27 = sub_1000DCA24();
        }

        else
        {
          v27 = *(v13 + 8 * v22 + 32);
        }

        v28 = v27;
        [v15 coordinate];
        v29 = MKMapPointForCoordinate(v70);
        [v28 coordinate];
        v30 = MKMapPointForCoordinate(v71);
        v31 = MKCoordinateForMapPoint(v29);
        v32 = v65;
        [v65 pointForCoordinate:{v31.latitude, v31.longitude}];
        v34 = v33;
        v36 = v35;
        v37 = MKCoordinateForMapPoint(v30);
        [v32 pointForCoordinate:{v37.latitude, v37.longitude}];
        v39 = v38;
        v41 = v40;
        if (v64 <= (v38 - v34) * (v38 - v34) + (v40 - v36) * (v40 - v36))
        {
          v74.origin.x = fmin(v29.x, v30.x);
          v74.origin.y = fmin(v29.y, v30.y);
          v74.size.width = vabdd_f64(v29.x, v30.x);
          v74.size.height = vabdd_f64(v29.y, v30.y);
          if (MKMapRectIntersectsRect(v63, v74))
          {
            v42 = [v28 timestamp];
            sub_1000DA044();

            sub_1000D9E24();
            v44 = v43;
            v67(v12, v68);
            v45 = v44 - v66;
            [v28 speed];
            v47 = v46;
            Mutable = CGPathCreateMutable();
            v69.b = 0.0;
            v69.c = 0.0;
            v69.a = 1.0;
            v69.d = 1.0;
            v69.tx = 0.0;
            v69.ty = 0.0;
            v72.x = v34;
            v72.y = v36;
            sub_1000DC504(v72, &v69);
            v73.x = v39;
            v73.y = v41;
            sub_1000DC514(v73, &v69);
            if (v45 <= 5.0)
            {
              v50 = sub_1000DC794();
              v51 = v60;
              CGContextAddPath(v60, v50);
              v53 = sub_10004C058(v47);
              CGContextSetFillColorWithColor(v51, v53);
              v54 = kCGPathFill;
            }

            else
            {
              sub_100007BC0(&qword_100122738);
              v49 = swift_allocObject();
              *(v49 + 16) = v55;
              *(v49 + 32) = 0;
              *(v49 + 40) = v56;
              v50 = sub_1000DC784();

              v51 = v60;
              CGContextAddPath(v60, v50);
              CGContextSetLineWidth(v51, v62);
              CGContextSetLineCap(v51, kCGLineCapRound);
              v52 = [objc_opt_self() grayColor];
              v53 = [v52 CGColor];

              CGContextSetStrokeColorWithColor(v51, v53);
              v54 = kCGPathStroke;
            }

            CGContextDrawPath(v51, v54);
            v13 = v58;
            v24 = v61;
          }

          v15 = v28;
        }

        ++v22;
        v25 = [v28 timestamp];
        sub_1000DA044();

        sub_1000D9E24();
        v18 = v26;

        v67(v12, v68);
      }

      while (v21 != v22);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (sub_1000DCB14())
  {
    goto LABEL_3;
  }
}

unint64_t sub_10004DEF4()
{
  result = qword_10011FD20;
  if (!qword_10011FD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011FD20);
  }

  return result;
}

void sub_10004DF40(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, double a8, double a9)
{
  v60 = a9;
  v55 = a7;
  v57.size.width = a5;
  v57.size.height = a6;
  v57.origin.y = a4;
  v57.origin.x = a3;
  v12 = sub_1000DA084();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v51 = a2;
  v16 = *(a2 + OBJC_IVAR____TtC20JournalWidgetsSecure27WorkoutGradientPathRenderer_routeCoordinates);
  v17 = v16 >> 62;
  v56 = v16;
  if (!(v16 >> 62))
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v59 = v56 & 0xC000000000000001;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v18 = sub_1000DCA24();
    }

    else
    {
      if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v56 + 32);
    }

    v19 = v18;
    v20 = [v18 timestamp];
    sub_1000DA044();

    sub_1000D9E24();
    v22 = v21;
    v23 = *(v13 + 8);
    v54 = v13 + 8;
    v61 = v23;
    v23(v15, v12);
    if (v17)
    {
      v24 = sub_1000DCB14();
      if (!v24)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v24 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_23;
      }
    }

    if (v24 >= 1)
    {
      v53 = a1;
      v25 = 0;
      v26 = v55;
      v58 = v26 * v26;
      v50 = v26 + v26;
      v49 = xmmword_1000DE2C0;
      v27 = v56;
      v52 = v12;
      do
      {
        if (v59)
        {
          v36 = sub_1000DCA24();
        }

        else
        {
          v36 = *(v27 + 8 * v25 + 32);
        }

        v37 = v36;
        [v19 coordinate];
        v38 = MKMapPointForCoordinate(v63);
        [v37 coordinate];
        v39 = MKMapPointForCoordinate(v64);
        v40 = v38.y - v60;
        v41 = v39.y - v60;
        if (v58 <= (v39.x - a8 - (v38.x - a8)) * (v39.x - a8 - (v38.x - a8)) + (v41 - v40) * (v41 - v40))
        {
          v67.origin.x = fmin(v38.x, v39.x);
          v67.origin.y = fmin(v38.y, v39.y);
          v67.size.width = vabdd_f64(v38.x, v39.x);
          v67.size.height = vabdd_f64(v38.y, v39.y);
          if (MKMapRectIntersectsRect(v57, v67))
          {
            v42 = [v37 timestamp];
            sub_1000DA044();

            sub_1000D9E24();
            v44 = v43;
            v61(v15, v12);
            v45 = v44 - v22;
            [v37 speed];
            v47 = v46;
            Mutable = CGPathCreateMutable();
            v62.b = 0.0;
            v62.c = 0.0;
            v62.a = 1.0;
            v62.d = 1.0;
            v62.tx = 0.0;
            v62.ty = 0.0;
            v65.x = v38.x - a8;
            v65.y = v40;
            sub_1000DC504(v65, &v62);
            v66.x = v39.x - a8;
            v66.y = v41;
            sub_1000DC514(v66, &v62);
            if (v45 > 5.0)
            {
              sub_100007BC0(&qword_100122738);
              v28 = swift_allocObject();
              *(v28 + 16) = v49;
              *(v28 + 32) = 0;
              *(v28 + 40) = v50;
              v29 = sub_1000DC784();

              v30 = v53;
              CGContextAddPath(v53, v29);
              CGContextSetLineWidth(v30, v55);
              CGContextSetLineCap(v30, kCGLineCapRound);
              v31 = [objc_opt_self() grayColor];
              v32 = [v31 CGColor];

              CGContextSetStrokeColorWithColor(v30, v32);
              v33 = kCGPathStroke;
            }

            else
            {
              v29 = sub_1000DC794();
              v30 = v53;
              CGContextAddPath(v53, v29);
              v32 = sub_10004C058(v47);
              CGContextSetFillColorWithColor(v30, v32);
              v33 = kCGPathFill;
            }

            CGContextDrawPath(v30, v33);
            v12 = v52;
            v27 = v56;
          }

          v19 = v37;
        }

        ++v25;
        v34 = [v37 timestamp];
        sub_1000DA044();

        sub_1000D9E24();
        v22 = v35;

        v61(v15, v12);
      }

      while (v24 != v25);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (sub_1000DCB14())
  {
    goto LABEL_3;
  }
}

unint64_t sub_10004E514()
{
  result = qword_100122750;
  if (!qword_100122750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122750);
  }

  return result;
}

uint64_t sub_10004E574()
{
  v0 = sub_1000DC554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBAA4();
  __chkstk_darwin(v5 - 8);
  sub_10000A41C();
  sub_1000DBA44();
  sub_1000DC534();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_1000DC594();
  qword_100126F68 = result;
  return result;
}

uint64_t sub_10004E724()
{
  v0 = sub_1000DC554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBAA4();
  __chkstk_darwin(v5 - 8);
  sub_10000A41C();
  sub_1000DBA74();
  sub_1000DC534();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_1000DC594();
  qword_100126F70 = result;
  return result;
}

uint64_t sub_10004E8D4()
{
  v0 = sub_1000DC554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBAA4();
  __chkstk_darwin(v5 - 8);
  sub_10000A41C();
  sub_1000DBA44();
  sub_1000DC534();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_1000DC594();
  qword_100126F78 = result;
  return result;
}

uint64_t sub_10004EA84(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v60 = a4;
  LOBYTE(v5) = a1;
  v6 = sub_1000DA0E4();
  v59 = *(v6 - 1);
  __chkstk_darwin(v6);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
  if ((a3 & 1) == 0)
  {
    v57 = 0x80000001000E9620;
    v56 = v5 & 1;
    goto LABEL_5;
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_10011FB78 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v10 = qword_100127310;
    sub_100007BC0(&qword_100122768);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E2830;
    strcpy(&v63, "downloadIDKey");
    HIWORD(v63) = -4864;
    sub_1000DC9A4();
    v12 = sub_1000DA094();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    *&v63 = 0xD000000000000013;
    *(&v63 + 1) = 0x80000001000E9620;
    v57 = 0x80000001000E9620;
    sub_1000DC9A4();
    *(inited + 168) = &_s16DownloadPriorityON;
    v56 = v5 & 1;
    *(inited + 144) = v5 & 1;
    *&v63 = 0x64616F6C6E776F64;
    *(&v63 + 1) = 0xEF79654B65707954;
    sub_1000DC9A4();
    *(inited + 240) = &_s12DownloadTypeON;
    *(inited + 216) = 1;
    sub_100064394(inited);
    swift_setDeallocating();
    sub_100007BC0(&qword_100122760);
    swift_arrayDestroy();
    isa = sub_1000DBD64().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];

    v8 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
LABEL_5:
    v15 = v60 + 56;
    v16 = 1 << *(v60 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v9 = v17 & *(v60 + 56);
    v18 = (v16 + 63) >> 6;
    v54 = (v59 + 8);
    v55 = v59 + 16;

    v19 = 0;
    v5 = v58;
    v52 = v15;
    v53 = v18;
    v51 = v6;
    if (!v9)
    {
      break;
    }

    while (1)
    {
      v20 = v19;
LABEL_12:
      (*(v59 + 16))(v5, *(v60 + 48) + *(v59 + 72) * (__clz(__rbit64(v9)) | (v20 << 6)), v6);
      v62 = [objc_opt_self() *&v8[373]];
      if (qword_10011FB78 != -1)
      {
        swift_once();
      }

      v61 = qword_100127310;
      strcpy(&v63, "downloadIDKey");
      HIWORD(v63) = -4864;
      sub_1000DC9A4();
      v21 = sub_1000DA094();
      v23 = v22;
      (*v54)(v5, v6);
      v68[8] = &type metadata for String;
      v68[5] = v21;
      v68[6] = v23;
      *&v63 = 0xD000000000000013;
      *(&v63 + 1) = v57;
      sub_1000DC9A4();
      v70 = &_s16DownloadPriorityON;
      v69[40] = v56;
      *&v63 = 0x64616F6C6E776F64;
      v5 = &v67;
      *(&v63 + 1) = 0xEF79654B65707954;
      sub_1000DC9A4();
      v72 = &_s12DownloadTypeON;
      v71[40] = 0;
      sub_100007BC0(&qword_100122758);
      v24 = sub_1000DCB44();
      sub_10004F1B8(v68, &v63);
      v25 = sub_1000630F0(&v63);
      v6 = &v63;
      if (v26)
      {
        break;
      }

      v27 = v24 + 8;
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
      v28 = v24[6] + 40 * v25;
      v29 = v63;
      v30 = v64;
      *(v28 + 32) = v65;
      *v28 = v29;
      *(v28 + 16) = v30;
      sub_100007EAC(v66, (v24[7] + 32 * v25));
      v31 = v24[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v33;
      sub_10004F1B8(v69, &v63);
      v34 = sub_1000630F0(&v63);
      if (v35)
      {
        break;
      }

      *(v27 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v36 = v24[6] + 40 * v34;
      v37 = v63;
      v38 = v64;
      *(v36 + 32) = v65;
      *v36 = v37;
      *(v36 + 16) = v38;
      sub_100007EAC(v66, (v24[7] + 32 * v34));
      v39 = v24[2];
      v32 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v40;
      sub_10004F1B8(v71, &v63);
      v41 = sub_1000630F0(&v63);
      if (v42)
      {
        break;
      }

      *(v27 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v43 = v24[6] + 40 * v41;
      v44 = v63;
      v45 = v64;
      *(v43 + 32) = v65;
      *v43 = v44;
      *(v43 + 16) = v45;
      sub_100007EAC(v66, (v24[7] + 32 * v41));
      v46 = v24[2];
      v32 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v9 &= v9 - 1;
      v24[2] = v47;
      sub_100007BC0(&qword_100122760);
      swift_arrayDestroy();
      v48 = sub_1000DBD64().super.isa;

      v49 = v62;
      [v62 postNotificationName:v61 object:0 userInfo:v48];

      v19 = v20;
      v6 = v51;
      v15 = v52;
      v5 = v58;
      v8 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
      v18 = v53;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  while (1)
  {
LABEL_9:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v20 >= v18)
    {
    }

    v9 = *(v15 + 8 * v20);
    ++v19;
    if (v9)
    {
      goto LABEL_12;
    }
  }
}

uint64_t sub_10004F1B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100122760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F254()
{
  result = qword_100122770;
  if (!qword_100122770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122770);
  }

  return result;
}

unint64_t sub_10004F2AC()
{
  result = qword_100122778;
  if (!qword_100122778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122778);
  }

  return result;
}

size_t sub_10004F310@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_1000DA5A4();
  v4 = *(v29 - 8);
  v5 = __chkstk_darwin(v29);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = sub_1000DBB34();
  __chkstk_darwin(v10 - 8);
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:

    sub_1000DBB24();
    return sub_1000DA5E4();
  }

  v11 = sub_1000DCB14();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = a1;
  v30 = &_swiftEmptyArrayStorage;
  result = sub_100017864(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26[1] = a2;
    v14 = v30;
    v15 = v12;
    v28 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v27 = v4 + 32;
      do
      {
        v17 = sub_1000DCA24();
        v18 = [swift_unknownObjectRetain() markerFormat];
        sub_1000DBF44();

        [v17 startingItemNumber];
        sub_1000DBB24();
        sub_1000DA584();
        swift_unknownObjectRelease_n();
        v30 = v14;
        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100017864(v19 > 1, v20 + 1, 1);
          v14 = v30;
        }

        ++v16;
        v14[2] = v20 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v9, v29);
      }

      while (v11 != v16);
    }

    else
    {
      v27 = v4 + 32;
      v21 = 32;
      do
      {
        v22 = *(v15 + v21);
        v23 = [v22 markerFormat];
        sub_1000DBF44();

        [v22 startingItemNumber];
        sub_1000DBB24();
        sub_1000DA584();

        v30 = v14;
        v25 = v14[2];
        v24 = v14[3];
        if (v25 >= v24 >> 1)
        {
          sub_100017864(v24 > 1, v25 + 1, 1);
          v14 = v30;
        }

        v14[2] = v25 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v7, v29);
        v21 += 8;
        --v11;
        v15 = v28;
      }

      while (v11);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007BC0(&qword_10011FE00);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  switch(a1)
  {
    case 1:
      v13 = &enum case for MergeableWritingDirection.rightToLeft(_:);
      goto LABEL_7;
    case 0:
      v13 = &enum case for MergeableWritingDirection.leftToRight(_:);
      goto LABEL_7;
    case -1:
      v13 = &enum case for MergeableWritingDirection.natural(_:);
LABEL_7:
      v14 = *v13;
      v15 = sub_1000DAA74();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v10, v14, v15);
      (*(v16 + 56))(v10, 0, 1, v15);
      goto LABEL_9;
  }

  v15 = sub_1000DAA74();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
LABEL_9:
  sub_10001865C(v10, v12, &qword_10011FE00);
  sub_10001865C(v12, v7, &qword_10011FE00);
  sub_1000DAA74();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v7, 1, v15) == 1)
  {
    sub_1000080B0(v7, &qword_10011FE00);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v7, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

uint64_t sub_10004F9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007BC0(&qword_10011FDF8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v13 = &enum case for MergeableTextAlignment.left(_:);
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v13 = &enum case for MergeableTextAlignment.center(_:);
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v13 = &enum case for MergeableTextAlignment.right(_:);
        goto LABEL_12;
      case 3:
        v13 = &enum case for MergeableTextAlignment.justified(_:);
        goto LABEL_12;
      case 4:
        v13 = &enum case for MergeableTextAlignment.natural(_:);
LABEL_12:
        v14 = *v13;
        v15 = sub_1000DA854();
        v16 = *(v15 - 8);
        (*(v16 + 104))(v10, v14, v15);
        (*(v16 + 56))(v10, 0, 1, v15);
        goto LABEL_13;
    }
  }

  v15 = sub_1000DA854();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
LABEL_13:
  sub_10001865C(v10, v12, &qword_10011FDF8);
  sub_10001865C(v12, v7, &qword_10011FDF8);
  sub_1000DA854();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v7, 1, v15) == 1)
  {
    sub_1000080B0(v7, &qword_10011FDF8);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v7, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

uint64_t sub_10004FCBC()
{
  v1 = v0;
  v2 = sub_1000DA504();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007BC0(&qword_100122780);
  v5 = __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_1000DAD64();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000DA4D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MergeableColor.sRGB(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = sub_1000DAD54();
    (*(v11 + 8))(v13, v10);
    return v19;
  }

  if (v18 == enum case for MergeableColor.catalogColor(_:))
  {
    (*(v15 + 96))(v17, v14);
    sub_10001865C(v17, v9, &qword_100122780);
    sub_100050168(v9, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000080B0(v9, &qword_100122780);
      sub_1000080B0(v7, &qword_100122780);
      return 0;
    }

    else
    {
      v22 = v28;
      v23 = v29;
      v24 = v30;
      (*(v29 + 32))(v28, v7, v30);
      sub_1000DA4F4();
      v25 = sub_1000DBF04();

      v19 = [objc_opt_self() colorNamed:v25];

      (*(v23 + 8))(v22, v24);
      sub_1000080B0(v9, &qword_100122780);
    }

    return v19;
  }

  if (v18 == enum case for MergeableColor.unknown(_:))
  {
    (*(v15 + 96))(v17, v14);
    v20 = *(sub_100007BC0(&qword_100122788) + 48);
    v21 = sub_1000DBAB4();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
    return 0;
  }

  result = sub_1000DCC64();
  __break(1u);
  return result;
}

uint64_t sub_100050168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100122780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000501D8(char a1)
{
  v2 = sub_1000DA484();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v12[1] = 0;
  sub_100050368();
  result = sub_1000DCE64();
  if (a1)
  {
    sub_1000DA474();
    sub_10007EC34(v8, v6);
    v10 = *(v3 + 8);
    v10(v6, v2);
    result = (v10)(v8, v2);
  }

  if ((a1 & 2) != 0)
  {
    sub_1000DA464();
    sub_10007EC34(v8, v6);
    v11 = *(v3 + 8);
    v11(v6, v2);
    return (v11)(v8, v2);
  }

  return result;
}

unint64_t sub_100050368()
{
  result = qword_100122790;
  if (!qword_100122790)
  {
    sub_1000DA484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122790);
  }

  return result;
}

uint64_t sub_100050440(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1000DAFF4();
  sub_100007EF4(v7, a2);
  v8 = sub_100007EBC(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_100007EBC(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_10005056C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_10000AAC0(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100050648()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_100018954(v0 + 48);
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_uuid, &qword_1001217A0);

  v2 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_uniqueID;
  v3 = sub_1000DA0E4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes, &qword_100122D70);

  v4 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_date;
  v5 = sub_1000DA084();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_dateSource, &qword_100122DB8);
  v6(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_displayDate, v5);
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_bundleId, &qword_1001217A0);
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_bundleDate, &qword_1001203B8);
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_bundleEndDate, &qword_1001203B8);

  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_originalUpdatedDate, &qword_1001203B8);
  return v0;
}

uint64_t sub_100050938()
{
  sub_100050648();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntryViewModel()
{
  result = qword_100122818;
  if (!qword_100122818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000509E4()
{
  sub_100051FC0(319, &qword_100121768, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_1000DA0E4();
    if (v1 <= 0x3F)
    {
      sub_100051FC0(319, &qword_100122828, &type metadata accessor for MergeableEntryAttributes);
      if (v2 <= 0x3F)
      {
        sub_1000DA084();
        if (v3 <= 0x3F)
        {
          sub_100051FC0(319, &unk_100122830, &type metadata accessor for EntryDateSource);
          if (v4 <= 0x3F)
          {
            sub_100051FC0(319, &qword_100120C98, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100050C98(void *a1)
{
  v2 = sub_1000DA374();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for JournalFeatureFlags.enhancedSync(_:), v2);
  v6 = sub_1000DA364();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_10011FA20 != -1)
    {
      swift_once();
    }

    v7 = sub_1000DAFF4();
    sub_100007EBC(v7, qword_100122798);
    v8 = sub_1000DAFD4();
    v9 = sub_1000DC4C4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Replacing mergeable title with a non-mergeable string. This may result in an incorrect merge.", v10, 2u);
    }

    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = [objc_allocWithZone(NSAttributedString) init];
    }

    v12 = a1;
    sub_100050E94(v11);
  }

  else
  {
    sub_100051208(a1);
  }
}

uint64_t sub_100050E94(uint64_t a1)
{
  v25 = a1;
  v2 = sub_1000DA934();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_100122D70);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_100007BC0(&qword_100122D80);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_100007F58(v1 + v18, v8, &qword_100122D70);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_1000080B0(v8, &qword_100122D70);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_1000080B0(v8, &qword_100122D70);
  sub_1000DA924();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_100055E78(&qword_100122DB0, &type metadata accessor for MergeableTitleAttributeScope);
  sub_1000DBB14();

  sub_100054D0C(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

void sub_100051208(void *a1)
{
  v2 = v1;
  v4 = sub_1000D99D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = [a1 string];
    v9 = sub_1000DBF44();
    v11 = v10;

    aBlock = v9;
    v22 = v11;
    sub_1000D99C4();
    sub_100007C50();
    v12 = sub_1000DC834();
    v14 = v13;
    (*(v5 + 8))(v7, v4);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = a1;
    }

    else
    {
      a1 = 0;
    }
  }

  v17 = *(v2 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_attributedTitle);
  *(v2 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_attributedTitle) = a1;

  v18 = *(v2 + 24);
  v19 = swift_allocObject();
  swift_weakInit();
  v25 = sub_100055EC0;
  v26 = v19;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100034608;
  v24 = &unk_10010F738;
  v20 = _Block_copy(&aBlock);

  [v18 performBlock:v20];
  _Block_release(v20);
}

void sub_100051430(void *a1)
{
  v2 = v1;
  v4 = sub_1000DA374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for JournalFeatureFlags.enhancedSync(_:), v4);
  v8 = sub_1000DA364();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_attributedText;
    v15 = *(v2 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_attributedText);
    if (a1)
    {
      if (v15)
      {
        sub_100008068(0, &qword_100122DA0);
        v16 = a1;
        v17 = v15;
        v18 = sub_1000DC764();

        if (v18)
        {
          goto LABEL_16;
        }
      }
    }

    else if (!v15)
    {
LABEL_16:
      v13 = *(v2 + v14);
      *(v2 + v14) = a1;
      v20 = a1;
      goto LABEL_17;
    }

    *(v2 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_textChanged) = 1;
    goto LABEL_16;
  }

  if (qword_10011FA20 != -1)
  {
    swift_once();
  }

  v9 = sub_1000DAFF4();
  sub_100007EBC(v9, qword_100122798);
  v10 = sub_1000DAFD4();
  v11 = sub_1000DC4C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
  }

  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(NSAttributedString) init];
  }

  v19 = a1;
  sub_1000516A0(v13);
LABEL_17:
}

uint64_t sub_1000516A0(uint64_t a1)
{
  v25 = a1;
  v2 = sub_1000DA934();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_100122D70);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_100007BC0(&qword_100122D90);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_100007F58(v1 + v18, v8, &qword_100122D70);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_1000080B0(v8, &qword_100122D70);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_1000080B0(v8, &qword_100122D70);
  sub_1000DA8D4();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_100055E78(&qword_100122DA8, &type metadata accessor for MergeableTextAttributeScope);
  sub_1000DBB14();

  sub_1000541D8(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

uint64_t sub_100051A28(uint64_t a1, void *a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    isa = *(result + *a2);
    if (isa)
    {
      v8 = v6;
      v9 = isa;
      v10 = sub_1000DC5B4();
      v12 = v11;

      if (v12 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_1000D9DE4().super.isa;
        sub_100010500(v10, v12);
      }
    }

    else
    {
      v13 = v6;
    }

    [v6 *a3];

    sub_100051D2C();
  }

  return result;
}

uint64_t sub_100051B18(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_bookmarked) != (result & 1))
  {
    v2 = *(v1 + 24);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100055E70;
    *(v4 + 24) = v3;
    v6[4] = sub_100056124;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1000503C0;
    v6[3] = &unk_10010F6E8;
    v5 = _Block_copy(v6);

    [v2 performBlockAndWait:v5];
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      v6[0] = sub_1000396B8(&off_10010D5B0);
      sub_1000DB0A4();
    }
  }

  return result;
}

uint64_t sub_100051CB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 32) setFlagged:*(result + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_bookmarked)];
    sub_100051D2C();
  }

  return result;
}

void sub_100051D2C()
{
  v1 = sub_1000DA084();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001203B8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(v0 + 32);
  [v11 setIsUploadedToCloud:0];
  if ((*(v0 + 40) & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_originalUpdatedDate;
    swift_beginAccess();
    v19 = v12;
    sub_100007F58(v0 + v12, v10, &qword_1001203B8);
    LODWORD(v12) = (*(v2 + 48))(v10, 1, v1);
    sub_1000080B0(v10, &qword_1001203B8);
    if (v12 == 1)
    {
      v13 = [v11 updatedDate];
      if (v13)
      {
        v14 = v13;
        sub_1000DA044();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*(v2 + 56))(v8, v15, 1, v1);
      v16 = v19;
      swift_beginAccess();
      sub_1000275E0(v8, v0 + v16);
      swift_endAccess();
    }
  }

  sub_1000DA054();
  isa = sub_1000D9FE4().super.isa;
  (*(v2 + 8))(v4, v1);
  [v11 setUpdatedDate:isa];
}

void sub_100051FC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DC7C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for EntryViewModel.EntryProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EntryViewModel.EntryProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100052178()
{
  result = qword_100122D58;
  if (!qword_100122D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122D58);
  }

  return result;
}

unint64_t sub_1000521D0()
{
  result = qword_100122D60;
  if (!qword_100122D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122D60);
  }

  return result;
}

uint64_t sub_100052228@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EntryViewModel();
  result = sub_1000DB094();
  *a1 = result;
  return result;
}

id sub_100052268@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_id);
  *a1 = v2;
  return v2;
}

uint64_t sub_10005228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v99 = a8;
  v110 = a7;
  v107 = a4;
  v108 = a5;
  v112 = a3;
  v12 = sub_100007BC0(&qword_100122D68);
  __chkstk_darwin(v12 - 8);
  v105 = &v92 - v13;
  v14 = sub_1000DA934();
  v111 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v100 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v92 - v17;
  v18 = sub_100007BC0(&qword_100122D70);
  v19 = __chkstk_darwin(v18 - 8);
  v104 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v92 - v22;
  __chkstk_darwin(v21);
  v25 = &v92 - v24;
  v26 = sub_1000DA8A4();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v98 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v101 = &v92 - v31;
  v97 = v32;
  __chkstk_darwin(v30);
  v34 = &v92 - v33;
  v35 = *(v27 + 16);
  v114 = v36;
  v96 = v27 + 16;
  v95 = v35;
  (v35)(&v92 - v33, a2);
  v37 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v103 = v37;
  v113 = v25;
  sub_100007F58(v37 + a1, v25, &qword_100122D70);
  v38 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager;
  v39 = *(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager);
  v109 = a6;
  if (v39)
  {
    v40 = qword_10011FA28;
    v102 = v39;
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_1000DAFF4();
    sub_100007EBC(v41, qword_1001227B0);
    v42 = v108;

    v43 = sub_1000DAFD4();
    v44 = sub_1000DC4B4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = a1;
      v47 = v46;
      v115 = v46;
      *v45 = 136315138;
      v48 = v42 == 0;
      v94 = v27;
      v49 = v23;
      if (v42)
      {
        v50 = v107;
      }

      else
      {
        v50 = 45;
      }

      v51 = v42;
      v52 = v34;
      v53 = v14;
      if (v48)
      {
        v54 = 0xE100000000000000;
      }

      else
      {
        v54 = v51;
      }

      v55 = sub_10001A58C(v50, v54, &v115);
      v14 = v53;
      v34 = v52;

      *(v45 + 4) = v55;
      v23 = v49;
      v27 = v94;
      _os_log_impl(&_mh_execute_header, v43, v44, "undoable (%s)", v45, 0xCu);
      sub_100007FC0(v47);
      a1 = v93;
    }

    a6 = v109;
    v56 = v102;
    if (![v102 groupingLevel])
    {
      [v56 beginUndoGrouping];
    }
  }

  sub_100052C10(a1, v34);
  if (a6)
  {
    a6();
  }

  v57 = *(a1 + v38);
  if (!v57)
  {
    v62 = &qword_100122D70;
    v61 = v113;
    goto LABEL_26;
  }

  v58 = v113;
  sub_100007F58(v113, v23, &qword_100122D70);
  v59 = v111;
  v60 = *(v111 + 48);
  if (v60(v23, 1, v14) == 1)
  {
    sub_1000080B0(v58, &qword_100122D70);
    v61 = v23;
    v62 = &qword_100122D70;
LABEL_26:
    sub_1000080B0(v61, v62);
    return (*(v27 + 8))(v34, v114);
  }

  v63 = *(v59 + 32);
  v64 = v59;
  v65 = v106;
  v63(v106, v23, v14);
  v66 = v104;
  sub_100007F58(v103 + a1, v104, &qword_100122D70);
  if (v60(v66, 1, v14))
  {
    (*(v64 + 8))(v65, v14);
    sub_1000080B0(v113, &qword_100122D70);
    sub_1000080B0(v66, &qword_100122D70);
    v67 = v105;
    (*(v27 + 56))(v105, 1, 1, v114);
LABEL_25:
    v62 = &qword_100122D68;
    v61 = v67;
    goto LABEL_26;
  }

  v68 = v100;
  (*(v64 + 16))(v100, v66, v14);
  v103 = v57;
  sub_1000080B0(v66, &qword_100122D70);
  v67 = v105;
  sub_1000DA8C4();
  v71 = *(v64 + 8);
  v70 = v64 + 8;
  v69 = v71;
  (v71)(v68, v14);
  if ((*(v27 + 48))(v67, 1, v114) == 1)
  {

    (v69)(v65, v14);
    sub_1000080B0(v113, &qword_100122D70);
    goto LABEL_25;
  }

  v100 = v69;
  v93 = a1;
  v102 = v34;
  v111 = v70;
  v104 = v14;
  v92 = a9;
  v105 = *(v27 + 32);
  (v105)(v101, v67, v114);
  v73 = v108;
  if (v108)
  {
    v74 = sub_1000DBF04();
    [v103 setActionName:v74];
  }

  v75 = v98;
  v76 = v114;
  v95(v98, v101, v114);
  v77 = *(v27 + 80);
  v94 = v27;
  v78 = (v77 + 16) & ~v77;
  v79 = (v97 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = v82 + v78;
  v27 = v94;
  (v105)(v83, v75, v76);
  *(v82 + v79) = v112;
  v84 = (v82 + v80);
  *v84 = v107;
  v84[1] = v73;
  v85 = (v82 + v81);
  v86 = v99;
  v87 = v92;
  *v85 = v99;
  v85[1] = v87;
  v88 = (v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8));
  v90 = v109;
  v89 = v110;
  *v88 = v109;
  v88[1] = v89;

  sub_100036F4C(v86);
  sub_100036F4C(v90);
  type metadata accessor for EntryViewModel();
  v91 = v103;
  sub_1000DC444();

  (*(v27 + 8))(v101, v76);
  (v100)(v106, v104);
  sub_1000080B0(v113, &qword_100122D70);
  v34 = v102;
  return (*(v27 + 8))(v34, v114);
}

void sub_100052C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100122D68);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_100050508();
  v9 = v8;
  v10 = sub_1000DA934();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_1000DA8A4();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v6, a2, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    sub_1000DA8E4();
    sub_1000080B0(v6, &qword_100122D68);
  }

  (v7)(v18, 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(a1 + 56);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(a2, a1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  v15 = *(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager);
  if (v15)
  {
    swift_beginAccess();
    v16 = v15;

    sub_10005056C(v17);
    swift_endAccess();
  }
}

uint64_t sub_100052E5C(void *a1)
{
  v2 = v1;
  v4 = sub_100007BC0(&qword_100122D68);
  __chkstk_darwin(v4 - 8);
  v96 = &v89 - v5;
  v97 = sub_1000DA8A4();
  v99 = *(v97 - 8);
  v6 = __chkstk_darwin(v97);
  v93 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v7;
  __chkstk_darwin(v6);
  v94 = &v89 - v8;
  v9 = sub_1000DBAC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007BC0(&qword_100122D70);
  v14 = __chkstk_darwin(v13 - 8);
  v105 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v101 = &v89 - v17;
  v18 = __chkstk_darwin(v16);
  v106 = &v89 - v19;
  __chkstk_darwin(v18);
  v21 = &v89 - v20;
  v22 = sub_1000DA934();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v92 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v98 = &v89 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v89 - v29;
  __chkstk_darwin(v28);
  v32 = &v89 - v31;
  v33 = *(v23 + 16);
  v91 = v23 + 16;
  v90 = v33;
  v33(&v89 - v31, a1, v22);
  v34 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v104 = v34;
  sub_100007F58(v2 + v34, v21, &qword_100122D70);
  v107 = *(v23 + 48);
  v108 = v22;
  if (v107(v21, 1, v22) == 1)
  {
    v35 = v32;
    sub_1000080B0(v21, &qword_100122D70);
  }

  else
  {
    v36 = v21;
    v37 = v108;
    (*(v23 + 32))(v30, v36, v108);
    v35 = v32;
    sub_1000DA914();
    (*(v10 + 8))(v12, v9);
    (*(v23 + 8))(v30, v37);
  }

  v38 = v23;
  v39 = sub_1000396B8(&off_10010D5D8);
  v40 = v105;
  v41 = v106;
  if (qword_10011FBD0 != -1)
  {
    swift_once();
  }

  v100 = qword_1001273A8;
  v102 = unk_1001273B0;
  sub_100007F58(v2 + v104, v41, &qword_100122D70);
  v42 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager;
  v43 = *(v2 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager);
  v44 = v35;
  v45 = v107;
  v103 = v39;
  if (!v43)
  {
    goto LABEL_13;
  }

  v46 = qword_10011FA28;
  v95 = v43;
  if (v46 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v47 = sub_1000DAFF4();
    sub_100007EBC(v47, qword_1001227B0);
    v48 = v102;

    v49 = sub_1000DAFD4();
    v50 = sub_1000DC4B4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v44;
      v53 = v38;
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v51 = 136315138;

      v55 = sub_10001A58C(v100, v48, aBlock);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "undoable (%s)", v51, 0xCu);
      sub_100007FC0(v54);
      v38 = v53;
      v44 = v52;
      v40 = v105;

      v41 = v106;
    }

    v56 = v95;
    v57 = [v95 groupingLevel];
    v45 = v107;
    if (!v57)
    {
      [v56 beginUndoGrouping];
    }

LABEL_13:
    sub_100053A9C(v2, v44);
    v58 = *(v2 + v42);
    if (!v58)
    {

      v60 = &qword_100122D70;
      v59 = v41;
      goto LABEL_22;
    }

    v42 = v101;
    sub_100007F58(v41, v101, &qword_100122D70);
    if (v45(v42, 1, v108) == 1)
    {

      sub_1000080B0(v41, &qword_100122D70);
      v59 = v42;
      v60 = &qword_100122D70;
      goto LABEL_22;
    }

    v61 = v42;
    v42 = v98;
    v62 = v108;
    (*(v38 + 32))(v98, v61, v108);
    sub_100007F58(v2 + v104, v40, &qword_100122D70);
    if (v45(v40, 1, v62))
    {

      (*(v38 + 8))(v42, v108);
      sub_1000080B0(v41, &qword_100122D70);
      sub_1000080B0(v40, &qword_100122D70);
      v63 = v96;
      (*(v99 + 56))(v96, 1, 1, v97);
LABEL_21:
      v60 = &qword_100122D68;
      v59 = v63;
      goto LABEL_22;
    }

    v64 = v92;
    v65 = v108;
    v90(v92, v40, v108);
    v107 = v58;
    sub_1000080B0(v40, &qword_100122D70);
    v66 = v96;
    sub_1000DA8C4();
    v67 = v65;
    v63 = v66;
    v105 = *(v38 + 8);
    (v105)(v64, v67);
    v68 = v99;
    v69 = v97;
    if ((*(v99 + 48))(v63, 1, v97) == 1)
    {

      (v105)(v42, v108);
      sub_1000080B0(v41, &qword_100122D70);
      goto LABEL_21;
    }

    v73 = v68;
    v95 = *(v68 + 32);
    v74 = v94;
    (v95)(v94, v63, v69);
    v75 = v69;
    v76 = sub_1000DBF04();
    [v107 setActionName:v76];

    v77 = v74;
    v78 = v75;
    (*(v73 + 16))(v93, v77, v75);
    v79 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v104 = v38;
    v80 = (v89 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
    v101 = v44;
    v83 = swift_allocObject();
    (v95)(v83 + v79, v93, v78);
    *(v83 + v80) = v103;
    v38 = v104;
    v84 = (v83 + v81);
    v42 = v108;
    v85 = v102;
    *v84 = v100;
    v84[1] = v85;
    v86 = (v83 + v82);
    v87 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
    v44 = v101;
    *v86 = 0;
    v86[1] = 0;
    *v87 = 0;
    v87[1] = 0;
    type metadata accessor for EntryViewModel();

    v88 = v107;
    sub_1000DC444();

    (*(v99 + 8))(v94, v78);
    (v105)(v98, v42);
    v60 = &qword_100122D70;
    v59 = v106;
LABEL_22:
    sub_1000080B0(v59, v60);
    v70 = *(v2 + 24);
    v71 = swift_allocObject();
    *(v71 + 16) = sub_100055D88;
    *(v71 + 24) = v2;
    aBlock[4] = sub_100055D9C;
    v110 = v71;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000503C0;
    aBlock[3] = &unk_10010F620;
    v40 = _Block_copy(aBlock);
    v41 = v110;

    [v70 performBlockAndWait:v40];
    _Block_release(v40);
    LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

    if ((v70 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  (*(v38 + 8))(v44, v108);
}

uint64_t sub_100053A9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000DA934();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = sub_100007BC0(&qword_100122D78);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8 + 16;
  v10 = sub_100050508();
  if ((*(v4 + 48))(v11, 1, v3))
  {
    (v10)(v16, 0);
    v12 = 1;
  }

  else
  {
    swift_beginAccess();
    (*(v4 + 16))(v6, a2, v3);
    sub_1000DA914();
    (*(v4 + 8))(v6, v3);
    (v10)(v16, 0);
    v12 = 0;
  }

  v13 = sub_1000DBAC4();
  (*(*(v13 - 8) + 56))(v9, v12, 1, v13);
  return sub_1000080B0(v9, &qword_100122D78);
}

uint64_t sub_100053CC0()
{
  v1 = v0;
  v39 = sub_100007BC0(&qword_1001217A0);
  __chkstk_darwin(v39);
  v38 = &v35[-v2];
  v3 = sub_100007BC0(&qword_100122D70);
  __chkstk_darwin(v3 - 8);
  v5 = &v35[-v4];
  v6 = sub_1000DA934();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v35[-v11];
  v13 = sub_1000DA374();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v16, enum case for JournalFeatureFlags.enhancedSync(_:), v13);
  v17 = sub_1000DA364();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_100007F58(v1 + v19, v5, &qword_100122D70);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_1000080B0(v5, &qword_100122D70);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      v20 = *(v1 + 32);
      v21 = [v20 mergeableAttributes];
      if (v21)
      {
      }

      else
      {
        if (qword_10011FA20 != -1)
        {
          swift_once();
        }

        v22 = sub_1000DAFF4();
        sub_100007EBC(v22, qword_100122798);

        v23 = sub_1000DAFD4();
        v24 = sub_1000DC4E4();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v41 = v37;
          *v25 = 136446466;
          v40 = *(v1 + 16);
          v26 = sub_1000DBF84();
          v28 = sub_10001A58C(v26, v27, &v41);
          v36 = v24;
          v29 = v28;

          *(v25 + 4) = v29;
          *(v25 + 12) = 2082;
          sub_100007F58(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_uuid, v38, &qword_1001217A0);
          v30 = sub_1000DBF84();
          v32 = sub_10001A58C(v30, v31, &v41);

          *(v25 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v23, v36, "Migrating legacy fields to mergeable attributes (mode: %{public}s) for entry ID %{public}s", v25, 0x16u);
          swift_arrayDestroy();
        }
      }

      (*(v7 + 16))(v10, v12, v6);
      v33 = objc_allocWithZone(sub_1000DACC4());
      v34 = sub_1000DACD4();
      [v20 setMergeableAttributes:v34];

      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}

uint64_t sub_1000541D8(uint64_t a1)
{
  v3 = sub_100007BC0(&qword_100122D68);
  __chkstk_darwin(v3 - 8);
  v89 = &v82 - v4;
  v5 = sub_1000DA8A4();
  v90 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v86 = &v82 - v8;
  v9 = sub_1000DA934();
  v10 = *(v9 - 8);
  v97 = v9;
  v98 = v10;
  v11 = __chkstk_darwin(v9);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v82 - v13;
  v14 = sub_100007BC0(&qword_100122D70);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v93 = &v82 - v18;
  __chkstk_darwin(v17);
  v20 = &v82 - v19;
  v21 = sub_100007BC0(&qword_100122D90);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v100 = &v82 - v23;
  v101 = v1;
  v24 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager;
  v25 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager);
  v99 = v20;
  if (v25)
  {
    v26 = v21;
    v27 = OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_lastUndoableActivity;
    v28 = *&v25[OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_lastUndoableActivity];
    v29 = *(v28 + 24);
    v30 = v25;
    if (v29)
    {
      sub_10009BA3C();
      v28 = *&v25[v27];
      v31 = *(v28 + 24);
      *(v28 + 24) = 0;
      if (v31)
      {
        *(v28 + 16) = 0;
      }
    }

    v21 = v26;
    v20 = v99;

    v32 = *(v28 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
      goto LABEL_31;
    }

    *(v28 + 16) = v34;
  }

  v88 = v5;
  v94 = sub_1000396B8(&off_10010D588);
  if (qword_10011FBD8 != -1)
  {
    swift_once();
  }

  v35 = unk_1001273C0;
  v92 = qword_1001273B8;
  (*(v22 + 16))(v100, a1, v21);
  v36 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
  v37 = v101;
  swift_beginAccess();
  v87 = v36;
  sub_100007F58(v37 + v36, v20, &qword_100122D70);
  v38 = *(v37 + v24);
  v5 = v97;
  v96 = v35;
  if (v38)
  {
    v39 = qword_10011FA28;
    v20 = v38;
    if (v39 == -1)
    {
LABEL_11:
      v40 = sub_1000DAFF4();
      sub_100007EBC(v40, qword_1001227B0);

      v41 = sub_1000DAFD4();
      v42 = sub_1000DC4B4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102[0] = v44;
        *v43 = 136315138;

        v45 = v22;
        v46 = v21;
        v47 = sub_10001A58C(v92, v96, v102);

        *(v43 + 4) = v47;
        v21 = v46;
        v22 = v45;
        v5 = v97;
        _os_log_impl(&_mh_execute_header, v41, v42, "undoable (%s)", v43, 0xCu);
        sub_100007FC0(v44);
      }

      if (![v20 groupingLevel])
      {
        [v20 beginUndoGrouping];
      }

      goto LABEL_16;
    }

LABEL_31:
    swift_once();
    goto LABEL_11;
  }

LABEL_16:
  v48 = sub_100050508();
  v49 = *(v98 + 48);
  if (!v49(v50, 1, v5))
  {
    sub_1000DA8F4();
  }

  (v48)(v102, 0);
  v51 = *(v101 + v24);
  v52 = v99;
  v53 = v95;
  if (v51)
  {
    v54 = v93;
    sub_100007F58(v99, v93, &qword_100122D70);
    if (v49(v54, 1, v5) == 1)
    {

      sub_1000080B0(v52, &qword_100122D70);
      (*(v22 + 8))(v100, v21);
      v55 = v54;
      v56 = &qword_100122D70;
    }

    else
    {
      v82 = v22;
      v58 = v54;
      v59 = v98;
      v60 = v91;
      (*(v98 + 32))(v91, v58, v5);
      sub_100007F58(v87 + v101, v53, &qword_100122D70);
      if (v49(v53, 1, v5))
      {

        (*(v59 + 8))(v60, v5);
        sub_1000080B0(v52, &qword_100122D70);
        (*(v82 + 8))(v100, v21);
        sub_1000080B0(v53, &qword_100122D70);
        v61 = v89;
        (*(v90 + 56))(v89, 1, 1, v88);
      }

      else
      {
        v62 = v53;
        v63 = v85;
        (*(v59 + 16))(v85, v62, v5);
        v93 = v51;
        sub_1000080B0(v62, &qword_100122D70);
        v61 = v89;
        sub_1000DA8C4();
        v66 = *(v59 + 8);
        v65 = v59 + 8;
        v64 = v66;
        (v66)(v63, v5);
        v67 = v90;
        v68 = v88;
        if ((*(v90 + 48))(v61, 1, v88) != 1)
        {
          v87 = *(v67 + 32);
          v87(v86, v61, v68);
          v69 = sub_1000DBF04();
          v95 = v64;
          v70 = v69;
          [v93 setActionName:v69];

          v71 = v84;
          (*(v67 + 16))(v84, v86, v68);
          v72 = (*(v67 + 80) + 16) & ~*(v67 + 80);
          v73 = (v83 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
          v89 = v21;
          v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
          v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
          v98 = v65;
          v76 = swift_allocObject();
          v87((v76 + v72), v71, v68);
          *(v76 + v73) = v94;
          v77 = (v76 + v74);
          v78 = v96;
          *v77 = v92;
          v77[1] = v78;
          v79 = (v76 + v75);
          v80 = (v76 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v79 = 0;
          v79[1] = 0;
          *v80 = 0;
          v80[1] = 0;
          type metadata accessor for EntryViewModel();

          v81 = v93;
          sub_1000DC444();

          (*(v67 + 8))(v86, v68);
          v95(v91, v97);
          sub_1000080B0(v99, &qword_100122D70);
          result = (*(v82 + 8))(v100, v89);
          goto LABEL_28;
        }

        (v64)(v60, v5);
        sub_1000080B0(v52, &qword_100122D70);
        (*(v82 + 8))(v100, v21);
      }

      v56 = &qword_100122D68;
      v55 = v61;
    }

    result = sub_1000080B0(v55, v56);
  }

  else
  {

    sub_1000080B0(v52, &qword_100122D70);
    result = (*(v22 + 8))(v100, v21);
  }

LABEL_28:
  *(v101 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_textChanged) = 1;
  return result;
}

void sub_100054D0C(id a1)
{
  v2 = v1;
  v4 = sub_100007BC0(&qword_100122D68);
  __chkstk_darwin(v4 - 8);
  v86 = v79 - v5;
  v87 = sub_1000DA8A4();
  v88 = *(v87 - 8);
  v6 = __chkstk_darwin(v87);
  v84 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v85 = v79 - v8;
  v9 = sub_1000DA934();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v93 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = v79 - v13;
  v14 = sub_100007BC0(&qword_100122D70);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v96 = (v79 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = v79 - v20;
  __chkstk_darwin(v19);
  v99 = v79 - v22;
  v23 = sub_100007BC0(&qword_100122D80);
  v101 = *(v23 - 8);
  v102 = v23;
  v24 = __chkstk_darwin(v23);
  v89 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v100 = v79 - v26;
  v27 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager;
  v28 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_undoManager);
  v98 = v10;
  if (v28)
  {
    v29 = OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_lastUndoableActivity;
    v30 = *&v28[OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_lastUndoableActivity];
    v31 = *(v30 + 24);
    v10 = v28;
    if (v31 != 1)
    {
      sub_10009BA3C();
      v30 = *&v28[v29];
      v32 = *(v30 + 24);
      *(v30 + 24) = 1;
      if (v32 != 1)
      {
        *(v30 + 16) = 0;
      }
    }

    v33 = *(v30 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      __break(1u);
      goto LABEL_34;
    }

    *(v30 + 16) = v35;

    v10 = v98;
  }

  v94 = sub_1000396B8(&off_10010D560);
  if (qword_10011FBD8 != -1)
  {
    swift_once();
  }

  v28 = unk_1001273C0;
  v90 = qword_1001273B8;
  (*(v101 + 16))(v100, a1, v102);
  v36 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v97 = v36;
  sub_100007F58(v2 + v36, v99, &qword_100122D70);
  v37 = *(v2 + v27);
  v91 = v28;
  if (v37)
  {
    v38 = qword_10011FA28;
    a1 = v37;
    if (v38 == -1)
    {
LABEL_11:
      v39 = sub_1000DAFF4();
      sub_100007EBC(v39, qword_1001227B0);

      v40 = sub_1000DAFD4();
      v41 = sub_1000DC4B4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v9;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103[0] = v44;
        *v43 = 136315138;

        v45 = sub_10001A58C(v90, v28, v103);

        *(v43 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v40, v41, "undoable (%s)", v43, 0xCu);
        sub_100007FC0(v44);

        v9 = v42;
        v10 = v98;
      }

      if (![a1 groupingLevel])
      {
        [a1 beginUndoGrouping];
      }

      goto LABEL_16;
    }

LABEL_34:
    swift_once();
    goto LABEL_11;
  }

LABEL_16:
  v46 = sub_100050508();
  v47 = *(v10 + 6);
  if (!v47(v48, 1, v9))
  {
    sub_1000DA904();
  }

  (v46)(v103, 0);
  v49 = *(v2 + v27);
  v50 = v99;
  v51 = v96;
  if (!v49)
  {

    sub_1000080B0(v50, &qword_100122D70);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_22;
  }

  sub_100007F58(v99, v21, &qword_100122D70);
  if (v47(v21, 1, v9) == 1)
  {

    sub_1000080B0(v50, &qword_100122D70);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_1000080B0(v21, &qword_100122D70);
LABEL_22:
    v53 = v95;
    v54 = v97;
    goto LABEL_28;
  }

  v55 = v92;
  (*(v10 + 4))(v92, v21, v9);
  v54 = v97;
  sub_100007F58(v2 + v97, v51, &qword_100122D70);
  if (v47(v51, 1, v9))
  {

    (*(v10 + 1))(v55, v9);
    sub_1000080B0(v50, &qword_100122D70);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_1000080B0(v51, &qword_100122D70);
    v56 = v86;
    (*(v88 + 56))(v86, 1, 1, v87);
LABEL_27:
    v53 = v95;
    sub_1000080B0(v56, &qword_100122D68);
    goto LABEL_28;
  }

  v57 = v93;
  (*(v10 + 2))(v93, v51, v9);
  v82 = v49;
  sub_1000080B0(v51, &qword_100122D70);
  v56 = v86;
  sub_1000DA8C4();
  v96 = *(v10 + 1);
  v96(v57, v9);
  v58 = v88;
  v59 = v87;
  if ((*(v88 + 48))(v56, 1, v87) == 1)
  {

    v96(v92, v9);
    sub_1000080B0(v99, &qword_100122D70);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_27;
  }

  v66 = *(v58 + 32);
  v79[1] = v58 + 32;
  v80 = v66;
  v66(v85, v56, v59);
  v67 = sub_1000DBF04();
  v81 = v10 + 8;
  v68 = v67;
  [v82 setActionName:v67];

  (*(v58 + 16))(v84, v85, v59);
  v69 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v70 = (v83 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = v9;
  v73 = swift_allocObject();
  v80(v73 + v69, v84, v59);
  *(v73 + v70) = v94;
  v74 = (v73 + v71);
  v75 = v91;
  *v74 = v90;
  v74[1] = v75;
  v76 = (v73 + v72);
  v77 = (v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = v86;
  v54 = v97;
  v10 = v98;
  *v76 = 0;
  v76[1] = 0;
  *v77 = 0;
  v77[1] = 0;
  type metadata accessor for EntryViewModel();

  v78 = v82;
  sub_1000DC444();

  (*(v88 + 8))(v85, v59);
  v96(v92, v9);
  sub_1000080B0(v99, &qword_100122D70);
  v52 = *(v101 + 8);
  v52(v100, v102);
  v53 = v95;
LABEL_28:
  sub_100007F58(v2 + v54, v53, &qword_100122D70);
  if (v47(v53, 1, v9))
  {
    sub_1000080B0(v53, &qword_100122D70);
    v60 = 0;
  }

  else
  {
    v61 = v93;
    (*(v10 + 2))(v93, v53, v9);
    sub_1000080B0(v53, &qword_100122D70);
    v62 = v89;
    sub_1000DA924();
    (*(v10 + 1))(v61, v9);
    v63 = [objc_allocWithZone(UITraitCollection) init];
    v64 = sub_100007A8C();
    v103[3] = &_s22TitleAttributeProviderVN;
    v103[4] = v64;
    sub_100055EEC(v103);
    sub_100055E78(&qword_100122DB0, &type metadata accessor for MergeableTitleAttributeScope);
    v65 = v102;
    v60 = sub_1000DBB04();

    sub_100007FC0(v103);
    v52(v62, v65);
  }

  sub_100051208(v60);

  *(v2 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_textChanged) = 1;
}

uint64_t sub_100055A44(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5)
{
  v37 = a5;
  v34 = a1;
  v35 = a4;
  v8 = sub_1000DA934();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007BC0(&qword_100122D70);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v36 = a2;
  v38 = a3;
  v15 = sub_100007BC0(a2);
  v33 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v32 - v20;
  __chkstk_darwin(v19);
  v23 = &v32 - v22;
  v24 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_100007F58(v5 + v24, v14, &qword_100122D70);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1000080B0(v14, &qword_100122D70);
    v25 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    v26 = sub_1000080B0(v14, &qword_100122D70);
    v27 = v35;
    v35(v26);
    (*(v9 + 8))(v11, v8);
    v28 = v33;
    v29 = (*(v33 + 32))(v23, v21, v15);
    v27(v29);
    sub_100055DE4(v37, v36);
    v25 = sub_1000DBB44();
    v30 = *(v28 + 8);
    v30(v18, v15);
    v30(v23, v15);
  }

  return v25 & 1;
}

uint64_t sub_100055DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100055DE4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100007C08(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100055E38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100055EEC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100055F50()
{
  v1 = sub_1000DA8A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  if (*(v0 + v6))
  {
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100056040(uint64_t a1)
{
  v3 = *(sub_1000DA8A4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_10005228C(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100056134(uint64_t a1)
{
  v2[3] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = sub_1000DC1D4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[4] = v3;
  v2[5] = v5;

  return _swift_task_switch(sub_1000561C4, v3, v5);
}

uint64_t sub_1000561C4()
{
  v1 = v0[3];
  v2 = *(v1 + qword_100122DD0);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_100007BC0(&qword_100122EF8);
  *v4 = v0;
  v4[1] = sub_1000562CC;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_1000E2C18, v3, v5);
}

uint64_t sub_1000562CC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_100056404;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1000563E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100056404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10005648C, 0, 0);
}

uint64_t sub_10005648C()
{
  v1 = *(*(v0 + 32) + qword_100122DC0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100056538;

  return CKDatabase.records(for:desiredKeys:)(v1, 0);
}

uint64_t sub_100056538(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100056684, 0, 0);
  }
}

void sub_1000566D8()
{

  v1 = *(v0 + qword_100122DD0);
}

id sub_100056728()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchRecordDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100056760(uint64_t a1)
{

  v2 = *(a1 + qword_100122DD0);
}

uint64_t type metadata accessor for BatchRecordDownloadOperation()
{
  result = qword_100122E00;
  if (!qword_100122E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056860(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_1000DC1D4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_1000568F4, v4, v6);
}

uint64_t sub_1000568F4()
{
  v1 = v0[4];
  v2 = *(v1 + qword_100122DD0);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_100007BC0(&qword_100122EF8);
  *v4 = v0;
  v4[1] = sub_1000569FC;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_1000E2C08, v3, v5);
}

uint64_t sub_1000569FC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100056B38;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100056B18;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100056B38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056BA4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001CD68;

  return sub_100056468(a1, a2, v6);
}

uint64_t sub_100056C54(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001CAAC;

  return sub_100056468(a1, a2, v6);
}

uint64_t sub_100056D04@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v139 = a2;
  v138 = a1;
  v111 = a3;
  v4 = sub_100007BC0(&qword_1001223A8);
  v5 = __chkstk_darwin(v4 - 8);
  v115 = &v101[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v112 = &v101[-v7];
  v8 = sub_1000DAF04();
  v114 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v106 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v101[-v12];
  __chkstk_darwin(v11);
  v119 = &v101[-v14];
  v121 = sub_1000DA844();
  v113 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v16 = __chkstk_darwin(v135);
  v127 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v118 = &v101[-v19];
  v20 = __chkstk_darwin(v18);
  v133 = &v101[-v21];
  __chkstk_darwin(v20);
  v126 = &v101[-v22];
  v23 = sub_100007BC0(&qword_100121580);
  v24 = __chkstk_darwin(v23 - 8);
  v125 = &v101[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v27 = &v101[-v26];
  v141 = sub_1000D9DA4();
  v117 = *(v141 - 8);
  v28 = __chkstk_darwin(v141);
  v116 = &v101[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v31 = &v101[-v30];
  v32 = type metadata accessor for AssetAttachment.AssetType(0);
  v33 = __chkstk_darwin(v32);
  v124 = &v101[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v137 = &v101[-v36];
  v37 = __chkstk_darwin(v35);
  v134 = &v101[-v38];
  __chkstk_darwin(v37);
  v40 = &v101[-v39];
  v41 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachments);
  v131 = v13;
  v108 = v3;
  if (v41 >> 62)
  {
    goto LABEL_93;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v132 = v8;
  v140 = v32;
  if (v42)
  {
    v8 = 0;
    v143 = v41 & 0xFFFFFFFFFFFFFF8;
    v144 = v41 & 0xC000000000000001;
    v129 = (v117 + 56);
    v107 = (v113 + 8);
    v122 = (v117 + 32);
    v128 = (v117 + 48);
    v110 = (v114 + 48);
    v104 = (v114 + 32);
    v103 = (v114 + 8);
    v109 = (v117 + 8);
    v123 = v31;
    v136 = v41;
    v142 = v42;
    v130 = v27;
    do
    {
      if (v144)
      {
        v44 = sub_1000DCA24();
        v45 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_41:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *(v143 + 16))
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          v42 = sub_1000DCB14();
          goto LABEL_3;
        }

        v44 = *(v41 + 8 * v8 + 32);

        v45 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }
      }

      v46 = OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType;
      sub_100046830(v44 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, v40, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v43 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {
LABEL_5:

          v43 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        sub_10004676C(v40, v43);
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v54 = v40;
        if (v139)
        {

          v100 = v40;
          goto LABEL_89;
        }

        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_5;
      }

      v48 = v44 + v46;
      v49 = v134;
      sub_100046830(v48, v134, type metadata accessor for AssetAttachment.AssetType);
      v50 = swift_getEnumCaseMultiPayload();
      v51 = v50;
      if (v50 <= 1)
      {
        v53 = v49;
        if (v51)
        {
          sub_10004676C(v49, type metadata accessor for AssetAttachment.AssetType);
          v59 = 1;
          v27 = v130;
          goto LABEL_27;
        }
      }

      else
      {
        v52 = v50 - 2;
        v53 = v49;
        if (v52 >= 2)
        {

          v53 = &v49[*(sub_100007BC0(&qword_1001223B0) + 48)];
        }
      }

      v56 = v126;
      sub_1000467CC(v53, v126);
      v57 = v127;
      sub_100046830(v56, v127, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v60 = v120;
        sub_1000DA834();
        v61 = v130;
        sub_1000DA804();

        v62 = v60;
        v32 = v140;
        (*v107)(v62, v121);
        v63 = v56;
        v27 = v61;
        v31 = v123;
        sub_10004676C(v63, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v59 = 0;
LABEL_27:
        v58 = v141;
        goto LABEL_28;
      }

      sub_10004676C(v56, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v27 = v130;
      v58 = v141;
      (*v122)(v130, v57, v141);
      v59 = 0;
LABEL_28:
      (*v129)(v27, v59, 1, v58);
      v54 = &v40[*(sub_100007BC0(&qword_1001223B0) + 48)];
      if ((*v128)(v27, 1, v58) == 1)
      {

        sub_1000080B0(v27, &qword_100121580);
      }

      else
      {
        v64 = v27;
        v27 = v58;
        (*v122)(v31, v64, v58);
        sub_1000D9D24();
        v65 = v131;
        sub_1000DAE74();
        v66 = v115;
        v67 = v132;
        sub_1000DAE44();
        if ((*v110)(v66, 1, v67) == 1)
        {

          v31 = v123;
          (*v109)(v123, v58);
          sub_1000080B0(v66, &qword_1001223A8);
          v32 = v140;
        }

        else
        {
          v27 = v106;
          (*v104)(v106, v66, v67);
          sub_1000DAEC4();
          v68 = sub_1000DAEE4();
          v105 = *v103;
          v105(v65, v67);
          if (v68)
          {
            v105(v27, v67);
            v31 = v123;
            (*v109)(v123, v141);
LABEL_36:
            v32 = v140;
            if (v139)
            {

              v100 = v54;
              goto LABEL_89;
            }

LABEL_20:
            v55 = *(v44 + 16);
            sub_10004676C(v54, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (v55 == v138)
            {
LABEL_85:

              goto LABEL_90;
            }

            v41 = v136;
            goto LABEL_7;
          }

          sub_1000DAEB4();
          v102 = sub_1000DAEE4();
          v69 = v65;
          v70 = v105;
          v105(v69, v67);
          v70(v27, v67);
          v31 = v123;
          (*v109)(v123, v141);
          if (v102)
          {
            goto LABEL_36;
          }

          v32 = v140;
        }
      }

      sub_10004676C(v54, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v41 = v136;
LABEL_7:
      ++v8;
    }

    while (v45 != v142);
  }

  v71 = *(v108 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_sourceAttachments);
  if (v71 >> 62)
  {
    v8 = sub_1000DCB14();
  }

  else
  {
    v8 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v118;
  v27 = v137;
  v31 = v119;

  if (!v8)
  {
LABEL_84:

    return (*(v117 + 56))(v111, 1, 1, v141);
  }

  v41 = 0;
  v143 = v71 & 0xFFFFFFFFFFFFFF8;
  v144 = v71 & 0xC000000000000001;
  v136 = (v117 + 56);
  v126 = (v113 + 8);
  v129 = (v117 + 32);
  v134 = (v117 + 48);
  v128 = (v114 + 48);
  v122 = (v114 + 32);
  v115 = (v114 + 8);
  v127 = (v117 + 8);
  v130 = v71;
  v142 = v8;
  while (1)
  {
    if (v144)
    {
      v73 = sub_1000DCA24();
      v74 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v41 >= *(v143 + 16))
      {
        goto LABEL_92;
      }

      v73 = *(v71 + 8 * v41 + 32);

      v74 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v75 = OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType;
    sub_100046830(v73 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, v27, type metadata accessor for AssetAttachment.AssetType);
    v76 = swift_getEnumCaseMultiPayload();
    if (v76 <= 1)
    {
      if (v76)
      {

        v72 = type metadata accessor for AssetAttachment.AssetType;
      }

      else
      {
LABEL_46:

        v72 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      }

      sub_10004676C(v27, v72);
      goto LABEL_48;
    }

    if (v76 != 2)
    {
      if (v76 == 3)
      {
        goto LABEL_46;
      }

      v77 = v73 + v75;
      v78 = v124;
      sub_100046830(v77, v124, type metadata accessor for AssetAttachment.AssetType);
      v79 = swift_getEnumCaseMultiPayload();
      v80 = v79;
      if (v79 <= 1)
      {
        v82 = v78;
        v83 = v133;
        if (v80)
        {
          sub_10004676C(v78, type metadata accessor for AssetAttachment.AssetType);
          v89 = 1;
          v87 = v125;
          goto LABEL_68;
        }
      }

      else
      {
        v81 = v79 - 2;
        v82 = v78;
        v83 = v133;
        if (v81 >= 2)
        {

          v84 = sub_100007BC0(&qword_1001223B0);
          v83 = v133;
          v82 = &v78[*(v84 + 48)];
        }
      }

      sub_1000467CC(v82, v83);
      sub_100046830(v83, v40, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10004676C(v83, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v87 = v125;
        v88 = v141;
        (*v129)(v125, v40, v141);
        v89 = 0;
LABEL_69:
        (*v136)(v87, v89, 1, v88);
        v92 = sub_100007BC0(&qword_1001223B0);
        v85 = &v137[*(v92 + 48)];
        if ((*v134)(v87, 1, v88) == 1)
        {

          sub_1000080B0(v87, &qword_100121580);
          v27 = v137;
          goto LABEL_74;
        }

        v93 = v116;
        (*v129)(v116, v87, v88);
        sub_1000D9D24();
        v94 = v131;
        sub_1000DAE74();
        v95 = v112;
        sub_1000DAE44();
        v96 = v132;
        if ((*v128)(v95, 1, v132) == 1)
        {

          (*v127)(v93, v88);
          sub_1000080B0(v95, &qword_1001223A8);
          v40 = v118;
          v27 = v137;
          v31 = v119;
          goto LABEL_73;
        }

        v97 = v119;
        (*v122)(v119, v95, v96);
        sub_1000DAEC4();
        LODWORD(v123) = sub_1000DAEE4();
        v98 = *v115;
        (*v115)(v94, v96);
        if (v123)
        {
          v98(v97, v96);
          (*v127)(v116, v141);
          v31 = v97;
        }

        else
        {
          sub_1000DAEB4();
          LODWORD(v123) = sub_1000DAEE4();
          v98(v94, v96);
          v98(v97, v96);
          (*v127)(v116, v141);
          v31 = v97;
          if ((v123 & 1) == 0)
          {

            v40 = v118;
            v27 = v137;
LABEL_73:
            v71 = v130;
LABEL_74:
            sub_10004676C(v85, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v32 = v140;
            goto LABEL_48;
          }
        }

        v40 = v118;
        v27 = v137;
        v71 = v130;
        if (v139)
        {

          v100 = v85;
          goto LABEL_89;
        }

        goto LABEL_61;
      }

      v90 = v120;
      sub_1000DA834();
      v91 = v125;
      sub_1000DA804();
      v71 = v130;

      (*v126)(v90, v121);
      v87 = v91;
      sub_10004676C(v83, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v89 = 0;
LABEL_68:
      v88 = v141;
      goto LABEL_69;
    }

    v85 = v27;
    if (v139)
    {
      break;
    }

LABEL_61:
    v86 = *(v73 + 16);
    sub_10004676C(v85, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (v86 == v138)
    {
      goto LABEL_85;
    }

    v32 = v140;
LABEL_48:
    v8 = v142;
    ++v41;
    if (v74 == v142)
    {
      goto LABEL_84;
    }
  }

  v100 = v27;
LABEL_89:
  sub_10004676C(v100, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_90:
  sub_1000B3098(v111);
}

char *sub_10005807C(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(type metadata accessor for VideoThumbnailCacheOperation());
  v14 = v6;

  return sub_10008A204(v14, a1, a2, a3 & 1, a4, a5, a6);
}

id sub_100058120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoAsset()
{
  result = qword_100122F28;
  if (!qword_100122F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100058228()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_1001203B8);
  v7 = __chkstk_darwin(v6 - 8);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v54 - v9;
  v10 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_1000DAF04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007BC0(&qword_100120418);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = sub_1000DAAA4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v0;
  sub_100015DAC(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000080B0(v19, &qword_100120418);
    return 0;
  }

  (*(v21 + 32))(v23, v19, v20);
  v24 = sub_1000DAA94();
  if (!v25)
  {
    (*(v21 + 8))(v23, v20);
    return 0;
  }

  v26 = v25;
  v55 = v24;
  v56 = v3;
  sub_1000DAEC4();
  v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v29 = [v27 initWithContentType:isa];

  (*(v14 + 8))(v16, v13);
  sub_100056D04(0, 1, v12);
  v30 = sub_1000D9DA4();
  v31 = *(v30 - 8);
  v33 = 0;
  if ((*(v31 + 48))(v12, 1, v30) != 1)
  {
    sub_1000D9D54(v32);
    v33 = v34;
    (*(v31 + 8))(v12, v30);
  }

  [v29 setContentURL:v33];

  sub_100046898(v55, v26, 0, 0);

  v35 = v59;
  sub_1000DAA84();
  v36 = v35;
  v37 = sub_1000DA084();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    v40 = *(v60 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    v41 = v58;
    if (v40)
    {
      v42 = [v40 entry];
      if (v42)
      {
        v43 = v42;
        sub_1000DA3A4();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v36 = v59;
    }

    else
    {
      v44 = 1;
    }

    (*(v38 + 56))(v41, v44, 1, v37);
    if (v39(v36, 1, v37) != 1)
    {
      sub_1000080B0(v36, &qword_1001203B8);
    }
  }

  else
  {
    v41 = v58;
    (*(v38 + 32))(v58, v36, v37);
    (*(v38 + 56))(v41, 0, 1, v37);
  }

  sub_1000DBE74();
  sub_1000DA114();
  v45 = sub_1000DBF64();
  v47 = v46;
  sub_100007BC0(&qword_1001203C0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1000DFEF0;
  v49 = sub_1000478A0(v45, v47, v41);
  v51 = v50;

  *(v48 + 32) = v49;
  *(v48 + 40) = v51;
  v52 = sub_1000DC124().super.isa;

  [v29 setAlternateNames:v52];

  sub_1000080B0(v41, &qword_1001203B8);
  (*(v21 + 8))(v23, v20);
  return v29;
}

uint64_t sub_100058978(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100007BC0(&qword_100122F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007BC0(&qword_100122F78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100007BC0(&qword_100121EE8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100058B14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100007BC0(&qword_100122F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100007BC0(&qword_100122F78);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_100007BC0(&qword_100121EE8);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for WidgetHeaderView()
{
  result = qword_100122FD8;
  if (!qword_100122FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058CD8()
{
  sub_100058DD0(319, &qword_100122FE8, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_100058DD0(319, &qword_100122FF0, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_100058DD0(319, &qword_100121F58, &type metadata accessor for RedactionReasons);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100058DD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DB124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100058E30(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100058E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100058E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_100058EF0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100058F24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v2)
    {
      return static Text.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16) & 1);
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_100058F9C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = sub_100007BC0(&qword_100123028);
  v33 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v32 - v1;
  v37 = sub_100007BC0(&qword_100123030);
  __chkstk_darwin(v37);
  v35 = &v32 - v2;
  v3 = sub_100007BC0(&qword_100123038);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v36 = sub_100007BC0(&qword_100123040);
  __chkstk_darwin(v36);
  v7 = &v32 - v6;
  v34 = sub_100007BC0(&qword_100123048);
  __chkstk_darwin(v34);
  v9 = &v32 - v8;
  v10 = sub_1000DBC14();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  sub_100080C0C(&v32 - v15);
  v17 = (*(v11 + 88))(v16, v10);
  if (v17 == enum case for WidgetFamily.systemSmall(_:) || v17 == enum case for WidgetFamily.systemMedium(_:))
  {
    v24 = v32;
    sub_100059C24(v32);
    v25 = v33;
    v26 = v38;
    (*(v33 + 16))(v5, v24, v38);
    swift_storeEnumTagMultiPayload();
    sub_10005B290();
    v27 = sub_100007C08(&qword_1001230A8);
    v28 = sub_100007C08(&qword_1001230B0);
    v29 = sub_1000391D4(&qword_1001230B8, &qword_1001230B0);
    v30 = sub_10005B4C0();
    v40 = v28;
    v41 = &type metadata for WidgetLabelStyle;
    v42 = v29;
    v43 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v27;
    v41 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1000DB464();
    sub_100007F58(v7, v35, &qword_100123040);
    swift_storeEnumTagMultiPayload();
    sub_10005B514();
    sub_1000DB464();
    sub_1000080B0(v7, &qword_100123040);
    return (*(v25 + 8))(v24, v26);
  }

  else if (v17 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    sub_100059704(v9);
    sub_100007F58(v9, v5, &qword_100123048);
    swift_storeEnumTagMultiPayload();
    sub_10005B290();
    v18 = sub_100007C08(&qword_1001230A8);
    v19 = sub_100007C08(&qword_1001230B0);
    v20 = sub_1000391D4(&qword_1001230B8, &qword_1001230B0);
    v21 = sub_10005B4C0();
    v40 = v19;
    v41 = &type metadata for WidgetLabelStyle;
    v42 = v20;
    v43 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    v40 = v18;
    v41 = v22;
    swift_getOpaqueTypeConformance2();
    sub_1000DB464();
    sub_100007F58(v7, v35, &qword_100123040);
    swift_storeEnumTagMultiPayload();
    sub_10005B514();
    sub_1000DB464();
    sub_1000080B0(v7, &qword_100123040);
    return sub_1000080B0(v9, &qword_100123048);
  }

  else
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1000DCA04(39);

    v40 = 0xD000000000000025;
    v41 = 0x80000001000E99F0;
    sub_100080C0C(v14);
    sub_10005BAC0(&qword_100123050, &type metadata accessor for WidgetFamily);
    v44._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v44);

    (*(v11 + 8))(v14, v10);
    result = sub_1000DCB04();
    __break(1u);
  }

  return result;
}

uint64_t sub_100059704@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_1000DB654();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100007BC0(&qword_100123070);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v26 - v6;
  v8 = sub_100007BC0(&qword_1001230C8);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v27 = &v26 - v9;
  v31 = sub_100007BC0(&qword_100123060);
  __chkstk_darwin(v31);
  v11 = &v26 - v10;
  v12 = sub_100007BC0(&qword_1001230D0);
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v36 = v1;
  sub_100007BC0(&qword_1001230D8);
  sub_100007BC0(&qword_1001230E0);
  sub_10005B670();
  v37 = &type metadata for Image;
  v38 = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  sub_1000DB904();
  if (*(v1 + *(type metadata accessor for WidgetHeaderView() + 28) + 24))
  {
    v15 = 0x4010000000000000;
    v16 = sub_1000DB3C4();
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = 2;
  }

  v37 = v16;
  v38 = v15;
  v39 = v17;
  sub_1000391D4(&qword_100123078, &qword_100123070);
  sub_10005B4C0();
  v19 = v27;
  v18 = v28;
  sub_1000DB794();
  (*(v5 + 8))(v7, v18);
  sub_1000DB5E4();
  v20 = v34;
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v34);
  v21 = sub_1000DB674();

  (*(v2 + 8))(v4, v20);
  KeyPath = swift_getKeyPath();
  (*(v32 + 32))(v11, v19, v33);
  v23 = &v11[*(v31 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_1000DB614();
  sub_10005B384();
  sub_1000DB784();
  sub_1000080B0(v11, &qword_100123060);
  LODWORD(KeyPath) = sub_1000DB4E4();
  v24 = v35;
  (*(v29 + 32))(v35, v14, v30);
  result = sub_100007BC0(&qword_100123048);
  *(v24 + *(result + 36)) = KeyPath;
  return result;
}

uint64_t sub_100059C24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_1000DB1B4();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001230B0);
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin(v5);
  v54 = &v48 - v6;
  v7 = sub_100007BC0(&qword_1001230A8);
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v48 - v8;
  v9 = sub_1000DB1F4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = (v1 + *(type metadata accessor for WidgetHeaderView() + 28));
  v17 = v16[3];
  if (v17)
  {
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[2];
    v64 = v20 & 1;
    sub_10005B6F4(v18, v19, v20 & 1);

    sub_100080BE4(v15);
    sub_1000DB1D4();
    sub_10005BAC0(&qword_100121C40, &type metadata accessor for RedactionReasons);
    v21 = sub_1000DC874();
    v22 = *(v10 + 8);
    v22(v13, v9);
    v22(v15, v9);
    if (v21)
    {
      v52 = v19;
      v53 = v18;
      v65 = 0xD00000000000007CLL;
      v66 = 0x80000001000E8920;
      sub_100007C50();
      v23 = sub_1000DB714();
      v19 = v24;
      v26 = v25 & 1;
      goto LABEL_7;
    }

    v26 = v64;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v26 = 0;
  }

  sub_10005B704(v18, v19, v26, v17);
  v52 = v19;
  v53 = v18;
  v23 = v18;
  v64 = v26;
LABEL_7:
  v27 = __chkstk_darwin(v23);
  v50 = v19;
  v51 = v27;
  *(&v48 - 6) = v27;
  *(&v48 - 5) = v19;
  v48 = v26;
  v49 = v28;
  *(&v48 - 4) = v26;
  *(&v48 - 3) = v28;
  *(&v48 - 2) = v2;
  __chkstk_darwin(v27);
  *(&v48 - 2) = v2;
  sub_100007BC0(&qword_1001230F0);
  sub_100007BC0(&qword_1001230F8);
  v29 = sub_100007C08(&qword_100123100);
  v30 = sub_10005B760();
  v65 = v29;
  v66 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = sub_100007C08(&qword_100123140);
  v32 = sub_100007C08(&qword_100123148);
  v33 = sub_10005B9C4();
  v65 = v32;
  v66 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v31;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v54;
  sub_1000DB904();
  if (v17)
  {
    v36 = 1;
    v37 = 0x7FF0000000000000;
    v38 = sub_1000DB3D4();
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v36 = 2;
  }

  v65 = v38;
  v66 = v37;
  LOBYTE(v67) = v36;
  v39 = sub_1000391D4(&qword_1001230B8, &qword_1001230B0);
  v40 = sub_10005B4C0();
  v42 = v56;
  v41 = v57;
  sub_1000DB794();
  (*(v55 + 8))(v35, v42);
  v44 = v61;
  v43 = v62;
  v45 = v63;
  (*(v62 + 104))(v61, enum case for DynamicTypeSize.large(_:), v63);
  v65 = v42;
  v66 = &type metadata for WidgetLabelStyle;
  v67 = v39;
  v68 = v40;
  swift_getOpaqueTypeConformance2();
  v46 = v59;
  sub_1000DB7D4();
  sub_10005BA7C(v51, v50, v48, v49);
  sub_10005BA7C(v53, v52, v64, v17);
  (*(v43 + 8))(v44, v45);
  return (*(v58 + 8))(v41, v46);
}

uint64_t sub_10005A2CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WidgetHeaderView() + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v6 & 1;
  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (!v7)
  {
    v8 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v8;
  a2[3] = v7;
  return sub_10005B704(v4, v5, v6, v7);
}

uint64_t sub_10005A328()
{
  sub_1000DB8B4();
  sub_1000DB7A4();
}

uint64_t sub_10005A3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v48 = a4;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v50 = a6;
  v41 = sub_100007BC0(&qword_1001231C8);
  __chkstk_darwin(v41);
  v40 = &v39 - v6;
  v7 = sub_1000DBBF4();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = sub_1000DB654();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007BC0(&qword_100123118);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  v49 = sub_100007BC0(&qword_100123100);
  __chkstk_darwin(v49);
  v22 = &v39 - v21;
  sub_1000DB694();
  (*(v14 + 104))(v16, enum case for Font.Leading.tight(_:), v13);
  v23 = sub_1000DB674();

  (*(v14 + 8))(v16, v13);
  KeyPath = swift_getKeyPath();
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v54 = v48;
  v55 = KeyPath;
  v56 = v23;
  sub_100007BC0(&qword_100123120);
  sub_10005B90C();
  sub_1000DB804();

  v25 = swift_getKeyPath();
  v26 = *(v18 + 44);
  v48 = v20;
  v27 = &v20[v26];
  *v27 = v25;
  *(v27 + 1) = 1;
  v27[16] = 0;
  type metadata accessor for WidgetHeaderView();
  sub_100080E34(v12);
  sub_1000DBBE4();
  LOBYTE(v13) = sub_1000DBBC4();
  v28 = v46;
  v29 = *(v45 + 8);
  v29(v10, v46);
  v29(v12, v28);
  if (v13)
  {
    LODWORD(v51) = sub_1000DB4C4();
  }

  else
  {
    v30 = sub_1000DB4E4();
    v31 = v41;
    v32 = *(v41 + 36);
    v33 = enum case for BlendMode.plusDarker(_:);
    v34 = sub_1000DB9B4();
    v35 = *(*(v34 - 8) + 104);
    v36 = v40;
    v35(&v40[v32], v33, v34);
    v35(&v36[*(v31 + 40)], enum case for BlendMode.plusLighter(_:), v34);
    *v36 = v30;
    sub_1000391D4(&qword_1001231D0, &qword_1001231C8);
  }

  v37 = sub_1000DB194();
  sub_10005BE10(v48, v22);
  *&v22[*(v49 + 36)] = v37;
  sub_10005B760();
  sub_1000DB724();
  return sub_1000080B0(v22, &qword_100123100);
}

uint64_t sub_10005A894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v28 = sub_1000D9AC4();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D9DA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007BC0(&qword_100123160);
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = sub_100007BC0(&qword_100123148);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = sub_100007BC0(&qword_100123140);
  v31 = *(v18 - 8);
  v32 = v18;
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  sub_1000D9AB4();
  sub_1000D9AA4();
  sub_1000D9A84();
  result = (*(v9 + 48))(v4, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v28);
    v22 = (*(v9 + 32))(v11, v4, v8);
    __chkstk_darwin(v22);
    *(&v27 - 2) = v33;
    sub_100007BC0(&qword_100123168);
    sub_10005BB10();
    sub_1000DB6A4();
    sub_1000DB994();
    sub_1000DB184();
    (*(v29 + 32))(v17, v14, v30);
    v23 = &v17[*(v15 + 36)];
    v24 = v38;
    *v23 = v37;
    *(v23 + 1) = v24;
    *(v23 + 2) = v39;
    v25 = sub_10005B9C4();
    sub_1000DB724();
    sub_1000080B0(v17, &qword_100123148);
    v35 = v15;
    v36 = v25;
    swift_getOpaqueTypeConformance2();
    v26 = v32;
    sub_1000DB7A4();
    return (*(v31 + 8))(v20, v26);
  }

  return result;
}

uint64_t sub_10005AD4C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1000DB8A4();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100007BC0(&qword_1001231B8);
  __chkstk_darwin(v35);
  v5 = &v32 - v4;
  v6 = sub_100007BC0(&qword_1001231C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v36 = sub_100007BC0(&qword_100123180);
  __chkstk_darwin(v36);
  v10 = (&v32 - v9);
  v11 = sub_1000DBBF4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  type metadata accessor for WidgetHeaderView();
  sub_100080E34(v17);
  sub_1000DBBE4();
  v18 = sub_1000DBBC4();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  if (v18)
  {
    v20 = sub_1000DB8B4();
    v21 = sub_1000DB604();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = sub_1000DB634();
    sub_1000080B0(v8, &qword_1001231C0);
    KeyPath = swift_getKeyPath();
    v24 = (v10 + *(v36 + 36));
    v25 = *(sub_100007BC0(&qword_1001231A0) + 28);
    v26 = enum case for Image.Scale.large(_:);
    v27 = sub_1000DB8C4();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    *v10 = v20;
    v10[1] = KeyPath;
    v10[2] = v22;
    sub_10005BD98(v10, v5);
    swift_storeEnumTagMultiPayload();
    sub_100007BC0(&qword_1001231B0);
    sub_10005BB9C();
    sub_10005BD0C();
    sub_1000DB464();
    return sub_1000080B0(v10, &qword_100123180);
  }

  else
  {
    sub_1000DB8E4();
    v30 = v33;
    v29 = v34;
    (*(v33 + 104))(v3, enum case for Image.ResizingMode.stretch(_:), v34);
    v31 = sub_1000DB8D4();

    (*(v30 + 8))(v3, v29);
    *v5 = v31;
    *(v5 + 1) = 0;
    *(v5 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_100007BC0(&qword_1001231B0);
    sub_10005BB9C();
    sub_10005BD0C();
    return sub_1000DB464();
  }
}

unint64_t sub_10005B290()
{
  result = qword_100123058;
  if (!qword_100123058)
  {
    sub_100007C08(&qword_100123048);
    sub_100007C08(&qword_100123060);
    sub_10005B384();
    swift_getOpaqueTypeConformance2();
    sub_1000391D4(&qword_100123098, &qword_1001230A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123058);
  }

  return result;
}

unint64_t sub_10005B384()
{
  result = qword_100123068;
  if (!qword_100123068)
  {
    sub_100007C08(&qword_100123060);
    sub_100007C08(&qword_100123070);
    sub_1000391D4(&qword_100123078, &qword_100123070);
    sub_10005B4C0();
    swift_getOpaqueTypeConformance2();
    sub_1000391D4(&qword_100123088, &qword_100123090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123068);
  }

  return result;
}

unint64_t sub_10005B4C0()
{
  result = qword_100123080;
  if (!qword_100123080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123080);
  }

  return result;
}

unint64_t sub_10005B514()
{
  result = qword_1001230C0;
  if (!qword_1001230C0)
  {
    sub_100007C08(&qword_100123040);
    sub_10005B290();
    sub_100007C08(&qword_1001230A8);
    sub_100007C08(&qword_1001230B0);
    sub_1000391D4(&qword_1001230B8, &qword_1001230B0);
    sub_10005B4C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001230C0);
  }

  return result;
}

unint64_t sub_10005B670()
{
  result = qword_1001230E8;
  if (!qword_1001230E8)
  {
    sub_100007C08(&qword_1001230D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001230E8);
  }

  return result;
}

uint64_t sub_10005B6F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005B704(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10005B6F4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10005B760()
{
  result = qword_100123108;
  if (!qword_100123108)
  {
    sub_100007C08(&qword_100123100);
    sub_10005B818();
    sub_1000391D4(&qword_100123130, &qword_100123138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123108);
  }

  return result;
}

unint64_t sub_10005B818()
{
  result = qword_100123110;
  if (!qword_100123110)
  {
    sub_100007C08(&qword_100123118);
    sub_100007C08(&qword_100123120);
    sub_10005B90C();
    swift_getOpaqueTypeConformance2();
    sub_1000391D4(&qword_100122008, &qword_100122010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123110);
  }

  return result;
}

unint64_t sub_10005B90C()
{
  result = qword_100123128;
  if (!qword_100123128)
  {
    sub_100007C08(&qword_100123120);
    sub_10005B670();
    sub_1000391D4(&qword_100123088, &qword_100123090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123128);
  }

  return result;
}

unint64_t sub_10005B9C4()
{
  result = qword_100123150;
  if (!qword_100123150)
  {
    sub_100007C08(&qword_100123148);
    sub_1000391D4(&qword_100123158, &qword_100123160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123150);
  }

  return result;
}

uint64_t sub_10005BA7C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10004369C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10005BAC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005BB10()
{
  result = qword_100123170;
  if (!qword_100123170)
  {
    sub_100007C08(&qword_100123168);
    sub_10005BB9C();
    sub_10005BD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123170);
  }

  return result;
}

unint64_t sub_10005BB9C()
{
  result = qword_100123178;
  if (!qword_100123178)
  {
    sub_100007C08(&qword_100123180);
    sub_10005BC54();
    sub_1000391D4(&qword_100123198, &qword_1001231A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123178);
  }

  return result;
}

unint64_t sub_10005BC54()
{
  result = qword_100123188;
  if (!qword_100123188)
  {
    sub_100007C08(&qword_100123190);
    sub_1000391D4(&qword_100123088, &qword_100123090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123188);
  }

  return result;
}

unint64_t sub_10005BD0C()
{
  result = qword_1001231A8;
  if (!qword_1001231A8)
  {
    sub_100007C08(&qword_1001231B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001231A8);
  }

  return result;
}

uint64_t sub_10005BD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100123180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005BE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100123118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005BE84()
{
  result = qword_1001231D8;
  if (!qword_1001231D8)
  {
    sub_100007C08(&qword_1001231E0);
    sub_10005B514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001231D8);
  }

  return result;
}

uint64_t sub_10005C008(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000DAFF4();
  sub_100007EF4(v3, a2);
  sub_100007EBC(v3, a2);
  return sub_1000DAFE4();
}

uint64_t sub_10005C080()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_1001270F8);
  sub_100007EBC(v0, qword_1001270F8);
  return sub_1000DAFE4();
}

uint64_t sub_10005C100@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  sub_100020DD4();
  v5 = sub_1000DC4F4();
  v6 = sub_1000DBF04();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    sub_1000DC864();
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
    sub_1000080B0(v15, &qword_100121470);
    v8 = sub_1000DA084();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
LABEL_8:
    sub_1000080B0(v4, &qword_1001203B8);
    sub_1000DA084();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  v8 = sub_1000DA084();
  v9 = swift_dynamicCast();
  v10 = *(v8 - 8);
  v11 = *(v10 + 56);
  v11(v4, v9 ^ 1u, 1, v8);
  if ((*(v10 + 48))(v4, 1, v8) == 1)
  {
    goto LABEL_8;
  }

  (*(v10 + 32))(a1, v4, v8);
  return (v11)(a1, 0, 1, v8);
}

uint64_t sub_10005C3D4()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  sub_1000DCA04(19);
  v3 = [v0 entity];
  v4 = [v3 managedObjectClassName];

  if (v4)
  {
    v5 = sub_1000DBF44();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  v13._countAndFlagsBits = v5;
  v13._object = v2;
  sub_1000DBFE4(v13);

  v14._countAndFlagsBits = 23328;
  v14._object = 0xE200000000000000;
  sub_1000DBFE4(v14);
  v7 = [v1 objectID];
  v8 = [v7 pl_shortURI];

  if (v8)
  {
    v9 = sub_1000DBF44();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v15._countAndFlagsBits = v9;
  v15._object = v11;
  sub_1000DBFE4(v15);

  v16._countAndFlagsBits = 0x7865746E6F63205DLL;
  v16._object = 0xEB00000000203A74;
  sub_1000DBFE4(v16);
  [v1 managedObjectContext];
  sub_100007BC0(&qword_100123280);
  v17._countAndFlagsBits = sub_1000DBF84();
  sub_1000DBFE4(v17);

  return 0;
}

id sub_10005C58C(uint64_t a1, unsigned __int8 a2)
{
  sub_100008068(0, &qword_100123288);
  v4 = sub_1000DC5E4();
  v5 = objc_allocWithZone(NSPersistentContainer);
  v6 = sub_1000DBF04();
  v7 = [v5 initWithName:v6 managedObjectModel:v4];

  v8 = sub_10005CAA4(a1, a2);
  sub_100007BC0(&qword_100120148);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E2FB0;
  *(v9 + 32) = v8;
  sub_100008068(0, &qword_100123290);
  v10 = v8;
  isa = sub_1000DC124().super.isa;

  [v7 setPersistentStoreDescriptions:isa];

  if (qword_10011FA40 != -1)
  {
    swift_once();
  }

  v12 = sub_1000DAFF4();
  sub_100007EBC(v12, qword_100127080);
  v13 = v7;
  v14 = sub_1000DAFD4();
  v15 = sub_1000DC4E4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = [v13 name];
    v18 = sub_1000DBF44();
    v20 = v19;

    v21 = sub_10001A58C(v18, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 persistentStoreDescriptions];
    sub_1000DC134();

    v23 = sub_1000DC144();
    v25 = v24;

    v26 = sub_10001A58C(v23, v25, &v28);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "CoreDataStack init for container %s\nSQLite PATH: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return v13;
}

uint64_t sub_10005C8B0(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_1000D9DA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 2)
  {

    return URL.init(fileURLWithPath:)(0x6C756E2F7665642FLL, 0xE90000000000006CLL);
  }

  else
  {
    if (a2)
    {
      v8 = 0x2D73746E656D6F6DLL;
    }

    else
    {
      v8 = 0x73746E656D6F6DLL;
    }

    if (a2)
    {
      v9 = 0xEF676E6967617473;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (qword_10011FB70 != -1)
    {
      swift_once();
    }

    v10 = sub_1000DA844();
    sub_100007EBC(v10, qword_1001272F8);
    sub_1000DA824();
    v12[0] = v8;
    v12[1] = v9;
    v14._countAndFlagsBits = 0x6574696C71732ELL;
    v14._object = 0xE700000000000000;
    sub_1000DBFE4(v14);
    sub_1000D9D64();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_10005CAA4(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1000D9DA4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005C8B0(v6, a2);
  v9 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_1000D9D54(v10);
  v12 = v11;
  v13 = [v9 initWithURL:v11];

  [v13 setShouldInferMappingModelAutomatically:1];
  [v13 setShouldMigrateStoreAutomatically:1];
  [v13 setOption:a1 forKey:NSPersistentStoreFileProtectionKey];
  sub_100008068(0, &qword_100123298);
  isa = sub_1000DC744(1).super.super.isa;
  [v13 setOption:isa forKey:NSPersistentHistoryTrackingKey];

  v15 = sub_1000DC744(1).super.super.isa;
  [v13 setOption:v15 forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_10005CC78(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10005CC8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10005CCD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005CD38()
{
  result = qword_1001232A0;
  if (!qword_1001232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001232A0);
  }

  return result;
}

uint64_t sub_10005CD8C()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_1001232A8);
  sub_100007EBC(v0, qword_1001232A8);
  return sub_1000DAFE4();
}

uint64_t sub_10005CE4C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_100007BC0(&qword_100120488);
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_1000DC1D4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[8] = v5;
  v3[9] = v7;

  return _swift_task_switch(sub_10005CF28, v5, v7);
}

uint64_t sub_10005CF28()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10005CFC0;
  v2 = v0[5];
  v3 = v0[4];

  return sub_100088628(v3, v2);
}

uint64_t sub_10005CFC0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_10005D0E8, v4, v3);
}

uint64_t sub_10005D0E8()
{
  v1 = v0[11];
  if (v1)
  {
LABEL_13:

    v15 = v0[1];

    return v15(v1);
  }

  v2 = v0[7];
  sub_10005D998(v0[6] + qword_100127110, v2);
  v3 = sub_1000DAB44();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  if (v5 == 1)
  {
    sub_10005D930(v0[7]);
LABEL_8:
    if (qword_10011FA70 != -1)
    {
      swift_once();
    }

    v11 = sub_1000DAFF4();
    sub_100007EBC(v11, qword_1001232A8);
    v12 = sub_1000DAFD4();
    v13 = sub_1000DC4C4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "generateImage no route info in metadata", v14, 2u);
    }

    goto LABEL_13;
  }

  v7 = sub_1000DAAE4();
  v0[12] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = (v0[6] + qword_100124898);
  v0[13] = *v8;
  v0[14] = v8[1];
  sub_1000DC224();

  v0[15] = sub_1000DC214();
  v10 = sub_1000DC1D4();

  return _swift_task_switch(sub_10005D364, v10, v9);
}

uint64_t sub_10005D364()
{
  receiver = v0[7].receiver;
  v3 = v0[6].receiver;
  super_class = v0[6].super_class;

  v4 = type metadata accessor for RouteMapGenerator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_mapSnapshotter] = 0;
  *&v5[OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_lineWidth] = 0x4008000000000000;
  v5[OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_sizeType] = 8;
  v6 = &v5[OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_id];
  *v6 = super_class;
  v6[1] = receiver;
  *&v5[OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_routeCoordinates] = v3;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v0[8].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v7 = v0[4].receiver;
  v8 = v0[4].super_class;

  return _swift_task_switch(sub_10005D45C, v7, v8);
}

uint64_t sub_10005D45C()
{
  v1 = *(*(v0 + 48) + qword_100127280);
  *(v0 + 152) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_10005D508;

  return sub_10004A1E8(v1);
}

uint64_t sub_10005D508(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 144) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_10005D650, v5, v4);
}

uint64_t sub_10005D650()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    if (sub_100021930(*(v0 + 152)))
    {
      if (qword_10011F9A0 != -1)
      {
        swift_once();
      }

      sub_100097C1C(v1, *(v0 + 104), *(v0 + 112));
    }

    v2 = *(v0 + 144);
  }

  else
  {
    if (qword_10011FA70 != -1)
    {
      swift_once();
    }

    v3 = sub_1000DAFF4();
    sub_100007EBC(v3, qword_1001232A8);
    v4 = sub_1000DAFD4();
    v5 = sub_1000DC4C4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "error generating route map image", v6, 2u);
    }

    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t type metadata accessor for WorkoutRouteThumbnailCacheOperation()
{
  result = qword_1001232E8;
  if (!qword_1001232E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005D840()
{
  sub_10005D8D0();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10005D8D0()
{
  if (!qword_1001232F8)
  {
    sub_1000DAB44();
    v0 = sub_1000DC7C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1001232F8);
    }
  }
}

uint64_t sub_10005D930(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100120488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005D998(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100120488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005DA08(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

char *sub_10005DAA0()
{
  ObjectType = swift_getObjectType();
  v2 = qword_100123440;
  sub_100007BC0(&qword_100123558);
  sub_10005DC10();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "init");
  [*&v3[qword_100123440] setCountLimit:500];
  return v3;
}

uint64_t sub_10005DB78(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1000DC864();

  swift_unknownObjectRelease();
  return sub_100007FC0(&v7);
}

unint64_t sub_10005DC10()
{
  result = qword_100123560;
  if (!qword_100123560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100123560);
  }

  return result;
}

uint64_t sub_10005DC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007BC0(&qword_100121EE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StreaksWidgetTimelineEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10005DD80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007BC0(&qword_100121EE8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StreaksWidgetTimelineEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for StreaksWidgetAccessoryCircularView()
{
  result = qword_100123628;
  if (!qword_100123628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005DEF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100007BC0(&qword_100123668);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = sub_1000DBBB4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_1000DBBA4();
  *v9 = sub_1000DB3E4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = sub_100007BC0(&qword_100123670);
  sub_10005E11C(a1, &v9[*(v17 + 44)]);
  v18 = *(v11 + 16);
  v18(v14, v16, v10);
  sub_10005F868(v9, v7);
  v18(a2, v14, v10);
  v19 = sub_100007BC0(&qword_100123678);
  sub_10005F868(v7, &a2[*(v19 + 48)]);
  sub_10005F8D8(v9);
  v20 = *(v11 + 8);
  v20(v16, v10);
  sub_10005F8D8(v7);
  return (v20)(v14, v10);
}

uint64_t sub_10005E11C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v41 = a2;
  v2 = sub_100007BC0(&qword_100123680);
  v3 = __chkstk_darwin(v2 - 8);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v34 - v5;
  v6 = sub_100007BC0(&qword_100123688);
  __chkstk_darwin(v6);
  v8 = (&v34 - v7);
  v37 = sub_100007BC0(&qword_100123690);
  v35 = *(v37 - 8);
  v9 = v35;
  v10 = __chkstk_darwin(v37);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v14 = sub_1000DB8B4();
  v15 = sub_1000DB664();
  KeyPath = swift_getKeyPath();
  v17 = (v8 + *(sub_100007BC0(&qword_100123180) + 36));
  v18 = *(sub_100007BC0(&qword_1001231A0) + 28);
  v19 = enum case for Image.Scale.small(_:);
  v20 = sub_1000DB8C4();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *v8 = v14;
  v8[1] = KeyPath;
  v8[2] = v15;
  sub_1000DB994();
  sub_1000DB184();
  v21 = (v8 + *(sub_100007BC0(&qword_100123698) + 36));
  v22 = v43;
  *v21 = v42;
  v21[1] = v22;
  v21[2] = v44;
  *(v8 + *(v6 + 36)) = sub_1000DB4C4();
  sub_10005FC7C();
  v23 = v13;
  sub_1000DB7A4();
  sub_1000080B0(v8, &qword_100123688);
  v24 = v38;
  sub_10005E538(v38);
  v25 = *(v9 + 16);
  v27 = v36;
  v26 = v37;
  v28 = v23;
  v25(v36, v23, v37);
  v29 = v39;
  sub_100007F58(v24, v39, &qword_100123680);
  v30 = v41;
  v25(v41, v27, v26);
  v31 = sub_100007BC0(&qword_1001236B0);
  sub_100007F58(v29, &v30[*(v31 + 48)], &qword_100123680);
  sub_1000080B0(v24, &qword_100123680);
  v32 = *(v35 + 8);
  v32(v28, v26);
  sub_1000080B0(v29, &qword_100123680);
  return (v32)(v27, v26);
}

uint64_t sub_10005E538@<X0>(uint64_t a1@<X8>)
{
  v204 = sub_1000DBC14();
  v3 = *(v204 - 1);
  __chkstk_darwin(v204);
  v193 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_100007BC0(&qword_1001236B8);
  __chkstk_darwin(v208);
  v210 = &v185 - v5;
  v209 = sub_100007BC0(&qword_1001236C0);
  __chkstk_darwin(v209);
  v205 = &v185 - v6;
  v7 = sub_100007BC0(&qword_1001231C0);
  __chkstk_darwin(v7 - 8);
  v194 = &v185 - v8;
  v9 = sub_1000DA124();
  __chkstk_darwin(v9 - 8);
  v187 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_100007BC0(&qword_1001236C8);
  __chkstk_darwin(v188);
  v195 = sub_100007BC0(&qword_1001236D0);
  __chkstk_darwin(v195);
  v198 = &v185 - v11;
  v197 = sub_100007BC0(&qword_1001236D8);
  __chkstk_darwin(v197);
  v201 = &v185 - v12;
  v200 = sub_100007BC0(&qword_1001236E0);
  v13 = __chkstk_darwin(v200);
  KeyPath = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v199 = &v185 - v16;
  __chkstk_darwin(v15);
  v203 = &v185 - v17;
  v214 = sub_1000DB1F4();
  v18 = *(v214 - 8);
  v19 = __chkstk_darwin(v214);
  v207 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v192 = &v185 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v185 - v24;
  __chkstk_darwin(v23);
  v27 = &v185 - v26;
  v190 = sub_100007BC0(&qword_1001236E8);
  v28 = __chkstk_darwin(v190);
  v196 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v185 - v31;
  __chkstk_darwin(v30);
  v206 = (&v185 - v33);
  v34 = v1;
  v35 = v1 + *(type metadata accessor for StreaksWidgetAccessoryCircularView() + 20);
  v36 = (v35 + *(type metadata accessor for StreaksWidgetTimelineEntry() + 20));
  v37 = *v36;
  v211 = a1;
  v213 = v34;
  if (v37 == 2)
  {
    v38 = v193;
    v39 = v204;
    (*(v3 + 104))(v193, enum case for WidgetFamily.accessoryCircular(_:), v204);
    sub_100080BE4(v25);
    v203 = sub_10003CA44(v38);
    v41 = v40;
    v42 = v210;
    v44 = v43;
    v206 = *(v18 + 8);
    v212 = v18 + 8;
    v206(v25, v214);
    (*(v3 + 8))(v38, v39);
    sub_1000DB684();
    v45 = v203;
    v204 = sub_1000DB6F4();
    v205 = v46;
    v48 = v47;

    sub_10004369C(v45, v41, v44 & 1);

    sub_1000DB614();
    v49 = v204;
    v50 = v205;
    v51 = sub_1000DB6B4();
    v53 = v52;
    v55 = v54;
    KeyPath = v56;
    sub_10004369C(v49, v50, v48 & 1);

    LODWORD(v224) = sub_1000DB4C4();
    v57 = sub_1000DB6C4();
    v204 = v58;
    v205 = v57;
    v60 = v59;
    v203 = v61;
    sub_10004369C(v51, v53, v55 & 1);

    KeyPath = swift_getKeyPath();
    LODWORD(v201) = sub_1000DB574();
    sub_1000DB0B4();
    v200 = v62;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    LODWORD(v198) = v60 & 1;
    LOBYTE(v224) = v60 & 1;
    v223 = 0;
    LODWORD(v199) = sub_1000DB594();
    sub_1000DB0B4();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    LOBYTE(v215) = 0;
    sub_100080BE4(v25);
    v77 = v207;
    sub_1000DB1D4();
    sub_10003CD34();
    v78 = v214;
    LOBYTE(v51) = sub_1000DC874();
    v79 = v206;
    v206(v77, v78);
    v79(v25, v78);
    if (v51)
    {
      v80 = 1.0;
    }

    else
    {
      v80 = 0.1;
    }

    v197 = swift_getKeyPath();
    sub_100080BE4(v25);
    sub_1000DB1D4();
    v81 = sub_1000DC874();
    v79(v77, v78);
    v79(v25, v78);
    if (v81)
    {
      v82 = 2;
    }

    else
    {
      v82 = 0;
    }

    v83 = swift_getKeyPath();
    LOBYTE(v224) = (v81 & 1) == 0;
    v84 = v204;
    *v42 = v205;
    *(v42 + 8) = v84;
    *(v42 + 16) = v198;
    v85 = KeyPath;
    *(v42 + 24) = v203;
    *(v42 + 32) = v85;
    *(v42 + 40) = 1;
    *(v42 + 48) = v201;
    *(v42 + 56) = v200;
    *(v42 + 64) = v64;
    *(v42 + 72) = v66;
    *(v42 + 80) = v68;
    *(v42 + 88) = 0;
    *(v42 + 96) = v199;
    *(v42 + 104) = v70;
    *(v42 + 112) = v72;
    *(v42 + 120) = v74;
    *(v42 + 128) = v76;
    *(v42 + 136) = 0;
    *(v42 + 144) = v197;
    *(v42 + 152) = v80;
    *(v42 + 160) = v83;
    *(v42 + 168) = v82;
    *(v42 + 176) = (v81 & 1) == 0;
    swift_storeEnumTagMultiPayload();
    sub_100007BC0(&qword_1001236F0);
    sub_1000391D4(&qword_1001236F8, &qword_1001236C0);
    sub_10005FF20();
    return sub_1000DB464();
  }

  else
  {
    v186 = v37;
    v87 = *(v36 + 1);
    sub_100080BE4(v27);
    sub_1000DB1D4();
    v88 = sub_10003CD34();
    v89 = v214;
    v193 = v88;
    v90 = sub_1000DC874();
    v91 = *(v18 + 8);
    v204 = v25;
    v212 = v18 + 8;
    v91(v25, v89);
    v191 = v91;
    v189 = v87;
    if (v90)
    {
      v92 = 0x80000001000E8920;
      v91(v27, v89);
      v93 = 0;
      v94 = 0xD00000000000007CLL;
    }

    else
    {
      *&v224 = v87;
      sub_1000DA0F4();
      sub_100060228();
      sub_1000D9BD4();
      sub_1000391D4(&qword_100123760, &qword_1001236C8);
      v94 = sub_1000DB704();
      v92 = v95;
      v93 = v96;
      v91(v27, v89);
    }

    sub_1000DB644();
    v97 = sub_1000DB6F4();
    v99 = v98;
    v101 = v100;
    v188 = v102;

    sub_10004369C(v94, v92, v93 & 1);

    v103 = sub_1000DB6E4();
    v105 = v104;
    v107 = v106;
    sub_10004369C(v97, v99, v101 & 1);

    LODWORD(v224) = sub_1000DB4C4();
    v188 = sub_1000DB6C4();
    v109 = v108;
    LOBYTE(v97) = v110;
    v112 = v111;
    sub_10004369C(v103, v105, v107 & 1);

    v113 = swift_getKeyPath();
    sub_1000DB994();
    sub_1000DB184();
    LOBYTE(v97) = v97 & 1;
    v222 = v97;
    v221 = 0;
    *&v220[7] = v224;
    *&v220[23] = v225;
    *&v220[39] = v226;
    v114 = sub_1000DB574();
    sub_1000DB0B4();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v223 = 0;
    v123 = &v32[*(v190 + 36)];
    v190 = sub_100007BC0(&qword_100122020);
    sub_1000DB244();
    *v123 = swift_getKeyPath();
    v124 = *&v220[16];
    *(v32 + 49) = *v220;
    *v32 = v188;
    *(v32 + 1) = v109;
    v32[16] = v97;
    *(v32 + 3) = v112;
    *(v32 + 4) = v113;
    *(v32 + 5) = 1;
    v32[48] = 0;
    *(v32 + 65) = v124;
    *(v32 + 81) = *&v220[32];
    *(v32 + 12) = *&v220[47];
    v32[104] = v114;
    *(v32 + 14) = v116;
    *(v32 + 15) = v118;
    *(v32 + 16) = v120;
    *(v32 + 17) = v122;
    v32[144] = 0;
    sub_10001865C(v32, v206, &qword_1001236E8);
    v125 = v192;
    sub_100080BE4(v192);
    v126 = v204;
    sub_1000DB1D4();
    v127 = v214;
    LOBYTE(v103) = sub_1000DC874();
    v128 = v191;
    v191(v126, v127);
    if (v103)
    {
      v129 = 0x80000001000E8920;
      v128(v125, v127);
      v130 = 0;
      v131 = 0xD00000000000007CLL;
    }

    else
    {
      if (v186)
      {
        v132 = sub_100072314();
      }

      else
      {
        v132 = sub_100072164();
      }

      *&v215 = v132;
      *(&v215 + 1) = v133;
      sub_100007C50();
      v131 = sub_1000DB714();
      v129 = v134;
      v130 = v135;
      v128(v125, v127);
    }

    v136 = sub_1000DB604();
    v137 = v194;
    (*(*(v136 - 8) + 56))(v194, 1, 1, v136);
    sub_1000DB634();
    sub_1000080B0(v137, &qword_1001231C0);
    v138 = sub_1000DB6F4();
    v140 = v139;
    v142 = v141;

    sub_10004369C(v131, v129, v130 & 1);

    sub_1000DB614();
    v143 = sub_1000DB6B4();
    v145 = v144;
    v147 = v146;
    sub_10004369C(v138, v140, v142 & 1);

    LODWORD(v215) = sub_1000DB4C4();
    v148 = sub_1000DB6C4();
    v150 = v149;
    LOBYTE(v140) = v151;
    v153 = v152;
    sub_10004369C(v143, v145, v147 & 1);

    sub_1000DB994();
    sub_1000DB184();
    LOBYTE(v143) = v140 & 1;
    v218 = v140 & 1;
    v154 = sub_1000DB574();
    sub_1000DB0B4();
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v219 = 0;
    v163 = v198;
    v164 = &v198[*(v195 + 36)];
    sub_1000DB254();
    *v164 = swift_getKeyPath();
    *v163 = v148;
    *(v163 + 8) = v150;
    *(v163 + 16) = v143;
    *(v163 + 24) = v153;
    v165 = v216;
    *(v163 + 32) = v215;
    *(v163 + 48) = v165;
    *(v163 + 64) = v217;
    *(v163 + 80) = v154;
    *(v163 + 88) = v156;
    *(v163 + 96) = v158;
    *(v163 + 104) = v160;
    *(v163 + 112) = v162;
    *(v163 + 120) = 0;
    v166 = v204;
    sub_100080BE4(v204);
    v167 = v207;
    sub_1000DB1D4();
    v168 = v214;
    v169 = sub_1000DC874();
    v170 = v191;
    v191(v167, v168);
    v170(v166, v168);
    if (v169)
    {
      v171 = 1.0;
    }

    else
    {
      v171 = 0.1;
    }

    v172 = swift_getKeyPath();
    v173 = v201;
    sub_10001865C(v163, v201, &qword_1001236D0);
    v174 = v173 + *(v197 + 36);
    *v174 = v172;
    *(v174 + 8) = v171;
    sub_100080BE4(v166);
    sub_1000DB1D4();
    LOBYTE(v172) = sub_1000DC874();
    v170(v167, v168);
    v170(v166, v168);
    v175 = v172 & 1;
    v176 = swift_getKeyPath();
    v177 = v199;
    sub_10001865C(v173, v199, &qword_1001236D8);
    v178 = v177 + *(v200 + 36);
    *v178 = v176;
    *(v178 + 8) = v175;
    *(v178 + 16) = 0;
    v179 = v203;
    sub_10001865C(v177, v203, &qword_1001236E0);
    v180 = v206;
    v181 = v196;
    sub_100007F58(v206, v196, &qword_1001236E8);
    v182 = KeyPath;
    sub_100007F58(v179, KeyPath, &qword_1001236E0);
    v183 = v205;
    sub_100007F58(v181, v205, &qword_1001236E8);
    v184 = sub_100007BC0(&qword_100123768);
    sub_100007F58(v182, v183 + *(v184 + 48), &qword_1001236E0);
    sub_1000080B0(v182, &qword_1001236E0);
    sub_1000080B0(v181, &qword_1001236E8);
    sub_100007F58(v183, v210, &qword_1001236C0);
    swift_storeEnumTagMultiPayload();
    sub_100007BC0(&qword_1001236F0);
    sub_1000391D4(&qword_1001236F8, &qword_1001236C0);
    sub_10005FF20();
    sub_1000DB464();
    sub_1000080B0(v183, &qword_1001236C0);
    sub_1000080B0(v179, &qword_1001236E0);
    return sub_1000080B0(v180, &qword_1001236E8);
  }
}

uint64_t sub_10005F81C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000DB994();
  a1[1] = v3;
  v4 = sub_100007BC0(&qword_100123660);
  return sub_10005DEF0(v1, a1 + *(v4 + 44));
}

uint64_t sub_10005F868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100123668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F8D8(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100123668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F990@<X0>(void *a1@<X8>)
{
  result = sub_1000DB304();
  *a1 = v3;
  return result;
}

uint64_t sub_10005F9E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000DB384();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005FA48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DB344();
  *a1 = result;
  return result;
}

uint64_t sub_10005FA74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DB344();
  *a1 = result;
  return result;
}

uint64_t sub_10005FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_10005FC7C()
{
  result = qword_1001236A0;
  if (!qword_1001236A0)
  {
    sub_100007C08(&qword_100123688);
    sub_10005FD34();
    sub_1000391D4(&qword_100123098, &qword_1001230A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236A0);
  }

  return result;
}

unint64_t sub_10005FD34()
{
  result = qword_1001236A8;
  if (!qword_1001236A8)
  {
    sub_100007C08(&qword_100123698);
    sub_10005BB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236A8);
  }

  return result;
}

uint64_t sub_10005FDC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DB324();
  *a1 = result;
  return result;
}

uint64_t sub_10005FE14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DB324();
  *a1 = result;
  return result;
}

uint64_t sub_10005FE68@<X0>(void *a1@<X8>)
{
  result = sub_1000DB304();
  *a1 = v3;
  return result;
}

uint64_t sub_10005FEBC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000DB384();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10005FF20()
{
  result = qword_100123700;
  if (!qword_100123700)
  {
    sub_100007C08(&qword_1001236F0);
    sub_10005FFD8();
    sub_1000391D4(&qword_100122008, &qword_100122010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123700);
  }

  return result;
}

unint64_t sub_10005FFD8()
{
  result = qword_100123708;
  if (!qword_100123708)
  {
    sub_100007C08(&qword_100123710);
    sub_1000600BC(&qword_100123718, &qword_100123720, &unk_1000E3338, sub_100060140);
    sub_1000391D4(&qword_100121FF8, &qword_100122000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123708);
  }

  return result;
}

uint64_t sub_1000600BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007C08(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100060170()
{
  result = qword_100123738;
  if (!qword_100123738)
  {
    sub_100007C08(&qword_100123740);
    sub_1000391D4(&qword_100123748, &qword_100123750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123738);
  }

  return result;
}

unint64_t sub_100060228()
{
  result = qword_100123758;
  if (!qword_100123758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123758);
  }

  return result;
}

NSString sub_100060324()
{
  result = sub_1000DBF04();
  qword_100127118 = result;
  return result;
}

NSString sub_100060360()
{
  result = sub_1000DBF04();
  qword_100127120 = result;
  return result;
}

uint64_t sub_1000603BC(uint64_t a1)
{
  v3 = sub_1000DA984();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001204F8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  sub_100007F58(a1, v32, &qword_100121470);
  v11 = v33;
  if (v33)
  {
    v12 = sub_100007E68(v32, v33);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_1000DCC54();
    (*(v13 + 8))(v15, v11);
    sub_100007FC0(v32);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for MultiPinMapAsset();
  v31.receiver = v1;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, "isEqual:", v16);
  swift_unknownObjectRelease();
  if (!v18)
  {
    goto LABEL_17;
  }

  sub_100007F58(a1, v32, &qword_100121470);
  if (!v33)
  {
    sub_1000080B0(v32, &qword_100121470);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v23 = 0;
    return v23 & 1;
  }

  v19 = v29;
  v20 = v30;
  if (!*&v1[OBJC_IVAR____TtC20JournalWidgetsSecure16MultiPinMapAsset_metadata])
  {
LABEL_10:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  sub_1000111BC(v10);

  if ((*(v19 + 48))(v10, 1, v3))
  {
    sub_1000080B0(v10, &qword_1001204F8);
    goto LABEL_10;
  }

  v25 = v28;
  (*(v19 + 16))(v28, v10, v3);
  sub_1000080B0(v10, &qword_1001204F8);
  v21 = sub_1000DA944();
  (*(v19 + 8))(v25, v3);
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (*&v20[OBJC_IVAR____TtC20JournalWidgetsSecure16MultiPinMapAsset_metadata])
  {

    sub_1000111BC(v8);

    if ((*(v19 + 48))(v8, 1, v3))
    {
      sub_1000080B0(v8, &qword_1001204F8);
    }

    else
    {
      v26 = v28;
      (*(v19 + 16))(v28, v8, v3);
      sub_1000080B0(v8, &qword_1001204F8);
      v22 = sub_1000DA944();
      (*(v19 + 8))(v26, v3);
      if (v22)
      {
        goto LABEL_15;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_15:
  v23 = sub_100060868(v21, v22);

  return v23 & 1;
}

uint64_t sub_100060868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA714();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1000627E8(&qword_1001238C0, &type metadata accessor for VisitAssetMetadata);
    v21 = sub_1000DBE64();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100060B04()
{
  v1 = v0;
  v2 = sub_100007BC0(&qword_1001204F8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  if (*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure16MultiPinMapAsset_metadata))
  {

    sub_1000111BC(v5);

    v6 = sub_1000DA984();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v3 = sub_1000080B0(v5, &qword_1001204F8);
    }

    else
    {
      v7 = sub_1000DA964();
      v3 = sub_1000080B0(v5, &qword_1001204F8);
      if (v7 != 2 && (v7 & 1) != 0)
      {
        LOBYTE(v8) = 1;
        return v8 & 1;
      }
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_context);
  if (v8)
  {
    __chkstk_darwin(v3);
    *&v12[-16] = v1;
    v10 = v9;
    sub_100007BC0(&qword_1001238B8);
    sub_1000DC674();

    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

char *sub_100060CD4(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = sub_100007BC0(&qword_1001204F8);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for MultiPinMapThumbnailCacheOperation());
  sub_10001526C(v15);
  sub_10006275C(v15, v16 + qword_100127298);
  v17 = v6;

  return sub_10008A204(v17, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_100060DE0(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v7 = sub_100007BC0(&qword_1001204F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1000DA0E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v3 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_id, v10);
  v30 = [a3 userInterfaceStyle];
  if (*(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure16MultiPinMapAsset_metadata))
  {

    sub_1000111BC(v9);

    v14 = sub_1000DA984();
    v15 = 1;
    if ((*(*(v14 - 8) + 48))(v9, 1, v14))
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_1000DA974();
      v15 = v17;
    }

    sub_1000080B0(v9, &qword_1001204F8);
  }

  else
  {
    v16 = 0;
    v15 = 1;
  }

  v33 = 0x2D626D756874;
  v34 = 0xE600000000000000;
  sub_1000627E8(&qword_10011FDE0, &type metadata accessor for UUID);
  v35._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v35);

  v36._countAndFlagsBits = 45;
  v36._object = 0xE100000000000000;
  sub_1000DBFE4(v36);
  v32._countAndFlagsBits = a1;
  v37._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v37);

  v38._countAndFlagsBits = 45;
  v38._object = 0xE100000000000000;
  sub_1000DBFE4(v38);
  v18 = 0x656772614C78;
  v19 = 0xE500000000000000;
  v20 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v20 = 0x657263536C6C7566;
    v19 = 0xEA00000000006E65;
  }

  v21 = 0xE600000000000000;
  v22 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v22 = 0x61546D756964656DLL;
    v21 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v20 = v22;
    v19 = v21;
  }

  v23 = 0xEA00000000006564;
  v24 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v24 = 0x656772616CLL;
    v23 = 0xE500000000000000;
  }

  if (a2)
  {
    v25 = 0xE600000000000000;
  }

  else
  {
    v18 = 0x6154656772614C78;
    v25 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v23 = v25;
  }

  else
  {
    v18 = v24;
  }

  if (a2 <= 3u)
  {
    v26._countAndFlagsBits = v18;
  }

  else
  {
    v26._countAndFlagsBits = v20;
  }

  if (a2 <= 3u)
  {
    v27 = v23;
  }

  else
  {
    v27 = v19;
  }

  v26._object = v27;
  sub_1000DBFE4(v26);

  if ((v15 & 1) == 0)
  {
    v32._countAndFlagsBits = 45;
    v32._object = 0xE100000000000000;
    v31 = v16;
    v39._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v39);

    sub_1000DBFE4(v32);
  }

  v32._countAndFlagsBits = 45;
  v32._object = 0xE100000000000000;
  v31 = v30;
  v40._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v40);

  sub_1000DBFE4(v32);

  v28 = v33;
  (*(v11 + 8))(v13, v10);
  return v28;
}

id sub_100061280()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPinMapAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultiPinMapAsset()
{
  result = qword_100123840;
  if (!qword_100123840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100061388(char *a1)
{
  v166 = a1;
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v140 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBED4();
  __chkstk_darwin(v3 - 8);
  v139 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_100007BC0(&qword_100123890);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v127 - v5;
  v133 = sub_100007BC0(&qword_100123898);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v127 - v6;
  v136 = sub_100007BC0(&qword_1001238A0);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = &v127 - v7;
  v129 = sub_1000DAF04();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DA084();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v142 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v127 - v14;
  v16 = __chkstk_darwin(v13);
  v141 = &v127 - v17;
  __chkstk_darwin(v16);
  v19 = &v127 - v18;
  v165 = sub_1000DA714();
  v20 = *(v165 - 8);
  __chkstk_darwin(v165);
  v22 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100007BC0(&qword_1001203B8);
  v24 = __chkstk_darwin(v23 - 8);
  v147 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v127 - v27;
  v29 = __chkstk_darwin(v26);
  v146 = &v127 - v30;
  v31 = __chkstk_darwin(v29);
  v161 = &v127 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v127 - v34;
  __chkstk_darwin(v33);
  v36 = *(v10 + 56);
  v149 = &v127 - v37;
  v36();
  v150 = v35;
  v167 = v9;
  v151 = v36;
  v152 = v10 + 56;
  (v36)(v35, 1, 1, v9);
  v38 = *(v166 + 2);
  if (v38)
  {
    v145 = v15;
    v39 = *(v20 + 16);
    v40 = v20 + 16;
    v41 = &v166[(*(v20 + 80) + 32) & ~*(v20 + 80)];
    v156 = (v10 + 32);
    v157 = v39;
    v143 = (v10 + 8);
    v42 = _swiftEmptyArrayStorage;
    v43 = *(v40 + 56);
    v159 = v28;
    v160 = v40;
    v154 = (v40 - 8);
    v155 = v43;
    v44 = &unk_1000E0460;
    v153 = _swiftEmptyArrayStorage;
    v45 = v19;
    v144 = v19;
    v158 = v22;
    v164 = (v10 + 48);
    v39(v22, v41, v165);
    while (1)
    {
      v46 = sub_1000DA6F4();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_100047140(0, *(v42 + 2) + 1, 1, v42);
        }

        v51 = *(v42 + 2);
        v50 = *(v42 + 3);
        if (v51 >= v50 >> 1)
        {
          v42 = sub_100047140((v50 > 1), v51 + 1, 1, v42);
        }

        *(v42 + 2) = v51 + 1;
        v52 = &v42[16 * v51];
        *(v52 + 4) = v48;
        *(v52 + 5) = v49;
      }

      v53 = sub_1000DA664();
      v166 = v42;
      if (v54 >> 60 != 15)
      {
        v55 = v53;
        v56 = v54;
        sub_100062710();
        v57 = sub_1000DC734();
        sub_100010500(v55, v56);
        if (v57)
        {
          v58 = [v57 _addressFormattedAsSinglelineAddress];
          if (v58 || (v58 = [v57 name]) != 0)
          {
            v59 = v58;
            v148 = sub_1000DBF44();
            v61 = v60;
          }

          else
          {
            v98 = sub_1000DA6F4();
            if (!v99)
            {

              goto LABEL_22;
            }

            v61 = v99;
            v148 = v98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_100047140(0, *(v153 + 2) + 1, 1, v153);
          }

          v63 = *(v153 + 2);
          v62 = *(v153 + 3);
          if (v63 >= v62 >> 1)
          {
            v153 = sub_100047140((v62 > 1), v63 + 1, 1, v153);
          }

          v64 = v153;
          *(v153 + 2) = v63 + 1;
          v65 = &v64[16 * v63];
          *(v65 + 4) = v148;
          *(v65 + 5) = v61;
        }
      }

LABEL_22:
      v66 = v161;
      sub_1000DA694();
      v67 = *v164;
      v68 = (*v164)(v66, 1, v167);
      v162 = v41;
      v163 = v38;
      if (v68 == 1)
      {
        sub_1000080B0(v66, &qword_1001203B8);
LABEL_26:
        v42 = v166;
        v76 = v159;
        goto LABEL_31;
      }

      v69 = v66;
      v70 = *v156;
      v71 = v44;
      v72 = v167;
      (*v156)(v45, v69, v167);
      v73 = v149;
      v74 = v146;
      sub_100007F58(v149, v146, &qword_1001203B8);
      if (v67(v74, 1, v72) == 1)
      {
        sub_1000080B0(v73, &qword_1001203B8);
        sub_1000080B0(v74, &qword_1001203B8);
        v75 = v167;
        v70(v73, v45, v167);
        (v151)(v73, 0, 1, v75);
        v22 = v158;
        v44 = v71;
        v41 = v162;
        v38 = v163;
        goto LABEL_26;
      }

      v77 = v141;
      v78 = v74;
      v79 = v167;
      v70(v141, v78, v167);
      v80 = sub_1000DA004();
      v81 = *v143;
      (*v143)(v77, v79);
      if (v80)
      {
        v82 = v149;
        sub_1000080B0(v149, &qword_1001203B8);
        v83 = v167;
        v70(v82, v45, v167);
        (v151)(v82, 0, 1, v83);
        v44 = &unk_1000E0460;
        v42 = v166;
        v22 = v158;
        v76 = v159;
      }

      else
      {
        v81(v45, v167);
        v42 = v166;
        v22 = v158;
        v76 = v159;
        v44 = &unk_1000E0460;
      }

      v41 = v162;
      v38 = v163;
LABEL_31:
      sub_1000DA684();
      if (v67(v76, 1, v167) == 1)
      {
        (*v154)(v22, v165);
        sub_1000080B0(v76, &qword_1001203B8);
      }

      else
      {
        v84 = v76;
        v85 = *v156;
        v86 = v145;
        v87 = v167;
        (*v156)(v145, v84, v167);
        v88 = v150;
        v89 = v44;
        v90 = v147;
        sub_100007F58(v150, v147, &qword_1001203B8);
        if (v67(v90, 1, v87) == 1)
        {
          v91 = v158;
          (*v154)(v158, v165);
          sub_1000080B0(v88, &qword_1001203B8);
          sub_1000080B0(v90, &qword_1001203B8);
          v85(v88, v86, v87);
          (v151)(v88, 0, 1, v87);
          v45 = v144;
          v42 = v166;
          v41 = v162;
          v38 = v163;
          v22 = v91;
          v44 = v89;
        }

        else
        {
          v92 = v142;
          v85(v142, v90, v87);
          v93 = sub_1000D9FF4();
          v94 = *v143;
          (*v143)(v92, v87);
          v22 = v158;
          (*v154)(v158, v165);
          if (v93)
          {
            v95 = v150;
            sub_1000080B0(v150, &qword_1001203B8);
            v96 = v167;
            v85(v95, v86, v167);
            v97 = v96;
            v44 = &unk_1000E0460;
            (v151)(v95, 0, 1, v97);
            v45 = v144;
            v42 = v166;
            v41 = v162;
            v38 = v163;
          }

          else
          {
            v94(v86, v167);
            v45 = v144;
            v42 = v166;
            v41 = v162;
            v38 = v163;
            v44 = &unk_1000E0460;
          }
        }
      }

      v41 += v155;
      if (!--v38)
      {
        goto LABEL_41;
      }

      v157(v22, v41, v165);
    }
  }

  v42 = _swiftEmptyArrayStorage;
  v153 = _swiftEmptyArrayStorage;
LABEL_41:
  v100 = v127;
  sub_1000DAE34();
  v101 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v167 = [v101 initWithContentType:isa];

  (*(v128 + 8))(v100, v129);
  v168 = v42;
  v103 = v132;
  v104 = v130;
  v105 = v133;
  (*(v132 + 104))(v130, enum case for ListFormatStyle.ListType.and<A, B>(_:), v133);
  v106 = v137;
  v107 = v135;
  v108 = v138;
  (*(v137 + 104))(v135, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v138);
  sub_100007BC0(&qword_100121560);
  sub_1000391D4(&qword_1001238A8, &qword_100121560);
  v109 = v131;
  sub_1000D9974();
  (*(v106 + 8))(v107, v108);
  (*(v103 + 8))(v104, v105);
  sub_1000391D4(&qword_1001238B0, &qword_1001238A0);
  v110 = v136;
  sub_1000DC084();
  (*(v134 + 8))(v109, v110);

  v111 = v169;
  v112 = v170;
  v168 = v153;
  sub_1000391D4(&qword_100121870, &qword_100121560);
  v113 = sub_1000DBDE4();
  v115 = v114;

  v116 = v167;
  sub_100046898(v111, v112, v113, v115);

  sub_1000DBE74();
  sub_1000DA114();
  v117 = sub_1000DBF64();
  v119 = v118;
  sub_100007BC0(&qword_1001203C0);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_1000DFEF0;
  v121 = v149;
  v122 = sub_1000478A0(v117, v119, v149);
  v124 = v123;

  *(v120 + 32) = v122;
  *(v120 + 40) = v124;
  v125 = sub_1000DC124().super.isa;

  [v116 setAlternateNames:v125];

  sub_1000080B0(v150, &qword_1001203B8);
  sub_1000080B0(v121, &qword_1001203B8);
  return v116;
}

void *sub_100062478()
{
  v1 = sub_100007BC0(&qword_1001204F8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000DA984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure16MultiPinMapAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_6;
  }

  sub_1000111BC(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_1000080B0(v3, &qword_1001204F8);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = sub_1000DA944();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_100061388(v8);

    return v9;
  }

  return 0;
}

unint64_t sub_100062710()
{
  result = qword_1001202C8;
  if (!qword_1001202C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001202C8);
  }

  return result;
}

uint64_t sub_10006275C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001204F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000627E8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100062830(int a1)
{
  v2 = v1;
  if (a1 && (v10 = v1, v4 = [v1 fontDescriptor], v5 = objc_msgSend(v10, "fontDescriptor"), v6 = objc_msgSend(v5, "symbolicTraits"), v5, v7 = objc_msgSend(v4, "fontDescriptorWithSymbolicTraits:", v6 | a1), v4, v2 = v10, v7))
  {
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

    return v8;
  }

  else
  {

    return v2;
  }
}

id sub_100062938@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6 > 1)
  {
    v26 = a3;
    if (v6 == 2)
    {
      v25 = a2[1];
      sub_100007BC0(&qword_1001238C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000DFEF0;
      *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
      sub_100007BC0(&qword_1001238F0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000DFEF0;
      sub_100007BC0(&qword_1001238F8);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_1000DE2C0;
      v18 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      *(v17 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      v19 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
      *(v17 + 40) = v5;
      *(v17 + 48) = v19;
      *(v17 + 56) = v25;
      v20 = UIFontDescriptorFeatureSettingsAttribute;
      v21 = v18;
      v22 = v19;
      v23 = sub_100064008(v17);
      swift_setDeallocating();
      sub_100007BC0(&qword_100123900);
      swift_arrayDestroy();
      *(v16 + 32) = v23;
      *(inited + 64) = sub_100007BC0(&qword_100123908);
      *(inited + 40) = v16;
      sub_1000645BC(inited, &qword_100123918, &unk_1000E34D0, &qword_1001238E8);
      swift_setDeallocating();
      sub_1000080B0(inited + 32, &qword_1001238E8);
      type metadata accessor for AttributeName(0);
      sub_1000642E0();
      v12.super.isa = sub_1000DBD64().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    else
    {
      if (v6 != 3)
      {
        result = [v4 fontDescriptorWithDesign:v5];
        if (!result)
        {
          result = v4;
        }

        goto LABEL_12;
      }

      sub_100007BC0(&qword_1001238C8);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_1000DFEF0;
      *(v7 + 32) = UIFontDescriptorTraitsAttribute;
      sub_100007BC0(&qword_1001238D0);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_1000DFEF0;
      *(v8 + 32) = UIFontWeightTrait;
      *(v8 + 40) = v5;
      v9 = UIFontDescriptorTraitsAttribute;
      v10 = UIFontWeightTrait;
      v11 = sub_1000640F4(v8);
      swift_setDeallocating();
      sub_1000080B0(v8 + 32, &qword_1001238D8);
      *(v7 + 64) = sub_100007BC0(&qword_1001238E0);
      *(v7 + 40) = v11;
      sub_1000645BC(v7, &qword_100123918, &unk_1000E34D0, &qword_1001238E8);
      swift_setDeallocating();
      sub_1000080B0(v7 + 32, &qword_1001238E8);
      type metadata accessor for AttributeName(0);
      sub_1000642E0();
      v12.super.isa = sub_1000DBD64().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    v24 = v13;

    result = v24;
LABEL_12:
    a3 = v26;
    goto LABEL_13;
  }

  if (*(a2 + 16))
  {
    result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") & ~v5}];
    if (result)
    {
      goto LABEL_13;
    }

LABEL_15:
    result = v4;
    goto LABEL_13;
  }

  result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") | v5}];
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_13:
  *a3 = result;
  return result;
}

id sub_100062DB0(double a1)
{
  v2 = v1;
  v4 = [v1 fontDescriptor];
  v5 = [v4 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_1000642E0();
  v6 = sub_1000DBD74();

  v28 = v6;
  if (*(v6 + 16) && (v7 = sub_1000631BC(UIFontDescriptorTraitsAttribute), (v8 & 1) != 0) && (sub_10000800C(*(v6 + 56) + 32 * v7, &v26), sub_100007BC0(&qword_100123938), (swift_dynamicCast() & 1) != 0))
  {
    v9 = *&v25[0];
  }

  else
  {
    v9 = sub_1000645BC(_swiftEmptyArrayStorage, &qword_100123940, &unk_1000E3510, &qword_100123948);
  }

  type metadata accessor for Weight(0);
  v27 = v10;
  *&v26 = a1;
  sub_100007EAC(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000D0D90(v25, UIFontWeightTrait, isUniquelyReferenced_nonNull_native);
  sub_1000CEDF4(&v26);
  sub_1000080B0(&v26, &qword_100121470);
  v27 = sub_100007BC0(&qword_100123938);
  *&v26 = v9;
  sub_100007EAC(&v26, v25);
  v12 = v28;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000D0BD0(v25, UIFontDescriptorTraitsAttribute, v13);
  v28 = v12;
  v14 = [v2 familyName];
  v15 = sub_1000DBF44();
  v17 = v16;

  v27 = &type metadata for String;
  *&v26 = v15;
  *(&v26 + 1) = v17;
  sub_100007EAC(&v26, v25);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000D0BD0(v25, UIFontDescriptorFamilyAttribute, v18);
  v19 = objc_allocWithZone(UIFontDescriptor);
  isa = sub_1000DBD64().super.isa;
  v21 = [v19 initWithFontAttributes:{isa, v12}];

  [v2 pointSize];
  v23 = [objc_opt_self() fontWithDescriptor:v21 size:v22];

  return v23;
}

unint64_t sub_1000630F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000DC984(*(v2 + 40));

  return sub_10006350C(a1, v4);
}

unint64_t sub_100063134(unsigned __int8 a1)
{
  v2 = sub_100033CCC();

  return sub_1000635D4(a1, v2);
}

unint64_t sub_100063178(uint64_t a1)
{
  v2 = sub_1000DCD14();

  return sub_10006385C(a1, v2);
}

unint64_t sub_1000631BC(uint64_t a1)
{
  sub_1000DBF44();
  sub_1000DCD24();
  sub_1000DBFD4();
  v2 = sub_1000DCD74();

  return sub_1000639B0(a1, v2);
}

unint64_t sub_10006324C(double a1, double a2)
{
  sub_1000DCD24();
  sub_1000D203C(a1, a2);
  v4 = sub_1000DCD74();

  return sub_1000638C8(v4, a1, a2);
}

unint64_t sub_1000632C0(char a1)
{
  sub_1000DCD24();
  sub_1000DCD34(a1 & 1);
  v2 = sub_1000DCD74();

  return sub_100063940(a1 & 1, v2);
}

unint64_t sub_10006332C(unsigned __int8 a1)
{
  sub_1000DCD24();
  sub_1000DCD34(a1);
  v2 = sub_1000DCD74();

  return sub_100063AB4(a1, v2);
}

unint64_t sub_100063398(unsigned __int8 a1)
{
  sub_1000DCD24();
  sub_1000253A4(a1);
  sub_1000DBFD4();

  v2 = sub_1000DCD74();

  return sub_100063B24(a1, v2);
}

unint64_t sub_100063420(int64_t a1)
{
  sub_1000DCD24();
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }

LABEL_8:
    sub_1000DCD34(4uLL);
    sub_1000DBF44();
    sub_1000DBFD4();

    goto LABEL_12;
  }

  if (!a1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 1;
LABEL_11:
  sub_1000DCD34(v2);
LABEL_12:
  v3 = sub_1000DCD74();

  return sub_100063E8C(a1, v3);
}

unint64_t sub_10006350C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100064338(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000DC994();
      sub_100030F6C(v8);
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

unint64_t sub_1000635D4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xEA00000000006C6CLL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v13 = 0xE500000000000000;
            v12 = 0x6C6C616D73;
          }

          else
          {
            v13 = 0xEA00000000006E65;
            v12 = 0x657263536C6C7566;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v12 = 0x6D756964656DLL;
          }

          else
          {
            v12 = 0x61546D756964656DLL;
          }

          if (v7 == 4)
          {
            v13 = 0xE600000000000000;
          }

          else
          {
            v13 = 0xEA00000000006C6CLL;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x69576D756964656DLL;
        }

        else
        {
          v8 = 0x656772616CLL;
        }

        if (v7 == 2)
        {
          v9 = 0xEA00000000006564;
        }

        else
        {
          v9 = 0xE500000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x656772614C78;
        }

        else
        {
          v10 = 0x6154656772614C78;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xEA00000000006C6CLL;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = 0xEA00000000006E65;
      v15 = 0x657263536C6C7566;
      if (v6 == 6)
      {
        v15 = 0x6C6C616D73;
        v14 = 0xE500000000000000;
      }

      v16 = 0x61546D756964656DLL;
      if (v6 == 4)
      {
        v16 = 0x6D756964656DLL;
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xEA00000000006C6CLL;
      }

      if (v6 <= 5)
      {
        v15 = v16;
        v14 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x69576D756964656DLL;
      }

      else
      {
        v18 = 0x656772616CLL;
      }

      if (v6 == 2)
      {
        v19 = 0xEA00000000006564;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v6)
      {
        v20 = 0x656772614C78;
      }

      else
      {
        v20 = 0x6154656772614C78;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v15;
      v22 = v6 <= 3 ? v19 : v14;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_1000DCC74();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xEA00000000006C6CLL;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10006385C(uint64_t a1, uint64_t a2)
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

unint64_t sub_1000638C8(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100063940(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000639B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000DBF44();
      v8 = v7;
      if (v6 == sub_1000DBF44() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000DCC74();

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

unint64_t sub_100063AB4(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_100063B24(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 4)
      {
        v10 = 0x6563616C70;
        if (v7 == 3)
        {
          v10 = 0x616964656DLL;
        }

        if (v7 == 2)
        {
          v10 = 0x6F69647561;
        }

        v11 = 0x6F746F6870;
        if (*(*(v2 + 48) + v4))
        {
          v11 = 0x6F65646976;
        }

        v9 = *(*(v2 + 48) + v4) <= 1u ? v11 : v10;
        v8 = 0xE500000000000000;
      }

      else if (*(*(v2 + 48) + v4) > 7u)
      {
        if (v7 == 8)
        {
          v9 = 0x4D664F6574617473;
          v8 = 0xEB00000000646E69;
        }

        else if (v7 == 9)
        {
          v8 = 0xE700000000000000;
          v9 = 0x676E6977617264;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x69747465666E6F63;
        }
      }

      else if (v7 == 5)
      {
        v9 = 0x61737265766E6F63;
        v8 = 0xEC0000006E6F6974;
      }

      else if (v7 == 6)
      {
        v8 = 0xE800000000000000;
        v9 = 0x7974697669746361;
      }

      else
      {
        v9 = 0x697463656C666572;
        v8 = 0xEA00000000006E6FLL;
      }

      if (v6 <= 4)
      {
        v12 = 0x6563616C70;
        if (v6 == 3)
        {
          v12 = 0x616964656DLL;
        }

        v13 = 0xE500000000000000;
        if (v6 == 2)
        {
          v12 = 0x6F69647561;
          v13 = 0xE500000000000000;
        }

        v14 = 0x6F746F6870;
        if (v6)
        {
          v14 = 0x6F65646976;
        }

        v15 = 0xE500000000000000;
        v16 = v6 <= 1;
      }

      else
      {
        v12 = 0x69747465666E6F63;
        if (v6 == 9)
        {
          v12 = 0x676E6977617264;
        }

        v13 = 0xE700000000000000;
        if (v6 != 9)
        {
          v13 = 0xE800000000000000;
        }

        if (v6 == 8)
        {
          v12 = 0x4D664F6574617473;
          v13 = 0xEB00000000646E69;
        }

        v14 = 0x7974697669746361;
        if (v6 != 6)
        {
          v14 = 0x697463656C666572;
        }

        v15 = 0xEA00000000006E6FLL;
        if (v6 == 6)
        {
          v15 = 0xE800000000000000;
        }

        if (v6 == 5)
        {
          v14 = 0x61737265766E6F63;
          v15 = 0xEC0000006E6F6974;
        }

        v16 = v6 <= 7;
      }

      v17 = v16 ? v14 : v12;
      v18 = v16 ? v15 : v13;
      if (v9 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_1000DCC74();

      if ((v19 & 1) == 0)
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

unint64_t sub_100063E8C(unint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          if (a1 == 2)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v7 == 3)
        {
          if (a1 == 3)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (!v7)
        {
          if (!a1)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v7 == 1)
        {
          if (a1 == 1)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      if (a1 >= 4)
      {
        v8 = sub_1000DBF44();
        v10 = v9;
        if (v8 == sub_1000DBF44() && v10 == v11)
        {

          return v4;
        }

        v13 = sub_1000DCC74();

        if (v13)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100064008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007BC0(&qword_100123910);
    v3 = sub_1000DCB44();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1000631BC(v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}