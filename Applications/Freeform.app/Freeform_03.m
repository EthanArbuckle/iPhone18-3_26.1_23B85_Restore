uint64_t sub_10004B958(uint64_t a1)
{
  v2 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A21FC8, type metadata accessor for CRLSpotlightManager.ChangeType);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v6, type metadata accessor for CRLSpotlightManager.ChangeType);
      sub_10004BAE8(v8, v6);
      sub_100026028(v8, type metadata accessor for CRLSpotlightManager.ChangeType);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10004BAE8(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v61 = sub_1005B981C(&qword_101A00148);
  __chkstk_darwin(v61);
  v11 = &v52 - v10;
  v12 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v59 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v52 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v52 - v20;
  __chkstk_darwin(v19);
  v53 = &v52 - v22;
  v54 = v2;
  v23 = *v2;
  Hasher.init(_seed:)();
  v63 = a2;
  sub_10007995C();
  v24 = Hasher._finalize()();
  v25 = v23 + 56;
  v62 = v23;
  v26 = -1 << *(v23 + 32);
  v27 = v24 & ~v26;
  v60 = v25;
  if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_26:
    v47 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v63;
    v50 = v53;
    sub_10000C83C(v63, v53, type metadata accessor for CRLSpotlightManager.ChangeType);
    v64 = *v47;
    sub_100079B0C(v50, v27, isUniquelyReferenced_nonNull_native);
    *v47 = v64;
    sub_100025668(v49, v55, type metadata accessor for CRLSpotlightManager.ChangeType);
    return 1;
  }

  v56 = v7;
  v57 = v9;
  v28 = ~v26;
  v29 = *(v59 + 72);
  v58 = v28;
  v59 = v29;
  while (1)
  {
    v30 = v59 * v27;
    sub_10000C83C(*(v62 + 48) + v59 * v27, v21, type metadata accessor for CRLSpotlightManager.ChangeType);
    v31 = *(v61 + 48);
    sub_10000C83C(v21, v11, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_10000C83C(v63, &v11[v31], type metadata accessor for CRLSpotlightManager.ChangeType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10000C83C(v11, v18, type metadata accessor for CRLSpotlightManager.ChangeType);
    v32 = v18;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v33 = v57;
      sub_100025668(&v11[v31], v57, type metadata accessor for CRLBoardIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v40 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v41 = *&v18[v40];
        v42 = *&v18[v40 + 8];
        v43 = (v33 + v40);
        if (v41 == *v43 && v42 == v43[1])
        {
          goto LABEL_28;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100026028(v21, type metadata accessor for CRLSpotlightManager.ChangeType);
        sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
        sub_100026028(v18, type metadata accessor for CRLBoardIdentifier);
        if (v45)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      sub_100026028(v21, type metadata accessor for CRLSpotlightManager.ChangeType);
      sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
      v46 = v18;
LABEL_24:
      sub_100026028(v46, type metadata accessor for CRLBoardIdentifier);
LABEL_25:
      sub_100026028(v11, type metadata accessor for CRLSpotlightManager.ChangeType);
      v28 = v58;
      goto LABEL_4;
    }

LABEL_3:
    sub_100026028(v21, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_100026028(v32, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v11, &qword_101A00148);
LABEL_4:
    v27 = (v27 + 1) & v28;
    if (((*(v60 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_10000C83C(v11, v15, type metadata accessor for CRLSpotlightManager.ChangeType);
  v32 = v15;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_3;
  }

  v33 = v56;
  sub_100025668(&v11[v31], v56, type metadata accessor for CRLBoardIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_100026028(v21, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
    v46 = v15;
    goto LABEL_24;
  }

  v34 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v35 = *&v15[v34];
  v36 = *&v15[v34 + 8];
  v37 = (v33 + v34);
  if (v35 != *v37 || v36 != v37[1])
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100026028(v21, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v15, type metadata accessor for CRLBoardIdentifier);
    if (v39)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v18 = v15;
LABEL_28:
  sub_100026028(v21, type metadata accessor for CRLSpotlightManager.ChangeType);
  sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
  sub_100026028(v18, type metadata accessor for CRLBoardIdentifier);
LABEL_29:
  sub_100026028(v11, type metadata accessor for CRLSpotlightManager.ChangeType);
  sub_100026028(v63, type metadata accessor for CRLSpotlightManager.ChangeType);
  sub_10000C83C(*(v62 + 48) + v30, v55, type metadata accessor for CRLSpotlightManager.ChangeType);
  return 0;
}

NSString sub_10004C1D0()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD78C8 = result;
  return result;
}

uint64_t sub_10004C208(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLSpotlightManager.ChangeType(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_100C94984(a1, v7, v8, v9, v1 + v6, v11, v12);
}

id sub_10004C414()
{
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window] = 0;
  v1 = &v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_CRLUpdateInfoKey];
  strcpy(&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_CRLUpdateInfoKey], "iOSUpdateInfo");
  *(v1 + 7) = -4864;
  v2 = &v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_CRLUnsupportedDevicesKey];
  *v2 = 0xD000000000000012;
  *(v2 + 1) = 0x80000001015935E0;
  v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_boardOpenInFlight] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary] = 1;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___actionAlertController] = 1;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardPreviewImageCache] = 1;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___sidebarViewController] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_welcomeControllerDidDismissContinuation;
  v4 = sub_1005B981C(&qword_101A15A30);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_handleUserActivityTaskQueue;
  sub_1005B981C(&qword_101A15B88);
  v6 = swift_allocObject();
  *(v6 + 16) = _swiftEmptyArrayStorage;
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___stateRestorationUserActivity] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___handoffUserActivity] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAlertController] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAlertController] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CRLSceneDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_10004C6F8(id a1, void *a2, void *a3)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v336 = &v328 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v334 = &v328 - v13;
  v335 = v14;
  __chkstk_darwin(v12);
  v16 = &v328 - v15;
  v17 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v17 - 8);
  v19 = &v328 - v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    if (qword_1019F2220 != -1)
    {
LABEL_289:
      swift_once();
    }

    v31 = static OS_os_log.sceneManagement;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v33 = a1;
    v34 = [v33 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v35;
    *(inited + 40) = v37;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v38, "Connecting to unexpected scene: %@", 34, 2, inited);
    swift_setDeallocating();
    return sub_100005070(inited + 32);
  }

  v329 = a2;
  v330 = v16;
  v338 = v20;
  v341 = v3;
  v332 = v19;
  v21 = swift_allocObject();
  v342 = v21;
  *(v21 + 16) = 0;
  v340 = (v21 + 16);
  v337 = a1;
  v22 = [a3 userActivities];
  v23 = sub_100006370(0, &qword_101A13E90);
  v24 = sub_10000FDE0(&unk_101A15B30, &qword_101A13E90);
  v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v357 = a3;
  v361 = v23;
  v351 = v24;
  v352 = v25;
  v331 = v8;
  if ((v25 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v26 = v367;
    v27 = v368;
    j = v369;
    v29 = v370;
    v30 = v371;
  }

  else
  {
    v40 = -1 << *(v25 + 32);
    v27 = v25 + 56;
    j = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v26 = v25;
    v30 = (v42 & *(v25 + 56));

    v29 = 0;
  }

  v339 = j;
  v43 = (j + 64) >> 6;
  v358 = "DelegateStateRestoration";
  v348 = "ateStateRestoration";
  v349 = "";
  v353 = "rm.CRLBoardGroupActivity";
  v354 = "rm.viewModelDrag";
  v346 = "com.apple.freeform.board";
  v347 = "rm.viewModelItemHandoff";
  v350 = "com.apple.freeform.newBoard";
  v344 = "CSSearchableItemActionType";
  v345 = "com.apple.freeform.folder";
  v356 = "rm_boardRecognizerVersion";
  v343 = "NSUserActivityTypeBrowsingWeb";
  v360 = v9;
  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v44 = __CocoaSet.Iterator.next()();
    if (!v44)
    {
      break;
    }

    v412 = v44;
    swift_dynamicCast();
    j = v363[0];
    v45 = v29;
    i = v30;
    if (!v363[0])
    {
      break;
    }

    while (1)
    {
      v355 = v29;
      v48 = [j activityType];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      if (sub_100080A80(v4, v50) == 2)
      {

        goto LABEL_243;
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_243;
      }

      v29 = v45;
      if (v26 < 0)
      {
        break;
      }

LABEL_14:
      v46 = v29;
      v47 = v30;
      v45 = v29;
      if (!v30)
      {
        do
        {
          v45 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            __break(1u);
            goto LABEL_206;
          }

          if (v45 >= v43)
          {
            goto LABEL_23;
          }

          v47 = *(v27 + 8 * v45);
          ++v46;
        }

        while (!v47);
      }

      i = v30;
      v30 = ((v47 - 1) & v47);
      j = *(*(v26 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v47)))));
      if (!j)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_23:
  sub_100035F90();

  v52 = [v357 userActivities];
  v53 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v339 = v53;
  if ((v53 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v53 = v372;
    v54 = v373;
    j = v374;
    v55 = v375;
    v56 = v376;
  }

  else
  {
    v57 = -1 << *(v53 + 32);
    v54 = v53 + 56;
    j = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = (v59 & *(v53 + 56));

    v55 = 0;
  }

  v333 = j;
  v60 = (j + 64) >> 6;
  v355 = v350 | 0x8000000000000000;
  v352 = v53;
  if ((v53 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v61 = __CocoaSet.Iterator.next()();
  if (!v61 || (v412 = v61, swift_dynamicCast(), j = v363[0], v62 = v55, v63 = v56, !v363[0]))
  {
LABEL_67:
    sub_100035F90();

    v74 = [v357 userActivities];
    v75 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v360;
    v352 = v75;
    if ((v75 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v77 = v377;
      v78 = v378;
      v79 = v379;
      v80 = v380;
      v81 = v381;
    }

    else
    {
      v82 = -1 << *(v75 + 32);
      v78 = v75 + 56;
      v83 = ~v82;
      v84 = -v82;
      if (v84 < 64)
      {
        v85 = ~(-1 << v84);
      }

      else
      {
        v85 = -1;
      }

      v81 = (v85 & *(v75 + 56));

      v79 = v83;
      v80 = 0;
      v77 = v75;
    }

    v339 = v79;
    v86 = (v79 + 64) >> 6;
    v355 = v77;
    if ((v77 & 0x8000000000000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_74:
    v87 = __CocoaSet.Iterator.next()();
    if (v87)
    {
      v412 = v87;
      swift_dynamicCast();
      j = v363[0];
      v88 = v80;
      for (i = v81; j; j = *(*(v77 + 48) + ((v88 << 9) | (8 * __clz(__rbit64(v90))))))
      {
        v91 = [j activityType];
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_100080A80(v4, v93);
        if (v94 > 9 && v94 != 11)
        {
          goto LABEL_206;
        }

        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v95)
        {
          goto LABEL_243;
        }

        v80 = v88;
        v81 = i;
        v76 = v360;
        v77 = v355;
        if ((v355 & 0x8000000000000000) != 0)
        {
          goto LABEL_74;
        }

LABEL_77:
        v89 = v80;
        v90 = v81;
        v88 = v80;
        if (!v81)
        {
          while (1)
          {
            v88 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              break;
            }

            if (v88 >= v86)
            {
              goto LABEL_87;
            }

            v90 = *(v78 + 8 * v88);
            ++v89;
            if (v90)
            {
              goto LABEL_81;
            }
          }

          __break(1u);
          goto LABEL_209;
        }

LABEL_81:
        i = ((v90 - 1) & v90);
      }
    }

LABEL_87:
    sub_100035F90();

    j = [v357 userActivities];
    v96 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v352 = v96;
    if ((v96 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v97 = v382;
      v98 = v383;
      v99 = v384;
      v100 = v385;
      v101 = v386;
    }

    else
    {
      v102 = -1 << *(v96 + 32);
      v98 = v96 + 56;
      j = ~v102;
      v103 = -v102;
      if (v103 < 64)
      {
        v104 = ~(-1 << v103);
      }

      else
      {
        v104 = -1;
      }

      v101 = (v104 & *(v96 + 56));

      v99 = j;
      v100 = 0;
      v97 = v96;
    }

    v339 = v99;
    v105 = (v99 + 64) >> 6;
    v355 = v97;
    if ((v97 & 0x8000000000000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_94:
    v106 = __CocoaSet.Iterator.next()();
    if (v106)
    {
      v412 = v106;
      swift_dynamicCast();
      j = v363[0];
      v107 = v100;
      for (i = v101; j; j = *(*(v97 + 48) + ((v107 << 9) | (8 * __clz(__rbit64(v109))))))
      {
        v110 = [j activityType];
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        if (sub_100080A80(v4, v112) == 5)
        {
          goto LABEL_206;
        }

        v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v113)
        {
          goto LABEL_243;
        }

        v100 = v107;
        v101 = i;
        v76 = v360;
        v97 = v355;
        if ((v355 & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }

LABEL_97:
        v108 = v100;
        v109 = v101;
        v107 = v100;
        if (!v101)
        {
          while (1)
          {
            v107 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              break;
            }

            if (v107 >= v105)
            {
              goto LABEL_106;
            }

            v109 = *(v98 + 8 * v107);
            ++v108;
            if (v109)
            {
              goto LABEL_101;
            }
          }

          __break(1u);
          goto LABEL_276;
        }

LABEL_101:
        i = ((v109 - 1) & v109);
      }
    }

LABEL_106:
    sub_100035F90();

    j = [v357 userActivities];
    v114 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v352 = v114;
    if ((v114 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v115 = v387;
      v116 = v388;
      v117 = v389;
      v118 = v390;
      v119 = v391;
    }

    else
    {
      v120 = -1 << *(v114 + 32);
      v116 = v114 + 56;
      j = ~v120;
      v121 = -v120;
      if (v121 < 64)
      {
        v122 = ~(-1 << v121);
      }

      else
      {
        v122 = -1;
      }

      v119 = v122 & *(v114 + 56);

      v117 = j;
      v118 = 0;
      v115 = v114;
    }

    v339 = v117;
    v123 = (v117 + 64) >> 6;
    v355 = v115;
    i = v118;
    if ((v115 & 0x8000000000000000) == 0)
    {
      goto LABEL_116;
    }

LABEL_113:
    v124 = __CocoaSet.Iterator.next()();
    if (v124)
    {
      v412 = v124;
      swift_dynamicCast();
      j = v363[0];
      v125 = v119;
      if (v363[0])
      {
        while (1)
        {
          v128 = [j activityType];
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v129;

          v131 = sub_100080A80(v4, v130);
          if (v131 <= 5 && v131 >= 4 && v131 != 5)
          {

            goto LABEL_243;
          }

          v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v132)
          {
            goto LABEL_243;
          }

          v119 = v125;
          v76 = v360;
          v115 = v355;
          i = v118;
          if ((v355 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }

LABEL_116:
          v126 = v118;
          v127 = v119;
          if (!v119)
          {
            break;
          }

LABEL_120:
          v125 = (v127 - 1) & v127;
          j = *(*(v115 + 48) + ((v118 << 9) | (8 * __clz(__rbit64(v127)))));
          if (!j)
          {
            goto LABEL_151;
          }
        }

        while (1)
        {
          v118 = v126 + 1;
          if (__OFADD__(v126, 1))
          {
            break;
          }

          if (v118 >= v123)
          {
            goto LABEL_127;
          }

          v127 = *(v116 + 8 * v118);
          ++v126;
          if (v127)
          {
            goto LABEL_120;
          }
        }

LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
        goto LABEL_279;
      }

LABEL_151:
      v76 = v360;
    }

LABEL_127:
    sub_100035F90();

    v133 = objc_opt_self();
    if ([v133 crl_visionUI])
    {
      v134 = [v357 userActivities];
      v135 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v135 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v136 = v392;
        v137 = v393;
        v138 = v394;
        v139 = v395;
        v140 = v396;
      }

      else
      {
        v141 = -1 << *(v135 + 32);
        v137 = v135 + 56;
        v138 = ~v141;
        v142 = -v141;
        if (v142 < 64)
        {
          v143 = ~(-1 << v142);
        }

        else
        {
          v143 = -1;
        }

        v140 = v143 & *(v135 + 56);

        v139 = 0;
        v136 = v135;
      }

      i = v138;
      v4 = ((v138 + 64) >> 6);
      if ((v136 & 0x8000000000000000) == 0)
      {
        goto LABEL_139;
      }

      while (1)
      {
        v144 = __CocoaSet.Iterator.next()();
        if (!v144)
        {
          break;
        }

        v412 = v144;
        swift_dynamicCast();
        v145 = v363[0];
        j = v139;
        v146 = v140;
        if (!v363[0])
        {
          break;
        }

        while (1)
        {

          v139 = j;
          v140 = v146;
          if (v136 < 0)
          {
            break;
          }

LABEL_139:
          v147 = v139;
          v148 = v140;
          for (j = v139; !v148; ++v147)
          {
            j = v147 + 1;
            if (__OFADD__(v147, 1))
            {
              goto LABEL_277;
            }

            if (j >= v4)
            {
              goto LABEL_146;
            }

            v148 = *(v137 + 8 * j);
          }

          v146 = (v148 - 1) & v148;
          v145 = *(*(v136 + 48) + ((j << 9) | (8 * __clz(__rbit64(v148)))));
          if (!v145)
          {
            goto LABEL_146;
          }
        }
      }

LABEL_146:
      sub_100035F90();

      v76 = v360;
    }

    v364 = &type metadata for CRLFeatureFlags;
    v365 = sub_100004D60();
    LOBYTE(v363[0]) = 28;
    v149 = isFeatureEnabled(_:)();
    sub_100005070(v363);
    a1 = v357;
    if ((v149 & 1) != 0 && [v133 crl_visionUI])
    {
      v150 = [a1 userActivities];
      v151 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v151 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v153 = v397;
        v152 = v398;
        v154 = v399;
        v155 = v400;
        v156 = v401;
      }

      else
      {
        v157 = -1 << *(v151 + 32);
        v152 = v151 + 56;
        v154 = ~v157;
        v158 = -v157;
        if (v158 < 64)
        {
          v159 = ~(-1 << v158);
        }

        else
        {
          v159 = -1;
        }

        v156 = (v159 & *(v151 + 56));

        v155 = 0;
        v153 = v151;
      }

      if ((v153 & 0x8000000000000000) == 0)
      {
        goto LABEL_160;
      }

      while (1)
      {
        v160 = __CocoaSet.Iterator.next()();
        if (!v160)
        {
          break;
        }

        v412 = v160;
        swift_dynamicCast();
        v161 = v363[0];
        j = v155;
        v4 = v156;
        if (!v363[0])
        {
          break;
        }

        while (1)
        {

          v155 = j;
          v156 = v4;
          if (v153 < 0)
          {
            break;
          }

LABEL_160:
          v162 = v155;
          v163 = v156;
          j = v155;
          if (!v156)
          {
            do
            {
              j = v162 + 1;
              if (__OFADD__(v162, 1))
              {
                goto LABEL_278;
              }

              if (j >= ((v154 + 64) >> 6))
              {
                goto LABEL_167;
              }

              v163 = *(v152 + 8 * j);
              ++v162;
            }

            while (!v163);
          }

          v4 = ((v163 - 1) & v163);
          v161 = *(*(v153 + 48) + ((j << 9) | (8 * __clz(__rbit64(v163)))));
          if (!v161)
          {
            goto LABEL_167;
          }
        }
      }

LABEL_167:
      sub_100035F90();

      a1 = v357;
      v76 = v360;
    }

    v164 = [a1 shortcutItem];
    if (v164)
    {
      v165 = v164;
      v166 = [v164 type];
      v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v169 = v168;

      v170._countAndFlagsBits = v167;
      v170._object = v169;
      v171 = _findStringSwitchCase(cases:string:)(&off_101876708, v170);

      if (!v171)
      {
        v172 = type metadata accessor for TaskPriority();
        v173 = v332;
        (*(*(v172 - 8) + 56))(v332, 1, 1, v172);
        type metadata accessor for MainActor();
        v174 = v341;
        v175 = static MainActor.shared.getter();
        v176 = swift_allocObject();
        v176[2] = v175;
        v176[3] = &protocol witness table for MainActor;
        v176[4] = v174;
        sub_100641F30(0, 0, v173, &unk_1014A0EA8, v176);
      }

      goto LABEL_176;
    }

    v177 = [a1 URLContexts];
    sub_100006370(0, &unk_1019FCBA0);
    sub_10000FDE0(&unk_101A15B40, &unk_1019FCBA0);
    v178 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v179 = sub_10004F900(v178);

    if (v179)
    {
      v180 = [v179 URL];

      v181 = v334;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v182 = *(v76 + 32);
      v183 = v330;
      v184 = v331;
      v360 = v76 + 32;
      v361 = v182;
      (v182)(v330, v181);
      if (qword_1019F2220 != -1)
      {
        swift_once();
      }

      v185 = static OS_os_log.sceneManagement;
      sub_1005B981C(&qword_1019F54E0);
      v186 = swift_allocObject();
      *(v186 + 16) = xmmword_10146BDE0;
      *(v186 + 56) = type metadata accessor for CRLSceneDelegate();
      *(v186 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
      v187 = v341;
      *(v186 + 32) = v341;
      i = v187;
      v188 = URL.absoluteString.getter();
      v190 = v189;
      *(v186 + 96) = &type metadata for String;
      *(v186 + 104) = sub_1000053B0();
      *(v186 + 72) = v188;
      *(v186 + 80) = v190;
      v191 = static os_log_type_t.info.getter();
      sub_100005404(v185, &_mh_execute_header, v191, "Scene delegate (%p) handling opening URL: %@", 44, 2, v186);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v192 = type metadata accessor for TaskPriority();
      v193 = v332;
      (*(*(v192 - 8) + 56))(v332, 1, 1, v192);
      v194 = v336;
      (*(v76 + 16))(v336, v183, v184);
      type metadata accessor for MainActor();
      v195 = i;
      v196 = static MainActor.shared.getter();
      v197 = (*(v76 + 80) + 40) & ~*(v76 + 80);
      v198 = swift_allocObject();
      *(v198 + 2) = v196;
      *(v198 + 3) = &protocol witness table for MainActor;
      *(v198 + 4) = v195;
      v361(&v198[v197], v194, v184);
      sub_10064191C(0, 0, v193, &unk_1014A0E98, v198);

      (*(v76 + 8))(v183, v184);
      goto LABEL_176;
    }

    v201 = [a1 userActivities];
    v202 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v355 = v202;
    if ((v202 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v202 = v402;
      v203 = v403;
      v204 = v404;
      v205 = v405;
      v206 = v406;
    }

    else
    {
      v207 = -1 << *(v202 + 32);
      v203 = v202 + 56;
      v204 = ~v207;
      v208 = -v207;
      if (v208 < 64)
      {
        v209 = ~(-1 << v208);
      }

      else
      {
        v209 = -1;
      }

      v206 = (v209 & *(v202 + 56));

      v205 = 0;
    }

    v352 = v204;
    v210 = (v204 + 64) >> 6;
    v360 = v202;
    if ((v202 & 0x8000000000000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_184:
    v211 = __CocoaSet.Iterator.next()();
    if (!v211 || (v412 = v211, swift_dynamicCast(), j = v363[0], v212 = v205, a1 = v206, !v363[0]))
    {
LABEL_198:
      sub_100035F90();

      j = [v329 stateRestorationActivity];
      if (!j)
      {
        v220 = [v357 userActivities];
        v78 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v78 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v222 = v407;
          v221 = v408;
          v223 = v409;
          v224 = v410;
          v225 = v411;
        }

        else
        {
LABEL_209:
          v226 = -1 << *(v78 + 32);
          v221 = v78 + 56;
          v223 = ~v226;
          v227 = -v226;
          if (v227 < 64)
          {
            v228 = ~(-1 << v227);
          }

          else
          {
            v228 = -1;
          }

          v225 = (v228 & *(v78 + 56));

          v224 = 0;
          v222 = v78;
        }

        if ((v222 & 0x8000000000000000) == 0)
        {
          goto LABEL_216;
        }

LABEL_214:
        v229 = __CocoaSet.Iterator.next()();
        if (v229)
        {
          v412 = v229;
          swift_dynamicCast();
          v230 = v363[0];
          v231 = v224;
          v4 = v225;
          while (v230)
          {

            v224 = v231;
            v225 = v4;
            if (v222 < 0)
            {
              goto LABEL_214;
            }

LABEL_216:
            v232 = v224;
            v233 = v225;
            v231 = v224;
            if (!v225)
            {
              while (1)
              {
                v231 = v232 + 1;
                if (__OFADD__(v232, 1))
                {
                  break;
                }

                if (v231 >= ((v223 + 64) >> 6))
                {
                  goto LABEL_224;
                }

                v233 = *(v221 + 8 * v231);
                ++v232;
                if (v233)
                {
                  goto LABEL_220;
                }
              }

              __break(1u);
LABEL_291:
              __break(1u);
              goto LABEL_292;
            }

LABEL_220:
            v4 = ((v233 - 1) & v233);
            v230 = *(*(v222 + 48) + ((v231 << 9) | (8 * __clz(__rbit64(v233)))));
          }
        }

LABEL_224:
        sub_100035F90();

        v234 = [v357 userActivities];
        v235 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v235 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v222 = v412;
          v236 = v413;
          v237 = v414;
          v238 = v415;
          v239 = v416;
        }

        else
        {
          v240 = -1 << *(v235 + 32);
          v236 = v235 + 56;
          v237 = ~v240;
          v241 = -v240;
          if (v241 < 64)
          {
            v242 = ~(-1 << v241);
          }

          else
          {
            v242 = -1;
          }

          v239 = (v242 & *(v235 + 56));

          v238 = 0;
          v222 = v235;
        }

        if ((v222 & 0x8000000000000000) == 0)
        {
          goto LABEL_233;
        }

LABEL_231:
        v243 = __CocoaSet.Iterator.next()();
        if (v243)
        {
          v362 = v243;
          swift_dynamicCast();
          v244 = v363[0];
          v245 = v238;
          v4 = v239;
          while (v244)
          {

            v238 = v245;
            v239 = v4;
            if (v222 < 0)
            {
              goto LABEL_231;
            }

LABEL_233:
            v246 = v238;
            v247 = v239;
            v245 = v238;
            if (!v239)
            {
              do
              {
                v245 = v246 + 1;
                if (__OFADD__(v246, 1))
                {
                  goto LABEL_291;
                }

                if (v245 >= ((v237 + 64) >> 6))
                {
                  goto LABEL_241;
                }

                v247 = *(v236 + 8 * v245);
                ++v246;
              }

              while (!v247);
            }

            v4 = ((v247 - 1) & v247);
            v244 = *(*(v222 + 48) + ((v245 << 9) | (8 * __clz(__rbit64(v247)))));
          }
        }

LABEL_241:
        sub_100035F90();

        goto LABEL_176;
      }

      goto LABEL_281;
    }

    while (1)
    {
      i = v205;
      v215 = [j activityType];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v217 = v216;

      v218 = sub_100080A80(v4, v217);
      if (v218 <= 2 && v218 != 1 && v218 != 2)
      {
        break;
      }

      v219 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v219)
      {
        goto LABEL_280;
      }

      v205 = v212;
      v206 = a1;
      v202 = v360;
      if (v360 < 0)
      {
        goto LABEL_184;
      }

LABEL_187:
      v213 = v205;
      v214 = v206;
      v212 = v205;
      if (!v206)
      {
        while (1)
        {
          v212 = (v213 + 1);
          if (__OFADD__(v213, 1))
          {
            break;
          }

          if (v212 >= v210)
          {
            goto LABEL_198;
          }

          v214 = *(v203 + 8 * v212);
          ++v213;
          if (v214)
          {
            goto LABEL_191;
          }
        }

        __break(1u);
        goto LABEL_289;
      }

LABEL_191:
      a1 = ((v214 - 1) & v214);
      j = *(*(v202 + 48) + ((v212 << 9) | (8 * __clz(__rbit64(v214)))));
      if (!j)
      {
        goto LABEL_198;
      }
    }

LABEL_279:

LABEL_280:
    sub_100035F90();

LABEL_281:
    if (sub_100AF3B84())
    {
      if (qword_1019F2220 != -1)
      {
        swift_once();
      }

      v320 = static OS_os_log.sceneManagement;
      sub_1005B981C(&qword_1019F54E0);
      v321 = swift_allocObject();
      *(v321 + 16) = xmmword_10146C6B0;
      *(v321 + 56) = type metadata accessor for CRLSceneDelegate();
      *(v321 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
      v322 = v341;
      *(v321 + 32) = v341;
      v323 = v322;
      v324 = static os_log_type_t.info.getter();
      sub_100005404(v320, &_mh_execute_header, v324, "Scene delegate (%p) setting activity to handle: stateRestorationActivity", 72, 2, v321);
      swift_setDeallocating();
      sub_100005070(v321 + 32);
      swift_deallocClassInstance();
      v200 = v340;
      v325 = *v340;
      *v340 = j;

      v199 = 1;
      goto LABEL_244;
    }

    if (qword_1019F20B0 != -1)
    {
      swift_once();
    }

    v326 = static OS_os_log.crlWarning;
    v327 = static os_log_type_t.info.getter();
    sub_100005404(v326, &_mh_execute_header, v327, "Skipping user activity from a newer version.", 44, 2, _swiftEmptyArrayStorage);

LABEL_176:
    v199 = 0;
    v200 = v340;
    goto LABEL_244;
  }

  while (1)
  {
    i = v63;
    v66 = [j activityType];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = sub_100080A80(v67, v69);
    if (v70 <= 5)
    {
      if (v70 > 2)
      {
        if (v70 == 3)
        {
          v71 = v347;
        }

        else if (v70 == 4)
        {
          v71 = v354;
        }

        else
        {
          v71 = v353;
        }
      }

      else if (v70)
      {
        if (v70 == 1)
        {
          v71 = v348;
        }

        else
        {
          v71 = v358;
        }
      }

      else
      {
        v71 = v349;
      }

      goto LABEL_59;
    }

    if (v70 > 8)
    {
      if (v70 == 9)
      {
        v71 = v344;
        goto LABEL_59;
      }

      if (v70 == 10)
      {
        v71 = v356;
        goto LABEL_59;
      }

      v72 = v343;
    }

    else
    {
      if (v70 == 6)
      {
        v71 = v346;
        goto LABEL_59;
      }

      v72 = v350;
      if (v70 == 7)
      {
        v71 = v345;
LABEL_59:
        v4 = (v71 | 0x8000000000000000);
        goto LABEL_60;
      }
    }

    v4 = (v72 | 0x8000000000000000);
    if ((v72 | 0x8000000000000000) == v355)
    {

      goto LABEL_243;
    }

LABEL_60:
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v73)
    {
      goto LABEL_243;
    }

    v55 = v62;
    v56 = i;
    v53 = v352;
    if (v352 < 0)
    {
      goto LABEL_30;
    }

LABEL_33:
    v64 = v55;
    v65 = v56;
    v62 = v55;
    if (!v56)
    {
      break;
    }

LABEL_37:
    v63 = ((v65 - 1) & v65);
    j = *(*(v53 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v65)))));
    if (!j)
    {
      goto LABEL_67;
    }
  }

  while (1)
  {
    v62 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v62 >= v60)
    {
      goto LABEL_67;
    }

    v65 = *(v54 + 8 * v62);
    ++v64;
    if (v65)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_206:

LABEL_243:
  sub_100035F90();

  v200 = v340;
  v248 = *v340;
  *v340 = j;

  v199 = 0;
LABEL_244:
  v249 = objc_opt_self();
  v250 = [v249 firstLaunchActionForVersion:objc_msgSend(v249 userDefaultsVersion:{"currentVersion"), 0}];
  if (*v200)
  {
    v251 = *v200;
    v252 = [v251 activityType];
    v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v255 = v254;

    v256 = sub_100080A80(v253, v255);
  }

  else
  {
    v256 = 11;
  }

  v257 = swift_allocObject();
  if (v250)
  {
    if (sub_100080930(v256) == 0xD000000000000028 && (v354 | 0x8000000000000000) == v258)
    {

      goto LABEL_251;
    }

    v292 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v259 = 0;
    *(v257 + 16) = (v292 & 1) == 0;
    if ((v292 & 1) == 0)
    {
      if (qword_1019F2220 != -1)
      {
        swift_once();
      }

      v293 = static OS_os_log.sceneManagement;
      sub_1005B981C(&qword_1019F54E0);
      v294 = swift_initStackObject();
      *(v294 + 16) = xmmword_10146C6B0;
      *(v294 + 56) = type metadata accessor for CRLSceneDelegate();
      *(v294 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
      v295 = v341;
      *(v294 + 32) = v341;
      v296 = v295;
      v297 = static os_log_type_t.default.getter();
      sub_100005404(v293, &_mh_execute_header, v297, "Scene delegate (%p) will show First Launch. Updating user default.", 66, 2, v294);
      swift_setDeallocating();
      sub_100005070(v294 + 32);
      [v249 updateUserDefaultsVersion:0];
      v259 = 1;
    }
  }

  else
  {
LABEL_251:
    v259 = 0;
    *(v257 + 16) = 0;
  }

  v260 = v341;
  v222 = (*((swift_isaMask & *v341) + 0x240))(v338, v199 | v259);
  v261 = swift_allocObject();
  v261[2] = v260;
  v261[3] = v222;
  v261[4] = v257;
  v261[5] = v250;
  v262 = v222;
  v263 = v260;
  swift_retain_n();
  v361 = v262;
  v264 = v263;
  sub_10005013C();
  if (v265)
  {
    v266 = v265;
    v267 = swift_allocObject();
    v268 = v357;
    v267[2] = v357;
    v267[3] = v264;
    v267[4] = v342;
    v267[5] = sub_100C32934;
    v267[6] = v261;
    v267[7] = v257;
    v358 = v257;
    i = v266;
    v269 = *(v266 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating);
    v360 = v261;
    if (v269)
    {
      v270 = swift_allocObject();
      *(v270 + 2) = v264;
      *(v270 + 3) = v222;
      *(v270 + 4) = v257;
      *(v270 + 5) = v250;
      v356 = v270;
      swift_retain_n();
      v271 = v264;
      v272 = v361;
      v361 = v271;
      v273 = v272;

      v274 = [v268 cloudKitShareMetadata];
      v355 = v273;
      if (v274)
      {
        v4 = v274;
        v357 = v250;
        if (qword_1019F2220 != -1)
        {
LABEL_292:
          swift_once();
        }

        v275 = static OS_os_log.sceneManagement;
        sub_1005B981C(&qword_1019F54E0);
        v276 = swift_allocObject();
        *(v276 + 16) = xmmword_10146C6B0;
        *(v276 + 56) = type metadata accessor for CRLSceneDelegate();
        *(v276 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
        v277 = v361;
        *(v276 + 32) = v361;
        v278 = v277;
        v279 = static os_log_type_t.default.getter();
        sub_100005404(v275, &_mh_execute_header, v279, "Scene delegate (%p) accepting CloudKit share", 44, 2, v276);
        swift_setDeallocating();
        sub_100005070(v276 + 32);
        swift_deallocClassInstance();
        sub_100C196F0(v4);

        v257 = v358;
        v273 = v355;
LABEL_257:
        sub_100C11088(v277, v222, v257, v357);
      }

      else
      {
        v298 = v340;
        swift_beginAccess();
        v299 = *v298;
        if (*v298)
        {
          v300 = qword_1019F2220;
          v301 = v299;
          if (v300 != -1)
          {
            swift_once();
          }

          v302 = static OS_os_log.sceneManagement;
          sub_1005B981C(&qword_1019F54E0);
          v303 = swift_initStackObject();
          *(v303 + 16) = xmmword_10146C6B0;
          *(v303 + 56) = type metadata accessor for CRLSceneDelegate();
          *(v303 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
          v277 = v361;
          *(v303 + 32) = v361;
          v304 = v277;
          v305 = static os_log_type_t.default.getter();
          sub_100005404(v302, &_mh_execute_header, v305, "Scene delegate (%p) handling user activity", 42, 2, v303);
          swift_setDeallocating();
          sub_100005070(v303 + 32);
          v306 = swift_allocObject();
          v306[2] = v304;
          v306[3] = v301;
          v307 = v356;
          v306[4] = sub_100C33598;
          v306[5] = v307;
          v308 = v304;
          v309 = v301;

          sub_100C08AF8(sub_100C32A60, v306);
        }

        else
        {
          v357 = v250;
          swift_beginAccess();
          v277 = v361;
          if (*(v257 + 16) != 1)
          {
            goto LABEL_257;
          }

          if (qword_1019F2220 != -1)
          {
            swift_once();
          }

          v310 = static OS_os_log.sceneManagement;
          sub_1005B981C(&qword_1019F54E0);
          v311 = swift_initStackObject();
          *(v311 + 16) = xmmword_10146C6B0;
          *(v311 + 56) = type metadata accessor for CRLSceneDelegate();
          *(v311 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
          *(v311 + 32) = v277;
          v312 = v277;
          v313 = static os_log_type_t.default.getter();
          sub_100005404(v310, &_mh_execute_header, v313, "Scene delegate (%p) showing new board before First Launch", 57, 2, v311);
          swift_setDeallocating();
          sub_100005070(v311 + 32);
          v314 = type metadata accessor for TaskPriority();
          v315 = v332;
          (*(*(v314 - 8) + 56))(v332, 1, 1, v314);
          type metadata accessor for MainActor();
          v316 = v312;
          v317 = v356;

          v318 = static MainActor.shared.getter();
          v319 = swift_allocObject();
          v319[2] = v318;
          v319[3] = &protocol witness table for MainActor;
          v319[4] = v316;
          v319[5] = sub_100C33598;
          v319[6] = v317;
          sub_10064191C(0, 0, v315, &unk_1014A0E88, v319);
        }

        v273 = v355;
      }
    }

    else
    {
      v280 = objc_opt_self();
      swift_retain_n();
      v356 = v264;

      v281 = v268;
      v282 = [v280 defaultCenter];
      v283 = swift_allocObject();
      *(v283 + 16) = 0;
      if (qword_1019F2748 != -1)
      {
        swift_once();
      }

      v284 = qword_101AD8948;
      v285 = [objc_opt_self() mainQueue];
      v286 = swift_allocObject();
      v286[2] = v283;
      v286[3] = v282;
      v286[4] = sub_100C32940;
      v286[5] = v267;
      v365 = sub_1006EEC20;
      v366 = v286;
      v363[0] = _NSConcreteStackBlock;
      v363[1] = *"";
      v363[2] = sub_100059694;
      v364 = &unk_10189B188;
      v287 = _Block_copy(v363);

      v288 = v282;

      v289 = i;
      v290 = [v288 addObserverForName:v284 object:i queue:v285 usingBlock:v287];

      v291 = v361;

      _Block_release(v287);
      swift_beginAccess();
      *(v283 + 16) = v290;

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_10004F7A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004F7EC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004F844()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004F918(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000341AC(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1000341AC(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_1000341AC(v5, v7, v4 != 0);
  return v13;
}

id sub_10004FA54(void *a1, char a2)
{
  [a1 setActivityItemsConfigurationSource:v2];
  sub_100C0C138();
  v6 = v5;
  v7 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v5];
  [v7 setDelegate:v2];
  v8 = sub_100051290();
  [v8 setViewController:v7 forColumn:2];

  v9 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v10 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController;
  [v9 setRootViewController:*(v2 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController)];
  if ((a2 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v11 = [objc_allocWithZone(UIView) init];
  v12 = v11;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_opt_self() whiteColor];
  [v12 setBackgroundColor:v13];

  result = [*(v2 + v10) view];
  if (result)
  {
    v15 = result;
    [result addSubview:v12];

    result = [*(v2 + v10) view];
    if (result)
    {
      v16 = result;
      sub_100B480BC(v12, result);

LABEL_6:
      v17 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
      *(v2 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window) = v9;
      v18 = v9;

      v19 = String._bridgeToObjectiveC()();
      v20 = [objc_opt_self() colorNamed:v19];

      [v18 setTintColor:v20];
      [v18 makeKeyAndVisible];

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004FCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004FD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004FD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004FDFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004FE64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004FECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004FF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004FF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100050004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005006C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000500D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10005013C()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary);
  if (v2 != 1)
  {
LABEL_8:
    sub_1000505E0(v2);
    return;
  }

  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary);
    v6 = v5;
    swift_unknownObjectRelease();
    if (!v5)
    {
      v32 = v6;
      v33 = v0;
      v31 = objc_opt_self();
      v7 = [v31 _atomicIncrementAssertCount];
      v34 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v34);
      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v8 = String._bridgeToObjectiveC()();

      v9 = [v8 lastPathComponent];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v7;
      v14 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v14;
      v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v15;
      *(inited + 72) = v30;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v29;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 88;
      v17 = v34;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v30;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v26 = String._bridgeToObjectiveC()();

      [v31 handleFailureInFunction:v24 file:v25 lineNumber:88 isFatal:0 format:v26 args:v23];

      v6 = v32;
      v0 = v33;
    }

    v27 = *(v0 + v1);
    *(v0 + v1) = v5;
    v28 = v6;
    sub_1000505D0(v27);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1000505D0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1000505E0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1000505F0()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardPreviewImageCache;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardPreviewImageCache);
  if (v2 != 1)
  {
LABEL_8:
    sub_1000505E0(v2);
    return;
  }

  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardPreviewImageCache);
    v6 = v5;
    swift_unknownObjectRelease();
    if (!v5)
    {
      v32 = v6;
      v33 = v0;
      v31 = objc_opt_self();
      v7 = [v31 _atomicIncrementAssertCount];
      v34 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v34);
      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v8 = String._bridgeToObjectiveC()();

      v9 = [v8 lastPathComponent];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v7;
      v14 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v14;
      v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v15;
      *(inited + 72) = v30;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v29;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 91;
      v17 = v34;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v30;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v26 = String._bridgeToObjectiveC()();

      [v31 handleFailureInFunction:v24 file:v25 lineNumber:91 isFatal:0 format:v26 args:v23];

      v6 = v32;
      v0 = v33;
    }

    v27 = *(v0 + v1);
    *(v0 + v1) = v5;
    v28 = v6;
    sub_1000505D0(v27);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t type metadata accessor for CRLiOSFolderGridViewController()
{
  result = qword_101A23848;
  if (!qword_101A23848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100050AD0()
{
  type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
  if (v0 <= 0x3F)
  {
    sub_100050C54();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100050C54()
{
  if (!qword_101A23858)
  {
    sub_1005C4E5C(&unk_101A23860);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A23858);
    }
  }
}

uint64_t sub_100050CD0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return sub_10006B46C(v5, v7) & 1;
}

unint64_t sub_100050D2C()
{
  result = qword_101A1C6E8;
  if (!qword_101A1C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1C6E8);
  }

  return result;
}

uint64_t sub_100050DA4(uint64_t a1)
{
  type metadata accessor for CRLBatchedSearchResults();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v3[14] = _swiftEmptySetSingleton;
  v3[15] = _swiftEmptyArrayStorage;
  v3[16] = 0;
  v3[17] = 0xE000000000000000;
  *(v1 + 88) = v3;
  *(v1 + 96) = xmmword_101483770;
  sub_10000BE14(a1, &v7, &qword_101A15AD0);
  if (v8)
  {
    sub_10000CAAC(a1, &qword_101A15AD0);
    sub_100050F74(&v7, v9);
    sub_100050F74(v9, &v7);
    swift_beginAccess();
    sub_100050F8C(&v7, v1 + 16);
    swift_endAccess();
  }

  else
  {
    sub_10000CAAC(&v7, &qword_101A15AD0);
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlDefault;
    v5 = static os_log_type_t.debug.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "CRLBoardSearchHelper is being initialized without a board actor provider. Falling back to searching only board titles.", 118, 2, _swiftEmptyArrayStorage);
    sub_10000CAAC(a1, &qword_101A15AD0);
  }

  return v1;
}

uint64_t sub_100050F74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100050F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A15AD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005105C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000510BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005111C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005117C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1000511DC()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLUISplitViewController()) initWithStyle:1];
  v1 = objc_opt_self();
  v2 = v0;
  if ([v1 crl_phoneUI])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 setPreferredSplitBehavior:v3];
  sub_1000513C8();
  v5 = v4;
  [v2 setViewController:v4 forColumn:0];

  return v2;
}

id sub_100051290()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);
  }

  else
  {
    v4 = sub_1000511DC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000513C8()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___sidebarViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___sidebarViewController);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = v0;
  sub_1000514AC();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(UICollectionViewLayout) init];
    v7 = objc_allocWithZone(type metadata accessor for CRLiOSSidebarViewController());
    v8 = sub_100051AD0(v5, v6);

    *&v8[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate + 8] = &off_10189AB88;
    swift_unknownObjectWeakAssign();
    v9 = *(v3 + v1);
    *(v3 + v1) = v8;
    v8;

    v2 = 0;
