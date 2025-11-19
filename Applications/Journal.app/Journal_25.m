Swift::Int sub_1002A8E8C(Swift::Int result)
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
      return sub_100203770(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_100201838(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_1002A8ED4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1002A8EFC;
}

double sub_1002A8F08(double *a1, unsigned __int8 a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for JournalFeatureFlags();
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
        v45 = JournalFeatureFlags.isEnabled.getter();
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

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002A9548(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A95E8, v8, v7);
}

uint64_t sub_1002A95E8()
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

id sub_1002A979C(double a1, double a2)
{
  if (qword_100ACFBC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_100ADBD40;
  if (*(off_100ADBD40 + 2) && (v5 = sub_1003623A4(a1, a2), (v6 & 1) != 0))
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
    v12 = off_100ADBD40;
    off_100ADBD40 = 0x8000000000000000;
    sub_100202630(v9, isUniquelyReferenced_nonNull_native, a1, a2);
    off_100ADBD40 = v12;
    swift_endAccess();
    return v9;
  }
}

uint64_t sub_1002A990C(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v16 = OBJC_IVAR____TtC7Journal17RouteMapGenerator_routeCoordinates;
  v17 = *&v6[OBJC_IVAR____TtC7Journal17RouteMapGenerator_routeCoordinates];
  if (v17 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
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
        [v24 p:*&v49 ivar:*&v51lyt[511]];
        v26 = v25;
        v28 = v27;

        v29 = v6[OBJC_IVAR____TtC7Journal17RouteMapGenerator_sizeType];
        if (v29 == 8)
        {
          v30 = [a2 image];
          [v30 size];
          v32 = v31;
          v34 = v33;

          LOBYTE(v29) = sub_100119774(0.0, 0.0, v32, v34);
        }

        v35 = [a2 image];
        [v35 size];
        v37 = v36;
        v39 = v38;

        v40 = sub_1002A979C(v37, v39);
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
        *(v42 + 16) = sub_1002A9CC0;
        *(v42 + 24) = v41;
        aBlock[4] = sub_1000240D8;
        aBlock[5] = v42;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100012D78;
        aBlock[3] = &unk_100A63268;
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

      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1002A9CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1002A9CFC(char a1, char a2)
{
  if (qword_100ACFBC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_100ADBD48;
  if (*(off_100ADBD48 + 2) && (v5 = sub_10009D0BC(a2), (v6 & 1) != 0) && (v7 = *(v4[7] + 8 * v5), *(v7 + 16)) && (v8 = sub_10036259C(a1 & 1), (v9 & 1) != 0))
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
    v16 = sub_1002A806C(v14, v11, v13 | 0x8000000000000000, a2);
    swift_beginAccess();
    if (*(off_100ADBD48 + 2) && (sub_10009D0BC(a2), (v17 & 1) != 0))
    {
      swift_endAccess();
      swift_beginAccess();
      v19 = sub_1002A7FA8(v28, a2);
      if (*v18)
      {
        v20 = v18;
        v16 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v20;
        *v20 = 0x8000000000000000;
        sub_1002028D8(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
        *v20 = v27;
      }

      (v19)(v28, 0);
    }

    else
    {
      swift_endAccess();
      sub_1000F24EC(&qword_100ADBE58);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940080;
      *(inited + 32) = a1 & 1;
      v23 = inited + 32;
      *(inited + 40) = v16;
      v24 = sub_100363B10(inited);
      swift_setDeallocating();
      v16 = v16;
      sub_100004F84(v23, &qword_100ADBE60);
      swift_beginAccess();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v29 = off_100ADBD48;
      off_100ADBD48 = 0x8000000000000000;
      sub_10020278C(v24, a2, v25);
      off_100ADBD48 = v29;
    }

    swift_endAccess();
    return v16;
  }
}

void sub_1002AA000(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  v63 = a3;
  v60 = a8;
  v61.size.width = a6;
  v61.size.height = a7;
  v61.origin.y = a5;
  v61.origin.x = a4;
  v66 = type metadata accessor for Date();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v55 = a2;
  v13 = *(a2 + OBJC_IVAR____TtC7Journal27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v13 >> 62))
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v59 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v18 = v17;
    v20 = *(v10 + 8);
    v19 = v10 + 8;
    v65 = v20;
    v20(v12, v66);
    if (v13 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
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
      v58 = a1;
      v22 = 0;
      v23 = v60;
      v62 = v23 * v23;
      v54 = v23 + v23;
      v53 = xmmword_100940050;
      v24 = v59;
      v57 = v19;
      v56 = v13;
      do
      {
        v64 = v18;
        if (v24)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v27 = *(v13 + 8 * v22 + 32);
        }

        v28 = v27;
        [v15 coordinate];
        v29 = MKMapPointForCoordinate(v73);
        [v28 coordinate];
        v30 = MKMapPointForCoordinate(v74);
        v31 = MKCoordinateForMapPoint(v29);
        v32 = v63;
        [v63 pointForCoordinate:{v31.latitude, v31.longitude}];
        v34 = v33;
        v36 = v35;
        v37 = MKCoordinateForMapPoint(v30);
        [v32 pointForCoordinate:{v37.latitude, v37.longitude}];
        if (v62 <= (v38 - v34) * (v38 - v34) + (v39 - v36) * (v39 - v36))
        {
          v75.origin.x = fmin(v29.x, v30.x);
          v75.origin.y = fmin(v29.y, v30.y);
          v75.size.width = vabdd_f64(v29.x, v30.x);
          v75.size.height = vabdd_f64(v29.y, v30.y);
          if (MKMapRectIntersectsRect(v61, v75))
          {
            v40 = [v28 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            Date.timeIntervalSinceReferenceDate.getter();
            v42 = v41;
            v65(v12, v66);
            v43 = v42 - v64;
            [v28 speed];
            v45 = v44;
            Mutable = CGPathCreateMutable();
            v68 = 0;
            v69 = 0;
            v67 = 0x3FF0000000000000;
            v70 = 0x3FF0000000000000;
            v71 = 0;
            v72 = 0;
            CGMutablePathRef.move(to:transform:)();
            CGMutablePathRef.addLine(to:transform:)();
            if (v43 <= 5.0)
            {
              v48 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
              v49 = v58;
              CGContextAddPath(v58, v48);
              v51 = sub_1002A87D8(v45);
              CGContextSetFillColorWithColor(v49, v51);
              v52 = kCGPathFill;
            }

            else
            {
              sub_1000F24EC(&qword_100AD6560);
              v47 = swift_allocObject();
              *(v47 + 16) = v53;
              *(v47 + 32) = 0;
              *(v47 + 40) = v54;
              v48 = CGPathRef.copy(dashingWithPhase:lengths:transform:)();

              v49 = v58;
              CGContextAddPath(v58, v48);
              CGContextSetLineWidth(v49, v60);
              CGContextSetLineCap(v49, kCGLineCapRound);
              v50 = [objc_opt_self() grayColor];
              v51 = [v50 CGColor];

              CGContextSetStrokeColorWithColor(v49, v51);
              v52 = kCGPathStroke;
            }

            CGContextDrawPath(v49, v52);
            v13 = v56;
            v24 = v59;
          }

          v15 = v28;
        }

        ++v22;
        v25 = [v28 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        v18 = v26;

        v65(v12, v66);
      }

      while (v21 != v22);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_3;
  }
}

void sub_1002AA5E4(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, double a8, double a9)
{
  v58 = a9;
  v53 = a7;
  v55.size.width = a5;
  v55.size.height = a6;
  v55.origin.y = a4;
  v55.origin.x = a3;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v49 = a2;
  v16 = *(a2 + OBJC_IVAR____TtC7Journal27WorkoutGradientPathRenderer_routeCoordinates);
  v17 = v16 >> 62;
  v54 = v16;
  if (!(v16 >> 62))
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v57 = v54 & 0xC000000000000001;
    if ((v54 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v54 + 32);
    }

    v19 = v18;
    v20 = [v18 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v22 = v21;
    v23 = *(v13 + 8);
    v52 = v13 + 8;
    v59 = v23;
    v23(v15, v12);
    if (v17)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v24 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_23;
      }
    }

    if (v24 >= 1)
    {
      v51 = a1;
      v25 = 0;
      v26 = v53;
      v56 = v26 * v26;
      v48 = v26 + v26;
      v47 = xmmword_100940050;
      v27 = v54;
      v50 = v12;
      do
      {
        if (v57)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v36 = *(v27 + 8 * v25 + 32);
        }

        v37 = v36;
        [v19 coordinate];
        v38 = MKMapPointForCoordinate(v66);
        [v37 coordinate];
        v39 = MKMapPointForCoordinate(v67);
        if (v56 <= (v39.x - a8 - (v38.x - a8)) * (v39.x - a8 - (v38.x - a8)) + (v39.y - v58 - (v38.y - v58)) * (v39.y - v58 - (v38.y - v58)))
        {
          v68.origin.x = fmin(v38.x, v39.x);
          v68.origin.y = fmin(v38.y, v39.y);
          v68.size.width = vabdd_f64(v38.x, v39.x);
          v68.size.height = vabdd_f64(v38.y, v39.y);
          if (MKMapRectIntersectsRect(v55, v68))
          {
            v40 = [v37 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            Date.timeIntervalSinceReferenceDate.getter();
            v42 = v41;
            v59(v15, v12);
            v43 = v42 - v22;
            [v37 speed];
            v45 = v44;
            Mutable = CGPathCreateMutable();
            v61 = 0;
            v62 = 0;
            v60 = 0x3FF0000000000000;
            v63 = 0x3FF0000000000000;
            v64 = 0;
            v65 = 0;
            CGMutablePathRef.move(to:transform:)();
            CGMutablePathRef.addLine(to:transform:)();
            if (v43 > 5.0)
            {
              sub_1000F24EC(&qword_100AD6560);
              v28 = swift_allocObject();
              *(v28 + 16) = v47;
              *(v28 + 32) = 0;
              *(v28 + 40) = v48;
              v29 = CGPathRef.copy(dashingWithPhase:lengths:transform:)();

              v30 = v51;
              CGContextAddPath(v51, v29);
              CGContextSetLineWidth(v30, v53);
              CGContextSetLineCap(v30, kCGLineCapRound);
              v31 = [objc_opt_self() grayColor];
              v32 = [v31 CGColor];

              CGContextSetStrokeColorWithColor(v30, v32);
              v33 = kCGPathStroke;
            }

            else
            {
              v29 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
              v30 = v51;
              CGContextAddPath(v51, v29);
              v32 = sub_1002A87D8(v45);
              CGContextSetFillColorWithColor(v30, v32);
              v33 = kCGPathFill;
            }

            CGContextDrawPath(v30, v33);
            v12 = v50;
            v27 = v54;
          }

          v19 = v37;
        }

        ++v25;
        v34 = [v37 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        v22 = v35;

        v59(v15, v12);
      }

      while (v24 != v25);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_3;
  }
}

unint64_t sub_1002AABB8()
{
  result = qword_100ADBE68;
  if (!qword_100ADBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBE68);
  }

  return result;
}

uint64_t sub_1002AAC28()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

unint64_t sub_1002AB038()
{
  result = qword_100ADBE70;
  if (!qword_100ADBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBE70);
  }

  return result;
}

id sub_1002AB08C()
{
  v1 = type metadata accessor for LinkAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD50C8);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {
    goto LABEL_4;
  }

  sub_10025E308(v7);

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_100004F84(v7, &qword_100AD50C8);
LABEL_4:
    (*(v12 + 56))(v10, 1, 1, v11, v13);
    goto LABEL_5;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_100004F84(v7, &qword_100AD50C8);
  LinkAssetMetadata.url.getter();
  (*(v2 + 8))(v4, v1);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v20 = [objc_allocWithZone(NSItemProvider) initWithObject:v18];

    (*(v12 + 8))(v15, v11);
    return v20;
  }

LABEL_5:
  sub_100004F84(v10, &unk_100AD6DD0);
  return [objc_allocWithZone(NSItemProvider) init];
}

id sub_1002AB400()
{
  v1 = type metadata accessor for LinkAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD50C8);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  if (!*(v0 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {
    return 0;
  }

  sub_10025E308(v7);

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_100004F84(v7, &qword_100AD50C8);
    return 0;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_100004F84(v7, &qword_100AD50C8);
  v9 = LinkAssetMetadata.data.getter();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [objc_opt_self() metadataWithDataRepresentation:isa];

  sub_1000340DC(v9, v11);
  return v13;
}

void sub_1002AB62C(char a1)
{
  v2 = qword_100B2F5B0;
  v3 = v1[qword_100B2F5B0];
  v1[qword_100B2F5B0] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  static UIView.Invalidating.subscript.setter();
  v5 = v1[v2];
  if (v3 != v5)
  {
    v6 = *&v4[qword_100B2F5A0];
    if (v5)
    {
      v7 = v6;
      v8 = 0;
    }

    else
    {
      v9 = *&v4[qword_100B2F598];
      v10 = v6;
      [v9 zoomScale];
      v8 = v11 <= 1.0;
    }

    sub_100732828(v8, 1);
  }
}

id sub_1002AB720()
{
  v1 = v0;
  v2 = qword_100B2F5A0;
  v3 = *&v0[qword_100B2F5A0];
  v4 = qword_100B2F6F0;
  v5 = *&v1[qword_100B2F6F0];
  v6 = *&v3[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset];
  *&v3[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset] = v5;
  v7 = v5;
  v8 = v3;

  sub_100074F78();
  v9 = *&v1[v2];
  sub_100731F7C();

  LOBYTE(v7) = v1[qword_100B2F5B0];
  v10 = *&v1[v2];
  sub_100732828((v7 & 1) == 0, 0);

  v12 = *&v1[v4];
  if (v12)
  {
    v13 = v12;
    sub_100067B84();
  }

  __chkstk_darwin(v11);
  type metadata accessor for LivePhotoAssetView();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  v15 = v1;
  static UIView.Invalidating.subscript.setter();
  [v15 layoutIfNeeded];
  v16 = *&v15[qword_100B2F598];
  result = [v16 zoomScale];
  if (v18 > 1.0)
  {
    return [v16 setZoomScale:1 animated:1.0];
  }

  return result;
}

char *sub_1002AB954(double a1, double a2, double a3, double a4)
{
  v9 = qword_100ADBE78;
  if (qword_100AD01D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000617C(v10, qword_100B30028);
  (*(*(v10 - 8) + 16))(v4 + v9, v11, v10);
  *(v4 + qword_100B2F6E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_100B2F6F0) = 0;
  v12 = qword_100ADBE80;
  *(v4 + v12) = [objc_allocWithZone(UILabel) init];
  *(v4 + qword_100ADBE88) = 0;
  type metadata accessor for LivePhotoAssetView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = sub_10087224C(v13, a1, a2, a3, a4);
  v15 = v14;
  v16 = *&v14[qword_100B2F5A0];
  v17 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v18 = v16[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v16[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v19 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v16[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v20 = v14;
    v21 = v16;
    v22 = 7;
LABEL_11:
    v26 = *&v16[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v27 = *((swift_isaMask & *v26) + 0x58);
    v28 = v26;
    v27(0, v22);

    sub_100073E04();
    sub_100074D28();
    v16[v19] = 1;

    goto LABEL_12;
  }

  if (v18 > 3 && v18 > 6)
  {
    v31 = v14;

    goto LABEL_12;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v24 = v15;
  v25 = v16;

  if ((v23 & 1) == 0)
  {
    v22 = v16[v17];
    goto LABEL_11;
  }

LABEL_12:
  v29 = qword_100ADBE80;
  [*&v15[qword_100ADBE80] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v15[v29] setAdjustsFontForContentSizeCategory:1];
  [*&v15[v29] setAdjustsFontSizeToFitWidth:1];
  [*&v15[v29] setLineBreakMode:0];
  [*&v15[v29] setNumberOfLines:0];

  return v15;
}

void sub_1002ABD30()
{
  if ((*(v0 + qword_100B2F5B0) & 1) == 0)
  {
    v1 = *(v0 + qword_100B2F5A0);
    v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol] = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v18 = sub_1002AC488;
    v19 = v4;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100006C7C;
    v17 = &unk_100A634A0;
    v5 = _Block_copy(&v14);
    v6 = v1;

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v18 = sub_1002AC494;
    v19 = v8;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10003264C;
    v17 = &unk_100A634F0;
    v9 = _Block_copy(&v14);

    [v2 animateWithDuration:0 delay:v5 options:v9 animations:0.0 completion:0.0];
    _Block_release(v9);
    _Block_release(v5);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset;
      v13 = Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
      Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] = 1;
      if ([Strong isViewLoaded])
      {
        if (v13 != v11[v12])
        {
          sub_10043795C();
        }
      }

      swift_unknownObjectRelease();
    }

    sub_1002AB62C(1);
  }
}

void sub_1002ABFB0()
{
  v1 = qword_100ADBE78;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100038534(v0 + qword_100B2F6E8);

  v3 = *(v0 + qword_100ADBE80);
}

id sub_1002AC048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenLivePhotoCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002AC080(uint64_t a1)
{
  v2 = qword_100ADBE78;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_100038534(a1 + qword_100B2F6E8);

  v4 = *(a1 + qword_100ADBE80);
}

uint64_t type metadata accessor for FullScreenLivePhotoCollectionViewCell()
{
  result = qword_100ADBEB8;
  if (!qword_100ADBEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AC168()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1002AC22C()
{
  v1 = *(*v0 + qword_100B2F5A0);
  v2 = v1;
  return v1;
}

void *sub_1002AC264()
{
  v1 = *(*v0 + qword_100B2F6F0);
  v2 = v1;
  return v1;
}

void sub_1002AC29C()
{
  v1 = *(v0 + qword_100B2F5A0);
  sub_1007313BC();
}

void sub_1002AC2F4()
{
  v1 = *(v0 + qword_100B2F5A0);
  sub_1007313DC();
}

void sub_1002AC350()
{
  v1 = qword_100ADBE78;
  if (qword_100AD01D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_10000617C(v2, qword_100B30028);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  *(v0 + qword_100B2F6E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_100B2F6F0) = 0;
  v4 = qword_100ADBE80;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  *(v0 + qword_100ADBE88) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002AC4A8()
{
  v1 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v1 - 8);
  v3 = v18 - v2;
  v4 = type metadata accessor for UnsupportedEntryMode();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  v18[1] = *(v0 + 32);
  type metadata accessor for JournalEntryMO();
  if (MinimumSupportedVersion.isEditingSupported.getter())
  {
    v11 = 1;
  }

  else
  {
    JournalEntryMO.unsupportedEntryMode.getter();
    v12 = *(v5 + 48);
    if (v12(v3, 1, v4) == 1)
    {
      v13 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v14 = *(v5 + 104);
      v14(v10, enum case for UnsupportedEntryMode.hiddenAll(_:), v4);
      if (v12(v3, 1, v4) != 1)
      {
        sub_1002AC72C(v3);
      }
    }

    else
    {
      (*(v5 + 32))(v10, v3, v4);
      v13 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v14 = *(v5 + 104);
    }

    v14(v8, v13, v4);
    sub_1002AC794();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v10, v4);
    v11 = v15 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1002AC72C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADE5A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002AC794()
{
  result = qword_100ADC210;
  if (!qword_100ADC210)
  {
    type metadata accessor for UnsupportedEntryMode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC210);
  }

  return result;
}

uint64_t sub_1002AC7FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100ADC258);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_1000F24EC(&qword_100ADC260);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10000B58C(&qword_100ADC268, &qword_100ADC260);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 2;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1000F24EC(&qword_100ADC270);
  a1[4] = sub_1002AD32C();
  sub_10001A770(a1);
  sub_10000B58C(&qword_100ADC290, &qword_100ADC258);
  sub_1000B1674();
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1002ACB54()
{
  v0 = sub_1000F24EC(&qword_100ADC240);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFF10 != -1)
  {
    swift_once();
  }

  v8 = sub_10000617C(v0, qword_100B2FAC0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  sub_100027848();
  sub_10002789C();
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v5 + 8))(v7, v4);
  v9 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v9;
}

uint64_t sub_1002ACD78@<X0>(uint64_t *a1@<X8>)
{
  sub_1002AD3E4();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002ACDBC()
{
  result = qword_100ADC218;
  if (!qword_100ADC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC218);
  }

  return result;
}

uint64_t sub_1002ACE10()
{
  v0 = sub_1000F24EC(&qword_100ADC220);
  v1 = *(v0 - 8);
  v36 = v0;
  v37 = v1;
  __chkstk_darwin(v0);
  v34 = &v28 - v2;
  v33 = sub_1000F24EC(&qword_100ADC228);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v28 - v3;
  v4 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000F24EC(&qword_100ADC230);
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Tips.MaxDisplayCount();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100ADC238);
  v29 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v11 + 8))(v13, v10);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v38 = v10;
  v39 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v31;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v38 = v14;
  v39 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v38 = v4;
  v39 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v20 = swift_getOpaqueTypeConformance2();
  v22 = v33;
  v21 = v34;
  v23 = v30;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v38 = v22;
  v39 = v23;
  v40 = v19;
  v41 = v20;
  swift_getOpaqueTypeConformance2();
  v24 = v21;
  v25 = v36;
  v26 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v37 + 8))(v24, v25);
  (*(v35 + 8))(v18, v22);
  (*(v32 + 8))(v9, v23);
  (*(v29 + 8))(v16, v14);
  return v26;
}

