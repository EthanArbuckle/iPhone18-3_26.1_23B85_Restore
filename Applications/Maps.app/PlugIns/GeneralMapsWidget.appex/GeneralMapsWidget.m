id sub_100002030()
{
  type metadata accessor for StringUtils();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000E4B68 = result;
  return result;
}

uint64_t sub_1000020A8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for GeneralMapsWidget();
  v3 = (a1 + v2[6]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v4 = qword_1000E4B68;
  v31._countAndFlagsBits = 0x8000000100090CD0;
  v37._countAndFlagsBits = 0x6974736567677553;
  v37._object = 0xEB00000000736E6FLL;
  v33._object = 0x8000000100090C90;
  v33._countAndFlagsBits = 0xD000000000000017;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v5.super.isa = qword_1000E4B68;
  *v3 = sub_10007D258(v33, v35, v5, v37, v31);
  v3[1] = v6;
  v7 = (a1 + v2[7]);
  v32._countAndFlagsBits = 0x8000000100090D60;
  v34._object = 0x8000000100090CB0;
  v38._object = 0x8000000100090D00;
  v34._countAndFlagsBits = 0xD000000000000017;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v8.super.isa = v4;
  v38._countAndFlagsBits = 0x1000000000000053;
  *v7 = sub_10007D258(v34, v36, v8, v38, v32);
  v7[1] = v9;
  IsEnabled_VisitedPlaces = MapsFeature_IsEnabled_VisitedPlaces();
  sub_100015240(&qword_1000E2240, &qword_100085E90);
  v11 = sub_10007DFF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = (v12 + 104);
  v16 = 2 * v13;
  v17 = swift_allocObject();
  if (IsEnabled_VisitedPlaces)
  {
    *(v17 + 16) = xmmword_100085980;
    v18 = v17 + v14;
    v19 = *v15;
    (*v15)(v18, enum case for WidgetFamily.systemSmall(_:), v11);
    v19(v18 + v13, enum case for WidgetFamily.systemMedium(_:), v11);
    v19(v18 + v16, enum case for WidgetFamily.systemLarge(_:), v11);
    v20 = enum case for WidgetFamily.accessoryRectangular(_:);
    v21 = v18 + 3 * v13;
  }

  else
  {
    *(v17 + 16) = xmmword_100083D00;
    v22 = v17 + v14;
    v19 = *v15;
    (*v15)(v22, enum case for WidgetFamily.systemSmall(_:), v11);
    v19(v22 + v13, enum case for WidgetFamily.systemMedium(_:), v11);
    v20 = enum case for WidgetFamily.systemLarge(_:);
    v21 = v22 + v16;
  }

  v19(v21, v20, v11);
  *(a1 + v2[8]) = v17;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v23 = sub_10007D5C8();
  sub_1000046BC(v23, qword_1000E4B28);
  v24 = sub_10007D5A8();
  v25 = sub_10007E288();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "GeneralMapsWidget: init", v26, 2u);
  }

  if (qword_1000DE278 != -1)
  {
    swift_once();
  }

  sub_100055CA8();
  [objc_opt_self() configureGEOServiceTraitsAndClientCapabilitiesHardwareIdentifier];
  v27 = type metadata accessor for GeneralMapsTimelineProvider(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  result = sub_10006CA2C();
  *(a1 + v2[5]) = result;
  return result;
}

void sub_100002548()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_10007DF68();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v9 = sub_10007D5C8();
    sub_1000046BC(v9, qword_1000E4B28);
    v10 = sub_10007D5A8();
    v11 = sub_10007E288();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "GeneralMapsStateCollector: skipped collectNavigationRoute (state collection cancelled)", v12, 2u);
    }

    goto LABEL_14;
  }

  if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v13 = sub_10007D5C8();
  sub_1000046BC(v13, qword_1000E4B28);
  v14 = sub_10007D5A8();
  v15 = sub_10007E2C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "GeneralMapsStateCollector: collectNavigationRoute BEGIN", v16, 2u);
  }

  dispatch_group_enter(*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
  sub_100019908();
  v17 = objc_opt_self();
  v18 = [v17 sharedService];
  if (v18)
  {
    v19 = v18;
    [v18 registerObserver:v1];
  }

  v20 = [v17 sharedService];
  if (v20)
  {
    v10 = v20;
    [v20 openForClient:v1];
LABEL_14:
  }
}

uint64_t sub_100002850(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10007DEB8();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10007DED8();
  v45 = *(v47 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10007D3B8();
  v13 = *(v43 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v43);
  v41 = v15;
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007DF48();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v21 = sub_10007D5C8();
  sub_1000046BC(v21, qword_1000E4B28);
  v22 = sub_10007D5A8();
  v23 = sub_10007E2C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v40 = v4;
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "GeneralMapsStateCollector: collect BEGIN", v24, 2u);
    v4 = v40;
  }

  v25 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v20 = v25;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v25;
  LOBYTE(v25) = sub_10007DF68();
  result = (*(v17 + 8))(v20, v16);
  if (v25)
  {
    sub_10001A064();
    v28 = v42;
    v27 = v43;
    (*(v13 + 16))(v42, a1, v43);
    v29 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v4;
    (*(v13 + 32))(v30 + v29, v28, v27);
    v31 = v4;
    sub_100016FB0(a1, sub_100025AC4, v30);

    sub_100002548();
    v32 = *&v31[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup];
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = a3;
    v33[4] = v31;
    aBlock[4] = sub_100025B94;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C88E8;
    v34 = _Block_copy(aBlock);
    v35 = v31;

    v36 = v44;
    sub_10007DEC8();
    v50 = &_swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    v37 = v46;
    v38 = v49;
    sub_10007E3F8();
    sub_10007E2E8();
    _Block_release(v34);
    (*(v48 + 8))(v37, v38);
    (*(v45 + 8))(v36, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002E64()
{
  result = qword_1000DF520;
  if (!qword_1000DF520)
  {
    sub_10007DEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF520);
  }

  return result;
}

unint64_t sub_100002EBC()
{
  result = qword_1000DF530;
  if (!qword_1000DF530)
  {
    sub_100015288(&unk_1000DE980, &unk_1000835B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF530);
  }

  return result;
}

uint64_t sub_100002F20(uint64_t a1, char *a2, void (*a3)(void), void *a4)
{
  v124 = a3;
  v125 = a2;
  v6 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v107 - v8;
  v10 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v117 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007DEB8();
  v122 = *(v14 - 8);
  v123 = v14;
  v15 = *(v122 + 64);
  __chkstk_darwin(v14);
  v119 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10007DED8();
  v120 = *(v121 - 8);
  v17 = *(v120 + 64);
  __chkstk_darwin(v121);
  v118 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007D3B8();
  v126 = *(v19 - 8);
  v20 = *(v126 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v107 - v25;
  __chkstk_darwin(v24);
  v28 = &v107 - v27;
  v29 = *(a1 + 128);
  if (v29)
  {
    v110 = v11;
    v112 = v10;
    v115 = a1;
    v116 = a4;

    sub_10007D3A8();
    v30 = OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_expiration;
    swift_beginAccess();
    v31 = v126;
    v32 = *(v126 + 16);
    v114 = v30;
    v111 = v32;
    v32(v26, (v29 + v30), v19);
    LOBYTE(v30) = sub_10007D2E8();
    v33 = *(v31 + 8);
    v33(v26, v19);
    v113 = v33;
    v33(v28, v19);
    if (v30)
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v34 = sub_10007D5C8();
      sub_1000046BC(v34, qword_1000E4B28);
      v35 = sub_10007D5A8();
      v36 = sub_10007E298();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "GeneralMapsTimelineProvider: refreshIfNeeded: was already refreshing", v37, 2u);
      }

      v38 = v111;
      v111(v28, (v29 + v114), v19);
      v39 = v125;
      v40 = sub_10007D2D8();
      v113(v28, v19);
      if (v40)
      {
        v38(v23, v39, v19);

        v41 = sub_10007D5A8();
        v42 = sub_10007E288();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 134349056;
          v44 = v38;
          v45 = v114;
          v44(v28, v29 + v114, v19);
          v46 = v42;
          sub_10007D2B8();
          v48 = v47;
          v49 = v113;
          v113(v28, v19);
          v49(v23, v19);
          *(v43 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v41, v46, "GeneralMapsTimelineProvider: refreshIfNeeded: extending refresh session expiration by %{public}f seconds", v43, 0xCu);
          v39 = v125;
        }

        else
        {

          v113(v23, v19);
          v45 = v114;
        }

        swift_beginAccess();
        (*(v126 + 24))(v29 + v45, v39, v19);
        swift_endAccess();
      }

      v101 = *(v29 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_group);
      v102 = *(v115 + 120);
      v132 = v124;
      v133 = v116;
      aBlock = _NSConcreteStackBlock;
      v129 = 1107296256;
      v130 = sub_1000041A4;
      v131 = &unk_1000C9830;
      v103 = _Block_copy(&aBlock);

      v104 = v118;
      sub_10007DEC8();
      v134 = _swiftEmptyArrayStorage;
      sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
      sub_100015240(&unk_1000DE980, &unk_1000835B0);
      sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
      v105 = v119;
      v106 = v123;
      sub_10007E3F8();
      sub_10007E2E8();
      _Block_release(v103);
      (*(v122 + 8))(v105, v106);
      (*(v120 + 8))(v104, v121);
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v50 = sub_10007D5C8();
    sub_1000046BC(v50, qword_1000E4B28);

    v51 = sub_10007D5A8();
    v52 = sub_10007E288();

    v53 = os_log_type_enabled(v51, v52);
    v11 = v110;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v109 = v52;
      v55 = v54;
      v108 = swift_slowAlloc();
      aBlock = v108;
      *v55 = 136446210;
      v111(v28, (v29 + v114), v19);
      sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
      v56 = sub_10007E588();
      v58 = v57;
      v113(v28, v19);
      v59 = sub_100051190(v56, v58, &aBlock);

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v109, "GeneralMapsTimelineProvider: refreshIfNeeded: clearing expired refresh session (expired at %{public}s)", v55, 0xCu);
      sub_1000250AC(v108);
    }

    a4 = v116;
    v10 = v112;
    a1 = v115;
    v60 = *(v115 + 128);
    if (v60)
    {
      v61 = *(v60 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_collector);
      v62 = *(v115 + 128);

      sub_100016D30();
      v10 = v112;
    }

    v63 = *(a1 + 128);
    *(a1 + 128) = 0;
  }

  v64 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  swift_beginAccess();
  sub_100026310(a1 + v64, v9, &qword_1000E24F0, &qword_100085FF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000256C0(v9, &qword_1000E24F0, &qword_100085FF0);
LABEL_26:
    v74 = v125;
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v75 = sub_10007D5C8();
    sub_1000046BC(v75, qword_1000E4B28);
    v76 = sub_10007D5A8();
    v77 = sub_10007E298();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "GeneralMapsTimelineProvider: refreshIfNeeded: will refresh!", v78, 2u);
    }

    v79 = *(a1 + 120);
    v80 = objc_allocWithZone(type metadata accessor for GeneralMapsStateCollector());
    v116 = v79;
    sub_1000161A4(v116);
    v82 = v81;
    v83 = v126;
    (*(v126 + 16))(v28, v74, v19);
    v84 = type metadata accessor for GeneralMapsTimelineProvider.StateCollectionSession(0);
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    v87 = swift_allocObject();
    v88 = a1;
    v89 = OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_group;
    v90 = v82;
    v117 = v90;
    v91 = dispatch_group_create();
    *(v87 + v89) = v91;
    (*(v83 + 32))(v87 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_expiration, v28, v19);
    *(v87 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_collector) = v90;
    v92 = *(a1 + 128);
    *(a1 + 128) = v87;
    v93 = v91;

    dispatch_group_enter(v93);

    v94 = *(v87 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_group);
    v132 = v124;
    v133 = a4;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_1000041A4;
    v131 = &unk_1000C97E0;
    v95 = _Block_copy(&aBlock);

    v96 = v118;
    sub_10007DEC8();
    v127 = _swiftEmptyArrayStorage;
    sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
    v97 = v119;
    v98 = v123;
    sub_10007E3F8();
    sub_10007E2E8();
    _Block_release(v95);
    (*(v122 + 8))(v97, v98);
    (*(v120 + 8))(v96, v121);

    v99 = swift_allocObject();
    *(v99 + 16) = v88;
    *(v99 + 24) = v87;

    v100 = v117;
    sub_100002850(v125, sub_1000778D4, v99);
  }

  v65 = v117;
  sub_100077E94(v9, v117, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
  sub_10007D3A8();
  v66 = *(v10 + 20);
  sub_10007D2B8();
  v68 = v67;
  (*(v126 + 8))(v28, v19);
  if (v68 >= 15.0)
  {
    sub_100077A58(v65, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
    goto LABEL_26;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v69 = sub_10007D5C8();
  sub_1000046BC(v69, qword_1000E4B28);
  v70 = sub_10007D5A8();
  v71 = sub_10007E298();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "GeneralMapsTimelineProvider: refreshIfNeeded: refresh not needed", v72, 2u);
  }

  v124();
  return sub_100077A58(v65, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
}

uint64_t sub_100003E7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003EBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100003F48()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(sub_10007E0C8() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v7 + 16) & ~v2;
  v9 = *(v0 + 16);
  v10 = (v0 + v7);
  v11 = *v10;
  v12 = v10[1];

  return sub_100075618(v9, v0 + v3, v0 + v6, v11, v12, v0 + v8);
}

uint64_t sub_100004058(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);
  v8 = *(v1 + v6 + 8);

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_10000413C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1000041AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  v4 = sub_10007DEB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10007DED8();
  v9 = *(v38 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v38);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007DF48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = [v3 dispatchQueue];
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = sub_10007DF68();
  v20 = *(v14 + 8);
  v19 = v14 + 8;
  v20(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v19 = OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup;
  v21 = *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup];
  if (v21)
  {
LABEL_8:
    v30 = v21;
    v31 = [v3 dispatchQueue];
    v32 = swift_allocObject();
    v33 = v37;
    v32[2] = v36;
    v32[3] = v33;
    v32[4] = v3;
    aBlock[4] = sub_100004700;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C8C68;
    v34 = _Block_copy(aBlock);

    v35 = v3;
    sub_10007DEC8();
    v39 = &_swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    sub_10007E2E8();
    _Block_release(v34);

    (*(v5 + 8))(v8, v4);
    (*(v9 + 8))(v12, v38);
  }

  v22 = dispatch_group_create();
  v23 = *&v3[v19];
  *&v3[v19] = v22;
  v24 = v22;

  dispatch_group_enter(v24);
  if (qword_1000DE268 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v25 = sub_10007D5C8();
  sub_1000046BC(v25, qword_1000E4B28);
  v26 = sub_10007D5A8();
  v27 = sub_10007E2C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "GeneralMapsLocationUpdater: singleLocationUpdate BEGIN", v28, 2u);
  }

  result = *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
  if (result)
  {
    result = [result requestLocation];
    v21 = *&v3[v19];
    if (v21)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004650()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100004690()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1000041AC(v1, v2);
}

uint64_t sub_1000046BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000470C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation;
  if (*(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation))
  {
    v3 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation);

    sub_10007DF18();
    v4 = *(a1 + v1);
    *(a1 + v1) = 0;

    sub_100004864();
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v5 = sub_10007D5C8();
    sub_1000046BC(v5, qword_1000E4B28);
    oslog = sub_10007D5A8();
    v6 = sub_10007E2A8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "GeneralMapsStateCollector: collectNavigationRoute was cancelled just before nav service callback", v7, 2u);
    }
  }
}