LABEL_4:
    v10 = v2;
    return;
  }

  __break(1u);
}

void sub_1000514AC()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___actionAlertController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___actionAlertController);
  if (v2 != 1)
  {
LABEL_8:
    sub_100051950(v2);
    return;
  }

  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryActionAlertController);

    swift_unknownObjectRelease();
    if (!v5)
    {
      v31 = v0;
      v30 = objc_opt_self();
      v6 = [v30 _atomicIncrementAssertCount];
      v32 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v32);
      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v7 = String._bridgeToObjectiveC()();

      v8 = [v7 lastPathComponent];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v10;
      v28 = v9;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v6;
      v13 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v13;
      v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v14;
      *(inited + 72) = v29;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v28;
      *(inited + 120) = v27;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 89;
      v16 = v32;
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v29;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      [v30 handleFailureInFunction:v23 file:v24 lineNumber:89 isFatal:0 format:v25 args:v22];

      v0 = v31;
    }

    v26 = *(v0 + v1);
    *(v0 + v1) = v5;

    sub_100051940(v26);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_100051940(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100051950(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for CRLiOSSidebarViewController()
{
  result = qword_1019F6558;
  if (!qword_1019F6558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000519AC()
{
  if (!qword_1019F6568)
  {
    type metadata accessor for CRLBoardLibraryViewModel.Item(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F6568);
    }
  }
}

void sub_100051A04()
{
  sub_1000519AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100051AD0(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController] = 0;
  v5 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_selectedItem;
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_syncDidEndObserver] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_syncDidBeginObserver] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_highlightSyncDidEndObserver] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_highlightSyncDidBeginObserver] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_pinnedBottomView] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_moreOptionsBarButton] = 0;
  v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges] = 0;
  v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController] = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CRLiOSSidebarViewController();

  return objc_msgSendSuper2(&v8, "initWithCollectionViewLayout:", a2);
}

