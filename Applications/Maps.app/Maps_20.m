void sub_100286DFC(__int128 *a1, char a2, uint64_t a3)
{
  v3 = a1[1];
  v17 = *a1;
  v18 = v3;
  v19 = a1[2];
  v20 = *(a1 + 6);
  if (a2)
  {
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100021540(v4, qword_101960000);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "user dismissed simulation prompt; will not start nav", v6, 2u);
    }
  }

  else
  {
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_101960000);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "will push navigation for current route collection", v11, 2u);
    }

    v12 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v13 = v12;
      v15[0] = v17;
      v15[1] = v18;
      v15[2] = v19;
      v16 = v20;
      [v12 displayNavigationForRouteCollection:a3 options:v15];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100287028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 33);
  v9[0] = *a2;
  v10 = *(a2 + 8);
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = *(a2 + 40);
  v7 = *(a1 + 32);

  v7(v9, a3);
}

void sub_100287100(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionForTransportType:1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 routes];
    sub_100014C84(0, &qword_101916D08);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 > a1)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else
      {
        v6 = [v4 routeCollectionByChangingCurrentRouteIndex:a1];
        if (qword_101906720 == -1)
        {
LABEL_7:
          v8 = type metadata accessor for Logger();
          sub_100021540(v8, qword_101960000);
          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 134217984;
            *(v11 + 4) = a1;
            _os_log_impl(&_mh_execute_header, v9, v10, "will prompt for simulation for current route collection at index %ld", v11, 0xCu);
          }

          v12 = objc_opt_self();
          v13 = [v4 currentRoute];
          v14 = swift_allocObject();
          *(v14 + 16) = a1;
          *(v14 + 24) = v6;
          aBlock[4] = sub_10028E700;
          aBlock[5] = v14;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100287028;
          aBlock[3] = &unk_10160E4C8;
          v15 = _Block_copy(aBlock);
          v16 = v6;

          [v12 promptIfNeededForSimulationForRoute:v13 navigationTracePlayback:0 continueWithOptions:v15];
          _Block_release(v15);

          return;
        }
      }

      swift_once();
      goto LABEL_7;
    }
  }

  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100021540(v17, qword_101960000);
  oslog = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v18, "no current route collection or route index is out of bounds; will not start nav", v19, 2u);
  }
}

void sub_100287494(__int128 *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v19 = *a1;
  v20 = v4;
  v21 = a1[2];
  v22 = *(a1 + 6);
  if (a2)
  {
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_101960000);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "user dismissed simulation prompt; will not start nav", v7, 2u);
    }
  }

  else
  {
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_101960000);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v11, v12, "will push navigation for current route collection at index %ld", v13, 0xCu);
    }

    v14 = [objc_opt_self() sharedInstance];
    if (v14)
    {
      v15 = v14;
      v17[0] = v19;
      v17[1] = v20;
      v17[2] = v21;
      v18 = v22;
      [v14 displayNavigationForRouteCollection:a4 options:v17];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002877D0(unint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionForTransportType:1];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 routes];
  sub_100014C84(0, &qword_101916D08);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 > a1)
  {
    v8 = [v4 routes];
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v9 & 0xC000000000000001) == 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v10 = *(v9 + 8 * a1 + 32);
        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_22;
    }

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v23 = v10;

    v11 = [v23 clickableAdvisory];
    if (!v11)
    {
LABEL_27:

      v18 = v23;
      goto LABEL_28;
    }

    v12 = v11;
    v13 = [v11 advisoryItems];

    sub_100014C84(0, &unk_101916D10);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(a1 >> 62))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_12:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v14 = *(a1 + 32);
        }

        v15 = v14;

        v16 = [objc_allocWithZone(CarAdvisoryDetailCardViewController) initWithAdvisoryItem:v15];

        v17 = &OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard;
        goto LABEL_25;
      }

LABEL_24:

      v16 = [objc_allocWithZone(CarAdvisoryListCardViewController) initWithRoute:v23 delegate:v1];
      v17 = &OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard;
LABEL_25:
      v19 = *v17;
      v20 = *(v1 + v19);
      *(v1 + v19) = v16;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        [Strong setNeedsUpdateComponent:@"cards" animated:1];
      }

      goto LABEL_27;
    }

LABEL_22:
    if (_CocoaArrayWrapper.endIndex.getter() == 1 && _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v18 = v4;
LABEL_28:
}

void sub_100287C48()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession;
  v3 = [*&v0[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession] navigationStateMonitoringTask];
  [v3 cancelNavigationAutoLaunchIfNeccessary];

  v4 = [*&v1[v2] destinationDisplayableMarker];
  if (v4)
  {
    v24 = v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if (qword_101906748 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100021540(v7, qword_101960078);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "presenting route planning handoff alert", v10, 2u);
      }

      v11 = [objc_opt_self() sharedInstance];
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = v24;
        *(v13 + 24) = v1;
        aBlock[4] = sub_10028E6F0;
        aBlock[5] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002ABAC8;
        aBlock[3] = &unk_10160E400;
        v14 = _Block_copy(aBlock);
        v15 = v24;
        v16 = v1;

        [v12 presentConfirmationAlertFrom:v6 completion:v14];
        _Block_release(v14);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    if (qword_101906748 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100021540(v20, qword_101960078);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "route planning handoff aborted, no chrome VC", v23, 2u);
    }
  }

  else
  {
    if (qword_101906748 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100021540(v17, qword_101960078);
    v24 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v24, v18, "route planning handoff aborted, no destination", v19, 2u);
    }
  }
}

void sub_100288020(char a1, void *a2)
{
  if (a1)
  {
    if (qword_101906748 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100021540(v3, qword_101960078);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "user confirmed route planning handoff alert; will proceed with the handoff", v6, 2u);
    }

    v7 = [objc_opt_self() sharedInstance];
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = a2;
      aBlock[4] = sub_10028E6F8;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002887CC;
      aBlock[3] = &unk_10160E478;
      v11 = _Block_copy(aBlock);
      v12 = a2;

      [v8 handoffDestination:v12 completion:v11];
      _Block_release(v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_101906748 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_101960078);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "user cancelled route planning handoff alert", v15, 2u);
    }
  }
}

void sub_1002882EC(char a1, void *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_101906748 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100021540(v19, qword_101960078);
    v8 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v8, v20, "route planning handoff aborted, context was deallocated", v21, 2u);
    }

    goto LABEL_34;
  }

  v8 = Strong;
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = [v9 isCurrentContext:v8], v10, !v11))
  {
    if (qword_101906748 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100021540(v15, qword_101960078);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "route planning handoff aborted, not the current context", v18, 2u);
    }

    v8 = v16;
    goto LABEL_34;
  }

  v12 = [v8 carChromeViewController];
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      v14 = _convertErrorToNSError(_:)();
    }

    else
    {
      v14 = 0;
    }

    v22 = MapsExternalDeviceHandoffResultStringForAnalytics(v14);

    [(CarChromeViewController *)v13 captureUserAction:9020 onTarget:1007 eventValue:v22];
  }

  if (qword_101906748 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100021540(v23, qword_101960078);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 67109378;
    *(v26 + 4) = a1 & 1;
    *(v26 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v28;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    *(v26 + 10) = v28;
    *v27 = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "route planning handoff complete with success: %{BOOL}d, error: %@", v26, 0x12u);
    sub_100024F64(v27, &qword_1019144F0);
  }

  if ((a1 & 1) == 0)
  {
    v32 = [objc_opt_self() sharedMapsDelegate];
    if (v32)
    {
      v33 = v32;
      if (a2)
      {
        a2 = _convertErrorToNSError(_:)();
      }

      isa = CarInterruptionUserInfoForDestinationHandoffFailure(a4, a2);

      if (isa)
      {
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      [v33 interruptApplicationWithKind:3 userInfo:isa completionHandler:0];
    }

    goto LABEL_34;
  }

  v30 = [objc_opt_self() sharedInstance];
  if (v30)
  {
    v31 = v30;
    [v30 displayMapBrowsing];

LABEL_34:
    return;
  }

  __break(1u);
}

void sub_1002887CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1002888B4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v156 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutePlanningCellViewModel();
  v160 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v168 = &v124 - v9;
  v10 = type metadata accessor for AdvisoryViewModel();
  v177 = *(v10 - 8);
  __chkstk_darwin(v10);
  v158 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v175 = &v124 - v13;
  __chkstk_darwin(v14);
  v157 = &v124 - v15;
  v16 = sub_1000CE6B8(&unk_10191B350);
  __chkstk_darwin(v16 - 8);
  v155 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v154 = &v124 - v19;
  __chkstk_darwin(v20);
  v171 = &v124 - v21;
  __chkstk_darwin(v22);
  v170 = &v124 - v23;
  v167 = type metadata accessor for MultiPartLabelViewModel();
  v24 = *(v167 - 8);
  __chkstk_darwin(v167);
  v153 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v169 = &v124 - v27;
  v162 = type metadata accessor for RoutePlanningCellPrimaryActionStyle();
  v128 = *(v162 - 8);
  __chkstk_darwin(v162);
  v152 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v161 = &v124 - v30;
  v31 = sub_1000CE6B8(&qword_101916D30);
  __chkstk_darwin(v31 - 8);
  v159 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v124 - v34;
  __chkstk_darwin(v36);
  v163 = &v124 - v37;
  v38 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v38 - 8);
  v129 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v150 = &v124 - v41;
  v43 = __chkstk_darwin(v42);
  v44 = *(v3 + 56);
  v149 = (&v124 - v45);
  v132 = v2;
  v131 = v3 + 56;
  v130 = v44;
  v44(v43);
  v46 = OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_routeCollection;
  v47 = *&v1[OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_routeCollection];
  if (!v47)
  {
    goto LABEL_11;
  }

  v48 = [v47 routes];
  sub_100014C84(0, &qword_101916D08);
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = *&v1[v46];
  if (!v50 || (v151 = [v50 currentRoute]) == 0)
  {

LABEL_11:
    v70 = _swiftEmptyArrayStorage;
LABEL_12:
    swift_getKeyPath();
    swift_getKeyPath();
    v182 = v70;
    v71 = v1;
    static Published.subscript.setter();
    v72 = v149;
    v73 = v150;
    sub_1000D2DFC(v149, v150, &unk_101918E50);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000D2DFC(v73, v129, &unk_101918E50);
    v74 = v71;
    static Published.subscript.setter();
    sub_100024F64(v73, &unk_101918E50);
    return sub_100024F64(v72, &unk_101918E50);
  }

  v148 = v49;
  v166 = v7;
  v51 = v5;
  v52 = *(v177 + 56);
  v174 = v10;
  v52(v163, 1, 1, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  v173 = v1;
  v147 = v51;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v54 = [*(Strong + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) configuration];
  v55 = [v54 automaticSharingContacts];

  if (v55)
  {
    sub_100014C84(0, &unk_101911D50);
    v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    if (!(v56 >> 62))
    {
      goto LABEL_7;
    }

LABEL_14:
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  v56 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_8:
    v57 = objc_opt_self();
    sub_100014C84(0, &unk_101911D50);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v59 = [v57 advisoryTextForAutomaticSharingContacts:isa];

    v60 = [objc_opt_self() shareETAAdvisoryStyleAttributes];
    result = [v173 view];
    if (!result)
    {
      goto LABEL_88;
    }

    v62 = result;

    v63 = objc_opt_self();
    v64 = [v62 traitCollection];

    [v64 displayScale];
    v66 = v65;

    v67 = [v63 imageForStyle:v60 size:0 forScale:0 format:v66];
    v68 = [v59 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AdvisoryViewModel.init(image:text:showMoreButton:interactionEnabled:)();
    v69 = v163;
    sub_100024F64(v163, &qword_101916D30);
    v52(v35, 0, 1, v174);
    sub_1000F11C4(v35, v69, &qword_101916D30);
    goto LABEL_16;
  }

LABEL_15:

LABEL_16:
  v1 = v173;
LABEL_17:
  v75 = swift_unknownObjectWeakLoadStrong();
  v76 = &enum case for RoutePlanningCellPrimaryActionStyle.none(_:);
  if (v75)
  {
    v77 = v174;
    v78 = v148;
    if (*(v75 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled) == 1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      result = [objc_opt_self() sharedLocationManager];
      if (!result)
      {
        goto LABEL_89;
      }

      v79 = result;
      v80 = [result isAuthorizedForPreciseLocation];

      swift_unknownObjectRelease();
      if (v80)
      {
        v76 = &enum case for RoutePlanningCellPrimaryActionStyle.go(_:);
      }
    }
  }

  else
  {
    v77 = v174;
    v78 = v148;
  }

  (*(v128 + 104))(v161, *v76, v162);
  if (v78 >> 62)
  {
LABEL_85:
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v81)
  {
    v70 = _swiftEmptyArrayStorage;
LABEL_78:

    (*(v128 + 8))(v161, v162);
    sub_100024F64(v163, &qword_101916D30);
    goto LABEL_12;
  }

  v145 = sub_100014C84(0, &qword_101916D38);
  v144 = objc_opt_self();
  v146 = v78 & 0xC000000000000001;
  v143 = objc_opt_self();
  v141 = sub_100014C84(0, &qword_10190B2D0);
  v82 = 0;
  v125 = v78 & 0xFFFFFFFFFFFFFF8;
  v124 = v78 + 32;
  v179 = (v177 + 32);
  v140 = (v177 + 48);
  v127 = (v177 + 16);
  v126 = v177 + 8;
  v138 = (v24 + 2);
  v137 = (v128 + 16);
  v136 = (v160 + 16);
  v135 = v160 + 32;
  v134 = (v160 + 8);
  v133 = (v24 + 1);
  v142 = xmmword_1011E1D30;
  v70 = _swiftEmptyArrayStorage;
  v139 = v81;
  while (1)
  {
    if (v146)
    {
      v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v82 >= *(v125 + 16))
      {
        goto LABEL_84;
      }

      v83 = *(v124 + 8 * v82);
    }

    v84 = v83;
    v85 = __OFADD__(v82, 1);
    v86 = v82 + 1;
    if (v85)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v164 = v70;
    v165 = v86;
    v87 = [v143 primaryTextForRoute:v83 font:0];
    sub_1000CE6B8(&qword_10191B390);
    type metadata accessor for AttributedString();
    *(swift_allocObject() + 16) = v142;
    if (!v87)
    {
      [objc_allocWithZone(NSAttributedString) init];
    }

    v88 = v87;
    AttributedString.init(_:)();
    MultiPartLabelViewModel.init(_:_:)();

    sub_10045C510(v84, 0, v170);
    sub_10045C51C(v84, 0, v171);
    v89 = [v84 advisories];
    if (v89)
    {
      v90 = v89;
      sub_100014C84(0, &qword_101916D40);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v178 = sub_100014C84(0, &qword_101916D40);
    v91 = Array._bridgeToObjectiveC()().super.isa;

    v92 = [v144 viewModelsForAdvisories:v91];

    sub_100014C84(0, &unk_101916D48);
    v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v78 >> 62)
    {
      break;
    }

    v93 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v181 = v84;
    if (v93)
    {
      goto LABEL_42;
    }

LABEL_62:
    v94 = _swiftEmptyArrayStorage;
LABEL_63:
    v109 = v159;
    sub_1000D2DFC(v163, v159, &qword_101916D30);
    if ((*v140)(v109, 1, v77) == 1)
    {
      sub_100024F64(v109, &qword_101916D30);
    }

    else
    {
      v110 = *v179;
      v111 = v157;
      (*v179)(v157, v109, v77);
      (*v127)(v158, v111, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_100357E74(0, *(v94 + 2) + 1, 1, v94);
      }

      v113 = *(v94 + 2);
      v112 = *(v94 + 3);
      if (v113 >= v112 >> 1)
      {
        v94 = sub_100357E74(v112 > 1, v113 + 1, 1, v94);
      }

      v114 = v177;
      (*(v177 + 8))(v157, v77);
      *(v94 + 2) = v113 + 1;
      v110(&v94[((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v113], v158, v77);
    }

    v115 = static NSObject.== infix(_:_:)();
    result = [v84 uniqueRouteID];
    if (!result)
    {
      goto LABEL_87;
    }

    v116 = result;

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*v138)(v153, v169, v167);
    sub_1000D2DFC(v170, v154, &unk_10191B350);
    sub_1000D2DFC(v171, v155, &unk_10191B350);
    (*v137)(v152, v161, v162);
    v117 = v168;
    RoutePlanningCellViewModel.init(routeIdentifier:primaryText:secondaryText:tertiaryText:primaryActionStyle:isHighlighted:showPreviewRouteButton:advisories:)();
    v118 = v147;
    (*v136)(v166, v117, v147);
    v70 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_100357E4C(0, *(v70 + 2) + 1, 1, v70);
    }

    v78 = v148;
    v120 = *(v70 + 2);
    v119 = *(v70 + 3);
    v121 = v181;
    if (v120 >= v119 >> 1)
    {
      v70 = sub_100357E4C(v119 > 1, v120 + 1, 1, v70);
    }

    *(v70 + 2) = v120 + 1;
    (*(v160 + 32))(&v70[((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v120], v166, v118);
    if (v115)
    {
      v122 = v150;
      v123 = v168;
      RoutePlanningCellViewModel.routeIdentifier.getter();

      (*v134)(v123, v118);
      sub_100024F64(v171, &unk_10191B350);
      sub_100024F64(v170, &unk_10191B350);
      (*v133)(v169, v167);
      v24 = v149;
      sub_100024F64(v149, &unk_101918E50);
      (v130)(v122, 0, 1, v132);
      sub_1000F11C4(v122, v24, &unk_101918E50);
    }

    else
    {

      (*v134)(v168, v118);
      v24 = &unk_1011F6A60;
      sub_100024F64(v171, &unk_10191B350);
      sub_100024F64(v170, &unk_10191B350);
      (*v133)(v169, v167);
    }

    v82 = v165;
    if (v165 == v139)
    {
      goto LABEL_78;
    }
  }

  v93 = _CocoaArrayWrapper.endIndex.getter();
  v181 = v84;
  if (!v93)
  {
    goto LABEL_62;
  }

LABEL_42:
  v182 = _swiftEmptyArrayStorage;

  v24 = &v182;
  sub_1005118AC(0, v93 & ~(v93 >> 63), 0);
  if (v93 < 0)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v94 = v182;
  v172 = v78 & 0xFFFFFFFFFFFFFF8;
  if (v78 >> 62)
  {
    v95 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v95 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v180 = v78;
  v176 = v78 & 0xC000000000000001;
  v78 = v95 & ~(v95 >> 63);
  v96 = 4;
  while (1)
  {
    if (!v78)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v97 = v96 - 4;
    if (v176)
    {
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v97 >= *(v172 + 16))
      {
        goto LABEL_81;
      }

      v98 = *(v180 + 8 * v96);
    }

    v24 = v98;
    v99 = [v1 traitCollection];
    [v24 fetchImageForArtworkIfNeededWithTraitCollection:v99];

    result = [v84 advisories];
    if (!result)
    {
      break;
    }

    v100 = result;
    v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v77 & 0xC000000000000001) != 0)
    {
      v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v97 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v101 = *(v77 + 8 * v96);
    }

    v102 = v101;

    [v102 isClickable];

    v103 = [v24 image];
    v104 = [v24 text];
    v105 = [v104 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v175;
    AdvisoryViewModel.init(image:text:showMoreButton:interactionEnabled:)();

    v182 = v94;
    v108 = *(v94 + 2);
    v107 = *(v94 + 3);
    if (v108 >= v107 >> 1)
    {
      v24 = &v182;
      sub_1005118AC(v107 > 1, v108 + 1, 1);
      v94 = v182;
    }

    *(v94 + 2) = v108 + 1;
    v77 = v174;
    (*(v177 + 32))(&v94[((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v108], v106, v174);
    --v78;
    ++v96;
    --v93;
    v1 = v173;
    v84 = v181;
    if (!v93)
    {

      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

void sub_10028A090()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsUpdateComponent:@"routeAnnotations" animated:1];
  }

  sub_1002857A8(1);
}

id sub_10028A234()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarRoutePlanningContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10028A318(uint64_t a1)
{
  v2 = [objc_allocWithZone(CarAdvisoryDetailCardViewController) initWithAdvisoryItem:a1];
  v3 = *(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard);
  *(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard) = v2;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

uint64_t sub_10028A430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10028A4A4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10028A524(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10028A59C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10028A614()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10028A690(uint64_t a1, void **a2)
{
  v4 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_1000D2DFC(a1, &v13 - v8, &unk_101918E50);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000D2DFC(v9, v6, &unk_101918E50);
  v11 = v10;
  static Published.subscript.setter();
  return sub_100024F64(v9, &unk_101918E50);
}

uint64_t sub_10028A7BC@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v29[1] = swift_getObjectType();
  v1 = type metadata accessor for MapsDesignAccessibilityString();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = (v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ScrollPosition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  v11 = type metadata accessor for CarRoutesList(0);
  __chkstk_darwin(v11);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000CE6B8(&qword_101916CD0);
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  sub_10028BAE0(&unk_101916CD8, type metadata accessor for CarRoutesListViewController);
  v17 = v29[0];
  *v13 = ObservedObject.init(wrappedValue:)();
  v13[1] = v18;
  type metadata accessor for UUID();
  sub_10028BAE0(&qword_1019156D0, &type metadata accessor for UUID);
  ScrollPosition.init<A>(idType:)();
  (*(v5 + 16))(v7, v10, v4);
  State.init(wrappedValue:)();
  (*(v5 + 8))(v10, v4);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10028BB28(v13, v16);
  v19 = &v16[*(v14 + 36)];
  v20 = v40;
  *(v19 + 4) = v39;
  *(v19 + 5) = v20;
  *(v19 + 6) = v41;
  v21 = v36;
  *v19 = v35;
  *(v19 + 1) = v21;
  v22 = v38;
  *(v19 + 2) = v37;
  *(v19 + 3) = v22;
  *v3 = 0xD000000000000010;
  v3[1] = 0x800000010122A1A0;
  v24 = v30;
  v23 = v31;
  (*(v30 + 104))(v3, enum case for MapsDesignAccessibilityString.view(_:), v31);
  v25 = sub_1000CE6B8(&qword_101916CE8);
  v26 = v32;
  v32[3] = v25;
  v27 = sub_10028BB8C();
  v33 = v14;
  v34 = v27;
  v26[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(v26);
  View.mapsDesignAXContainer(withID:)();
  (*(v24 + 8))(v3, v23);
  return sub_100024F64(v16, &qword_101916CD0);
}

void sub_10028AC20(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_routeCollection);
  if (v2)
  {
    v6 = v2;
    v4 = [v6 currentRouteIndex];
    if (((a1 & 0x8000000000000000) != 0 || v4 != a1) && ((v5 = [v6 count], (a1 & 0x8000000000000000) != 0) || v5 > a1) && swift_unknownObjectWeakLoadStrong())
    {
      sub_100286838(a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10028AD04(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_101960000);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = sub_10004DEB8(v7, v8, &v14);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "will start nav for index %s", v5, 0xCu);
      sub_10004E3D0(v6);
    }

    sub_100287100(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_101960000);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "delegate is gone; will not start nav for index", v12, 2u);
    }
  }
}

void sub_10028AF64(unint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002877D0(a1);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_101960000);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "delegate is gone; will not display avisories", v4, 2u);
    }
  }
}