void sub_100004864()
{
  v1 = v0;
  v2 = *(*(sub_100015240(&qword_1000DEA40, &qword_1000829D8) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v127 - v6;
  v8 = sub_10007DF48();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = sub_10007DF68();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_60:
    swift_once();
LABEL_5:
    v17 = sub_10007D5C8();
    sub_1000046BC(v17, qword_1000E4B28);
    v18 = sub_10007D5A8();
    v19 = sub_10007E2A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "GeneralMapsStateCollector: collectNavigationRoute END (state collection cancelled)", v20, 2u);
    }

    [v8 unregisterObserver:v1];
    if (![v8 *(v15 + 96)])
    {
      goto LABEL_9;
    }

LABEL_8:
    [v8 closeForClient:v1];
LABEL_9:
    dispatch_group_leave(*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));

    return;
  }

  v16 = [objc_opt_self() sharedService];
  if (v16)
  {
    v8 = v16;
    v15 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
    {
      if (qword_1000DE268 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_60;
    }

    if ([v16 isOpenForClient:v1])
    {
      if ([v8 isInNavigatingState])
      {
        v21 = [v8 route];
        if (v21)
        {
          v139 = v21;
          v22 = v21;
          v23 = [v8 batteryChargeInfoForRoute:v22];
          v24 = [v8 displayETAInfoForRoute:v22];
          if (v24)
          {
            v25 = v24;
            v26 = [v8 remainingDistanceInfoForRoute:v22];
            if (v26)
            {
              v137 = v26;
              v138 = v22;
              v27 = [v8 upcomingStop];
              v28 = [v27 timezone];

              v134 = v23;
              if (v28)
              {
                sub_10007D438();

                v29 = 0;
              }

              else
              {
                v29 = 1;
              }

              v42 = sub_10007D448();
              v43 = *(v42 - 8);
              v44 = *(v43 + 56);
              v130 = v43 + 56;
              v131 = v44;
              v44(v7, v29, 1, v42);
              v133 = [v138 transportType];
              v45 = *(v43 + 48);
              v132 = v42;
              v46 = v45(v7, 1, v42);
              v135 = v134;
              v136 = v25;
              v137 = v137;
              isa = 0;
              if (v46 != 1)
              {
                isa = sub_10007D428().super.isa;
                (*(v43 + 8))(v7, v132);
              }

              v48 = objc_allocWithZone(GuidanceETA);
              v50 = v136;
              v49 = v137;
              v51 = v135;
              v52 = [v48 initWithDisplayETA:v136 remainingDistance:v137 batteryChargeInfo:v135 destinationTimeZone:isa transportType:v133];

              if (!v52)
              {
                v67 = v138;

                if (qword_1000DE268 != -1)
                {
                  swift_once();
                }

                v68 = sub_10007D5C8();
                sub_1000046BC(v68, qword_1000E4B28);
                v139 = v67;
                v69 = v135;
                v135 = v136;
                v70 = v137;
                v71 = v8;
                v72 = sub_10007D5A8();
                v73 = sub_10007E2A8();
                v136 = v71;

                v138 = v69;
                v74 = v135;
                v137 = v70;

                v133 = v73;
                if (os_log_type_enabled(v72, v73))
                {
                  v129 = v72;
                  v75 = swift_slowAlloc();
                  v128 = swift_slowAlloc();
                  *&v157[0] = v128;
                  *v75 = 136381699;
                  v76 = v74;
                  v77 = [v76 description];
                  v78 = sub_10007E158();
                  v80 = v79;
                  v135 = v76;

                  v81 = sub_100051190(v78, v80, v157);

                  *(v75 + 4) = v81;
                  *(v75 + 12) = 2081;
                  v82 = v137;
                  v83 = [v82 description];
                  v84 = sub_10007E158();
                  v86 = v85;
                  v137 = v82;

                  v87 = sub_100051190(v84, v86, v157);

                  *(v75 + 14) = v87;
                  *(v75 + 22) = 2081;
                  *&v155[0] = v134;
                  v138 = v138;
                  sub_100015240(&qword_1000DEA48, &qword_1000829E0);
                  v88 = sub_10007E168();
                  v90 = sub_100051190(v88, v89, v157);

                  *(v75 + 24) = v90;
                  *(v75 + 32) = 2081;
                  v91 = v136;
                  v92 = [v136 upcomingStop];
                  v93 = [v92 timezone];

                  if (v93)
                  {
                    sub_10007D438();

                    v94 = 0;
                  }

                  else
                  {
                    v94 = 1;
                  }

                  v120 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
                  v121 = v139;
                  v131(v5, v94, 1, v132);
                  v122 = sub_10007E168();
                  v124 = sub_100051190(v122, v123, v157);

                  *(v75 + 34) = v124;
                  *(v75 + 42) = 1026;
                  v125 = [v121 transportType];

                  *(v75 + 44) = v125;
                  v126 = v129;
                  _os_log_impl(&_mh_execute_header, v129, v133, "GeneralMapsStateCollector: collectNavigationRoute END (failed to create GuidanceETA) - displayETA: %{private}s, remainingDistance: %{private}s, batteryChargeInfo: %{private}s, destinationTimeZone: %{private}s, transportType: %{public}d", v75, 0x30u);
                  swift_arrayDestroy();
                }

                else
                {

                  v119 = v139;
                  v120 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
                  v91 = v136;
                }

                [v91 unregisterObserver:v1];
                v36 = [v91 v120[12]];
LABEL_28:
                if ((v36 & 1) == 0)
                {
                  goto LABEL_9;
                }

                goto LABEL_8;
              }

              sub_100015ECC(v157);
              v162[0] = v159;
              sub_1000256C0(v162, &qword_1000DEA50, &qword_1000829E8);
              v53 = v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
              v54 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
              v155[4] = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
              v155[5] = v54;
              v156 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
              v55 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
              v155[0] = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
              v155[1] = v55;
              v56 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
              v155[2] = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
              v155[3] = v56;
              v57 = v157[0];
              v58 = v157[1];
              v59 = v157[3];
              v60 = v158;
              *(v53 + 32) = v157[2];
              *(v53 + 48) = v59;
              *v53 = v57;
              *(v53 + 16) = v58;
              v61 = v139;
              *(v53 + 64) = v60;
              *(v53 + 72) = v61;
              *(v53 + 96) = v161;
              *(v53 + 80) = v160;
              sub_1000256C0(v155, &qword_1000DE950, &qword_100082918);
              v62 = [v52 arrivalAMPMTimeString];
              if (v62)
              {
                v63 = v62;
                v64 = sub_10007E158();
                v66 = v65;
              }

              else
              {
                v64 = 0;
                v66 = 0;
              }

              v95 = *(v53 + 48);
              v142 = *(v53 + 32);
              v143 = v95;
              v144 = *(v53 + 64);
              v96 = *(v53 + 16);
              v141[0] = *v53;
              v141[1] = v96;
              v97 = *(v53 + 80);
              v98 = *(v53 + 88);
              v99 = *(v53 + 96);
              v149 = v96;
              v150 = v142;
              v151 = v95;
              v152 = v144;
              v148 = v141[0];
              v145 = v97;
              v146 = v98;
              v147 = v99;
              sub_100025354(v141, v153);

              v100 = *(v53 + 80);
              v153[4] = *(v53 + 64);
              v153[5] = v100;
              v154 = *(v53 + 96);
              v101 = *(v53 + 16);
              v153[0] = *v53;
              v153[1] = v101;
              v102 = *(v53 + 48);
              v153[2] = *(v53 + 32);
              v153[3] = v102;
              v103 = v152;
              *(v53 + 48) = v151;
              *(v53 + 64) = v103;
              v104 = v150;
              *(v53 + 16) = v149;
              *(v53 + 32) = v104;
              *v53 = v148;
              *(v53 + 80) = v64;
              *(v53 + 88) = v66;
              *(v53 + 96) = v99;
              sub_1000256C0(v153, &qword_1000DE950, &qword_100082918);
              if (qword_1000DE268 != -1)
              {
                swift_once();
              }

              v105 = sub_10007D5C8();
              sub_1000046BC(v105, qword_1000E4B28);
              v106 = v138;
              v107 = v52;
              v108 = sub_10007D5A8();
              v109 = sub_10007E2C8();

              if (os_log_type_enabled(v108, v109))
              {
                v110 = swift_slowAlloc();
                v138 = swift_slowAlloc();
                v140 = v138;
                *v110 = 67174915;
                *(v110 + 4) = [v106 expectedTime] / 0x3C;

                *(v110 + 8) = 2081;
                v111 = v107;
                v112 = [v111 description];
                v139 = v107;
                v113 = v112;
                v114 = sub_10007E158();
                LODWORD(v134) = v109;
                v115 = v106;
                v117 = v116;

                v118 = sub_100051190(v114, v117, &v140);
                v106 = v115;

                *(v110 + 10) = v118;
                v107 = v139;
                _os_log_impl(&_mh_execute_header, v108, v134, "GeneralMapsStateCollector: collectNavigationRoute END (route with expected travel time: %{private}u mins, ETA %{private}s)", v110, 0x12u);
                sub_1000250AC(v138);
              }

              else
              {
              }

              v15 = 0x1000DC000;
              sub_100019CA4();

LABEL_27:
              [v8 unregisterObserver:v1];
              v36 = [v8 *(v15 + 96)];
              goto LABEL_28;
            }
          }

          if (qword_1000DE268 != -1)
          {
            swift_once();
          }

          v37 = sub_10007D5C8();
          sub_1000046BC(v37, qword_1000E4B28);
          v38 = v22;
          v39 = sub_10007D5A8();
          v40 = sub_10007E2A8();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 67174657;
            *(v41 + 4) = [v38 expectedTime] / 0x3C;

            _os_log_impl(&_mh_execute_header, v39, v40, "GeneralMapsStateCollector: collectNavigationRoute END (route with expected travel time: %{private}u mins, but no ETA available)", v41, 8u);
          }

          else
          {

            v39 = v23;
            v23 = v38;
          }

          goto LABEL_27;
        }
      }

      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v35 = sub_10007D5C8();
      sub_1000046BC(v35, qword_1000E4B28);
      v31 = sub_10007D5A8();
      v32 = sub_10007E2C8();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_26:

        goto LABEL_27;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "GeneralMapsStateCollector: collectNavigationRoute END (not navigating)";
    }

    else
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v30 = sub_10007D5C8();
      sub_1000046BC(v30, qword_1000E4B28);
      v31 = sub_10007D5A8();
      v32 = sub_10007E2A8();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_26;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "GeneralMapsStateCollector: collectNavigationRoute END (nav service was closed for client)";
    }

    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_100005744(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

_DWORD *sub_1000058A8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1000058B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000058D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007D3B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_100005A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10007D3B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100005B94()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100005C68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005CA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005CEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005D2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005D64()
{
  v1 = *(sub_100015240(&qword_1000DE928, &unk_100082900) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_10007D3B8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

uint64_t sub_100005EB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005F08()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100005FF8()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 24);

  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000060F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006130()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006170()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006254()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006330()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 16) & ~v3;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v9 = *(v0 + v6 + 8);

  v8(v0 + v7, v1);

  return _swift_deallocObject(v0, v7 + v5, v3 | 7);
}

uint64_t sub_10000643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007D3B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000064FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007D3B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000065C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NearbyEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000066C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NearbyEntryContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000067CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007DD18();
  *a1 = result;
  return result;
}

uint64_t sub_100006880(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DEB40, qword_100082B10);
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

  v14 = type metadata accessor for NearbyEntryContent(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000069F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for NearbyEntryContent(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
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

uint64_t sub_100006B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyEntryContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100006BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyEntryContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100006C48()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DEFF0, &qword_100082F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NearbyButtonContent(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_100006E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NearbyButtonContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100006F34()
{
  sub_100015288(&qword_1000DEEF0, &qword_100082E40);
  sub_100015288(&qword_1000DEEE8, &qword_100082E38);
  sub_100015288(&qword_1000DEF10, &qword_100082E60);
  sub_10002DDAC(&qword_1000DEF18, &qword_1000DEEE8, &qword_100082E38);
  sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007068()
{
  sub_100015288(&qword_1000DEFD0, &qword_100082F70);
  sub_10002DDAC(&qword_1000DEFE0, &qword_1000DEFD0, &qword_100082F70);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007100()
{
  sub_100015288(&qword_1000DF060, &qword_100083010);
  sub_100015288(&qword_1000DF068, &qword_100083018);
  sub_100015288(&qword_1000DEF10, &qword_100082E60);
  sub_10002DDAC(&qword_1000DF070, &qword_1000DF068, &qword_100083018);
  sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007234()
{
  sub_100015288(&qword_1000DF080, &qword_100083028);
  sub_100015288(&qword_1000DF078, &qword_100083020);
  sub_100015288(&qword_1000DEF10, &qword_100082E60);
  sub_10002DDAC(&qword_1000DF090, &qword_1000DF078, &qword_100083020);
  sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007424()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007464()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000074A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000074DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommuteWindowEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100007614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CommuteWindowEntryContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100007730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for CommuteWindowEntryContent(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100007888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for CommuteWindowEntryContent(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100007A04()
{
  sub_100015288(&qword_1000DF828, &qword_1000838D8);
  sub_100015288(&qword_1000DF820, &qword_1000838D0);
  sub_100015288(&qword_1000DF850, &qword_1000838F8);
  sub_10002DDAC(&qword_1000DF858, &qword_1000DF820, &qword_1000838D0);
  sub_10002DDAC(&qword_1000DF860, &qword_1000DF850, &qword_1000838F8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007B38()
{
  type metadata accessor for CommuteWindowPlatterContent();
  sub_100035A8C(&qword_1000DF880, type metadata accessor for CommuteWindowPlatterContent);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007BC0()
{
  sub_100015288(&qword_1000DF890, qword_100083990);
  sub_100015288(&qword_1000DF888, &qword_100083988);
  sub_100036114();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007C84(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000DF940, &qword_100083A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DF940, &qword_100083A78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007D88(uint64_t *a1)
{
  v1 = *a1;
  sub_100015288(&qword_1000DFA00, &qword_100083B58);
  sub_10007D6E8();
  swift_getTupleTypeMetadata2();
  sub_10007DE98();
  swift_getWitnessTable();
  sub_10007DE18();
  sub_10007D6E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ContentSizeCategoryLimiter();
  return swift_getWitnessTable();
}

uint64_t sub_100007EC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100015288(&qword_1000DFAD0, &unk_100083C30);
  sub_10007D6E8();
  sub_10002DDAC(&qword_1000DFAD8, &qword_1000DFAD0, &unk_100083C30);
  return swift_getWitnessTable();
}

uint64_t sub_100007F74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007FBC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007FF4()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000080B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000080F0()
{
  v1 = *(sub_100015240(&qword_1000DE928, &unk_100082900) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = sub_10007D3B8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000821C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DFF50, qword_100083D90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100008294(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DFF50, qword_100083D90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100008310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D7D8();
  *a1 = result;
  return result;
}

uint64_t sub_10000833C(uint64_t *a1)
{
  v1 = *a1;

  return sub_10007D7E8();
}

uint64_t sub_100008368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D768();
  *a1 = result;
  return result;
}

uint64_t sub_100008394(uint64_t *a1)
{
  v1 = *a1;

  return sub_10007D778();
}

uint64_t sub_1000083C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007D7B8();
  *a1 = result;
  return result;
}

uint64_t sub_100008414@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007D818();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100008448(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10007D828();
}

uint64_t sub_100008510(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E0418, &qword_1000843E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008688(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10007D3B8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000087B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_10007D3B8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000088E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007D3E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10007D238();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000089D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10007D3E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10007D238();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100008AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483645)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v13 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100008C14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007E0C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483645)
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  else
  {
    v11 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100008D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommuteWindowEntryContent(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_100008E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommuteWindowEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100008EBC()
{
  v1 = type metadata accessor for CommuteWindowEntryContentResolver(0);
  v29 = *(*(v1 - 1) + 80);
  v2 = (v29 + 16) & ~v29;
  v28 = *(*(v1 - 1) + 64);
  v30 = sub_10007E0C8();
  v3 = *(v30 - 8);
  v4 = *(v3 + 80);
  v27 = *(v3 + 64);
  v31 = sub_10007D288();
  v5 = *(v31 - 8);
  v6 = *(v5 + 80);
  v26 = *(v5 + 64);
  v7 = v0 + v2;
  v8 = *(v0 + v2);
  if (v8 != 1)
  {
  }

  v9 = *(v7 + 24);

  v10 = *(v7 + 32);

  v11 = *(v7 + 48);

  v12 = *(v7 + 64);

  v13 = type metadata accessor for CommuteWindowEntryContent(0);
  v14 = *(v13 + 36);
  v15 = sub_10007D3B8();
  (*(*(v15 - 8) + 8))(v7 + v14, v15);
  v16 = v7 + *(v13 + 40);
  v17 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    (*(v3 + 8))(v16, v30);
    v18 = (v16 + *(v17 + 20));
    if (*v18 != 1)
    {
    }

    v19 = *(v17 + 24);
    v2 = (v29 + 16) & ~v29;
    if (!(*(v5 + 48))(v16 + v19, 1, v31))
    {
      (*(v5 + 8))(v16 + v19, v31);
    }
  }

  v20 = (v2 + v28 + v4) & ~v4;
  v21 = (v20 + v27 + v6) & ~v6;
  v22 = (v26 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;

  v23 = *(v7 + v1[7]);

  (*(v3 + 8))(v0 + v20, v30);
  (*(v5 + 8))(v0 + v21, v31);
  v24 = *(v0 + v22 + 8);

  return _swift_deallocObject(v0, v22 + 16, v29 | v4 | v6 | 7);
}

uint64_t sub_100009224()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000925C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000929C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000092D4()
{
  v1 = sub_100015240(&qword_1000E0948, &qword_100084800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009368()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000093A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000093D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000941C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DEB40, qword_100082B10);
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

  v14 = type metadata accessor for NavigationETAEntryContent(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10000958C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for NavigationETAEntryContent(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
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

uint64_t sub_10000979C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000097D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000098D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100009A00()
{
  sub_100015288(&qword_1000E1048, &qword_100084F20);
  sub_100015288(&qword_1000E1040, &qword_100084F18);
  sub_100015288(&qword_1000E1068, &qword_100084F40);
  sub_10002DDAC(&qword_1000E1070, &qword_1000E1040, &qword_100084F18);
  sub_10002DDAC(&qword_1000E1078, &qword_1000E1068, &qword_100084F40);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009B34()
{
  type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent(255);
  sub_100059190(&qword_1000E1098, type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009BBC()
{
  sub_100015288(&qword_1000E10B0, &qword_100085018);
  sub_100015288(&qword_1000E10A8, &qword_100085010);
  sub_100015288(&qword_1000E1068, &qword_100084F40);
  sub_10002DDAC(&qword_1000E10C8, &qword_1000E10A8, &qword_100085010);
  sub_10002DDAC(&qword_1000E1078, &qword_1000E1068, &qword_100084F40);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationETAEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100009E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NavigationETAEntryContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100009F38()
{
  sub_100015288(&qword_1000E1308, &qword_100085240);
  sub_100015288(&qword_1000E1300, &qword_100085238);
  sub_100015288(&qword_1000E1328, &qword_100085260);
  sub_10002DDAC(&qword_1000E1330, &qword_1000E1300, &qword_100085238);
  sub_10002DDAC(&qword_1000E1338, &qword_1000E1328, &qword_100085260);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A06C()
{
  sub_100015288(&qword_1000E1368, &qword_100085330);
  sub_100015288(&qword_1000E1360, &qword_100085328);
  sub_100015288(&qword_1000E1328, &qword_100085260);
  sub_10002DDAC(&qword_1000E1378, &qword_1000E1360, &qword_100085328);
  sub_10002DDAC(&qword_1000E1338, &qword_1000E1328, &qword_100085260);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000E14B0, &unk_1000853E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10000A308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100015240(&qword_1000E14B0, &unk_1000853E0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10000A46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E15A8, &qword_100085578);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A570(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000E14B0, &unk_1000853E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CommuteWindowEntryContent(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10000A734(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100015240(&qword_1000E14B0, &unk_1000853E0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100015240(&qword_1000DEB40, qword_100082B10);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for CommuteWindowEntryContent(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100015240(&qword_1000E1030, &qword_100085510);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000AA08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100015240(&qword_1000E1030, &qword_100085510);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000AAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000ABD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10007E0C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10000AE1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SuggestedDestinationEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10000AF4C()
{
  v1 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v2 = *(*(v1 - 1) + 80);
  v31 = *(*(v1 - 1) + 64);
  v34 = sub_10007E0C8();
  v3 = *(v34 - 8);
  v30 = *(v3 + 80);
  v29 = *(v3 + 64);
  v33 = sub_10007D3B8();
  v4 = *(v33 - 8);
  v5 = *(v4 + 80);
  v28 = *(v4 + 64);
  v32 = (v2 + 16) & ~v2;
  v6 = v0 + v32;
  v7 = *(v0 + v32 + 8);

  v8 = *(v0 + v32 + 24);

  v9 = *(v0 + v32 + 56);
  if (v9 != 1)
  {
  }

  v10 = v6 + *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
  v11 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v26 = v5;
    v27 = v2;
    (*(v3 + 8))(v10, v34);
    v12 = (v10 + v11[5]);
    if (*v12 != 1)
    {
    }

    v13 = v11[7];
    v14 = sub_10007D288();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v10 + v13, 1, v14))
    {
      (*(v15 + 8))(v10 + v13, v14);
    }

    v16 = *(v10 + v11[8] + 8);

    v17 = *(v10 + v11[9] + 8);

    v5 = v26;
    v2 = v27;
  }

  v18 = v1[9];
  v19 = sub_10007D3E8();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v6 + v18, 1, v19))
  {
    (*(v20 + 8))(v6 + v18, v19);
  }

  v21 = (v32 + v31 + v30) & ~v30;
  v22 = (v21 + v29 + v5) & ~v5;
  v23 = (v28 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v21, v34);
  (*(v4 + 8))(v0 + v22, v33);
  v24 = *(v0 + v23 + 8);

  return _swift_deallocObject(v0, v23 + 16, v2 | v30 | v5 | 7);
}

uint64_t sub_10000B354()
{
  v1 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v34 = *(*(v1 - 1) + 64);
  v35 = sub_10007E0C8();
  v4 = *(v35 - 8);
  v5 = *(v4 + 80);
  v33 = *(v4 + 64);
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 56);
  if (v9 != 1)
  {
  }

  v10 = v6 + *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
  v11 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v31 = v2;
    v32 = (v2 + 16) & ~v2;
    (*(v4 + 8))(v10, v35);
    v12 = (v10 + v11[5]);
    if (*v12 != 1)
    {
    }

    v13 = v11[7];
    v14 = sub_10007D288();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v10 + v13, 1, v14))
    {
      (*(v15 + 8))(v10 + v13, v14);
    }

    v16 = *(v10 + v11[8] + 8);

    v17 = *(v10 + v11[9] + 8);

    v2 = v31;
    v3 = v32;
  }

  v18 = v1[9];
  v19 = sub_10007D3E8();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v6 + v18, 1, v19))
  {
    (*(v20 + 8))(v6 + v18, v19);
  }

  v21 = (v3 + v34 + v5) & ~v5;
  v22 = (v33 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v21, v35);
  v26 = *(v0 + v22);

  v27 = *(v0 + v23 + 8);

  v28 = *(v0 + v24 + 8);

  v29 = *(v0 + v25 + 8);

  return _swift_deallocObject(v0, v25 + 16, v2 | v5 | 7);
}

uint64_t sub_10000B764(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E1F00, &qword_100085CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B864(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100015240(&qword_1000E1340, &qword_1000852A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100015240(&qword_1000E1340, &qword_1000852A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000B9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E0C8();
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
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_10000BA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007E0C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  return result;
}

uint64_t sub_10000BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationETAEntryContent(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_10000BC0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NavigationETAEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000BCC4()
{
  v1 = type metadata accessor for NavigationETAEntryContentResolver(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 8) + 64);
  v4 = sub_10007E0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v18 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = *(v0 + v3);
  if (v8 != 1)
  {
  }

  v9 = *(v7 + 24);

  v10 = *(v7 + 48);

  v11 = v7 + *(type metadata accessor for NavigationETAEntryContent(0) + 36);
  v12 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    (*(v5 + 8))(v11, v4);
    v13 = (v11 + *(v12 + 20));
    if (*v13 != 1)
    {
    }
  }

  v14 = (v3 + v19 + v6) & ~v6;
  v15 = (v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v5 + 8))(v0 + v14, v4);
  v16 = *(v0 + v15 + 8);

  return _swift_deallocObject(v0, v15 + 16, v2 | v6 | 7);
}

uint64_t sub_10000BEEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEB40, qword_100082B10);
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

    return (v10 + 1);
  }
}

uint64_t sub_10000BFEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100015240(&qword_1000DEB40, qword_100082B10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000C0B0()
{
  sub_100015288(&qword_1000E2220, &qword_100085E48);
  sub_100015288(&qword_1000DE2B0, &qword_1000822B0);
  sub_100015288(&qword_1000DE2B8, &qword_1000822B8);
  sub_100015288(&qword_1000DE288, &qword_100082290);
  sub_100015288(&qword_1000DE290, &qword_100082298);
  sub_100015288(&qword_1000DE298, &qword_1000822A0);
  sub_100015288(&qword_1000DE2A0, &qword_1000822A8);
  sub_1000152D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000C294(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10007D3B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000C340(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10007D3B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000C3FC()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v16 = *(v2 + 64);
  v5 = sub_10007E0C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v16 + v7) & ~v7;
  v15 = v3 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v3 + v9 + 16) & ~v3;
  v11 = *(v0 + 16);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  (*(v6 + 8))(v0 + v8, v5);
  v13 = *(v0 + v9 + 8);

  v12(v0 + v10, v1);

  return _swift_deallocObject(v0, v10 + v16, v15 | 7);
}

uint64_t sub_10000C5B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C5E8()
{
  v1 = (sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + 24);

  v6 = sub_10007D3B8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_1000250AC((v0 + v3 + v1[14]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C6EC()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000C868()
{
  v1 = sub_100015240(&qword_1000E2528, &qword_100086008);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000C9D8()
{
  v16 = sub_10007D3B8();
  v1 = *(v16 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(v1 + 64);
  v4 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_10007E0C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v15 = v2 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v2 + 16 + v9) & ~v2;
  v11 = *(v1 + 8);
  v11(v0 + v3, v16);
  v12 = *(v0 + v4);

  (*(v6 + 8))(v0 + v8, v5);
  v13 = *(v0 + v9 + 8);

  v11(v0 + v10, v16);

  return _swift_deallocObject(v0, v10 + v17, v15 | 7);
}

uint64_t sub_10000CB84()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v61 = *(v2 + 80);
  v62 = (v61 + 16) & ~v61;
  v57 = (*(v2 + 64) + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = sub_10007E0C8();
  v4 = *(v3 - 8);
  v60 = *(v4 + 80);
  v5 = (v57 + v60 + 8) & ~v60;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v59 = *(*(v7 - 1) + 80);
  v55 = *(*(v7 - 1) + 64);
  v56 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v53 = *(*(v56 - 8) + 80);
  v54 = *(*(v56 - 8) + 64);
  v8 = *(v2 + 8);
  v8(v0 + v62, v1);
  v9 = *(v0 + v57);

  v52 = v3;
  v51 = *(v4 + 8);
  v51(v0 + v5, v3);
  v10 = *(v0 + v6 + 8);

  v58 = (v6 + v59 + 16) & ~v59;
  v11 = v0 + v58;
  v8(v0 + v58, v1);
  v8(v0 + v58 + v7[5], v1);
  v12 = v0 + v58 + v7[6];
  v13 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v19 = *(v12 + 8);

        v20 = *(v12 + 24);

        v21 = *(v12 + 56);
        if (v21 != 1)
        {
        }

        v22 = v12 + *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
        v23 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
        if (!(*(*(v23 - 1) + 48))(v22, 1, v23))
        {
          v51(v22, v52);
          v24 = (v22 + v23[5]);
          if (*v24 != 1)
          {
          }

          v25 = v23[7];
          v26 = sub_10007D288();
          v27 = *(v26 - 8);
          if (!(*(v27 + 48))(v22 + v25, 1, v26))
          {
            (*(v27 + 8))(v22 + v25, v26);
          }

          v28 = *(v22 + v23[8] + 8);

          v29 = *(v22 + v23[9] + 8);
        }
      }

      goto LABEL_2;
    }

    v32 = v12 + *(type metadata accessor for NearbyEntryContent(0) + 20);
    v35 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
    if ((*(*(v35 - 8) + 48))(v32, 1, v35))
    {
      goto LABEL_2;
    }

    v51(v32, v52);
    v36 = *(v32 + *(v35 + 20));

    v34 = *(v35 + 24);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (*v12 != 1)
    {
    }

    v39 = *(v12 + 24);

    v40 = *(v12 + 32);

    v41 = *(v12 + 48);

    v42 = *(v12 + 64);

    v43 = type metadata accessor for CommuteWindowEntryContent(0);
    v8(v12 + *(v43 + 36), v1);
    v44 = v12 + *(v43 + 40);
    v45 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
    if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
    {
      v51(v44, v52);
      v46 = (v44 + *(v45 + 20));
      if (*v46 != 1)
      {
      }

      v47 = *(v45 + 24);
      v48 = sub_10007D288();
      v49 = *(v48 - 8);
      if (!(*(v49 + 48))(v44 + v47, 1, v48))
      {
        (*(v49 + 8))(v44 + v47, v48);
      }
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    if (*v12 != 1)
    {
    }

    v30 = *(v12 + 24);

    v31 = *(v12 + 48);

    v32 = v12 + *(type metadata accessor for NavigationETAEntryContent(0) + 36);
    v33 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
    if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
    {
      v51(v32, v52);
      v34 = *(v33 + 20);
LABEL_26:
      v37 = v32 + v34;
      v38 = *(v32 + v34);
      if (v38 != 1)
      {
      }
    }
  }

LABEL_2:
  v14 = v7[7];
  v15 = sub_10007E098();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v11 + v14, 1, v15))
  {
    (*(v16 + 8))(v11 + v14, v15);
  }

  v17 = (v58 + v55 + v53) & ~v53;
  v8(v0 + v17, v1);
  sub_1000250AC((v0 + v17 + *(v56 + 48)));

  return _swift_deallocObject(v0, v17 + v54, v61 | v60 | v59 | v53 | 7);
}

uint64_t sub_10000D394()
{
  v1 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v52 = *(*(v1 - 1) + 80);
  v49 = *(*(v1 - 1) + 64);
  v53 = sub_10007E0C8();
  v2 = *(v53 - 8);
  v3 = *(v2 + 80);
  v50 = *(v2 + 64);
  v4 = *(v0 + 24);

  v51 = (v52 + 32) & ~v52;
  v5 = v0 + v51;
  v6 = sub_10007D3B8();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v51, v6);
  v7(v0 + v51 + v1[5], v6);
  v8 = v0 + v51 + v1[6];
  v9 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v17 = *(v8 + 8);

        v18 = *(v8 + 24);

        v19 = *(v8 + 56);
        if (v19 != 1)
        {
        }

        v20 = v8 + *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
        v21 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
        if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
        {
          (*(v2 + 8))(v20, v53);
          v22 = (v20 + v21[5]);
          if (*v22 != 1)
          {
          }

          v23 = v21[7];
          v24 = sub_10007D288();
          v25 = *(v24 - 8);
          if (!(*(v25 + 48))(v20 + v23, 1, v24))
          {
            (*(v25 + 8))(v20 + v23, v24);
          }

          v26 = *(v20 + v21[8] + 8);

          v27 = *(v20 + v21[9] + 8);
        }
      }

      goto LABEL_2;
    }

    v30 = v8 + *(type metadata accessor for NearbyEntryContent(0) + 20);
    v33 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
    if ((*(*(v33 - 8) + 48))(v30, 1, v33))
    {
      goto LABEL_2;
    }

    (*(v2 + 8))(v30, v53);
    v34 = *(v30 + *(v33 + 20));

    v32 = *(v33 + 24);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (*v8 != 1)
    {
    }

    v37 = *(v8 + 24);

    v38 = *(v8 + 32);

    v39 = *(v8 + 48);

    v40 = *(v8 + 64);

    v41 = type metadata accessor for CommuteWindowEntryContent(0);
    v7(v8 + *(v41 + 36), v6);
    v42 = v8 + *(v41 + 40);
    v43 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {
      (*(v2 + 8))(v42, v53);
      v44 = (v42 + *(v43 + 20));
      if (*v44 != 1)
      {
      }

      v45 = *(v43 + 24);
      v46 = sub_10007D288();
      v47 = *(v46 - 8);
      if (!(*(v47 + 48))(v42 + v45, 1, v46))
      {
        (*(v47 + 8))(v42 + v45, v46);
      }
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    if (*v8 != 1)
    {
    }

    v28 = *(v8 + 24);

    v29 = *(v8 + 48);

    v30 = v8 + *(type metadata accessor for NavigationETAEntryContent(0) + 36);
    v31 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {
      (*(v2 + 8))(v30, v53);
      v32 = *(v31 + 20);
LABEL_26:
      v35 = v30 + v32;
      v36 = *(v30 + v32);
      if (v36 != 1)
      {
      }
    }
  }

LABEL_2:
  v10 = v1[7];
  v11 = sub_10007E098();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = (v49 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v3 + 8) & ~v3;
  v15 = *(v0 + v13);

  (*(v2 + 8))(v0 + v14, v53);

  return _swift_deallocObject(v0, v14 + v50, v52 | v3 | 7);
}

uint64_t sub_10000DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10000DB54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = a2 + 2;
  }

  else
  {
    v7 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000DC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E0C8();
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

    return (v10 + 1);
  }
}

uint64_t sub_10000DCBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007E0C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000DD74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NearbyButtonAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000DE20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NearbyButtonAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000DEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NearbyEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10000E000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NearbyEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10000E130()
{
  v1 = type metadata accessor for NearbyEntryContentResolver(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v25 = sub_10007E0C8();
  v3 = *(v25 - 8);
  v4 = *(v3 + 80);
  v22 = *(v3 + 64);
  v24 = sub_10007D3B8();
  v5 = *(v24 - 8);
  v6 = *(v5 + 80);
  v21 = *(v5 + 64);
  v7 = v0 + ((v2 + 16) & ~v2);
  v8 = v7 + *(type metadata accessor for NearbyEntryContent(0) + 20);
  v9 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    (*(v3 + 8))(v8, v25);
    v10 = *(v8 + *(v9 + 20));

    v11 = (v8 + *(v9 + 24));
    if (*v11 != 1)
    {
    }
  }

  v12 = *(v7 + v1[8]);

  v13 = v1[9];
  v14 = sub_10007D3E8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  v16 = (((v2 + 16) & ~v2) + v23 + v4) & ~v4;
  v17 = (v16 + v22 + v6) & ~v6;
  v18 = (v21 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v16, v25);
  (*(v5 + 8))(v0 + v17, v24);
  v19 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16, v2 | v4 | v6 | 7);
}

uint64_t sub_10000E440()
{
  v1 = type metadata accessor for NearbyEntryContentResolver(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 1) + 64);
  v4 = sub_10007E0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v22 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = v0 + v3 + *(type metadata accessor for NearbyEntryContent(0) + 20);
  v9 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    (*(v5 + 8))(v8, v4);
    v10 = *(v8 + *(v9 + 20));

    v11 = (v8 + *(v9 + 24));
    if (*v11 != 1)
    {
    }
  }

  v12 = *(v7 + v1[8]);

  v13 = v1[9];
  v14 = sub_10007D3E8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  v16 = (v3 + v23 + v6) & ~v6;
  v17 = (v22 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v16, v4);
  v19 = *(v0 + v17);

  v20 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16, v2 | v6 | 7);
}

const __CFString *NSStringFromArrivalState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unavailable";
  }

  else
  {
    return *(&off_1000B2030 + a1 - 1);
  }
}

void sub_10000F12C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1000E2B40;
  qword_1000E2B40 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_1000E2B40 setLocale:v3];

  v4 = qword_1000E2B40;

  [v4 setLocalizedDateFormatFromTemplate:@"J:mm"];
}

void sub_10000F7B8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E2B50;
  qword_1000E2B50 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_1000E2B50 setLocale:v3];

  v4 = qword_1000E2B50;

  [v4 setTimeStyle:1];
}

void sub_100011070(id a1)
{
  qword_1000E2B60 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000110AC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E2B70;
  qword_1000E2B70 = v1;

  v3 = qword_1000E2B70;

  [v3 setUnitStyle:3];
}

void sub_100011430()
{
  if (qword_1000E2B80[0] != -1)
  {
    sub_10007D178();
  }
}

id sub_100011504(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 isInternalInstall]);

  return v2;
}