NSString sub_100051C18()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8948 = result;
  return result;
}

id sub_100051D40(uint64_t a1, void *a2, void **a3, void **a4)
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

NSString sub_100051DA0()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD7900 = result;
  return result;
}

void sub_100051E20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharingExtensionImporter);
  if (v1)
  {
    v2 = v1;
    sub_100051F38();
    sub_100053984();
    [objc_opt_self() addFilePresenter:v2];
    v3 = [objc_opt_self() defaultCenter];
    v4 = v3;
    if (qword_1019F2748 != -1)
    {
      swift_once();
      v3 = v4;
    }

    [v3 addObserver:v2 selector:? name:? object:?];
  }
}

void sub_100051F38()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSFileCoordinator) initWithFilePresenter:v1];
  v10 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemURL;
  swift_beginAccess();
  sub_10000BE14(v1 + v10, v4, &unk_1019F33C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_10000CAAC(v4, &unk_1019F33C0);
    return;
  }

  v47 = v9;
  v11 = *(v6 + 32);
  v46 = v5;
  v11(v8, v4, v5);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  URL.path(percentEncoded:)(1);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 fileExistsAtPath:v14];

  if ((v15 & 1) == 0)
  {
    v17 = [v12 defaultManager];
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    aBlock[0] = 0;
    v21 = [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:aBlock];

    if (v21)
    {
      v22 = aBlock[0];
    }

    else
    {
      v23 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  URL._bridgeToObjectiveC()(v16);
  v25 = v24;
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  v30 = swift_allocObject();
  v30[2] = sub_100053434;
  v30[3] = v29;
  aBlock[4] = sub_10005343C;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100052714;
  aBlock[3] = &unk_1018999A8;
  v31 = _Block_copy(aBlock);
  v32 = v1;

  aBlock[0] = 0;
  v33 = v47;
  [v47 coordinateReadingItemAtURL:v25 options:0 writingItemAtURL:v28 options:0 error:aBlock byAccessor:v31];
  _Block_release(v31);

  v34 = aBlock[0];
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v34)
  {
    if (qword_1019F2148 == -1)
    {
LABEL_10:
      v45 = static OS_os_log.crlSharingExtension;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v36 = sub_100B6FAF0();
      v38 = v37;
      *(inited + 56) = &type metadata for String;
      v39 = sub_1000053B0();
      *(inited + 64) = v39;
      *(inited + 32) = v36;
      *(inited + 40) = v38;
      aBlock[0] = v34;
      sub_100006370(0, &qword_1019F6BD0);
      v40 = v34;
      v41 = String.init<A>(reflecting:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v39;
      *(inited + 72) = v41;
      *(inited + 80) = v42;
      v43 = static os_log_type_t.error.getter();
      sub_100005404(v45, &_mh_execute_header, v43, "Failed to import sharing extension content due to file coordination error: %{public}@ <%@>", 90, 2, inited);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      (*(v6 + 8))(v8, v46);

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_10;
  }

  (*(v6 + 8))(v8, v46);
}

uint64_t sub_100052564()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100052714(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9(v8, v6);
  v10 = *(v3 + 8);
  v10(v6, v2);
  return (v10)(v8, v2);
}

uint64_t sub_100052850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_101A14AA8);
  v5 = __chkstk_darwin(v4 - 8);
  v64 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = v60 - v7;
  v71 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v63 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v9 - 8);
  v65 = v60 - v10;
  v78 = type metadata accessor for UUID();
  v66 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v79 = *(v13 - 8);
  __chkstk_darwin(v13);
  v77 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = objc_opt_self();
  v15 = [v76 defaultManager];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v84[0] = 0;
  v19 = [v15 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:4 error:v84];

  v20 = v84[0];
  v62 = a3;
  if (!v19)
  {
    v32 = v84[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2148 != -1)
    {
      swift_once();
    }

    *&v75 = static OS_os_log.crlSharingExtension;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v34 = Error.publicDescription.getter(v82, v83);
    v36 = v35;
    *(inited + 56) = &type metadata for String;
    v37 = sub_1000053B0();
    *(inited + 64) = v37;
    *(inited + 32) = v34;
    *(inited + 40) = v36;
    swift_getErrorValue();
    v38 = Error.fullDescription.getter(v81);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = v39;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v75, &_mh_execute_header, v40, "Error loading contents of import directory: %{public}@ <%@>", 59, 2, inited);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage[2];
    if (v23)
    {
      goto LABEL_3;
    }
  }

  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v20;

  v23 = v21[2];
  if (!v23)
  {
  }

LABEL_3:
  v70 = v12;
  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.crlSharingExtension;
  v60[2] = sub_1005B981C(&qword_1019F54E0);
  v25 = swift_initStackObject();
  v75 = xmmword_10146C6B0;
  *(v25 + 16) = xmmword_10146C6B0;
  v61 = v21;
  v26 = v21[2];
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v26;
  v27 = static os_log_type_t.debug.getter();
  v60[3] = v24;
  sub_100005404(v24, &_mh_execute_header, v27, "Begin import of %d items", 24, 2, v25);
  swift_setDeallocating();
  sub_100005070(v25 + 32);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v28 = [v76 defaultManager];
  v29 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_pendingBoardsURL;
  URL.path(percentEncoded:)(0);
  v30 = String._bridgeToObjectiveC()();

  LODWORD(v25) = [v28 fileExistsAtPath:v30];

  v31 = v65;
  v60[1] = v29;
  if (v25)
  {
    v42 = Data.init(contentsOf:options:)();
    v44 = v43;
    sub_1005B981C(&qword_101A14AC8);
    sub_100058D84();
    v76 = v44;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10002640C(v42, v76);
    v59 = v84[0];
  }

  else
  {

    v59 = _swiftEmptyArrayStorage;
  }

  v45 = sub_100E94E60(v59);

  v84[0] = v45;
  v76 = *(v79 + 16);
  v46 = v61 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
  v74 = (v66 + 6);
  *&v75 = v79 + 8;
  v67 = (v73 + 48);
  v68 = (v66 + 4);
  v79 += 16;
  v73 = *(v79 + 56);
  ++v66;
  v69 = v13;
  do
  {
    v47 = v77;
    (v76)(v77, v46, v13);
    sub_100BDFD3C(v47);
    URL.lastPathComponent.getter();
    (*v75)(v47, v13);
    UUID.init(uuidString:)();

    v48 = v78;
    if ((*v74)(v31, 1, v78) == 1)
    {
      sub_10000CAAC(v31, &qword_1019F6990);
    }

    else
    {
      v49 = v70;
      v50 = (*v68)(v70, v31, v48);
      __chkstk_darwin(v50);
      v60[-2] = v49;
      v51 = v72;
      sub_1010AAEFC(sub_100BE4D74, v52, v72);
      if ((*v67)(v51, 1, v71) == 1)
      {
        sub_10000CAAC(v51, &qword_101A14AA8);
      }

      else
      {
        v53 = v63;
        sub_100055654(v51, v63, type metadata accessor for CRLSELibraryViewModel.Item);
        v54 = v64;
        sub_100ED872C(v53, v64);
        sub_10000CAAC(v54, &qword_101A14AA8);
        v55 = v53;
        v31 = v65;
        sub_1000559C8(v55, type metadata accessor for CRLSELibraryViewModel.Item);
      }

      (*v66)(v49, v48);
      v13 = v69;
    }

    v46 += v73;
    --v23;
  }

  while (v23);

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v80 = v84[0];
  sub_1005B981C(&qword_101A14AB0);
  sub_100BE4CC0();
  v56 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v58 = v57;

  Data.write(to:options:)();
  sub_10002640C(v56, v58);
}