unint64_t sub_1002AD32C()
{
  result = qword_100ADC278;
  if (!qword_100ADC278)
  {
    sub_1000F2A18(&qword_100ADC270);
    sub_10000B58C(&qword_100ADC280, &qword_100ADC260);
    sub_1000B15E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC278);
  }

  return result;
}

unint64_t sub_1002AD3E4()
{
  result = qword_100ADC2A0;
  if (!qword_100ADC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC2A0);
  }

  return result;
}

void sub_1002AD438(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_100611D00(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 recordName];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 2);
        v18 = *(v36 + 3);
        if (v19 >= v18 >> 1)
        {
          sub_1001999C0((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 2) = v19 + 1;
        v20 = &v17[2 * v19];
        *(v20 + 4) = v14;
        *(v20 + 5) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1000F24EC(&unk_100ADC2C0);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_10000A96C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_10000A96C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_10000A96C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1002AD7A0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADC2A8);
  v1 = sub_10000617C(v0, qword_100ADC2A8);
  if (qword_100AD01A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002AD868(unint64_t a1)
{
  v2 = sub_1002AE228(&enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:));
  v3 = sub_100890E6C(v2);

  v4 = sub_1002AE228(&enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:));
  v5 = sub_100890E6C(v4);

  v7 = sub_100890E6C(v6);

  v8 = sub_1002AF20C(v3, v7);
  v9 = v8;
  v10 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *(v8 + 16);
  }

  if (v11)
  {
    if (qword_100ACFBD0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100ADC2A8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v83 = v7;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v89 = v16;
      *v15 = 134218242;
      v85 = v5;
      v87 = v3;
      if (v10)
      {
        v17 = __CocoaSet.count.getter();
      }

      else
      {
        v17 = *(v9 + 16);
      }

      *(v15 + 4) = v17;

      *(v15 + 12) = 2080;
      sub_1002AD438(v9);
      v18 = Array.description.getter();
      v20 = v19;

      v21 = sub_100008458(v18, v20, &v89);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Removing %ld records from pending save, as they are now being marked for deletion. IDs: %s", v15, 0x16u);
      sub_10000BA7C(v16);

      v3 = v87;
      v7 = v83;
      v5 = v85;
    }

    else
    {
    }

    v22 = sub_10060FF8C(v9);

    sub_1002AE580(v22);
  }

  sub_1003DE518(v23, v5);
  v25 = v24;

  v27 = sub_100890E6C(v26);

  v28 = sub_1002AE9AC(v25, v27);
  v29 = sub_1002AE9AC(v3, v28);
  v30 = v29;
  v31 = v29 & 0xC000000000000001;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v32 = __CocoaSet.count.getter();
    if (!(a1 >> 62))
    {
      goto LABEL_17;
    }

LABEL_20:
    v33 = v31;
    v34 = v32;
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v34;
    v31 = v33;
    if (v36 == v35)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v32 = *(v29 + 16);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v32 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

    goto LABEL_46;
  }

LABEL_21:
  v88 = v3;

  v38 = sub_100890E6C(v37);

  v39 = sub_1002AF20C(v25, v38);

  if ((v39 & 0xC000000000000001) != 0)
  {
    v86 = v31;
    if (__CocoaSet.count.getter())
    {
LABEL_23:
      if (qword_100ACFBD0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000617C(v40, qword_100ADC2A8);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v84 = v7;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v89 = v44;
        *v43 = 134218242;
        if ((v39 & 0xC000000000000001) != 0)
        {
          v45 = __CocoaSet.count.getter();
        }

        else
        {
          v45 = *(v39 + 16);
        }

        *(v43 + 4) = v45;

        *(v43 + 12) = 2080;
        sub_1002AD438(v39);

        v46 = Array.description.getter();
        v48 = v47;

        v49 = sub_100008458(v46, v48, &v89);

        *(v43 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v41, v42, "Excluded %ld save records from being sent to the sync engine, as they are being marked for deletion. IDs: %s", v43, 0x16u);
        sub_10000BA7C(v44);

        v7 = v84;
      }

      else
      {
      }

      goto LABEL_33;
    }
  }

  else
  {
    v86 = v31;
    if (*(v39 + 16))
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  v50 = sub_1002AF20C(v88, v38);

  if ((v50 & 0xC000000000000001) != 0)
  {
    v51 = __CocoaSet.count.getter();
  }

  else
  {
    v51 = *(v50 + 16);
  }

  v31 = v86;
  if (v51)
  {
    if (qword_100ACFBD0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000617C(v52, qword_100ADC2A8);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v89 = v56;
      *v55 = 134218242;
      v57 = v7;
      if ((v50 & 0xC000000000000001) != 0)
      {
        v58 = __CocoaSet.count.getter();
      }

      else
      {
        v58 = *(v50 + 16);
      }

      *(v55 + 4) = v58;

      *(v55 + 12) = 2080;
      sub_1002AD438(v50);

      v59 = Array.description.getter();
      v61 = v60;

      v62 = sub_100008458(v59, v61, &v89);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "Excluded %ld save records from being sent to the sync engine, as they are already pending save. IDs: %s", v55, 0x16u);
      sub_10000BA7C(v56);

      v7 = v57;
      v31 = v86;
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_46:
  if (qword_100ACFBD0 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_10000617C(v63, qword_100ADC2A8);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v66 = 134218754;
    if (v31)
    {
      v67 = __CocoaSet.count.getter();
    }

    else
    {
      v67 = *(v30 + 16);
    }

    *(v66 + 4) = v67;

    *(v66 + 12) = 2048;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v68 = __CocoaSet.count.getter();
    }

    else
    {
      v68 = *(v7 + 16);
    }

    *(v66 + 14) = v68;

    *(v66 + 22) = 2080;
    sub_1002AD438(v30);
    v69 = v30;
    v70 = v7;
    v71 = Array.description.getter();
    v73 = v72;

    v74 = v71;
    v7 = v70;
    v30 = v69;
    v75 = sub_100008458(v74, v73, &v89);

    *(v66 + 24) = v75;
    *(v66 + 32) = 2080;
    sub_1002AD438(v7);
    v76 = Array.description.getter();
    v78 = v77;

    v79 = sub_100008458(v76, v78, &v89);

    *(v66 + 34) = v79;
    _os_log_impl(&_mh_execute_header, v64, v65, "Adding record zone changes to sync engine:\nSaving %ld records,\nDeleting %ld records,\nSaving IDs: %s\nDeleting IDs: %s", v66, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v80 = sub_10060FF8C(v30);

  v81 = sub_10060FF8C(v7);

  sub_1002AEAA0(v80, v81);
}

double *sub_1002AE228(int *a1)
{
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_syncEngine);
  if (!v10)
  {
    if (qword_100ACFBD0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000617C(v18, qword_100ADC2A8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "The syncEngine has not been initialized yet", v21, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  CKSyncEngine.state.getter();
  v11 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  v29 = _swiftEmptyArrayStorage;
  v12 = *(v11 + 16);
  if (!v12)
  {

    return _swiftEmptyArrayStorage;
  }

  v23[2] = v11;
  v23[3] = v10;
  v14 = *(v4 + 16);
  v13 = v4 + 16;
  v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v26 = *(v13 + 56);
  v27 = v14;
  v16 = *a1;
  v28 = v13;
  v24 = (v13 + 80);
  v25 = (v13 - 8);
  v17 = _swiftEmptyArrayStorage;
  v14(v9, v15, v3);
  while (1)
  {
    (*(v13 + 16))(v6, v9, v3);
    if ((*(v13 + 72))(v6, v3) == v16)
    {
      (*v24)(v6, v3);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23[1] = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v29;
    }

    else
    {
      (*v25)(v6, v3);
    }

    v15 += v26;
    if (!--v12)
    {
      break;
    }

    v27(v9, v15, v3);
  }

  return v17;
}

void sub_1002AE580(unint64_t a1)
{
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = (v25 - v8);
  v10 = *(v1 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_syncEngine);
  if (v10)
  {
    if (a1 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        v26 = a1;
        v29 = _swiftEmptyArrayStorage;

        sub_100199EDC(0, v11 & ~(v11 >> 63), 0);
        if ((v11 & 0x8000000000000000) == 0)
        {
          v25[0] = v10;
          v12 = v29;
          if ((v26 & 0xC000000000000001) != 0)
          {
            v13 = 0;
            LODWORD(v28) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
            v27 = v4 + 32;
            do
            {
              *v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              (*(v4 + 104))(v9, v28, v3);
              v29 = v12;
              v15 = *(v12 + 2);
              v14 = *(v12 + 3);
              if (v15 >= v14 >> 1)
              {
                sub_100199EDC(v14 > 1, v15 + 1, 1);
                v12 = v29;
              }

              ++v13;
              *(v12 + 2) = v15 + 1;
              (*(v4 + 32))(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v9, v3);
            }

            while (v11 != v13);
          }

          else
          {
            v20 = (v26 + 32);
            LODWORD(v28) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
            v26 = *(v4 + 104);
            v27 = v4 + 104;
            v25[1] = v4 + 32;
            do
            {
              v21 = *v20;
              *v6 = *v20;
              (v26)(v6, v28, v3);
              v29 = v12;
              v23 = *(v12 + 2);
              v22 = *(v12 + 3);
              v24 = v21;
              if (v23 >= v22 >> 1)
              {
                sub_100199EDC(v22 > 1, v23 + 1, 1);
                v12 = v29;
              }

              *(v12 + 2) = v23 + 1;
              (*(v4 + 32))(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v6, v3);
              ++v20;
              --v11;
            }

            while (v11);
          }

          goto LABEL_24;
        }

        __break(1u);
        goto LABEL_26;
      }
    }

    v12 = _swiftEmptyArrayStorage;
LABEL_24:
    CKSyncEngine.state.getter();
    CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v12);

    return;
  }

  if (qword_100ACFBD0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000617C(v16, qword_100ADC2A8);
  v28 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v28, v17, "The syncEngine has not been initialized yet", v18, 2u);
  }

  v19 = v28;
}

void *sub_1002AE9AC(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100353DE8(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_10028BAC4(v5, v6);
LABEL_10:

  return sub_10025899C(a1, v2);
}

void sub_1002AEAA0(unint64_t a1, NSObject *a2)
{
  v53 = a2;
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v48 - v7);
  __chkstk_darwin(v9);
  v50 = (&v48 - v10);
  __chkstk_darwin(v11);
  v13 = (&v48 - v12);
  v14 = *(v2 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_syncEngine);
  if (v14)
  {
    if (a1 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v53;
    v51 = v14;
    if (v15)
    {
      v57 = _swiftEmptyArrayStorage;

      sub_100199EDC(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v17 = v57;
      v18 = a1;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        v55 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
        v20 = v56 + 13;
        isa = &v56[4];
        v16 = v53;
        do
        {
          v21 = v18;
          *v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          (v20->isa)(v13, v55, v4);
          v57 = v17;
          v23 = *(v17 + 2);
          v22 = *(v17 + 3);
          if (v23 >= v22 >> 1)
          {
            sub_100199EDC(v22 > 1, v23 + 1, 1);
            v16 = v53;
            v17 = v57;
          }

          ++v19;
          *(v17 + 2) = v23 + 1;
          (v56[4].isa)(v17 + ((LOBYTE(v56[10].isa) + 32) & ~LOBYTE(v56[10].isa)) + v56[9].isa * v23, v13, v4);
          v18 = v21;
        }

        while (v15 != v19);
      }

      else
      {
        v36 = (a1 + 32);
        v55 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
        isa = v56[13].isa;
        v52 = v56 + 4;
        do
        {
          v37 = *v36;
          *v8 = *v36;
          (isa)(v8, v55, v4);
          v57 = v17;
          v39 = *(v17 + 2);
          v38 = *(v17 + 3);
          v40 = v37;
          if (v39 >= v38 >> 1)
          {
            sub_100199EDC(v38 > 1, v39 + 1, 1);
            v17 = v57;
          }

          *(v17 + 2) = v39 + 1;
          (v56[4].isa)(v17 + ((LOBYTE(v56[10].isa) + 32) & ~LOBYTE(v56[10].isa)) + v56[9].isa * v39, v8, v4);
          ++v36;
          --v15;
          v16 = v53;
        }

        while (v15);
      }
    }

    else
    {

      v17 = _swiftEmptyArrayStorage;
    }

    if (v16 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = _swiftEmptyArrayStorage;
    if (!v28)
    {
LABEL_38:
      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v17);

      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v29);

      return;
    }

    v57 = _swiftEmptyArrayStorage;
    sub_100199EDC(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v30 = v4;
      v29 = v57;
      if ((v53 & 0xC000000000000001) != 0)
      {
        v31 = 0;
        v55 = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
        v32 = v56 + 13;
        isa = &v56[4];
        v33 = v50;
        do
        {
          *v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          (v32->isa)(v33, v55, v4);
          v57 = v29;
          v35 = *(v29 + 2);
          v34 = *(v29 + 3);
          if (v35 >= v34 >> 1)
          {
            sub_100199EDC(v34 > 1, v35 + 1, 1);
            v29 = v57;
          }

          ++v31;
          *(v29 + 2) = v35 + 1;
          (v56[4].isa)(v29 + ((LOBYTE(v56[10].isa) + 32) & ~LOBYTE(v56[10].isa)) + v56[9].isa * v35, v33, v4);
        }

        while (v28 != v31);
      }

      else
      {
        v41 = (v53 + 32);
        v55 = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
        v42 = v56[13].isa;
        v52 = v56 + 13;
        v53 = &v56[4];
        isa = v42;
        v43 = v49;
        do
        {
          v44 = *v41;
          *v43 = *v41;
          (isa)(v43, v55, v30);
          v57 = v29;
          v46 = *(v29 + 2);
          v45 = *(v29 + 3);
          v47 = v44;
          if (v46 >= v45 >> 1)
          {
            sub_100199EDC(v45 > 1, v46 + 1, 1);
            v29 = v57;
          }

          *(v29 + 2) = v46 + 1;
          (v56[4].isa)(v29 + ((LOBYTE(v56[10].isa) + 32) & ~LOBYTE(v56[10].isa)) + v56[9].isa * v46, v43, v30);
          ++v41;
          --v28;
        }

        while (v28);
      }

      goto LABEL_38;
    }

    goto LABEL_42;
  }

  if (qword_100ACFBD0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000617C(v24, qword_100ADC2A8);
  v56 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v56, v25, "The syncEngine has not been initialized yet", v26, 2u);
  }

  v27 = v56;
}

void *sub_1002AF17C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_1002AFAA0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1002AF20C(uint64_t a1, Swift::Int a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = __CocoaSet.count.getter();
      a2 = sub_10028BAC4(v4, v5);
      goto LABEL_8;
    }

    sub_1001C324C();
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      v7 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v8 = NSObject._rawHashValue(seed:)(*(a1 + 40)), v9 = -1 << *(a1 + 32), v10 = v8 & ~v9, ((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
        {
          v11 = ~v9;
          while (1)
          {
            v12 = *(*(a1 + 48) + 8 * v10);
            v13 = static NSObject.== infix(_:_:)();

            if (v13)
            {
              break;
            }

            v10 = (v10 + 1) & v11;
            if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v14 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v14)
          {
            sub_10028ED40(v14 + 1);
          }

          sub_10029A8A8(v15, &_swiftEmptySetSingleton);
        }

        else
        {
LABEL_13:
        }
      }

      while (__CocoaSet.Iterator.next()());
    }

    return &_swiftEmptySetSingleton;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_1002AF430(a1, a2);
    }

    return sub_1002AF5D0(a1, a2);
  }
}