id sub_10028B094(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a3;
  v28 = a2;
  v26 = a1;
  ObjectType = swift_getObjectType();
  v27 = sub_1000CE6B8(&qword_101916CC8);
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - v5;
  v7 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_1000CE6B8(&qword_101916CC0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  *&v3[OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_routeCollection] = 0;
  *&v3[OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_error] = 0;
  v17 = OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController__routeViewModels;
  v32 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101916CA8);
  Published.init(initialValue:)();
  (*(v14 + 32))(&v3[v17], v16, v13);
  v18 = OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController__selectedRouteIdentifier;
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_1000D2DFC(v12, v9, &unk_101918E50);
  Published.init(initialValue:)();
  v20 = v12;
  v21 = v28;
  sub_100024F64(v20, &unk_101918E50);
  (*(v4 + 32))(&v3[v18], v6, v27);
  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v23 = v30;
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", v22, v30, v26);

  return v24;
}

id sub_10028B44C(void *a1)
{
  v23 = a1;
  ObjectType = swift_getObjectType();
  v21 = sub_1000CE6B8(&qword_101916CC8);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v21 - v3;
  v5 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1000CE6B8(&qword_101916CC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  *&v1[OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_routeCollection] = 0;
  *&v1[OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_error] = 0;
  v15 = OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController__routeViewModels;
  v25 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101916CA8);
  Published.init(initialValue:)();
  (*(v12 + 32))(&v1[v15], v14, v11);
  v16 = OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController__selectedRouteIdentifier;
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_1000D2DFC(v10, v7, &unk_101918E50);
  Published.init(initialValue:)();
  sub_100024F64(v10, &unk_101918E50);
  (*(v2 + 32))(&v1[v16], v4, v21);
  v18 = v23;
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, "initWithCoder:", v23);

  if (v19)
  {
  }

  return v19;
}

uint64_t sub_10028B7A4()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_delegate);

  v1 = OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController__routeViewModels;
  v2 = sub_1000CE6B8(&qword_101916CC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController__selectedRouteIdentifier;
  v4 = sub_1000CE6B8(&qword_101916CC8);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

void sub_10028B9B0()
{
  sub_10017E020(319, &qword_101916CA0, &qword_101916CA8);
  if (v0 <= 0x3F)
  {
    sub_10017E020(319, &unk_101916CB0, &unk_101918E50);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10028BAE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10028BB28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarRoutesList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10028BB8C()
{
  result = qword_101916CF0;
  if (!qword_101916CF0)
  {
    sub_1000D6664(&qword_101916CD0);
    sub_10028BAE0(&unk_101916CF8, type metadata accessor for CarRoutesList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916CF0);
  }

  return result;
}

uint64_t sub_10028BC48@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v79 = sub_1000CE6B8(&qword_10191D860);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v76 = &v76 - v4;
  v5 = sub_1000CE6B8(&qword_101916E30);
  __chkstk_darwin(v5);
  v7 = &v76 - v6;
  v105 = sub_1000CE6B8(&qword_101916E38);
  __chkstk_darwin(v105);
  v107 = &v76 - v8;
  v101 = sub_1000CE6B8(&qword_101916E40);
  __chkstk_darwin(v101);
  v102 = (&v76 - v9);
  v106 = sub_1000CE6B8(&qword_101916E48);
  __chkstk_darwin(v106);
  v103 = &v76 - v10;
  v11 = type metadata accessor for ScrollBounceBehavior();
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11);
  v93 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&qword_101916E50);
  __chkstk_darwin(v13 - 8);
  v91 = &v76 - v14;
  v87 = type metadata accessor for CarRoutesList(0);
  v80 = *(v87 - 8);
  v15 = *(v80 + 64);
  __chkstk_darwin(v87);
  v81 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v96);
  v83 = &v76 - v16;
  v104 = sub_1000CE6B8(&qword_101916E58);
  v82 = *(v104 - 8);
  __chkstk_darwin(v104);
  v18 = &v76 - v17;
  v97 = sub_1000CE6B8(&qword_101916E60);
  v86 = *(v97 - 8);
  __chkstk_darwin(v97);
  v84 = &v76 - v19;
  v98 = sub_1000CE6B8(&qword_101916E68);
  v89 = *(v98 - 8);
  __chkstk_darwin(v98);
  v85 = &v76 - v20;
  v99 = sub_1000CE6B8(&qword_101916E70);
  v90 = *(v99 - 8);
  __chkstk_darwin(v99);
  v88 = &v76 - v21;
  v100 = sub_1000CE6B8(&qword_101916E78);
  v92 = *(v100 - 8);
  __chkstk_darwin(v100);
  v23 = &v76 - v22;
  v24 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v110;
  v27 = *(v110 + 2);
  v108 = v5;
  if (v27)
  {
    v79 = v23;
    __chkstk_darwin(v25);
    *(&v76 - 4) = v26;
    *(&v76 - 24) = 1;
    *(&v76 - 2) = v1;
    static Axis.Set.vertical.getter();
    sub_1000CE6B8(&qword_101916EC8);
    sub_10028F530();
    ScrollView.init(_:showsIndicators:content:)();

    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v83;
    static Published.subscript.getter();

    v29 = v1;
    v30 = v81;
    sub_10028F5E8(v29, v81);
    v31 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v32 = swift_allocObject();
    sub_10028BB28(v30, v32 + v31);
    v33 = sub_1000414C8(&qword_101916E98, &qword_101916E58);
    v34 = sub_10028F6E8(&qword_101916EA0, &qword_101916EA8);
    v35 = v84;
    v36 = v104;
    v37 = v96;
    View.onChange<A>(of:initial:_:)();

    sub_100024F64(v28, &unk_101918E50);
    (*(v82 + 8))(v18, v36);
    sub_1000CE6B8(&qword_101916D80);
    v38 = v91;
    State.projectedValue.getter();
    v110 = v36;
    v111 = v37;
    v112 = v33;
    v113 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v85;
    v41 = v97;
    View.scrollPosition(_:anchor:)();
    sub_100024F64(v38, &qword_101916E50);
    (*(v86 + 8))(v35, v41);
    v42 = v93;
    static ScrollBounceBehavior.basedOnSize.getter();
    LOBYTE(v30) = static Axis.Set.vertical.getter();
    Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v30)
    {
      Axis.Set.init(rawValue:)();
    }

    v110 = v41;
    v111 = OpaqueTypeConformance2;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = v88;
    v45 = v98;
    View.scrollBounceBehavior(_:axes:)();
    (*(v94 + 8))(v42, v95);
    (*(v89 + 8))(v40, v45);
    v110 = v45;
    v111 = v43;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = v79;
    v48 = v99;
    View.scrollAccessoryEdge(_:)();
    (*(v90 + 8))(v44, v48);
    v49 = v92;
    v50 = v100;
    (*(v92 + 16))(v102, v47, v100);
    swift_storeEnumTagMultiPayload();
    v110 = v48;
    v111 = v46;
    swift_getOpaqueTypeConformance2();
    sub_10028F4CC();
    v51 = v103;
    _ConditionalContent<>.init(storage:)();
    sub_1000AE934(v51, v107);
    swift_storeEnumTagMultiPayload();
    sub_10028F2B0();
    sub_1000414C8(&qword_101916EB8, &qword_101916E30);
    _ConditionalContent<>.init(storage:)();
    sub_1000AE9A4(v51);
    return (*(v49 + 8))(v47, v50);
  }

  else
  {
    v53 = v76;
    v54 = v77;
    v55 = v78;
    v56 = v7;
    v57 = v104;
    v58 = v79;

    v59 = *(v24 + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_error);
    if (v59)
    {
      v114 = *(v24 + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_error);
      sub_100014C84(0, &qword_101916EC0);
      v60 = v59;
      State.init(wrappedValue:)();
      v62 = v110;
      v61 = v111;
      v63 = v102;
      *v102 = v110;
      v63[1] = v61;
      swift_storeEnumTagMultiPayload();
      v64 = sub_1000414C8(&qword_101916E98, &qword_101916E58);
      v65 = sub_10028F6E8(&qword_101916EA0, &qword_101916EA8);
      v66 = v62;

      v110 = v57;
      v111 = v96;
      v112 = v64;
      v113 = v65;
      v67 = swift_getOpaqueTypeConformance2();
      v110 = v97;
      v111 = v67;
      v68 = swift_getOpaqueTypeConformance2();
      v110 = v98;
      v111 = v68;
      v69 = swift_getOpaqueTypeConformance2();
      v110 = v99;
      v111 = v69;
      swift_getOpaqueTypeConformance2();
      sub_10028F4CC();
      v70 = v103;
      _ConditionalContent<>.init(storage:)();
      sub_1000AE934(v70, v107);
      swift_storeEnumTagMultiPayload();
      sub_10028F2B0();
      sub_1000414C8(&qword_101916EB8, &qword_101916E30);
      _ConditionalContent<>.init(storage:)();

      return sub_1000AE9A4(v70);
    }

    else
    {
      *v56 = static HorizontalAlignment.center.getter();
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      v71 = v56 + *(sub_1000CE6B8(&unk_101916E80) + 44);
      ProgressView<>.init<>()();
      v72 = *(v55 + 16);
      v72(v54, v53, v58);
      *v71 = 0;
      *(v71 + 8) = 1;
      v73 = sub_1000CE6B8(&qword_10190A408);
      v72((v71 + *(v73 + 48)), v54, v58);
      v74 = v71 + *(v73 + 64);
      *v74 = 0;
      *(v74 + 8) = 1;
      v75 = *(v55 + 8);
      v75(v53, v58);
      v75(v54, v58);
      sub_1000D2DFC(v56, v107, &qword_101916E30);
      swift_storeEnumTagMultiPayload();
      sub_10028F2B0();
      sub_1000414C8(&qword_101916EB8, &qword_101916E30);
      _ConditionalContent<>.init(storage:)();
      return sub_100024F64(v56, &qword_101916E30);
    }
  }
}

uint64_t sub_10028CC98@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CarRoutesList(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_1000CE6B8(&qword_101916EE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33[-v12];
  v14 = static HorizontalAlignment.leading.getter();
  v15 = qword_10193E340;
  *v13 = v14;
  *(v13 + 1) = v15;
  v13[16] = 0;
  sub_1000CE6B8(&qword_101916EF0);
  v34 = a1;
  swift_getKeyPath();
  sub_10028F5E8(a3, &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v9 + 80) + 25) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_10028BB28(&v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  swift_bridgeObjectRetain_n();
  sub_1000CE6B8(&qword_101916CA8);
  sub_1000CE6B8(&qword_101916EF8);
  sub_1000414C8(&qword_101916F00, &qword_101916CA8);
  sub_10028BAE0(&qword_1019156D0, &type metadata accessor for UUID);
  sub_10028F80C();
  ForEach<>.init(_:id:content:)();
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D40;
  v19 = static Edge.Set.leading.getter();
  *(inited + 32) = v19;
  v20 = static Edge.Set.trailing.getter();
  *(inited + 33) = v20;
  v21 = static Edge.Set.bottom.getter();
  *(inited + 34) = v21;
  v22 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1000F11C4(v13, a4, &qword_101916EE0);
  result = sub_1000CE6B8(&qword_101916EC8);
  v32 = a4 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_10028D06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v56 = a5;
  v8 = type metadata accessor for CarRoutesList(0);
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v8 - 8);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = v43 - v11;
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  v15 = type metadata accessor for RoutePlanningCellViewModel();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[1] = v18;
  v54 = sub_1000CE6B8(&qword_101916F28);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v46 = v43 - v19;
  v51 = sub_1000CE6B8(&qword_101916F30) - 8;
  __chkstk_darwin(v51);
  v49 = v43 - v20;
  v21 = sub_1000CE6B8(&qword_101916F18);
  __chkstk_darwin(v21);
  v50 = v43 - v22;
  v48 = a1;
  v23 = sub_1003CF584(a1, a2);
  v25 = v24;
  v53 = (v23 == 0) & ~v24;
  (*(v16 + 16))(v18, a1, v15);
  sub_10028F5E8(a4, v14);
  v26 = (*(v44 + 80) + 25) & ~*(v44 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  LOBYTE(a1) = v25 & 1;
  *(v27 + 24) = v25 & 1;
  sub_10028BB28(v14, v27 + v26);
  v28 = v45;
  sub_10028F5E8(a4, v45);
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = a1;
  sub_10028BB28(v28, v29 + v26);
  v30 = v47;
  sub_10028F5E8(a4, v47);
  v31 = swift_allocObject();
  *(v31 + 16) = v23;
  *(v31 + 24) = a1;
  sub_10028BB28(v30, v31 + v26);
  sub_1000CE6B8(&qword_101916F38);
  sub_10028FB30();
  v32 = v46;
  RoutePlanningCell.init(viewModel:isCarPlay:useCompactLayout:accessoryView:accessoryViewUnavailableWidth:tapHandler:primaryActionTapHandler:previewRouteButtonTapHandler:advisoryTapHandler:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = v49;
  (*(v52 + 32))(v49, v32, v54);
  v34 = v50;
  v35 = (v33 + *(v51 + 44));
  v36 = v62;
  v35[4] = v61;
  v35[5] = v36;
  v35[6] = v63;
  v37 = v58;
  *v35 = v57;
  v35[1] = v37;
  v38 = v60;
  v35[2] = v59;
  v35[3] = v38;
  RoutePlanningCellViewModel.routeIdentifier.getter();
  sub_1000F11C4(v33, v34, &qword_101916F30);
  KeyPath = swift_getKeyPath();
  v40 = v56;
  sub_1000F11C4(v34, v56, &qword_101916F18);
  result = sub_1000CE6B8(&qword_101916EF8);
  v42 = v40 + *(result + 36);
  *v42 = KeyPath;
  *(v42 + 8) = v53;
  return result;
}

void sub_10028D648(uint64_t a1, char a2, uint64_t a3, const char *a4, void (*a5)(uint64_t))
{
  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_101960000);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (a2)
    {
      v13 = -1;
    }

    else
    {
      v13 = a1;
    }

    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v10, v11, a4, v12, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    a5(a1);
  }
}

void sub_10028D768(uint64_t a1, unint64_t a2, char a3)
{
  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_101960000);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (a3)
    {
      v9 = -1;
    }

    else
    {
      v9 = a2;
    }

    *(v8 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v6, v7, "handling advisory tap for index %ld", v8, 0xCu);
  }

  if ((a3 & 1) == 0)
  {
    sub_10028AF64(a2);
  }
}