void sub_1000534A4()
{
  type metadata accessor for CRLSELibraryViewModel.Filter(319);
  if (v0 <= 0x3F)
  {
    sub_100053574(319, &qword_101A01448, type metadata accessor for CRLSELibraryViewModel.Board);
    if (v1 <= 0x3F)
    {
      sub_1000538D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100053574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

uint64_t sub_1000535C0()
{
  sub_100053574(319, &unk_101A016C0, type metadata accessor for CRLSELibraryViewModel.Folder);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10005364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100053704()
{
  type metadata accessor for CRLSEBoardIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_100053870(319, &qword_101A0BCE0, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000537CC()
{
  result = type metadata accessor for CRLSEBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100053870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000538D4()
{
  if (!qword_101A01450)
  {
    type metadata accessor for UUID();
    sub_1005C4E5C(&qword_101A0A320);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_101A01450);
    }
  }
}

void sub_100053984()
{
  v1 = sub_1005B981C(&unk_101A14AF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v38 - v2;
  v43 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v4 = *(v43 - 8);
  v5 = __chkstk_darwin(v43);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v38 - v7;
  v8 = _s4NodeVMa(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*&v0[OBJC_IVAR____TtC8Freeform13CRLSEImporter_boardLibrary] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v13 = *(v12 + 16);

  v14 = v0;
  v15 = v14;
  if (v13)
  {
    v16 = 0;
    v39 = v4;
    v17 = (v4 + 48);
    v18 = _swiftEmptyArrayStorage;
    v40 = v14;
    while (v16 < *(v12 + 16))
    {
      sub_1000541BC(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v11, _s4NodeVMa);
      sub_100054224(v11, v3);
      sub_1000559C8(v11, _s4NodeVMa);
      if ((*v17)(v3, 1, v43) == 1)
      {
        sub_10000CAAC(v3, &unk_101A14AF0);
      }

      else
      {
        v19 = v41;
        sub_100055654(v3, v41, type metadata accessor for CRLSELibraryViewModelItemNode);
        sub_100055654(v19, v42, type metadata accessor for CRLSELibraryViewModelItemNode);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100055A28(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_100055A28(v20 > 1, v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        sub_100055654(v42, v18 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v21, type metadata accessor for CRLSELibraryViewModelItemNode);
        v15 = v40;
      }

      if (v13 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_13:

  v11 = [objc_allocWithZone(NSFileCoordinator) initWithFilePresenter:v15];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8Freeform13CRLSEImporter_librarySnapshotURL);
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 24) = v15;
  v25 = swift_allocObject();
  v25[2] = sub_100055DC0;
  v25[3] = v24;
  aBlock[4] = sub_100055B68;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100055A5C;
  aBlock[3] = &unk_101899A20;
  v26 = _Block_copy(aBlock);
  v27 = v15;

  aBlock[0] = 0;
  [v11 coordinateWritingItemAtURL:v23 options:0 error:aBlock byAccessor:v26];
  _Block_release(v26);

  v17 = aBlock[0];
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    goto LABEL_19;
  }

  if (v17)
  {
    if (qword_1019F2148 == -1)
    {
LABEL_16:
      v28 = static OS_os_log.crlSharingExtension;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v30 = sub_100B6FAF0();
      v32 = v31;
      *(inited + 56) = &type metadata for String;
      v33 = sub_1000053B0();
      *(inited + 64) = v33;
      *(inited + 32) = v30;
      *(inited + 40) = v32;
      aBlock[0] = v17;
      sub_100006370(0, &qword_1019F6BD0);
      v34 = v17;
      v35 = String.init<A>(reflecting:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v33;
      *(inited + 72) = v35;
      *(inited + 80) = v36;
      v37 = static os_log_type_t.error.getter();
      sub_100005404(v28, &_mh_execute_header, v37, "Failed to write library snapshot data due to file coordination error : %{public}@ <%@>", 86, 2, inited);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v11 = v34;
      goto LABEL_17;
    }

LABEL_20:
    swift_once();
    goto LABEL_16;
  }

LABEL_17:
}

uint64_t sub_10005403C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000540A0()
{
  type metadata accessor for CRLSELibraryViewModel.Item(319);
  if (v0 <= 0x3F)
  {
    sub_100053870(319, &unk_101A01398, type metadata accessor for CRLSELibraryViewModelItemNode, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100054154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000541BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100054224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v142 = a1;
  v2 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v147 = &v114[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v143 = &v114[-v6];
  v126 = _s4NodeVMa(0);
  v146 = *(v126 - 8);
  __chkstk_darwin(v126);
  v8 = &v114[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v136 = &v114[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = type metadata accessor for Date();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v114[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1005B981C(&qword_1019F33D0);
  v14 = __chkstk_darwin(v13 - 8);
  v120 = &v114[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v123 = &v114[-v17];
  __chkstk_darwin(v16);
  v122 = &v114[-v18];
  v19 = type metadata accessor for CRLSEBoardIdentifier(0);
  __chkstk_darwin(v19 - 8);
  v129 = &v114[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  __chkstk_darwin(v121);
  v134 = &v114[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = _s5BoardVMa(0);
  __chkstk_darwin(v133);
  v137 = &v114[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v128);
  v119 = &v114[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v24 - 8);
  v26 = &v114[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v27);
  v29 = &v114[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1005B981C(&qword_101A14AA8);
  v31 = __chkstk_darwin(v30 - 8);
  v138 = &v114[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v34 = &v114[-v33];
  v35 = sub_1005B981C(&unk_101A14AF0);
  v36 = __chkstk_darwin(v35 - 8);
  v38 = &v114[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v144 = v3;
  v39 = v3;
  v41 = &v114[-v40];
  v42 = *(v39 + 56);
  v125 = v39 + 56;
  v124 = v42;
  v42(&v114[-v40], 1, 1, v2);
  v139 = v10;
  v140 = v34;
  v44 = *(v10 + 56);
  v43 = (v10 + 56);
  v45 = v34;
  v46 = v9;
  v135 = v44;
  v44(v45, 1, 1, v9);
  sub_1000541BC(v142, v29, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v145 = v2;
  if (!EnumCaseMultiPayload)
  {
    v48 = v140;
    sub_10000CAAC(v140, &qword_101A14AA8);
    *v48 = *v29;
    swift_storeEnumTagMultiPayload();
    v135(v48, 0, 1, v9);
LABEL_25:
    v74 = v138;
    v73 = v139;
    v75 = v141;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v119 = v9;
    v128 = v41;
    v52 = v137;
    sub_100055654(v29, v137, _s5BoardVMa);
    v53 = type metadata accessor for UUID();
    v54 = v134;
    (*(*(v53 - 8) + 16))(v134, v52, v53);
    v55 = &v52[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
    v56 = *v55;
    v57 = v55[1];
    v58 = &v54[*(v121 + 20)];
    *v58 = v56;
    v58[1] = v57;
    sub_1000541BC(v54, v129, type metadata accessor for CRLSEBoardIdentifierStorage);
    v59 = &v52[*(v133 + 24)];
    v60 = v59[1];
    v117 = *v59;

    v121 = v60;

    v152 = UUID.uuidString.getter();
    v153 = v61;

    v62._countAndFlagsBits = 58;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);

    v63._countAndFlagsBits = v56;
    v63._object = v57;
    String.append(_:)(v63);

    v150 = 58;
    v151 = 0xE100000000000000;
    v148 = 35;
    v149 = 0xE100000000000000;
    sub_100017CD8();
    v116 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v118 = v64;

    v65 = v133;
    v66 = *(v133 + 80);
    v67 = v122;
    sub_10000BE14(&v52[v66], v122, &qword_1019F33D0);
    v68 = _s5BoardV13ShareMetadataVMa(0);
    v69 = *(*(v68 - 8) + 48);
    v115 = v69(v67, 1, v68);
    sub_10000CAAC(v67, &qword_1019F33D0);
    (*(v131 + 16))(v130, &v52[*(v65 + 32)], v132);
    v133 = v66;
    v70 = &v52[v66];
    v71 = v123;
    sub_10000BE14(v70, v123, &qword_1019F33D0);
    if (v69(v71, 1, v68) == 1)
    {
      sub_10000CAAC(v71, &qword_1019F33D0);
      v72 = 1;
    }

    else
    {
      v72 = *v71;
      sub_1000559C8(v71, _s5BoardV13ShareMetadataVMa);
    }

    v79 = v120;
    sub_10000BE14(&v137[v133], v120, &qword_1019F33D0);
    if (v69(v79, 1, v68) == 1)
    {
      sub_10000CAAC(v79, &qword_1019F33D0);
      v80 = 0;
      v81 = 0xE000000000000000;
    }

    else
    {
      v82 = &v79[*(v68 + 24)];
      v80 = *v82;
      v81 = v82[1];

      sub_1000559C8(v79, _s5BoardV13ShareMetadataVMa);
    }

    sub_1000559C8(v134, type metadata accessor for CRLSEBoardIdentifierStorage);
    sub_1000559C8(v137, _s5BoardVMa);
    if (v72)
    {
      v83 = v115 != 1;
      v137 = v43;
      v48 = v140;
      sub_10000CAAC(v140, &qword_101A14AA8);
      v84 = type metadata accessor for CRLSELibraryViewModel.Board(0);
      v85 = v84[8];
      v86 = v131;
      v87 = v132;
      (*(v131 + 32))(&v48[v85], v130, v132);
      (*(v86 + 56))(&v48[v85], 0, 1, v87);
      sub_100055654(v129, v48, type metadata accessor for CRLSEBoardIdentifier);
      v88 = &v48[v84[5]];
      v89 = v118;
      *v88 = v116;
      v88[1] = v89;
      v90 = &v48[v84[6]];
      v91 = v121;
      *v90 = v117;
      v90[1] = v91;
      v92 = &v48[v84[7]];
      *v92 = v80;
      v92[1] = v81;
      v48[v84[9]] = v83;
      v46 = v119;
      swift_storeEnumTagMultiPayload();
      v135(v48, 0, 1, v46);
      v75 = v141;
      v2 = v145;
      v41 = v128;
    }

    else
    {

      (*(v131 + 8))(v130, v132);
      sub_1000559C8(v129, type metadata accessor for CRLSEBoardIdentifier);
      v48 = v140;
      v75 = v141;
      v2 = v145;
      v41 = v128;
      v46 = v119;
    }

    goto LABEL_21;
  }

  v137 = v43;
  v48 = v140;
  sub_10000CAAC(v140, &qword_101A14AA8);
  sub_100055654(v29, v26, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v49 = sub_1005B981C(&qword_1019F3480);
  v50 = (*(*(v49 - 8) + 48))(v26, 5, v49);
  if (v50 <= 2)
  {
    if (v50)
    {
      if (v50 == 1)
      {
        v51 = sub_1005B981C(&unk_101A14B10);
        (*(*(v51 - 8) + 56))(v48, 1, 5, v51);
      }

      else
      {
        v101 = sub_1005B981C(&unk_101A14B10);
        (*(*(v101 - 8) + 56))(v48, 2, 5, v101);
      }

      goto LABEL_24;
    }

    v93 = v119;
    sub_100055654(v26, v119, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_1000541BC(v93, v48, type metadata accessor for CRLFolderIdentifier);
    v94 = &v93[*(v128 + 24)];
    v95 = v41;
    v97 = *v94;
    v96 = v94[1];

    sub_1000559C8(v93, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v98 = &v48[*(type metadata accessor for CRLSELibraryViewModel.Folder(0) + 20)];
    *v98 = v97;
    v98[1] = v96;
    v41 = v95;
    v75 = v141;
    v46 = v9;
    v99 = sub_1005B981C(&unk_101A14B10);
    (*(*(v99 - 8) + 56))(v48, 0, 5, v99);
    swift_storeEnumTagMultiPayload();
    v135(v48, 0, 1, v9);
LABEL_21:
    v74 = v138;
    v73 = v139;
    goto LABEL_26;
  }

  if (v50 == 3)
  {
    v100 = sub_1005B981C(&unk_101A14B10);
    (*(*(v100 - 8) + 56))(v48, 3, 5, v100);
LABEL_24:
    swift_storeEnumTagMultiPayload();
    v135(v48, 0, 1, v9);
    goto LABEL_25;
  }

  v74 = v138;
  v73 = v139;
  v75 = v141;
  if (v50 == 4)
  {
    v76 = sub_1005B981C(&unk_101A14B10);
    (*(*(v76 - 8) + 56))(v48, 4, 5, v76);
    swift_storeEnumTagMultiPayload();
    v77 = v48;
    v78 = 0;
  }

  else
  {
    v77 = v48;
    v78 = 1;
  }

  v135(v77, v78, 1, v46);
LABEL_26:
  sub_10000BE14(v48, v74, &qword_101A14AA8);
  if ((*(v73 + 48))(v74, 1, v46) == 1)
  {
    sub_10000CAAC(v48, &qword_101A14AA8);
    sub_10000CAAC(v74, &qword_101A14AA8);
LABEL_40:
    sub_10000BE14(v41, v75, &unk_101A14AF0);
    return sub_10000CAAC(v41, &unk_101A14AF0);
  }

  v102 = v136;
  sub_100055654(v74, v136, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_10000CAAC(v41, &unk_101A14AF0);
  sub_1000541BC(v102, v41, type metadata accessor for CRLSELibraryViewModel.Item);
  v103 = _swiftEmptyArrayStorage;
  *&v41[*(v2 + 20)] = _swiftEmptyArrayStorage;
  v128 = v41;
  v124(v41, 0, 1, v2);
  v104 = *(v142 + *(v126 + 20));
  v105 = *(v104 + 16);
  result = v127;
  v107 = result;
  if (!v105)
  {
LABEL_39:
    sub_1000559C8(v136, type metadata accessor for CRLSELibraryViewModel.Item);
    sub_10000CAAC(v140, &qword_101A14AA8);

    v113 = *(v2 + 20);
    v41 = v128;

    *&v41[v113] = v103;
    v75 = v141;
    goto LABEL_40;
  }

  v108 = 0;
  v109 = (v144 + 48);
  while (v108 < *(v104 + 16))
  {
    sub_1000541BC(v104 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v108, v8, _s4NodeVMa);
    sub_100054224(v8);
    sub_1000559C8(v8, _s4NodeVMa);
    if ((*v109)(v38, 1, v2) == 1)
    {
      result = sub_10000CAAC(v38, &unk_101A14AF0);
    }

    else
    {
      v110 = v143;
      sub_100055654(v38, v143, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100055654(v110, v147, type metadata accessor for CRLSELibraryViewModelItemNode);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_100055A28(0, v103[2] + 1, 1, v103);
      }

      v112 = v103[2];
      v111 = v103[3];
      if (v112 >= v111 >> 1)
      {
        v103 = sub_100055A28(v111 > 1, v112 + 1, 1, v103);
      }

      v103[2] = v112 + 1;
      result = sub_100055654(v147, v103 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v112, type metadata accessor for CRLSELibraryViewModelItemNode);
      v2 = v145;
    }

    if (v105 == ++v108)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005559C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLSELibraryViewModel.Item(0);
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

uint64_t sub_100055654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000556D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLSELibraryViewModel.Item(0);
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

uint64_t sub_1000557B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000558A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100055968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000559C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100055A5C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100055B98()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_1005B981C(&qword_101A017B8);
  sub_100055DC8();
  v0 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v2 = v1;
  Data.write(to:options:)();
  sub_10002640C(v0, v2);
}

unint64_t sub_100055DC8()
{
  result = qword_101A14B00;
  if (!qword_101A14B00)
  {
    sub_1005C4E5C(&qword_101A017B8);
    sub_100055EC4(&qword_101A017D8, type metadata accessor for CRLSELibraryViewModelItemNode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14B00);
  }

  return result;
}

uint64_t sub_100055E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100055EC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100055F0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100055F54(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A017D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100056248();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for CRLSELibraryViewModel.Item(0);
  sub_10005629C(&qword_101A14AC0, type metadata accessor for CRLSELibraryViewModel.Item);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CRLSELibraryViewModelItemNode(0) + 20));
    v10[15] = 1;
    sub_1005B981C(&qword_101A017B8);
    sub_100057BF4(&qword_101A14B00, &qword_101A017D8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100056198()
{
  result = qword_101A01BC0;
  if (!qword_101A01BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01BC0);
  }

  return result;
}

unint64_t sub_1000561F0()
{
  result = qword_101A01BC8;
  if (!qword_101A01BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01BC8);
  }

  return result;
}

unint64_t sub_100056248()
{
  result = qword_101A017A8;
  if (!qword_101A017A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A017A8);
  }

  return result;
}

uint64_t sub_10005629C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000562EC()
{
  result = qword_1019F4760;
  if (!qword_1019F4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4760);
  }

  return result;
}

uint64_t sub_100056360(void *a1)
{
  v2 = sub_1005B981C(&qword_101A01858);
  v65 = *(v2 - 8);
  v66 = v2;
  __chkstk_darwin(v2);
  v63 = &v52 - v3;
  v4 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v4 - 8);
  v68 = &v52 - v5;
  v69 = type metadata accessor for UUID();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A01860);
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v60 = &v52 - v8;
  v58 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v58);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_101A01868);
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v55 = &v52 - v11;
  v54 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v54);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&qword_101A01870);
  v53 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1005B981C(&qword_101A01878);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v21 = &v52 - v20;
  sub_100020E58(a1, a1[3]);
  sub_1000571B8();
  v73 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10005720C(v70, v19, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = v59;
      sub_100057C90(v19, v59, type metadata accessor for CRLSELibraryViewModel.Board);
      v78 = 2;
      sub_1007F5A50();
      v28 = v60;
      v30 = v73;
      v29 = v74;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10005629C(&qword_101A01880, type metadata accessor for CRLSELibraryViewModel.Board);
      v31 = v62;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v61 + 8))(v28, v31);
      sub_100058BFC(v27, type metadata accessor for CRLSELibraryViewModel.Board);
      return (*(v72 + 8))(v30, v29);
    }

    else
    {
      v36 = sub_1005B981C(&unk_101A14AE0);
      v37 = &v19[*(v36 + 48)];
      v39 = *v37;
      v38 = v37[1];
      v62 = v39;
      v70 = v38;
      v40 = *(v36 + 64);
      v41 = v67;
      v42 = v64;
      v43 = v69;
      (*(v67 + 32))(v64, v19, v69);
      v44 = v68;
      sub_1007F5AF8(&v19[v40], v68);
      v82 = 3;
      sub_1007F59FC();
      v45 = v63;
      v47 = v73;
      v46 = v74;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v81 = 0;
      sub_10005629C(&qword_1019F43C0, &type metadata accessor for UUID);
      v48 = v66;
      v49 = v71;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v49)
      {

        (*(v65 + 8))(v45, v48);
        sub_10000CAAC(v44, &qword_101A0A320);
        (*(v41 + 8))(v42, v43);
        return (*(v72 + 8))(v47, v46);
      }

      else
      {
        v80 = 1;
        KeyedEncodingContainer.encode(_:forKey:)();

        v79 = 2;
        type metadata accessor for Date();
        sub_10005629C(&qword_101A19AD0, &type metadata accessor for Date);
        v50 = v68;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v51 = v69;
        (*(v65 + 8))(v45, v48);
        sub_10000CAAC(v50, &qword_101A0A320);
        (*(v41 + 8))(v42, v51);
        return (*(v72 + 8))(v73, v74);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100057C90(v19, v13, type metadata accessor for CRLSELibraryViewModel.Filter);
    v77 = 1;
    sub_100057CF8();
    v32 = v55;
    v33 = v73;
    v34 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10005629C(&qword_101A01888, type metadata accessor for CRLSELibraryViewModel.Filter);
    v35 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v32, v35);
    sub_100058BFC(v13, type metadata accessor for CRLSELibraryViewModel.Filter);
    return (*(v72 + 8))(v33, v34);
  }

  else
  {
    v23 = *v19;
    v76 = 0;
    sub_100057274();
    v25 = v73;
    v24 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v75 = v23;
    sub_100057484();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v53 + 8))(v16, v14);
    return (*(v72 + 8))(v25, v24);
  }
}

unint64_t sub_100056E08()
{
  result = qword_101A01BA0;
  if (!qword_101A01BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01BA0);
  }

  return result;
}

unint64_t sub_100056E60()
{
  result = qword_101A01BA8;
  if (!qword_101A01BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01BA8);
  }

  return result;
}

unint64_t sub_100056EC8()
{
  result = qword_101A01B90;
  if (!qword_101A01B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B90);
  }

  return result;
}

unint64_t sub_100056F20()
{
  result = qword_101A01B98;
  if (!qword_101A01B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B98);
  }

  return result;
}

unint64_t sub_100056F88()
{
  result = qword_101A01B80;
  if (!qword_101A01B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B80);
  }

  return result;
}

unint64_t sub_100056FE0()
{
  result = qword_101A01B88;
  if (!qword_101A01B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B88);
  }

  return result;
}

unint64_t sub_100057048()
{
  result = qword_101A01B70;
  if (!qword_101A01B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B70);
  }

  return result;
}

unint64_t sub_1000570A0()
{
  result = qword_101A01B78;
  if (!qword_101A01B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B78);
  }

  return result;
}

unint64_t sub_100057108()
{
  result = qword_101A01BB0;
  if (!qword_101A01BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01BB0);
  }

  return result;
}

unint64_t sub_100057160()
{
  result = qword_101A01BB8;
  if (!qword_101A01BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01BB8);
  }

  return result;
}

unint64_t sub_1000571B8()
{
  result = qword_101A01818;
  if (!qword_101A01818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01818);
  }

  return result;
}

uint64_t sub_10005720C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100057274()
{
  result = qword_101A01848;
  if (!qword_101A01848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01848);
  }

  return result;
}

uint64_t sub_1000572C8()
{
  v1 = 0x7972617262696CLL;
  v2 = 0x6472616F62;
  if (*v0 != 2)
  {
    v2 = 0x42676E69646E6570;
  }

  if (*v0)
  {
    v1 = 0x7265746C6966;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t storeEnumTagSinglePayload for CRLChunkedRealTimeMessageBufferError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
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
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLChunkedRealTimeMessageBufferError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

unint64_t sub_100057484()
{
  result = qword_101A01890;
  if (!qword_101A01890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01890);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for CRLAssetReferrerIdentifier.BoardCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLAssetReferrerIdentifier.BoardCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_1000575A4(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1005B981C(&qword_101A01A10);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1005B981C(&qword_101A01A18);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1005B981C(&qword_101A01A20);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100020E58(a1, a1[3]);
  sub_100057ABC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1007F64A0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_100057B10();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_10005788C()
{
  result = qword_101A01AA0;
  if (!qword_101A01AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AA0);
  }

  return result;
}

unint64_t sub_1000578E4()
{
  result = qword_101A01AA8;
  if (!qword_101A01AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AA8);
  }

  return result;
}

unint64_t sub_10005794C()
{
  result = qword_101A01A90;
  if (!qword_101A01A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A90);
  }

  return result;
}

unint64_t sub_1000579A4()
{
  result = qword_101A01A98;
  if (!qword_101A01A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A98);
  }

  return result;
}

unint64_t sub_100057A0C()
{
  result = qword_101A01AB0;
  if (!qword_101A01AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AB0);
  }

  return result;
}