uint64_t sub_1002AF430(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_1002AF794(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1002B0090(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

void *sub_1002AF5D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_1002AFAA0((&v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1002AF17C(v12, v6, a2, a1);
  }

  return v10;
}

void sub_1002AF794(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1001C324C();
    sub_1002B00C4();
    Set.Iterator.init(_cocoa:)();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
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

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_28;
    }

    sub_1001C324C();
    swift_dynamicCast();
    v18 = v43;
    v7 = v13;
    v17 = v14;
    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_19:
    v19 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_1001C324C();
    v24 = *(*(a4 + 48) + 8 * v21);
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 | v23;
      v13 = v7;
      v4 = v35;
      v8 = v17;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
      if ((v29 & v23) == 0)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_28:
        sub_100014FF8();

        sub_10065201C(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v26 = ~v20;
      while (1)
      {
        v21 = (v21 + 1) & v26;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v27 = *(*(a4 + 48) + 8 * v21);
        v28 = static NSObject.== infix(_:_:)();

        if (v28)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v4 = v35;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1002AFAA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v51 = 0;
    v25 = 0;
    v47 = v5 + 56;
    v26 = 1 << *(v5 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v5 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = v4 + 56;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
LABEL_34:
      v34 = v31 | (v25 << 6);
      v35 = *(v5 + 48);
      v50 = v34;
      v36 = *(v4 + 40);
      v37 = *(v35 + 8 * v34);
      v38 = NSObject._rawHashValue(seed:)(v36);
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        sub_1001C324C();
        while (1)
        {
          v42 = *(*(v4 + 48) + 8 * v40);
          v43 = static NSObject.== infix(_:_:)();

          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v4 = a4;
          if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v28 = v53;
        v24 = __OFADD__(v51++, 1);
        v5 = a3;
        v4 = a4;
        if (v24)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v28 = v53;
        v5 = a3;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_42;
      }

      v33 = *(v47 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v53 = (v33 - 1) & v33;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 56;
  v46 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(v5 + 40);
    v15 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
    v16 = NSObject._rawHashValue(seed:)(v14);
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) != 0)
    {
      sub_1001C324C();
      v4 = *(*(v5 + 48) + 8 * v18);
      v21 = static NSObject.== infix(_:_:)();

      if ((v21 & 1) == 0)
      {
        v22 = ~v17;
        do
        {
          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v18);
          v4 = static NSObject.== infix(_:_:)();
        }

        while ((v4 & 1) == 0);
      }

      v5 = a3;

      v10 = v46;
      a1[v19] |= v20;
      v9 = v49;
      v24 = __OFADD__(v51++, 1);
      if (v24)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v10 = v46;
      v9 = v49;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_42:

      sub_10065201C(a1, a2, v51, v5);
      return;
    }

    v13 = *(v44 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_1002AFE54(unint64_t a1)
{
  v2 = sub_100363C14(_swiftEmptyArrayStorage);
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v30 = a1;
    while (v32)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_24;
      }

LABEL_7:
      a1 = i;
      v7 = v5;
      v8 = CKRecord.recordType.getter();
      v10 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v2;
      v12 = sub_100094E98(v8, v10);
      v14 = v2[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_26;
      }

      v18 = v13;
      if (v2[3] < v17)
      {
        sub_10081D8B4(v17, isUniquelyReferenced_nonNull_native);
        v12 = sub_100094E98(v8, v10);
        if ((v18 & 1) != (v19 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v18)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v21 = v12;
      sub_1008222E0();
      v12 = v21;
      v2 = v33;
      if (v18)
      {
LABEL_13:
        v20 = v12;

        v12 = v20;
        goto LABEL_20;
      }

LABEL_18:
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v22 = (v2[6] + 16 * v12);
      *v22 = v8;
      v22[1] = v10;
      *(v2[7] + 8 * v12) = 0;
      v23 = v2[2];
      v16 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v16)
      {
        goto LABEL_28;
      }

      v2[2] = v24;
LABEL_20:
      v25 = v2[7];
      v26 = *(v25 + 8 * v12);
      v16 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v16)
      {
        goto LABEL_27;
      }

      i = a1;
      *(v25 + 8 * v12) = v27;

      ++v4;
      v28 = v6 == a1;
      a1 = v30;
      if (v28)
      {
        return v2;
      }
    }

    if (v4 >= *(v31 + 16))
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 8 * v4 + 32);
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return v2;
}

void sub_1002B0090(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1002AF794(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

unint64_t sub_1002B00C4()
{
  result = qword_100AD6FD8;
  if (!qword_100AD6FD8)
  {
    sub_1001C324C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6FD8);
  }

  return result;
}

uint64_t sub_1002B0148(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

char *sub_1002B01F0(unint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for UUID();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v39 - v12;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v50 = a2;
    v45 = v8;
    v46 = a3;
    a3 = 0;
    v14 = a1 & 0xC000000000000001;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = a1 + 32;
    v54 = v53 + 16;
    v56 = (v53 + 8);
    v43 = i;
    v44 = a1;
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v42 = a1 & 0xC000000000000001;
    v40 = a1 + 32;
    while (1)
    {
      if (v14)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a3 >= *(v15 + 16))
        {
          goto LABEL_26;
        }

        v17 = *(v16 + 8 * a3);
      }

      v8 = v17;
      if (__OFADD__(a3++, 1))
      {
        break;
      }

      a2 = [v17 textAttachment];
      swift_getObjectType();
      v19 = swift_conformsToProtocol2();
      if (v19)
      {
        v20 = a2 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v52 = v8;
        v47 = a3;
        v21 = *v50;
        v22 = v19;
        ObjectType = swift_getObjectType();

        v51 = a2;
        v48 = ObjectType;
        v49 = v22;
        dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
        v57 = v21;
        if (!*(v21 + 16) || (v24 = v57, sub_10008D118(&qword_100AD4B40, &type metadata accessor for UUID), v25 = dispatch thunk of Hashable._rawHashValue(seed:)(), v26 = v24 + 56, v27 = -1 << *(v24 + 32), v28 = v25 & ~v27, ((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
        {
LABEL_22:

          v35 = v53;
          (*(v53 + 8))(v58, v9);
          v36 = v45;
          v37 = v51;
          dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();

          (*(v35 + 56))(v36, 0, 1, v9);
          sub_100014318(v36, v46, &qword_100AD1420);
          return v52;
        }

        v29 = ~v27;
        v30 = *(v53 + 72);
        v31 = *(v53 + 16);
        while (1)
        {
          v32 = v55;
          v31(v55, *(v57 + 48) + v30 * v28, v9);
          sub_10008D118(&qword_100AD9220, &type metadata accessor for UUID);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *v56;
          (*v56)(v32, v9);
          if (v33)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v26 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v34(v58, v9);
        i = v43;
        a1 = v44;
        a3 = v47;
        a2 = v51;
        v8 = v52;
        v15 = v41;
        v14 = v42;
        v16 = v40;
      }

      if (a3 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return 0;
}

void sub_1002B0690()
{
  v1 = v0;
  v2 = type metadata accessor for MergeResult();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v78 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000F24EC(&qword_100ADC6F8);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v82 = &v67 - v4;
  v5 = sub_1000F24EC(&qword_100AE4C80);
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = __chkstk_darwin(v5);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v81 = &v67 - v9;
  __chkstk_darwin(v8);
  v84 = &v67 - v10;
  v11 = type metadata accessor for MergeableEntryAttributes();
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD6260);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v67 - v18;
  v20 = sub_1000F24EC(&unk_100AEBE80);
  __chkstk_darwin(v20 - 8);
  v22 = &v67 - v21;
  v23 = type metadata accessor for JournalFeatureFlags();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v26, enum case for JournalFeatureFlags.enhancedSync(_:), v23);
  v27 = JournalFeatureFlags.isEnabled.getter();
  v28 = v26;
  v29 = v1;
  (*(v24 + 8))(v28, v23);
  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

  v30 = [v1 textStorage];
  sub_1000F24EC(&qword_100ADC5F8);
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = *&v29[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
    if (!v32)
    {

      goto LABEL_8;
    }

    v74 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
    v75 = v13;
    v73 = v31;
    v33 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v32 + v33, v19, &qword_100AD6260);
    v34 = v85;
    v35 = (v85 + 6);
    v36 = v85[6];
    if (v36(v19, 1, v11))
    {

      sub_100004F84(v19, &qword_100AD6260);
LABEL_8:
      (*(v86 + 56))(v22, 1, 1, v87);
      sub_100004F84(v22, &unk_100AEBE80);
      goto LABEL_9;
    }

    v70 = v35;
    v71 = v36;
    v37 = v34[2];
    v38 = v75;
    v69 = v34 + 2;
    v68 = v37;
    v37(v75, v19, v11);

    sub_100004F84(v19, &qword_100AD6260);
    v72 = v29;
    MergeableEntryAttributes.text.getter();

    v39 = v34[1];
    v39(v38, v11);
    (*(v86 + 56))(v22, 0, 1, v87);
    sub_100004F84(v22, &unk_100AEBE80);
    v40 = *&v72[v74];
    if (!v40)
    {

      return;
    }

    v41 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v40 + v41, v17, &qword_100AD6260);
    if (v71(v17, 1, v11))
    {

      sub_100004F84(v17, &qword_100AD6260);
      return;
    }

    v85 = v30;
    v42 = v75;
    v68(v75, v17, v11);

    sub_100004F84(v17, &qword_100AD6260);
    v43 = v81;
    MergeableEntryAttributes.text.getter();

    v39(v42, v11);
    v45 = v86;
    v44 = v87;
    (*(v86 + 32))(v84, v43, v87);
    v46 = v73;
    v47 = *((swift_isaMask & *v73) + 0x68);
    swift_beginAccess();
    v48 = *(v45 + 16);
    v48(v83, &v46[v47], v44);
    v49 = v72;
    v50 = [v72 selectedRange];
    v51 = [v49 selectedRange];
    v53 = __OFADD__(v51, v52);
    v54 = &v51[v52];
    if (v53)
    {
      __break(1u);
    }

    else if (v54 >= v50)
    {
      v55 = v87;
      v56 = v83;
      CRAttributedString.cursor(range:)();
      v57 = *(v86 + 8);
      v57(v56, v55);
      v58 = v73;
      v48(v56, &v73[v47], v55);
      swift_beginAccess();
      v59 = v78;
      CRAttributedString.merge(_:)();
      swift_endAccess();
      (*(v79 + 8))(v59, v80);
      sub_1002CF9C4(v56);
      v57(v56, v55);
      v60 = v58 + v47;
      v61 = v82;
      v48(v56, v60, v55);
      v62 = CRAttributedString.range(of:)();
      v64 = v63;
      v66 = v65;
      v57(v56, v55);
      if (v66)
      {
LABEL_20:

        (*(v76 + 8))(v61, v77);
        v57(v84, v87);
        return;
      }

      if (!__OFSUB__(v64, v62))
      {
        [v72 setSelectedRange:{v62, v64 - v62}];
        goto LABEL_20;
      }

LABEL_23:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  sub_1007BCFCC();
}

void sub_1002B1018()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for PaperMarkup();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v16 = *&v0[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
  if (!v16)
  {
    (*(v9 + 56))(v7, 1, 1, v8, v13);
    goto LABEL_7;
  }

  v17 = *&v16[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  v18 = v16;
  v19 = v17;
  dispatch thunk of PaperMarkupViewController.markup.getter();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_7:
    sub_100004F84(v7, &unk_100ADC5E0);
    goto LABEL_8;
  }

  v30 = *(v9 + 32);
  v30(v15, v7, v8);
  PaperMarkup.contentsRenderFrame.getter();
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = 0.0;
  v34.size.height = 0.0;
  if (CGRectEqualToRect(v32, v34) || (PaperMarkup.contentsRenderFrame.getter(), v35.origin.x = CGRectNull.origin.x, v35.origin.y = CGRectNull.origin.y, v35.size.width = CGRectNull.size.width, v35.size.height = CGRectNull.size.height, CGRectEqualToRect(v33, v35)))
  {
    (*(v9 + 8))(v15, v8);
LABEL_8:
    sub_1002B1FB8();
    goto LABEL_9;
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v11, v15, v8);
  type metadata accessor for MainActor();

  v29 = static MainActor.shared.getter();
  v27 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v29;
  *(v28 + 3) = &protocol witness table for MainActor;
  *(v28 + 4) = v26;
  v30(&v28[v27], v11, v8);

  sub_1003E9628(0, 0, v4, &unk_10094C5E0, v28);

  (*(v9 + 8))(v15, v8);
LABEL_9:
  v20 = [v1 textStorage];
  sub_1000F24EC(&qword_100ADC5F8);
  v21 = swift_dynamicCastClass();

  if (!v21)
  {
    v22 = [v1 textStorage];
    [v22 beginEditing];

    v23 = [v1 textStorage];
    v31.value.location = 0;
    v31.value.length = 0;
    v31.is_nil = 1;
    NSMutableAttributedString.ensureListIntegrity(range:)(v31);

    v24 = [v1 textStorage];
    [v24 endEditing];
  }
}

void sub_1002B14BC(void *a1)
{
  v2 = OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas);
  *(v1 + OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas) = a1;
  v8 = a1;

  v4 = *(v1 + v2);
  if (v4 || (sub_1002B1FB8(), (v4 = *(v1 + v2)) != 0))
  {
    v5 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker);
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = v4;
    sub_100498548(v5, Strong);
  }
}

void sub_1002B1568(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADC6A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1000F24EC(&qword_100AE4C80);
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v33 - v10;
  v34 = [v2 textStorage];
  sub_1000F24EC(&qword_100ADC5F8);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = *((swift_isaMask & *v12) + 0x68);
    v14 = v12;
    swift_beginAccess();
    (*(v8 + 16))(v11, &v14[v13], v7);
    v15 = sub_1000F24EC(&qword_100ADC6B0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, a1, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
    swift_beginAccess();
    CRAttributedString.apply(_:)();
    swift_endAccess();
    sub_100004F84(v6, &unk_100ADC6A0);
    sub_1002CF9C4(v11);
    v17 = (*(v8 + 8))(v11, v7);
    if (!*&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas])
    {
LABEL_8:

      return;
    }

    v36 = 0;
    __chkstk_darwin(v17);
    *(&v33 - 2) = v18;
    *(&v33 - 1) = &v36;
    __chkstk_darwin(v19);
    *(&v33 - 2) = sub_1002D8088;
    *(&v33 - 1) = v20;
    v22 = v21;
    v23 = [v2 textStorage];
    v24 = [v23 length];

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v25 = [v2 textStorage];
      v26 = NSParagraphAttachmentAttributeName;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1002D835C;
      *(v27 + 24) = &v33 - 4;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1002D8270;
      *(v28 + 24) = v27;
      aBlock[4] = sub_1002D826C;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007E0A4;
      aBlock[3] = &unk_100A64F68;
      v29 = _Block_copy(aBlock);

      [v25 enumerateAttribute:v26 inRange:0 options:v24 usingBlock:{0, v29}];

      _Block_release(v29);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if ((v36 & 1) == 0)
        {
          sub_1002B30D0(v31);
          sub_1002B14BC(0);
        }

        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v32 = v34;
  }
}

uint64_t sub_1002B1A74()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = v10 - v2;
  Notification.object.getter();
  if (!v12)
  {
    return sub_100004F84(v11, &qword_100AD13D0);
  }

  type metadata accessor for EntryViewModel();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
    if (v5 && v10[1] == v5)
    {
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      type metadata accessor for MainActor();
      swift_retain_n();
      v7 = v0;
      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = &protocol witness table for MainActor;
      v9[4] = v7;
      v9[5] = v5;
      sub_1003E9628(0, 0, v3, &unk_10094C588, v9);
    }

    else
    {
    }
  }

  return result;
}

id sub_1002B1C48()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSMutableAttributedString);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithString:v3];

  v5 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v6 + 16) && (v7 = sub_100051964(NSParagraphStyleAttributeName), (v8 & 1) != 0))
  {
    sub_10000BA20(*(v6 + 56) + 32 * v7, v18);

    sub_10002432C(v18, &v19);
    sub_10000CA14(&v19, v20);
    [v4 addAttribute:NSParagraphStyleAttributeName value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v4, "length")}];
    swift_unknownObjectRelease();
    sub_10000BA7C(&v19);
  }

  else
  {
  }

  v9 = [v1 typingAttributes];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v10 + 16) && (v11 = sub_100051964(NSFontAttributeName), (v12 & 1) != 0))
  {
    sub_10000BA20(*(v10 + 56) + 32 * v11, v18);

    sub_10002432C(v18, &v19);
    sub_10000CA14(&v19, v20);
    [v4 addAttribute:NSFontAttributeName value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v4, "length")}];
    swift_unknownObjectRelease();
    sub_10000BA7C(&v19);
  }

  else
  {
  }

  v13 = [v1 typingAttributes];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v14 + 16) && (v15 = sub_100051964(NSForegroundColorAttributeName), (v16 & 1) != 0))
  {
    sub_10000BA20(*(v14 + 56) + 32 * v15, v18);

    sub_10002432C(v18, &v19);
    sub_10000CA14(&v19, v20);
    [v4 addAttribute:NSForegroundColorAttributeName value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v4, "length")}];
    swift_unknownObjectRelease();
    sub_10000BA7C(&v19);
  }

  else
  {
  }

  return v4;
}

void sub_1002B1FB8()
{
  if ((*(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_ignoreCanvasRemovalRequests) & 1) == 0)
  {
    v4 = v0;
    v5 = OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas;
    v6 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas);
    if (!v6)
    {
      return;
    }

    v7 = OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas;
    v8 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas);
    if (v8)
    {
      type metadata accessor for PaperKitDrawingCanvasView();
      v9 = v8;
      v10 = v6;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        v12 = *(v4 + v7);
        *(v4 + v7) = 0;

        v13 = *(v4 + v7);
        if (v13 || (sub_1002B1FB8(), (v13 = *(v4 + v7)) != 0))
        {
          v14 = *(v4 + OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker);
          Strong = swift_unknownObjectWeakLoadStrong();
          v16 = v13;
          sub_100498548(v14, Strong);
        }
      }
    }

    v17 = *(v4 + v5);
    if (v17)
    {
      v18 = v17;
      v19 = [v18 superview];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 accessibilityElements];

        if (v21)
        {
          v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v23 = *(v22 + 16);
          if (v23)
          {
            v33 = v5;
            v24 = 0;
            v25 = v22 + 32;
            while (v24 < *(v22 + 16))
            {
              sub_10000BA20(v25, v37);
              sub_10000BA20(v37, v36);
              sub_1000065A8(0, &unk_100AD43A0);
              if (swift_dynamicCast())
              {
                v26 = v18;
                v27 = static NSObject.== infix(_:_:)();

                sub_10000BA7C(v37);
                if (v27)
                {

                  v28 = [v26 superview];

                  if (v28)
                  {
                    v29 = [v28 accessibilityElements];
                    if (v29)
                    {
                      v30 = v29;
                      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                      v36[0] = v31;
                      sub_1006916BC(v24, v37);
                      if (v36[0])
                      {
                        v32.super.isa = Array._bridgeToObjectiveC()().super.isa;
                      }

                      else
                      {
                        v32.super.isa = 0;
                      }

                      [v28 setAccessibilityElements:{v32.super.isa, v5}];

                      goto LABEL_38;
                    }

                    [v28 setAccessibilityElements:0];
                  }

                  memset(v37, 0, sizeof(v37));
LABEL_38:
                  sub_100004F84(v37, &qword_100AD13D0);
                  goto LABEL_31;
                }
              }

              else
              {
                sub_10000BA7C(v37);
              }

              ++v24;
              v25 += 32;
              if (v23 == v24)
              {

                goto LABEL_31;
              }
            }

            __break(1u);
            goto LABEL_40;
          }
        }
      }

LABEL_31:
      [v18 removeFromSuperview];

      v17 = *(v4 + v5);
    }

    *(v4 + v5) = 0;

    return;
  }

  if (qword_100ACFBD8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADC2D0);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Ignoring initial canvas removal", v3, 2u);
  }
}

void sub_1002B2438(uint64_t isEscapingClosureAtFileLocation@<X8>)
{
  v3 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v3 - 8);
  v5 = aBlock - v4;
  v6 = type metadata accessor for PaperMarkup();
  v7 = *(*(v6 - 8) + 56);
  v7(isEscapingClosureAtFileLocation, 1, 1, v6);
  v8 = OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas;
  v9 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
  if (v9)
  {
    v9 = [v9 superview];
    if (v9)
    {

      v10 = *&v1[v8];
      if (v10)
      {
        v11 = *&v10[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
        v12 = v10;
        v13 = v11;
        dispatch thunk of PaperMarkupViewController.markup.getter();

LABEL_9:
        sub_100014318(v5, isEscapingClosureAtFileLocation, &unk_100ADC5E0);
        return;
      }

LABEL_8:
      v7(v5, 1, 1, v6);
      goto LABEL_9;
    }
  }

  v14 = __chkstk_darwin(v9);
  aBlock[-2] = v1;
  aBlock[-1] = isEscapingClosureAtFileLocation;
  __chkstk_darwin(v14);
  aBlock[-2] = sub_1002D7FC0;
  aBlock[-1] = v15;
  v16 = [v1 textStorage];
  v17 = [v16 length];

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  v5 = [v1 textStorage];
  v7 = NSParagraphAttachmentAttributeName;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1002D835C;
  *(v18 + 24) = &aBlock[-4];
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1002D8270;
  *(v6 + 24) = v18;
  aBlock[4] = sub_1002D826C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007E0A4;
  aBlock[3] = &unk_100A64EC8;
  v19 = _Block_copy(aBlock);

  [v5 enumerateAttribute:v7 inRange:0 options:v17 usingBlock:{0, v19}];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_8;
  }
}