uint64_t sub_10028D884()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10028D8F0(uint64_t a1, uint64_t a2)
{
  v14[1] = a1;
  v3 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v3);
  v5 = v14 - v4;
  v6 = type metadata accessor for ScrollPosition();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  sub_1000D2DFC(a2, v5, &unk_101918E50);
  sub_10028F6E8(&qword_101916EE8, &qword_1019156D0);
  ScrollPosition.init<A>(id:anchor:)();
  type metadata accessor for CarRoutesList(0);
  (*(v7 + 16))(v9, v12, v6);
  sub_1000CE6B8(&qword_101916D80);
  State.wrappedValue.setter();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_10028DB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for ScrollBounceBehavior();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000CE6B8(&qword_101916F60);
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v35 - v8;
  v10 = sub_1000CE6B8(&qword_101916F68);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1000CE6B8(&qword_101916F70);
  v37 = *(v13 - 8);
  v38 = v13;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v43 = a1;
  v44 = a2;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101916F78);
  sub_1000414C8(&qword_101916F80, &qword_101916F78);
  ScrollView.init(_:showsIndicators:content:)();
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D40;
  v17 = static Edge.Set.leading.getter();
  *(inited + 32) = v17;
  v18 = static Edge.Set.trailing.getter();
  *(inited + 33) = v18;
  v19 = static Edge.Set.bottom.getter();
  *(inited + 34) = v19;
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v7 + 32))(v12, v9, v36);
  v29 = &v12[*(v10 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = v39;
  static ScrollBounceBehavior.basedOnSize.getter();
  v31 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v31)
  {
    Axis.Set.init(rawValue:)();
  }

  v32 = sub_10028FC98();
  View.scrollBounceBehavior(_:axes:)();
  (*(v40 + 8))(v30, v41);
  sub_100024F64(v12, &qword_101916F68);
  v45 = v10;
  v46 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  View.scrollAccessoryEdge(_:)();
  return (*(v37 + 8))(v15, v33);
}

double sub_10028DFE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_10193E340;
  v7 = static HorizontalAlignment.center.getter();
  v27 = 0;
  sub_10028E230(a1, a2, &v16);
  v36 = v24;
  v37[0] = v25[0];
  *(v37 + 9) = *(v25 + 9);
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v38[7] = v23;
  v38[8] = v24;
  v39[0] = v25[0];
  *(v39 + 9) = *(v25 + 9);
  v38[4] = v20;
  v38[5] = v21;
  v38[6] = v22;
  v38[0] = v16;
  v38[1] = v17;
  v38[2] = v18;
  v38[3] = v19;
  sub_1000D2DFC(&v28, &v15, &qword_101916F98);
  sub_100024F64(v38, &qword_101916F98);
  *(&v26[7] + 7) = v35;
  *(&v26[8] + 7) = v36;
  *(&v26[9] + 7) = v37[0];
  v26[10] = *(v37 + 9);
  *(&v26[3] + 7) = v31;
  *(&v26[4] + 7) = v32;
  *(&v26[5] + 7) = v33;
  *(&v26[6] + 7) = v34;
  *(v26 + 7) = v28;
  *(&v26[1] + 7) = v29;
  *(&v26[2] + 7) = v30;
  v8 = v26[6];
  *(a3 + 129) = v26[7];
  v9 = v26[9];
  *(a3 + 145) = v26[8];
  *(a3 + 161) = v9;
  *(a3 + 177) = v26[10];
  v10 = v26[2];
  *(a3 + 65) = v26[3];
  v11 = v26[5];
  *(a3 + 81) = v26[4];
  *(a3 + 97) = v11;
  *(a3 + 113) = v8;
  result = *v26;
  v13 = v26[1];
  *(a3 + 17) = v26[0];
  *(a3 + 33) = v13;
  v14 = v27;
  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v14;
  *(a3 + 49) = v10;
  return result;
}

uint64_t sub_10028E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1000CE6B8(&unk_101916FA0);
  State.wrappedValue.getter();
  v6 = [v68[0] errorTitle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000E5580();
  v7 = Text.init<A>(_:)();
  v47 = v8;
  v48 = v7;
  v10 = v9;
  v50 = v11;
  KeyPath = swift_getKeyPath();
  v46 = static Font.caption.getter();
  v44 = swift_getKeyPath();
  v49 = v10 & 1;
  LOBYTE(v68[0]) = 1;
  v43 = swift_getKeyPath();
  v70 = a1;
  v71 = a2;
  State.wrappedValue.getter();
  v12 = [v68[0] errorMessage];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)() >> 32;
    v15 = v14;

    HIDWORD(v70) = v13;
    v71 = v15;
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    LODWORD(v70) = static HierarchicalShapeStyle.secondary.getter();
    v21 = Text.foregroundStyle<A>(_:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_1000F0A40(v16, v18, v20 & 1);

    v28 = swift_getKeyPath();
    v29 = static Font.caption.getter();
    v30 = swift_getKeyPath();
    LOBYTE(v70) = v25 & 1;
    LOBYTE(v68[0]) = 1;
    v31 = (v25 & 1);
    v32 = 1;
    v33 = swift_getKeyPath();
    v34 = v30;
    v35 = v29;
    v36 = v28;
    v37 = v27;
    v38 = v23;
    v39 = v21;
    v40 = 1;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v40 = 0;
    v32 = 0;
    v31 = 0;
  }

  *&v54 = v48;
  *(&v54 + 1) = v47;
  LOBYTE(v55) = v49;
  *(&v55 + 1) = v84[0];
  DWORD1(v55) = *(v84 + 3);
  *(&v55 + 1) = v50;
  v56 = KeyPath;
  v57 = 0;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = *v83;
  DWORD1(v58) = *&v83[3];
  *(&v58 + 1) = v44;
  *&v59 = v46;
  *(&v59 + 1) = v43;
  v60 = 1;
  v53[0] = 1;
  v51 = v58;
  v52 = v59;
  *&v61 = v39;
  *(&v61 + 1) = v38;
  *&v62 = v31;
  *(&v62 + 1) = v37;
  v63 = v36;
  v64 = 0;
  *&v65 = v32;
  *(&v65 + 1) = v34;
  *&v66 = v35;
  *(&v66 + 1) = v33;
  v67 = v40;
  *&v53[24] = v62;
  *&v53[8] = v61;
  v53[88] = v40;
  *&v53[72] = v66;
  *&v53[56] = v65;
  *&v53[40] = v36;
  v41 = v55;
  *a3 = v54;
  a3[1] = v41;
  a3[4] = v52;
  a3[5] = *v53;
  a3[2] = KeyPath;
  a3[3] = v51;
  *(a3 + 153) = *&v53[73];
  a3[8] = *&v53[48];
  a3[9] = *&v53[64];
  a3[6] = *&v53[16];
  a3[7] = *&v53[32];
  v68[0] = v39;
  v68[1] = v38;
  v68[2] = v31;
  v68[3] = v37;
  v68[4] = v36;
  v68[5] = 0;
  v68[6] = v32;
  v68[7] = v34;
  v68[8] = v35;
  v68[9] = v33;
  v69 = v40;
  sub_1000D2DFC(&v54, &v70, &qword_101916FB0);
  sub_1000D2DFC(&v61, &v70, &qword_101916FB8);
  sub_100024F64(v68, &qword_101916FB8);
  v70 = v48;
  v71 = v47;
  v72 = v49;
  *v73 = v84[0];
  *&v73[3] = *(v84 + 3);
  v74 = v50;
  v75 = KeyPath;
  v76 = 0;
  v77 = 1;
  *v78 = *v83;
  *&v78[3] = *&v83[3];
  v79 = v44;
  v80 = v46;
  v81 = v43;
  v82 = 1;
  return sub_100024F64(&v70, &qword_101916FB0);
}

uint64_t sub_10028E690@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_1000CE6B8(&qword_101916F58);
  return sub_10028DB18(v4, v3, a1 + *(v5 + 44));
}

void sub_10028E718()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  if ([Strong isCurrentContext:v0])
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 searchPinsManager];

      if (v5)
      {
        v6 = OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession;
        v7 = [*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionForTransportType:1];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 currentRoute];

          if (v9)
          {
            v10 = *(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled) ^ 1;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        [v5 setDisableStartPin:v10 & 1];
        [v5 setDisableEndPins:v10 & 1];
        v12 = [objc_opt_self() sharedLocationManager];
        if (!v12)
        {
          __break(1u);
          return;
        }

        v13 = v12;
        v14 = [v12 hasLocation];

        v15 = [*(v0 + v6) originDisplayableMarker];
        v16 = [*(v0 + v6) destinationDisplayableMarker];
        v18 = v16;
        if (v15)
        {
          v17 = [v15 isDynamicCurrentLocation] ^ 1;
          if (!v18)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v17 = 1;
          if (!v16)
          {
            goto LABEL_22;
          }
        }

        if ((v14 | v17))
        {
          [v5 setStartPin:v15 endPin:?];
LABEL_23:
          sub_1002857A8(1);

          v11 = v18;
          goto LABEL_9;
        }

LABEL_22:
        [v5 clearDirectionsPins];
        goto LABEL_23;
      }
    }
  }

  v11 = v2;
LABEL_9:
}

char *sub_10028E980(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard] = 0;
  *&v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard] = 0;
  v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_showsMapView] = 1;
  *&v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_autohideBehavior] = 2;
  v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_shouldTimeoutAfterDisconnect] = 0;
  v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_userInteractedWithMap] = 0;
  v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_allowMapZoomAndRecentering] = 1;
  v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_loggedFirstCameraSuppress] = 0;
  v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled] = 0;
  *&v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_externalDeviceObserver] = 0;
  *&v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession] = a1;
  v3 = objc_allocWithZone(type metadata accessor for CarRoutesListViewController(0));
  v4 = a1;
  v5 = [v3 initWithNibName:0 bundle:0];
  *&v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routesList] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CarRoutePlanningContext();
  v6 = objc_msgSendSuper2(&v8, "init");
  *(*&v6[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routesList] + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_delegate + 8) = &off_10160E3A0;
  swift_unknownObjectWeakAssign();
  return v6;
}

id sub_10028EAD0(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v7[4] = sub_10028F0F4;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100039C64;
  v7[3] = &unk_10160E6F8;
  v4 = _Block_copy(v7);
  v5 = v1;

  [a1 addPreparation:v4];
  _Block_release(v4);
  return [objc_opt_self() captureUserAction:21 target:155 value:0];
}

void sub_10028EBCC()
{
  v1 = OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard);
  if (!v2)
  {
    v1 = OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard;
    v2 = *(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard);
    if (!v2)
    {
      v4 = [objc_opt_self() sharedInstance];
      if (v4)
      {
        v5 = v4;
        [v4 popFromContext:v0];

        v6 = [objc_opt_self() sharedInstance];
        if (v6)
        {
          v7 = v6;
          v8 = [v6 platformController];

          if (v8)
          {
            [v8 popSession];
            goto LABEL_10;
          }

LABEL_15:
          __break(1u);
          return;
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

  *(v0 + v1) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  [Strong setNeedsUpdateComponent:@"cards" animated:1];
LABEL_10:
}

void sub_10028ED1C()
{
  sub_1002862E8();
  sub_10028E718();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
  }
}

uint64_t sub_10028EDD8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_10028F0CC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10160E608;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10028BAE0(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000414C8(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_10028F0D4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = result;
  a2[2] = 5;
  return result;
}

void sub_10028F124()
{
  sub_10028F1A8();
  if (v0 <= 0x3F)
  {
    sub_10028F23C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10028F1A8()
{
  if (!qword_101916DF0)
  {
    type metadata accessor for CarRoutesListViewController(255);
    sub_10028BAE0(&unk_101916CD8, type metadata accessor for CarRoutesListViewController);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101916DF0);
    }
  }
}

void sub_10028F23C()
{
  if (!qword_101916DF8)
  {
    type metadata accessor for ScrollPosition();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_101916DF8);
    }
  }
}

unint64_t sub_10028F2B0()
{
  result = qword_101916E90;
  if (!qword_101916E90)
  {
    sub_1000D6664(&qword_101916E48);
    sub_1000D6664(&qword_101916E70);
    sub_1000D6664(&qword_101916E68);
    sub_1000D6664(&qword_101916E60);
    sub_1000D6664(&qword_101916E58);
    sub_1000D6664(&unk_101918E50);
    sub_1000414C8(&qword_101916E98, &qword_101916E58);
    sub_10028F6E8(&qword_101916EA0, &qword_101916EA8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10028F4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916E90);
  }

  return result;
}

unint64_t sub_10028F4CC()
{
  result = qword_101916EB0;
  if (!qword_101916EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916EB0);
  }

  return result;
}

unint64_t sub_10028F530()
{
  result = qword_101916ED0;
  if (!qword_101916ED0)
  {
    sub_1000D6664(&qword_101916EC8);
    sub_1000414C8(&qword_101916ED8, &qword_101916EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916ED0);
  }

  return result;
}

uint64_t sub_10028F5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarRoutesList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028F64C()
{
  type metadata accessor for CarRoutesList(0);

  return sub_10028D884();
}

uint64_t sub_10028F6E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(&unk_101918E50);
    sub_10028BAE0(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028F784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CarRoutesList(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_10028D06C(a1, v6, v7, v8, a2);
}

unint64_t sub_10028F80C()
{
  result = qword_101916F08;
  if (!qword_101916F08)
  {
    sub_1000D6664(&qword_101916EF8);
    sub_1000414C8(&qword_101916F10, &qword_101916F18);
    sub_1000414C8(&qword_101916F20, &qword_10190CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916F08);
  }

  return result;
}

uint64_t sub_10028F910()
{
  v1 = (type metadata accessor for CarRoutesList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for ScrollPosition();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000CE6B8(&qword_101916D80);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10028FAB8(uint64_t a1)
{
  type metadata accessor for CarRoutesList(0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  sub_10028D768(a1, v3, v4);
}

unint64_t sub_10028FB30()
{
  result = qword_101916F40;
  if (!qword_101916F40)
  {
    sub_1000D6664(&qword_101916F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916F40);
  }

  return result;
}

unint64_t sub_10028FBBC()
{
  result = qword_101916F48;
  if (!qword_101916F48)
  {
    sub_1000D6664(&qword_101916F50);
    sub_10028F2B0();
    sub_1000414C8(&qword_101916EB8, &qword_101916E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916F48);
  }

  return result;
}

unint64_t sub_10028FC98()
{
  result = qword_101916F88;
  if (!qword_101916F88)
  {
    sub_1000D6664(&qword_101916F68);
    sub_1000414C8(&qword_101916F90, &qword_101916F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916F88);
  }

  return result;
}

uint64_t type metadata accessor for VisitedHistoryPlaceCellModifier()
{
  result = qword_101917088;
  if (!qword_101917088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028FE44()
{
  sub_10028FEB0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10028FEB0()
{
  if (!qword_10190A258)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10190A258);
    }
  }
}

uint64_t sub_10028FF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_1019170F0);
  __chkstk_darwin(v4);
  v6 = v38 - v5;
  v7 = sub_1000CE6B8(&qword_1019170F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - v9;
  v11 = sub_1000CE6B8(&qword_101917100);
  __chkstk_darwin(v11);
  v13 = v38 - v12;
  v38[0] = static Color.clear.getter();
  v14 = AnyView.init<A>(_:)();
  v15 = sub_1000CE6B8(&qword_101917108);
  (*(*(v15 - 8) + 16))(v6, a1, v15);
  *&v6[*(v4 + 36)] = v14;
  static VerticalEdge.Set.all.getter();
  v16 = sub_100290A14();
  View.listRowSeparator(_:edges:)();
  sub_100290AF8(v6);
  static Color.clear.getter();
  static VerticalEdge.Set.all.getter();
  v38[0] = v4;
  v38[1] = v16;
  swift_getOpaqueTypeConformance2();
  View.listRowSeparatorTint(_:edges:)();

  (*(v8 + 8))(v10, v7);
  v17 = &v13[*(v11 + 36)];
  v18 = *(type metadata accessor for RoundedRectangle() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #16.0 }

  *v17 = _Q0;
  *&v17[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  v26 = [objc_opt_self() mainScreen];
  v27 = [v26 traitCollection];

  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  sub_100290B60();
  View.insetGroupedSectionBackground(cornerRadius:)();
  sub_100024F64(v13, &qword_101917100);
  LOBYTE(v26) = static Edge.Set.horizontal.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  result = sub_1000CE6B8(&qword_101917128);
  v37 = a2 + *(result + 36);
  *v37 = v26;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_100290314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListItemKind.Set();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101917130);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(sub_1000CE6B8(&qword_101917138) + 36);
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = static Color.clear.getter();
  static ListItemKind.Set.header.getter();
  v11 = a2 + *(sub_1000CE6B8(&qword_101917140) + 36);
  v12 = sub_1000CE6B8(&qword_101910B80);
  v13 = *(v12 + 48);
  (*(v5 + 16))(v11, v7, v4);
  v16[1] = v10;
  v14 = AnyView.init<A>(_:)();
  (*(v5 + 8))(v7, v4);
  *(v11 + v13) = v14;
  return (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
}

uint64_t sub_100290554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a1;
  v26 = a2;
  v2 = type metadata accessor for ListSectionSpacing();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GroupedListStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_1019170C0);
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  GroupedListStyle.init()();
  sub_1000CE6B8(&qword_1019170C8);
  sub_1000414C8(&qword_1019170D0, &qword_1019170C8);
  View.listStyle<A>(_:)();
  (*(v6 + 8))(v8, v5);
  static MapsDesignConstants.Spacing.discreetListRowSpacing.getter();
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = &v11[*(v9 + 36)];
  *v15 = KeyPath;
  *(v15 + 1) = v13;
  v15[16] = 0;
  sub_1002908CC();
  v16 = v26;
  View.scrollContentBackground(_:)();
  sub_100024F64(v11, &qword_1019170C0);
  v17 = v25;
  static ListSectionSpacing.custom(_:)();
  v18 = *(sub_1000CE6B8(&qword_1019170E0) + 36);
  (*(v3 + 16))(v16 + v18, v17, v2);
  v19 = *(v3 + 56);
  v19((v16 + v18), 0, 1, v2);
  v20 = swift_getKeyPath();
  v21 = (v16 + *(sub_1000CE6B8(&qword_1019170E8) + 36));
  v22 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
  (*(v3 + 32))(v21 + v22, v17, v2);
  result = v19(v21 + v22, 0, 1, v2);
  *v21 = v20;
  return result;
}

unint64_t sub_1002908CC()
{
  result = qword_1019170D8;
  if (!qword_1019170D8)
  {
    sub_1000D6664(&qword_1019170C0);
    sub_1000D6664(&qword_1019170C8);
    type metadata accessor for GroupedListStyle();
    sub_1000414C8(&qword_1019170D0, &qword_1019170C8);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101912238, &qword_101912240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019170D8);
  }

  return result;
}

unint64_t sub_100290A14()
{
  result = qword_101917110;
  if (!qword_101917110)
  {
    sub_1000D6664(&qword_1019170F0);
    sub_1000414C8(&qword_101917118, &qword_101917108);
    sub_1000414C8(&unk_10191DB80, &qword_10190A368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917110);
  }

  return result;
}

uint64_t sub_100290AF8(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019170F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100290B60()
{
  result = qword_101917120;
  if (!qword_101917120)
  {
    sub_1000D6664(&qword_101917100);
    sub_1000D6664(&qword_1019170F8);
    sub_1000D6664(&qword_1019170F0);
    sub_100290A14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917120);
  }

  return result;
}

unint64_t sub_100290C98()
{
  result = qword_101917148;
  if (!qword_101917148)
  {
    sub_1000D6664(&qword_1019170E8);
    sub_100290D50();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917148);
  }

  return result;
}

unint64_t sub_100290D50()
{
  result = qword_101917150;
  if (!qword_101917150)
  {
    sub_1000D6664(&qword_1019170E0);
    sub_1000D6664(&qword_1019170C0);
    sub_1002908CC();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917150);
  }

  return result;
}