unint64_t sub_100057A64()
{
  result = qword_101A01AB8;
  if (!qword_101A01AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AB8);
  }

  return result;
}

unint64_t sub_100057ABC()
{
  result = qword_101A019F8;
  if (!qword_101A019F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A019F8);
  }

  return result;
}

unint64_t sub_100057B10()
{
  result = qword_101A01A08;
  if (!qword_101A01A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A08);
  }

  return result;
}

uint64_t sub_100057B64()
{
  if (*v0)
  {
    return 0x646C6F4672657375;
  }

  else
  {
    return 0x69466D6574737973;
  }
}

uint64_t sub_100057BC0()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_100057BF4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A017B8);
    sub_10005629C(a2, type metadata accessor for CRLSELibraryViewModelItemNode);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100057CF8()
{
  result = qword_101A01838;
  if (!qword_101A01838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01838);
  }

  return result;
}

uint64_t sub_100057D4C(void *a1)
{
  v2 = sub_1005B981C(&qword_101A01978);
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v36 - v3;
  v48 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v48);
  v49 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A01980);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v36 - v6;
  v7 = sub_1005B981C(&qword_101A01988);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v36 - v8;
  v9 = sub_1005B981C(&qword_101A01990);
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1005B981C(&qword_101A01998);
  v38 = *(v12 - 8);
  v39 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = sub_1005B981C(&qword_101A019A0);
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1005B981C(&qword_101A019A8);
  v53 = *(v21 - 8);
  v54 = v21;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  sub_100020E58(a1, a1[3]);
  sub_100058A74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10005720C(v55, v20, type metadata accessor for CRLSELibraryViewModel.Filter);
  v24 = sub_1005B981C(&unk_101A14B10);
  v25 = (*(*(v24 - 8) + 48))(v20, 5, v24);
  if (v25 <= 2)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        v56 = 0;
        sub_100058AC8();
        v26 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v37 + 8))(v17, v15);
        return (*(v53 + 8))(v23, v26);
      }

      v57 = 1;
      sub_100058C5C();
      v35 = v54;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v14, v39);
      return (*(v53 + 8))(v23, v35);
    }

    v32 = v49;
    sub_100057C90(v20, v49, type metadata accessor for CRLSELibraryViewModel.Folder);
    v61 = 5;
    sub_1007F5C64();
    v33 = v50;
    v29 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10005629C(&qword_101A019B0, type metadata accessor for CRLSELibraryViewModel.Folder);
    v34 = v52;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v51 + 8))(v33, v34);
    sub_100058BFC(v32, type metadata accessor for CRLSELibraryViewModel.Folder);
    return (*(v53 + 8))(v23, v29);
  }

  if (v25 != 3)
  {
    if (v25 == 4)
    {
      v59 = 3;
      sub_100058CB0();
      v28 = v42;
      v29 = v54;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v43;
      v30 = v44;
    }

    else
    {
      v60 = 4;
      sub_1007F5CB8();
      v28 = v45;
      v29 = v54;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v46;
      v30 = v47;
    }

    (*(v31 + 8))(v28, v30);
    return (*(v53 + 8))(v23, v29);
  }

  v58 = 2;
  sub_100058D04();
  v35 = v54;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v40 + 8))(v11, v41);
  return (*(v53 + 8))(v23, v35);
}

unint64_t sub_100058544()
{
  result = qword_101A01B20;
  if (!qword_101A01B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B20);
  }

  return result;
}

unint64_t sub_10005859C()
{
  result = qword_101A01B28;
  if (!qword_101A01B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B28);
  }

  return result;
}

unint64_t sub_100058604()
{
  result = qword_101A01B10;
  if (!qword_101A01B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B10);
  }

  return result;
}

unint64_t sub_10005865C()
{
  result = qword_101A01B18;
  if (!qword_101A01B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B18);
  }

  return result;
}

unint64_t sub_1000586C4()
{
  result = qword_101A01B00;
  if (!qword_101A01B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B00);
  }

  return result;
}

unint64_t sub_10005871C()
{
  result = qword_101A01B08;
  if (!qword_101A01B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B08);
  }

  return result;
}

unint64_t sub_100058784()
{
  result = qword_101A01AF0;
  if (!qword_101A01AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AF0);
  }

  return result;
}

unint64_t sub_1000587DC()
{
  result = qword_101A01AF8;
  if (!qword_101A01AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AF8);
  }

  return result;
}

unint64_t sub_100058844()
{
  result = qword_101A01AE0;
  if (!qword_101A01AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AE0);
  }

  return result;
}

unint64_t sub_10005889C()
{
  result = qword_101A01AE8;
  if (!qword_101A01AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AE8);
  }

  return result;
}

unint64_t sub_100058904()
{
  result = qword_101A01AD0;
  if (!qword_101A01AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AD0);
  }

  return result;
}

unint64_t sub_10005895C()
{
  result = qword_101A01AD8;
  if (!qword_101A01AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AD8);
  }

  return result;
}

unint64_t sub_1000589C4()
{
  result = qword_101A01B30;
  if (!qword_101A01B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B30);
  }

  return result;
}

unint64_t sub_100058A1C()
{
  result = qword_101A01B38;
  if (!qword_101A01B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B38);
  }

  return result;
}

unint64_t sub_100058A74()
{
  result = qword_101A01938;
  if (!qword_101A01938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01938);
  }

  return result;
}

unint64_t sub_100058AC8()
{
  result = qword_101A01970;
  if (!qword_101A01970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01970);
  }

  return result;
}

uint64_t sub_100058B1C()
{
  v1 = *v0;
  v2 = 0x6472616F426C6C61;
  v3 = 0x646572616873;
  v4 = 0x796C746E65636572;
  if (v1 != 4)
  {
    v4 = 0x7265646C6F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73746E65636572;
  if (v1 != 1)
  {
    v5 = 0x657469726F766166;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100058BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100058C5C()
{
  result = qword_101A01968;
  if (!qword_101A01968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01968);
  }

  return result;
}

unint64_t sub_100058CB0()
{
  result = qword_101A01958;
  if (!qword_101A01958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01958);
  }

  return result;
}

unint64_t sub_100058D04()
{
  result = qword_101A01960;
  if (!qword_101A01960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01960);
  }

  return result;
}

unint64_t sub_100058D84()
{
  result = qword_101A14AD0;
  if (!qword_101A14AD0)
  {
    sub_1005C4E5C(&qword_101A14AC8);
    sub_100055EC4(&qword_101A017B0, type metadata accessor for CRLSELibraryViewModel.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14AD0);
  }

  return result;
}

uint64_t sub_100058F84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058FC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100059078(a1, v4, v5, v6);
}

uint64_t sub_100059078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = type metadata accessor for Date();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Session.Kind();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v4[23] = swift_task_alloc();
  v8 = sub_1005B981C(&qword_1019FBEE0);
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v4[26] = *(v9 + 64);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  sub_1005B981C(&qword_1019FBE50);
  v10 = swift_task_alloc();
  v4[29] = v10;
  v11 = swift_task_alloc();
  v4[30] = v11;
  *v11 = v4;
  v11[1] = sub_1000621C4;

  return sub_100059328(v10);
}

uint64_t sub_100059328(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for UUID();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  sub_1005B981C(&qword_1019FBE50);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6990);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100059464, 0, 0);
}

uint64_t sub_100059464()
{
  if (qword_1019F1530 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD6368;
  *(v0 + 248) = qword_101AD6368;

  return _swift_task_switch(sub_10005A444, v1, 0);
}

uint64_t sub_1000594FC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_1019F1528 != -1)
  {
    swift_once();
  }

  v13[3] = &type metadata for AASUserInfoDefaultDataStoreProvider;
  v13[4] = &off_101885458;
  v13[0] = v0;
  v13[1] = qword_101AD6360;
  v11 = &type metadata for AASDefaultNowProvider;
  v12 = &off_101885448;
  type metadata accessor for AASUserInfoManager();
  v1 = swift_allocObject();
  v2 = sub_10002A948(v13, &type metadata for AASUserInfoDefaultDataStoreProvider);
  __chkstk_darwin(v2);
  swift_cvw_initWithCopy(v9, v3);
  sub_10002A948(v10, &type metadata for AASDefaultNowProvider);
  v4 = v9[0];
  v5 = v9[1];
  swift_retain_n();
  v6 = v0;
  v7 = sub_100059ECC(v4, v5, v1);

  sub_100005070(v10);
  result = sub_100005070(v13);
  qword_101AD6368 = v7;
  return result;
}

uint64_t sub_100059694(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_100059788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = a4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a5;
  v10 = _Block_copy(aBlock);

  [a2 addOperationWithBlock:v10];
  _Block_release(v10);
}

uint64_t sub_100059884()
{
  type metadata accessor for AASKeychainDataStore();
  result = swift_allocObject();
  qword_101AD6360 = result;
  return result;
}

void sub_1000598E8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(sub_100059A4C(0, 0xE000000000000000, a2 & 1) + 16))
    {
      v5 = objc_opt_self();
      v6 = String._bridgeToObjectiveC()();
      sub_100006370(0, &qword_1019F54D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v5 sendEventInDomain:v6 lazily:1 eventPayload:isa];
    }

    else
    {
    }
  }
}

unint64_t sub_100059A4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_dataStore);
  sub_100015D98();
  v7 = sub_100043E40(&_swiftEmptyArrayStorage);
  v8 = *(v6 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_userDefaults);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 stringForKey:v9];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100015188();
    if (v11)
    {
      v38 = a3;

      v12 = [objc_opt_self() defaultManager];
      v13 = [v12 ubiquityIdentityToken];

      if (v13)
      {
        swift_unknownObjectRelease();
      }

      sub_1005B981C(&qword_1019FD9F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101478A90;
      v15 = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_deviceIDAnalyticsKey + 8);
      *(inited + 32) = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_deviceIDAnalyticsKey);
      *(inited + 40) = v15;
      v16 = objc_allocWithZone(NSString);

      v17 = String._bridgeToObjectiveC()();

      v18 = [v16 initWithString:v17];

      *(inited + 48) = v18;
      v19 = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_userIDAnalyticsKey + 8);
      *(inited + 56) = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_userIDAnalyticsKey);
      *(inited + 64) = v19;
      v20 = objc_allocWithZone(NSString);

      v21 = String._bridgeToObjectiveC()();

      v22 = [v20 initWithString:v21];

      *(inited + 72) = v22;
      v23 = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_supportsEndToEndEncryptionKey + 8);
      *(inited + 80) = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_supportsEndToEndEncryptionKey);
      *(inited + 88) = v23;
      sub_100006370(0, &qword_1019FF3E0);
      v24 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption;
      swift_beginAccess();
      v25 = *(v6 + v24);

      *(inited + 96) = NSNumber.init(BOOLeanLiteral:)(v25);
      v26 = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_overriddenUserIDAnalyticsKey + 8);
      *(inited + 104) = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_overriddenUserIDAnalyticsKey);
      *(inited + 112) = v26;
      v27 = objc_allocWithZone(NSString);

      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 initWithString:v28];

      *(inited + 120) = v29;
      v30 = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_hadiCloudAccountAnalyticsKey + 8);
      *(inited + 128) = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_hadiCloudAccountAnalyticsKey);
      *(inited + 136) = v30;

      *(inited + 144) = NSNumber.init(BOOLeanLiteral:)(v13 != 0);
      v31 = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_hadQuotaViolationKey + 8);
      *(inited + 152) = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_hadQuotaViolationKey);
      *(inited + 160) = v31;

      *(inited + 168) = NSNumber.init(BOOLeanLiteral:)(v38 & 1);
      v7 = sub_100043E40(inited);
      swift_setDeallocating();
      sub_1005B981C(&qword_1019FD9F8);
      swift_arrayDestroy();
      return v7;
    }
  }

  if (qword_1019F2110 != -1)
  {
    swift_once();
  }

  v32 = static OS_os_log.crlAnalytics;
  sub_1005B981C(&qword_1019F54E0);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_10146C6B0;
  v35 = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_appForegroundedAnalyticsDomain);
  v34 = *(v4 + OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_appForegroundedAnalyticsDomain + 8);
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_1000053B0();
  *(v33 + 32) = v35;
  *(v33 + 40) = v34;

  v36 = static os_log_type_t.debug.getter();
  sub_100005404(v32, &_mh_execute_header, v36, "Error generating payload for event: %@", 38, 2, v33);
  swift_setDeallocating();
  sub_100005070(v33 + 32);
  return v7;
}

uint64_t sub_100059ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v12[-v7];
  v15[3] = &type metadata for AASUserInfoDefaultDataStoreProvider;
  v15[4] = &off_101885458;
  v15[0] = a1;
  v15[1] = a2;
  v13 = &type metadata for AASDefaultNowProvider;
  v14 = &off_101885448;
  swift_defaultActor_initialize();
  *(a3 + 112) = 0xD00000000000001ELL;
  *(a3 + 120) = 0x8000000101563B50;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  sub_10000630C(v15, a3 + 128);
  sub_10000630C(v12, a3 + 168);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;

  sub_10064191C(0, 0, v8, &unk_101479A58, v10);

  sub_100005070(v12);
  sub_100005070(v15);
  return a3;
}

uint64_t sub_10005A070()
{
  v1 = sub_1005B981C(&qword_1019FBE50);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for AASUserInfo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005A4B8(v3);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_10005EC6C(v3, v7);
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = static OS_os_log.crlAppAnalytics;
    v14 = static os_log_type_t.default.getter();
    sub_100005404(v13, &_mh_execute_header, v14, "Checking reset state", 20, 2, _swiftEmptyArrayStorage);

    sub_10005EE14(v7);
    if (sub_10005F1A4())
    {
      if (![*sub_100020E58((v0 + 128) *(v0 + 152))])
      {
        return sub_10005EC10(v7);
      }

      v15 = static OS_os_log.crlAppAnalytics;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = 0xD00000000000001CLL;
      *(inited + 40) = 0x8000000101563B30;
      v17 = v15;
      v18 = static os_log_type_t.default.getter();
      sub_100005404(v17, &_mh_execute_header, v18, "%@:  reset override switch enabled", 34, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
    }

    sub_10074B5F4();
    return sub_10005EC10(v7);
  }

  sub_10000CAAC(v3, &qword_1019FBE50);
  sub_10074B284();
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static OS_os_log.crlAppAnalytics;
  sub_1005B981C(&qword_1019F54E0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10146C6B0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000053B0();
  *(v9 + 32) = 0xD000000000000011;
  *(v9 + 40) = 0x8000000101563AC0;
  v10 = v8;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "%@:  first launch of Freeform is detected", 41, 2, v9);

  swift_setDeallocating();
  return sub_100005070(v9 + 32);
}

uint64_t sub_10005A444()
{
  v1 = *(v0 + 184);
  sub_10005A070();
  sub_10005A4B8(v1);

  return _swift_task_switch(sub_10005F9C4, 0, 0);
}

uint64_t sub_10005A4B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019FBE50);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = *sub_100020E58((v1 + 128), *(v1 + 152));
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 ubiquityIdentityToken];

  if (v8)
  {
    swift_unknownObjectRelease();

    v9 = &off_101885218;
  }

  else
  {
    v6;
    v9 = &off_1018850C8;
  }

  swift_getObjectType();
  v10 = (v9[1])();
  v12 = v11;
  swift_unknownObjectRelease();
  if (v12 >> 60 == 15)
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = static OS_os_log.crlAppAnalytics;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v15, "Error decoding UserInfo", 23, 2, _swiftEmptyArrayStorage);

    v16 = type metadata accessor for AASUserInfo();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v13 = type metadata accessor for AASUserInfo();
    sub_10005C8B0(&qword_1019FE1F8, type metadata accessor for AASUserInfo);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100025870(v10, v12);

    v17 = *(*(v13 - 8) + 56);
    v17(v5, 0, 1, v13);
    sub_10005EC6C(v5, a1);
    return (v17)(a1, 0, 1, v13);
  }
}

uint64_t sub_10005A840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10005A8F4(a1, v4, v5, v6);
}