void sub_1002B279C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = type metadata accessor for CharacterSet();
  v6 = *(v68 - 8);
  __chkstk_darwin(v68);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(type metadata accessor for FollowUpPromptAttachment());

  v10 = sub_10085DEDC(a1, a2);
  v11 = objc_allocWithZone(NSAttributedString);
  v12 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  v14 = v13;
  v15 = sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
  v72 = v14;
  v73 = v15;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v17 = [v11 initWithString:v12 attributes:isa];

  [v10 insertAttributedText:v17];
  [v10 sizeToFit];

  sub_10085E324(a1, a2, v3, v10);
  *&v19 = sub_1002B2ED8(v18);
  v70 = v20;
  v71 = v19;
  v21 = [v3 text];
  if (!v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = String.count.getter();

  v23 = [v3 text];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  LOBYTE(v24) = sub_1005764B4(v25, v27);

  if ((v24 & 1) == 0)
  {
    v29 = [v3 text];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *&v75 = v31;
      *(&v75 + 1) = v33;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_1000777B4();
      v34 = StringProtocol.trimmingCharacters(in:)();
      v36 = v35;
      (*(v6 + 8))(v8, v68);

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      v28 = v37 != 0;
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v28 = 0;
LABEL_9:
  v38 = objc_allocWithZone(type metadata accessor for FollowUpPromptViewTextAttachment());

  v39 = sub_1003EA41C(a1, a2, &_mh_execute_header, 1);
  *&v40.f64[0] = v71;
  *&v40.f64[1] = v70;
  __asm { FMOV            V0.2D, #1.0 }

  v46 = vbslq_s8(vcgtq_f64(v40, _Q0), _Q0, v40);
  __asm { FMOV            V1.2D, #0.25 }

  *&v39[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize] = vbslq_s8(vcgeq_f64(_Q1, v46), _Q1, v46);
  *&v39[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8] = &off_100A63538;
  swift_unknownObjectWeakAssign();
  sub_1000065A8(0, &qword_100ADB9C0);
  v48 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v39];
  if (v28)
  {
    v49 = objc_allocWithZone(NSAttributedString);
    v50 = String._bridgeToObjectiveC()();
    v51 = [v49 initWithString:v50];

    [v48 insertAttributedString:v51 atIndex:0];
  }

  v52 = objc_allocWithZone(NSAttributedString);
  v53 = String._bridgeToObjectiveC()();
  v54 = [v52 initWithString:v53];

  [v48 appendAttributedString:v54];
  v55 = [v3 typingAttributes];
  v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v56 + 16) && (v57 = sub_100051964(NSParagraphStyleAttributeName), (v58 & 1) != 0))
  {
    sub_10000BA20(*(v56 + 56) + 32 * v57, v74);

    sub_10002432C(v74, &v75);
    sub_10000CA14(&v75, v76);
    [v48 addAttribute:NSParagraphStyleAttributeName value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v48, "length")}];
    swift_unknownObjectRelease();
    sub_10000BA7C(&v75);
  }

  else
  {
  }

  v59 = [v3 typingAttributes];
  v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v60 + 16) && (v61 = sub_100051964(NSFontAttributeName), (v62 & 1) != 0))
  {
    sub_10000BA20(*(v60 + 56) + 32 * v61, v74);

    sub_10002432C(v74, &v75);
    sub_10000CA14(&v75, v76);
    [v48 addAttribute:NSFontAttributeName value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v48, "length")}];
    swift_unknownObjectRelease();
    sub_10000BA7C(&v75);
  }

  else
  {
  }

  v63 = v69;
  v64 = [v3 textStorage];
  [v64 insertAttributedString:v48 atIndex:v63];

  [v3 setNeedsLayout];
  v65 = [v3 endOfDocument];
  v66 = [v3 endOfDocument];
  v67 = [v3 textRangeFromPosition:v65 toPosition:v66];

  [v3 setSelectedTextRange:v67];
}

double sub_1002B2ED8(double a1)
{
  [v1 bounds];
  Width = CGRectGetWidth(v9);
  [v1 textContainerInset];
  v5 = Width - v4;
  [v1 textContainerInset];
  v7 = fmax(a1 / (v5 - v6), 0.25);
  [v1 bounds];
  CGRectGetWidth(v10);
  [v1 textContainerInset];
  [v1 textContainerInset];
  return v7;
}

uint64_t sub_1002B2F9C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADC2D0);
  sub_10000617C(v0, qword_100ADC2D0);
  return Logger.init(subsystem:category:)();
}

void sub_1002B30D0(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
    v5 = *&v3[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
    v6 = v3;
    v7 = [v5 view];
    if (!v7)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = sub_100544E50();
    [v9 setVisible:0 forFirstResponder:v8];

    v10 = v4 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v4, 0, ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }

  __chkstk_darwin(a1);
  v29[6] = v2;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v29[2] = sub_1002D3754;
  v29[3] = v15;
  v16 = [v2 textStorage];
  v17 = [v16 length];

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = [v2 textStorage];
  v19 = NSParagraphAttachmentAttributeName;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1002D835C;
  *(v20 + 24) = v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002D8270;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1002D826C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007E0A4;
  aBlock[3] = &unk_100A63F28;
  v22 = _Block_copy(aBlock);

  [v18 enumerateAttribute:v19 inRange:0 options:v17 usingBlock:{0, v22}];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
  v25 = sub_100544E50();
  [v25 setVisible:0 forFirstResponder:v2];

  v26 = v24 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v26 + 8);
    v28 = swift_getObjectType();
    (*(v27 + 8))(v24, 0, v28, v27);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1002B3464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B34FC, v7, v6);
}

void sub_1002B34FC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);

  *(v0 + 64) = _swiftEmptyArrayStorage;
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 64;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1002D375C;
  *(v4 + 24) = v3;
  v5 = [v2 textStorage];
  v6 = [v5 length];

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = [*(v0 + 72) textStorage];
  v8 = NSParagraphAttachmentAttributeName;
  v22 = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002D835C;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002D8270;
  *(v10 + 24) = v9;
  *(v0 + 48) = sub_1002D826C;
  *(v0 + 56) = v10;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10007E0A4;
  *(v0 + 40) = &unk_100A63FA0;
  v11 = _Block_copy((v0 + 16));

  [v7 enumerateAttribute:v8 inRange:0 options:v22 usingBlock:{0, v11}];

  _Block_release(v11);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (*(*(v0 + 64) + 16))
  {
    v13 = [*(v0 + 72) textStorage];
    [v13 beginEditing];

    v14 = *(v0 + 64);
    v15 = *(v14 + 16);
    if (v15)
    {

      v16 = (v14 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        v19 = [*(v0 + 72) textStorage];
        [v19 removeAttribute:v8 range:{v17, v18}];

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    v20 = [*(v0 + 72) textStorage];
    [v20 endEditing];
  }

  v21 = *(v0 + 8);

  v21();
}

void sub_1002B383C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  type metadata accessor for ResizableAssetViewTextAttachment();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = *(a4 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
    __chkstk_darwin(v10);
    v21[2] = v12;
    v13 = a1;

    v14 = sub_100068DDC(sub_100069618, v21, v11);

    if (v14)
    {
    }

    else
    {
      v15 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1003E5668(0, *(v15 + 2) + 1, 1, v15);
        *a5 = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        *a5 = sub_1003E5668((v17 > 1), v18 + 1, 1, v15);
      }

      v19 = *a5;
      *(v19 + 2) = v18 + 1;
      v20 = &v19[16 * v18];
      *(v20 + 4) = a2;
      *(v20 + 5) = a3;
    }
  }
}

uint64_t sub_1002B3AA4(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;

  if (![v3 isEditable])
  {
    goto LABEL_9;
  }

  v12 = [v3 beginningOfDocument];
  v13 = [a1 start];
  v36 = a1;
  v14 = [a1 end];
  v15 = [v3 offsetFromPosition:v12 toPosition:v13];
  v16 = [v3 offsetFromPosition:v13 toPosition:v14];

  v17 = [v3 textStorage];
  result = [v17 string];
  if (result)
  {
    v19 = result;

    v20 = [v19 paragraphRangeForRange:{v15, v16}];
    v22 = v21;

    v38 = 0;
    v23 = [v3 textStorage];
    v24 = NSParagraphAttachmentAttributeName;
    v25 = swift_allocObject();
    *(v25 + 16) = &v38;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1002D8340;
    *(v26 + 24) = v25;
    aBlock[4] = sub_1002D826C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007E0A4;
    aBlock[3] = &unk_100A64E28;
    v27 = _Block_copy(aBlock);

    [v23 enumerateAttribute:v24 inRange:v20 options:v22 usingBlock:{0, v27}];

    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v29 = v38;

      if (v29)
      {

LABEL_8:
        a1 = v36;
LABEL_9:
        sub_1000065A8(0, &unk_100ADC630);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v33 = type metadata accessor for CanvasTextView();
        v39.receiver = v3;
        v39.super_class = v33;
        v34 = objc_msgSendSuper2(&v39, "editMenuForTextRange:suggestedActions:", a1, isa);

        return v34;
      }

      sub_1000065A8(0, &qword_100AD4420);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v30 = String._bridgeToObjectiveC()();
      v31 = [objc_opt_self() systemImageNamed:v30];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      isEscapingClosureAtFileLocation = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      if (!(a2 >> 62))
      {
LABEL_7:
        sub_1002069B8(0, 0, isEscapingClosureAtFileLocation);

        goto LABEL_8;
      }
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002B3FE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong textStorage], v1, v3 = objc_msgSend(v2, "length"), v2, !v3))
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v5 = v6;
    sub_1002B40C8();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return;
    }

    v5 = v4;
    sub_1002B4C98();
  }
}