id sub_1000123DC(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isInternalInstall]);

  return v2;
}

id sub_10001378C(id a1)
{
  v1 = +[GEOCountryConfiguration sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 isEqualToString:@"CN"] ^ 1);

  return v3;
}

void sub_100014788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[MKLocationManager sharedLocationManager];
    v3 = WeakRetained[1];
    WeakRetained[1] = v2;
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v7 = 1026;
      v8 = 37;
      v9 = 2082;
      v10 = "[MapsSuggestionsMKLocationManagerAdapter init]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10001494C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained considerMyAllowanceAsLimited:{objc_msgSend(WeakRetained[1], "isAuthorizedForPreciseLocation") ^ 1}];
    [v2[1] startLocationUpdateWithObserver:v2];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v6 = 1026;
      v7 = 50;
      v8 = 2082;
      v9 = "[MapsSuggestionsMKLocationManagerAdapter onStartImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100014B48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] stopLocationUpdateWithObserver:WeakRetained];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:v2 name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v6 = 1026;
      v7 = 61;
      v8 = 2082;
      v9 = "[MapsSuggestionsMKLocationManagerAdapter onStopImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100014F08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Fetching Place Inference", &v6, 2u);
    }

    [WeakRetained[1] fetchPlaceInferencesWithFidelityPolicy:*(a1 + 48) handler:*(a1 + 32)];
  }

  else
  {
    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v8 = 1026;
      v9 = 107;
      v10 = 2082;
      v11 = "[MapsSuggestionsMKLocationManagerAdapter fetchPlaceInferencesWithFidelityPolicy:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

id sub_100015080()
{
  result = [objc_allocWithZone(sub_10007D468()) init];
  qword_1000E4AC8 = result;
  return result;
}

uint64_t sub_100015118()
{
  sub_100015240(&qword_1000DE288, &qword_100082290);
  sub_100015288(&qword_1000DE290, &qword_100082298);
  sub_100015288(&qword_1000DE298, &qword_1000822A0);
  sub_100015288(&qword_1000DE2A0, &qword_1000822A8);
  sub_1000152D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10007D9B8();
}

uint64_t sub_100015240(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100015288(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000152D0()
{
  result = qword_1000DE2A8;
  if (!qword_1000DE2A8)
  {
    sub_100015288(&qword_1000DE2A0, &qword_1000822A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2A8);
  }

  return result;
}

uint64_t sub_100015334()
{
  sub_100015240(&qword_1000DE2B0, &qword_1000822B0);
  sub_100015288(&qword_1000DE2B8, &qword_1000822B8);
  sub_100015288(&qword_1000DE288, &qword_100082290);
  sub_100015288(&qword_1000DE290, &qword_100082298);
  sub_100015288(&qword_1000DE298, &qword_1000822A0);
  sub_100015288(&qword_1000DE2A0, &qword_1000822A8);
  sub_1000152D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10007D998();
}

uint64_t sub_1000154CC(__int128 *a1)
{
  v2 = *a1;
  if (sub_10007CC60(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001553C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_10007CC60(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

__n128 sub_1000155B8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100015638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E6964 && a2 == 0xE600000000000000;
  if (v4 || (sub_10007E598() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6576617274 && a2 == 0xE600000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65727574616ELL && a2 == 0xE600000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7469736E617274 && a2 == 0xE700000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E6970706F6873 && a2 == 0xE800000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74696E756D6D6F63 && a2 == 0xE900000000000079 || (sub_10007E598() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x68746C616568 && a2 == 0xE600000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7365636966666FLL && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_10007E598();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }
}

__n128 sub_100015978(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100015984(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000159A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_100015A48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100015AF4()
{
  sub_10007D3B8();
  if (v0 <= 0x3F)
  {
    sub_100015C20(319, &qword_1000DE6A8, type metadata accessor for GeneralMapsTimelineEntryContent);
    if (v1 <= 0x3F)
    {
      sub_100015C20(319, &unk_1000DE6B0, &type metadata accessor for TimelineEntryRelevance);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100015BE8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015C20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007E3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100015CC8()
{
  result = type metadata accessor for NearbyEntryContent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SuggestedDestinationEntryContent(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CommuteWindowEntryContent(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NavigationETAEntryContent(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100015D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10007D3B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100015DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100015ECC@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
  v4 = v3[5];
  *&v33[16] = v3[4];
  *&v33[32] = v4;
  v34 = *(v3 + 96);
  v5 = v3[1];
  v31 = *v3;
  *v32 = v5;
  v6 = v3[3];
  *&v32[16] = v3[2];
  *v33 = v6;
  v7 = v6;
  if (v6)
  {
    v8 = v34;
    v22 = *&v33[8];
    v23 = *&v33[24];
    v9 = *&v33[40];
    v10 = *&v32[24];
    v21 = *&v32[8];
    v11 = *v32;
    v12 = v31;
  }

  else
  {
    v27 = 0uLL;
    *v28 = 0;
    memset(&v28[8], 0, 24);
    *v29 = sub_100024AFC(&_swiftEmptyArrayStorage);
    memset(&v29[8], 0, 40);
    v30 = 2;
    v13 = v3[5];
    v25[4] = v3[4];
    v25[5] = v13;
    v26 = *(v3 + 96);
    v14 = v3[1];
    v25[0] = *v3;
    v25[1] = v14;
    v15 = v3[3];
    v25[2] = v3[2];
    v25[3] = v15;
    *(v3 + 96) = 2;
    v16 = *&v29[32];
    v3[4] = *&v29[16];
    v3[5] = v16;
    v17 = *v28;
    *v3 = v27;
    v3[1] = v17;
    v18 = *v29;
    v3[2] = *&v28[16];
    v3[3] = v18;
    sub_100025354(&v27, v24);
    sub_1000256C0(v25, &qword_1000DE950, &qword_100082918);
    v8 = v30;
    v9 = *&v29[40];
    v22 = *&v29[8];
    v23 = *&v29[24];
    v10 = *&v28[24];
    v7 = *v29;
    v21 = *&v28[8];
    v11 = *v28;
    v12 = v27;
  }

  v20 = v12;
  sub_100026310(&v31, v25, &qword_1000DE950, &qword_100082918);
  *a1 = v20;
  *(a1 + 16) = v11;
  *(a1 + 24) = v21;
  *(a1 + 40) = v10;
  *(a1 + 48) = v7;
  result = v23;
  *(a1 + 56) = v22;
  *(a1 + 72) = v23;
  *(a1 + 88) = v9;
  *(a1 + 96) = v8;
  return result;
}

id sub_100016078()
{
  result = [objc_allocWithZone(GEOLocationShifter) init];
  qword_1000DE790 = result;
  return result;
}

Swift::Int sub_1000160C4()
{
  v1 = *v0;
  sub_10007E5D8();
  sub_10007E5E8(v1);
  return sub_10007E608();
}

Swift::Int sub_100016138()
{
  v1 = *v0;
  sub_10007E5D8();
  sub_10007E5E8(v1);
  return sub_10007E608();
}

void *sub_10001617C()
{
  result = sub_100024BF4(&_swiftEmptyArrayStorage);
  off_1000DE798 = result;
  return result;
}

void sub_1000161A4(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine] = 0;
  v4 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsNetworkRequester;
  *&v1[v4] = [objc_allocWithZone(MapsSuggestionsRealNetworkRequester) init];
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_msgCommute] = 0;
  v5 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup;
  *&v2[v5] = dispatch_group_create();
  v6 = &v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[96] = 0;
  v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue] = a1;
  v7 = objc_allocWithZone(type metadata accessor for GeneralMapsLocationUpdater());
  v8 = a1;
  sub_100030A98(v8);
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_locationUpdater] = v9;
  v10 = *&v2[v4];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedPredictor];
  v14 = [objc_allocWithZone(MapsSuggestionsETARequirements) initWithMaxAge:1.79769313e308 maxDistance:1.79769313e308 minAccuracy:0.0];
  v15 = [objc_allocWithZone(MapsSuggestionsETARequester) initWithNetworkRequester:v12 transportModePredictor:v13 requirements:v14];

  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_transportModePredictor] = v15;
  v46.receiver = v2;
  v46.super_class = type metadata accessor for GeneralMapsStateCollector();
  v16 = objc_msgSendSuper2(&v46, "init");
  v17 = objc_allocWithZone(MapsSuggestionsBlockFilter);
  aBlock[4] = sub_1000168C4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024774;
  aBlock[3] = &unk_1000C8208;
  v18 = _Block_copy(aBlock);
  v19 = [v17 initWithBlock:v18];
  _Block_release(v18);

  v20 = [objc_opt_self() forDevice];
  v21 = [v20 withoutTracker];

  v22 = [v21 withLocationUpdater:*&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_locationUpdater]];
  sub_100015240(&qword_1000DE8F0, &qword_1000828E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100082810;
  aBlock[0] = [objc_allocWithZone(MapsSuggestionsShortcutFilter) init];
  sub_10002620C(0, &qword_1000DE8F8, MapsSuggestionsShortcutFilter_ptr);
  sub_1000247CC(&qword_1000DE900, &qword_1000DE8F8, MapsSuggestionsShortcutFilter_ptr);
  sub_10007E438();
  aBlock[0] = [objc_allocWithZone(MapsSuggestionsZeroWeightFilter) init];
  sub_10002620C(0, &qword_1000DE908, MapsSuggestionsZeroWeightFilter_ptr);
  sub_1000247CC(&qword_1000DE910, &qword_1000DE908, MapsSuggestionsZeroWeightFilter_ptr);
  sub_10007E438();
  sub_100041124(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = sub_10007E278().super.isa;

  v25 = [v22 withPreFilters:isa];

  v26 = GEOConfigMapsSuggestionsCurrentLocationSourceEnabledForWidget[1];
  if (GEOConfigGetBOOL())
  {
    sub_100015240(&qword_1000DE918, &qword_1000828F0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100082820;
    *(v27 + 32) = type metadata accessor for MapsSuggestionsCurrentLocationSource();
    sub_100015240(&qword_1000DE920, &qword_1000828F8);
    v28 = sub_10007E1C8().super.isa;

    v29 = [v25 withSourceClasses:v28];

    v25 = v29;
  }

  v30 = [v25 build];
  if (!v30)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v41 = sub_10007D5C8();
    sub_1000046BC(v41, qword_1000E4B28);
    v42 = sub_10007D5A8();
    v43 = sub_10007E2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "GeneralMapsStateCollector: could not build suggestions engine", v44, 2u);
    }

    goto LABEL_17;
  }

  v31 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine;
  v32 = *&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine];
  *&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine] = v30;
  v33 = v30;

  v34 = *&v16[v31];
  if (v34)
  {
    [v34 addAdditionalFilter:v19 forSink:v16];
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v35 = sub_10007D5C8();
  sub_1000046BC(v35, qword_1000E4B28);
  v36 = sub_10007D5A8();
  v37 = sub_10007E298();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "GeneralMapsStateCollector: Created MSgEngine", v38, 2u);
  }

  v39 = *&v16[v31];
  if (v39)
  {
    v40 = [objc_allocWithZone(MapsSuggestionsCommute) initWithResourceDepot:v39 callbackQueue:*&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue]];

    v25 = *&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_msgCommute];
    *&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_msgCommute] = v40;
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t sub_1000168C4(void *a1)
{
  v2 = [a1 type];
  v3 = 0;
  if (v2 <= 0x19)
  {
    if (((1 << v2) & 0x189E918) != 0)
    {
      v4 = [a1 geoMapItem];
      if (v4)
      {

        if (([a1 BOOLeanForKey:@"MapsSuggestionsIsNotADestinationKey" is:1] & 1) == 0 && (objc_msgSend(a1, "hasExpired") & 1) == 0 && (objc_msgSend(a1, "BOOLeanForKey:is:", @"MapsSuggestionsAlreadyThereKey", 1) & 1) == 0)
        {
          if ([a1 type] != 1)
          {
            goto LABEL_27;
          }

          [a1 weight];
          if (v5 != 0.0)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_20:
      v3 = 0;
      return v3 & 1;
    }

    if (((1 << v2) & 6) != 0)
    {
      if (!MapsFeature_IsEnabled_LocationIntelligenceMaps())
      {
        if (qword_1000DE268 != -1)
        {
          swift_once();
        }

        v14 = sub_10007D5C8();
        sub_1000046BC(v14, qword_1000E4B28);
        v15 = sub_10007D5A8();
        v16 = sub_10007E288();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "Looks like the LocIntel FF is disabled.", v17, 2u);
        }

        goto LABEL_27;
      }

      sub_10007E378();
      v6 = sub_10007E368();
      v7 = sub_10007E358();

      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v8 = sub_10007D5C8();
      sub_1000046BC(v8, qword_1000E4B28);
      v9 = sub_10007D5A8();
      v10 = sub_10007E298();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109376;
        *(v11 + 4) = v7 & 1;
        *(v11 + 8) = 1024;
        v3 = v7 ^ 1;
        *(v11 + 10) = (v7 ^ 1) & 1;
        _os_log_impl(&_mh_execute_header, v9, v10, "Are we OS Eligible? %{BOOL}d. Should show Home/Work entries in GMW? %{BOOL}d.", v11, 0xEu);
      }

      else
      {

        v3 = v7 ^ 1;
      }
    }

    else if (v2 == 25)
    {
      if (MapsFeature_IsEnabled_VisitedPlaces())
      {
        v12 = [a1 geoMapItem];
        if (v12)
        {

LABEL_27:
          v3 = 1;
          return v3 & 1;
        }
      }

      goto LABEL_20;
    }
  }

  return v3 & 1;
}

void sub_100016BDC(uint64_t a1, uint64_t a2)
{
  sub_10001A590();
  sub_10001AED0(a2);
  sub_10001E594();
  sub_10002001C();
}

uint64_t sub_100016C18(void (*a1)(_BYTE *, __n128))
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E2C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "GeneralMapsStateCollector: collect END", v5, 2u);
  }

  v6 = sub_100015ECC(v8);
  a1(v8, v6);
  return sub_100024FF8(v8);
}

uint64_t sub_100016D30()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v7 = sub_10007D5C8();
  sub_1000046BC(v7, qword_1000E4B28);
  v8 = sub_10007D5A8();
  v9 = sub_10007E288();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "GeneralMapsStateCollector: cancelling state collection", v10, 2u);
  }

  v11 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v6 = v11;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v12 = v11;
  LOBYTE(v11) = sub_10007DF68();
  result = (*(v3 + 8))(v6, v2);
  if (v11)
  {
    *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled) = 1;
    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation))
    {
      v14 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation);

      sub_10007DF28();
      sub_10007DF18();
    }

    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation))
    {
      v15 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation);

      sub_10007DF28();
      sub_10007DF18();
    }

    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation))
    {
      v16 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation);

      sub_10007DF28();
      sub_10007DF18();
    }

    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation))
    {
      v17 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation);

      sub_10007DF28();
      sub_10007DF18();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100016FB0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v48 = a3;
  v46 = a2;
  v5 = sub_10007D3B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = sub_10007DF48();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = sub_10007DF68();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled])
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v21 = sub_10007D5C8();
      sub_1000046BC(v21, qword_1000E4B28);
      v22 = sub_10007D5A8();
      v23 = sub_10007E288();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "GeneralMapsStateCollector: skipped collectLocation (state collection cancelled)", v24, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v25 = sub_10007D5C8();
  sub_1000046BC(v25, qword_1000E4B28);
  v26 = sub_10007D5A8();
  v27 = sub_10007E2C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "GeneralMapsStateCollector: collectLocation BEGIN", v28, 2u);
  }

  dispatch_group_enter(*&v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
  v45 = v13;
  sub_10007D3A8();
  v29 = swift_allocObject();
  v30 = v48;
  *(v29 + 2) = v46;
  *(v29 + 3) = v30;
  *(v29 + 4) = v4;
  v46 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_locationUpdater];
  v31 = *(v6 + 16);
  v31(v11, v13, v5);
  v31(v49, v47, v5);
  v32 = *(v6 + 80);
  v33 = (v32 + 24) & ~v32;
  v34 = (v7 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v4;
  v36 = (v32 + v34 + 16) & ~v32;
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  v38 = v5;
  v39 = *(v6 + 32);
  v40 = v11;
  v41 = v38;
  v39(v37 + v33, v40);
  v42 = (v37 + v34);
  *v42 = sub_1000258E8;
  v42[1] = v29;
  (v39)(v37 + v36, v49, v41);
  v43 = v35;

  sub_100030FA4(sub_100025934, v37);

  (*(v6 + 8))(v45, v41);
}