id sub_10005A95C()
{
  v1 = type metadata accessor for CRLiOSFolderGridViewController();
  v21.receiver = v0;
  v21.super_class = v1;
  objc_msgSendSuper2(&v21, "viewDidLoad");
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  [result setPreservesSuperviewLayoutMargins:1];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [result setAlwaysBounceVertical:1];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = [objc_allocWithZone(type metadata accessor for CRLiOSFolderGridViewController.SingleContinuousTouchGestureRecognizer()) initWithTarget:v0 action:"didRecognizeSingleContinuousTouchGesture:"];
  [v5 addGestureRecognizer:v6];

  v7 = sub_10005AEC0();
  v8 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout];
  *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout] = v7;
  v9 = v7;

  sub_10005D170();
  v10 = sub_100062B9C();
  v11 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout];
  *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout] = v10;
  v12 = v10;

  sub_100062F1C();
  sub_100062DC0();
  sub_10005C940();
  sub_100064B8C(0);
  sub_10006D41C();
  sub_10006E9B4();
  result = [v0 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  [result setAllowsSelectionDuringEditing:1];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  [result setAllowsMultipleSelectionDuringEditing:1];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = result;
  v16 = [objc_opt_self() systemBackgroundColor];
  [v15 setBackgroundColor:v16];

  result = [v0 collectionView];
  if (result)
  {
    v17 = result;
    [result setAllowsMultipleSelection:1];

    sub_10006FAD4();
    sub_1005B981C(&unk_101A150B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10146C6B0;
    *(v18 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v18 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    v20[3] = v1;
    v20[0] = v0;
    v19 = v0;
    UIViewController.registerForTraitChanges(_:target:action:)();

    swift_unknownObjectRelease();
    return sub_100005070(v20);
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_10005AD00(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer_trackedTouch] = 0;
  sub_10000BE14(a1, v16, &unk_1019F4D00);
  v5 = v17;
  if (v17)
  {
    v6 = sub_100020E58(v16, v17);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v5);
    sub_100005070(v16);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for CRLiOSFolderGridViewController.SingleContinuousTouchGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, "initWithTarget:action:", v10, a2);
  swift_unknownObjectRelease();
  v13 = v12;
  [v13 setDelegate:v13];
  [v13 setCancelsTouchesInView:0];

  sub_10000CAAC(a1, &unk_1019F4D00);
  return v13;
}

uint64_t sub_10005AEC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ([v0 isViewLoaded])
  {

    v3 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource;
    v4 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource];
    v5 = sub_10005BC3C();

    v6 = sub_10005C1A0(v5);

    v7 = v6[2];

    LOBYTE(v6) = v7 != 0;
    v8 = *(v1 + v3);
    v9 = sub_10005C4B8(v8, v6, v1, ObjectType);

    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10005B000(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10005B060()
{
  v1 = sub_1005B981C(&qword_101A23C98);
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  v3 = __chkstk_darwin(v1);
  v50 = v4;
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v45 - v5;
  v52 = sub_1005B981C(&qword_101A23CA0);
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v52);
  v10 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s8GridItemCMa();
  type metadata accessor for UUID();
  v13 = v6;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s11iOSListItemCMa();
  UICollectionView.CellRegistration.init(handler:)();
  v49 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
  v55 = v0;
  result = [v0 collectionView];
  v48 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v7;
  v17 = *(v7 + 16);
  v46 = v12;
  v18 = v52;
  v17(v10, v12, v52);
  v19 = v53;
  v20 = v54;
  v21 = *(v54 + 16);
  v22 = v51;
  v47 = v13;
  v21(v51, v13, v53);
  v23 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v24 = (v8 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v15;
  v50 = v16;
  (*(v16 + 32))(v25 + v23, v10, v18);
  (*(v20 + 32))(v25 + v24, v22, v19);
  v26 = objc_allocWithZone(type metadata accessor for CRLFolderViewControllerDiffableDataSource());
  *&v26[qword_1019FFB20] = v49;
  swift_unknownObjectRetain();
  v27 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  result = [v55 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v28 = result;
  v29 = _s13SectionHeaderCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = v29;
  v31 = UICollectionElementKindSectionHeader;
  sub_1005B981C(&qword_101A23CA8);
  String.init<A>(describing:)();
  v32 = String._bridgeToObjectiveC()();

  [v28 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v31 withReuseIdentifier:v32];

  result = [v55 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = result;
  v34 = _s13GridSeparatorCMa();
  v35 = swift_getObjCClassFromMetadata();
  v36 = String._bridgeToObjectiveC()();
  v56 = v34;
  sub_1005B981C(&qword_101A23CB0);
  String.init<A>(describing:)();
  v37 = String._bridgeToObjectiveC()();

  [v33 registerClass:v35 forSupplementaryViewOfKind:v36 withReuseIdentifier:v37];

  result = [v55 collectionView];
  v38 = v54;
  if (result)
  {
    v39 = result;
    v40 = _s18iCloudStatusFooterCMa();
    v41 = swift_getObjCClassFromMetadata();
    v42 = String._bridgeToObjectiveC()();
    v56 = v40;
    sub_1005B981C(&qword_101A23CB8);
    String.init<A>(describing:)();
    v43 = String._bridgeToObjectiveC()();

    [v39 registerClass:v41 forSupplementaryViewOfKind:v42 withReuseIdentifier:v43];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = v27;

    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

    (*(v38 + 8))(v47, v53);
    (*(v50 + 8))(v46, v52);

    return v44;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10005B6D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005B70C()
{
  v1 = sub_1005B981C(&qword_101A23CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1005B981C(&qword_101A23C98);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t _s11iOSListItemCMa()
{
  result = qword_101A07878;
  if (!qword_101A07878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005B8C0()
{
  sub_1000519AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t _s8GridItemCMa()
{
  result = qword_1019F7778;
  if (!qword_1019F7778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s4ItemCMa()
{
  result = qword_101A22A38;
  if (!qword_101A22A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005BA6C()
{
  sub_1000519AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for CRLFolderViewControllerDiffableDataSource()
{
  result = qword_1019FFB28;
  if (!qword_1019FFB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10005BC3C()
{
  v1 = _s4NodeVMa(0);
  v42 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v41 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v40 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v39 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = v35 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v43 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A23860);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - v12;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v14 = *(v0 + qword_1019FFB20);
  v15 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v16 = *(v15 + 16);
  if (!v16)
  {

    v33 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v36 = v13;
  v37 = v11;
  v38 = v10;
  v17 = (v14 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v19 = *(v8 + 16);
  v18 = v8 + 16;
  v20 = *(v18 + 64);
  v35[1] = v15;
  v21 = v15 + ((v20 + 32) & ~v20);
  v49 = *(v18 + 56);
  v50 = v19;
  v48 = (v18 - 8);
  v46 = _swiftEmptyArrayStorage;
  v47 = v7;
  v22 = v43;
  v44 = v18;
  v19(v43, v21, v7);
  while (1)
  {
    v23 = v17[3];
    if (!*(v23 + 16))
    {

LABEL_4:

      (*v48)(v22, v7);
      goto LABEL_5;
    }

    v24 = *v17;

    v51 = v24;

    v25 = sub_10003E994(v22);
    if ((v26 & 1) == 0)
    {

      v7 = v47;
      goto LABEL_4;
    }

    v27 = v41;
    sub_10003C9F4(*(v23 + 56) + *(v42 + 72) * v25, v41, _s4NodeVMa);
    (*v48)(v22, v47);

    v28 = v39;
    sub_10003C9F4(v27, v39, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100793924(v27);
    sub_100065BB0(v28, v45, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v29 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_100B3648C(0, v29[2] + 1, 1, v29);
    }

    v22 = v43;
    v31 = v29[2];
    v30 = v29[3];
    v7 = v47;
    if (v31 >= v30 >> 1)
    {
      v29 = sub_100B3648C(v30 > 1, v31 + 1, 1, v29);
    }

    v29[2] = v31 + 1;
    v32 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v46 = v29;
    sub_100065BB0(v45, v29 + v32 + *(v40 + 72) * v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_5:
    v21 += v49;
    if (!--v16)
    {
      break;
    }

    v50(v22, v21, v7);
  }

  v11 = v37;
  v10 = v38;
  v13 = v36;
  v33 = v46;
LABEL_17:
  (*(v11 + 8))(v13, v10);
  return v33;
}

void *sub_10005C1A0(uint64_t a1)
{
  v25 = _s5BoardVMa(0);
  __chkstk_darwin(v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v5 = __chkstk_darwin(v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  __chkstk_darwin(v7);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = a1 + v23;
    v15 = *(v10 + 72);
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1000652DC(v14, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000652DC(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100065D50(v9, v3, _s5BoardVMa);
        v18 = v3[*(v25 + 60)];
        sub_10000BBC4(v3, _s5BoardVMa);
        if (v18)
        {
          sub_100065D50(v12, v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100776764(0, v16[2] + 1, 1);
            v16 = v26;
          }

          v21 = v16[2];
          v20 = v16[3];
          if (v21 >= v20 >> 1)
          {
            sub_100776764(v20 > 1, v21 + 1, 1);
            v16 = v26;
          }

          v16[2] = v21 + 1;
          sub_100065D50(v24, v16 + v23 + v21 * v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_5;
        }

        v17 = v12;
      }

      else
      {
        sub_10000BBC4(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v17 = v9;
      }

      sub_10000BBC4(v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_5:
      v14 += v15;
      if (!--v13)
      {
        return v16;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

char *sub_10005C4B8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  if (qword_1019F1380 != -1)
  {
    swift_once();
  }

  [v7 setInterSectionSpacing:*&qword_1019F7728];
  v8 = swift_allocObject();
  *(v8 + 24) = &off_1018BBCD0;
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = v8;
  v10 = type metadata accessor for CRLCollectionViewCompositionalLayout();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewHeight] = 0;
  v12 = &v11[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewContentInsets];
  v13 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v12 = *&NSDirectionalEdgeInsetsZero.top;
  v12[1] = v13;
  v14 = OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_coreLayout;
  type metadata accessor for CRLItemCollectionCoreFooterAwareLayout();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 56) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *&v11[v14] = v15;
  v11[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_layoutStyle] = 0;
  v11[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_containsInvitations] = a2 & 1;
  aBlock[4] = sub_10007688C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100075840;
  aBlock[3] = &unk_1018AA1F8;
  v16 = _Block_copy(aBlock);
  swift_retain_n();
  v17 = v7;
  v18 = a1;

  v23.receiver = v11;
  v23.super_class = v10;
  v19 = objc_msgSendSuper2(&v23, "initWithSectionProvider:configuration:", v16, v17);

  _Block_release(v16);
  if (qword_1019F1398 != -1)
  {
    swift_once();
  }

  [qword_1019F7740 dimension];
  v21 = v20;

  *&v19[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewHeight] = v21;
  return v19;
}

uint64_t sub_10005C794()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005C7CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005C810()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dataForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005C8B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10005C940()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v60 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isViewLoaded])
  {
    return;
  }

  v61 = v4;
  v5 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout;
  v6 = v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([Strong selectedSegmentIndex] != ((v6 & 1) == 0))
    {
      [v8 setSelectedSegmentIndex:(v6 & 1) == 0];
    }
  }

  v9 = &selRef_canCreateItemsOfClass_;
  if (![v1 isEditing])
  {
    goto LABEL_10;
  }

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = v10;
  v12 = [v10 indexPathsForSelectedItems];

  if (v12)
  {
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
LABEL_10:
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = v1[v5] == 1;
  v59 = v13;
  if (!v14)
  {
LABEL_16:
    v18 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout];
    if (v18)
    {
      v16 = v18;
      v17 = [v1 collectionView];
      if (!v17)
      {
LABEL_37:
        __break(1u);
        return;
      }

      goto LABEL_18;
    }

LABEL_19:
    v58 = v5;
    v57 = v1;
    v56 = objc_opt_self();
    LODWORD(v1) = [v56 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
LABEL_33:
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v1;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v28;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 212;
    v30 = v20;
    v31 = v62;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v31;
    v32 = v30;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v35, "Unable to set collection view layout.", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v56 handleFailureInFunction:v38 file:v39 lineNumber:212 isFatal:0 format:v40 args:v37];

    v1 = v57;
    v9 = &selRef_canCreateItemsOfClass_;
    goto LABEL_21;
  }

  v15 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [v1 collectionView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  v19 = v17;
  [v17 setCollectionViewLayout:v16 animated:0];

LABEL_21:
  v41 = [v1 collectionView];
  if (!v41)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v42 = v41;
  [v41 reloadData];

  v43 = sub_10005D5F8();
  v44 = v1;
  sub_10005DE50(v43);

  v45 = v59;
  v1 = v59[2];
  v46 = v61;
  if (v1)
  {
    v47 = 0;
    v20 = (v60 + 8);
    v24 = &selRef_editAccessibilityDescription_;
    while (1)
    {
      if (v47 >= v45[2])
      {
        __break(1u);
        goto LABEL_33;
      }

      v9 = v45;
      (*(v60 + 16))(v46, v45 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v47, v2);
      v48 = [v44 collectionView];
      if (!v48)
      {
        break;
      }

      v49 = v48;
      ++v47;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v49 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      v46 = v61;
      (*v20)(v61, v2);
      v45 = v9;
      if (v1 == v47)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v51 = sub_100062AD0();
  if (v51)
  {

    sub_100F3C0F0();
  }

  if (*(v44 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState) == 1)
  {
    v52 = [objc_opt_self() standardUserDefaults];
    sub_1012C8634();
    v53 = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_100009260();
    v54 = String._bridgeToObjectiveC()();

    [v52 setObject:v53 forKey:v54];
  }
}

void sub_10005D170()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout))
  {
    if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) == 1)
    {

      sub_10005C940();
    }
  }

  else
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 289;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:289 isFatal:0 format:v23 args:v20];

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

unint64_t sub_10005D590()
{
  result = qword_1019F8310;
  if (!qword_1019F8310)
  {
    sub_100006370(255, &qword_1019F8308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8310);
  }

  return result;
}

objc_class *sub_10005D618()
{
  sub_100006370(0, &qword_1019F6C00);
  sub_1005B981C(&unk_1019F4D60);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_101465920;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 1;
  aBlock[4] = sub_100F79508;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100646688;
  aBlock[3] = &unk_1018A9550;
  v4 = _Block_copy(aBlock);

  v5 = [v1 elementWithUncachedProvider:v4];
  _Block_release(v4);
  *(preferredElementSize + 32) = v5;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v20, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v17).super.super.isa;
  sub_100006370(0, &qword_1019F6BF0);
  v8 = isa;
  v19.value.super.isa = 0;
  v19.is_nil = 0;
  v21.value.super.super.isa = isa;
  v9 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v19, v21, v22).super.super.isa;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v11 setAccessibilityLabel:v15];

  sub_10005DE50(v11);
  sub_100062934();

  return v11;
}

uint64_t sub_10005D904()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t AASUserInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v29 = v25 - v4;
  v5 = type metadata accessor for UUID();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1005B981C(&qword_1019FE000);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = v25 - v8;
  v10 = type metadata accessor for AASUserInfo();
  v11 = __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 24);
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 56);
  v33 = v14;
  v34 = v13;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v32 = a1;
  sub_100020E58(a1, v17);
  sub_10005E280();
  v18 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    sub_100005070(v32);
    return sub_10000CAAC(&v34[v33], &qword_101A0A320);
  }

  else
  {
    v19 = v7;
    v31 = v10;
    v21 = v27;
    v20 = v28;
    v22 = v29;
    sub_1005B981C(&qword_1019FDFE8);
    v37 = 0;
    sub_10005E2E4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25[1] = v38;
    *v34 = v38;
    v36 = 1;
    sub_10005C8B0(&qword_1019F43A8, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 32))(&v34[*(v31 + 20)], v19, v5);
    v35 = 2;
    sub_10005C8B0(&qword_101A19C70, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v9, v30);
    v23 = v34;
    sub_100015CDC(v22, &v34[v33]);
    sub_10005EBAC(v23, v26);
    sub_100005070(v32);
    return sub_10005EC10(v23);
  }
}

void sub_10005DE50(void *a1)
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = [v1 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() systemImageNamed:v10];

  if (v11)
  {
    [a1 setImage:v11];

    v12 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityValue:v12];

    v13 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityHint:v13];

    v14 = [objc_opt_self() mainBundle];
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v18 = [v14 localizedStringForKey:v15 value:v16 table:0];

    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    [a1 setTitle:{v18, a1}];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10005E1D0()
{
  result = qword_1019FE1A0;
  if (!qword_1019FE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE1A0);
  }

  return result;
}

unint64_t sub_10005E228()
{
  result = qword_1019FE1A8;
  if (!qword_1019FE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE1A8);
  }

  return result;
}

unint64_t sub_10005E280()
{
  result = qword_1019FDFE0;
  if (!qword_1019FDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDFE0);
  }

  return result;
}

unint64_t sub_10005E2E4()
{
  result = qword_1019FE008;
  if (!qword_1019FE008)
  {
    sub_1005C4E5C(&qword_1019FDFE8);
    sub_10005E3A0();
    sub_10005C8B0(&qword_101A19C70, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE008);
  }

  return result;
}

unint64_t sub_10005E3A0()
{
  result = qword_1019FE010;
  if (!qword_1019FE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE010);
  }

  return result;
}

uint64_t sub_10005E3F4()
{
  v1 = 0x444972657375;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t storeEnumTagSinglePayload for CRLLineEndData.JoinType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CRLLineEndData.JoinType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10005E598(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FE1D0);
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v17 = sub_1005B981C(&qword_1019FE1D8);
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v15 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10005EA24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      sub_10005EB00();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = type metadata accessor for DecodingError();
      swift_allocError();
      v13 = v12;
      sub_1005B981C(&qword_101A0AEE0);
      *v13 = &type metadata for AASApplicationVariant;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v11 - 8) + 104))(v13, enum case for DecodingError.typeMismatch(_:), v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return sub_100005070(a1);
}

unint64_t sub_10005E8B4()
{
  result = qword_1019FE240;
  if (!qword_1019FE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE240);
  }

  return result;
}

unint64_t sub_10005E90C()
{
  result = qword_1019FE248;
  if (!qword_1019FE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE248);
  }

  return result;
}

unint64_t sub_10005E974()
{
  result = qword_1019FE250;
  if (!qword_1019FE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE250);
  }

  return result;
}

unint64_t sub_10005E9CC()
{
  result = qword_1019FE258;
  if (!qword_1019FE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE258);
  }

  return result;
}

unint64_t sub_10005EA24()
{
  result = qword_1019FE1C0;
  if (!qword_1019FE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE1C0);
  }

  return result;
}

uint64_t sub_10005EA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

unint64_t sub_10005EB00()
{
  result = qword_1019FE1C8;
  if (!qword_1019FE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE1C8);
  }

  return result;
}