unint64_t sub_100290E44()
{
  result = qword_101917158;
  if (!qword_101917158)
  {
    sub_1000D6664(&qword_101917128);
    sub_1000D6664(&qword_101917100);
    sub_100290B60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917158);
  }

  return result;
}

unint64_t sub_100290F0C()
{
  result = qword_101917160;
  if (!qword_101917160)
  {
    sub_1000D6664(&qword_101917140);
    sub_100290FC4();
    sub_1000414C8(&qword_101910BE0, &qword_101910BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917160);
  }

  return result;
}

unint64_t sub_100290FC4()
{
  result = qword_101917168;
  if (!qword_101917168)
  {
    sub_1000D6664(&qword_101917138);
    sub_1000414C8(&qword_101917170, &qword_101917130);
    sub_1000414C8(&qword_10190B010, &qword_10191DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917168);
  }

  return result;
}

uint64_t sub_1002910A8()
{
  swift_getKeyPath();
  sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100291154@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__viewModels);
}

uint64_t sub_100291234(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__viewModels;

  v5 = sub_1001F0D98(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100291390@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__delegate;
  swift_beginAccess();
  return sub_1000D2DFC(v5 + v3, a1, &qword_101917230);
}

uint64_t sub_100291468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__delegate;
  swift_beginAccess();
  return sub_1000D2DFC(v3 + v4, a2, &qword_101917230);
}

uint64_t sub_100291540(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__delegate;
  swift_beginAccess();
  sub_1000D2DFC(v1 + v3, v7, &qword_101917230);
  v4 = sub_10010ED08(v7, a1);
  sub_1002930AC(v7);
  if (v4)
  {
    swift_beginAccess();
    sub_100293140(a1, v1 + v3);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v7[0] = v1;
    sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_1002930AC(a1);
}

uint64_t sub_1002916C0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__delegate;
  swift_beginAccess();
  sub_100293140(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10029172C()
{
  swift_getKeyPath();
  sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex);
}

uint64_t sub_1002917DC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex;
  if ((*(v2 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10029191C(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

void sub_100291938(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = &_swiftEmptyArrayStorage;
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel_snapshotProvider);
    swift_getKeyPath();
    v18 = v5;
    sub_100293054(&qword_101922CB0, type metadata accessor for HomeUserGuidesSnapshotProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v5 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__cellSnapshots);
    v20 = &_swiftEmptyArrayStorage;
    v7 = *(v6 + 16);
    if (v7)
    {
      v15 = a1;
      v8 = v6 + 32;

      v9 = &unk_1011F4D60;
      do
      {
        sub_100098118(v8, &v18);
        sub_1000D2DFC(&v19, v17, &unk_10191C220);
        sub_10005E7BC(v17, v16);
        sub_1000CE6B8(&unk_101911D30);
        if (swift_dynamicCast())
        {
          v10 = v9;
          v11 = *&v17[0];
          sub_100098118(&v18, v16);
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v14 = objc_allocWithZone(type metadata accessor for HomeUserGuideTileViewModel());

          sub_1003D7FDC(v16, v11, sub_10029309C, v12, sub_1002930A4, v13);

          sub_10019D044(&v18);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = v20;
          v9 = v10;
        }

        else
        {
          sub_10019D044(&v18);
        }

        v8 += 48;
        --v7;
      }

      while (v7);

      a1 = v15;
    }

    else
    {
    }
  }

  *a1 = v3;
}

uint64_t (*sub_100291C68(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100292F2C;
}

uint64_t sub_100291CCC()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_1011F7158, v6);
}

uint64_t sub_100291E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 56) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100291EB8, v6, v5);
}

uint64_t sub_100291EB8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(swift_task_alloc() + 16) = v2;
    sub_1000CE6B8(&qword_101917228);
    withObservationTracking<A>(_:onChange:)();

    sub_100291234(*(v0 + 40));
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_100291FE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel);
    swift_getKeyPath();
    aBlock[0] = v3;
    sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__delegate;
    swift_beginAccess();
    sub_1000D2DFC(v3 + v5, v22, &qword_101917230);
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_1002930AC(v22);
        swift_unknownObjectRelease();
        aBlock[0] = 0;
        sub_1000CE6B8(&qword_101917238);
        v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v9 = [objc_opt_self() optionsWithSender:v8];
        swift_unknownObjectRelease();
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = v10;
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          v13[2] = v4;
          v13[3] = v12;
          v13[4] = v9;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1002931B0;
          *(v14 + 24) = v13;
          aBlock[4] = sub_1002931BC;
          aBlock[5] = v14;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100292E04;
          aBlock[3] = &unk_10160E9E8;
          v15 = _Block_copy(aBlock);
          v16 = v4;
          v17 = v9;

          [v11 retrieveGeoCollectionWithRefinedItems:v15];
          _Block_release(v15);
        }

        else
        {
          v18 = [objc_allocWithZone(PersonalCollectionShareItemSource) initWithCollectionHandlerInfo:v4];
          sub_10003E48C(v7 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, aBlock);
          v19 = swift_unknownObjectWeakLoadStrong();
          sub_10003E4E8(aBlock);
          if (v19 && (v20 = [v19 homeShareDelegate], swift_unknownObjectRelease(), v20))
          {
            [v20 shareItem:v18 presentationOptions:v9 completion:0];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        sub_1004D0544(v4, 0);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    else
    {
      sub_1002930AC(v22);
    }
  }
}

uint64_t sub_1002923E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel);
    sub_100098118(a1 + OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_snapshot, v22);
    swift_getKeyPath();
    v20[0] = v3;
    sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__delegate;
    swift_beginAccess();
    sub_1000D2DFC(v3 + v5, v21, &qword_101917230);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRetain();
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {
        swift_unknownObjectRelease();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      sub_1002930AC(v21);
      swift_unknownObjectRelease();
      sub_10003E48C(v7 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v20);
      v8 = swift_unknownObjectWeakLoadStrong();
      sub_10003E4E8(v20);
      if (v8 && (v9 = [v8 homeDeleteDelegate], swift_unknownObjectRelease(), v9))
      {
        sub_1000CE6B8(&qword_101908400);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1011E47B0;
        *(v10 + 32) = v4;
        sub_100014C84(0, &qword_101922CC0);
        v11 = v4;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100098118(v22, v19);
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = v11;
        v15 = v19[1];
        *(v14 + 32) = v19[0];
        *(v14 + 48) = v15;
        *(v14 + 64) = v19[2];
        *(v14 + 80) = 0;
        aBlock[4] = sub_100293114;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002ABAC8;
        aBlock[3] = &unk_10160E970;
        v16 = _Block_copy(aBlock);
        v17 = v11;

        [v9 confirmDeleteCollections:isa sourceItem:0 sourceRect:v16 completion:{0.0, 0.0, 0.0, 0.0}];
        swift_unknownObjectRelease();
        _Block_release(v16);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1002930AC(v21);
    }

    return sub_10019D044(v22);
  }

  return result;
}

uint64_t sub_1002927B0(uint64_t a1)
{
  swift_getKeyPath();
  v9[0] = v1;
  sub_100293054(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__delegate;
  swift_beginAccess();
  sub_1000D2DFC(v9[0] + v3, v10, &qword_101917230);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1002930AC(v10);
  }

  v5 = Strong;
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    sub_1002930AC(v10);
    swift_unknownObjectRelease();
    v6 = *(a1 + OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel);
    sub_10003E48C(v5 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v9);
    v7 = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v9);
    if (v7)
    {
      [v7 homeDidTapOnUserGeneratedGuide:v6];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for HomeUserGuidesCollectionRowCellModel()
{
  result = qword_1019171C8;
  if (!qword_1019171C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100292AA4()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100292B64()
{
  v0 = sub_1000CE6B8(&qword_101917218);
  sub_100021578(v0, qword_10195FDB8);
  sub_100021540(v0, qword_10195FDB8);
  type metadata accessor for HomeUserGuidesCollectionRowViewCell(0);
  type metadata accessor for HomeUserGuidesCollectionRowCellModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

id sub_100292BF4(char *a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  v5 = *&a1[OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_viewModel];
  *&a1[OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_viewModel] = *a3;
  if (!v5)
  {
    v8 = v4;
    goto LABEL_5;
  }

  type metadata accessor for HomeUserGuidesCollectionRowCellModel();
  v6 = v4;
  v5 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
LABEL_5:
    sub_1005453B4();
    v6 = v4;
  }

  v9 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityIdentifier:v9];

  v10 = UIAccessibilityTraitButton;

  return [a1 setAccessibilityTraits:v10];
}

uint64_t sub_100292CF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906628 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_101917218);
  v3 = sub_100021540(v2, qword_10195FDB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100292DAC(uint64_t a1)
{
  result = sub_100293054(&qword_101917210, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  *(a1 + 8) = result;
  return result;
}

void sub_100292E04(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_100014C84(0, &unk_101918390);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = a2;
  v8 = a4;
  v6(v9, v7, v8);
}

void sub_100292EC8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_100292EE8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__viewModels) = *(v0 + 24);
}

uint64_t sub_100292F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100291E20(a1, v4, v5, v6);
}

uint64_t (*sub_100292FF0())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_100292F2C;
}

uint64_t sub_100293054(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002930AC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101917230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100293140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101917230);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1002931EC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = [v4 isTopContext:v1];
  if (v5 && (sub_10032DA00(a1) & 1) == 0)
  {
    sub_10032DF04(a1, [a1 _maps_lineShouldZoomMapRegionOnSelection]);
  }

  return v5;
}

uint64_t sub_100293394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a3;
  v41 = sub_1000CE6B8(&qword_101917258);
  v38 = *(v41 - 8);
  v5 = v38;
  __chkstk_darwin(v41);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v38 - v8;

  v9 = Image.init(systemName:)();
  v10 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v43 = v9;
  v44 = KeyPath;
  v45 = v10;
  static Font.Weight.medium.getter();
  sub_1000CE6B8(&qword_10190FFB0);
  sub_1001C8334();
  View.fontWeight(_:)();

  v43 = a1;
  v44 = a2;
  sub_1000E5580();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  LOBYTE(a2) = v15;
  static Font.caption.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_1000F0A40(v12, v14, a2 & 1);

  static Font.Weight.medium.getter();
  v21 = Text.fontWeight(_:)();
  v23 = v22;
  LOBYTE(v14) = v24;
  v26 = v25;
  sub_1000F0A40(v16, v18, v20 & 1);

  v27 = *(v5 + 16);
  v28 = v39;
  v29 = v40;
  v30 = v41;
  v27(v40, v39, v41);
  v31 = v42;
  v27(v42, v29, v30);
  v32 = sub_1000CE6B8(&qword_101917260);
  v33 = &v31[*(v32 + 48)];
  *v33 = v21;
  *(v33 + 1) = v23;
  v34 = v14 & 1;
  v33[16] = v14 & 1;
  *(v33 + 3) = v26;
  v35 = &v31[*(v32 + 64)];
  *v35 = 0;
  v35[8] = 1;
  sub_1001C8AFC(v21, v23, v14 & 1);
  v36 = *(v38 + 8);

  v36(v28, v30);
  sub_1000F0A40(v21, v23, v34);

  return (v36)(v29, v30);
}

uint64_t sub_1002936DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v5 = sub_1000CE6B8(&qword_101917240);
  sub_100293394(v3, v4, (a1 + *(v5 + 44)));
  v6 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_1000CE6B8(&qword_101917248) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = sub_1000CE6B8(&qword_101917250);
  v26 = a1 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

unint64_t sub_1002937FC()
{
  result = qword_101917268;
  if (!qword_101917268)
  {
    sub_1000D6664(&qword_101917250);
    sub_100293888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917268);
  }

  return result;
}

unint64_t sub_100293888()
{
  result = qword_101917270;
  if (!qword_101917270)
  {
    sub_1000D6664(&qword_101917248);
    sub_1000414C8(&qword_101917278, qword_101917280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917270);
  }

  return result;
}

void sub_100293950()
{
  sub_10024A860();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_100293EA8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100293A0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for DynamicTypeSize() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v6 + v9 + 1;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((((((v10 + (v12 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v13 <= 3)
  {
    v14 = ((a2 - v11 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = *(a1 + v13);
      if (!v17)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v19 = (v17 - 1) << (8 * v13);
    if (v13 <= 3)
    {
      v20 = *a1;
    }

    else
    {
      v19 = 0;
      v20 = *a1;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v8 > 0xFE)
  {
    v22 = *(*(*(a3 + 16) - 8) + 48);

    return v22((a1 + v12) & ~v9);
  }

  else
  {
    v21 = *(a1 + v6);
    if (v21 >= 2)
    {
      return (v21 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_100293BEC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for DynamicTypeSize() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = v8 + 1;
  v16 = v8 + 1 + v12;
  v17 = ((((((v13 + (v16 & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v14 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v14 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v20)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v11 > 0xFE)
      {
        v23 = *(v10 + 56);

        v23(&a1[v16] & ~v12, a2);
      }

      else if (a2 > 0xFE)
      {
        if (v15 <= 3)
        {
          v24 = ~(-1 << (8 * v15));
        }

        else
        {
          v24 = -1;
        }

        if (v8 != -1)
        {
          v25 = v24 & (a2 - 255);
          if (v15 <= 3)
          {
            v26 = v8 + 1;
          }

          else
          {
            v26 = 4;
          }

          bzero(a1, v15);
          if (v26 > 2)
          {
            if (v26 == 3)
            {
              *a1 = v25;
              a1[2] = BYTE2(v25);
            }

            else
            {
              *a1 = v25;
            }
          }

          else if (v26 == 1)
          {
            *a1 = v25;
          }

          else
          {
            *a1 = v25;
          }
        }
      }

      else
      {
        a1[v8] = -a2;
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = HIWORD(v21) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_29:
      if (v20 == 2)
      {
        *&a1[v17] = v22;
      }

      else
      {
        *&a1[v17] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v17] = v22;
  }
}

void sub_100293EA8()
{
  if (!qword_101917308)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101917308);
    }
  }
}

uint64_t sub_100293F3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10191DF80);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10024B4A8(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100294124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for HStack();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v43 - v10;
  v48 = v6;
  v49 = v5;
  v11 = type metadata accessor for VStack();
  v47 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = &v43 - v15;
  v16 = type metadata accessor for DynamicTypeSize();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v53 = v7;
  v23 = type metadata accessor for _ConditionalContent();
  v51 = *(v23 - 8);
  v52 = v23;
  __chkstk_darwin(v23);
  v50 = &v43 - v24;
  sub_100293F3C(v22);
  (*(v17 + 104))(v19, enum case for DynamicTypeSize.accessibility1(_:), v16);
  sub_10029486C();
  LOBYTE(v7) = dispatch thunk of static Comparable.< infix(_:_:)();
  v25 = *(v17 + 8);
  v25(v19, v16);
  v25(v22, v16);
  if ((v7 & 1) != 0 && v3[*(a1 + 56)] != 1)
  {
    __chkstk_darwin(*&v3[*(a1 + 48)]);
    v33 = v48;
    *(&v43 - 4) = v49;
    *(&v43 - 3) = v33;
    *(&v43 - 2) = v3;
    v34 = v44;
    HStack.init(alignment:spacing:content:)();
    v35 = v53;
    WitnessTable = swift_getWitnessTable();
    v37 = v43;
    sub_10010ADFC(v34, v35, WitnessTable);
    v29 = *(v45 + 8);
    v29(v34, v35);
    sub_10010ADFC(v37, v35, WitnessTable);
    swift_getWitnessTable();
    v30 = v50;
    sub_1001A2480(v34, v11, v35);
    v29(v34, v35);
    v31 = v37;
    v32 = v35;
  }

  else
  {
    __chkstk_darwin(*&v3[*(a1 + 40)]);
    v26 = v48;
    *(&v43 - 4) = v49;
    *(&v43 - 3) = v26;
    *(&v43 - 2) = v3;
    VStack.init(alignment:spacing:content:)();
    v27 = swift_getWitnessTable();
    v28 = v46;
    sub_10010ADFC(v13, v11, v27);
    v29 = *(v47 + 8);
    v29(v13, v11);
    sub_10010ADFC(v28, v11, v27);
    swift_getWitnessTable();
    v30 = v50;
    sub_1001A2388(v13, v11);
    v29(v13, v11);
    v31 = v28;
    v32 = v11;
  }

  v29(v31, v32);
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v55 = v38;
  v56 = v39;
  v40 = v52;
  v41 = swift_getWitnessTable();
  sub_10010ADFC(v30, v40, v41);
  return (*(v51 + 8))(v30, v40);
}

uint64_t sub_100294770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DynamicTextAdaptiveStack();
  sub_10010ADFC(a1 + *(v9 + 36), a2, a3);
  sub_10010ADFC(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

unint64_t sub_10029486C()
{
  result = qword_10191E460;
  if (!qword_10191E460)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E460);
  }

  return result;
}

uint64_t Session._maps_location(for:reverseGeocode:maxAge:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v5 + 40) = v4;
  *(v5 + 32) = a4;
  *(v5 + 80) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100294914, 0, 0);
}

uint64_t sub_100294914()
{
  v1 = *(v0 + 24);
  sub_1000CE6B8(&unk_101925050);
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = xmmword_1011E1D30;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100294A78;
  v7 = *(v0 + 32);
  v8 = *(v0 + 80);

  return Session._maps_locations(for:reverseGeocode:maxAge:)(v5, v8, v7);
}

uint64_t sub_100294A78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_100294D1C;
  }

  else
  {

    v4 = sub_100294B94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100294B94()
{
  if (*(v0[8] + 16) && (v1 = sub_10029741C(v0[3]), (v2 & 1) != 0))
  {
    v3 = v1;
    v4 = v0[2];
    v5 = *(v0[8] + 56);
    v6 = type metadata accessor for Location();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v4, v5 + *(v7 + 72) * v3, v6);

    v8 = 0;
  }

  else
  {

    v6 = type metadata accessor for Location();
    v7 = *(v6 - 8);
    v8 = 1;
  }

  (*(v7 + 56))(v0[2], v8, 1, v6);
  v9 = v0[1];

  return v9();
}

uint64_t sub_100294D1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session._maps_latestLocation(for:includeAddress:timeout:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v5 + 40) = v4;
  *(v5 + 32) = a4;
  *(v5 + 80) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100294DAC, 0, 0);
}

uint64_t sub_100294DAC()
{
  v1 = *(v0 + 24);
  sub_1000CE6B8(&unk_101925050);
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = xmmword_1011E1D30;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100294F10;
  v7 = *(v0 + 32);
  v8 = *(v0 + 80);

  return Session._maps_latestLocations(for:includeAddress:timeout:)(v5, v8, v7);
}

uint64_t sub_100294F10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_100298E6C;
  }

  else
  {

    v4 = sub_100298E70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t Session._maps_locations(for:reverseGeocode:maxAge:)(uint64_t a1, char a2, double a3)
{
  *(v4 + 32) = v3;
  *(v4 + 24) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100295058, 0, 0);
}

uint64_t sub_100295058()
{
  v24 = v0;
  if (*(v0 + 24) <= 0.0)
  {
    if (qword_101906630 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_10195FDD0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      type metadata accessor for Handle();
      v17 = Array.description.getter();
      v19 = sub_10004DEB8(v17, v18, &v23);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Trying to fetch cached locations for handles %{private,mask.hash}s with max age <= 0; ignoring max age", v15, 0x16u);
      sub_10004E3D0(v16);
    }

    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v11 = sub_1002958DC;
  }

  else
  {
    if (qword_101906630 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 40) = sub_100021540(v1, qword_10195FDD0);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 24);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 141558531;
      *(v5 + 4) = 1752392040;
      *(v5 + 12) = 2081;
      type metadata accessor for Handle();
      v7 = Array.description.getter();
      v9 = sub_10004DEB8(v7, v8, &v23);

      *(v5 + 14) = v9;
      *(v5 + 22) = 2050;
      *(v5 + 24) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetching cached locations for handles: %{private,mask.hash}s with max age: %{public}f", v5, 0x20u);
      sub_10004E3D0(v6);
    }

    v10 = swift_task_alloc();
    *(v0 + 48) = v10;
    *v10 = v0;
    v11 = sub_1002953F4;
  }

  v10[1] = v11;
  v20 = *(v0 + 80);
  v21 = *(v0 + 16);

  return Session.locations(for:reverseGeocode:)(v21, v20);
}

uint64_t sub_1002953F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1002959DC;
  }

  else
  {
    v4 = sub_100295508;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100295508()
{
  v24 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v3 = 141558531;
    *(v3 + 4) = 1752392040;
    *(v3 + 12) = 2081;
    type metadata accessor for Handle();
    v4 = Array.description.getter();
    v6 = sub_10004DEB8(v4, v5, v23);

    *(v3 + 14) = v6;
    *(v3 + 22) = 2081;
    type metadata accessor for Location();
    sub_100298E1C(&qword_101926440, &type metadata accessor for Handle);
    v7 = Dictionary.description.getter();
    v9 = sub_10004DEB8(v7, v8, v23);

    *(v3 + 24) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully fetched cached locations for handles: %{private,mask.hash}s : %{private}s", v3, 0x20u);
    swift_arrayDestroy();
  }

  sub_1002985F8(*(v0 + 56), *(v0 + 24));
  v11 = v10;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    type metadata accessor for Handle();
    v15 = Array.description.getter();
    v17 = sub_10004DEB8(v15, v16, v23);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2081;
    type metadata accessor for Location();
    sub_100298E1C(&qword_101926440, &type metadata accessor for Handle);
    v18 = Dictionary.description.getter();
    v20 = sub_10004DEB8(v18, v19, v23);

    *(v14 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Filtered fetched cached locations for handles: %{private,mask.hash}s : %{private}s", v14, 0x20u);
    swift_arrayDestroy();
  }

  v21 = *(v0 + 8);

  return v21(v11);
}

uint64_t sub_1002958DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1002959DC()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 141558531;
    *(v3 + 4) = 1752392040;
    *(v3 + 12) = 2081;
    type metadata accessor for Handle();
    v6 = Array.description.getter();
    v8 = sub_10004DEB8(v6, v7, &v12);

    *(v3 + 14) = v8;
    *(v3 + 22) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 24) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Got error fetching cached locations for handles: %{private,mask.hash}s : %{public}@", v3, 0x20u);
    sub_100024F64(v4, &qword_1019144F0);

    sub_10004E3D0(v5);
  }

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t Session._maps_latestLocations(for:includeAddress:timeout:)(uint64_t a1, char a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 32) = a3;
  *(v4 + 144) = a2;
  *(v4 + 24) = a1;
  v5 = type metadata accessor for ClientID.ConnectionType();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  v6 = type metadata accessor for ClientID();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100295CF8, 0, 0);
}