void sub_1002B40C8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v94 - v6;
  __chkstk_darwin(v8);
  v10 = &v94 - v9;
  v11 = type metadata accessor for PaperMarkup();
  v103 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v94 - v15;
  v16 = type metadata accessor for JournalFeatureFlags();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, enum case for JournalFeatureFlags.richCanvas(_:), v16, v18);
  v21 = JournalFeatureFlags.isEnabled.getter();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    return;
  }

  v22 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
  v23 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (!v23)
  {
    return;
  }

  if ((sub_10029EF80() & 1) != 0 && *&v1[v22])
  {

    v24 = sub_10029EF80();
    if ((v24 & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    v100 = &v94;
    v101 = v23;
    __chkstk_darwin(v24);
    *(&v94 - 2) = v1;
    *&v26 = __chkstk_darwin(v25).n128_u64[0];
    *(&v94 - 2) = sub_1002D3764;
    *(&v94 - 1) = v27;
    v28 = [v1 textStorage];
    v29 = [v28 length];

    v99 = v29;
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v97 = [v1 textStorage];
    v98 = NSParagraphAttachmentAttributeName;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1002D835C;
    *(v30 + 24) = &v94 - 4;
    v31 = v30;
    v96 = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1002D8270;
    *(v32 + 24) = v31;
    aBlock[4] = sub_1002D826C;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007E0A4;
    aBlock[3] = &unk_100A64018;
    v33 = _Block_copy(aBlock);

    v34 = v97;
    [v97 enumerateAttribute:v98 inRange:0 options:v99 usingBlock:{0, v33}];

    _Block_release(v33);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    v23 = v101;
    if (v34)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

LABEL_10:
  v35 = &unk_100AE5000;
  if ((sub_10029EF80() & 1) == 0)
  {
    v36 = [v1 textStorage];
    v37 = [v36 length];

    if (v37)
    {
      goto LABEL_19;
    }
  }

  v101 = v23;
  v38 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
  if (!v38)
  {
LABEL_18:
    (*(v103 + 56))(v4, 1, 1, v11);

    sub_100004F84(v4, &unk_100ADC5E0);
    goto LABEL_19;
  }

  v99 = v13;
  v100 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v39 = *&v38[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  v40 = v38;
  v41 = v39;
  dispatch thunk of PaperMarkupViewController.markup.getter();

  v42 = v103;
  v43 = *(v103 + 48);
  if (v43(v10, 1, v11) == 1)
  {

    sub_100004F84(v10, &unk_100ADC5E0);
LABEL_17:
    v35 = &unk_100AE5000;
    goto LABEL_18;
  }

  v98 = v43;
  v44 = v102;
  v96 = *(v42 + 32);
  v97 = (v42 + 32);
  v96(v102, v10, v11);
  if ([v40 isFirstResponder])
  {
    (*(v42 + 8))(v44, v11);

    goto LABEL_17;
  }

  v94 = v40;
  v95 = v11;
  v64 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
  v65 = sub_100544E50();
  v66 = [v65 isVisible];

  v67 = v100;
  v68 = *(v100 + v38);
  if (!v66)
  {
    v77 = v68;
    dispatch thunk of PaperMarkupViewController.markup.getter();

    v78 = v95;
    if (v98(v7, 1, v95) == 1)
    {
      sub_100004F84(v7, &unk_100ADC5E0);
      v79 = v103;
    }

    else
    {
      v80 = v99;
      v96(v99, v7, v78);
      PaperMarkup.contentsRenderFrame.getter();
      v107.origin.x = 0.0;
      v107.origin.y = 0.0;
      v107.size.width = 0.0;
      v107.size.height = 0.0;
      if (!CGRectEqualToRect(v105, v107))
      {
        PaperMarkup.contentsRenderFrame.getter();
        v108.origin.x = CGRectNull.origin.x;
        v108.origin.y = CGRectNull.origin.y;
        v108.size.width = CGRectNull.size.width;
        v108.size.height = CGRectNull.size.height;
        if (!CGRectEqualToRect(v106, v108))
        {
          v84 = [*(v67 + v38) view];
          if (!v84)
          {
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v85 = v84;
          [v84 becomeFirstResponder];

          v86 = [*(v67 + v38) view];
          if (!v86)
          {
LABEL_59:
            __break(1u);
            return;
          }

          v87 = v86;
          v88 = sub_100544E50();
          [v88 setVisible:1 forFirstResponder:v87];

          v89 = v64 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v90 = *(v89 + 8);
            ObjectType = swift_getObjectType();
            (*(v90 + 8))(v64, 1, ObjectType, v90);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v92 = *(v103 + 8);
          v93 = v95;
          v92(v80, v95);
          v92(v102, v93);
          return;
        }
      }

      v79 = v103;
      v78 = v95;
      (*(v103 + 8))(v80, v95);
    }

    v81 = v102;
    (*(v79 + 16))(v4, v102, v78);
    (*(v79 + 56))(v4, 0, 1, v78);
    v82 = v79;
    v83 = sub_1002B5D1C(v4, 0);

    sub_100004F84(v4, &unk_100ADC5E0);
    (*(v82 + 8))(v81, v78);
    v35 = &unk_100AE5000;
LABEL_19:
    v45 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas];
    if (!v45)
    {
      if (sub_1002BC3E8())
      {
        v58 = sub_100544E50();
        v59 = [v58 isVisible];

        if (v59)
        {
          v61 = sub_1002B7540(0);
          sub_1002B30D0(v61);
        }

        else
        {
          sub_1002BC734(v60);
        }
      }

      else
      {
        sub_1002BCAA8(1);
      }

LABEL_36:
      v75 = [v1 undoManager];
      if (v75)
      {
        v76 = v75;
        sub_10012ACEC();
      }

      return;
    }

    v46 = v45;
    sub_1004978F8();
    v47 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
    v48 = sub_100544E50();
    v49 = v35;
    v50 = [v48 isVisible];

    v51 = v49[63];
    v52 = [*&v46[v51] view];
    if (v52)
    {
      v53 = v52;
      v54 = sub_100544E50();
      [v54 setVisible:v50 ^ 1 forFirstResponder:v53];

      v55 = v47 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v56 = *(v55 + 8);
        v57 = swift_getObjectType();
        (*(v56 + 8))(v47, v50 ^ 1, v57, v56);
        swift_unknownObjectRelease();
      }

      if (v50)
      {
        [v1 becomeFirstResponder];

        goto LABEL_36;
      }

      v62 = [*&v46[v51] view];
      if (v62)
      {
        v63 = v62;
        [v62 becomeFirstResponder];

        goto LABEL_36;
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v69 = [v68 view];
  if (!v69)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v70 = v69;
  v71 = sub_100544E50();
  [v71 setVisible:0 forFirstResponder:v70];

  v72 = v64 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v73 = *(v72 + 8);
    v74 = swift_getObjectType();
    (*(v73 + 8))(v64, 0, v74, v73);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v103 + 8))(v102, v95);
}

void sub_1002B4C98()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v25 - v3;
  if ([v0 isFirstResponder])
  {
    v5 = [v0 textStorage];
    v6 = [v5 length];

    if (v6 >= 1)
    {
      v7 = [v0 selectedTextRange];
      if (v7)
      {
        v8 = v7;
        v9 = [v0 beginningOfDocument];
        v10 = [v8 start];
        v11 = [v8 end];
        v12 = [v0 offsetFromPosition:v9 toPosition:v10];
        v13 = [v0 offsetFromPosition:v10 toPosition:v11];

        [v0 bounds];
        Width = CGRectGetWidth(v26);
        [v0 textContainerInset];
        v16 = Width - v15;
        [v0 textContainerInset];
        v18 = sub_1002B2ED8(v16 - v17);
        v20 = v19;
        v21 = type metadata accessor for TaskPriority();
        (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v23 = static MainActor.shared.getter();
        v24 = swift_allocObject();
        *(v24 + 2) = v23;
        *(v24 + 3) = &protocol witness table for MainActor;
        *(v24 + 4) = v22;
        *(v24 + 5) = v12;
        *(v24 + 6) = v13;
        v24[7] = v18;
        *(v24 + 8) = v20;

        sub_1003E9628(0, 0, v4, &unk_10094C578, v24);
      }
    }
  }
}

void sub_1002B5090(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for PaperMarkup();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for JournalFeatureFlags();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 isEditable] != v3)
  {
    (*(v6 + 104))(v9, enum case for JournalFeatureFlags.enhancedSync(_:), v5);
    v10 = JournalFeatureFlags.isEnabled.getter();
    (*(v6 + 8))(v9, v5);
    if (v10)
    {
      if (*&v2[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry])
      {

        v11 = [v2 textStorage];
        sub_1000F24EC(&qword_100ADC5F8);
        v12 = swift_dynamicCastClass();
        if (!v12)
        {

          return;
        }

        v13 = v12;
        sub_100086C04(v12 + *((swift_isaMask & *v12) + 0x78), &aBlock);
        sub_1000F24EC(&qword_100ADC600);
        type metadata accessor for CustomAttributeProviderConcrete();
        if ((swift_dynamicCast() & 1) == 0)
        {

LABEL_24:

          return;
        }

        v52 = v11;
        v14 = v61;
        v15 = OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas;
        v16 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
        if (v16)
        {
          v17 = v16;
          v18 = [v2 isEditable];
          v17[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowDrawing] = v18;
          v19 = *&v17[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
          dispatch thunk of PaperMarkupViewController.isEditable.setter();
        }

        if (([v2 isEditable] & 1) == 0)
        {
          v20 = *&v2[v15];
          if (v20)
          {
            v21 = *&v20[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
            v22 = v20;
            v23 = v21;
            PaperMarkup.init(bounds:)();
            dispatch thunk of PaperMarkupViewController.selectedMarkup.setter();
          }
        }

        v24 = [v2 isEditable];
        v54 = v51;
        v25 = 0x100010001;
        if (!v24)
        {
          v25 = 0;
        }

        v51[1] = v14;
        v26 = v14 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
        *v26 = v25;
        *(v26 + 4) = WORD2(v25);
        __chkstk_darwin(v24);
        v51[-2] = v2;
        *&v28 = __chkstk_darwin(v27).n128_u64[0];
        v51[-2] = sub_1002D7EC4;
        v51[-1] = v29;
        v30 = [v2 textStorage];
        v31 = [v30 length];

        v53 = v31;
        if ((v31 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v32 = [v2 textStorage];
          v33 = NSParagraphAttachmentAttributeName;
          v34 = swift_allocObject();
          *(v34 + 16) = sub_1002D835C;
          *(v34 + 24) = &v51[-4];
          v35 = swift_allocObject();
          *(v35 + 16) = sub_1002D8270;
          *(v35 + 24) = v34;
          v59 = sub_1002D826C;
          v60 = v35;
          aBlock = _NSConcreteStackBlock;
          v56 = 1107296256;
          v57 = sub_10007E0A4;
          v58 = &unk_100A64D38;
          v36 = _Block_copy(&aBlock);

          v51[0] = v33;
          [v32 enumerateAttribute:v33 inRange:0 options:v53 usingBlock:{0, v36}];

          _Block_release(v36);
          LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

          if ((v33 & 1) == 0)
          {
            v37 = sub_10029EF80();
            if ((v37 & 1) == 0)
            {
LABEL_18:
              if (([v2 isEditable] & 1) == 0)
              {
                v48 = sub_100544E50();
                v49 = [v48 isVisible];

                if (v49)
                {
                  sub_1002B30D0(v50);
                }
              }

              goto LABEL_24;
            }

            __chkstk_darwin(v37);
            v51[-2] = v13;
            v51[-1] = v2;
            *&v39 = __chkstk_darwin(v38).n128_u64[0];
            v51[-2] = sub_1002D7ECC;
            v51[-1] = v40;
            v41 = [v2 textStorage];
            v42 = [v41 length];

            if ((v42 & 0x8000000000000000) == 0)
            {
              v43 = [v2 textStorage];
              v44 = swift_allocObject();
              *(v44 + 16) = sub_1002D835C;
              *(v44 + 24) = &v51[-4];
              v45 = swift_allocObject();
              *(v45 + 16) = sub_1002D8270;
              *(v45 + 24) = v44;
              v59 = sub_1002D826C;
              v60 = v45;
              aBlock = _NSConcreteStackBlock;
              v56 = 1107296256;
              v57 = sub_10007E0A4;
              v58 = &unk_100A64DB0;
              v46 = _Block_copy(&aBlock);

              [v43 enumerateAttribute:v51[0] inRange:0 options:v42 usingBlock:{0, v46}];

              _Block_release(v46);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if ((isEscapingClosureAtFileLocation & 1) == 0)
              {
                goto LABEL_18;
              }

LABEL_29:
              __break(1u);
              return;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }
  }
}

void sub_1002B5840(uint64_t a1, int a2, int a3, id a4)
{
  [a4 isEditable];
  v6 = sub_1007C8C2C();
  if (v6)
  {
    type metadata accessor for DrawingAssetView();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  sub_1007C8B44();
  if ([a4 isEditable])
  {
    sub_1002D2548(a4, a1);
    v9 = sub_1007C8C2C();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    sub_1007C927C();
    v9 = sub_1007C8C2C();
    if (!v9)
    {
      return;
    }
  }

  v10 = v9;
  [v9 setUserInteractionEnabled:{objc_msgSend(a4, "isEditable")}];
}

void sub_1002B5964(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for PaperMarkup();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResizableAssetViewTextAttachment();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    return;
  }

  v34 = a5;
  v19 = *(v18 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v19 && (v20 = *(v19 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v21 = *(v20 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v22 = a1;
    v35 = v21;
  }

  else
  {
    v33 = a1;
    v23 = sub_1007C8890();
    v24 = *&v23[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v35 = v24;

    if (!v24)
    {
      v30 = v33;
LABEL_13:

      return;
    }
  }

  type metadata accessor for DrawingAssetView();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    v30 = v35;
    goto LABEL_13;
  }

  v26 = *(v25 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
  if (!v26)
  {

    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_17;
  }

  v27 = *&v26[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  v28 = v26;
  v29 = v27;
  dispatch thunk of PaperMarkupViewController.markup.getter();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

LABEL_17:
    sub_100004F84(v13, &unk_100ADC5E0);
    return;
  }

  (*(v15 + 32))(v17, v13, v14);
  [a4 deleteCharactersInRange:{0, objc_msgSend(a4, "length")}];
  (*(v15 + 16))(v10, v17, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  v31 = sub_1002B5D1C(v10, 0);

  sub_100004F84(v10, &unk_100ADC5E0);
  (*(v15 + 8))(v17, v14);
}

id sub_1002B5D1C(uint64_t a1, char a2)
{
  v3 = v2;
  v84 = a1;
  v5 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v79 - v6;
  v8 = type metadata accessor for PaperMarkup();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for JournalFeatureFlags.richCanvas(_:), v12);
  v16 = JournalFeatureFlags.isEnabled.getter();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = [v3 superview];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  sub_1002B1FB8();
  if ((a2 & 1) == 0 && (v19 = [v3 textStorage], v20 = objc_msgSend(v19, "length"), v19, v20) || (v21 = *(v9 + 48), v21(v84, 1, v8) == 1) && *(v3 + OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas))
  {
    v22 = 0;
  }

  else
  {
    v81 = v21;
    v82 = v9 + 48;
    v23 = type metadata accessor for PaperKitDrawingCanvasView();
    v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v24 setAccessibilityElementsHidden:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v22 = v24;
    [v18 addSubview:v22];
    v26 = v18;
    v27 = [v26 accessibilityElements];
    v80 = v9;
    v83 = v26;
    if (v27)
    {
      v28 = v27;
      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v86 = v23;
      *&v85 = v22;
      v30 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10005DA70(0, *(v29 + 16) + 1, 1, v29);
      }

      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_10005DA70((v31 > 1), v32 + 1, 1, v29);
      }

      *(v29 + 16) = v32 + 1;
      sub_10002432C(&v85, (v29 + 32 * v32 + 32));
      isa = Array._bridgeToObjectiveC()().super.isa;

      v34 = v83;
      [v83 setAccessibilityElements:isa];
    }

    else
    {
      [v26 setAccessibilityElements:0];
    }

    v35 = [v22 superview];
    v36 = &selRef_setSuggestedName_;
    if (v35)
    {
      v37 = v35;
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      v38 = [v22 leadingAnchor];
      v39 = [v37 safeAreaLayoutGuide];
      v40 = [v39 leadingAnchor];

      v41 = [v38 constraintEqualToAnchor:v40];
      v36 = &selRef_setSuggestedName_;
      [v41 setConstant:0.0];
      [v41 setActive:1];
    }

    v42 = [v22 superview];
    if (v42)
    {
      v43 = v42;
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      v44 = [v22 trailingAnchor];
      v79 = v7;
      v45 = v8;
      v46 = v11;
      v47 = v36;
      v48 = v44;
      v49 = [v43 safeAreaLayoutGuide];
      v50 = [v49 trailingAnchor];

      v51 = [v48 constraintEqualToAnchor:v50];
      v36 = v47;
      v11 = v46;
      v8 = v45;
      v7 = v79;

      [v51 setConstant:0.0];
      [v51 v36[263]];
    }

    v52 = sub_100028DA0(0, 1, 0.0);
    v18 = v52;
    if (v52)
    {
      LODWORD(v53) = 1132068864;
      [v52 setPriority:v53];
    }

    v54 = *(v3 + OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView);
    if (v54)
    {
      v55 = v54;
      v56 = [v3 traitCollection];
      [v56 displayScale];
      v58 = v57;

      if (v58 < 1.0)
      {
        v59 = -1.0;
      }

      else
      {
        v59 = -v58;
      }

      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      v60 = [v22 topAnchor];
      v61 = [v55 bottomAnchor];
      v62 = [v60 constraintEqualToAnchor:v61];

      [v62 setConstant:v59];
      [v62 setActive:1];
    }

    else
    {
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      v63 = [v22 topAnchor];
      v64 = [v83 topAnchor];
      v62 = [v63 constraintEqualToAnchor:v64 constant:0.0];

      [v62 v36[263]];
    }

    v65 = *(v3 + OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas);
    *(v3 + OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas) = v22;
    v66 = v22;

    v67 = [v3 backgroundColor];
    v68 = *&v66[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_opaqueColor];
    *&v66[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_opaqueColor] = v67;

    *&v66[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate + 8] = &off_100A63588;
    v69 = swift_unknownObjectWeakAssign();
    v66[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_tapToDismiss] = 1;
    v66[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowContentGrowth] = (*((swift_isaMask & *v3) + 0x350))(v69) & 1;
    v66[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_allowContentZoom] = (*((swift_isaMask & *v3) + 0x358))() & 1;
    v66[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_hasFixedHeight] = (*((swift_isaMask & *v3) + 0x360))() & 1;
    *&v66[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_maxZoomRange] = (*((swift_isaMask & *v3) + 0x368))();
    [v66 setUserInteractionEnabled:(*((swift_isaMask & *v3) + 0x370))() & 1];

    sub_1000082B4(v84, v7, &unk_100ADC5E0);
    LODWORD(v65) = v81(v7, 1, v8);

    if (v65 == 1)
    {
      sub_100004F84(v7, &unk_100ADC5E0);
      v70 = sub_100544E50();
      v71 = [v70 selectedToolItem];

      objc_opt_self();
      v72 = swift_dynamicCastObjCClass() == 0;

      [v66 setUserInteractionEnabled:v72];
    }

    else
    {
      v73 = v80;
      (*(v80 + 32))(v11, v7, v8);
      sub_10049862C(v11);
      v74 = [v3 backgroundColor];
      [v66 setBackgroundColor:v74];

      (*(v73 + 8))(v11, v8);
    }

    [v3 resignFirstResponder];
    v75 = v66;
    sub_1002B14BC(v22);
    [v75 becomeFirstResponder];
    v76 = [v3 undoManager];
    if (v76)
    {
      v77 = v76;
      sub_10012ACEC();
    }
  }

  return v22;
}

id sub_1002B68C4()
{
  v1 = &v0[OBJC_IVAR____TtC7Journal14CanvasTextView_lastAppliedContentSize];
  if ((v0[OBJC_IVAR____TtC7Journal14CanvasTextView_lastAppliedContentSize + 16] & 1) == 0)
  {
    v2 = *v1;
    v3 = v1[1];
    [v0 bounds];
    Height = CGRectGetHeight(v13);
    [v0 adjustedContentInset];
    v6 = Height - v5;
    [v0 adjustedContentInset];
    if (v3 > v6 - v7)
    {
      v8 = v3;
    }

    else
    {
      v8 = v6 - v7;
    }

    v11.receiver = v0;
    v11.super_class = type metadata accessor for CanvasTextView();
    objc_msgSendSuper2(&v11, "setContentSize:", v2, v8);
  }

  v9 = type metadata accessor for CanvasTextView();
  v12.receiver = v0;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "adjustedContentInsetDidChange");
}

void sub_1002B69D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_1000082B4(a1, v25, &qword_100AD13D0);
  if (!v26)
  {
    sub_100004F84(v25, &qword_100AD13D0);
    return;
  }

  type metadata accessor for ResizableViewTextAttachment();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v12 = v24[1];
  type metadata accessor for FollowUpPromptViewTextAttachment();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    v16 = sub_1007C8C2C();
    if (!v16)
    {

      goto LABEL_9;
    }

    v12 = v16;
    type metadata accessor for FollowUpPromptAttachment();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
      type metadata accessor for MainActor();
      v20 = v15;
      v15 = v12;
      v21 = a5;
      v22 = static MainActor.shared.getter();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = &protocol witness table for MainActor;
      v23[4] = v14;
      v23[5] = v18;
      v23[6] = v21;
      v23[7] = v20;
      v23[8] = a2;
      v23[9] = a3;
      sub_1003E9628(0, 0, v11, &unk_10094C568, v23);

LABEL_9:

      return;
    }
  }
}

uint64_t sub_1002B6C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B6CCC, v10, v9);
}

uint64_t sub_1002B6CCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = v2 + OBJC_IVAR____TtC7Journal32FollowUpPromptViewTextAttachment_followUpPrompt;
  v5 = *(v2 + OBJC_IVAR____TtC7Journal32FollowUpPromptViewTextAttachment_followUpPrompt);
  v6 = *(v4 + 8);

  sub_10085E324(v5, v6, v1, v3);
  v8 = v7;
  v10 = v9;

  v11 = sub_1002B2ED8(v8);
  v13 = v12;
  [v1 bounds];
  Width = CGRectGetWidth(v25);
  [v1 textContainerInset];
  v16 = Width - v15;
  [v1 textContainerInset];
  sub_1007C8F34(1, v11, v13, v16 - v17);
  [v3 setBounds:{0.0, 0.0, v8, v10}];
  v18 = [v1 textLayoutManager];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1000F59DC(*(v0 + 48), *(v0 + 56));

    if (v20)
    {
      v21 = [*(v0 + 32) textLayoutManager];
      [v21 invalidateLayoutForRange:v20];
    }
  }

  v22 = *(v0 + 8);

  return v22();
}

void sub_1002B6E88(char *a1, uint64_t a2, uint64_t a3, char *a4, char a5)
{
  sub_1002B6FFC(a1, *&a1[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize], *&a1[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize + 8]);
  *&a1[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8] = &off_100A63538;
  swift_unknownObjectWeakAssign();
  if (a5)
  {
    sub_1002D2548(a4, a1);
    v8 = sub_1007C8C2C();
    if (v8)
    {
      v17 = v8;
      type metadata accessor for DrawingAssetView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView;
        v12 = *(v9 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
        if (v12)
        {
          *(v12 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate + 8) = &off_100A63588;
          swift_unknownObjectWeakAssign();
        }

        v13 = *&a4[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v15 = *(v10 + v11);
        if (v15)
        {
          v16 = v15;
          sub_100498548(v13, Strong);
        }
      }
    }
  }

  else
  {
    sub_1007C927C();
  }
}

void sub_1002B6FFC(void *a1, double a2, double a3)
{
  v4 = v3;
  [v3 bounds];
  Width = CGRectGetWidth(v30);
  [v3 textContainerInset];
  v10 = Width - v9;
  [v3 textContainerInset];
  if (sub_1007C8F34(a2 > 0.75, a2, a3, v10 - v11))
  {
    v12 = [v3 textLayoutManager];
    if (v12)
    {
      v13 = v12;
      v14 = [v3 textStorage];
      v15 = [v14 length];

      if (v15 < 0)
      {
        goto LABEL_11;
      }

      v16 = sub_1000F59DC(0, v15);

      if (v16)
      {
        v17 = [v4 textLayoutManager];
        [v17 invalidateLayoutForRange:v16];

        v18 = [v4 textLayoutManager];
        [v18 invalidateRenderingAttributesForTextRange:v16];
      }
    }

    v19 = [v4 textStorage];
    v20 = NSParagraphAttachmentAttributeName;
    v21 = [v4 textStorage];
    v22 = [v21 length];

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      *(v23 + 24) = v4;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_1002D374C;
      *(v24 + 24) = v23;
      v29[4] = sub_1002D826C;
      v29[5] = v24;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 1107296256;
      v29[2] = sub_10007E0A4;
      v29[3] = &unk_100A63E38;
      v25 = _Block_copy(v29);
      v26 = a1;
      v27 = v4;

      [v19 enumerateAttribute:v20 inRange:0 options:v22 usingBlock:{0, v25}];

      _Block_release(v25);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}

uint64_t sub_1002B7318(uint64_t a1)
{
  v2 = type metadata accessor for PaperMarkup();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = &protocol witness table for MainActor;
  *(v13 + 4) = v10;
  (*(v3 + 32))(&v13[v12], v5, v2);

  sub_1003E9628(0, 0, v8, &unk_10094C458, v13);
}

uint64_t sub_1002B7540(int a1)
{
  v2 = v1;
  LODWORD(v71) = a1;
  v3 = type metadata accessor for PaperMarkup();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADC608);
  __chkstk_darwin(v7);
  v9 = &v61 - v8;
  v10 = sub_1000F24EC(&unk_100ADC5E0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v61 - v15;
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment;
  if (!*&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment])
  {
    return 0;
  }

  v66 = v7;
  v68 = v4;
  v73 = 0;
  v20 = [v2 textStorage];
  v21 = [v20 length];

  result = String.count.getter();
  v23 = &v21[-result];
  if (__OFSUB__(v21, result))
  {
    __break(1u);
  }

  else
  {
    v67 = v16;
    v69 = v18;
    v70 = v19;
    v62 = v6;
    v63 = v13;
    v64 = v9;
    v65 = v3;
    v24 = String.count.getter();
    v25 = __chkstk_darwin(v24);
    *(&v61 - 2) = &v73;
    *(&v61 - 1) = v2;
    __chkstk_darwin(v25);
    *(&v61 - 2) = sub_1002D3070;
    *(&v61 - 1) = v26;
    v27 = [v2 textStorage];
    v28 = NSParagraphAttachmentAttributeName;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1002D835C;
    *(v29 + 24) = &v61 - 4;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1002D8270;
    *(v30 + 24) = v29;
    aBlock[4] = sub_1002D826C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007E0A4;
    aBlock[3] = &unk_100A63820;
    v31 = _Block_copy(aBlock);

    [v27 enumerateAttribute:v28 inRange:v23 options:v24 usingBlock:{0, v31}];

    _Block_release(v31);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v32 = v73;
      v33 = v70;
      if ((v73 & 1) == 0 && (v71 & 1) == 0)
      {
        goto LABEL_25;
      }

      v34 = [v2 textStorage];
      [v34 deleteCharactersInRange:{v23, v24}];

      v35 = *&v2[v33];
      if (!v35)
      {
        goto LABEL_25;
      }

      v36 = v35;
      v37 = sub_1007C8C2C();

      if (!v37)
      {
        goto LABEL_25;
      }

      type metadata accessor for DrawingAssetView();
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        v71 = v37;
        v39 = *(v38 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
        if (v39)
        {
          v40 = *&v39[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
          v41 = v39;
          v42 = v40;
          dispatch thunk of PaperMarkupViewController.markup.getter();

          v43 = v64;
          v44 = v65;
          v45 = v68;
        }

        else
        {
          v45 = v68;
          v44 = v65;
          (*(v68 + 56))(v69, 1, 1, v65);
          v43 = v64;
        }

        v46 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas];
        if (v46)
        {
          v47 = *&v46[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
          v48 = v46;
          v49 = v47;
          v50 = v67;
          dispatch thunk of PaperMarkupViewController.markup.getter();
        }

        else
        {
          v50 = v67;
          (*(v45 + 56))(v67, 1, 1, v44);
        }

        v51 = *(v66 + 48);
        v52 = v69;
        sub_1000082B4(v69, v43, &unk_100ADC5E0);
        v66 = v51;
        sub_1000082B4(v50, v43 + v51, &unk_100ADC5E0);
        v53 = v68;
        v54 = *(v68 + 48);
        if (v54(v43, 1, v44) == 1)
        {
          sub_100004F84(v50, &unk_100ADC5E0);
          sub_100004F84(v52, &unk_100ADC5E0);
          if (v54(v43 + v66, 1, v44) == 1)
          {
            sub_100004F84(v43, &unk_100ADC5E0);
            v37 = v71;
LABEL_23:
            sub_1002B14BC(0);
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        v55 = v63;
        sub_1000082B4(v43, v63, &unk_100ADC5E0);
        v56 = v66;
        if (v54(v43 + v66, 1, v44) == 1)
        {
          sub_100004F84(v67, &unk_100ADC5E0);
          sub_100004F84(v69, &unk_100ADC5E0);
          (*(v53 + 8))(v55, v44);
LABEL_21:
          sub_100004F84(v43, &qword_100ADC608);
          v37 = v71;
          goto LABEL_24;
        }

        v57 = v62;
        (*(v53 + 32))(v62, v43 + v56, v44);
        sub_10008D118(&qword_100ADC610, &type metadata accessor for PaperMarkup);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *(v53 + 8);
        v59(v57, v44);
        sub_100004F84(v67, &unk_100ADC5E0);
        sub_100004F84(v69, &unk_100ADC5E0);
        v59(v63, v44);
        sub_100004F84(v43, &unk_100ADC5E0);
        v37 = v71;
        if (v58)
        {
          goto LABEL_23;
        }
      }

LABEL_24:

LABEL_25:
      v60 = *&v2[v33];
      *&v2[v33] = 0;

      return v32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B7D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002B7DE8, v6, v5);
}

uint64_t sub_1002B7DE8()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1002B7E9C;

  return sub_1006B83E8(v1, &protocol witness table for MainActor);
}

uint64_t sub_1002B7E9C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10021A4AC, v3, v2);
}

uint64_t sub_1002B7FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002B8078, v6, v5);
}

uint64_t sub_1002B8078()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1002B812C;

  return sub_1006B83E8(v1, &protocol witness table for MainActor);
}