Swift::Int sub_10005EB6C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10005EBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AASUserInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EC10(uint64_t a1)
{
  v2 = type metadata accessor for AASUserInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005EC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AASUserInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005ECE4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_101A0A320);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10005EE14(uint64_t *a1)
{
  v2 = sub_1005B981C(&qword_101A0A320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AASUserInfo();
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005EBAC(a1, v10);
  v11 = *a1;
  if (*(v11 + 16) && (v12 = sub_10005F124(), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for Date();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v7, v15 + *(v17 + 72) * v14, v16);
    (*(v17 + 56))(v7, 0, 1, v16);
    sub_10005EC10(v10);
    return sub_10000CAAC(v7, &qword_101A0A320);
  }

  else
  {
    v19 = type metadata accessor for Date();
    v20 = *(*(v19 - 8) + 56);
    v20(v7, 1, 1, v19);
    sub_10000CAAC(v7, &qword_101A0A320);
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = static OS_os_log.crlAppAnalytics;
    v22 = static os_log_type_t.default.getter();
    sub_100005404(v21, &_mh_execute_header, v22, "update user start date", 22, 2, _swiftEmptyArrayStorage);

    static Date.now.getter();
    v20(v5, 0, 1, v19);
    sub_100BC3658(v5);
    sub_10074C368();
    return sub_10005EC10(v10);
  }
}

uint64_t sub_10005F124()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v0 = Hasher._finalize()();
  return sub_10005F178(v0);
}

uint64_t sub_10005F1A4()
{
  v0 = type metadata accessor for Calendar.Component();
  v50 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE1F0);
  __chkstk_darwin(v3 - 8);
  v56 = &v46 - v4;
  v5 = type metadata accessor for Calendar.Identifier();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019FBE50);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  sub_10005A4B8(v12);
  v23 = type metadata accessor for AASUserInfo();
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    sub_10000CAAC(v12, &qword_1019FBE50);
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_4:
    sub_10000CAAC(v15, &qword_101A0A320);
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = 0xD000000000000019;
    *(inited + 40) = 0x80000001015638F0;
    v26 = v24;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v26, &_mh_execute_header, v27, "%@: no previous rotation date", 29, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    return 0;
  }

  sub_10005F954(&v12[*(v23 + 24)], v15);
  sub_10005EC10(v12);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_4;
  }

  v29 = *(v17 + 32);
  v49 = v22;
  v29(v22, v15, v16);
  v31 = v53;
  v30 = v54;
  (*(v53 + 104))(v7, enum case for Calendar.Identifier.gregorian(_:), v54);
  v32 = v55;
  Calendar.init(identifier:)();
  (*(v31 + 8))(v7, v30);
  v33 = v56;
  TimeZone.init(identifier:)();
  v34 = type metadata accessor for TimeZone();
  result = (*(*(v34 - 8) + 48))(v33, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    Calendar.timeZone.setter();
    v35 = enum case for Calendar.Component.year(_:);
    v36 = v50;
    v56 = *(v50 + 104);
    (v56)(v2, enum case for Calendar.Component.year(_:), v0);
    static Date.now.getter();
    v54 = Calendar.component(_:from:)();
    v48 = *(v17 + 8);
    v48(v20, v16);
    v37 = *(v36 + 8);
    v37(v2, v0);
    v47 = v16;
    v38 = v56;
    (v56)(v2, v35, v0);
    v53 = Calendar.component(_:from:)();
    v37(v2, v0);
    v39 = enum case for Calendar.Component.month(_:);
    v38(v2, enum case for Calendar.Component.month(_:), v0);
    static Date.now.getter();
    v50 = Calendar.component(_:from:)();
    v40 = v20;
    v41 = v47;
    v42 = v48;
    v48(v40, v47);
    v37(v2, v0);
    (v56)(v2, v39, v0);
    v43 = v49;
    v44 = Calendar.component(_:from:)();
    v37(v2, v0);
    (*(v51 + 8))(v32, v52);
    v42(v43, v41);
    return v54 == v53 && v50 == v44;
  }

  return result;
}