void sub_100017498(void *a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v86 = a8;
  v92 = a7;
  v93 = a6;
  v91 = a5;
  v87 = a3;
  v89 = a2;
  v10 = sub_10007D3B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v85 - v17;
  v19 = __chkstk_darwin(v16);
  v90 = &v85 - v20;
  __chkstk_darwin(v19);
  v88 = &v85 - v21;
  v22 = sub_10007DF48();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v28 = v27;
  LOBYTE(v27) = sub_10007DF68();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
LABEL_4:
    v29 = sub_10007D5C8();
    sub_1000046BC(v29, qword_1000E4B28);
    (*(v11 + 16))(v15, v91, v10);
    v30 = sub_10007D5A8();
    v31 = sub_10007E2A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      v33 = v90;
      sub_10007D3A8();
      sub_10007D2B8();
      v35 = v34;
      v36 = *(v11 + 8);
      v36(v33, v10);
      v36(v15, v10);
      *(v32 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "GeneralMapsStateCollector: collectLocation END (state collection cancelled, %{public}f seconds elapsed)", v32, 0xCu);
    }

    else
    {

      v37 = (*(v11 + 8))(v15, v10);
    }

LABEL_26:
    v93(v37);
    return;
  }

  if (*(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v38 = v10;
  if (!a1)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v72 = sub_10007D5C8();
    sub_1000046BC(v72, qword_1000E4B28);
    (*(v11 + 16))(v18, v91, v10);
    v73 = v87;
    swift_errorRetain();
    v74 = sub_10007D5A8();
    v75 = sub_10007E2A8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v99[0] = v77;
      *v76 = 136446466;
      *&v97[0] = v73;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v78 = sub_10007E178();
      v80 = sub_100051190(v78, v79, v99);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2050;
      v81 = v90;
      sub_10007D3A8();
      sub_10007D2B8();
      v83 = v82;
      v84 = *(v11 + 8);
      v84(v81, v38);
      v84(v18, v38);
      *(v76 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v74, v75, "GeneralMapsStateCollector: collectLocation END (no location; error: %{public}s, %{public}f seconds elapsed)", v76, 0x16u);
      sub_1000250AC(v77);
    }

    else
    {

      v37 = (*(v11 + 8))(v18, v10);
    }

    goto LABEL_26;
  }

  v39 = a1;
  if ([v39 referenceFrame] == 2 || (v40 = objc_opt_self(), objc_msgSend(v39, "coordinate"), GEOLocationCoordinate2DFromCLLocationCoordinate2D(), !objc_msgSend(v40, "isLocationShiftRequiredForCoordinate:")))
  {
    v46 = v39;
    sub_100015ECC(v99);
    v101 = v99[0];
    sub_1000256C0(&v101, &unk_1000DEA30, &qword_1000829C8);
    v47 = a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
    v48 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
    v97[4] = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
    v97[5] = v48;
    v98 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
    v49 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
    v97[0] = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
    v97[1] = v49;
    v50 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
    v97[3] = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
    v97[2] = v50;
    v51 = v89;
    *v47 = a1;
    *(v47 + 8) = v51;
    v52 = v99[2];
    *(v47 + 16) = v99[1];
    *(v47 + 32) = v52;
    v53 = v99[3];
    v54 = v99[4];
    v55 = v99[5];
    *(v47 + 96) = v100;
    *(v47 + 64) = v54;
    *(v47 + 80) = v55;
    *(v47 + 48) = v53;
    sub_1000256C0(v97, &qword_1000DE950, &qword_100082918);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v56 = sub_10007D5C8();
    sub_1000046BC(v56, qword_1000E4B28);
    v57 = v88;
    (*(v11 + 16))(v88, v91, v38);
    v58 = v46;
    v59 = sub_10007D5A8();
    v60 = sub_10007E2C8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v96 = v62;
      *v61 = 136380931;
      v94 = v58;
      v95 = v51;
      v63 = v58;
      v64 = sub_10007E178();
      v66 = sub_100051190(v64, v65, &v96);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2050;
      v67 = v90;
      sub_10007D3A8();
      sub_10007D2B8();
      v69 = v68;
      v70 = *(v11 + 8);
      v70(v67, v38);
      v70(v57, v38);
      *(v61 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v59, v60, "GeneralMapsStateCollector: collectLocation END (location: %{private}s, %{public}f seconds elapsed)", v61, 0x16u);
      sub_1000250AC(v62);
    }

    else
    {

      v71 = (*(v11 + 8))(v57, v38);
    }

    v93(v71);
  }

  else
  {
    v41 = v89;
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v42 = sub_10007D5C8();
    sub_1000046BC(v42, qword_1000E4B28);
    v43 = sub_10007D5A8();
    v44 = sub_10007E298();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "GeneralMapsStateCollector: collectLocation will shift location", v45, 2u);
    }

    sub_100017E54(v86, v39, v41, v91, v93, v92);
  }
}

void sub_100017E54(uint64_t a1, void *a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v75 = a4;
  v64 = a3;
  v73 = a2;
  v65 = a1;
  v13 = sub_10007D3B8();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = v67[8];
  __chkstk_darwin(v13);
  v74 = v15;
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007DEB8();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v18 = sub_10007DF48();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v6[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  v25 = sub_10007DF68();
  (*(v19 + 8))(v22, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v63 = v24;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a5;
  v27[4] = a6;
  v81 = sub_100025760;
  v82 = v27;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v78 = 1107296256;
  v72 = &v79;
  v79 = sub_1000041A4;
  v80 = &unk_1000C8730;
  _Block_copy(&aBlock);
  v76 = &_swiftEmptyArrayStorage;
  sub_100002E64();

  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  v71 = a5;
  sub_100002EBC();
  sub_10007E3F8();
  v28 = sub_10007DF38();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_10007DF08();

  v32 = *&v10[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation];
  *&v10[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation] = v31;

  v25 = v73;
  [v73 coordinate];
  GEOLocationCoordinate2DFromCLLocationCoordinate2D();
  v7 = v33;
  v8 = v34;
  v70 = a6;
  if (qword_1000DE218 != -1)
  {
LABEL_5:
    swift_once();
  }

  v62 = qword_1000DE790;
  [v25 horizontalAccuracy];
  v36 = v35;
  v38 = v66;
  v37 = v67;
  v69 = v67[2];
  v39 = v68;
  v69(v66, v75, v68);
  v40 = *(v37 + 80);
  v41 = (v40 + 40) & ~v40;
  v42 = &v74[v41 + 7] & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = v10;
  *(v43 + 3) = v25;
  *(v43 + 4) = v64;
  v44 = v37[4];
  v44(&v43[v41], v38, v39);
  v64 = v44;
  v45 = &v43[v42];
  v46 = v70;
  *v45 = v71;
  *(v45 + 1) = v46;
  v81 = sub_10002576C;
  v82 = v43;
  aBlock = _NSConcreteStackBlock;
  v78 = v9;
  v79 = sub_100018D60;
  v80 = &unk_1000C8780;
  v67 = _Block_copy(&aBlock);

  v47 = v10;
  v48 = v73;

  v69(v38, v65, v39);
  v49 = (v40 + 24) & ~v40;
  v50 = &v74[v49];
  v51 = swift_allocObject();
  *(v51 + 16) = v47;
  v44((v51 + v49), v38, v39);
  v81 = sub_10002582C;
  v82 = v51;
  aBlock = _NSConcreteStackBlock;
  v78 = v9;
  v79 = sub_1000041A4;
  v80 = &unk_1000C87D0;
  v74 = _Block_copy(&aBlock);
  v52 = v47;

  v69(v38, v75, v39);
  v53 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  v64(v54 + v49, v38, v39);
  v55 = (v54 + v53);
  v56 = v70;
  *v55 = v71;
  v55[1] = v56;
  v81 = sub_100025844;
  v82 = v54;
  aBlock = _NSConcreteStackBlock;
  v78 = v9;
  v79 = sub_100019414;
  v80 = &unk_1000C8820;
  v57 = _Block_copy(&aBlock);

  v58 = v52;

  v59 = v62;
  v60 = v67;
  v61 = v74;
  [v62 shiftCoordinate:v67 accuracy:v74 withCompletionHandler:v57 mustGoToNetworkCallback:v63 errorHandler:v7 callbackQueue:{v8, v36}];
  _Block_release(v57);
  _Block_release(v61);
  _Block_release(v60);
}

uint64_t sub_100018580(uint64_t a1, uint64_t (*a2)(char *))
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v3 = sub_10007D5C8();
  sub_1000046BC(v3, qword_1000E4B28);
  v4 = sub_10007D5A8();
  v5 = sub_10007E2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "GeneralMapsStateCollector: collectLocation END (shiftLocation cancelled)", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *&Strong[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation];
    *&Strong[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation] = 0;
  }

  return a2(Strong);
}