uint64_t sub_1002B812C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1001F0E40, v3, v2);
}

void sub_1002B8270(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v13 && (v14 = *(v13 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v15 = *(v14 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v25 = v15;
  }

  else
  {
    v16 = sub_1007C8890();
    v17 = *&v16[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v25 = v17;

    if (!v17)
    {
      return;
    }
  }

  type metadata accessor for PaperKitDrawingCanvasView();
  v18 = swift_dynamicCastClass();
  if (!v18 || a2)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [a4 textStorage];
  v21 = [v20 length];

  if (__OFSUB__(v21, a3))
  {
    __break(1u);
    return;
  }

  if (v21 - a3 <= 1)
  {
    v23 = *(v19 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);
    dispatch thunk of PaperMarkupViewController.markup.getter();

    sub_100014318(v12, a5, &unk_100ADC5E0);
  }

  else
  {
LABEL_10:
    v22 = v25;
  }
}

void sub_1002B8440(uint64_t a1)
{
  sub_1000082B4(a1, v2, &qword_100AD13D0);
  if (v3)
  {
    sub_1000065A8(0, &qword_100ADC5F0);
    if (swift_dynamicCast())
    {
      sub_1002D3788(v1);
    }
  }

  else
  {
    sub_100004F84(v2, &qword_100AD13D0);
  }
}

void sub_1002B84EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = [a1 textAttachment];
  type metadata accessor for ResizableViewTextAttachment();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    a4(v7, a2, a3);
  }
}

void sub_1002B857C(uint64_t a1, double a2, double a3)
{
  v20.receiver = v3;
  v20.super_class = type metadata accessor for CanvasTextView();
  v21 = objc_msgSendSuper2(&v20, "hitTest:withEvent:", a1, a2, a3);
  *&v15[2] = a2;
  *&v15[3] = a3;
  v16 = v3;
  v17 = a1;
  v18 = &v21;
  v7 = [v3 textStorage];
  v8 = [v7 length];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = [v3 textStorage];
  v10 = NSParagraphAttachmentAttributeName;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002D7DC0;
  *(v11 + 24) = v15;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1002D8270;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1002D826C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007E0A4;
  aBlock[3] = &unk_100A64BA8;
  v13 = _Block_copy(aBlock);

  [v9 enumerateAttribute:v10 inRange:0 options:v8 usingBlock:{0, v13}];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1002B87AC(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8)
{
  v20 = [a1 textAttachment];
  type metadata accessor for ResizableViewTextAttachment();
  if (!swift_dynamicCastClass() || (v13 = sub_1007C8C2C()) == 0 || (v14 = v13, v15 = [v13 superview], v14, !v15))
  {
    v18 = v20;
    goto LABEL_8;
  }

  v16 = sub_1007C8C2C();
  if (v16)
  {
    v17 = v16;
    type metadata accessor for DrawingAssetView();
    if (swift_dynamicCastClass())
    {

      v18 = v17;
      goto LABEL_8;
    }
  }

  [v15 convertPoint:a6 fromCoordinateSpace:{a2, a3}];
  v19 = [v15 hitTest:a7 withEvent:?];

  if (!v19)
  {
    return;
  }

  v18 = *a8;
  *a8 = v19;
LABEL_8:
}

void sub_1002B899C()
{
  sub_100038534(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_canvasViewDelegate);
  swift_unknownObjectWeakDestroy();

  v1 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator);
}

id sub_1002B8A4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002B8B48(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CanvasTextView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1002B8B88()
{
  v1 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
  if (!*&v0[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry])
  {
    goto LABEL_5;
  }

  if ((sub_10029EF80() & 1) == 0 || *&v0[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas])
  {

LABEL_5:
    v16.receiver = v0;
    v16.super_class = type metadata accessor for CanvasTextView();
    objc_msgSendSuper2(&v16, "resignFirstResponder");
    return;
  }

  if (!*&v0[v1])
  {
LABEL_13:

    return;
  }

  v2 = sub_10029EF80();
  if ((v2 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  __chkstk_darwin(v2);
  v14[6] = v0;
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v14[2] = sub_1002D8278;
  v14[3] = v5;
  v6 = [v0 textStorage];
  v7 = [v6 length];

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  v8 = [v0 textStorage];
  v9 = NSParagraphAttachmentAttributeName;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002D835C;
  *(v10 + 24) = v14;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002D8270;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1002D826C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007E0A4;
  aBlock[3] = &unk_100A64B30;
  v12 = _Block_copy(aBlock);

  [v8 enumerateAttribute:v9 inRange:0 options:v7 usingBlock:{0, v12}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_12;
  }
}

unint64_t sub_1002B8E98(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1007C8CA4();
  if ((result & 0x10000000000) != 0)
  {
    v7 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return result;
}

uint64_t sub_1002B8F2C()
{
  v2 = v0;
  v52 = _swiftEmptyArrayStorage;
  v45 = &v52;
  v42 = sub_1002D8274;
  v43 = &v44;
  v3 = [v0 textStorage];
  v4 = [v3 length];

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v5 = [v2 textStorage];
  v6 = NSParagraphAttachmentAttributeName;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002D835C;
  *(v7 + 24) = &v41;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002D8270;
  *(v8 + 24) = v7;
  v50 = sub_1002D826C;
  v51 = v8;
  aBlock = _NSConcreteStackBlock;
  v1 = 1107296256;
  v47 = 1107296256;
  v48 = sub_10007E0A4;
  v49 = &unk_100A63BB8;
  v9 = _Block_copy(&aBlock);

  v37 = v6;
  [v5 enumerateAttribute:v6 inRange:0 options:v4 usingBlock:{0, v9}];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_23;
  }

  v3 = v52;
  if (v52 >> 62)
  {
    goto LABEL_24;
  }

  v11 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &selRef_setRegion_; v11; i = &selRef_setRegion_)
  {
    v13 = 0;
    v40 = v3 & 0xC000000000000001;
    v38 = OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment;
    v39 = v3 & 0xFFFFFFFFFFFFFF8;
    v34 = &v48;
    v36 = v2;
    v35 = v11;
    v33 = v3;
    while (1)
    {
      if (v40)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v39 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(v3 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = *&v2[v38];
      if (v17 && (type metadata accessor for ResizableViewTextAttachment(), v18 = v15, v19 = v17, v20 = v15, v21 = v19, v22 = static NSObject.== infix(_:_:)(), v21, v15 = v20, v18, (v22 & 1) != 0))
      {
        sub_1002B7540(1);
      }

      else
      {
        *&v23 = __chkstk_darwin(v14).n128_u64[0];
        v3 = v32;
        v32[2] = v15;
        v32[3] = v2;
        v24 = [v2 i[417]];
        v25 = [v24 length];

        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        v26 = [v2 i[417]];
        v27 = swift_allocObject();
        *(v27 + 16) = sub_1002D8360;
        *(v27 + 24) = v32;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_1002D8270;
        *(v28 + 24) = v27;
        v50 = sub_1002D826C;
        v51 = v28;
        aBlock = _NSConcreteStackBlock;
        v47 = v1;
        v48 = sub_10007E0A4;
        v49 = &unk_100A63C30;
        v29 = _Block_copy(&aBlock);

        i = &selRef_setRegion_;

        [v26 enumerateAttribute:v37 inRange:0 options:v25 usingBlock:{0, v29}];

        v2 = v36;
        _Block_release(v29);
        v30 = swift_isEscapingClosureAtFileLocation();

        v3 = v33;
        v11 = v35;
        if (v30)
        {
          goto LABEL_21;
        }
      }

      ++v13;
      if (v16 == v11)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }
}

void sub_1002B9458(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment];
  if (!v4 || (type metadata accessor for ResizableViewTextAttachment(), v5 = a1, v6 = v4, v7 = static NSObject.== infix(_:_:)(), v6, v5, (v7 & 1) == 0))
  {
    v16[2] = a1;
    v16[3] = v2;
    v8 = [v2 textStorage];
    v9 = [v8 length];

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = [v2 textStorage];
      v11 = NSParagraphAttachmentAttributeName;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1002D8360;
      *(v12 + 24) = v16;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1002D8270;
      *(v13 + 24) = v12;
      aBlock[4] = sub_1002D826C;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007E0A4;
      aBlock[3] = &unk_100A63CD0;
      v14 = _Block_copy(aBlock);

      [v10 enumerateAttribute:v11 inRange:0 options:v9 usingBlock:{0, v14}];

      _Block_release(v14);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    return;
  }

  sub_1002B7540(1);
}

void sub_1002B96D8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v3 = OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView;
  v4 = *(*(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView) + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v4)
  {
    v4 = [v4 indexPathsForSelectedItems];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for IndexPath();
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = *(v6 + 16);

      if (v7)
      {
        goto LABEL_10;
      }
    }
  }

  *&v79 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v4);
  v71[6] = &v79;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v71[2] = sub_1002D8274;
  v71[3] = v10;
  v11 = [v1 textStorage];
  v12 = [v11 length];

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v72 = v3;
  v13 = [v1 textStorage];
  v14 = NSParagraphAttachmentAttributeName;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002D835C;
  *(v15 + 24) = v71;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002D8270;
  *(v16 + 24) = v15;
  v75 = sub_1002D826C;
  v76 = v16;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v74 = sub_10007E0A4;
  *(&v74 + 1) = &unk_100A64AB8;
  v17 = _Block_copy(&aBlock);

  [v13 enumerateAttribute:v14 inRange:0 options:v12 usingBlock:{0, v17}];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v79 >> 62)
  {
LABEL_47:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_9;
  }

  v19 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

  if (v19 >= 1)
  {
LABEL_10:
    sub_10058E07C();
    sub_1002B8F2C();
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
LABEL_12:
  v20 = [v1 textStorage];
  v21 = [v20 string];
  if (v21)
  {
    v22 = v21;

    v23 = [v1 selectedRange];
    v72 = [v22 paragraphRangeForRange:{v23, v24}];
    v26 = v25;
    v27 = [v1 textStorage];
    v28 = [v27 string];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32 || (v33 = [v1 selectedRange], v34 = objc_msgSend(v1, "textStorage"), v35 = objc_msgSend(v34, "length"), v34, v35 < v33) || (v36 = objc_msgSend(v1, "textStorage"), v37 = objc_msgSend(v36, "length"), v36, v72 >= v37))
    {
      v47 = type metadata accessor for CanvasTextView();
      v81.receiver = v1;
      v81.super_class = v47;
      objc_msgSendSuper2(&v81, "deleteBackward");
LABEL_21:

      return;
    }

    v38 = [v1 textStorage];
    v39 = v72;
    v40 = [v38 attributedSubstringFromRange:{v72, v26}];

    v41 = [v40 string];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = [v1 textStorage];
    v46 = [v45 attribute:NSParagraphAttachmentAttributeName atIndex:v39 effectiveRange:0];

    if (v46)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    aBlock = v79;
    v74 = v80;
    if (!*(&v80 + 1))
    {

      sub_100004F84(&aBlock, &qword_100AD13D0);
      goto LABEL_28;
    }

    sub_1000065A8(0, &qword_100ADC5F0);
    if ((swift_dynamicCast() & 1) == 0 || (v77, [v1 selectedRange], v48))
    {
LABEL_26:

LABEL_28:
      v49 = type metadata accessor for CanvasTextView();
      v78.receiver = v1;
      v78.super_class = v49;
      objc_msgSendSuper2(&v78, "deleteBackward");
      goto LABEL_21;
    }

    if (sub_1005764B4(v42, v44))
    {
      if (v26 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v26 != 1)
    {
      goto LABEL_26;
    }

    v50 = sub_100603EA4(v42, v44);
    v52 = v51;

    if (v52)
    {
      if (v50 == 9142498 && v52 == 0xA300000000000000)
      {

LABEL_38:
        [v1 setSelectedRange:{v72, v26}];
        goto LABEL_21;
      }

      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v53)
      {
        goto LABEL_38;
      }
    }

    v54 = [v1 textStorage];
    v55 = [v54 attributesAtIndex:v72 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = objc_allocWithZone(NSAttributedString);
    v57 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v59 = [v56 initWithString:v57 attributes:isa];

    if (qword_100ACFBD8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000617C(v60, qword_100ADC2D0);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&aBlock = v64;
      *v63 = 136315138;
      v65 = v72;
      v66 = _NSRange.description.getter();
      v68 = sub_100008458(v66, v67, &aBlock);

      *(v63 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v61, v62, "Inserting zero width space during deletion to preserve inline attachment at %s", v63, 0xCu);
      sub_10000BA7C(v64);

      v69 = &selRef_setRegion_;
    }

    else
    {

      v69 = &selRef_setRegion_;
      v65 = v72;
    }

    v70 = [v1 v69[417]];
    [v70 replaceCharactersInRange:v65 withAttributedString:{1, v59}];

    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_1002BA06C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_1000F24EC(&unk_100ADC5E0);
  v2[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v4;
  v2[19] = v3;

  return _swift_task_switch(sub_1002BA13C, v4, v3);
}

uint64_t sub_1002BA13C()
{
  PaperMarkup.contentsRenderFrame.getter();
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = 0.0;
  v29.size.height = 0.0;
  if (CGRectEqualToRect(v25, v29) || (PaperMarkup.contentsRenderFrame.getter(), v30.origin.x = CGRectNull.origin.x, v30.origin.y = CGRectNull.origin.y, v30.size.width = CGRectNull.size.width, v30.size.height = CGRectNull.size.height, CGRectEqualToRect(v26, v30)) || (v1 = [*(v0 + 120) selectedTextRange], (*(v0 + 160) = v1) == 0))
  {

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v2 = v1;
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = [v4 beginningOfDocument];
    v7 = [v2 start];
    v8 = [v2 end];
    v9 = [v4 offsetFromPosition:v6 toPosition:v7];
    v10 = [v4 offsetFromPosition:v7 toPosition:v8];

    PaperMarkup.contentsRenderFrame.getter();
    PaperMarkup.contentsRenderFrame.getter();
    CGRectGetHeight(v27);
    [v4 bounds];
    Width = CGRectGetWidth(v28);
    [v4 textContainerInset];
    v13 = Width - v12;
    [v4 textContainerInset];
    v15 = sub_1002B2ED8(v13 - v14);
    v17 = v16;
    *(v4 + OBJC_IVAR____TtC7Journal14CanvasTextView_ignoreCanvasRemovalRequests) = 1;
    v18 = type metadata accessor for PaperMarkup();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v3, v5, v18);
    (*(v19 + 56))(v3, 0, 1, v18);
    v20 = swift_task_alloc();
    *(v0 + 168) = v20;
    *v20 = v0;
    v20[1] = sub_1002BA444;
    v21 = *(v0 + 128);

    return sub_1002BA78C(v9, v10, v21, 1, v15, v17);
  }
}

uint64_t sub_1002BA444(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);

  sub_100004F84(v4, &unk_100ADC5E0);
  v5 = *(v3 + 152);
  v6 = *(v3 + 144);

  return _swift_task_switch(sub_1002BA5A0, v6, v5);
}

uint64_t sub_1002BA5A0()
{
  v1 = v0[20];
  v2 = v0[15];

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v0[6] = sub_1002D35A0;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A63938;
  v5 = _Block_copy(v0 + 2);
  v6 = v2;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[12] = sub_1002D35C8;
  v0[13] = v7;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10003264C;
  v0[11] = &unk_100A63988;
  v8 = _Block_copy(v0 + 8);
  v9 = v6;

  [v3 animateWithDuration:4 delay:v5 options:v8 animations:0.3 completion:0.0];

  _Block_release(v8);
  _Block_release(v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002BA78C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  *(v7 + 56) = v6;
  *(v7 + 328) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  sub_1000F24EC(&qword_100AD1420);
  *(v7 + 64) = swift_task_alloc();
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  v9 = type metadata accessor for JournalFeatureFlags();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  v10 = type metadata accessor for AssetPlacement();
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  v11 = type metadata accessor for AssetSource();
  *(v7 + 144) = v11;
  *(v7 + 152) = *(v11 - 8);
  *(v7 + 160) = swift_task_alloc();
  sub_1000F24EC(&unk_100ADC5E0);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v12 = type metadata accessor for PaperMarkup();
  *(v7 + 184) = v12;
  *(v7 + 192) = *(v12 - 8);
  *(v7 + 200) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 208) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 216) = v14;
  *(v7 + 224) = v13;

  return _swift_task_switch(sub_1002BAA7C, v14, v13);
}

uint64_t sub_1002BAA7C()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry);
  *(v0 + 232) = v1;
  if (!v1)
  {

    v6 = *(v0 + 8);

    return v6(0);
  }

  if (*(v0 + 328) != 1)
  {

    goto LABEL_24;
  }

  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  sub_1000082B4(*(v0 + 32), v4, &unk_100ADC5E0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v0 + 176);

    sub_100004F84(v5, &unk_100ADC5E0);
LABEL_24:
    v15 = *(v0 + 208);
    v16 = *(v0 + 168);
    v17 = *(v0 + 32);
    (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for AssetSource.drawingCanvas(_:), *(v0 + 144));
    sub_1000082B4(v17, v16, &unk_100ADC5E0);

    v18 = swift_task_alloc();
    *(v0 + 264) = v18;
    *v18 = v0;
    v18[1] = sub_1002BB128;
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);

    return sub_1001B9DC0(v15, &protocol witness table for MainActor, v19, v20);
  }

  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));

  if ((sub_10029EF80() & 1) == 0)
  {
LABEL_23:
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_24;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
  if (v8 >> 62)
  {
LABEL_32:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
LABEL_22:

    goto LABEL_23;
  }

  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    *(v0 + 240) = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    type metadata accessor for DrawingAsset();
    v14 = swift_dynamicCastClass();
    *(v0 + 248) = v14;
    if (v14)
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_22;
    }
  }

  v21 = *(v0 + 208);

  v22 = swift_task_alloc();
  *(v0 + 256) = v22;
  *v22 = v0;
  v22[1] = sub_1002BAE88;
  v23 = *(v0 + 200);

  return sub_1001B79DC(v21, &protocol witness table for MainActor, v23, 1);
}