uint64_t sub_10005F954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0A320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F9C4()
{
  v1 = v0[29];
  v2 = *(v0[24] + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager);
  sub_10005FE44(v0[23], v1);
  v3 = type metadata accessor for AASUserInfo();
  v4 = (*(v3 - 8) + 48);
  v31 = *v4;
  if ((*v4)(v1, 1, v3) == 1)
  {
    v5 = v0[29];

    sub_10000CAAC(v5, &qword_1019FBE50);
    v6 = 1;
  }

  else
  {
    v7 = v0[29];
    (*(v0[26] + 16))(v0[30], v7 + *(v3 + 20), v0[25]);

    sub_100025C08(v7, type metadata accessor for AASUserInfo);
    v6 = 0;
  }

  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[23];
  (*(v0[26] + 56))(v8, v6, 1, v0[25]);
  v11 = OBJC_IVAR____TtC8Freeform22AASUserSamplingManager_userId;
  swift_beginAccess();
  sub_10005FEB4(v8, v2 + v11, &qword_1019F6990);
  swift_endAccess();
  sub_10005FF1C();

  sub_10000CAAC(v8, &qword_1019F6990);
  sub_10005FE44(v10, v9);
  v12 = v31(v9, 1, v3);
  v13 = v0[28];
  if (v12 == 1)
  {
    sub_10000CAAC(v0[28], &qword_1019FBE50);
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = static OS_os_log.crlAppAnalytics;
    v15 = static os_log_type_t.default.getter();
    sub_100005404(v14, &_mh_execute_header, v15, "Failed to retrieve UserID", 25, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v17 = v0[26];
    v16 = v0[27];
    v18 = v0[25];
    (*(v17 + 16))(v16, v13 + *(v3 + 20), v18);
    sub_100025C08(v13, type metadata accessor for AASUserInfo);
    v19 = UUID.uuidString.getter();
    v21 = v20;
    (*(v17 + 8))(v16, v18);
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    v24 = v22;
    v25 = static os_log_type_t.default.getter();
    sub_100005404(v24, &_mh_execute_header, v25, "UserID retrieved: %@", 20, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
  }

  v26 = v0[23];
  v27 = v0[24];
  v28 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_userInfo;
  swift_beginAccess();
  sub_10005FEB4(v26, v27 + v28, &qword_1019FBE50);
  swift_endAccess();

  v29 = v0[1];

  return v29();
}

uint64_t sub_10005FE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FBE50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FEB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1005B981C(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005FF1C()
{
  v1 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Freeform22AASUserSamplingManager_userId;
  swift_beginAccess();
  sub_100060460(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_1005C5FFC(v3);
    *(v0 + 16) = 0;
    return result;
  }

  v10 = *(v5 + 32);
  v37 = v4;
  v10(v7, v3, v4);
  v36 = v7;
  v11 = sub_1000604D0();
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static OS_os_log.crlAppAnalytics;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v35 = v11;
  *(inited + 32) = v11;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    v19 = static OS_os_log.crlAppAnalytics;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v20, "Disable appAnalytics sampling", 29, 2, _swiftEmptyArrayStorage);

    v21 = 100;
  }

  else
  {
    v21 = 50;
  }

  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v21;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v22, "Hash Value: %d, Sampling Rate: %d", 33, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v23 = [v14 standardUserDefaults];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 BOOLForKey:v24];

  if (v25)
  {
    v26 = static OS_os_log.crlAppAnalytics;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v26, &_mh_execute_header, v27, "Disable appAnalytics sampling", 29, 2, _swiftEmptyArrayStorage);

    v28 = v35;
    v29 = v37;
    if (v35 >= 100)
    {
LABEL_10:
      v30 = static OS_os_log.crlAppAnalytics;
      v31 = static os_log_type_t.default.getter();
      sub_100005404(v30, &_mh_execute_header, v31, "Stop AppAnalytics", 17, 2, _swiftEmptyArrayStorage);

      *(v0 + 16) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v28 = v35;
    v29 = v37;
    if (v35 > 49)
    {
      goto LABEL_10;
    }
  }

  v32 = static OS_os_log.crlAppAnalytics;
  v33 = static os_log_type_t.default.getter();
  sub_100005404(v32, &_mh_execute_header, v33, "Starting AppAnalytics", 21, 2, _swiftEmptyArrayStorage);

  *(v0 + 16) = 1;
  type metadata accessor for TrackingConsent();
  v34 = static TrackingConsent.shared.getter();
  TrackingConsent.allow()();

LABEL_13:
  result = (*(v5 + 8))(v36, v29);
  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v28 <= 0x7FFFFFFF)
  {
    *(v0 + 20) = v28;
    *(v0 + 24) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100060460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000604D0()
{
  v0 = type metadata accessor for SHA256();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256Digest();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = UUID.uuidString.getter();
  v12 = sub_1000607F0(v10, v11);
  v14 = v13;
  sub_100060E30(&qword_1019F4570, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100024E98(v12, v14);
  sub_100061910(v12, v14);
  sub_10002640C(v12, v14);
  dispatch thunk of HashFunction.finalize()();
  sub_10002640C(v12, v14);
  v15 = v0;
  v16 = v27;
  (*(v1 + 8))(v3, v15);
  v17 = v28;
  (*(v16 + 16))(v7, v9, v28);
  sub_100060E30(&qword_1019F4578, &type metadata accessor for SHA256Digest);
  result = dispatch thunk of Sequence.makeIterator()();
  v19 = 0;
  v20 = *(v29 + 16);
  if (v20 == v30)
  {
    goto LABEL_10;
  }

  if (v20 <= v30)
  {
    __break(1u);
  }

  else
  {
    v21 = v20 - v30;
    if (v20 >= v30)
    {
      v22 = v20 - v30;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > v20 + ~v30)
    {
      v23 = 0;
      v24 = (v30 + v29 + 32);
      do
      {
        v25 = *v24++;
        v23 = v25 | (v23 << 8);
        --v21;
      }

      while (v21);
      v19 = v23 % 0x64;
LABEL_10:
      (*(v16 + 8))(v9, v17);

      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000607F0(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_1005B981C(&qword_101A10600);
  if (swift_dynamicCast())
  {
    sub_100050F74(__src, &v41);
    sub_100020E58(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100005070(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100060D00(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_100060D68(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100AE6918(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_100AE613C(sub_100AE7740);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100AE6694(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100AE6694(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100025870(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100025870(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100024E98(*&__src[0], *(&__src[0] + 1));

  sub_10002640C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100060D00(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A10608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100060D68@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100AE6760(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_100060E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100060E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100060EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100060F08()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = v55 - v2;
  v4 = sub_1005B981C(&qword_101A0A320);
  v5 = __chkstk_darwin(v4 - 8);
  v71 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v55 - v7;
  v9 = sub_1005B981C(&qword_1019FE230);
  __chkstk_darwin(v9 - 8);
  v68 = v55 - v10;
  v11 = type metadata accessor for DateComponents();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v72 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Date();
  v74 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Calendar.Component();
  v14 = *(v66 - 8);
  __chkstk_darwin(v66);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_1019FE1F0);
  v18 = __chkstk_darwin(v17 - 8);
  v67 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v55 - v20;
  v22 = type metadata accessor for Calendar.Identifier();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Calendar();
  result = __chkstk_darwin(v69);
  v29 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 208))
  {
    return result;
  }

  v62 = v3;
  v63 = v27;
  v61 = v8;
  v56 = v0;
  *(v0 + 208) = 1;
  (*(v23 + 104))(v25, enum case for Calendar.Identifier.gregorian(_:), v22);
  Calendar.init(identifier:)();
  (*(v23 + 8))(v25, v22);
  TimeZone.init(identifier:)();
  v30 = type metadata accessor for TimeZone();
  v59 = *(v30 - 8);
  v60 = v30;
  result = (*(v59 + 48))(v21, 1);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  Calendar.timeZone.setter();
  v57 = *(v14 + 104);
  v31 = v66;
  v57(v16, enum case for Calendar.Component.year(_:), v66);
  v32 = v73;
  static Date.now.getter();
  v58 = Calendar.component(_:from:)();
  v34 = v74 + 8;
  v33 = *(v74 + 8);
  v35 = v70;
  v33(v32, v70);
  v36 = *(v14 + 8);
  v36(v16, v31);
  v57(v16, enum case for Calendar.Component.month(_:), v31);
  static Date.now.getter();
  v57 = v29;
  v37 = Calendar.component(_:from:)();
  v55[1] = v34;
  v55[0] = v33;
  v33(v32, v35);
  v36(v16, v31);
  v38 = v69;
  (*(v63 + 56))(v68, 1, 1, v69);
  (*(v59 + 56))(v67, 1, 1, v60);
  v39 = v72;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  if (v37 != 12)
  {
    DateComponents.year.setter();
    result = v37 + 1;
    v41 = v61;
    v40 = v62;
    v42 = v71;
    if (!__OFADD__(v37, 1))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  result = v58 + 1;
  v41 = v61;
  v40 = v62;
  v42 = v71;
  if (__OFADD__(v58, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  DateComponents.year.setter();
LABEL_7:
  DateComponents.month.setter();
  DateComponents.day.setter();
  v43 = v57;
  Calendar.date(from:)();
  sub_10005F954(v41, v42);
  v44 = (*(v74 + 48))(v42, 1, v35);
  v45 = v56;
  if (v44 == 1)
  {
    sub_10000CAAC(v42, &qword_101A0A320);
    v46 = 0;
  }

  else
  {
    v47 = v73;
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v46 = v48;
    v49 = v47;
    v50 = v55[0];
    (v55[0])(v49, v35);
    v50(v42, v35);
  }

  v51 = type metadata accessor for TaskPriority();
  (*(*(v51 - 8) + 56))(v40, 1, 1, v51);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v46;
  v53[5] = v52;
  v54 = sub_100796D54(0, 0, v40, &unk_101479A48, v53);
  sub_10000CAAC(v41, &qword_101A0A320);
  (*(v64 + 8))(v39, v65);
  (*(v63 + 8))(v43, v38);
  *(v45 + 216) = v54;
}

uint64_t sub_100061838()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061870()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000618B0()
{
  sub_100060F08();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100061910(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100060E78(&qword_1019F4570, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100061C6C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100061C6C(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100060E78(&qword_1019F4570, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100061AF0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100061B58()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100061BA8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100061D4C(v6, a1, v4, v5, v7);
}

uint64_t sub_100061C6C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100060E78(&qword_1019F4570, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100061D4C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100061E10, 0, 0);
}

uint64_t sub_100061E10()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  ContinuousClock.init()();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_10074AF18;

  return sub_100061EEC(v1, v3, 0, 0, 1);
}

uint64_t sub_100061EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100061FEC, 0, 0);
}

uint64_t sub_100061FEC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10006217C(&qword_101A0BFE0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10006217C(&unk_101A0BFE8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1009FF670;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10006217C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000621C4()
{

  return _swift_task_switch(sub_1000622C0, 0, 0);
}

uint64_t sub_1000622C0()
{
  v1 = *(v0 + 232);
  v2 = type metadata accessor for AASUserInfo();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000CAAC(v1, &qword_1019FBE50);
  if (v3 == 1)
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static OS_os_log.crlAppAnalytics;
    v5 = static os_log_type_t.error.getter();
    v6 = "Failed to retrieve UserID while applicationWillEnterForeground";
    v7 = v4;
    v8 = 62;
LABEL_14:
    sub_100005404(v7, &_mh_execute_header, v5, v6, v8, 2, _swiftEmptyArrayStorage);

    goto LABEL_15;
  }

  v9 = *(v0 + 104);
  if (*(*(v9 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) != 1)
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static OS_os_log.crlAppAnalytics;
    v5 = static os_log_type_t.default.getter();
    v6 = "User is not selected, skip sessionStart";
    v7 = v4;
    v8 = 39;
    goto LABEL_14;
  }

  if (qword_1019F2118 != -1)
  {
    swift_once();
    v9 = *(v0 + 104);
  }

  swift_beginAccess();
  v10 = static OS_os_log.crlAppAnalytics;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "start app analytics", 19, 2, _swiftEmptyArrayStorage);

  v12 = v9 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController;
  v13 = *(v9 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController);
  if (v13)
  {
    v14 = *(v12 + 24);
    v44 = *(v12 + 16);
    v40 = *(v12 + 8);
    v42 = *(v12 + 32) & 1;
    v15 = objc_opt_self();

    v16 = [v15 standardUserDefaults];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 stringForKey:v17];

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v26 = *(v0 + 200);
    v27 = *(v0 + 184);
    v28 = *(v0 + 192);
    *(v0 + 88) = v19;
    *(v0 + 96) = v21;
    sub_100011DE8();
    SessionData.init(key:data:)();
    (*(v26 + 16))(v25, v24, v28);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = swift_allocObject();
    (*(v26 + 32))(v30 + v29, v25, v28);
    SessionManager.transaction(_:)();

    (*(v26 + 8))(v24, v28);
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v13;
    *(v32 + 40) = v40;
    *(v32 + 41) = *(v0 + 248);
    *(v32 + 44) = *(v0 + 251);
    *(v32 + 48) = v44;
    *(v32 + 56) = v14;
    *(v32 + 64) = v42;
    sub_10064191C(0, 0, v27, &unk_101476350, v32);
  }

  v33 = *(*(v0 + 104) + OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager);
  if (v33)
  {
    v35 = *(v0 + 168);
    v34 = *(v0 + 176);
    v36 = *(v0 + 152);
    v37 = *(v0 + 144);
    v41 = *(v0 + 136);
    v39 = *(v0 + 120);
    v38 = *(v0 + 128);
    v45 = *(v0 + 160);
    v46 = *(v0 + 112);
    (*(v35 + 104))(v34, enum case for Session.Kind.userEvents(_:));
    v43 = v33;

    UUID.init()();
    UUID.uuidString.getter();
    (*(v37 + 8))(v36, v41);
    Date.init()();
    SessionManager.start(for:identifier:startDate:)();

    (*(v39 + 8))(v38, v46);
    (*(v35 + 8))(v34, v45);
  }

LABEL_15:

  v22 = *(v0 + 8);

  return v22();
}

void sub_100062934()
{
  v1 = v0;
  sub_100006370(0, &qword_1019F6C00);
  sub_1005B981C(&unk_1019F4D60);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_101465920;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100F77218;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100646688;
  aBlock[3] = &unk_1018A95A0;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(preferredElementSize + 32) = v6;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v7, 0, v11, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v9).super.super.isa;
  [v1 setMenuRepresentation:isa];
}

id sub_100062AD0()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result window];

  if (v3)
  {
    v4 = [v3 windowScene];

    if (v4)
    {
      v5 = [v4 delegate];

      if (v5)
      {
        type metadata accessor for CRLSceneDelegate();
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return 0;
}

char *sub_100062B9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource);
  v2 = sub_10005BC3C();

  v3 = sub_10005C1A0(v2);

  v4 = v3[2];

  v5 = v4 != 0;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = type metadata accessor for CRLCollectionViewCompositionalLayout();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewHeight] = 0;
  v9 = &v8[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewContentInsets];
  v10 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v9 = *&NSDirectionalEdgeInsetsZero.top;
  v9[1] = v10;
  v11 = OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_coreLayout;
  type metadata accessor for CRLItemCollectionCoreFooterAwareLayout();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 56) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *&v8[v11] = v12;
  v8[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_layoutStyle] = 1;
  v8[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_containsInvitations] = v5;
  aBlock[4] = sub_100F772C0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100075840;
  aBlock[3] = &unk_1018A96B8;
  v13 = _Block_copy(aBlock);
  swift_retain_n();

  v16.receiver = v8;
  v16.super_class = v7;
  v14 = objc_msgSendSuper2(&v16, "initWithSectionProvider:", v13);

  _Block_release(v13);

  *&v14[OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewHeight] = 0x4059800000000000;
  return v14;
}

void sub_100062DC0()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldRestoreViewState) == 1)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    sub_100009260();
    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 objectForKey:v2];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      sub_1005B981C(&unk_101A07740);
      if (swift_dynamicCast())
      {
        sub_100063338(v4);
      }
    }

    else
    {
      sub_10000CAAC(v7, &unk_1019F4D00);
    }
  }
}

void sub_100062F1C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout))
  {
    if ((*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) & 1) == 0)
    {

      sub_10005C940();
    }
  }

  else
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 300;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:300 isFatal:0 format:v23 args:v20];

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100063338(char *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A23860);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v102 - v6;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = xmmword_101A32618;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 2) && (v11 = sub_1000640CC(&v116), (v12 & 1) != 0))
  {
    sub_100064288(*(a1 + 7) + 32 * v11, v114);
    sub_100064234(&v116);
    if (swift_dynamicCast())
    {
      v13 = v115;
      v14 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
      *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) = v115;
      if (v13 != v14)
      {
        sub_10005C940();
      }
    }
  }

  else
  {
    sub_100064234(&v116);
  }

  v115 = off_101A32648;

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 2))
  {
    goto LABEL_21;
  }

  v15 = sub_1000640CC(&v116);
  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_100064288(*(a1 + 7) + 32 * v15, v114);
  sub_100064234(&v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v17 = v115;
  v115 = off_101A32628;

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 2))
  {
    goto LABEL_21;
  }

  v18 = sub_1000640CC(&v116);
  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_100064288(*(a1 + 7) + 32 * v18, v114);
  sub_100064234(&v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  LODWORD(v112) = v115;
  v115 = off_101A32638;

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 2) || (v20 = sub_1000640CC(&v116), (v21 & 1) == 0))
  {
LABEL_21:
    sub_100064234(&v116);
    goto LABEL_22;
  }

  sub_100064288(*(a1 + 7) + 32 * v20, v114);
  sub_100064234(&v116);
  if (swift_dynamicCast())
  {
    LOBYTE(v22) = v115;
    if (v115 <= 2)
    {
      v23 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
      sub_10000C9DC(v2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v24 = sub_1005B981C(&qword_1019F3480);
      LODWORD(v25) = (*(*(v24 - 8) + 48))(v10, 5, v24);
      v106 = v17;
      if (v25 > 2)
      {
LABEL_43:
        if (v25 == 3)
        {
          v26 = &off_1018773D0;
        }

        else if (v25 == 4)
        {
          v26 = &off_1018773F8;
        }

        else
        {
          v26 = &off_101877420;
        }
      }

      else if (v25)
      {
        if (v25 == 1)
        {
          v26 = &off_101877380;
        }

        else
        {
          v26 = &off_1018773A8;
        }
      }

      else
      {
        sub_10000BC84(v10, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v26 = &off_101877448;
      }

      v44 = sub_1000642E4(v22, v26);

      if (v44)
      {
        v45 = v22;
        v46 = v106;
        v47 = v112;
LABEL_78:
        sub_100064314(v45, v46, v47);
        goto LABEL_22;
      }

      v108 = sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v110 = v23;
      v49 = inited;
      *(inited + 16) = xmmword_10146C4D0;
      v50 = sub_100D267B4();
      v52 = v51;
      v49[7] = &type metadata for String;
      v53 = sub_1000053B0();
      v49[4] = v50;
      v109 = v49 + 4;
      v49[8] = v53;
      v113 = v53;
      v49[5] = v52;
      v111 = v2;
      v54 = sub_10006A888();
      v49[12] = &type metadata for String;
      v49[13] = v53;
      v49[9] = v54;
      v49[10] = v55;
      v56 = [objc_opt_self() mainBundle];
      v57 = String._bridgeToObjectiveC()();
      v58 = String._bridgeToObjectiveC()();
      v59 = v56;
      v60 = [v56 localizedStringForKey:v57 value:v58 table:0];

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = v113;
      v49[17] = &type metadata for String;
      v49[18] = v64;
      v49[14] = v61;
      v49[15] = v63;
      v103 = objc_opt_self();
      LODWORD(v110) = [v103 _atomicIncrementAssertCount];
      *&v116 = [objc_allocWithZone(NSString) init];
      v105 = v49;
      sub_100604538(v49, &v116);
      StaticString.description.getter();
      v104 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v65 = String._bridgeToObjectiveC()();

      v66 = [v65 lastPathComponent];

      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      if (qword_1019F20A0 != -1)
      {
LABEL_83:
        swift_once();
      }

      v107 = static OS_os_log.crlAssert;
      v70 = swift_initStackObject();
      *(v70 + 16) = xmmword_10146CA70;
      *(v70 + 56) = &type metadata for Int32;
      *(v70 + 64) = &protocol witness table for Int32;
      *(v70 + 32) = v110;
      v71 = sub_100006370(0, &qword_1019F4D30);
      *(v70 + 96) = v71;
      v72 = sub_1005CF04C();
      v73 = v104;
      *(v70 + 72) = v104;
      v74 = v113;
      *(v70 + 136) = &type metadata for String;
      *(v70 + 144) = v74;
      *(v70 + 104) = v72;
      *(v70 + 112) = v67;
      *(v70 + 120) = v69;
      *(v70 + 176) = &type metadata for UInt;
      *(v70 + 184) = &protocol witness table for UInt;
      *(v70 + 152) = 150;
      v75 = v116;
      *(v70 + 216) = v71;
      *(v70 + 224) = v72;
      *(v70 + 192) = v75;
      v113 = v73;
      v76 = v75;
      v77 = static os_log_type_t.error.getter();
      v78 = v107;
      sub_100005404(v107, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v70);
      swift_setDeallocating();
      v104 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v79 = static os_log_type_t.error.getter();
      v80 = v105;
      sub_100005404(v78, &_mh_execute_header, v79, "Tried to restore %@ sort option from cached view state, but it's disallowed in the %@ folder. Using the default sort option %@ instead.", 141, 2, v105);

      type metadata accessor for __VaListBuilder();
      v81 = swift_allocObject();
      v81[2] = 8;
      v81[3] = 0;
      v69 = v81 + 3;
      v81[4] = 0;
      v81[5] = 0;
      v110 = v81;
      v108 = *(v80 + 16);
      if (!v108)
      {
LABEL_77:
        v113 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v99 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v100 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v101 = String._bridgeToObjectiveC()();

        [v103 handleFailureInFunction:v99 file:v100 lineNumber:150 isFatal:0 format:v101 args:v113];

        swift_setDeallocating();
        swift_arrayDestroy();
        v45 = 1;
        v46 = v106;
        v47 = v112;
        v2 = v111;
        goto LABEL_78;
      }

      v82 = 0;
      while (1)
      {
        v113 = v82;
        v83 = &v109[5 * v82];
        v67 = v83[4];
        sub_100020E58(v83, v83[3]);
        v84 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v85 = *v69;
        v86 = *(v84 + 16);
        v87 = __OFADD__(*v69, v86);
        v88 = *v69 + v86;
        if (v87)
        {
          goto LABEL_80;
        }

        v89 = v84;
        v90 = v110;
        v91 = v110[4];
        if (v91 >= v88)
        {
          goto LABEL_70;
        }

        if (v91 + 0x4000000000000000 < 0)
        {
          goto LABEL_81;
        }

        v67 = v110[5];
        v107 = v110[4];
        if (2 * v91 > v88)
        {
          v88 = 2 * v91;
        }

        v110[4] = v88;
        if ((v88 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_82;
        }

        v92 = v90;
        v93 = swift_slowAlloc();
        v92[5] = v93;
        if (v67)
        {
          break;
        }

LABEL_71:
        if (!v93)
        {
          __break(1u);
          return;
        }

        v95 = *(v89 + 16);
        if (v95)
        {
          v96 = (v89 + 32);
          v97 = *v69;
          while (1)
          {
            v98 = *v96++;
            *&v93[8 * v97] = v98;
            v97 = *v69 + 1;
            if (__OFADD__(*v69, 1))
            {
              break;
            }

            *v69 = v97;
            if (!--v95)
            {
              goto LABEL_55;
            }
          }

          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

LABEL_55:

        v82 = v113 + 1;
        if (v113 + 1 == v108)
        {
          goto LABEL_77;
        }
      }

      if (v93 != v67 || v93 >= &v67[8 * v85])
      {
        memmove(v93, v67, 8 * v85);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v90 = v110;
LABEL_70:
      v93 = v90[5];
      goto LABEL_71;
    }
  }

LABEL_22:
  v115 = off_101A32658;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 2) && (v27 = sub_1000640CC(&v116), (v28 & 1) != 0))
  {
    sub_100064288(*(a1 + 7) + 32 * v27, v114);
    sub_100064234(&v116);
    sub_1005B981C(&unk_1019F4D80);
    if (swift_dynamicCast())
    {
      v113 = v115;
      v111 = v2;
      v22 = sub_10005AFE0();
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      LOBYTE(v22) = v7;
      v2 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      LODWORD(v25) = (*(v5 + 8))(v7, v4);
      v5 = *(v2 + 16);
      if (v5)
      {
        v7 = 0;
        v4 = 0;
        v29 = v2 + 32;
        v109 = (v5 - 1);
        a1 = _swiftEmptyArrayStorage;
        v110 = (v2 + 32);
        do
        {
          v112 = a1;
          v23 = v29 + 56 * v7;
          v30 = v7;
          while (1)
          {
            if (v30 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_43;
            }

            v31 = *v23;
            v32 = *(v23 + 16);
            v33 = *(v23 + 32);
            v119 = *(v23 + 48);
            v117 = v32;
            v118 = v33;
            v116 = v31;
            v7 = v30 + 1;
            sub_1000693DC(&v116, v114);
            v34 = sub_100068F28();
            LOBYTE(v22) = v35;
            a1 = &v102;
            v114[0] = v34;
            v114[1] = v35;
            __chkstk_darwin(v34);
            *(&v102 - 2) = v114;
            v36 = sub_100C08644(sub_1008335B4, (&v102 - 4), v113);

            if (v36)
            {
              break;
            }

            LODWORD(v25) = sub_1000698D0(&v116);
            v23 += 56;
            v30 = (v30 + 1);
            if (v5 == v7)
            {
              a1 = v112;
              goto LABEL_41;
            }
          }

          a1 = v112;
          LODWORD(v25) = swift_isUniquelyReferenced_nonNull_native();
          if ((v25 & 1) == 0)
          {
            v25 = sub_100B38FC8(0, *(a1 + 2) + 1, 1, a1);
            a1 = v25;
          }

          v38 = *(a1 + 2);
          v37 = *(a1 + 3);
          v22 = (v38 + 1);
          if (v38 >= v37 >> 1)
          {
            v25 = sub_100B38FC8((v37 > 1), v38 + 1, 1, a1);
            a1 = v25;
          }

          *(a1 + 2) = v22;
          v39 = &a1[56 * v38];
          v40 = v116;
          v41 = v117;
          v42 = v118;
          v39[80] = v119;
          *(v39 + 3) = v41;
          *(v39 + 4) = v42;
          *(v39 + 2) = v40;
          v29 = v110;
        }

        while (v109 != v30);
      }

      else
      {
        a1 = _swiftEmptyArrayStorage;
      }

LABEL_41:

      v43 = sub_100E94FF0(a1);

      sub_100F3B548(v43);
    }
  }

  else
  {
    sub_100064234(&v116);
  }
}

unint64_t sub_1000640CC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10006416C(a1, v4);
}

unint64_t sub_10006416C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100064110(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100064234(v8);
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

uint64_t sub_100064288(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL sub_1000642E4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_100064314(unsigned __int8 a1, int a2, int a3)
{
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions);
  v11 = *(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions);
  v12 = (v11 != a1) | *(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1) ^ a2;
  if (v11 != a1) | (*(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1) ^ a2) & 1 || ((*(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2) ^ a3))
  {
    if (*(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions))
    {
      v13 = *(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2);
    }

    else
    {
      v13 = 0;
    }

    *v10 = a1;
    v10[1] = a2 & 1;
    v10[2] = a3 & 1;
    v14 = (a1 != 0) & a3;
    if (v14 == 1)
    {
      if (!(v12 & 1 | ((v13 & 1) == 0)))
      {
        goto LABEL_28;
      }
    }

    else if (((v12 | v13) & 1) == 0)
    {
      goto LABEL_28;
    }

    sub_1000652DC(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v15 = sub_1005B981C(&qword_1019F3480);
    v16 = (*(*(v15 - 8) + 48))(v9, 5, v15);
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = &off_1018773D0;
      }

      else if (v16 == 4)
      {
        v17 = &off_1018773F8;
      }

      else
      {
        v17 = &off_101877420;
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
        v17 = &off_101877380;
      }

      else
      {
        v17 = &off_1018773A8;
      }
    }

    else
    {
      sub_10000BBC4(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v17 = &off_101877448;
    }

    v18 = sub_1000642E4(a1, v17);

    if (!v18)
    {
LABEL_28:
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v27 = inited;
      v28 = sub_100D267B4();
      v30 = v29;
      v27[7] = &type metadata for String;
      v31 = sub_1000053B0();
      v27[4] = v28;
      v78 = v27 + 4;
      v27[8] = v31;
      v27[5] = v30;
      v32 = sub_10006A888();
      v27[12] = &type metadata for String;
      v27[13] = v31;
      v76 = v31;
      v27[9] = v32;
      v27[10] = v33;
      v75 = objc_opt_self();
      LODWORD(v34) = [v75 _atomicIncrementAssertCount];
      v79 = [objc_allocWithZone(NSString) init];
      sub_100604538(v27, &v79);
      StaticString.description.getter();
      v77 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      v36 = [v35 lastPathComponent];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_60;
      }

      while (1)
      {
        v40 = static OS_os_log.crlAssert;
        v41 = swift_initStackObject();
        *(v41 + 16) = xmmword_10146CA70;
        *(v41 + 56) = &type metadata for Int32;
        *(v41 + 64) = &protocol witness table for Int32;
        *(v41 + 32) = v34;
        v42 = sub_100006370(0, &qword_1019F4D30);
        *(v41 + 96) = v42;
        v43 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        v44 = v77;
        *(v41 + 72) = v77;
        v45 = v76;
        *(v41 + 136) = &type metadata for String;
        *(v41 + 144) = v45;
        *(v41 + 104) = v43;
        *(v41 + 112) = v37;
        *(v41 + 120) = v39;
        *(v41 + 176) = &type metadata for UInt;
        *(v41 + 184) = &protocol witness table for UInt;
        *(v41 + 152) = 259;
        v46 = v79;
        *(v41 + 216) = v42;
        *(v41 + 224) = v43;
        *(v41 + 192) = v46;
        v47 = v44;
        v48 = v46;
        v49 = static os_log_type_t.error.getter();
        sub_100005404(v40, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v41);
        swift_setDeallocating();
        v77 = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v50 = static os_log_type_t.error.getter();
        sub_100005404(v40, &_mh_execute_header, v50, "Tried to apply %@ sort option, but it's disallowed in the %@ filter.", 72, 2, v27);

        type metadata accessor for __VaListBuilder();
        v51 = swift_allocObject();
        v51[2] = 8;
        v51[3] = 0;
        v52 = v51 + 3;
        v51[4] = 0;
        v51[5] = 0;
        v53 = v27[2];
        if (!v53)
        {
LABEL_54:
          v70 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v71 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v72 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v73 = String._bridgeToObjectiveC()();

          [v75 handleFailureInFunction:v71 file:v72 lineNumber:259 isFatal:0 format:v73 args:v70];

          swift_setDeallocating();
          swift_arrayDestroy();
          return;
        }

        v54 = 0;
        v39 = 40;
        while (1)
        {
          v55 = &v78[5 * v54];
          v37 = v55[3];
          sub_100020E58(v55, v37);
          v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v34 = *v52;
          v57 = *(v56 + 16);
          v58 = __OFADD__(*v52, v57);
          v59 = *v52 + v57;
          if (v58)
          {
            break;
          }

          v60 = v51[4];
          if (v60 >= v59)
          {
            goto LABEL_46;
          }

          if (v60 + 0x4000000000000000 < 0)
          {
            goto LABEL_58;
          }

          v37 = v51[5];
          if (2 * v60 > v59)
          {
            v59 = 2 * v60;
          }

          v51[4] = v59;
          if ((v59 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_59;
          }

          v61 = v27;
          v62 = v56;
          v63 = swift_slowAlloc();
          v64 = v63;
          v51[5] = v63;
          if (v37)
          {
            if (v63 != v37 || v63 >= &v37[8 * v34])
            {
              memmove(v63, v37, 8 * v34);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v56 = v62;
            v27 = v61;
            v39 = 40;
LABEL_46:
            v64 = v51[5];
            if (!v64)
            {
              goto LABEL_53;
            }

            goto LABEL_47;
          }

          v56 = v62;
          v27 = v61;
          v39 = 40;
          if (!v64)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_47:
          v66 = *(v56 + 16);
          if (v66)
          {
            v67 = (v56 + 32);
            v68 = *v52;
            while (1)
            {
              v69 = *v67++;
              *&v64[8 * v68] = v69;
              v68 = *v52 + 1;
              if (__OFADD__(*v52, 1))
              {
                break;
              }

              *v52 = v68;
              if (!--v66)
              {
                goto LABEL_31;
              }
            }

            __break(1u);
            break;
          }

LABEL_31:

          if (++v54 == v53)
          {
            goto LABEL_54;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        swift_once();
      }
    }

    if (v14 != v13)
    {
      v19 = sub_100062B9C();
      v20 = *(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout);
      *(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout) = v19;
      v21 = v19;

      sub_100062F1C();
    }

    sub_100064B8C(1);
    v22 = sub_100062AD0();
    if (v22)
    {

      sub_100F3C0F0();
    }

    if (*(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState) == 1)
    {
      v23 = [objc_opt_self() standardUserDefaults];
      sub_1012C8634();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_100009260();
      v25 = String._bridgeToObjectiveC()();

      [v23 setObject:isa forKey:v25];
    }
  }
}