uint64_t sub_100295CF8()
{
  v33 = v0;
  if (*(v0 + 32) <= 0.0)
  {
    if (qword_101906630 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100021540(v17, qword_10195FDD0);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      type metadata accessor for Handle();
      v22 = Array.description.getter();
      v24 = sub_10004DEB8(v22, v23, &v32);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Trying to fetch latest locations for handles %{private,mask.hash}s with timeout <= 0; ignoring timeout", v20, 0x16u);
      sub_10004E3D0(v21);
    }

    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 bundleIdentifier];

    if (v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for ClientID.ConnectionType.xpc(_:), *(v0 + 48));
    ClientID.init(identifier:connectionType:)();
    v27 = swift_task_alloc();
    *(v0 + 128) = v27;
    *v27 = v0;
    v27[1] = sub_100296534;
    v28 = *(v0 + 88);
    v29 = *(v0 + 144);
    v30 = *(v0 + 24);

    return Session.latestLocations(for:includeAddress:clientID:)(v30, v29, v28);
  }

  else
  {
    if (qword_101906630 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 96) = sub_100021540(v1, qword_10195FDD0);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 32);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 141558531;
      *(v5 + 4) = 1752392040;
      *(v5 + 12) = 2081;
      type metadata accessor for Handle();
      v7 = Array.description.getter();
      v9 = sub_10004DEB8(v7, v8, &v32);

      *(v5 + 14) = v9;
      *(v5 + 22) = 2050;
      *(v5 + 24) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetching latest locations for handles %{private,mask.hash}s with timeout %{public}f", v5, 0x20u);
      sub_10004E3D0(v6);
    }

    v10 = *(v0 + 40);
    v11 = *(v0 + 144);
    v12 = *(v0 + 24);
    v13 = swift_allocObject();
    *(v0 + 104) = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    *(v13 + 32) = v11;

    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    v15 = sub_1000CE6B8(&qword_101917310);
    *v14 = v0;
    v14[1] = sub_1002961EC;
    v16.n128_u64[0] = *(v0 + 32);

    return runWithTimeout<A>(seconds:block:)(v0 + 16, &unk_1011F73E0, v13, v15, v16);
  }
}

uint64_t sub_1002961EC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100296760;
  }

  else
  {

    v2 = sub_100296308;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100296308()
{
  v14 = v0;
  v1 = *(v0 + 16);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v4 = 141558531;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for Handle();
    v5 = Array.description.getter();
    v7 = sub_10004DEB8(v5, v6, &v13);

    *(v4 + 14) = v7;
    *(v4 + 22) = 2081;
    type metadata accessor for Location();
    sub_100298E1C(&qword_101926440, &type metadata accessor for Handle);
    v8 = Dictionary.description.getter();
    v10 = sub_10004DEB8(v8, v9, &v13);

    *(v4 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully fetched latest locations for handles: %{private,mask.hash}s : %{private}s", v4, 0x20u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_100296534(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[17] = v1;

  (*(v5 + 8))(v4[11], v4[9]);
  if (v1)
  {

    return _swift_task_switch(sub_1002966F0, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1002966F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100296760()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 141558531;
    *(v3 + 4) = 1752392040;
    *(v3 + 12) = 2081;
    type metadata accessor for Handle();
    v6 = Array.description.getter();
    v8 = sub_10004DEB8(v6, v7, &v12);

    *(v3 + 14) = v8;
    *(v3 + 22) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 24) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Got error fetching latest locations for handles: %{private,mask.hash}s : %{public}@", v3, 0x20u);
    sub_100024F64(v4, &qword_1019144F0);

    sub_10004E3D0(v5);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10029696C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for ClientID.ConnectionType();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for ClientID();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100296A90, 0, 0);
}

uint64_t sub_100296A90()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  (*(*(v0 + 48) + 104))(*(v0 + 56), enum case for ClientID.ConnectionType.xpc(_:), *(v0 + 40));
  ClientID.init(identifier:connectionType:)();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_100296BDC;
  v4 = *(v0 + 80);
  v5 = *(v0 + 112);
  v6 = *(v0 + 32);

  return Session.latestLocations(for:includeAddress:clientID:)(v6, v5, v4);
}

uint64_t sub_100296BDC(uint64_t a1)
{
  v4 = *v2;
  v4[12] = v1;

  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_100296DE0;
  }

  else
  {
    v4[13] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_100296D64;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100296D64()
{
  **(v0 + 16) = *(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100296DE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100296E50()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FDD0);
  sub_100021540(v0, qword_10195FDD0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100296ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  if (a4)
  {
    if (a4 != 1)
    {
      if (a2 | a3)
      {
        if (a2 ^ 1 | a3)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }

      Hasher._combine(_:)(v9);
      goto LABEL_12;
    }

    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  Hasher._combine(_:)(v8);
  String.hash(into:)();
LABEL_12:
  v10 = Hasher._finalize()();

  return sub_1002977AC(a1, a2, a3, a4, v10);
}

unint64_t sub_100296FD4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100297A54(a1, v2);
}

unint64_t sub_100297058(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100297B7C(a1, v4);
}

unint64_t sub_10029709C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10005EBF4(a1, v4, &qword_101909920);
}

unint64_t sub_1002970EC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100298164(a1, v2);
}

unint64_t sub_10029717C(unsigned __int8 a1)
{
  v2 = sub_100398AD0();

  return sub_100297CB0(a1, v2);
}

unint64_t sub_1002971C0(unint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = a1 >> 61;
  v3 = 3;
  v4 = 4;
  if (a1 >> 61 != 4)
  {
    v4 = 5;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 1;
  if (v2 != 1)
  {
    v5 = 2;
  }

  if (!v2)
  {
    v5 = a1 >> 61;
  }

  if (v2 <= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  Hasher._combine(_:)(v6);
  NSObject.hash(into:)();
  v7 = Hasher._finalize()();

  return sub_100297F44(a1, v7);
}

unint64_t sub_10029728C(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1002980F8(a1, v2);
}

unint64_t sub_1002972F8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100298E1C(&qword_1019156D0, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100298268(a1, v2, &type metadata accessor for UUID, &qword_101916EA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1002973CC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10005EBF4(a1, v4, &qword_10190D2F0);
}

unint64_t sub_10029741C(uint64_t a1)
{
  type metadata accessor for Handle();
  sub_100298E1C(&qword_101926440, &type metadata accessor for Handle);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100298268(a1, v2, &type metadata accessor for Handle, &unk_101917330, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
}

unint64_t sub_1002974F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100298E1C(&qword_1019156D0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for VisitsLoader.VisitData(0);
  type metadata accessor for Date();
  sub_100298E1C(&qword_10190BAA0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100298408(a1, v2);
}

unint64_t sub_100297604(uint64_t a1)
{
  type metadata accessor for Date();
  sub_100298E1C(&qword_10190BAA0, &type metadata accessor for Date);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100298268(a1, v2, &type metadata accessor for Date, &qword_101917318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
}

unint64_t sub_1002976D8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10005EBF4(a1, v4, &unk_10190B9E0);
}

uint64_t sub_100297728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

unint64_t sub_1002977AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v32 = ~v6;
    sub_100014C84(0, &qword_10190B2D0);
    v11 = a2 != 2;
    v12 = a2 != 1;
    if (a3)
    {
      v11 = 1;
      v12 = 1;
    }

    v13 = a4 == 2;
    v31 = a3;
    if (a4 != 2)
    {
      v11 = 1;
    }

    v28 = v11;
    v14 = a4 != 2 || v12;
    if (a3 | a2)
    {
      v13 = 0;
    }

    v26 = v13;
    v27 = v14;
    v30 = a4;
    do
    {
      v16 = *(v5 + 48) + 32 * v7;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      v15 = *(v16 + 24);
      v19 = *v16;
      sub_1000D2C54(v17, v18, v15);
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_13;
      }

      if (v15)
      {
        if (v15 == 1)
        {
          if (a4 != 1)
          {
            LOBYTE(v15) = 1;
LABEL_13:

            sub_1001F12E8(v17, v18, v15);
            goto LABEL_14;
          }

          v22 = v17 == a2;
          v20 = a2;
          v21 = v31;
          v22 = v22 && v18 == v31;
          if (v22)
          {
            goto LABEL_41;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1001F12E8(v17, v18, 1u);
          a2 = v20;
          a4 = v30;
          if (v29)
          {
            return v7;
          }
        }

        else if (v17 | v18)
        {
          if (v17 ^ 1 | v18)
          {

            if (!v28)
            {
              return v7;
            }
          }

          else
          {

            if ((v27 & 1) == 0)
            {
              return v7;
            }
          }
        }

        else
        {

          if (v26)
          {
            return v7;
          }
        }
      }

      else
      {
        if (a4)
        {
          LOBYTE(v15) = 0;
          goto LABEL_13;
        }

        v22 = v17 == a2;
        v20 = a2;
        v21 = v31;
        if (v22 && v18 == v31)
        {
LABEL_41:

          sub_1001F12E8(v20, v21, v15);
          return v7;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_1001F12E8(v17, v18, 0);
        a2 = v20;
        a4 = v30;
        if (v24)
        {
          return v7;
        }
      }

LABEL_14:
      v7 = (v7 + 1) & v32;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100297A54(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_100297AC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100297B7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10012EF50(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10005BF8C(v8);
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

unint64_t sub_100297C44(uint64_t a1, uint64_t a2)
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

unint64_t sub_100297CB0(unsigned __int8 a1, uint64_t a2)
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
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6974736567677573;
          }

          else
          {
            v8 = 0x64656E6E6970;
          }

          if (v7 == 1)
          {
            v9 = 0xEB00000000736E6FLL;
          }

          else
          {
            v9 = 0xE600000000000000;
          }
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1701670760;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x6469754772657375;
          v9 = 0xEA00000000007365;
        }

        else
        {
          v8 = 0x4C65736963657270;
          v9 = 0xEF6E6F697461636FLL;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x73746E65636572;
        }

        else
        {
          v8 = 0x6469754772657375;
        }

        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xED00007473694C65;
        }
      }

      v10 = 0x4C65736963657270;
      if (v6 == 5)
      {
        v10 = 0x6469754772657375;
      }

      v11 = 0xEF6E6F697461636FLL;
      if (v6 == 5)
      {
        v11 = 0xEA00000000007365;
      }

      v12 = 0x73746E65636572;
      if (v6 != 3)
      {
        v12 = 0x6469754772657375;
      }

      v13 = 0xED00007473694C65;
      if (v6 == 3)
      {
        v13 = 0xE700000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6974736567677573;
      if (v6 != 1)
      {
        v14 = 0x64656E6E6970;
      }

      v15 = 0xEB00000000736E6FLL;
      if (v6 != 1)
      {
        v15 = 0xE600000000000000;
      }

      if (!v6)
      {
        v14 = 1701670760;
        v15 = 0xE400000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
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

unint64_t sub_100297F44(unint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    v8 = a1 & 0xE000000000000000;
    v16 = a1 >> 61;
    do
    {
      v11 = *(*(v6 + 48) + 8 * v5);
      v12 = v11 >> 61;
      if ((v11 >> 61) > 2)
      {
        if (v12 == 3)
        {
          if (v8 == 0x6000000000000000)
          {
            goto LABEL_3;
          }
        }

        else if (v12 == 4)
        {
          if (v8 == 0x8000000000000000)
          {
            goto LABEL_3;
          }
        }

        else if (v8 == 0xA000000000000000)
        {
LABEL_3:
          sub_100014C84(0, &qword_10190B2D0);
          v9 = (v11 & 0x1FFFFFFFFFFFFFFFLL);
          v10 = static NSObject.== infix(_:_:)();

          if (v10)
          {
            return v5;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 1)
        {
          if (v8 == 0x2000000000000000)
          {
            goto LABEL_3;
          }
        }

        else if (v8 == 0x4000000000000000)
        {
          goto LABEL_3;
        }
      }

      else if (!v16)
      {
        sub_100014C84(0, &qword_10190B2D0);
        v13 = v11;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1002980F8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100298164(uint64_t a1, uint64_t a2)
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

unint64_t sub_100298268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
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
      sub_100298E1C(v23, v24);
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

unint64_t sub_100298408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitsLoader.VisitData(0);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_10012EEEC(*(v2 + 48) + v11 * v9, v7);
      if (static UUID.== infix(_:_:)())
      {
        v12 = static Date.== infix(_:_:)();
        sub_100298820(v7);
        if (v12)
        {
          return v9;
        }
      }

      else
      {
        sub_100298820(v7);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_100298570(void *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10029887C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1002985F8(uint64_t a1, double a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_100298570(v9, v6, v4, a2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v8 = &v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_10029887C(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_10029876C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10029696C(a1, v4, v5, v6);
}

uint64_t sub_100298820(uint64_t a1)
{
  v2 = type metadata accessor for VisitsLoader.VisitData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10029887C(unint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v47[0] = a2;
  v48 = a1;
  v63 = type metadata accessor for Date();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000CE6B8(&qword_101917328);
  __chkstk_darwin(v61);
  v60 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = v47 - v10;
  v70 = type metadata accessor for Location();
  v11 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Handle();
  v14.n128_f64[0] = __chkstk_darwin(v58);
  v66 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v16 = 0;
  v64 = a3;
  v17 = *(a3 + 64);
  v51 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v50 = (v18 + 63) >> 6;
  v56 = v11 + 2;
  v57 = v13 + 2;
  v69 = v11;
  v54 = v11 + 1;
  v55 = (v6 + 8);
  v67 = v13;
  v53 = v13 + 1;
  while (v20)
  {
    v21 = __clz(__rbit64(v20));
    v65 = (v20 - 1) & v20;
LABEL_11:
    v24 = v21 | (v16 << 6);
    v25 = v64;
    v26 = v66;
    v27 = v67[2];
    v28 = v58;
    v27(v66, v64[6] + v67[9] * v24, v58, v14);
    v29 = v25[7];
    v30 = v68;
    v31 = v69[9];
    v52 = v24;
    v32 = v69[2];
    v32(v68, v29 + v31 * v24, v70);
    v33 = v59;
    (v27)(v59, v26, v28);
    v34 = v61;
    v35 = v30;
    v36 = v70;
    v32((v33 + *(v61 + 48)), v35, v70);
    v37 = v62;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v39 = v38;
    (*v55)(v37, v63);
    v40 = v60;
    sub_100298DAC(v33, v60);
    v41 = *(v34 + 48);
    Location.timestamp.getter();
    v43 = v42;
    sub_100024F64(v33, &qword_101917328);
    v44 = v69[1];
    v44(v40 + v41, v36);
    v45 = v67[1];
    v45(v40, v28);
    v44(v68, v36);
    v45(v66, v28);
    v20 = v65;
    if (v39 - v43 <= a4)
    {
      *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      if (__OFADD__(v49++, 1))
      {
        __break(1u);
LABEL_15:
        sub_10053F95C(v48, v47[0], v49, v64);
        return;
      }
    }
  }

  v22 = v16;
  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= v50)
    {
      goto LABEL_15;
    }

    v23 = *(v51 + 8 * v16);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v65 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100298DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101917328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100298E1C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100298E74()
{
  v1 = [v0 _type];
  if (v1 == 5)
  {
    result = [v0 publisherResult];
    if (!result)
    {
      return result;
    }

    v6 = result;
    v4 = [result publisher];

    if (v4)
    {
      v5 = [v4 identifier];
      goto LABEL_9;
    }
  }

  else if (v1 == 4)
  {
    result = [v0 collectionResult];
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = [result collection];

    if (v4)
    {
      v5 = [v4 collectionIdentifier];
LABEL_9:
      v7 = v5;

      return v7;
    }
  }

  else
  {
    result = [v0 mapItem];
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = [result _geoMapItem];

    if (v9)
    {
      v7 = [v9 _identifier];
      swift_unknownObjectRelease();
      return v7;
    }
  }

  return 0;
}

void sub_1002992A0()
{
  v1 = v0;
  v64 = type metadata accessor for CharacterSet();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_searchString + 8);
  p_opt_class_meths = &OBJC_PROTOCOL___MapsSessionObserver.opt_class_meths;
  if (!v4)
  {
LABEL_8:
    *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredSuggestedNetworks) = *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_suggestedNetworks);

    *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredOtherNetworks) = *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_otherNetworks);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong reloadData];

      swift_unknownObjectRelease();
    }

    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_searchString);

  if (String.count.getter() < 1)
  {

    goto LABEL_8;
  }

  aBlock = v6;
  v67 = v4;
  v7 = v63;
  static CharacterSet.whitespaces.getter();
  v8 = sub_1000E5580();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  v60 = *(v2 + 8);
  v61 = v2 + 8;
  v60(v7, v64);

  aBlock = v9;
  v67 = v11;
  v72 = 32;
  v73 = 0xE100000000000000;
  v59 = v8;
  v12 = StringProtocol.components<A>(separatedBy:)();

  v13 = *(v12 + 16);
  v55 = v1;
  if (v13)
  {
    v72 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = objc_opt_self();
    v15 = (v12 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      v70 = sub_10029BDD0;
      v71 = v18;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v68 = sub_100299D18;
      v69 = &unk_10160EC38;
      v19 = _Block_copy(&aBlock);

      v20 = [v14 predicateWithBlock:v19];
      _Block_release(v19);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += 2;
      --v13;
    }

    while (v13);

    v1 = v55;
    p_opt_class_meths = (&OBJC_PROTOCOL___MapsSessionObserver + 48);
  }

  else
  {
  }

  sub_100014C84(0, &unk_101917490);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v62 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  v23 = *(p_opt_class_meths[109] + v1);
  v65 = _swiftEmptyArrayStorage;
  if (v23 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v25 = 0;
      v57 = v23 & 0xFFFFFFFFFFFFFF8;
      v58 = v23 & 0xC000000000000001;
      v56 = v23;
      while (1)
      {
        if (v58)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v57 + 16))
          {
            goto LABEL_48;
          }

          v27 = *(v23 + 8 * v25 + 32);
        }

        v28 = v27;
        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v30 = i;
        v31 = [v27 name];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        aBlock = v32;
        v67 = v34;
        v35 = v63;
        static CharacterSet.whitespaces.getter();
        v36 = StringProtocol.trimmingCharacters(in:)();
        v38 = v37;
        v60(v35, v64);

        aBlock = v36;
        v67 = v38;
        v72 = 32;
        v73 = 0xE100000000000000;
        StringProtocol.components<A>(separatedBy:)();

        v1 = Array._bridgeToObjectiveC()().super.isa;

        LOBYTE(v36) = [v62 evaluateWithObject:v1];

        if (v36)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v1 = v65[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        i = v30;
        ++v25;
        v26 = v29 == v30;
        v23 = v56;
        if (v26)
        {
          v39 = v65;
          v1 = v55;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v39 = _swiftEmptyArrayStorage;
LABEL_28:

    *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredSuggestedNetworks) = v39;

    v40 = *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_otherNetworks);
    v65 = _swiftEmptyArrayStorage;
    v23 = v40 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v23)
    {
      break;
    }

    v41 = 0;
    v57 = v40 & 0xFFFFFFFFFFFFFF8;
    v58 = v40 & 0xC000000000000001;
    v56 = v40;
    while (1)
    {
      if (v58)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *(v57 + 16))
        {
          goto LABEL_50;
        }

        v42 = *(v40 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v45 = [v42 name];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      aBlock = v46;
      v67 = v48;
      v49 = v63;
      static CharacterSet.whitespaces.getter();
      v50 = StringProtocol.trimmingCharacters(in:)();
      v52 = v51;
      v60(v49, v64);

      aBlock = v50;
      v67 = v52;
      v72 = 32;
      v73 = 0xE100000000000000;
      StringProtocol.components<A>(separatedBy:)();

      v1 = Array._bridgeToObjectiveC()().super.isa;

      LOBYTE(v50) = [v62 evaluateWithObject:v1];

      if (v50)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v1 = v65[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v40 = v56;
      ++v41;
      if (v44 == v23)
      {
        v53 = v65;
        v1 = v55;
        goto LABEL_43;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_43:

  *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredOtherNetworks) = v53;

  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    [v54 reloadData];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100299B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  sub_10017A750(a1, v21);
  if (!v21[3])
  {
    sub_100024F64(v21, &unk_101908380);
    return 0;
  }

  sub_1000CE6B8(&unk_101909C00);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v11 = v20[0];
  v12 = (v20[0] + 40);
  v13 = -*(v20[0] + 16);
  v14 = -1;
  while (1)
  {
    if (v13 + v14 == -1)
    {

      return 0;
    }

    if (++v14 >= *(v11 + 16))
    {
      break;
    }

    v15 = v12 + 2;
    v16 = *v12;
    v21[0] = *(v12 - 1);
    v21[1] = v16;
    v20[0] = a3;
    v20[1] = a4;
    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_1000E5580();

    StringProtocol.range<A>(of:options:range:locale:)();
    v19 = v18;
    sub_100024F64(v9, &unk_10190D5F0);

    v12 = v15;
    if ((v19 & 1) == 0)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100299D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (!a2)
  {
    memset(v10, 0, sizeof(v10));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v8 = a2;
  sub_1000D2BE0(&v8, v10);
  if (v3)
  {
LABEL_3:
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_100024F64(v10, &unk_101908380);
  return v6 & 1;
}

unint64_t sub_100299DFC()
{
  v1 = v0;
  v2 = IndexPath.section.getter();
  if (v2 != 1)
  {
    if (v2)
    {
      return 0;
    }

    result = IndexPath.row.getter();
    v1 = *(v0 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredSuggestedNetworks);
    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_12;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }

    if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v1 + 8 * result + 32);
    }

    __break(1u);
  }

  result = IndexPath.row.getter();
  v1 = *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredOtherNetworks);
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_12:

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    return v4;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v1 + 8 * result + 32);
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100299ED8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredSuggestedNetworks);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      break;
    }

LABEL_13:

    v2 = *(v2 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredOtherNetworks);
    if (v2 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v3)
    {
LABEL_25:

      v15 = 1;
      v16 = a2;
      goto LABEL_29;
    }

    v10 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v11 = *(v2 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [a1 globalBrandID];
      if (v14 == [v12 globalBrandID])
      {

        v16 = a2;
        IndexPath.init(row:section:)();

        goto LABEL_28;
      }

      ++v10;
      if (v13 == v3)
      {
        goto LABEL_25;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = [a1 globalBrandID];
    if (v9 == [v7 globalBrandID])
    {
      break;
    }

    ++v5;
    if (v8 == i)
    {
      goto LABEL_13;
    }
  }

  v16 = a2;
  IndexPath.init(row:section:)();

LABEL_28:
  v15 = 0;
LABEL_29:
  v17 = type metadata accessor for IndexPath();
  v18 = *(*(v17 - 8) + 56);

  return v18(v16, v15, 1, v17);
}

id sub_10029A2C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargingNetworksDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10029A3E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1 && [v2 tableView:a1 numberOfRowsInSection:1] > 0)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_1019600D8;
      v10 = 0x800000010122A470;
      v4 = 0x74654E2065726F4DLL;
      v5 = 0xED0000736B726F77;
      v6 = 0xD00000000000001BLL;
      v7 = 0x800000010122A450;
      v8 = 0xD000000000000026;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v3, *&v4, *&v8)._countAndFlagsBits;
    }
  }

  else if ([v2 tableView:a1 numberOfRowsInSection:0] >= 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v3.super.isa = qword_1019600D8;
    v10 = 0x800000010122A4C0;
    v4 = 0x6574736567677553;
    v7 = 0x800000010122A4A0;
    v8 = 0xD00000000000002BLL;
    v6 = 0xD000000000000017;
    v5 = 0xE900000000000064;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v3, *&v4, *&v8)._countAndFlagsBits;
  }

  return 0;
}

uint64_t sub_10029A61C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(UITableViewHeaderFooterView) init];
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  v11 = [v3 tableView:a1 titleForHeaderInSection:a2];
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  UIListContentConfiguration.text.setter();
  v13 = *&v3[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_context];
  if (v13 != 2)
  {
    if (v13 != 1)
    {
      goto LABEL_9;
    }

    v14 = [objc_opt_self() secondaryLabelColor];
    v15 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v15(v24, 0);
    if ([objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightBold])
    {
LABEL_11:
      v20 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.font.setter();
      v20(v24, 0);
      v24[3] = v6;
      v24[4] = &protocol witness table for UIListContentConfiguration;
      v21 = sub_10001A848(v24);
      (*(v7 + 16))(v21, v9, v6);
      UITableViewHeaderFooterView.contentConfiguration.setter();
      (*(v7 + 8))(v9, v6);
      return v10;
    }

    __break(1u);
  }

  UIListContentConfiguration.directionalLayoutMargins.setter();
  v16 = [objc_opt_self() secondaryLabelColor];
  v17 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v17(v24, 0);
  if ([objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightBold])
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_9:
  if (!v13)
  {
    v18 = [objc_opt_self() labelColor];
    v19 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v19(v24, 0);
    if ([objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle3 weight:UIFontWeightSemibold])
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v24[0] = v13;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10029AA90(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:isa];

  v11 = sub_100299DFC();
  if (!v11)
  {
    return v10;
  }

  v12 = v11;
  static UIListContentConfiguration.cell()();
  v13 = *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_context);
  switch(v13)
  {
    case 0:
      goto LABEL_6;
    case 1:
LABEL_10:
      v20 = [v12 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UIListContentConfiguration.text.setter();
      v24[3] = v4;
      v24[4] = &protocol witness table for UIListContentConfiguration;
      v21 = sub_10001A848(v24);
      (*(v5 + 16))(v21, v7, v4);
      UITableViewCell.contentConfiguration.setter();

      (*(v5 + 8))(v7, v4);
      return v10;
    case 2:
      UIListContentConfiguration.directionalLayoutMargins.setter();
LABEL_6:
      [v10 setSelectionStyle:0];
      v14 = objc_opt_self();
      v15 = v10;
      v16 = [v14 tertiarySystemFillColor];
      [v15 setBackgroundColor:v16];

      v17 = OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_selectedNetworks;
      swift_beginAccess();
      v18 = *(v2 + v17);

      LOBYTE(v17) = sub_100360F34(v12, v18);

      if (v17)
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      [v15 setAccessoryType:v19];
      goto LABEL_10;
  }

  v24[0] = *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_context);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_10029AE90(void *a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  if (v4 == 1)
  {
LABEL_7:
    v5 = IndexPath.row.getter();
    v6 = *(v2 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredOtherNetworks);
    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_22:

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_11;
  }

  if (v4)
  {
    return;
  }

  v5 = IndexPath.row.getter();
  v6 = *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredSuggestedNetworks);
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_10:
  v7 = *(v6 + 8 * v5 + 32);