void sub_1000186BC(uint64_t a1, id a2, char *a3, uint64_t *a4, void (*a5)(uint64_t), uint64_t a6, double a7, double a8)
{
  v74 = a6;
  v71 = a4;
  v14 = sub_10007D3B8();
  v72 = *(v14 - 8);
  v73 = v14;
  v15 = *(v72 + 64);
  v16 = __chkstk_darwin(v14);
  v70 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v68 - v18;
  v20 = sub_10007DF48();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  LOBYTE(v25) = sub_10007DF68();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_12:
    v52 = sub_10007D5C8();
    sub_1000046BC(v52, qword_1000E4B28);
    v53 = v72;
    v54 = v73;
    (*(v72 + 16))(v24, v71, v73);
    v55 = a2;
    v56 = sub_10007D5A8();
    v57 = sub_10007E2C8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v76 = v19;
      v77 = v71;
      *v58 = 136380931;
      v75 = v55;
      v59 = sub_10007E178();
      v61 = v54;
      v62 = sub_100051190(v59, v60, &v77);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2050;
      v63 = v70;
      sub_10007D3A8();
      sub_10007D2B8();
      v65 = v64;
      v66 = *(v53 + 8);
      v66(v63, v61);
      v66(v24, v61);
      *(v58 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v56, v57, "GeneralMapsStateCollector: collectLocation END (shifted location: %{private}s, %{public}f seconds elapsed)", v58, 0x16u);
      sub_1000250AC(v71);
    }

    else
    {

      v67 = (*(v53 + 8))(v24, v54);
    }

    v69(v67);

    return;
  }

  v27 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation;
  if (*(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation))
  {
    v69 = a5;

    sub_10007DF18();
    v28 = *(a1 + v27);
    *(a1 + v27) = 0;

    [a2 clientLocation];
    v92 = *&v80[20];
    v93 = *&v80[36];
    v94 = *&v80[52];
    v90 = *&v80[68];
    v91 = *&v80[84];
    v89 = v83;
    v29 = *v80;
    v88 = v86;
    v87 = v85;
    [a2 rawCourse];
    v31 = v30;
    v32 = [a2 coarseMetaData];
    if (v32)
    {
      v33 = v32;
      v34 = sub_10007D2A8();
      v36 = v35;

      v37.super.isa = sub_10007D298().super.isa;
      sub_100005744(v34, v36);
    }

    else
    {
      v37.super.isa = 0;
    }

    v24 = v19;
    v42 = objc_allocWithZone(CLLocation);
    *&v80[20] = v92;
    *&v80[36] = v93;
    *&v80[60] = v31;
    *&v80[68] = v90;
    *&v80[4] = a7;
    *&v80[12] = a8;
    *&v80[52] = v94;
    *&v80[84] = v91;
    v81 = a7;
    v82 = a8;
    v83 = v89;
    *v80 = v29;
    v84 = 2;
    v86 = v88;
    v85 = v87;
    v43 = [v42 initWithClientLocation:v80 coarseMetaData:v37.super.isa];

    a2 = v43;
    sub_100015ECC(v80);
    v95 = *v80;
    sub_1000256C0(&v95, &unk_1000DEA30, &qword_1000829C8);
    v44 = a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
    v45 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
    v78[4] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
    v78[5] = v45;
    v79 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
    v46 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
    v78[0] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
    v78[1] = v46;
    v47 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
    v78[2] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
    v78[3] = v47;
    *v44 = v43;
    *(v44 + 8) = a3;
    v19 = a3;
    v48 = *&v80[32];
    *(v44 + 16) = *&v80[16];
    *(v44 + 32) = v48;
    v49 = *&v80[48];
    v50 = *&v80[64];
    v51 = *&v80[80];
    *(v44 + 96) = v80[96];
    *(v44 + 64) = v50;
    *(v44 + 80) = v51;
    *(v44 + 48) = v49;
    sub_1000256C0(v78, &qword_1000DE950, &qword_100082918);
    if (qword_1000DE268 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v38 = sub_10007D5C8();
  sub_1000046BC(v38, qword_1000E4B28);
  v39 = sub_10007D5A8();
  v40 = sub_10007E288();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "GeneralMapsStateCollector: collectLocation was cancelled just before completion", v41, 2u);
  }
}

uint64_t sub_100018D60(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

void sub_100018DCC(uint64_t a1)
{
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_10007DF68();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_100019480();
  }

  else
  {
    __break(1u);
  }
}

void sub_100018EEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v48 = a5;
  v49 = a4;
  v8 = sub_10007D3B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = sub_10007DF48();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = sub_10007DF68();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation;
  if (*(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation))
  {
    v23 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation);

    sub_10007DF18();
    v24 = *(a2 + v22);
    *(a2 + v22) = 0;

    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v25 = sub_10007D5C8();
      sub_1000046BC(v25, qword_1000E4B28);
      (*(v9 + 16))(v14, a3, v8);
      swift_errorRetain();
      v26 = sub_10007D5A8();
      v27 = sub_10007E2A8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v50 = a1;
        v51 = v29;
        *v28 = 136446466;
        swift_errorRetain();
        sub_100015240(&qword_1000DE938, &qword_100082910);
        v30 = sub_10007E178();
        v32 = sub_100051190(v30, v31, &v51);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2050;
        v33 = v47;
        sub_10007D3A8();
        sub_10007D2B8();
        v35 = v34;
        v36 = *(v9 + 8);
        v36(v33, v8);
        v36(v14, v8);
        *(v28 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "GeneralMapsStateCollector: collectLocation END (location shift error: %{public}s, %{public}f seconds elapsed)", v28, 0x16u);
        sub_1000250AC(v29);
      }

      else
      {

        v37 = (*(v9 + 8))(v14, v8);
      }

      v49(v37);

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v38 = sub_10007D5C8();
  sub_1000046BC(v38, qword_1000E4B28);
  swift_errorRetain();
  v39 = sub_10007D5A8();
  v40 = sub_10007E2A8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = a1;
    v51 = v42;
    *v41 = 136446210;
    swift_errorRetain();
    sub_100015240(&qword_1000DE938, &qword_100082910);
    v43 = sub_10007E178();
    v45 = sub_100051190(v43, v44, &v51);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "GeneralMapsStateCollector: collectLocation was cancelled prior to error delivery (error: %{public}s)", v41, 0xCu);
    sub_1000250AC(v42);
  }
}

void sub_100019414(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100019480()
{
  v1 = sub_10007DEF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v31 - v7;
  v9 = sub_10007DF48();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v31[1] = v14;
  LOBYTE(v14) = sub_10007DF68();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation))
  {
    v15 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation);

    sub_10007D318();
    v17 = v16 + -10.0;
    if (v16 + -10.0 <= 0.0)
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v27 = sub_10007D5C8();
      sub_1000046BC(v27, qword_1000E4B28);
      v28 = sub_10007D5A8();
      v29 = sub_10007E2A8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "GeneralMapsStateCollector: could not schedule shiftLocation cancellation", v30, 2u);
      }
    }

    else
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v18 = sub_10007D5C8();
      sub_1000046BC(v18, qword_1000E4B28);
      v19 = sub_10007D5A8();
      v20 = sub_10007E2C8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349056;
        *(v21 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v19, v20, "GeneralMapsStateCollector: scheduled shiftLocation cancellation in %{public}f seconds", v21, 0xCu);
      }

      sub_10007DEE8();
      sub_10007DF58();
      v22 = *(v2 + 8);
      v22(v6, v1);
      sub_10007E308();

      v22(v8, v1);
    }

    return;
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v23 = sub_10007D5C8();
  sub_1000046BC(v23, qword_1000E4B28);
  v24 = sub_10007D5A8();
  v25 = sub_10007E288();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "GeneralMapsStateCollector: shiftLocation completed before cancellation was scheduled", v26, 2u);
  }
}