uint64_t sub_1002BAE88()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_1002BAFCC, v3, v2);
}

uint64_t sub_1002BAFCC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 248);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 240);
  v10 = sub_1002BCD24(v4, v8, v7, 1, 0x100010101uLL, 0, 0, 0.0, 0.0, v6, v5);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1002BB128(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 272) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_1002BB274, v4, v3);
}

uint64_t sub_1002BB274()
{
  v1 = v0[26];
  (*(v0[16] + 104))(v0[17], enum case for AssetPlacement.canvas(_:), v0[15]);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[35] = v2;
  v0[36] = v4;

  return _swift_task_switch(sub_1002BB334, v2, v4);
}

uint64_t sub_1002BB334()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 208);
  if (v4)
  {
    *(v0 + 296) = CFAbsoluteTimeGetCurrent();
    v6 = swift_task_alloc();
    *(v0 + 304) = v6;
    *v6 = v0;
    v6[1] = sub_1002BB4C0;
    v7 = *(v0 + 272);
    v8 = *(v0 + 136);

    return sub_10056B238(v5, &protocol witness table for MainActor, v7, v8, 1);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 320) = v10;
    *v10 = v0;
    v10[1] = sub_1002BB82C;
    v11 = *(v0 + 272);
    v12 = *(v0 + 136);

    return sub_1001F8424(v5, &protocol witness table for MainActor, v11, v12);
  }
}

uint64_t sub_1002BB4C0()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_1002BB5E0, v3, v2);
}

uint64_t sub_1002BB5E0()
{
  v1 = v0[29];
  (*(v0[10] + 104))(v0[11], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[9]);

  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1002BB6D8;
  v3 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v2, v3, sub_1002D2D78, v1, &type metadata for () + 8);
}

uint64_t sub_1002BB6D8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v4 = v2[35];
    v5 = v2[36];

    return _swift_task_switch(sub_1002BB9D8, v4, v5);
  }
}

uint64_t sub_1002BB82C()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_1002BB94C, v3, v2);
}

uint64_t sub_1002BB94C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v0[28];

  return _swift_task_switch(sub_1002BBB30, v4, v5);
}

uint64_t sub_1002BB9D8()
{
  v1 = v0[37];
  v2 = *(v0 + 34);
  v3 = *(v0 + 8);
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, &v2[v4], v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_1001F81C4(v3);
  sub_100004F84(v3, &qword_100AD1420);
  sub_10056B00C(v2, v1);
  v8 = *(v0 + 16);
  v7 = *(v0 + 17);
  v9 = *(v0 + 15);

  (*(v8 + 8))(v7, v9);
  v10 = *(v0 + 27);
  v11 = *(v0 + 28);

  return _swift_task_switch(sub_1002BBB30, v10, v11);
}

uint64_t sub_1002BBB30()
{

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 272);
  v6 = sub_1002BCD24(v5, v4, v3, 1, 0x100010101uLL, 0, 0, 0.0, 0.0, v2, v1);

  v7 = *(v0 + 8);

  return v7(v6);
}

id sub_1002BBC70(id result, _BYTE *a2)
{
  if (result)
  {
    a2[OBJC_IVAR____TtC7Journal14CanvasTextView_ignoreCanvasRemovalRequests] = 0;
    v3 = *&a2[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
    if (v3)
    {
      v4 = *&a2[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
      v5 = *&v3[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
      v6 = v3;
      result = [v5 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      v8 = sub_100544E50();
      [v8 setVisible:0 forFirstResponder:v7];

      v9 = v4 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v4, 0, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }

    sub_1002B1FB8();
    [a2 becomeFirstResponder];
    v12 = [a2 textStorage];
    v13 = [v12 length];

    return [a2 setSelectedRange:{v13, 0}];
  }

  return result;
}

void sub_1002BBE04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for PaperMarkup();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v19 = [a4 textStorage];
    v20 = [v19 length];

    if (__OFSUB__(v20, a3))
    {
      __break(1u);
      return;
    }

    if (v20 - a3 <= 1)
    {
      type metadata accessor for ResizableAssetViewTextAttachment();
      if (swift_dynamicCastClass())
      {
        v37 = a1;
        v21 = sub_1007C8C2C();
        if (v21)
        {
          v36 = v21;
          type metadata accessor for DrawingAssetView();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v23 = *(v22 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
            if (!v23)
            {

              (*(v15 + 56))(v13, 1, 1, v14);
              goto LABEL_16;
            }

            v24 = *&v23[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
            v25 = v23;
            v26 = v24;
            dispatch thunk of PaperMarkupViewController.markup.getter();

            if ((*(v15 + 48))(v13, 1, v14) == 1)
            {

LABEL_16:
              sub_100004F84(v13, &unk_100ADC5E0);
              return;
            }

            (*(v15 + 32))(v18, v13, v14);
            (*(v15 + 16))(v10, v18, v14);
            (*(v15 + 56))(v10, 0, 1, v14);
            v28 = sub_1002B5D1C(v10, 1);
            sub_100004F84(v10, &unk_100ADC5E0);
            if (v28)
            {
              [v28 setAlpha:0.0];
              v29 = objc_opt_self();
              v30 = swift_allocObject();
              *(v30 + 16) = v28;
              v42 = sub_1002D376C;
              v43 = v30;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_100006C7C;
              v41 = &unk_100A64068;
              v31 = _Block_copy(&aBlock);
              v32 = v28;

              v33 = swift_allocObject();
              *(v33 + 16) = a4;
              v42 = sub_1002D3780;
              v43 = v33;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_10003264C;
              v41 = &unk_100A640B8;
              v34 = _Block_copy(&aBlock);
              v35 = a4;

              [v29 animateWithDuration:4 delay:v31 options:v34 animations:0.3 completion:0.0];
              _Block_release(v34);
              _Block_release(v31);

              (*(v15 + 8))(v18, v14);
            }

            else
            {
              (*(v15 + 8))(v18, v14);
            }

            return;
          }

          v27 = v36;
        }

        else
        {
          v27 = v37;
        }
      }
    }
  }
}

void sub_1002BC344(char a1, id a2)
{
  if (a1)
  {
    v5 = [a2 textStorage];
    v3 = [a2 textStorage];
    v4 = [v3 length];

    [v5 deleteCharactersInRange:{0, v4}];
  }
}

uint64_t sub_1002BC3E8()
{
  v1 = [v0 textStorage];
  v2 = [v1 length];

  if (v2 < 1)
  {
    return 0;
  }

  if (*&v0[OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment] || (v0[OBJC_IVAR____TtC7Journal14CanvasTextView_addingBottomCanvas] & 1) != 0)
  {
    return 1;
  }

  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v4 = [v0 textStorage];
  v5 = [v4 length];

  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [v0 textStorage];
  v8 = [v7 mutableString];

  [v8 getParagraphStart:&v25 end:&v24 contentsEnd:&v23 forRange:{v6, 1}];
  v10 = v25;
  v11 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  __chkstk_darwin(v9);
  v21[6] = v0;
  v21[7] = &v26;
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v21[2] = sub_1002D3068;
  v21[3] = v14;
  v15 = [v0 textStorage];
  v16 = NSParagraphAttachmentAttributeName;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1002D835C;
  *(v17 + 24) = v21;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1002D8270;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1002D826C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007E0A4;
  aBlock[3] = &unk_100A637A8;
  v19 = _Block_copy(aBlock);

  [v15 enumerateAttribute:v16 inRange:v10 options:v11 usingBlock:{0, v19}];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_13;
  }

  return v26;
}

void sub_1002BC734(uint64_t a1)
{
  v1[OBJC_IVAR____TtC7Journal14CanvasTextView_showDrawingToolsPending] = 1;
  v2 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas];
  if (!v2)
  {
    __chkstk_darwin(a1);
    v25[6] = v1;
    *&v15 = __chkstk_darwin(v14).n128_u64[0];
    v25[2] = sub_1002D2D70;
    v25[3] = v16;
    v17 = [v1 textStorage];
    v18 = [v17 length];

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = [v1 textStorage];
      v20 = NSParagraphAttachmentAttributeName;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1000483C0;
      *(v21 + 24) = v25;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_100095B84;
      *(v22 + 24) = v21;
      aBlock[4] = sub_10007E158;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007E0A4;
      aBlock[3] = &unk_100A63668;
      v23 = _Block_copy(aBlock);

      [v19 enumerateAttribute:v20 inRange:0 options:v18 usingBlock:{0, v23}];

      _Block_release(v23);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v3 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
  v4 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v5 = *&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  v6 = v2;
  v7 = [v5 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_100544E50();
  [v9 setVisible:1 forFirstResponder:v8];

  v10 = v3 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v3, 1, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  v13 = [*&v2[v4] view];
  if (!v13)
  {
    goto LABEL_15;
  }

  v26 = v13;
  [v13 becomeFirstResponder];
}

uint64_t sub_1002BCAA8(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (*&v1[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry])
  {

    v7 = [v1 textStorage];
    v8 = [v7 length];

    if (v8 && (sub_10029EF80() & 1) == 0 && (sub_1002BC3E8() & 1) == 0)
    {
      v2[OBJC_IVAR____TtC7Journal14CanvasTextView_addingBottomCanvas] = 1;
      v10 = [v2 textStorage];
      v11 = [v10 length];

      v12 = [v2 textStorage];
      v13 = sub_1002B1C48();
      [v12 insertAttributedString:v13 atIndex:v11];

      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = &protocol witness table for MainActor;
      *(v17 + 32) = v15;
      *(v17 + 40) = a1 & 1;

      sub_1003E9628(0, 0, v6, &unk_10094C388, v17);

      return 1;
    }
  }

  return 0;
}

id sub_1002BCD24(char *a1, void *a2, void *a3, int a4, unint64_t a5, uint64_t a6, void *a7, double a8, double a9, double a10, double a11)
{
  v105 = a7;
  LODWORD(v106) = a4;
  v107 = a3;
  v19 = type metadata accessor for AssetType();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v103[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v23 - 8);
  v25 = &v103[-v24];
  v108 = a2;
  if (a5 == 2)
  {
    LODWORD(v26) = 0;
    v27 = 0x100000001;
    LOBYTE(a5) = 1;
  }

  else
  {
    v26 = (a5 >> 8) & 1;
    v28 = vdupq_n_s64(a5);
    v27 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v28, xmmword_10094C2F0)), vceqzq_s64(vandq_s8(v28, xmmword_10094C300))))), 0x1000100010001);
  }

  type metadata accessor for DrawingAsset();
  v104 = (swift_dynamicCastClass() != 0) | v26;
  v29 = objc_allocWithZone(type metadata accessor for ResizableAssetViewTextAttachment());
  v30 = OBJC_IVAR____TtC7Journal5Asset_id;
  v31 = OBJC_IVAR____TtC7Journal32ResizableAssetViewTextAttachment_assetID;
  v32 = type metadata accessor for UUID();
  (*(*(v32 - 8) + 16))(&v29[v31], &a1[v30], v32);
  *&v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView] = 0;
  v33 = &v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition];
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = 1;
  *&v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider] = 0;
  *&v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_canvasDragInteraction] = 0;
  swift_beginAccess();
  v34 = v105;
  *v33 = a6;
  *(v33 + 1) = v34;
  v33[16] = 0;
  v35 = &v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize];
  *v35 = a10;
  v35[1] = a11;
  v36 = type metadata accessor for ResizableViewTextAttachment();
  v117.receiver = v29;
  v117.super_class = v36;
  v37 = objc_msgSendSuper2(&v117, "initWithData:ofType:", 0, 0);
  [v37 setAllowsTextAttachmentView:1];
  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v105 = v37;
  v40 = v37;
  v41 = a1;

  v42 = static MainActor.shared.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = &protocol witness table for MainActor;
  *(v43 + 32) = v41;
  *(v43 + 40) = v39;
  *(v43 + 48) = a5 & 1;
  *(v43 + 49) = v104 & 1;
  *(v43 + 50) = vuzp1_s8(v27, v44).u32[0];

  sub_1003E9628(0, 0, v25, &unk_10094C3A0, v43);

  (*(v20 + 104))(v22, enum case for AssetType.drawing(_:), v19);
  sub_10008D118(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v116[0] && v111 == v116[1])
  {
    (*(v20 + 8))(v22, v19);

    v45 = v109;
    v46 = &selRef_setRegion_;
    v47 = v107;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v20 + 8))(v22, v19);

    v45 = v109;
    v46 = &selRef_setRegion_;
    v47 = v107;
    if ((v48 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v49 = [v45 v46[417]];
  sub_1000F24EC(&qword_100ADC5F8);
  v50 = swift_dynamicCastClass();
  if (v50 && (sub_100086C04(v50 + *((swift_isaMask & *v50) + 0x78), &aBlock), sub_1000F24EC(&qword_100ADC600), type metadata accessor for CustomAttributeProviderConcrete(), (swift_dynamicCast() & 1) != 0))
  {
    v51 = v116[0];
    swift_beginAccess();
    if (*(v51 + 16))
    {
      v52 = OBJC_IVAR____TtC7Journal32ResizableAssetViewTextAttachment_assetID;
      v53 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116[0] = *(v51 + 16);
      *(v51 + 16) = 0x8000000000000000;
      sub_100824A40(v53, &v40[v52], isUniquelyReferenced_nonNull_native, v116);
      *(v51 + 16) = v116[0];
    }

    else
    {
      v55 = v40;
    }

    swift_endAccess();
  }

  else
  {
  }

LABEL_15:
  if (v106)
  {
    v56 = [v45 v46[417]];
    result = [v56 string];
    v58 = v108;
    if (!result)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v59 = result;

    v60 = [v59 paragraphRangeForRange:{v58, v47}];
    v47 = 0;
  }

  else
  {
    v60 = v108;
  }

  sub_1006B91D4(1, a10, a11);
  *&v40[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8] = &off_100A63538;
  swift_unknownObjectWeakAssign();
  v61 = sub_1002C28F8(a8, a9);
  sub_1007C895C(v61, v62, 0);
  v108 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:v40 position:v61];
  v63 = [v45 v46[417]];
  result = [v63 string];
  if (!result)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v64 = result;

  v65 = [v64 paragraphRangeForRange:{v60, v47}];
  v67 = v66;

  v68 = [v45 v46[417]];
  v69 = [v68 length];

  if (!v69)
  {
    if (qword_100ACFBD8 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000617C(v70, qword_100ADC2D0);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Creating zero width string to anchor attachment in empty document", v73, 2u);
    }

    v74 = [v45 v46[417]];
    v75 = sub_1002B1C48();
    [v74 insertAttributedString:v75 atIndex:0];

    v76 = [v45 v46[417]];
    v67 = [v76 length];

    v65 = 0;
  }

  v106 = v40;
  v77 = [v45 v46[417]];
  result = [v77 string];
  if (!result)
  {
    goto LABEL_37;
  }

  v78 = result;
  v79 = v46;

  v107 = v65;
  v80 = [v78 paragraphRangeForRange:{v65, v67}];
  v82 = v81;

  v116[0] = 0;
  v83 = [v45 v79[417]];
  v84 = NSParagraphAttachmentAttributeName;
  v85 = swift_allocObject();
  *(v85 + 16) = v116;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1002D3060;
  *(v86 + 24) = v85;
  v114 = sub_1002D826C;
  v115 = v86;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_10007E0A4;
  v113 = &unk_100A63730;
  v87 = _Block_copy(&aBlock);

  [v83 enumerateAttribute:v84 inRange:v80 options:v82 usingBlock:{0, v87}];

  _Block_release(v87);
  LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

  if (v87)
  {
    __break(1u);
  }

  else
  {
    v88 = v116[0];

    if (!v88)
    {
      v99 = v109;
      v100 = [v109 textStorage];
      v101 = v84;
      v102 = v108;
      [v100 addAttribute:v101 value:v108 range:{v107, v67}];

      [v99 setNeedsLayout];
      return v105;
    }

    if (qword_100ACFBD8 == -1)
    {
      goto LABEL_30;
    }
  }

  swift_once();
LABEL_30:
  v89 = type metadata accessor for Logger();
  sub_10000617C(v89, qword_100ADC2D0);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  v92 = os_log_type_enabled(v90, v91);
  v93 = v106;
  if (v92)
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    aBlock = v95;
    *v94 = 136315138;
    v96 = _NSRange.description.getter();
    v98 = sub_100008458(v96, v97, &aBlock);

    *(v94 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v90, v91, "Paragraph already has an attachment. Dropping new attachment for range %s.", v94, 0xCu);
    sub_10000BA7C(v95);
  }

  return 0;
}

uint64_t sub_1002BD9DC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 64) = a6;
  sub_1000F24EC(&unk_100ADC5E0);
  *(v8 + 104) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 112) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 120) = v10;
  *(v8 + 128) = v9;

  return _swift_task_switch(sub_1002BDAB4, v10, v9);
}

uint64_t sub_1002BDAB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 17) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 13);
    v3 = type metadata accessor for PaperMarkup();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 18) = v4;
    *v4 = v0;
    v4[1] = sub_1002BDC34;
    v5 = *(v0 + 13);
    v6 = v0[11];
    v7 = v0[12];
    v9 = *(v0 + 9);
    v8 = *(v0 + 10);

    return sub_1002BA78C(v9, v8, v5, 0, v6, v7);
  }

  else
  {

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_1002BC734(v11);
    }

    v13 = *(v0 + 1);

    return v13();
  }
}

uint64_t sub_1002BDC34(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 104);

  sub_100004F84(v5, &unk_100ADC5E0);
  v6 = *(v3 + 128);
  v7 = *(v3 + 120);

  return _swift_task_switch(sub_1002BDDB0, v7, v6);
}

uint64_t sub_1002BDDB0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1002BC734(Strong);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002BDE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 104) = a5;
  *(v5 + 40) = a4;
  sub_1000F24EC(&unk_100ADC5E0);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return _swift_task_switch(sub_1002BDF1C, v7, v6);
}

uint64_t sub_1002BDF1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v3 = [Strong textStorage];
    v4 = [v3 length];

    v5 = type metadata accessor for PaperMarkup();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_1002BE0AC;
    v7 = v0[6];

    return sub_1002BA78C(v4, 0, v7, 0, 1.0, 1.0);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1002BE0AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 96) = a1;

  sub_100004F84(v3, &unk_100ADC5E0);
  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_1002BE208, v5, v4);
}