LABEL_11:
  v8 = *(v2 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_context);
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      v9.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 deselectRowAtIndexPath:v9.super.isa animated:1];
LABEL_17:

      goto LABEL_18;
    }

    if (v8)
    {
LABEL_26:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }
  }

  swift_beginAccess();
  sub_100307780(&v13, v7);
  v10 = v13;
  swift_endAccess();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9.super.isa = [a1 cellForRowAtIndexPath:isa];

  if (v9.super.isa)
  {
    [(objc_class *)v9.super.isa setAccessoryType:3];
    goto LABEL_17;
  }

LABEL_18:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didSelectNetwork:v7 isSuggested:IndexPath.section.getter() == 0];
    swift_unknownObjectRelease();
  }
}

void sub_10029B0E4(void *a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  if (v4 != 1)
  {
    if (v4)
    {
      return;
    }

    v5 = IndexPath.row.getter();
    v6 = *(v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredSuggestedNetworks);
    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_20;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v7 = *(v6 + 8 * v5 + 32);
      goto LABEL_11;
    }

    __break(1u);
  }

  v5 = IndexPath.row.getter();
  v6 = *(v2 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredOtherNetworks);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_20:

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_11:
  v8 = *(v2 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_context);
  if (v8 == 2)
  {
    goto LABEL_14;
  }

  if (v8 != 1)
  {
    if (!v8)
    {
LABEL_14:
      swift_beginAccess();
      v9 = sub_100308AF8(v7);
      swift_endAccess();

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v11 = [a1 cellForRowAtIndexPath:isa];

      if (v11)
      {
        [v11 setAccessoryType:0];
      }

      goto LABEL_16;
    }

LABEL_24:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

LABEL_16:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didSelectNetwork:v7 isSuggested:IndexPath.section.getter() == 0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10029B310(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10029B41C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10029BD78;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10160EBE8;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

void sub_10029B6B8(uint64_t a1, char *a2)
{
  v2 = a2;
  v3 = [a2 suggestedNetworks];
  if (v3)
  {
    v4 = v3;
    sub_100014C84(0, &unk_101917480);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v34 = v2;
      v7 = 0;
      v41 = v5 & 0xC000000000000001;
      v37 = OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_excludedNetworks;
      v39 = v5 & 0xFFFFFFFFFFFFFF8;
      v35 = v5 + 32;
      while (1)
      {
        if (v41)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v39 + 16))
          {
            goto LABEL_24;
          }

          v8 = *(v35 + 8 * v7);
        }

        v9 = v8;
        v10 = __OFADD__(v7++, 1);
        if (v10)
        {
          break;
        }

        v11 = *(a1 + v37);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = v8;
          v13 = __CocoaSet.contains(_:)();

          if (v13)
          {

            goto LABEL_6;
          }
        }

        else if (*(v11 + 16))
        {
          v14 = NSObject._rawHashValue(seed:)(*(v11 + 40));
          v2 = (v11 + 56);
          v15 = -1 << *(v11 + 32);
          v16 = v14 & ~v15;
          if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v5 = ~v15;
            while (1)
            {
              v17 = *(*(v11 + 48) + 8 * v16);
              v18 = static NSObject.== infix(_:_:)();

              if (v18)
              {
                break;
              }

              v16 = (v16 + 1) & v5;
              if (((*&v2[(v16 >> 3) & 0xFFFFFFFFFFFFFF8] >> v16) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

            goto LABEL_6;
          }
        }

LABEL_5:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_6:
        if (v7 == i)
        {
          v2 = v34;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:
  }

  *(a1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_suggestedNetworks) = _swiftEmptyArrayStorage;

  v19 = [v2 otherNetworks];
  if (v19)
  {
    v20 = v19;
    sub_100014C84(0, &unk_101917480);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      goto LABEL_51;
    }

    for (j = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v23 = 0;
      v42 = v21 & 0xC000000000000001;
      v38 = OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_excludedNetworks;
      v40 = v21 & 0xFFFFFFFFFFFFFF8;
      v36 = v21 + 32;
      while (1)
      {
        if (v42)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v40 + 16))
          {
            goto LABEL_50;
          }

          v24 = *(v36 + 8 * v23);
        }

        v25 = v24;
        v10 = __OFADD__(v23++, 1);
        if (v10)
        {
          break;
        }

        v26 = *(a1 + v38);
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = v24;
          v28 = __CocoaSet.contains(_:)();

          if (v28)
          {

            goto LABEL_32;
          }
        }

        else if (*(v26 + 16))
        {
          v29 = NSObject._rawHashValue(seed:)(*(v26 + 40));
          v30 = -1 << *(v26 + 32);
          v31 = v29 & ~v30;
          if ((*(v26 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
          {
            v21 = ~v30;
            while (1)
            {
              v32 = *(*(v26 + 48) + 8 * v31);
              v33 = static NSObject.== infix(_:_:)();

              if (v33)
              {
                break;
              }

              v31 = (v31 + 1) & v21;
              if (((*(v26 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_32:
        if (v23 == j)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      ;
    }

LABEL_52:
  }

  *(a1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_otherNetworks) = _swiftEmptyArrayStorage;

  sub_1002992A0();
}

void sub_10029BBEC(void *a1)
{
  v2 = [a1 searchBar];
  countAndFlagsBits = [v2 text];

  if (countAndFlagsBits)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String.lowercased()();
    countAndFlagsBits = v4._countAndFlagsBits;
    object = v4._object;
  }

  else
  {
    object = 0;
  }

  v6 = (v1 + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_searchString);
  *v6 = countAndFlagsBits;
  v6[1] = object;

  sub_1002992A0();
}

unint64_t sub_10029BD24()
{
  result = qword_101917478;
  if (!qword_101917478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917478);
  }

  return result;
}

uint64_t sub_10029BD80(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredOtherNetworks;
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    v2 = OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredSuggestedNetworks;
  }

  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_10029BDD8()
{
  result = qword_1019174A8;
  if (!qword_1019174A8)
  {
    sub_100014C84(255, &unk_101917480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019174A8);
  }

  return result;
}

uint64_t sub_10029BE74(uint64_t a1)
{
  swift_getKeyPath();
  sub_10029DD40(&qword_10190DC08, type metadata accessor for CapsuleOptionsSelectorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 65) != 1)
  {
    v2 = sub_100D35AB8();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return CardButtonViewModel.init(systemImageName:title:tintColor:enabled:systemImagePadding:fontPointSize:fontWeight:axID:showChevron:height:helpText:action:)();
}

uint64_t sub_10029C114(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10029DD40(&qword_10190DC08, type metadata accessor for CapsuleOptionsSelectorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = a2[10];
  if (v4)
  {
    v6 = a2[2];
    v5 = a2[3];

    v4(v6, v5, 0);
    return sub_1000588AC(v4);
  }

  return result;
}

uint64_t sub_10029C1E8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10029DD40(&qword_10190DC08, type metadata accessor for CapsuleOptionsSelectorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return sub_10043D9BC(*(a2 + 65));
}

uint64_t sub_10029C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = sub_1000CE6B8(&qword_1019174C0) - 8;
  __chkstk_darwin(v55);
  v56 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v44 - v5;
  v6 = type metadata accessor for CardHeaderSize();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for CardHeaderTextViewModel();
  __chkstk_darwin(v17 - 8);
  v45 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  __chkstk_darwin(v19 - 8);
  v48 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000CE6B8(&qword_1019174C8) - 8;
  __chkstk_darwin(v49);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v46 = a1;
  v47 = &v44 - v23;
  v24 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v25 = type metadata accessor for MapsDesignAccessibilityString();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v27(v16, v24, v25);
  v28 = *(v26 + 56);
  v28(v16, 0, 1, v25);
  v27(v13, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v25);
  v28(v13, 0, 1, v25);
  v27(v10, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v25);
  v28(v10, 0, 1, v25);

  static HorizontalAlignment.center.getter();
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  v29 = swift_allocObject();
  v44 = xmmword_1011E1D30;
  *(v29 + 16) = xmmword_1011E1D30;
  sub_10029BE74(v46);
  *(swift_allocObject() + 16) = v44;
  v30 = objc_opt_self();

  v31 = [v30 systemBlueColor];
  static CardButtonViewModel.done(tintColor:enabled:axID:action:)();

  (*(v52 + 104))(v50, enum case for CardHeaderSize.medium(_:), v53);
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v32 = v47;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  KeyPath = swift_getKeyPath();
  v34 = v32 + *(v49 + 44);
  *v34 = KeyPath;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_1019174D0);
  v35 = sub_1000D6664(&qword_1019174D8);
  v36 = sub_10029D698();
  v58 = v35;
  v59 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v54;
  ScrollView.init(_:showsIndicators:content:)();
  v38 = v37 + *(v55 + 44);
  *v38 = xmmword_1011F7520;
  *(v38 + 16) = 6;
  v39 = v51;
  sub_10029D750(v32, v51);
  v40 = v56;
  sub_1000AF22C(v37, v56);
  v41 = v57;
  sub_10029D750(v39, v57);
  v42 = sub_1000CE6B8(&qword_1019174F8);
  sub_1000AF22C(v40, v41 + *(v42 + 48));
  sub_1000AF29C(v37);
  sub_100024F64(v32, &qword_1019174C8);
  sub_1000AF29C(v40);
  return sub_100024F64(v39, &qword_1019174C8);
}

uint64_t sub_10029C9C8()
{
  v0 = sub_1000CE6B8(&qword_1019174D8);
  __chkstk_darwin(v0);
  v2 = &v4 - v1;
  sub_1000CE6B8(&qword_101917500);
  sub_10029D7C8();
  List<>.init(content:)();
  sub_10029D698();
  View.listHasStackBehavior()();
  return sub_100024F64(v2, &qword_1019174D8);
}

uint64_t sub_10029CAD0@<X0>(uint64_t a1@<X8>)
{

  sub_1000CE6B8(&qword_101915F00);
  sub_1000CE6B8(&qword_101917528);
  sub_1000414C8(&qword_101917580, &qword_101915F00);
  sub_10029D904();
  sub_10029DBBC();
  ForEach<>.init(_:content:)();
  static Color.clear.getter();
  v2 = AnyView.init<A>(_:)();
  result = sub_1000CE6B8(&qword_101917500);
  *(a1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_10029CC10(_OWORD *a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101917548);
  __chkstk_darwin(v4);
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a1[3];
  v12[2] = a1[2];
  v12[3] = v6;
  v10 = a2;
  v11 = v12;
  sub_10029D2DC(v12, &v9[-v7]);
  sub_1000CE6B8(&qword_101917558);
  sub_10029DA80(&qword_101917540, &qword_101917548, &unk_1011F7658, sub_1001097F8);
  sub_10029DA80(&qword_101917550, &qword_101917558, &unk_1011F7668, sub_10029DAFC);
  return Section<>.init(header:content:)();
}

uint64_t sub_10029CD80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_101917568);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  swift_getKeyPath();
  v20[1] = a1;
  sub_10029DD40(&qword_10190DC08, type metadata accessor for CapsuleOptionsSelectorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v10 = *(a1 + 72);
  if (*(v10 + 16))
  {
    v11 = *a2;
    v12 = a2[1];

    v13 = sub_100297040(v11, v12);
    if (v14)
    {
      v15 = *(*(v10 + 56) + 8 * v13);

      __chkstk_darwin(v16);
      v20[-4] = v15;
      v20[-3] = a1;
      v20[-2] = a2;
      sub_1000CE6B8(&qword_101917590);
      sub_10029DC24();
      TagFlowLayout.init(content:)();

      v17 = a2[7];
      v18 = &v9[*(v6 + 36)];
      *v18 = a2[6];
      *(v18 + 1) = v17;
      v18[16] = 9;
      sub_1000F11C4(v9, a3, &qword_101917568);
      (*(v7 + 56))(a3, 0, 1, v6);
    }
  }

  return (*(v7 + 56))(a3, 1, 1, v6);
}

uint64_t sub_10029D014(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v10 = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = a3[1];
  *(v5 + 24) = *a3;
  *(v5 + 40) = v6;
  v7 = a3[3];
  *(v5 + 56) = a3[2];
  *(v5 + 72) = v7;

  sub_10029DCE4(a3, v9);
  sub_1000CE6B8(&qword_1019175A8);
  type metadata accessor for TagView();
  sub_1000414C8(&qword_1019175B0, &qword_1019175A8);
  sub_10029DD40(&qword_1019175A0, &type metadata accessor for TagView);
  sub_10029DD40(&qword_1019175B8, &type metadata accessor for TagViewModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10029D1B0(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = a3[1];
  *(v6 + 24) = *a3;
  *(v6 + 40) = v7;
  v8 = a3[3];
  *(v6 + 56) = a3[2];
  *(v6 + 72) = v8;
  *(v6 + 88) = v5;
  swift_retain_n();

  sub_10029DCE4(a3, &v10);
  return TagView.init(model:tapHandler:)();
}

uint64_t sub_10029D270(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = TagViewModel.id.getter();
  sub_10043E2FC(v2, v3, v4, v5);
}

uint64_t sub_10029D2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for SectionHeaderViewModel.Size();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000CE6B8(&qword_10190AFC8);
  v14.n128_f64[0] = __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = *(v8 + 104);
    v25 = v13;
    v20(v10, enum case for SectionHeaderViewModel.Size.small(_:), v7, v14);
    v21 = type metadata accessor for SectionHeaderViewModel.ActionType();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);

    SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
    SectionHeader.init(model:)();
    sub_1000F11C4(v16, a2, &qword_10190AFC8);
    return (*(v25 + 56))(a2, 0, 1, v12);
  }

  else
  {
    v23 = *(v13 + 56);

    return v23(a2, 1, 1, v12, v14);
  }
}

uint64_t sub_10029D5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_1000CE6B8(&qword_1019174B0);
  sub_10029C290(v3, a1 + *(v4 + 44));
  result = sub_1000CE6B8(&qword_1019174B8);
  v6 = a1 + *(result + 36);
  *v6 = 0xD000000000000016;
  *(v6 + 8) = 0x800000010122A540;
  *(v6 + 16) = 13;
  return result;
}

unint64_t sub_10029D698()
{
  result = qword_1019174E0;
  if (!qword_1019174E0)
  {
    sub_1000D6664(&qword_1019174D8);
    sub_1000414C8(&qword_1019174E8, &qword_1019174F0);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019174E0);
  }

  return result;
}

uint64_t sub_10029D750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019174C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10029D7C8()
{
  result = qword_101917508;
  if (!qword_101917508)
  {
    sub_1000D6664(&qword_101917500);
    sub_10029D880();
    sub_1000414C8(&unk_10191DB80, &qword_10190A368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917508);
  }

  return result;
}

unint64_t sub_10029D880()
{
  result = qword_101917510;
  if (!qword_101917510)
  {
    sub_1000D6664(&qword_101917518);
    sub_10029D904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917510);
  }

  return result;
}

unint64_t sub_10029D904()
{
  result = qword_101917520;
  if (!qword_101917520)
  {
    sub_1000D6664(&qword_101917528);
    sub_10029D990();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917520);
  }

  return result;
}