uint64_t sub_100019908()
{
  v1 = v0;
  v27[0] = sub_10007DEF8();
  v2 = *(v27[0] - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v27[0]);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  v9 = sub_10007DEB8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v11 = sub_10007D5C8();
  sub_1000046BC(v11, qword_1000E4B28);
  v12 = sub_10007D5A8();
  v13 = sub_10007E2C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = 0x4014000000000000;
    _os_log_impl(&_mh_execute_header, v12, v13, "GeneralMapsStateCollector: scheduled collectNavigationRoute cancellation in %{public}f seconds", v14, 0xCu);
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100025720;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C86E0;
  _Block_copy(aBlock);
  v27[1] = &_swiftEmptyArrayStorage;
  sub_100002E64();

  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  v16 = sub_10007DF38();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_10007DF08();

  v20 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation;
  v21 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation);
  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation) = v19;

  v22 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  sub_10007DEE8();
  sub_10007DF58();
  v23 = *(v2 + 8);
  v24 = v6;
  v25 = v27[0];
  result = v23(v24, v27[0]);
  if (*(v1 + v20))
  {

    sub_10007E308();

    return v23(v8, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100019CA4()
{
  v1 = v0;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E2C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "GeneralMapsStateCollector: collectShareETAAvailability BEGIN", v5, 2u);
  }

  dispatch_group_enter(*&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v11[4] = sub_1000256B8;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100019FFC;
    v11[3] = &unk_1000C86B8;
    v9 = _Block_copy(v11);
    v10 = v1;

    [v7 performBlockAfterInitialSync:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_100019E70(uint64_t a1, uint64_t a2)
{
  v3 = MSPSharedTripSharingAvailable();
  sub_100015ECC(v16);
  v4 = a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
  v5 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
  v17[4] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
  v17[5] = v5;
  v18 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
  v6 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
  v17[0] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
  v17[1] = v6;
  v7 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
  v17[2] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
  v17[3] = v7;
  v8 = v16[1];
  *v4 = v16[0];
  *(v4 + 16) = v8;
  v9 = v16[2];
  v10 = v16[3];
  v11 = v16[5];
  *(v4 + 64) = v16[4];
  *(v4 + 80) = v11;
  *(v4 + 32) = v9;
  *(v4 + 48) = v10;
  *(v4 + 96) = v3;
  sub_1000256C0(v17, &qword_1000DE950, &qword_100082918);
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v12 = sub_10007D5C8();
  sub_1000046BC(v12, qword_1000E4B28);
  v13 = sub_10007D5A8();
  v14 = sub_10007E2C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67240192;
    *(v15 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v13, v14, "GeneralMapsStateCollector: collectShareETAAvailability END (available: %{BOOL,public}d)", v15, 8u);
  }

  dispatch_group_leave(*(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
}

void sub_100019FFC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10001A064()
{
  v1 = sub_10007DF48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_10007DF68();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_4:
    v8 = sub_10007D5C8();
    sub_1000046BC(v8, qword_1000E4B28);
    v9 = sub_10007D5A8();
    v10 = sub_10007E288();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "GeneralMapsStateCollector: skipped collectMapsActivityMapType (state collection cancelled)";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (*(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v13 = objc_allocWithZone(NSUserDefaults);
  v14 = sub_10007E138();
  v15 = [v13 initWithSuiteName:v14];

  if (!v15)
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v9 = v15;
  v16 = sub_10007E138();
  v17 = [v9 integerForKey:v16];

  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
LABEL_20:
    v31 = sub_10007D5C8();
    sub_1000046BC(v31, qword_1000E4B28);
    v9 = sub_10007D5A8();
    v10 = sub_10007E288();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "GeneralMapsStateCollector: collectMapsActivityMapType found no MapsLastActivityMapType in defaults";
      goto LABEL_22;
    }

LABEL_23:

    return;
  }

  if ((v17 - 1) > 1)
  {
    sub_100015ECC(v41);

    v32 = v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
    v33 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
    v39[4] = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
    v39[5] = v33;
    v40 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
    v34 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
    v39[0] = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
    v39[1] = v34;
    v35 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
    v39[2] = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
    v39[3] = v35;
    *v32 = *v41;
    *(v32 + 16) = v17;
    *(v32 + 20) = *&v41[5];
    v36 = *&v41[9];
    v37 = *&v41[13];
    v38 = v42[0];
    *(v32 + 81) = *(v42 + 13);
    *(v32 + 68) = v38;
    *(v32 + 52) = v37;
    *(v32 + 36) = v36;
    sub_1000256C0(v39, &qword_1000DE950, &qword_100082918);
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v18 = sub_10007D5C8();
    sub_1000046BC(v18, qword_1000E4B28);
    v19 = sub_10007D5A8();
    v20 = sub_10007E288();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_18;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v41 = v22;
    *v21 = 136446210;
    if (v17 == 2)
    {
      v23 = @"Hybrid";
    }

    else
    {
      v23 = @"Satellite";
    }

    v24 = v23;
    v25 = v23;
    if (v25)
    {
      v26 = v25;
      v27 = sub_10007E158();
      v29 = v28;

      v30 = sub_100051190(v27, v29, v41);

      *(v21 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s map type not supported in Maps widget", v21, 0xCu);
      sub_1000250AC(v22);

LABEL_18:

      goto LABEL_23;
    }

    __break(1u);
  }
}

void sub_10001A590()
{
  v1 = sub_10007DF48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_10007DF68();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (*(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v8 = sub_10007D5C8();
      sub_1000046BC(v8, qword_1000E4B28);
      v9 = sub_10007D5A8();
      v10 = sub_10007E288();
      if (!os_log_type_enabled(v9, v10))
      {
LABEL_12:

        return;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "GeneralMapsStateCollector: skipped collectMapsActivityCamera (state collection cancelled)";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

      goto LABEL_12;
    }

LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v13 = v0;
  sub_100015ECC(v83);
  v84[0] = v83[0];
  sub_100026310(v84, v81, &unk_1000DEA30, &qword_1000829C8);
  sub_100024FF8(v83);
  if (*&v84[0])
  {
    sub_1000256C0(v84, &unk_1000DEA30, &qword_1000829C8);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v14 = sub_10007D5C8();
    sub_1000046BC(v14, qword_1000E4B28);
    v9 = sub_10007D5A8();
    v10 = sub_10007E288();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "GeneralMapsStateCollector: collectMapsActivityCamera had location info";
    goto LABEL_11;
  }

  v15 = objc_allocWithZone(NSUserDefaults);
  v16 = sub_10007E138();
  v17 = [v15 initWithSuiteName:v16];

  if (v17)
  {
    v18 = v17;
    v19 = sub_10007E138();
    v20 = [v18 dataForKey:v19];

    if (v20)
    {
      v21 = sub_10007D2A8();
      v23 = v22;

      v24 = objc_allocWithZone(GEOURLCamera);
      sub_100025664(v21, v23);
      isa = sub_10007D298().super.isa;
      sub_100005744(v21, v23);
      v26 = [v24 initWithData:isa];

      if (v26)
      {
        v27 = v26;
        if ([v27 hasLatitude] && objc_msgSend(v27, "hasLongitude"))
        {
          v28 = [v27 hasAltitude];

          if (v28)
          {
            [v27 latitude];
            v30 = v29;
            [v27 longitude];
            if (fabs(v31) <= 180.0 && fabs(v30) <= 90.0)
            {
              if (qword_1000DE268 != -1)
              {
                swift_once();
              }

              v32 = sub_10007D5C8();
              sub_1000046BC(v32, qword_1000E4B28);
              v33 = v27;
              v34 = sub_10007D5A8();
              v35 = sub_10007E288();

              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                v65 = v34;
                v38 = v37;
                *v36 = 138477827;
                *(v36 + 4) = v33;
                *v37 = v26;
                v39 = v33;
                _os_log_impl(&_mh_execute_header, v65, v35, "GeneralMapsStateCollector: collectMapsActivityCamera found valid camera (%{private}@)", v36, 0xCu);
                sub_1000256C0(v38, &qword_1000E0960, &qword_1000829D0);
                v34 = v65;
              }

              sub_100005744(v21, v23);
              v40 = v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
              v41 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
              v42 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
              v71 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
              v72 = v41;
              v43 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
              v69 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
              v70 = v43;
              v66 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
              v79 = v66;
              v44 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
              v76 = v71;
              v77 = v44;
              v45 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
              v46 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 24);
              v73 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
              v80 = v45;
              v78 = *(v13 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
              v74 = v69;
              v75 = v42;
              v67 = v45;
              v68 = v46;
              sub_100025354(&v66, v81);

              v47 = *(v40 + 80);
              v81[4] = *(v40 + 64);
              v81[5] = v47;
              v82 = *(v40 + 96);
              v48 = *(v40 + 16);
              v81[0] = *v40;
              v81[1] = v48;
              v49 = *(v40 + 48);
              v81[2] = *(v40 + 32);
              v81[3] = v49;
              *v40 = v79;
              *(v40 + 16) = v80;
              *(v40 + 24) = v26;
              v50 = v77;
              *(v40 + 64) = v76;
              *(v40 + 80) = v50;
              v51 = v75;
              *(v40 + 32) = v74;
              *(v40 + 48) = v51;
              *(v40 + 96) = v78;
              sub_1000256C0(v81, &qword_1000DE950, &qword_100082918);
              return;
            }

            if (qword_1000DE268 != -1)
            {
              swift_once();
            }

            v63 = sub_10007D5C8();
            sub_1000046BC(v63, qword_1000E4B28);
            v57 = v27;
            v9 = sub_10007D5A8();
            v58 = sub_10007E2A8();

            if (os_log_type_enabled(v9, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              *v59 = 138477827;
              *(v59 + 4) = v57;
              *v60 = v26;
              v61 = v57;
              v62 = "GeneralMapsStateCollector: collectMapsActivityCamera camera (%{private}@) invalid coordinate";
              goto LABEL_36;
            }

            goto LABEL_41;
          }
        }

        else
        {
        }
      }

      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v56 = sub_10007D5C8();
      sub_1000046BC(v56, qword_1000E4B28);
      v57 = v26;
      v9 = sub_10007D5A8();
      v58 = sub_10007E2A8();

      if (os_log_type_enabled(v9, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138477827;
        *(v59 + 4) = v57;
        *v60 = v26;
        v61 = v57;
        v62 = "GeneralMapsStateCollector: collectMapsActivityCamera camera (%{private}@) missing data";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v9, v58, v62, v59, 0xCu);
        sub_1000256C0(v60, &qword_1000E0960, &qword_1000829D0);

        sub_100005744(v21, v23);
        return;
      }

LABEL_41:

      sub_100005744(v21, v23);
      goto LABEL_12;
    }
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v52 = sub_10007D5C8();
  sub_1000046BC(v52, qword_1000E4B28);
  v53 = sub_10007D5A8();
  v54 = sub_10007E288();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "GeneralMapsStateCollector: collectMapsActivityCamera found no MapsLastActivityCamera in defaults", v55, 2u);
  }
}

void sub_10001AED0(uint64_t a1)
{
  v316 = a1;
  v2 = sub_10007D418();
  v3 = *(v2 - 8);
  v322 = v2;
  v323 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v321 = &v301 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v318 = &v301 - v8;
  v320 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  v9 = *(v320 - 1);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v320);
  v13 = &v301 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v310 = &v301 - v15;
  v16 = __chkstk_darwin(v14);
  v309 = &v301 - v17;
  v18 = __chkstk_darwin(v16);
  v313 = &v301 - v19;
  __chkstk_darwin(v18);
  v314 = &v301 - v20;
  v328 = sub_10007D3B8();
  v21 = *(v328 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v328);
  v317 = &v301 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v325 = &v301 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v301 - v28;
  v30 = __chkstk_darwin(v27);
  v315 = &v301 - v31;
  v312 = v32;
  __chkstk_darwin(v30);
  v326 = (&v301 - v33);
  v34 = sub_10007DF48();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = (&v301 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v38 = v39;
  (*(v35 + 104))(v38, enum case for DispatchPredicate.onQueue(_:), v34);
  v40 = v39;
  LOBYTE(v39) = sub_10007DF68();
  (*(v35 + 8))(v38, v34);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_177;
  }

  if (v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled])
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v41 = sub_10007D5C8();
      sub_1000046BC(v41, qword_1000E4B28);
      v42 = sub_10007D5A8();
      v43 = sub_10007E288();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "GeneralMapsStateCollector: skipped collectNearbyCategories (state collection cancelled)", v44, 2u);
      }

      return;
    }

LABEL_177:
    swift_once();
    goto LABEL_4;
  }

  v45 = [objc_opt_self() sharedService];
  if (!v45)
  {
    __break(1u);
    goto LABEL_180;
  }

  v46 = v45;
  v327 = v21;
  v47 = [v45 defaultTraits];

  if (!v47)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v48 = swift_allocObject();
  [v47 setIsWidgetRequest:1];
  sub_100015ECC(v338);
  sub_100024FF8(v338);
  if ((v339 - 1) < 3)
  {
    v49 = (v339 + 1);
  }

  else
  {
    v49 = 1;
  }

  [v47 setMode:v49];
  v307 = v1;
  v50 = &v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
  v51 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80];
  v336[4] = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64];
  v336[5] = v51;
  v337 = v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96];
  v52 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16];
  v336[0] = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
  v336[1] = v52;
  v53 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48];
  v336[2] = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32];
  v336[3] = v53;
  v54 = *&v336[0];
  if (*&v336[0])
  {
    *v335 = *&v336[0];
    *&v335[40] = *(v50 + 40);
    *&v335[56] = *(v50 + 56);
    *&v335[72] = *(v50 + 72);
    *&v335[81] = *(v50 + 81);
    *&v335[8] = *(v50 + 8);
    *&v335[24] = *(v50 + 24);
    sub_100026310(v336, v334, &qword_1000DE950, &qword_100082918);
    v55 = v54;
    sub_100024FF8(v335);
    v56 = [objc_allocWithZone(GEOLocation) initWithCLLocation:v55];
    [v47 setDeviceLocation:v56];

    [v55 coordinate];
    MKMapRectMakeWithRadialDistance();
    v60 = nullsub_1(v57, v58, v59);
    v64 = [objc_allocWithZone(GEOMapRegion) initWithMapRect:{v60, v61, v62, v63}];
    [v47 setMapRegion:v64];

    *(v48 + 16) = 0;
    goto LABEL_16;
  }

  *v334 = 0;
  *&v334[40] = *(v50 + 40);
  *&v334[56] = *(v50 + 56);
  *&v334[72] = *(v50 + 72);
  *&v334[81] = *(v50 + 81);
  *&v334[8] = *(v50 + 8);
  *&v334[24] = *(v50 + 24);
  v65 = *(v50 + 1);
  *v335 = *v50;
  *&v335[16] = v65;
  v66 = *(v50 + 2);
  v67 = *(v50 + 3);
  v68 = *(v50 + 4);
  v69 = *(v50 + 5);
  v335[96] = v50[96];
  *&v335[64] = v68;
  *&v335[80] = v69;
  *&v335[32] = v66;
  *&v335[48] = v67;
  sub_100025354(v335, &v329);
  sub_100024FF8(v334);
  v70 = *(v50 + 3);
  if (v70)
  {
    v71 = v70;
    [v71 latitude];
    v73 = v72;
    [v71 longitude];
    v75 = [objc_allocWithZone(GEOLocation) initWithLatitude:v73 longitude:v74];
    [v47 setDeviceLocation:v75];

    sub_100040B7C();
    v79 = nullsub_1(v76, v77, v78);
    v83 = [objc_allocWithZone(GEOMapRegion) initWithMapRect:{v79, v80, v81, v82}];
    [v47 setMapRegion:v83];

    *(v48 + 16) = 1;
LABEL_16:
    sub_10007D3A8();
    v84 = [objc_opt_self() sharedConfiguration];
    if (v84)
    {
      v85 = v84;
      v319 = v29;
      v324 = v48;
      v86 = [v84 countryCode];

      if (v86)
      {
        v305 = v9;
        v306 = v13;
        v87 = sub_10007E158();
        v89 = v88;

        v308 = v47;
        v90 = [v47 deviceLocation];
        if (v90)
        {
          v91 = v90;
          v92 = v320;
          v311 = swift_allocBox();
          v94 = v93;
          v95 = GEOGetUserPreferredTransportType();
          v96 = *(v50 + 4);
          v303 = *(v327 + 32);
          v304 = v327 + 32;
          v303(v94, v326, v328);
          v97 = (v94 + v92[5]);
          *v97 = v87;
          v97[1] = v89;
          v302 = v97;
          v301 = v92[6];
          *(&v94->isa + v301) = v91;
          v98 = v92[7];
          *(&v94->isa + v98) = v95;
          v99 = v92[8];
          *(&v94->isa + v99) = v96;
          v100 = v92[9];
          v326 = v94;
          *(&v94->isa + v100) = 0;
          if (qword_1000DE220 != -1)
          {
            swift_once();
          }

          v101 = *(v324 + 16);
          swift_beginAccess();
          v102 = off_1000DE798;
          v103 = v323;
          v105 = v305;
          v104 = v306;
          if (*(off_1000DE798 + 2) && (v106 = sub_100077B50(v101), (v107 & 1) != 0))
          {
            v108 = v102[7] + *(v105 + 72) * v106;
            v109 = v313;
            sub_10002549C(v108, v313);
            v110 = v314;
            sub_100025500(v109, v314);
            swift_endAccess();
            v111 = *(v110 + v320[9]);
            if (v111)
            {
              v112 = *(&v326->isa + v98);
              v113 = v326;
              if (v112 == *(v110 + v320[7]))
              {
                if (*(&v326->isa + v99) == *(v110 + v320[8]))
                {
                  GEOConfigGetDouble();
                  v115 = v114;
                  v116 = v110;
                  v118 = v327;
                  v117 = v328;
                  v119 = v315;
                  (*(v327 + 16))(v315, v113, v328);
                  sub_10007D2B8();
                  v121 = v120;
                  (*(v118 + 8))(v119, v117);
                  if (v121 >= v115)
                  {
                    if (qword_1000DE268 != -1)
                    {
                      swift_once();
                    }

                    v237 = sub_10007D5C8();
                    sub_1000046BC(v237, qword_1000E4B28);
                    v238 = sub_10007D5A8();
                    v239 = sub_10007E288();
                    v240 = os_log_type_enabled(v238, v239);
                    v147 = v327;
                    v126 = v328;
                    if (v240)
                    {
                      v241 = swift_slowAlloc();
                      *v241 = 0;
                      _os_log_impl(&_mh_execute_header, v238, v239, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: snapshot has expired", v241, 2u);
                    }

                    v242 = v314;
LABEL_122:
                    sub_100025564(v242);
                    v103 = v323;
                    goto LABEL_44;
                  }

                  v122 = v320;
                  v123 = (v116 + v320[5]);
                  v110 = v116;
                  if (*v302 == *v123 && v302[1] == v123[1] || (sub_10007E598() & 1) != 0)
                  {
                    GEOConfigGetDouble();
                    v125 = v124;
                    [*(&v326->isa + v301) coordinate];
                    [*(v116 + v122[6]) coordinate];
                    j__GEOCalculateDistance();
                    v126 = v328;
                    if (v127 < v125)
                    {
                      v128 = *(v50 + 3);
                      *&v334[32] = *(v50 + 2);
                      *&v334[48] = v128;
                      v129 = *(v50 + 5);
                      *&v334[64] = *(v50 + 4);
                      *&v334[80] = v129;
                      v334[96] = v50[96];
                      v130 = *(v50 + 1);
                      *v334 = *v50;
                      *&v334[16] = v130;
                      v332 = *v334;
                      v333 = v130;
                      v131 = *(v50 + 40);
                      v132 = *(v50 + 56);
                      v133 = *(v50 + 72);
                      *(v331 + 9) = *(v50 + 81);
                      v330 = v132;
                      v331[0] = v133;
                      v329 = v131;

                      sub_100026310(v334, v335, &qword_1000DE950, &qword_100082918);

                      v134 = *(v50 + 5);
                      *&v335[64] = *(v50 + 4);
                      *&v335[80] = v134;
                      v335[96] = v50[96];
                      v135 = *(v50 + 1);
                      *v335 = *v50;
                      *&v335[16] = v135;
                      v136 = *(v50 + 3);
                      *&v335[32] = *(v50 + 2);
                      *&v335[48] = v136;
                      v137 = v333;
                      *v50 = v332;
                      *(v50 + 1) = v137;
                      *(v50 + 4) = v111;
                      v138 = v329;
                      v139 = v330;
                      v140 = v331[0];
                      *(v50 + 81) = *(v331 + 9);
                      *(v50 + 72) = v140;
                      *(v50 + 56) = v139;
                      *(v50 + 40) = v138;
                      sub_1000256C0(v335, &qword_1000DE950, &qword_100082918);
                      if (qword_1000DE268 != -1)
                      {
                        swift_once();
                      }

                      v141 = sub_10007D5C8();
                      sub_1000046BC(v141, qword_1000E4B28);

                      v142 = sub_10007D5A8();
                      v143 = sub_10007E288();
                      if (os_log_type_enabled(v142, v143))
                      {
                        v144 = swift_slowAlloc();
                        *v144 = 134349056;
                        if (v111 >> 62)
                        {
                          v145 = sub_10007E528();
                        }

                        else
                        {
                          v145 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        *(v144 + 4) = v145;

                        _os_log_impl(&_mh_execute_header, v142, v143, "GeneralMapsStateCollector: collectNearbyCategories will use %{public}ld categories from cache", v144, 0xCu);
                      }

                      else
                      {
                      }

                      sub_100025564(v314);

                      goto LABEL_86;
                    }

                    if (qword_1000DE268 != -1)
                    {
                      swift_once();
                    }

                    v244 = sub_10007D5C8();
                    sub_1000046BC(v244, qword_1000E4B28);
                    v245 = sub_10007D5A8();
                    v246 = sub_10007E288();
                    v247 = os_log_type_enabled(v245, v246);
                    v147 = v327;
                    if (v247)
                    {
                      v248 = swift_slowAlloc();
                      *v248 = 0;
                      _os_log_impl(&_mh_execute_header, v245, v246, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: location has changed", v248, 2u);
                      v110 = v314;
                    }

                    v242 = v110;
                    goto LABEL_122;
                  }

                  v147 = v327;
                  if (qword_1000DE268 != -1)
                  {
                    swift_once();
                  }

                  v265 = sub_10007D5C8();
                  sub_1000046BC(v265, qword_1000E4B28);
                  v266 = v309;
                  sub_10002549C(v116, v309);

                  v267 = sub_10007D5A8();
                  v268 = sub_10007E288();

                  if (os_log_type_enabled(v267, v268))
                  {
                    v269 = swift_slowAlloc();
                    *v335 = swift_slowAlloc();
                    *v269 = 136380931;
                    v270 = (v266 + v122[5]);
                    v271 = *v270;
                    v272 = v270[1];

                    sub_100025564(v266);
                    v273 = sub_100051190(v271, v272, v335);

                    *(v269 + 4) = v273;
                    *(v269 + 12) = 2081;
                    v274 = v326;
                    swift_beginAccess();
                    v275 = (v274 + v122[5]);
                    v276 = *v275;
                    v277 = v275[1];

                    v278 = sub_100051190(v276, v277, v335);

                    *(v269 + 14) = v278;
                    _os_log_impl(&_mh_execute_header, v267, v268, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: country code has changed (%{private}s -> %{private}s)", v269, 0x16u);
                    swift_arrayDestroy();

                    v110 = v314;
                  }

                  else
                  {

                    sub_100025564(v266);
                  }

                  v126 = v328;
                  v103 = v323;
                  goto LABEL_173;
                }

                if (qword_1000DE268 != -1)
                {
                  swift_once();
                }

                v228 = sub_10007D5C8();
                sub_1000046BC(v228, qword_1000E4B28);
                v229 = v310;
                sub_10002549C(v110, v310);

                v220 = sub_10007D5A8();
                v230 = sub_10007E288();
                v231 = os_log_type_enabled(v220, v230);
                v147 = v327;
                v126 = v328;
                if (v231)
                {
                  v232 = swift_slowAlloc();
                  v233 = swift_slowAlloc();
                  *v335 = v233;
                  *v232 = 136380931;
                  v234 = *(v229 + v320[8]);
                  v313 = v233;
                  if (v234 <= 1)
                  {
                    if (!v234)
                    {
                      v235 = @"Standard";
                      v281 = @"Standard";
                      goto LABEL_157;
                    }

                    if (v234 == 1)
                    {
                      v235 = @"Satellite";
                      v243 = @"Satellite";
                      goto LABEL_157;
                    }
                  }

                  else
                  {
                    switch(v234)
                    {
                      case 2:
                        v235 = @"Hybrid";
                        v279 = @"Hybrid";
                        goto LABEL_157;
                      case 3:
                        v235 = @"Transit";
                        v280 = @"Transit";
                        goto LABEL_157;
                      case 4:
                        v235 = @"Driving";
                        v236 = @"Driving";
                        goto LABEL_157;
                    }
                  }

                  v235 = [NSString stringWithFormat:@"(unknown: %i)", v234];
LABEL_157:
                  v282 = v235;
                  if (v282)
                  {
                    v283 = v282;
                    v284 = sub_10007E158();
                    v286 = v285;

                    sub_100025564(v229);
                    v287 = sub_100051190(v284, v286, v335);

                    *(v232 + 4) = v287;
                    *(v232 + 12) = 2081;
                    v288 = v326;
                    swift_beginAccess();
                    v289 = *(&v288->isa + v320[8]);
                    if (v289 <= 1)
                    {
                      v126 = v328;
                      if (!v289)
                      {
                        v290 = @"Standard";
                        v295 = @"Standard";
                        goto LABEL_170;
                      }

                      if (v289 == 1)
                      {
                        v290 = @"Satellite";
                        v292 = @"Satellite";
                        goto LABEL_170;
                      }
                    }

                    else
                    {
                      v126 = v328;
                      switch(v289)
                      {
                        case 2:
                          v290 = @"Hybrid";
                          v293 = @"Hybrid";
                          goto LABEL_170;
                        case 3:
                          v290 = @"Transit";
                          v294 = @"Transit";
                          goto LABEL_170;
                        case 4:
                          v290 = @"Driving";
                          v291 = @"Driving";
                          goto LABEL_170;
                      }
                    }

                    v290 = [NSString stringWithFormat:@"(unknown: %i)", *(&v288->isa + v320[8])];
LABEL_170:
                    v296 = v290;

                    if (v296)
                    {
                      v297 = sub_10007E158();
                      v299 = v298;

                      v300 = sub_100051190(v297, v299, v335);

                      *(v232 + 14) = v300;
                      _os_log_impl(&_mh_execute_header, v220, v230, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: map type has changed (%{private}s -> %{private}s)", v232, 0x16u);
                      swift_arrayDestroy();

                      goto LABEL_172;
                    }

LABEL_187:
                    __break(1u);
                    return;
                  }

LABEL_186:

                  __break(1u);
                  goto LABEL_187;
                }

                sub_100025564(v229);
LABEL_173:
                sub_100025564(v110);
                goto LABEL_44;
              }

              if (qword_1000DE268 != -1)
              {
                swift_once();
              }

              v219 = sub_10007D5C8();
              sub_1000046BC(v219, qword_1000E4B28);
              sub_10002549C(v110, v104);

              v220 = sub_10007D5A8();
              v221 = v104;
              v222 = sub_10007E288();
              v223 = os_log_type_enabled(v220, v222);
              v147 = v327;
              v126 = v328;
              if (!v223)
              {

                sub_100025564(v221);
                goto LABEL_173;
              }

              v224 = swift_slowAlloc();
              v225 = swift_slowAlloc();
              *v335 = v225;
              *v224 = 136380931;
              v226 = *(v221 + v320[7]);
              v313 = v225;
              if (v226 > 2)
              {
                switch(v226)
                {
                  case 3:
                    v227 = @"PREFERRED_TRANSPORT_TYPE_TRANSIT";
                    goto LABEL_128;
                  case 4:
                    v227 = @"PREFERRED_TRANSPORT_TYPE_RIDESHARE";
                    goto LABEL_128;
                  case 5:
                    v227 = @"PREFERRED_TRANSPORT_TYPE_CYCLING";
                    goto LABEL_128;
                }
              }

              else
              {
                switch(v226)
                {
                  case 0:
                    v227 = @"PREFERRED_TRANSPORT_TYPE_NONE";
                    goto LABEL_128;
                  case 1:
                    v227 = @"PREFERRED_TRANSPORT_TYPE_DRIVING";
                    goto LABEL_128;
                  case 2:
                    v227 = @"PREFERRED_TRANSPORT_TYPE_WALKING";
LABEL_128:
                    v249 = v227;
LABEL_129:
                    v250 = v227;
                    if (v250)
                    {
                      v251 = v250;
                      v252 = sub_10007E158();
                      v254 = v253;

                      sub_100025564(v306);
                      v255 = sub_100051190(v252, v254, v335);

                      *(v224 + 4) = v255;
                      *(v224 + 12) = 2081;
                      v256 = v326;
                      swift_beginAccess();
                      v257 = *(&v256->isa + v320[7]);
                      if (v257 > 2)
                      {
                        v126 = v328;
                        switch(v257)
                        {
                          case 3:
                            v258 = @"PREFERRED_TRANSPORT_TYPE_TRANSIT";
                            goto LABEL_144;
                          case 4:
                            v258 = @"PREFERRED_TRANSPORT_TYPE_RIDESHARE";
                            goto LABEL_144;
                          case 5:
                            v258 = @"PREFERRED_TRANSPORT_TYPE_CYCLING";
                            goto LABEL_144;
                        }
                      }

                      else
                      {
                        v126 = v328;
                        switch(v257)
                        {
                          case 0:
                            v258 = @"PREFERRED_TRANSPORT_TYPE_NONE";
                            goto LABEL_144;
                          case 1:
                            v258 = @"PREFERRED_TRANSPORT_TYPE_DRIVING";
                            goto LABEL_144;
                          case 2:
                            v258 = @"PREFERRED_TRANSPORT_TYPE_WALKING";
LABEL_144:
                            v259 = v258;
LABEL_145:
                            v260 = v258;

                            if (v260)
                            {
                              v261 = sub_10007E158();
                              v263 = v262;

                              v264 = sub_100051190(v261, v263, v335);

                              *(v224 + 14) = v264;
                              _os_log_impl(&_mh_execute_header, v220, v222, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: preferred transport type has changed (%{private}s -> %{private}s)", v224, 0x16u);
                              swift_arrayDestroy();

LABEL_172:

                              v103 = v323;
                              v110 = v314;
                              goto LABEL_173;
                            }

                            goto LABEL_185;
                        }
                      }

                      v258 = [NSString stringWithFormat:@"(unknown: %i)", *(&v256->isa + v320[7])];
                      goto LABEL_145;
                    }

LABEL_184:

                    __break(1u);
LABEL_185:
                    __break(1u);
                    goto LABEL_186;
                }
              }

              v227 = [NSString stringWithFormat:@"(unknown: %i)", v226];
              goto LABEL_129;
            }

            sub_100025564(v110);
          }

          else
          {
            swift_endAccess();
          }

          v146 = v324;
          v147 = v327;
          v126 = v328;
          if (qword_1000DE268 != -1)
          {
            swift_once();
          }

          v148 = sub_10007D5C8();
          sub_1000046BC(v148, qword_1000E4B28);

          v149 = sub_10007D5A8();
          v150 = sub_10007E288();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            *v335 = v152;
            *v151 = 136446210;
            swift_beginAccess();
            v334[0] = *(v146 + 16);
            v153 = sub_10007E168();
            v155 = v154;

            v156 = sub_100051190(v153, v155, v335);

            *(v151 + 4) = v156;
            _os_log_impl(&_mh_execute_header, v149, v150, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: no cached categories found for domain %{public}s", v151, 0xCu);
            sub_1000250AC(v152);

            v103 = v323;
          }

          else
          {
          }

LABEL_44:
          v157 = [objc_opt_self() standardUserDefaults];
          v158 = sub_10007E138();
          v159 = [v157 objectForKey:v158];

          if (v159)
          {
            sub_10007E3D8();
            swift_unknownObjectRelease();
          }

          else
          {
            memset(v334, 0, 32);
          }

          v160 = v318;
          *v335 = *v334;
          *&v335[16] = *&v334[16];
          if (*&v334[24])
          {
            v161 = swift_dynamicCast();
            (*(v147 + 56))(v160, v161 ^ 1u, 1, v126);
            if ((*(v147 + 48))(v160, 1, v126) != 1)
            {
              v303(v319, v160, v126);
              goto LABEL_53;
            }
          }

          else
          {
            sub_1000256C0(v335, &qword_1000DE930, &unk_100083CC0);
            (*(v147 + 56))(v160, 1, 1, v126);
          }

          sub_10007D3A8();
          if ((*(v147 + 48))(v160, 1, v126) != 1)
          {
            sub_1000256C0(v160, &qword_1000DE928, &unk_100082900);
          }

LABEL_53:
          v162 = sub_10007E138();
          v326 = v157;
          v163 = [v157 integerForKey:v162];

          Integer = GEOConfigGetInteger();
          v165 = v321;
          sub_10007D408();
          v166 = sub_10007D3F8();
          v167 = *(v103 + 8);
          v167(v165, v322);
          if ((v166 & 1) != 0 && v163 >= Integer)
          {
            if (qword_1000DE268 != -1)
            {
              swift_once();
            }

            v168 = sub_10007D5C8();
            sub_1000046BC(v168, qword_1000E4B28);
            v169 = sub_10007D5A8();
            v170 = sub_10007E288();
            v171 = os_log_type_enabled(v169, v170);
            v173 = v327;
            v172 = v328;
            v174 = v319;
            if (v171)
            {
              v175 = swift_slowAlloc();
              *v175 = 134349312;
              *(v175 + 4) = v163;
              *(v175 + 12) = 2050;
              *(v175 + 14) = Integer;
              _os_log_impl(&_mh_execute_header, v169, v170, "GeneralMapsStateCollector: collectNearbyCategories will not fetch categories: already issued %{public}ld requests (of daily maximum: %{public}ld)", v175, 0x16u);

              v176 = v308;
              v177 = v326;
            }

            else
            {
              v176 = v169;
              v169 = v326;
              v177 = v308;
            }

            (*(v173 + 8))(v174, v172);
            goto LABEL_85;
          }

          dispatch_group_enter(*&v307[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
          sub_10007D3A8();
          v178 = v321;
          sub_10007D408();
          v179 = v319;
          v180 = sub_10007D3F8();
          v167(v178, v322);
          if (v180)
          {
            v181 = v163 + 1;
            v182 = v327;
            if (!__OFADD__(v163, 1))
            {
LABEL_64:
              v183 = v316;
              isa = sub_10007D2C8().super.isa;
              v185 = sub_10007E138();
              v186 = v326;
              [v326 setObject:isa forKey:v185];

              v187 = sub_10007E138();
              [v186 setInteger:v181 forKey:v187];

              if (qword_1000DE268 != -1)
              {
                swift_once();
              }

              v323 = v181;
              v188 = sub_10007D5C8();
              sub_1000046BC(v188, qword_1000E4B28);
              v189 = sub_10007D5A8();
              v190 = sub_10007E2C8();
              v191 = os_log_type_enabled(v189, v190);
              v192 = v328;
              if (v191)
              {
                v193 = swift_slowAlloc();
                *v193 = 134349056;
                *(v193 + 4) = v323;
                _os_log_impl(&_mh_execute_header, v189, v190, "GeneralMapsStateCollector: collectNearbyCategories BEGIN (daily request number %{public}ld)", v193, 0xCu);
              }

              v194 = [objc_opt_self() sharedService];
              v195 = v317;
              if (v194)
              {
                v196 = v194;
                v197 = [v194 ticketForCategoryListWithTraits:v308 isFromNoQueryState:0];

                v198 = v307;
                sub_10001DF60(v183, v197);
                if (v197)
                {
                  v199 = v315;
                  (*(v182 + 16))(v315, v325, v192);
                  v200 = (*(v182 + 80) + 24) & ~*(v182 + 80);
                  v201 = (v312 + v200 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v202 = swift_allocObject();
                  *(v202 + 16) = v198;
                  v303((v202 + v200), v199, v328);
                  *(v202 + v201) = v311;
                  *(v202 + ((v201 + 15) & 0xFFFFFFFFFFFFFFF8)) = v324;
                  v182 = v327;
                  v192 = v328;
                  *&v335[32] = sub_1000253E0;
                  *&v335[40] = v202;
                  *v335 = _NSConcreteStackBlock;
                  *&v335[8] = 1107296256;
                  *&v335[16] = sub_10001DEC4;
                  *&v335[24] = &unk_1000C8618;
                  v203 = _Block_copy(v335);

                  swift_unknownObjectRetain();
                  v204 = v198;
                  v195 = v317;

                  [v197 submitWithHandler:v203 networkActivity:0];
                  swift_unknownObjectRelease();
                  _Block_release(v203);
                  v205 = v325;
                  v179 = v319;
                  goto LABEL_82;
                }

                v179 = v319;
              }

              else
              {
                sub_10001DF60(v183, 0);
              }

              v205 = v325;
LABEL_82:
              (*(v182 + 16))(v195, v205, v192);
              v210 = sub_10007D5A8();
              v211 = sub_10007E298();
              if (os_log_type_enabled(v210, v211))
              {
                v212 = v192;
                v213 = swift_slowAlloc();
                *v213 = 134349312;
                v214 = v315;
                sub_10007D3A8();
                sub_10007D2B8();
                v216 = v215;
                v217 = *(v182 + 8);
                v217(v214, v212);
                v217(v195, v212);
                *(v213 + 4) = v216;
                *(v213 + 12) = 2050;
                *(v213 + 14) = v323;
                _os_log_impl(&_mh_execute_header, v210, v211, "GeneralMapsStateCollector: collectNearbyCategories blocked caller for %{public}f seconds, request %{public}ld", v213, 0x16u);

                swift_unknownObjectRelease();

                v217(v325, v212);
                v217(v319, v212);
              }

              else
              {
                swift_unknownObjectRelease();

                v218 = *(v182 + 8);
                v218(v195, v192);
                v218(v205, v192);
                v218(v179, v192);
              }

LABEL_85:

LABEL_86:

              return;
            }

            __break(1u);
          }

          v181 = 1;
          v182 = v327;
          goto LABEL_64;
        }

LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v206 = sub_10007D5C8();
  sub_1000046BC(v206, qword_1000E4B28);
  v207 = sub_10007D5A8();
  v208 = sub_10007E2A8();
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    *v209 = 0;
    _os_log_impl(&_mh_execute_header, v207, v208, "GeneralMapsStateCollector: collectNearbyCategories had no location or region to work with", v209, 2u);
  }
}

uint64_t sub_10001D134(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a2;
  v35 = sub_10007DEB8();
  v37 = *(v35 - 8);
  v9 = *(v37 + 64);
  __chkstk_darwin(v35);
  v33 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10007DED8();
  v34 = *(v36 - 8);
  v11 = *(v34 + 64);
  __chkstk_darwin(v36);
  v29 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007D3B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&a3[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  (*(v14 + 16))(v16, a4, v13);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a1;
  *(v19 + 4) = v28;
  (*(v14 + 32))(&v19[v17], v16, v13);
  v20 = v31;
  *&v19[v18] = v30;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v20;
  aBlock[4] = sub_1000255C4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8668;
  v21 = _Block_copy(aBlock);
  v22 = a3;

  swift_errorRetain();

  v23 = v29;
  sub_10007DEC8();
  v38 = &_swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  v24 = v33;
  v25 = v35;
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v21);
  (*(v37 + 8))(v24, v25);
  (*(v34 + 8))(v23, v36);
}

void sub_10001D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v84 = a6;
  v88 = a4;
  v9 = sub_10007D3B8();
  isa = v9[-1].isa;
  v90 = v9;
  v10 = *(isa + 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v83 - v15;
  v17 = __chkstk_darwin(v14);
  v87 = &v83 - v18;
  __chkstk_darwin(v17);
  v85 = &v83 - v19;
  v20 = sub_100015240(&qword_1000DEA10, &unk_100083CE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v83 - v22;
  v83 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  v24 = swift_projectBox();
  v25 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation;
  if (*(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation))
  {

    sub_10007DF18();
    v26 = *(a1 + v25);
    *(a1 + v25) = 0;

    v27 = a1;
    if (a2 && (v28 = sub_10003A4A0(a2)) != 0)
    {
      v29 = v28;
      v30 = v28 >> 62;
      if (v28 >> 62)
      {
        if (sub_10007E528())
        {
          goto LABEL_6;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:

        sub_100015ECC(v93);
        v98[0] = v94;

        sub_1000256C0(v98, &qword_1000DEA18, &qword_1000829B0);
        v31 = a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
        v32 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
        v91[4] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
        v91[5] = v32;
        v92 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
        v33 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
        v91[0] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
        v91[1] = v33;
        v34 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
        v91[2] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
        v91[3] = v34;
        v35 = v93[1];
        *v31 = v93[0];
        *(v31 + 16) = v35;
        *(v31 + 32) = v29;
        *(v31 + 81) = *(v97 + 9);
        *(v31 + 72) = v97[0];
        *(v31 + 56) = v96;
        *(v31 + 40) = v95;
        sub_1000256C0(v91, &qword_1000DE950, &qword_100082918);
        swift_beginAccess();
        v36 = v83;
        v37 = *(v83 + 36);
        v38 = *(v24 + v37);
        *(v24 + v37) = v29;

        if (qword_1000DE220 != -1)
        {
          swift_once();
        }

        v39 = v84;
        swift_beginAccess();
        LOBYTE(v39) = *(v39 + 16);
        swift_beginAccess();
        sub_10002549C(v24, v23);
        (*(*(v36 - 8) + 56))(v23, 0, 1, v36);
        swift_beginAccess();
        sub_10003A7AC(v23, v39);
        swift_endAccess();
        v40 = isa;
        v41 = v85;
        if (qword_1000DE268 != -1)
        {
          swift_once();
        }

        v42 = sub_10007D5C8();
        sub_1000046BC(v42, qword_1000E4B28);
        v43 = v90;
        (*(v40 + 2))(v41, v88, v90);

        v44 = sub_10007D5A8();
        v45 = sub_10007E2C8();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 134349312;
          if (v30)
          {
            v47 = sub_10007E528();
          }

          else
          {
            v47 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v46 + 4) = v47;

          *(v46 + 12) = 2050;
          v66 = v87;
          sub_10007D3A8();
          sub_10007D2B8();
          v68 = v67;
          v69 = *(v40 + 1);
          v70 = v66;
          v71 = v90;
          v69(v70, v90);
          v69(v41, v71);
          *(v46 + 14) = v68;
          _os_log_impl(&_mh_execute_header, v44, v45, "GeneralMapsStateCollector: collectNearbyCategories END (%{public}ld categories, %{public}f seconds elapsed)", v46, 0x16u);
          goto LABEL_29;
        }

        swift_bridgeObjectRelease_n();
        (*(v40 + 1))(v41, v43);
LABEL_30:
        dispatch_group_leave(*(v27 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));

        return;
      }

      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v72 = sub_10007D5C8();
      sub_1000046BC(v72, qword_1000E4B28);
      v73 = isa;
      v74 = v90;
      (*(isa + 2))(v16, v88, v90);
      swift_errorRetain();
      v44 = sub_10007D5A8();
      v51 = sub_10007E2A8();

      if (!os_log_type_enabled(v44, v51))
      {

        (*(v73 + 1))(v16, v74);
        goto LABEL_30;
      }

      v52 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v93[0] = v88;
      *v52 = 136446466;
      *&v91[0] = a3;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v75 = sub_10007E178();
      v77 = v27;
      v78 = sub_100051190(v75, v76, v93);

      *(v52 + 4) = v78;
      v27 = v77;
      *(v52 + 12) = 2050;
      v79 = v87;
      sub_10007D3A8();
      sub_10007D2B8();
      v81 = v80;
      v82 = *(v73 + 1);
      v82(v79, v74);
      v82(v16, v74);
      *(v52 + 14) = v81;
      v61 = "GeneralMapsStateCollector: collectNearbyCategories END (no categories; error: %{public}s, %{public}f seconds elapsed)";
    }

    else
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v48 = sub_10007D5C8();
      sub_1000046BC(v48, qword_1000E4B28);
      v49 = isa;
      v50 = v90;
      (*(isa + 2))(v13, v88, v90);
      swift_errorRetain();
      v44 = sub_10007D5A8();
      v51 = sub_10007E2A8();

      if (!os_log_type_enabled(v44, v51))
      {

        (*(v49 + 1))(v13, v50);
        goto LABEL_30;
      }

      v52 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v93[0] = v88;
      *v52 = 136446466;
      *&v91[0] = a3;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v53 = sub_10007E178();
      v55 = v27;
      v56 = sub_100051190(v53, v54, v93);

      *(v52 + 4) = v56;
      v27 = v55;
      *(v52 + 12) = 2050;
      v57 = v87;
      sub_10007D3A8();
      sub_10007D2B8();
      v59 = v58;
      v60 = *(v49 + 1);
      v60(v57, v50);
      v60(v13, v50);
      *(v52 + 14) = v59;
      v61 = "GeneralMapsStateCollector: collectNearbyCategories END (unexpected category type; error: %{public}s, %{public}f seconds elapsed)";
    }

    _os_log_impl(&_mh_execute_header, v44, v51, v61, v52, 0x16u);
    sub_1000250AC(v88);

LABEL_29:

    goto LABEL_30;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v62 = sub_10007D5C8();
  sub_1000046BC(v62, qword_1000E4B28);
  v90 = sub_10007D5A8();
  v63 = sub_10007E2A8();
  if (os_log_type_enabled(v90, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v90, v63, "GeneralMapsStateCollector: collectNearbyCategories was cancelled just before completion", v64, 2u);
  }

  v65 = v90;
}

uint64_t sub_10001DEC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_10007E1D8();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_10001DF60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10007DEF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = sub_10007DEB8();
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14);
  if (a2)
  {
    v40 = v7;
    v41 = v6;
    v17 = swift_allocObject();
    v42 = a1;
    v18 = v17;
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = v18;
    aBlock[4] = sub_10002538C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C85A0;
    _Block_copy(aBlock);
    v43 = &_swiftEmptyArrayStorage;
    sub_100002E64();
    swift_unknownObjectRetain_n();

    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    v20 = sub_10007DF38();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = sub_10007DF08();

    v24 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation;
    v25 = *(v3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation);
    *(v3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation) = v23;

    sub_10007D318();
    v27 = v26 + -10.0;
    if (v26 + -10.0 <= 0.0)
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v36 = sub_10007D5C8();
      sub_1000046BC(v36, qword_1000E4B28);
      v37 = sub_10007D5A8();
      v38 = sub_10007E2A8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "GeneralMapsStateCollector: could not schedule collectNearbyCategories cancellation", v39, 2u);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v28 = sub_10007D5C8();
      sub_1000046BC(v28, qword_1000E4B28);
      v29 = sub_10007D5A8();
      v30 = sub_10007E2C8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134349056;
        *(v31 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v29, v30, "GeneralMapsStateCollector: scheduled collectNearbyCategories cancellation in %{public}f seconds", v31, 0xCu);
      }

      v32 = *(v3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
      sub_10007DEE8();
      sub_10007DF58();
      v33 = *(v40 + 8);
      v34 = v11;
      v35 = v41;
      result = v33(v34, v41);
      if (*(v3 + v24))
      {

        sub_10007E308();
        swift_unknownObjectRelease();

        return v33(v13, v35);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_10001E410(void *a1)
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "GeneralMapsStateCollector: collectNearbyCategories END (cancelled)", v5, 2u);
  }

  [a1 cancel];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation];
    *&Strong[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation] = 0;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup);

    dispatch_group_leave(v10);
  }
}

void sub_10001E594()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_10007DF68();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled])
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v9 = sub_10007D5C8();
      sub_1000046BC(v9, qword_1000E4B28);
      v10 = sub_10007D5A8();
      v11 = sub_10007E288();
      if (!os_log_type_enabled(v10, v11))
      {
LABEL_22:

        return;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "GeneralMapsStateCollector: skipped collectCommuteStatus (state collection cancelled)";
      v14 = v11;
      v15 = v10;
      v16 = v12;
      v17 = 2;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v15, v14, v13, v16, v17);

      goto LABEL_22;
    }

LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  sub_10007E378();
  v18 = sub_10007E368();
  v19 = sub_10007E358();

  if (!MapsFeature_IsEnabled_LocationIntelligenceMaps() || (v19 & 1) == 0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v32 = sub_10007D5C8();
    sub_1000046BC(v32, qword_1000E4B28);
    v10 = sub_10007D5A8();
    v33 = sub_10007E288();
    if (!os_log_type_enabled(v10, v33))
    {
      goto LABEL_22;
    }

    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 1) = v19 & 1;
    v13 = "GeneralMapsStateCollector: skipped collectCommuteStatus (feature flag not enabled and/or device is not eligible: eligibility=%{BOOL}d)";
    v14 = v33;
    v15 = v10;
    v16 = v34;
    v17 = 8;
    goto LABEL_21;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v20 = sub_10007D5C8();
  sub_1000046BC(v20, qword_1000E4B28);
  v21 = sub_10007D5A8();
  v22 = sub_10007E2C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "GeneralMapsStateCollector: collectCommuteStatus BEGIN", v23, 2u);
  }

  dispatch_group_enter(*&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
  sub_10001F848();
  v24 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_msgCommute];
  if (v24)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    aBlock[4] = sub_100025224;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001F6B0;
    aBlock[3] = &unk_1000C8500;
    v26 = _Block_copy(aBlock);
    v27 = v24;
    v1;

    v28 = [v27 isDeviceInCommuteWindow:v26];
    _Block_release(v26);

    if (v28 != 1)
    {
      v29 = sub_10007D5A8();
      v30 = sub_10007E2A8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "GeneralMapsStateCollector: collectCommuteStatus error occurred and isDeviceInCommuteWindow returned .willNotCallBack", v31, 2u);
      }

      sub_10001FE14();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001EA70(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char *a6)
{
  v36 = a5;
  v37 = a4;
  v35 = a3;
  v34 = a1;
  v8 = sub_10007DEB8();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10007DED8();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  __chkstk_darwin(v12);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v20 = &v33[-v19];
  v38 = *&a6[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  sub_100026310(a2, &v33[-v19], &qword_1000DE928, &unk_100082900);
  v21 = (*(v17 + 80) + 25) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a6;
  *(v24 + 24) = v34;
  sub_10002522C(v20, v24 + v21);
  v25 = v35;
  *(v24 + v22) = v35;
  v27 = v36;
  v26 = v37;
  *(v24 + v23) = v36;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  aBlock[4] = sub_10002529C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8550;
  v28 = _Block_copy(aBlock);
  v29 = a6;
  v30 = v25;
  v31 = v27;
  swift_errorRetain();
  sub_10007DEC8();
  v42 = &_swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v28);
  (*(v41 + 8))(v11, v8);
  (*(v39 + 8))(v15, v40);
}