uint64_t sub_1002BE208()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  v3 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment];
  *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment] = v1;

  v4 = [v2 delegate];
  if (v4)
  {
    if ([v4 respondsToSelector:"textViewDidChange:"])
    {
      [v4 textViewDidChange:*(v0 + 80)];
    }

    v5 = swift_unknownObjectRelease();
  }

  if (*(v0 + 104) == 1)
  {
    sub_1002BC734(v5);
  }

  v6 = *(v0 + 80);
  v6[OBJC_IVAR____TtC7Journal14CanvasTextView_addingBottomCanvas] = 0;
  v7 = [v6 undoManager];
  v8 = *(v0 + 80);
  if (v7)
  {
    v9 = v7;
    sub_10012ACEC();

    v8 = v9;
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_1002BE338(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for PaperMarkup();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v18 && (v19 = *(v18 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v20 = *(v19 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v37 = v20;
  }

  else
  {
    v21 = sub_1007C8890();
    v22 = *&v21[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v37 = v22;

    if (!v22)
    {
      return;
    }
  }

  type metadata accessor for DrawingAssetView();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
    if (!v24)
    {

      (*(v15 + 56))(v13, 1, 1, v14);
      goto LABEL_14;
    }

    v25 = v23;
    v26 = *&v24[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
    v27 = v24;
    v28 = v26;
    dispatch thunk of PaperMarkupViewController.markup.getter();

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

LABEL_14:
      sub_100004F84(v13, &unk_100ADC5E0);
      return;
    }

    (*(v15 + 32))(v17, v13, v14);
    PaperMarkup.contentsRenderFrame.getter();
    v41.origin.x = 0.0;
    v41.origin.y = 0.0;
    v41.size.width = 0.0;
    v41.size.height = 0.0;
    if ((CGRectEqualToRect(v39, v41) || (PaperMarkup.contentsRenderFrame.getter(), v42.origin.x = CGRectNull.origin.x, v42.origin.y = CGRectNull.origin.y, v42.size.width = CGRectNull.size.width, v42.size.height = CGRectNull.size.height, CGRectEqualToRect(v40, v42))) && (*a4 = 1, (v30 = *(v25 + OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset)) != 0))
    {
      v31 = type metadata accessor for TaskPriority();
      (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
      type metadata accessor for MainActor();
      v32 = v30;
      v33 = a5;
      v34 = static MainActor.shared.getter();
      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = &protocol witness table for MainActor;
      v35[4] = v33;
      v35[5] = v32;
      sub_1003E9BBC(0, 0, v10, &unk_10094C3C8, v35);

      (*(v15 + 8))(v17, v14);
    }

    else
    {
      (*(v15 + 8))(v17, v14);
    }
  }

  else
  {
    v29 = v37;
  }
}

uint64_t sub_1002BE780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1002BE81C, v7, v6);
}

uint64_t sub_1002BE81C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = *(v0 + 40);

    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    *(v0 + 72) = v3;
    *(v0 + 80) = v5;

    return _swift_task_switch(sub_1002BE920, v3, v5);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002BE920()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v2 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[11] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1002BEADC;

  return sub_10056824C(v1, &protocol witness table for MainActor, v7);
}

uint64_t sub_1002BEADC()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1002BEC20, v3, v2);
}

uint64_t sub_1002BEC20()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1002BEC90, v1, v2);
}

uint64_t sub_1002BEC90()
{

  **(v0 + 16) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002BED04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v14 && (v15 = *(v14 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v16 = *(v15 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v17 = v16;
  }

  else
  {
    v18 = sub_1007C8890();
    v19 = *&v18[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v17 = v19;

    if (!v19)
    {
      return;
    }
  }

  type metadata accessor for DrawingAssetView();
  v20 = swift_dynamicCastClass();

  if (v20)
  {
    v21 = [a4 beginningOfDocument];
    v22 = [a4 positionFromPosition:v21 offset:a2];

    if (!v22)
    {
      goto LABEL_15;
    }

    v23 = [a4 positionFromPosition:v22 offset:a3];
    if (v23)
    {
      v24 = v23;
      v25 = [a4 textRangeFromPosition:v22 toPosition:v23];

      if (!v25)
      {
        goto LABEL_15;
      }

      v26 = [a4 textInRange:v25];
      if (v26)
      {
        v27 = v26;
        v28 = [objc_allocWithZone(NSString) initWithString:v26];

        static CharacterSet.whitespaces.getter();
        isa = CharacterSet._bridgeToObjectiveC()().super.isa;
        (*(v11 + 8))(v13, v10);
        v30 = [v28 stringByTrimmingCharactersInSet:isa];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = String.count.getter();

        if (v31 > 0)
        {
          v32 = 0;
LABEL_16:
          *a5 = v32;
          return;
        }

LABEL_15:
        v32 = 1;
        goto LABEL_16;
      }

      v22 = v25;
    }

    goto LABEL_15;
  }
}

void sub_1002BF058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v7 = *(v6 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v10 = v7;
  }

  else
  {
    v8 = sub_1007C8890();
    v9 = *&v8[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v10 = v9;

    if (!v9)
    {
      return;
    }
  }

  type metadata accessor for DrawingAssetView();
  if (swift_dynamicCastClass())
  {
    sub_10071C024(*(a4 + OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker), 0);
  }
}

void sub_1002BF140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v7 = *(v6 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v17 = v7;
  }

  else
  {
    v8 = sub_1007C8890();
    v9 = *&v8[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v17 = v9;

    if (!v9)
    {
      return;
    }
  }

  type metadata accessor for DrawingAssetView();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    sub_10071C024(*(a4 + OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker), 1);
    v12 = *(v11 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
    if (v12)
    {
      v13 = *&v12[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
      v14 = v12;
      v15 = [v13 view];
      if (!v15)
      {
        __break(1u);
        return;
      }

      v16 = v15;
      [v15 becomeFirstResponder];
    }
  }
}

void sub_1002BF290(char *a1)
{
  v2 = v1;
  if (![v1 isEditable])
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
  if (v4)
  {
    type metadata accessor for PaperKitDrawingCanvasView();
    v5 = a1;
    v6 = v4;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }
  }

  v8 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
  v9 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
  v10 = [*&a1[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController] view];
  if (!v10)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = sub_100544E50();
  [v12 setVisible:1 forFirstResponder:v11];

  v13 = v8 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v8, 1, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  v16 = [*&a1[v9] view];
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  [v16 becomeFirstResponder];
}

void sub_1002BF440(char *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v87 = &v78 - v5;
  v6 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = (&v78 - v10);
  v88 = type metadata accessor for PaperMarkup();
  v11 = *(v88 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v88);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v78 - v15;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v84 = &v78 - v18;
  v19 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
  if (!v19 || (type metadata accessor for PaperKitDrawingCanvasView(), v20 = a1, v21 = v19, v22 = static NSObject.== infix(_:_:)(), v21, v83 = v20, v20, (v22 & 1) == 0))
  {
    v31 = v11;
    v32 = [a1 superview];
    if (v32)
    {
      v33 = v32;
      type metadata accessor for DrawingAssetView();
      v34 = swift_dynamicCastClass();
      if (v34 && (v35 = *(v34 + OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset)) != 0)
      {
        v36 = *&a1[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
        v37 = v35;
        v38 = v36;
        dispatch thunk of PaperMarkupViewController.markup.getter();

        v39 = v88;
        if ((*(v31 + 48))(v8, 1, v88) == 1)
        {

          sub_100004F84(v8, &unk_100ADC5E0);
        }

        else
        {
          v82 = a1;
          v85 = *(v31 + 32);
          v85(v13, v8, v39);
          v40 = type metadata accessor for TaskPriority();
          (*(*(v40 - 8) + 56))(v87, 1, 1, v40);
          (*(v31 + 16))(v86, v13, v39);
          type metadata accessor for MainActor();
          v84 = v37;
          v41 = static MainActor.shared.getter();
          v42 = v39;
          v43 = (*(v31 + 80) + 40) & ~*(v31 + 80);
          v44 = swift_allocObject();
          *(v44 + 2) = v41;
          *(v44 + 3) = &protocol witness table for MainActor;
          v46 = v84;
          v45 = v85;
          *(v44 + 4) = v84;
          v45(&v44[v43], v86, v42);
          a1 = v82;
          sub_1003E9628(0, 0, v87, &unk_10094C3E0, v44);

          (*(v31 + 8))(v13, v42);
        }
      }

      else
      {
      }
    }

    goto LABEL_24;
  }

  v23 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (!v23)
  {
    return;
  }

  if ((sub_10029EF80() & 1) == 0)
  {
LABEL_33:

    return;
  }

  v24 = *(v23 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
  v80 = v2;
  v81 = v11;
  v82 = a1;
  if (v24 >> 62)
  {
LABEL_44:
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v25)
  {
LABEL_32:

    goto LABEL_33;
  }

  v26 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    type metadata accessor for DrawingAsset();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      break;
    }

    ++v26;
    if (v29 == v25)
    {
      goto LABEL_32;
    }
  }

  v79 = v30;

  v60 = *&v83[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  v61 = v85;
  dispatch thunk of PaperMarkupViewController.markup.getter();

  v62 = v81;
  v63 = v88;
  if ((*(v81 + 48))(v61, 1, v88) == 1)
  {

    sub_100004F84(v61, &unk_100ADC5E0);
    return;
  }

  v64 = *(v62 + 32);
  v65 = v84;
  v64(v84, v61, v63);
  PaperMarkup.contentsRenderFrame.getter();
  v95.origin.x = 0.0;
  v95.origin.y = 0.0;
  v95.size.width = 0.0;
  v95.size.height = 0.0;
  if (CGRectEqualToRect(v91, v95) || (PaperMarkup.contentsRenderFrame.getter(), v96.origin.x = CGRectNull.origin.x, v96.origin.y = CGRectNull.origin.y, v96.size.width = CGRectNull.size.width, v96.size.height = CGRectNull.size.height, CGRectEqualToRect(v92, v96)))
  {

    (*(v62 + 8))(v65, v63);
    return;
  }

  v66 = type metadata accessor for TaskPriority();
  v67 = v87;
  (*(*(v66 - 8) + 56))(v87, 1, 1, v66);
  v68 = v62;
  v69 = v86;
  (*(v62 + 16))(v86, v65, v63);
  type metadata accessor for MainActor();
  v85 = v28;
  v70 = static MainActor.shared.getter();
  v71 = v63;
  v72 = (*(v68 + 80) + 40) & ~*(v68 + 80);
  v73 = v65;
  v74 = swift_allocObject();
  *(v74 + 2) = v70;
  *(v74 + 3) = &protocol witness table for MainActor;
  *(v74 + 4) = v79;
  v64(&v74[v72], v69, v71);
  sub_1003E9628(0, 0, v67, &unk_10094C3F0, v74);

  PaperMarkup.contentsRenderFrame.getter();
  MaxY = CGRectGetMaxY(v93);
  v2 = v80;
  [v80 bounds];
  v76 = MaxY + CGRectGetHeight(v94);
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v76;
  v77 = v83;
  static UIView.Invalidating.subscript.setter();

  (*(v68 + 8))(v73, v71);
  a1 = v82;
LABEL_24:
  v47 = a1;
  sub_1002B14BC(a1);
  if ([v2 isEditable])
  {
    v48 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
    v49 = sub_100544E50();
    v50 = [v49 isVisible];

    if ((v50 & 1) == 0)
    {
      v51 = OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController;
      v52 = [*&v47[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController] view];
      if (v52)
      {
        v53 = v52;
        v54 = sub_100544E50();
        [v54 setVisible:1 forFirstResponder:v53];

        v55 = v48 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v56 = *(v55 + 8);
          ObjectType = swift_getObjectType();
          (*(v56 + 8))(v48, 1, ObjectType, v56);
          swift_unknownObjectRelease();
        }

        v58 = [*&v47[v51] view];
        if (v58)
        {
          v59 = v58;
          [v58 becomeFirstResponder];

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

uint64_t sub_1002BFD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002BFE24, v7, v6);
}

uint64_t sub_1002BFE24()
{
  v1 = v0[4];

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1002BFEDC;
  v3 = v0[3];

  return sub_1001B79DC(v1, &protocol witness table for MainActor, v3, 1);
}

uint64_t sub_1002BFEDC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1002D836C, v3, v2);
}

uint64_t sub_1002C0020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002C00B8, v7, v6);
}

uint64_t sub_1002C00B8()
{
  v1 = v0[4];

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1002C0170;
  v3 = v0[3];

  return sub_1001B79DC(v1, &protocol witness table for MainActor, v3, 1);
}

uint64_t sub_1002C0170()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1000EC728, v3, v2);
}

void sub_1002C02B4(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v22 - v6;
  if (![v2 isEditable])
  {
    return;
  }

  v8 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
  if (!v8)
  {
    return;
  }

  type metadata accessor for PaperKitDrawingCanvasView();
  v9 = a1;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    return;
  }

  v12 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (!v12)
  {
    return;
  }

  if ((sub_10029EF80() & 1) == 0)
  {
LABEL_19:
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v12;
    sub_1003E9628(0, 0, v7, &unk_10094C448, v21);

    return;
  }

  v13 = *(v12 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
  if (v13 >> 62)
  {
LABEL_26:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
LABEL_18:

    goto LABEL_19;
  }

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
        goto LABEL_25;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    type metadata accessor for DrawingAsset();
    if (swift_dynamicCastClass())
    {
      break;
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1002C0588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000F24EC(&qword_100AD1420);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for JournalFeatureFlags();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = type metadata accessor for AssetPlacement();
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v4[13] = v8;
  v4[14] = *(v8 - 8);
  v4[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v10;
  v4[18] = v9;

  return _swift_task_switch(sub_1002C07C8, v10, v9);
}

uint64_t sub_1002C07C8()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[14] + 104))(v1, enum case for AssetSource.drawingCanvas(_:), v0[13]);
  v0[19] = sub_1001B9A48(v1);
  (*(v4 + 104))(v3, enum case for AssetPlacement.canvas(_:), v5);

  if (v2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v0[20] = v6;
  v0[21] = v8;

  return _swift_task_switch(sub_1002C08D0, v6, v8);
}

uint64_t sub_1002C08D0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 128);
  if (v4)
  {
    *(v0 + 176) = CFAbsoluteTimeGetCurrent();
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_1002C0A60;
    v7 = *(v0 + 152);
    v8 = *(v0 + 96);

    return sub_10056B238(v5, &protocol witness table for MainActor, v7, v8, 1);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_1002C0DCC;
    v11 = *(v0 + 152);
    v12 = *(v0 + 96);

    return sub_1001F8424(v5, &protocol witness table for MainActor, v11, v12);
  }
}

uint64_t sub_1002C0A60()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1002C0B80, v3, v2);
}

uint64_t sub_1002C0B80()
{
  (*(v0[5] + 104))(v0[6], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[4]);

  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1002C0C78;
  v2 = v0[6];
  v3 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_1002D8344, v3, &type metadata for () + 8);
}

uint64_t sub_1002C0C78()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v4 = v2[20];
    v5 = v2[21];

    return _swift_task_switch(sub_1002C0F78, v4, v5);
  }
}

uint64_t sub_1002C0DCC()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1002C0EEC, v3, v2);
}

uint64_t sub_1002C0EEC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  v5 = v0[18];

  return _swift_task_switch(sub_1002C10CC, v4, v5);
}

uint64_t sub_1002C0F78()
{
  v1 = v0[22];
  v2 = *(v0 + 19);
  v3 = *(v0 + 3);
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, &v2[v4], v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_1001F81C4(v3);
  sub_100004F84(v3, &qword_100AD1420);
  sub_10056B00C(v2, v1);
  v8 = *(v0 + 11);
  v7 = *(v0 + 12);
  v9 = *(v0 + 10);

  (*(v8 + 8))(v7, v9);
  v10 = *(v0 + 17);
  v11 = *(v0 + 18);

  return _swift_task_switch(sub_1002C10CC, v10, v11);
}

uint64_t sub_1002C10CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C1180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1002C1218, v7, v6);
}

uint64_t sub_1002C1218()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
    v0[11] = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
    v3 = *(Strong + v2);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
      if (v4)
      {

        v5 = v4;
        sub_10012B2C8();
      }
    }

    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1002C136C;
    v7 = v0[6];

    return sub_1002BA06C(v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1002C136C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1002C148C, v3, v2);
}

uint64_t sub_1002C148C()
{
  v1 = v0[10];

  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector:"textViewDidChange:"])
    {
      [v3 textViewDidChange:v0[10]];
    }

    swift_unknownObjectRelease();
  }

  v4 = v0[10];
  v5 = *&v4[v0[11]];
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
    if (v6)
    {

      v7 = v6;
      sub_10012ACEC();
    }
  }

  v8 = v0[1];

  return v8();
}

void sub_1002C1590(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
  if (v3)
  {
    type metadata accessor for PaperKitDrawingCanvasView();
    v5 = a1;
    v6 = v3;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      sub_1002B1FB8();

      [v2 becomeFirstResponder];
    }
  }
}

void sub_1002C1654(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1000F24EC(&qword_100AE4290);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v33 - v14;
  v34 = [a1 textAttachment];
  type metadata accessor for ResizableAssetViewTextAttachment();
  if (swift_dynamicCastClass() && (v16 = sub_1007C8C2C()) != 0)
  {
    v33 = v16;
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v33 convertPoint:a6 fromCoordinateSpace:{a2, a3}];
    v36.x = v25;
    v36.y = v26;
    v37.origin.x = v18;
    v37.origin.y = v20;
    v37.size.width = v22;
    v37.size.height = v24;
    if (CGRectContainsPoint(v37, v36))
    {
      v27 = sub_1006B7F9C();

      if (v27)
      {
        v28 = OBJC_IVAR____TtC7Journal5Asset_type;
        v29 = type metadata accessor for AssetType();
        v30 = *(v29 - 8);
        (*(v30 + 16))(v15, &v27[v28], v29);

        (*(v30 + 56))(v15, 0, 1, v29);
      }

      else
      {
        v32 = type metadata accessor for AssetType();
        (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
      }

      sub_100014318(v15, a7, &qword_100AE4290);
      return;
    }

    v31 = v33;
  }

  else
  {
    v31 = v34;
  }
}

void sub_1002C1960(void *a1)
{
  type metadata accessor for ResizableAssetViewTextAttachment();
  if (!swift_dynamicCastClass())
  {
    return;
  }

  v3 = a1;
  v4 = sub_1006B7F9C();
  if (v4)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10048314C(v4);

      swift_unknownObjectRelease();
      return;
    }

    v2 = v4;
  }

  else
  {
    v2 = v3;
  }
}

void sub_1002C1A58(uint64_t a1)
{
  v2 = v1;
  sub_1002C1C88(a1);
  type metadata accessor for TimelineTextView();
  if (!swift_dynamicCastClass())
  {
    v3 = sub_1007C8C2C();
    if (v3)
    {
      v4 = v3;
      [v3 setUserInteractionEnabled:{objc_msgSend(v2, "isEditable")}];
    }

    [v2 isEditable];
    sub_1007C8CA4();
    sub_1007C8B44();
    v5 = sub_1007C8C2C();
    if (v5)
    {
      v19 = v5;
      type metadata accessor for DrawingAssetView();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView;
        v9 = *(v6 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
        if (v9)
        {
          *(v9 + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperCanvasDelegate + 8) = &off_100A63588;
          swift_unknownObjectWeakAssign();
        }

        v10 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker];
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v12 = *(v7 + v8);
        if (v12)
        {
          v13 = v12;
          sub_100498548(v10, Strong);
        }

        if (v2[OBJC_IVAR____TtC7Journal14CanvasTextView_showDrawingToolsPending] == 1)
        {
          sub_10071C024(v10, 1);
          v14 = *(v7 + v8);
          if (v14)
          {
            v15 = *&v14[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
            v16 = v14;
            v17 = [v15 view];
            if (!v17)
            {
              __break(1u);
              return;
            }

            v18 = v17;
            [v17 becomeFirstResponder];
          }
        }
      }
    }
  }
}