unint64_t sub_10029D990()
{
  result = qword_101917530;
  if (!qword_101917530)
  {
    sub_1000D6664(&qword_101917538);
    sub_10029DA80(&qword_101917540, &qword_101917548, &unk_1011F7658, sub_1001097F8);
    sub_10029DA80(&qword_101917550, &qword_101917558, &unk_1011F7668, sub_10029DAFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917530);
  }

  return result;
}

uint64_t sub_10029DA80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10029DAFC()
{
  result = qword_101917560;
  if (!qword_101917560)
  {
    sub_1000D6664(&qword_101917568);
    sub_1000414C8(&qword_101917570, &qword_101917578);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917560);
  }

  return result;
}

unint64_t sub_10029DBBC()
{
  result = qword_101917588;
  if (!qword_101917588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917588);
  }

  return result;
}

unint64_t sub_10029DC24()
{
  result = qword_101917598;
  if (!qword_101917598)
  {
    sub_1000D6664(&qword_101917590);
    sub_10029DD40(&qword_1019175A0, &type metadata accessor for TagView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917598);
  }

  return result;
}

uint64_t sub_10029DD40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10029DDA8()
{
  result = qword_1019175C0;
  if (!qword_1019175C0)
  {
    sub_1000D6664(&qword_1019174B8);
    sub_1000414C8(&qword_1019175C8, &qword_1019175D0);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019175C0);
  }

  return result;
}

void sub_10029DEA8()
{
  sub_10029DF2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Capsule();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10029DF2C()
{
  if (!qword_101917640)
  {
    type metadata accessor for RefinementsMultiSelectCellViewModel(255);
    sub_1002A05DC(&qword_101915F50, type metadata accessor for RefinementsMultiSelectCellViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101917640);
    }
  }
}

uint64_t sub_10029DFDC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for ButtonStyleConfiguration.Label();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_101917740);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = sub_1000CE6B8(&qword_101917748);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v13 = 0.85;
  }

  else
  {
    v13 = 1.0;
  }

  (*(v2 + 32))(v8, v4, v1);
  *&v8[*(v6 + 44)] = v13;
  v14 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1000F11C4(v8, v12, &qword_101917740);
  v23 = &v12[*(v10 + 44)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v24 = [objc_opt_self() tertiarySystemFillColor];
    v25 = Color.init(uiColor:)();
  }

  else
  {
    v25 = static Color.clear.getter();
  }

  v26 = v25;
  v27 = static Edge.Set.all.getter();
  v28 = v32;
  sub_1000F11C4(v12, v32, &qword_101917748);
  result = sub_1000CE6B8(&qword_101917750);
  v30 = v28 + *(result + 36);
  *v30 = v26;
  *(v30 + 8) = v27;
  return result;
}

uint64_t sub_10029E274@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2);
  v86 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_101917810);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - v8;
  v10 = type metadata accessor for RefinementBarButton(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v14 = sub_1000CE6B8(&qword_101917818);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v90 = &v73 - v16;
  v17 = sub_1000CE6B8(&qword_101917820);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v76 = &v73 - v19;
  v78 = sub_1000CE6B8(&qword_101917828);
  __chkstk_darwin(v78);
  v79 = &v73 - v20;
  v82 = sub_1000CE6B8(&qword_101917830);
  __chkstk_darwin(v82);
  v77 = &v73 - v21;
  v84 = sub_1000CE6B8(&qword_101917838);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v91 = &v73 - v22;
  v81 = sub_1000CE6B8(&qword_101917840);
  __chkstk_darwin(v81);
  v80 = &v73 - v23;
  sub_10029FFC8(v1, &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RefinementBarButton);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  sub_1002A0730(&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for RefinementBarButton);
  v92 = v1;
  sub_1000CE6B8(&qword_101917848);
  sub_1002A0848();
  v26 = v90;
  Button.init(action:label:)();
  v27 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v28 = v26 + *(v15 + 44);
  *v28 = v27;
  *(v28 + 8) = v29;
  *(v28 + 16) = v30;
  *(v28 + 24) = v31;
  *(v28 + 32) = v32;
  *(v28 + 40) = 0;
  v85 = v4;
  v33 = *(v4 + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  v36 = *(*(v35 - 8) + 104);
  v75 = v34;
  v74 = v36;
  v36(&v6[v33], v34, v35);
  __asm { FMOV            V0.2D, #16.0 }

  v73 = _Q0;
  *v6 = _Q0;
  [objc_allocWithZone(UIColor) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v42 = Color.init(uiColor:)();
  v43 = *(v1 + *(v11 + 36));
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_10029FFC8(v6, v9, &type metadata accessor for RoundedRectangle);
  v44 = &v9[*(sub_1000CE6B8(&qword_1019100A8) + 36)];
  v45 = v98;
  *v44 = v97;
  *(v44 + 1) = v45;
  *(v44 + 4) = v99;
  v46 = sub_1000CE6B8(&qword_1019100B0);
  *&v9[*(v46 + 52)] = v42;
  *&v9[*(v46 + 56)] = 256;
  v47 = static Alignment.center.getter();
  v49 = v48;
  sub_1002A092C(v6);
  v50 = &v9[*(sub_1000CE6B8(&qword_1019100B8) + 36)];
  *v50 = v47;
  v50[1] = v49;
  v51 = static Alignment.center.getter();
  v53 = v52;
  v54 = v76;
  v55 = &v76[*(v18 + 44)];
  sub_1000F11C4(v9, v55, &qword_101917810);
  v56 = (v55 + *(sub_1000CE6B8(&qword_1019100C0) + 36));
  *v56 = v51;
  v56[1] = v53;
  sub_1000F11C4(v90, v54, &qword_101917818);
  if (v43 == 1)
  {
    v57 = static Color.blue.getter();
  }

  else
  {
    v57 = static Color.clear.getter();
  }

  v58 = v57;
  v59 = static Edge.Set.all.getter();
  v60 = v79;
  sub_1000F11C4(v54, v79, &qword_101917820);
  v61 = v60 + *(v78 + 36);
  *v61 = v58;
  *(v61 + 8) = v59;
  v62 = v82;
  v63 = v77;
  v64 = &v77[*(v82 + 36)];
  v74(&v64[*(v85 + 20)], v75, v35);
  *v64 = v73;
  *&v64[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  sub_1000F11C4(v60, v63, &qword_101917828);
  v65 = sub_1002A0988();
  v66 = sub_1002A0258();
  View.buttonStyle<A>(_:)();
  sub_100024F64(v63, &qword_101917830);
  v67 = v86;
  if (v43)
  {
    static AccessibilityTraits.isSelected.getter();
    v68 = v88;
  }

  else
  {
    v93 = _swiftEmptyArrayStorage;
    sub_1002A05DC(&qword_101917710, &type metadata accessor for AccessibilityTraits);
    sub_1000CE6B8(&qword_101917718);
    sub_1000414C8(&qword_101917720, &qword_101917718);
    v68 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  v93 = v62;
  v94 = &type metadata for RefinementButtonStyle;
  v95 = v65;
  v96 = v66;
  swift_getOpaqueTypeConformance2();
  v69 = v80;
  v70 = v84;
  v71 = v91;
  View.accessibility(addTraits:)();
  (*(v87 + 8))(v67, v68);
  (*(v83 + 8))(v71, v70);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_100024F64(v69, &qword_101917840);
}

uint64_t sub_10029EC64()
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

double sub_10029ECDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v20 = 0;
  sub_10029EE0C(a1, &v14);
  v23 = v16;
  v24 = v17;
  v21 = v14;
  v22 = v15;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[1] = v15;
  v25 = v18;
  v26[0] = v14;
  sub_1002A0C68(&v21, &v13);
  sub_100024F64(v26, &qword_1019178A0);
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24;
  *&v19[71] = v25;
  *&v19[7] = v21;
  v5 = v20;
  if (*(a1 + *(type metadata accessor for RefinementBarButton(0) + 28)) == 1)
  {
    v6 = static Color.white.getter();
  }

  else
  {
    v6 = static Color.primary.getter();
  }

  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = *&v19[48];
  *(a2 + 49) = *&v19[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = *&v19[64];
  result = *v19;
  v11 = *&v19[16];
  *(a2 + 17) = *v19;
  *a2 = v4;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v5;
  v12 = *&v19[79];
  *(a2 + 33) = v11;
  *(a2 + 96) = v12;
  *(a2 + 104) = KeyPath;
  *(a2 + 112) = v7;
  return result;
}

uint64_t sub_10029EE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RefinementBarButton(0);
  v5 = v4;
  v6 = (a1 + *(v4 + 20));
  if (v6[1])
  {
    v22 = *v6;
    v23 = v6[1];
    sub_1000E5580();

    v7 = Text.init<A>(_:)();
    v9 = v8;
    v11 = v10;
    static Font.subheadline.getter();
    Text.font(_:)();

    sub_1000F0A40(v7, v9, v11 & 1);

LABEL_5:
    sub_1000CE6B8(&qword_10190FFB0);
    sub_1001C8334();
    _ConditionalContent<>.init(storage:)();
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    sub_1002A0CF0(v22, v23, v24, v25, v26);
    goto LABEL_6;
  }

  v12 = *(a1 + *(v4 + 24) + 8);
  if (v12)
  {

    Image.init(systemName:)();
    static Font.subheadline.getter();
    swift_getKeyPath();
    goto LABEL_5;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = -1;
LABEL_6:
  if (*(a1 + *(v5 + 32)) == 1)
  {
    v17 = Image.init(systemName:)();
    v18 = static Font.caption2.getter();
    KeyPath = swift_getKeyPath();

    v20 = 0x3FF0000000000000;
  }

  else
  {
    v17 = 0;
    KeyPath = 0;
    v18 = 0;
    v20 = 0;
  }

  sub_1002A0CD8(v12, v13, v14, v15, v16);
  sub_1002A0D68(v17);
  sub_1002A0DB8(v12, v13, v14, v15, v16);
  sub_1002A0E44(v17);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v18;
  *(a2 + 64) = 0;
  *(a2 + 72) = v20;
  sub_1002A0E44(v17);
  return sub_1002A0DB8(v12, v13, v14, v15, v16);
}

uint64_t sub_10029F108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for RefinementMultiSelectButton(0);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v51);
  v7 = sub_1000CE6B8(&qword_101917670);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v50 = sub_1000CE6B8(&qword_101917678);
  __chkstk_darwin(v50);
  v12 = &v49 - v11;
  v60 = sub_1000CE6B8(&qword_101917680);
  __chkstk_darwin(v60);
  v14 = &v49 - v13;
  v15 = sub_1000CE6B8(&qword_101917688);
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v59 = &v49 - v16;
  v17 = sub_1000CE6B8(&qword_101917690);
  __chkstk_darwin(v17 - 8);
  v54 = &v49 - v18;
  v19 = sub_1000CE6B8(&qword_101917698);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  sub_10029FFC8(v2, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RefinementMultiSelectButton);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  sub_1002A0730(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for RefinementMultiSelectButton);
  v61 = v2;
  sub_1000CE6B8(&qword_1019176A0);
  sub_10029FE00();
  Button.init(action:label:)();
  v24 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v25 = &v10[*(v8 + 44)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v62 == 1)
  {
    v30 = static Color.blue.getter();
  }

  else
  {
    v31 = [objc_opt_self() tertiarySystemFillColor];
    v30 = Color.init(uiColor:)();
  }

  v32 = v30;
  v33 = static Edge.Set.all.getter();
  sub_1000F11C4(v10, v12, &qword_101917670);
  v34 = &v12[*(v50 + 36)];
  *v34 = v32;
  v34[8] = v33;
  v35 = &v14[*(v60 + 36)];
  sub_10029FFC8(v2 + *(v51 + 20), v35, &type metadata accessor for Capsule);
  *(v35 + *(sub_1000CE6B8(&qword_1019176D0) + 36)) = 256;
  sub_1000F11C4(v12, v14, &qword_101917678);
  v36 = sub_1002A0030();
  v37 = sub_1002A0258();
  View.buttonStyle<A>(_:)();
  sub_100024F64(v14, &qword_101917680);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v38 = v55;
  if (v62 == 1)
  {
    static AccessibilityTraits.isSelected.getter();
    v39 = v57;
  }

  else
  {
    v62 = _swiftEmptyArrayStorage;
    sub_1002A05DC(&qword_101917710, &type metadata accessor for AccessibilityTraits);
    sub_1000CE6B8(&qword_101917718);
    sub_1000414C8(&qword_101917720, &qword_101917718);
    v39 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  v62 = v60;
  v63 = &type metadata for RefinementButtonStyle;
  v64 = v36;
  v65 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v53;
  v41 = v54;
  v42 = v59;
  View.accessibility(addTraits:)();
  (*(v56 + 8))(v38, v39);
  (*(v52 + 8))(v42, v40);
  v43 = v19[9];
  v44 = enum case for ContentSizeCategory.accessibilityLarge(_:);
  v45 = type metadata accessor for ContentSizeCategory();
  v46 = *(v45 - 8);
  (*(v46 + 104))(&v21[v43], v44, v45);
  v47 = *(v46 + 56);
  v47(&v21[v43], 0, 1, v45);
  v47(v21, 1, 1, v45);
  sub_1000AF628(v41, &v21[v19[11]]);
  *&v21[v19[10]] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190BC28);
  swift_storeEnumTagMultiPayload();
  sub_1000414C8(&qword_101917728, &qword_101917698);
  View.accessibilityIdentifier(_:)();
  return sub_100024F64(v21, &qword_101917698);
}

uint64_t sub_10029F9B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 & 1) != 0 || (v2 = *(v1 + OBJC_IVAR____TtC4Maps35RefinementsMultiSelectCellViewModel_allowsSelection), v3 = , LOBYTE(v2) = v2(v3), result = , (v2))
  {
    v5 = static Animation.easeInOut(duration:)();
    __chkstk_darwin(v5);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10029FAD0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + OBJC_IVAR____TtC4Maps35RefinementsMultiSelectCellViewModel_tapHandler);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1((v3 & 1) == 0);
}

__n128 sub_10029FB90@<Q0>(uint64_t a1@<X8>)
{
  sub_1000E5580();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v17 = Text.font(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_1000F0A40(v2, v4, v6 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18)
  {
    v13 = static Color.white.getter();
  }

  else
  {
    v13 = static Color.primary.getter();
  }

  v14 = v13;
  KeyPath = swift_getKeyPath();
  *a1 = v17;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 96) = v23;
  *(a1 + 112) = v24;
  *(a1 + 128) = v25;
  *(a1 + 32) = v19;
  *(a1 + 48) = v20;
  result = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = v22;
  *(a1 + 144) = 1;
  *(a1 + 152) = KeyPath;
  *(a1 + 160) = v14;
  return result;
}

unint64_t sub_10029FE00()
{
  result = qword_1019176A8;
  if (!qword_1019176A8)
  {
    sub_1000D6664(&qword_1019176A0);
    sub_10029FEB8();
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019176A8);
  }

  return result;
}