void sub_10001EDF4(uint64_t a1, int a2, uint64_t a3, NSObject *a4, void *a5, uint64_t a6)
{
  v106 = a4;
  v11 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v18 = &v95 - v17;
  v19 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation;
  if (*(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation))
  {
    v98 = v16;
    v105 = a2;

    sub_10007DF18();
    v20 = *(a1 + v19);
    *(a1 + v19) = 0;

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v21 = sub_10007D5C8();
    v22 = sub_1000046BC(v21, qword_1000E4B28);
    sub_100026310(a3, v18, &qword_1000DE928, &unk_100082900);
    v23 = v106;
    v24 = v106;
    v25 = a5;
    swift_errorRetain();
    v103 = v22;
    v26 = sub_10007D5A8();
    v101 = a5;
    v27 = v26;
    v28 = sub_10007E298();
    v102 = v25;

    v99 = v28;
    if (os_log_type_enabled(v27, v28))
    {
      v97 = v27;
      v100 = a1;
      v29 = v24;
      v30 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v119[0] = v96;
      *v30 = 136316162;
      if (v105)
      {
        v31 = 7562585;
      }

      else
      {
        v31 = 28494;
      }

      if (v105)
      {
        v32 = 0xE300000000000000;
      }

      else
      {
        v32 = 0xE200000000000000;
      }

      v33 = v23;
      v34 = sub_100051190(v31, v32, v119);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      sub_100026310(v18, v15, &qword_1000DE928, &unk_100082900);
      v35 = sub_10007E168();
      v37 = v36;
      sub_1000256C0(v18, &qword_1000DE928, &unk_100082900);
      v38 = sub_100051190(v35, v37, v119);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2080;
      *&v121[0] = v33;
      v39 = v29;
      sub_100015240(&qword_1000DE9A0, &qword_100082990);
      v40 = sub_10007E168();
      v42 = sub_100051190(v40, v41, v119);

      *(v30 + 24) = v42;
      *(v30 + 32) = 2080;
      v43 = v101;
      *&v121[0] = v101;
      v44 = v102;
      sub_100015240(&qword_1000DE9A8, qword_100082998);
      v45 = sub_10007E168();
      v47 = sub_100051190(v45, v46, v119);

      *(v30 + 34) = v47;
      *(v30 + 42) = 2080;
      if (a6)
      {
        swift_getErrorValue();
        v48 = sub_10007E5C8();
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      *&v121[0] = v48;
      *(&v121[0] + 1) = v49;
      sub_100015240(&unk_1000DE990, &qword_100082980);
      v54 = sub_10007E168();
      v56 = sub_100051190(v54, v55, v119);

      *(v30 + 44) = v56;
      v57 = v97;
      _os_log_impl(&_mh_execute_header, v97, v99, "GeneralMapsStateCollector: collectCommuteStatus isInWindow? %s, entryTime: %s, nextLikelyDestination: %s, routeSet: %s, error: %s", v30, 0x34u);
      swift_arrayDestroy();

      a1 = v100;
      v23 = v106;
      v24 = v29;
      if ((v105 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v43 = v101;

      sub_1000256C0(v18, &qword_1000DE928, &unk_100082900);
      if ((v105 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v23 && v43)
    {
      v58 = v43;
      v59 = v24;
      v60 = v102;
      v61 = sub_10007D5A8();
      v62 = sub_10007E2C8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v100 = a1;
        *&v121[0] = v64;
        *v63 = 136315394;
        *&v119[0] = v23;
        v65 = v59;
        sub_100015240(&qword_1000DE9A0, &qword_100082990);
        v66 = sub_10007E168();
        v68 = sub_100051190(v66, v67, v121);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2080;
        *&v119[0] = v58;
        v69 = v60;
        sub_100015240(&qword_1000DE9A8, qword_100082998);
        v70 = sub_10007E168();
        v72 = sub_100051190(v70, v71, v121);

        *(v63 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v61, v62, "GeneralMapsStateCollector: collectCommuteStatus collectCommuteStatus received a commute window, destination: %s, and route set: %s", v63, 0x16u);
        swift_arrayDestroy();
        a1 = v100;

        v73 = v106;
      }

      else
      {

        v73 = v23;
      }

      v77 = v59;
      sub_100015ECC(v121);

      v127[0] = v123;
      sub_1000256C0(v127, &qword_1000DE9A0, &qword_100082990);
      v78 = a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
      v79 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
      v107[4] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
      v107[5] = v79;
      v108 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
      v80 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
      v107[0] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
      v107[1] = v80;
      v81 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
      v107[2] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
      v107[3] = v81;
      v82 = v121[0];
      v83 = v121[2];
      v84 = v122;
      *(v78 + 16) = v121[1];
      *(v78 + 32) = v83;
      *v78 = v82;
      *(v78 + 48) = v84;
      *(v78 + 56) = v73;
      *(v78 + 96) = v126;
      v85 = v125;
      *(v78 + 64) = v124;
      *(v78 + 80) = v85;
      sub_1000256C0(v107, &qword_1000DE950, &qword_100082918);
      v86 = *(v78 + 16);
      v109[0] = *v78;
      v109[1] = v86;
      v87 = *(v78 + 48);
      v110 = *(v78 + 32);
      v111 = v87;
      v88 = *(v78 + 64);
      v113[0] = *(v78 + 72);
      v89 = v113[0];
      *(v113 + 9) = *(v78 + 81);
      v117 = v110;
      v118 = v87;
      v115 = v109[0];
      v116 = v86;
      v114[0] = v89;
      *(v114 + 9) = *(v113 + 9);
      v112 = v88;
      sub_100025354(v109, v119);

      v90 = *(v78 + 80);
      v119[4] = *(v78 + 64);
      v119[5] = v90;
      v120 = *(v78 + 96);
      v91 = *(v78 + 16);
      v119[0] = *v78;
      v119[1] = v91;
      v92 = *(v78 + 48);
      v119[2] = *(v78 + 32);
      v119[3] = v92;
      v93 = v116;
      *v78 = v115;
      *(v78 + 16) = v93;
      v94 = v118;
      *(v78 + 32) = v117;
      *(v78 + 48) = v94;
      *(v78 + 64) = v58;
      *(v78 + 81) = *(v114 + 9);
      *(v78 + 72) = v114[0];
      sub_1000256C0(v119, &qword_1000DE950, &qword_100082918);
LABEL_33:
      sub_10001FE14();

      return;
    }

LABEL_28:
    v74 = sub_10007D5A8();
    v75 = sub_10007E2C8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "GeneralMapsStateCollector: collectCommuteStatus did not have a commute window, destination, or route set", v76, 2u);
    }

    goto LABEL_33;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v50 = sub_10007D5C8();
  sub_1000046BC(v50, qword_1000E4B28);
  v106 = sub_10007D5A8();
  v51 = sub_10007E2A8();
  if (os_log_type_enabled(v106, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v106, v51, "GeneralMapsStateCollector: collectCommuteStatus was cancelled just before commute route set was received", v52, 2u);
  }

  v53 = v106;
}

uint64_t sub_10001F6B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  if (a3)
  {
    sub_10007D388();
    v18 = sub_10007D3B8();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v19 = sub_10007D3B8();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  v20 = a4;
  v21 = a5;
  v22 = a6;
  v17(a2, v15, a4, a5, a6);

  return sub_1000256C0(v15, &qword_1000DE928, &unk_100082900);
}

void sub_10001F848()
{
  v1 = v0;
  v2 = sub_10007DEF8();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = sub_10007DEB8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000251E4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C84B0;
  _Block_copy(aBlock);
  v35 = &_swiftEmptyArrayStorage;
  sub_100002E64();

  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  v12 = sub_10007DF38();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_10007DF08();

  v16 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation;
  v17 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation);
  *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation) = v15;

  sub_10007D318();
  v19 = v18 + -10.0;
  if (v18 + -10.0 <= 0.0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v28 = sub_10007D5C8();
    sub_1000046BC(v28, qword_1000E4B28);
    v29 = sub_10007D5A8();
    v30 = sub_10007E2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "GeneralMapsStateCollector: could not schedule collectCommuteStatus cancellation", v31, 2u);
    }
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v20 = sub_10007D5C8();
    sub_1000046BC(v20, qword_1000E4B28);
    v21 = sub_10007D5A8();
    v22 = sub_10007E2C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v21, v22, "GeneralMapsStateCollector: scheduled collectCommuteStatus cancellation in %{public}f seconds", v23, 0xCu);
    }

    v24 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
    sub_10007DEE8();
    sub_10007DF58();
    v25 = *(v33 + 8);
    v26 = v6;
    v27 = v34;
    v25(v26, v34);
    if (*(v1 + v16))
    {

      sub_10007E308();

      v25(v8, v27);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001FCB0(uint64_t a1, const char *a2, void *a3, void (*a4)(void))
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v7 = sub_10007D5C8();
  sub_1000046BC(v7, qword_1000E4B28);
  v8 = sub_10007D5A8();
  v9 = sub_10007E2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *&Strong[*a3];
    *&Strong[*a3] = 0;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    a4();
  }
}

void sub_10001FE14()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_10007DF68();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v9 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation;
  if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation))
  {
    v10 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation);

    sub_10007DF18();

    v11 = *(v1 + v9);
    *(v1 + v9) = 0;
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = sub_10007D5C8();
  sub_1000046BC(v12, qword_1000E4B28);
  v13 = sub_10007D5A8();
  v14 = sub_10007E2C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "GeneralMapsStateCollector: collectCommuteStatus END", v15, 2u);
  }

  dispatch_group_leave(*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
}

void sub_10002001C()
{
  v1 = sub_10007DF48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_10007DF68();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v8 = sub_10007D5C8();
      sub_1000046BC(v8, qword_1000E4B28);
      v9 = sub_10007D5A8();
      v10 = sub_10007E288();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "GeneralMapsStateCollector: skipped collectSuggestions (state collection cancelled)", v11, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v12 = v0;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v13 = sub_10007D5C8();
  sub_1000046BC(v13, qword_1000E4B28);
  v14 = sub_10007D5A8();
  v15 = sub_10007E2C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "GeneralMapsStateCollector: collectSuggestions BEGIN", v16, 2u);
  }

  dispatch_group_enter(*(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
  sub_10002033C();
}

void sub_10002033C()
{
  v1 = v0;
  v2 = sub_10007DEB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007DED8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v12 = sub_10007D5C8();
  sub_1000046BC(v12, qword_1000E4B28);
  v13 = sub_10007D5A8();
  v14 = sub_10007E298();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "GeneralMapsStateCollector: fetchSuggestionEntries", v15, 2u);
  }

  v16 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine);
  if (v16)
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = sub_1000251DC;
    v28 = v17;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100020EEC;
    v26 = &unk_1000C8488;
    v18 = _Block_copy(&aBlock);
    v19 = v16;

    [v19 oneShotTopSuggestionsForSink:v1 count:3 transportType:4 callback:v18 onQueue:*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue)];
    _Block_release(v18);
  }

  else
  {
    v22[0] = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = sub_1000251D4;
    v28 = v20;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1000041A4;
    v26 = &unk_1000C8460;
    v21 = _Block_copy(&aBlock);

    sub_10007DEC8();
    v22[1] = &_swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    sub_10007E338();
    _Block_release(v21);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }
}

void sub_10002076C()
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v0 = sub_10007D5C8();
  sub_1000046BC(v0, qword_1000E4B28);
  v1 = sub_10007D5A8();
  v2 = sub_10007E2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "GeneralMapsStateCollector: fetchSuggestionEntries error: No engine", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100020F90();
  }

  else
  {
    v5 = sub_10007D5A8();
    v6 = sub_10007E2A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "GeneralMapsStateCollector: fetchSuggestionEntries : self went away", v7, 2u);
    }
  }
}

void sub_1000208F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = sub_10007D3B8();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && !a2)
  {
    v47[2] = a3;
    v20 = qword_1000DE268;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_10007D5C8();
    v22 = sub_1000046BC(v21, qword_1000E4B28);

    v23 = sub_10007D5A8();
    v24 = sub_10007E298();
    v25 = os_log_type_enabled(v23, v24);
    v26 = a1 >> 62;
    v47[1] = v22;
    if (!v25)
    {

      goto LABEL_16;
    }

    v27 = swift_slowAlloc();
    *v27 = 134349056;
    if (v26)
    {
      goto LABEL_34;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007E528())
    {
      *(v27 + 4) = i;

      _os_log_impl(&_mh_execute_header, v23, v24, "GeneralMapsStateCollector: fetchSuggestionEntries received %{public}ld entries", v27, 0xCu);

LABEL_16:
      if (v26)
      {
        v27 = sub_10007E528();
        if (!v27)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_27;
        }
      }

      if (v27 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v29 = 0;
    v48 = GEOConfigMapsSuggestionsCurrentLocationOfInterestExpiryDurationForWidget;
    v47[3] = *(&GEOConfigMapsSuggestionsCurrentLocationOfInterestExpiryDurationForWidget + 1);
    v30 = (v6 + 8);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v31 = sub_10007E468();
      }

      else
      {
        v31 = *(a1 + 8 * v29 + 32);
      }

      v32 = v31;
      if ([v31 type] == 25)
      {
        v6 = v6 & 0xFFFFFFFF00000000 | v48;
        GEOConfigGetDouble();
        sub_10007D308();
        isa = sub_10007D2C8().super.isa;
        (*v30)(v9, v49);
        [v32 setExpires:isa];
      }

      ++v29;
    }

    while (v27 != v29);
LABEL_27:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      sub_100015ECC(v52);
      v59 = v54;
      sub_1000256C0(&v59, &unk_1000DE970, &unk_100082970);
      v36 = &v35[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
      v37 = *&v35[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
      v38 = *&v35[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16];
      v50[2] = *&v35[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32];
      v50[1] = v38;
      v50[0] = v37;
      v39 = *&v35[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48];
      v40 = *&v35[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64];
      v41 = *&v35[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80];
      v51 = v35[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96];
      v50[5] = v41;
      v50[4] = v40;
      v50[3] = v39;
      *(v36 + 4) = v53;
      *(v36 + 1) = v52[1];
      *v36 = v52[0];
      *(v36 + 5) = a1;
      v42 = v55;
      v43 = v56;
      v44 = v57;
      v36[96] = v58;
      *(v36 + 4) = v43;
      *(v36 + 5) = v44;
      *(v36 + 3) = v42;
      sub_1000256C0(v50, &qword_1000DE950, &qword_100082918);
      sub_100020F90();

      return;
    }

    goto LABEL_30;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v10 = sub_10007D5C8();
  sub_1000046BC(v10, qword_1000E4B28);
  swift_errorRetain();
  v11 = sub_10007D5A8();
  v12 = sub_10007E2A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v52[0] = v14;
    *v13 = 136446210;
    *&v50[0] = a2;
    swift_errorRetain();
    sub_100015240(&qword_1000DE938, &qword_100082910);
    v15 = sub_10007E178();
    v17 = sub_100051190(v15, v16, v52);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "GeneralMapsStateCollector: fetchSuggestionEntries error: %{public}s", v13, 0xCu);
    sub_1000250AC(v14);
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_30:
    v19 = sub_10007D5A8();
    v45 = sub_10007E2A8();
    if (os_log_type_enabled(v19, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v19, v45, "GeneralMapsStateCollector: fetchSuggestionEntries : self went away", v46, 2u);
    }

    goto LABEL_32;
  }

  v19 = v18;
  sub_100020F90();
LABEL_32:
}

uint64_t sub_100020EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
    v4 = sub_10007E1D8();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_100020F90()
{
  v66 = sub_10007DEB8();
  v1 = *(v66 - 8);
  v2 = v1[8];
  __chkstk_darwin(v66);
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10007DED8();
  v4 = *(v64 - 8);
  v5 = v4[8];
  __chkstk_darwin(v64);
  v63 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007DF48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = v0;
  v12 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v62 = v12;
  LOBYTE(v12) = sub_10007DF68();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v13 = sub_10007D5C8();
    v57 = sub_1000046BC(v13, qword_1000E4B28);
    v14 = sub_10007D5A8();
    v15 = sub_10007E298();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "GeneralMapsStateCollector: finalizeSuggestionEntries", v16, 2u);
    }

    sub_100015ECC(v84);
    v86 = v85;
    sub_100026310(&v86, &aBlock, &unk_1000DE970, &unk_100082970);
    sub_100024FF8(v84);
    p_base_meths = (&GeneralMapsTimelineProvider + 32);
    if (!v86)
    {
      break;
    }

    v18 = v86;
    v56 = v86 >> 62;
    if (v86 >> 62)
    {
      if (sub_10007E528() < 1)
      {
LABEL_37:
        sub_1000256C0(&v86, &unk_1000DE970, &unk_100082970);
        p_base_meths = &GeneralMapsTimelineProvider.base_meths;
        break;
      }

      v73 = sub_10007E528();
      if (!v73)
      {
LABEL_23:
        sub_100026310(&v86, &aBlock, &unk_1000DE970, &unk_100082970);
        v49 = sub_10007D5A8();
        v50 = sub_10007E2C8();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 134349056;
          if (v56)
          {
            v52 = sub_10007E528();
          }

          else
          {
            v52 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1000256C0(&v86, &unk_1000DE970, &unk_100082970);
          *(v51 + 4) = v52;
          sub_1000256C0(&v86, &unk_1000DE970, &unk_100082970);
          _os_log_impl(&_mh_execute_header, v49, v50, "GeneralMapsStateCollector: collectSuggestions END (%{public}ld entries)", v51, 0xCu);
        }

        else
        {
          sub_1000256C0(&v86, &unk_1000DE970, &unk_100082970);
          sub_1000256C0(&v86, &unk_1000DE970, &unk_100082970);
        }

        p_base_meths = (&GeneralMapsTimelineProvider + 32);
        goto LABEL_40;
      }
    }

    else
    {
      v73 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v73)
      {
        goto LABEL_37;
      }
    }

    v19 = 0;
    v72 = *&v74[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup];
    v69 = *&v74[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsNetworkRequester];
    v70 = v18 & 0xC000000000000001;
    v58 = v18 & 0xFFFFFFFFFFFFFF8;
    v75 = &v80;
    v60 = (v1 + 1);
    v59 = (v4 + 1);
    v71 = 1;
    v61 = v18;
    while (1)
    {
      if (v70)
      {
        v20 = sub_10007E468();
      }

      else
      {
        if (v19 >= *(v58 + 16))
        {
          goto LABEL_31;
        }

        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v76 = v19 + 1;
      dispatch_group_enter(v72);
      v22 = dispatch_group_create();
      dispatch_group_enter(v22);
      v1 = swift_allocObject();
      v23 = v74;
      v1[2] = v21;
      v1[3] = v23;
      v1[4] = v22;
      v4 = swift_allocObject();
      v4[2] = v23;
      v4[3] = v21;
      v4[4] = sub_100025124;
      v4[5] = v1;
      v82 = sub_100025130;
      v83 = v4;
      aBlock = _NSConcreteStackBlock;
      v79 = 1107296256;
      v80 = sub_100026438;
      v81 = &unk_1000C8320;
      v24 = _Block_copy(&aBlock);
      v25 = v21;
      v26 = v23;
      v27 = v25;
      v28 = v22;

      LODWORD(v22) = GEOMapItemFromMapsSuggestionsEntry();
      _Block_release(v24);
      if (!v22)
      {
        v29 = swift_allocObject();
        v29[2] = v26;
        v29[3] = v27;
        v29[4] = sub_100025124;
        v29[5] = v1;
        v82 = sub_100025180;
        v83 = v29;
        aBlock = _NSConcreteStackBlock;
        v79 = 1107296256;
        v80 = sub_1000041A4;
        v81 = &unk_1000C83C0;
        v67 = _Block_copy(&aBlock);
        v30 = v26;
        v31 = v27;

        v68 = v26;
        v32 = v63;
        sub_10007DEC8();
        v77 = &_swiftEmptyArrayStorage;
        sub_100002E64();
        sub_100015240(&unk_1000DE980, &unk_1000835B0);
        sub_100002EBC();
        v33 = v65;
        v34 = v28;
        v35 = v66;
        sub_10007E3F8();
        v36 = v67;
        sub_10007E338();
        _Block_release(v36);
        v37 = v33;
        v18 = v61;
        v38 = v35;
        v28 = v34;
        (*v60)(v37, v38);
        v39 = v32;
        v26 = v68;
        (*v59)(v39, v64);
      }

      if ((v71 & sub_100022734() & 1) != 0 && ([v27 BOOLeanForKey:@"MapsSuggestionsRoutingNotAvailableKey" is:1] & 1) == 0 && objc_msgSend(v27, "containsKey:", @"MapsSuggestionsNeedsETATrackingKey") && objc_msgSend(v27, "BOOLeanForKey:", @"MapsSuggestionsNeedsETATrackingKey"))
      {
        dispatch_group_enter(v72);
        v40 = swift_allocObject();
        *(v40 + 16) = v26;
        *(v40 + 24) = v27;
        v82 = sub_10002513C;
        v83 = v40;
        aBlock = _NSConcreteStackBlock;
        v79 = 1107296256;
        v80 = sub_1000041A4;
        v81 = &unk_1000C8370;
        v41 = _Block_copy(&aBlock);
        v42 = v26;
        v43 = v27;
        v44 = v63;
        sub_10007DEC8();
        v77 = &_swiftEmptyArrayStorage;
        sub_100002E64();
        sub_100015240(&unk_1000DE980, &unk_1000835B0);
        sub_100002EBC();
        v45 = v65;
        v46 = v28;
        v47 = v66;
        sub_10007E3F8();
        sub_10007E2E8();
        _Block_release(v41);

        v48 = v45;
        v18 = v61;
        (*v60)(v48, v47);
        (*v59)(v44, v64);

        v71 = 0;
        v19 = v76;
        if (v76 == v73)
        {
          goto LABEL_23;
        }
      }

      else
      {

        ++v19;
        if (v76 == v73)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v49 = sub_10007D5A8();
  v53 = sub_10007E2C8();
  if (os_log_type_enabled(v49, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v49, v53, "GeneralMapsStateCollector: collectSuggestions END (no entries)", v54, 2u);
  }

LABEL_40:

  dispatch_group_leave(*(p_base_meths[250] + v74));
}