unint64_t sub_10029FEB8()
{
  result = qword_1019176B0;
  if (!qword_1019176B0)
  {
    sub_1000D6664(&qword_1019176B8);
    sub_10029FF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019176B0);
  }

  return result;
}

unint64_t sub_10029FF44()
{
  result = qword_1019176C0;
  if (!qword_1019176C0)
  {
    sub_1000D6664(&qword_1019176C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019176C0);
  }

  return result;
}

uint64_t sub_10029FFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002A0030()
{
  result = qword_1019176D8;
  if (!qword_1019176D8)
  {
    sub_1000D6664(&qword_101917680);
    sub_1002A00E8();
    sub_1000414C8(&qword_101917700, &qword_1019176D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019176D8);
  }

  return result;
}

unint64_t sub_1002A00E8()
{
  result = qword_1019176E0;
  if (!qword_1019176E0)
  {
    sub_1000D6664(&qword_101917678);
    sub_1002A01A0();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019176E0);
  }

  return result;
}

unint64_t sub_1002A01A0()
{
  result = qword_1019176E8;
  if (!qword_1019176E8)
  {
    sub_1000D6664(&qword_101917670);
    sub_1000414C8(&qword_1019176F0, &qword_1019176F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019176E8);
  }

  return result;
}

unint64_t sub_1002A0258()
{
  result = qword_101917708;
  if (!qword_101917708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917708);
  }

  return result;
}

unint64_t sub_1002A02D8()
{
  result = qword_101917730;
  if (!qword_101917730)
  {
    sub_1000D6664(&qword_101917738);
    sub_1000414C8(&qword_101917728, &qword_101917698);
    sub_1002A05DC(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917730);
  }

  return result;
}

unint64_t sub_1002A03DC()
{
  result = qword_101917758;
  if (!qword_101917758)
  {
    sub_1000D6664(&qword_101917750);
    sub_1002A0494();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917758);
  }

  return result;
}

unint64_t sub_1002A0494()
{
  result = qword_101917760;
  if (!qword_101917760)
  {
    sub_1000D6664(&qword_101917748);
    sub_1002A0520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917760);
  }

  return result;
}

unint64_t sub_1002A0520()
{
  result = qword_101917768;
  if (!qword_101917768)
  {
    sub_1000D6664(&qword_101917740);
    sub_1002A05DC(&qword_101910A80, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917768);
  }

  return result;
}

uint64_t sub_1002A05DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002A066C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10017F3EC();
    if (v1 <= 0x3F)
    {
      sub_10005B95C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002A0730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A07C4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1002A0848()
{
  result = qword_101917850;
  if (!qword_101917850)
  {
    sub_1000D6664(&qword_101917848);
    sub_1000414C8(&qword_101917858, &qword_101917860);
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917850);
  }

  return result;
}

uint64_t sub_1002A092C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002A0988()
{
  result = qword_101917868;
  if (!qword_101917868)
  {
    sub_1000D6664(&qword_101917830);
    sub_1002A0A40();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917868);
  }

  return result;
}

unint64_t sub_1002A0A40()
{
  result = qword_101917870;
  if (!qword_101917870)
  {
    sub_1000D6664(&qword_101917828);
    sub_1002A0AF8();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917870);
  }

  return result;
}

unint64_t sub_1002A0AF8()
{
  result = qword_101917878;
  if (!qword_101917878)
  {
    sub_1000D6664(&qword_101917820);
    sub_1002A0BB0();
    sub_1000414C8(&qword_101917898, &qword_1019100C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917878);
  }

  return result;
}

unint64_t sub_1002A0BB0()
{
  result = qword_101917880;
  if (!qword_101917880)
  {
    sub_1000D6664(&qword_101917818);
    sub_1000414C8(&qword_101917888, &qword_101917890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917880);
  }

  return result;
}

uint64_t sub_1002A0C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019178A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A0CD8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1002A0CF0(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1002A0CF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_1001C8AFC(a1, a2, a3 & 1);
  }
}

uint64_t sub_1002A0D68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002A0DB8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1002A0DD0(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1002A0DD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_1000F0A40(a1, a2, a3 & 1);
  }
}

uint64_t sub_1002A0E44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002A0E90()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for RefinementBarButton(0);
  return (*(v1 + *(v2 + 36)))(v1);
}

unint64_t sub_1002A0EE0()
{
  result = qword_1019178A8;
  if (!qword_1019178A8)
  {
    sub_1000D6664(&qword_101917840);
    sub_1000D6664(&qword_101917830);
    sub_1002A0988();
    sub_1002A0258();
    swift_getOpaqueTypeConformance2();
    sub_1002A05DC(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019178A8);
  }

  return result;
}

id sub_1002A10D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutocompleteQueryToken();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002A1214()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC4Maps17GuidesHomeContext_containees;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_10;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_10;
    }

    swift_beginAccess();
    v6 = sub_1003989D0();
    swift_endAccess();

    v7 = *(v1 + v4);
    if (v7 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_6;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_6:
      [v3 setNeedsUpdateComponent:@"cards" animated:1 completion:0];
LABEL_11:

      return;
    }

LABEL_10:
    [v3 popContext:v1 animated:1 completion:0];
    goto LABEL_11;
  }
}

unint64_t sub_1002A1354@<X0>(void *a1@<X8>)
{
  type metadata accessor for TestModalCardContaineeViewController.ModalCardViewModel();

  State.init(wrappedValue:)();
  a1[3] = &type metadata for TestModalCardContaineeViewController.ModalCard;
  result = sub_1002A27A4();
  a1[4] = result;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

int *sub_1002A13D0@<X0>(uint64_t a1@<X8>)
{
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 1;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

uint64_t sub_1002A14E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v3 = type metadata accessor for ScrollBounceBehavior();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000CE6B8(&qword_1019179D0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v21 - v6;
  v25 = sub_1000CE6B8(&qword_1019179D8);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v21 - v8;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_1019179E0);
  v10 = sub_1000D6664(&qword_1019179E8);
  v11 = sub_1000D6664(&qword_1019179F0);
  v12 = sub_1000D6664(&qword_1019179F8);
  v13 = sub_1000414C8(&qword_101917A00, &qword_1019179F8);
  v31 = v12;
  v32 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v11;
  v32 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v31 = v10;
  v32 = v15;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v10) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v10)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_1000414C8(&qword_101917A08, &qword_1019179D0);
  v16 = v24;
  View.scrollBounceBehavior(_:axes:)();
  (*(v26 + 8))(v5, v27);
  (*(v22 + 8))(v7, v16);
  v17 = sub_1000CE6B8(&qword_101917A10);
  v18 = v30;
  v19 = v30 + *(v17 + 36);
  sub_1002A21CC(v28, v29, v19);
  *(v19 + *(sub_1000CE6B8(&qword_101910FB8) + 36)) = 1;
  return (*(v23 + 32))(v18, v9, v25);
}

uint64_t sub_1002A1908@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_1000CE6B8(&qword_1019179F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = sub_1000CE6B8(&qword_1019179F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = sub_1000CE6B8(&qword_1019179E8);
  v10 = *(v9 - 8);
  v18 = v9;
  v19 = v10;
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_1000CE6B8(&qword_101917A20);
  sub_1002A282C();
  List<>.init(content:)();
  static Edge.Set.top.getter();
  v13 = sub_1000414C8(&qword_101917A00, &qword_1019179F8);
  View.listPadding(_:_:)();
  (*(v2 + 8))(v4, v1);
  v21 = v1;
  v22 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.scrollContentBackground(_:)();
  (*(v6 + 8))(v8, v5);
  v21 = v5;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = v18;
  View.listHasStackBehavior()();
  return (*(v19 + 8))(v12, v15);
}

uint64_t sub_1002A1C30()
{
  sub_1000CE6B8(&qword_101917A38);
  sub_1000414C8(&qword_101917A30, &qword_101917A38);

  return Section<>.init(content:)();
}

uint64_t sub_1002A1CD4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v53 = v3;
  v54 = v2;
  v38 = v4;
  v6 = v5;
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v51 = v8;
  v52 = v7;
  v40 = v9;
  v50 = v10;
  LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v48 = v12;
  v14 = v13;
  v45 = v15;
  LocalizedStringKey.init(stringLiteral:)();
  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v16;
  v18 = v17;
  v55 = v19;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v46 = v21;
  v47 = v20;
  v23 = v22;
  v49 = v24;
  LocalizedStringKey.init(stringLiteral:)();
  v25 = Text.init(_:tableName:bundle:comment:)();
  v42 = v26;
  v43 = v25;
  v28 = v27;
  v44 = v29;
  LocalizedStringKey.init(stringLiteral:)();
  v30 = Text.init(_:tableName:bundle:comment:)();
  v35 = v31;
  v36 = v30;
  v37 = v32 & 1;
  *(a1 + 48) = v40 & 1;
  *(a1 + 80) = v14 & 1;
  *(a1 + 112) = v18 & 1;
  *(a1 + 144) = v23 & 1;
  *(a1 + 176) = v28 & 1;
  *(a1 + 208) = v32 & 1;
  *(a1 + 212) = *&v56[3];
  *(a1 + 209) = *v56;
  *a1 = v54;
  *(a1 + 8) = v53;
  *(a1 + 16) = v38 & 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 56) = v50;
  *(a1 + 64) = v11;
  *(a1 + 72) = v48;
  *(a1 + 88) = v45;
  *(a1 + 96) = v39;
  *(a1 + 104) = v41;
  *(a1 + 120) = v55;
  *(a1 + 128) = v47;
  *(a1 + 136) = v46;
  *(a1 + 152) = v49;
  *(a1 + 160) = v43;
  *(a1 + 168) = v42;
  *(a1 + 184) = v44;
  *(a1 + 192) = v30;
  *(a1 + 200) = v31;
  *(a1 + 216) = v33;
  sub_1001C8AFC(v54, v53, v38 & 1);

  sub_1001C8AFC(v52, v51, v40 & 1);

  sub_1001C8AFC(v11, v48, v14 & 1);

  sub_1001C8AFC(v39, v41, v18 & 1);

  sub_1001C8AFC(v47, v46, v23 & 1);

  sub_1001C8AFC(v43, v42, v28 & 1);

  sub_1001C8AFC(v36, v35, v37);

  sub_1000F0A40(v36, v35, v37);

  sub_1000F0A40(v43, v42, v28 & 1);

  sub_1000F0A40(v47, v46, v23 & 1);

  sub_1000F0A40(v39, v41, v18 & 1);

  sub_1000F0A40(v11, v48, v14 & 1);

  sub_1000F0A40(v52, v51, v40 & 1);

  sub_1000F0A40(v54, v53, v38 & 1);
}

uint64_t sub_1002A21CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = type metadata accessor for CardHeaderSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v9 - 8);
  v11 = v16 - v10;
  v12 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  (*(v6 + 104))(v8, enum case for CardHeaderSize.medium(_:), v5);
  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  return LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
}

uint64_t sub_1002A24E0()
{
  sub_1000CE6B8(&qword_101917A18);
  State.wrappedValue.getter();
  v0 = *(v2 + 16);
  if (!v0)
  {
  }

  v0();

  return sub_1000588AC(v0);
}

uint64_t sub_1002A257C()
{
  sub_1000588AC(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1002A27A4()
{
  result = qword_1019179C8;
  if (!qword_1019179C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019179C8);
  }

  return result;
}

unint64_t sub_1002A282C()
{
  result = qword_101917A28;
  if (!qword_101917A28)
  {
    sub_1000D6664(&qword_101917A20);
    sub_1000414C8(&qword_101917A30, &qword_101917A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917A28);
  }

  return result;
}

unint64_t sub_1002A28E8()
{
  result = qword_101917A40;
  if (!qword_101917A40)
  {
    sub_1000D6664(&qword_101917A10);
    sub_1000D6664(&qword_1019179D0);
    sub_1000414C8(&qword_101917A08, &qword_1019179D0);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101911018, &qword_101910FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917A40);
  }

  return result;
}

void sub_1002A2D54(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v2)
  {
    if (a1)
    {
      v4 = objc_allocWithZone(PlaceCardItem);
      v5 = v2;
      v6 = [v4 initWithMapItem:a1];
      v7 = type metadata accessor for PlaceCardContextConfiguration();
      v8 = objc_allocWithZone(v7);
      v8[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
      *&v8[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v6;
      v8[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
      *&v8[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
      v8[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
      v13.receiver = v8;
      v13.super_class = v7;
      v9 = v6;
      v10 = objc_msgSendSuper2(&v13, "init");
      objc_allocWithZone(type metadata accessor for PlaceCardContext());
      v11 = v10;
      v12 = sub_100504630(v11);
      [v5 pushContext:v12 animated:1 completion:{0, v13.receiver, v13.super_class}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002A2EAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_101909B00);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = [v2 iosBasedChromeViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _currentContainerViewController];

    if (v10)
    {
      v11 = [objc_allocWithZone(MapsWebLinkPresenter) initWithPresentingViewController:v10];
      sub_1000DE5B8(a1, v7);
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v7, 1, v12) == 1)
      {
        __break(1u);
      }

      else
      {
        URL._bridgeToObjectiveC()(v14);
        v16 = v15;
        (*(v13 + 8))(v7, v12);
        [v11 presentWebURL:v16];
      }
    }
  }
}

id sub_1002A33EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_shortcutType);
  switch(v1)
  {
    case 5:
      v2 = objc_opt_self();
      v3 = &selRef_schoolStyleAttributes;
      break;
    case 3:
      v2 = objc_opt_self();
      v3 = &selRef_workStyleAttributes;
      break;
    case 2:
      v2 = objc_opt_self();
      v3 = &selRef_homeStyleAttributes;
      break;
    default:
      v2 = *(v0 + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem);
      v3 = &selRef__styleAttributes;
      break;
  }

  result = [v2 *v3];
  if (result || (result = [objc_opt_self() markerStyleAttributes]) != 0)
  {
    v5 = result;
    sub_1000CE6B8(&qword_101917C68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E1D30;
    v7 = sub_100014C84(0, &qword_101909920);
    v15[0] = NSNumber.init(integerLiteral:)(65572).super.super.isa;
    sub_1001609AC(&qword_1019219B0, &qword_101909920);
    AnyHashable.init<A>(_:)();
    v8.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
    *(inited + 96) = v7;
    *(inited + 72) = v8;
    sub_1000D0EC4(inited);
    swift_setDeallocating();
    sub_100024F64(inited + 32, &qword_101907F90);
    if ((v1 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      NSNumber.init(integerLiteral:)(65616);
      AnyHashable.init<A>(_:)();
      v14 = v7;
      *&v13 = NSNumber.init(integerLiteral:)(3);
      sub_1000D2BE0(&v13, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10012AC14(v12, v15, isUniquelyReferenced_nonNull_native);
      sub_10005BF8C(v15);
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() adornmentWithStyleAttributes:v5 additionalAttributes:isa];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}