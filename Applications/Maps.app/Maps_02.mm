id sub_1000701E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 delegate];
  if ([v4 sceneType] == 6)
  {
    v5 = [*(a1 + 32) _isSceneForeground:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100071310()
{
  if (qword_10195D218 != -1)
  {
    dispatch_once(&qword_10195D218, &stru_101628AE8);
  }

  v1 = qword_10195D210;

  return v1;
}

id sub_10007178C()
{
  if (qword_10195F8C8 != -1)
  {
    dispatch_once(&qword_10195F8C8, &stru_10165F910);
  }

  v1 = qword_10195F8C0;

  return v1;
}

id sub_1000717E0()
{
  if (qword_10195F420 != -1)
  {
    dispatch_once(&qword_10195F420, &stru_101656BE8);
  }

  v1 = qword_10195F418;

  return v1;
}

__n128 initializeBufferWithCopyOfBuffer for VisitedPlaceHomeCategoryInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10007281C@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = type metadata accessor for AttributedString();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000CE6B8(&qword_10191F5F8);
  __chkstk_darwin(v2);
  v4 = v21 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = Text.init(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = &v4[*(sub_1000CE6B8(&qword_10191F600) + 36)];
  sub_1000CE6B8(&qword_10191F608);
  static ContentTransition.numericText(increasing:)();
  *v13 = swift_getKeyPath();
  *v4 = v5;
  *(v4 + 1) = v7;
  v4[16] = v9 & 1;
  *(v4 + 3) = v11;
  *(v4 + 4) = KeyPath;
  v4[40] = 0;
  v14 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = &v4[*(sub_1000CE6B8(&qword_10191F610) + 36)];
  sub_1000CE6B8(&qword_10191F618);
  static Published.subscript.getter();

  *v15 = v14;
  v16 = swift_getKeyPath();
  v17 = &v4[*(sub_1000CE6B8(&qword_10191F620) + 36)];
  sub_1000CE6B8(&qword_10191F628);
  static ContentTransition.Style.sessionWidget.getter();
  *v17 = v16;
  v18 = swift_getKeyPath();
  v19 = &v4[*(v2 + 36)];
  *v19 = v18;
  v19[8] = 1;
  sub_100072C50();
  View.accessibility(identifier:)();
  return sub_100072D08(v4);
}

uint64_t sub_100072BE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.contentTransitionAddsDrawingGroup.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100072C50()
{
  result = qword_10191F630;
  if (!qword_10191F630)
  {
    sub_1000D6664(&qword_10191F5F8);
    sub_1003D9118();
    sub_1000414C8(&qword_101916F20, &qword_10190CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F630);
  }

  return result;
}

uint64_t sub_100072D08(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191F5F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGFloat sub_100072FE8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = v9;
  if (v9 && ([v9 isEmpty] & 1) == 0)
  {
    [v10 pathBounds];
    v17.origin.x = v11;
    v17.origin.y = v12;
    v17.size.width = v13;
    v17.size.height = v14;
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    *&a2 = CGRectUnion(v16, v17);
  }

  return a2;
}

id sub_100073758()
{
  if (qword_10195E2A0 != -1)
  {
    dispatch_once(&qword_10195E2A0, &stru_101632820);
  }

  v1 = qword_10195E298;

  return v1;
}

uint64_t PlatformController.currentNavigationSession.getter()
{
  v1 = [v0 sessionStack];
  sub_1000CE6B8(&unk_101922000);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (!__OFSUB__(v3--, 1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        v6 = swift_unknownObjectRelease();
        if (v5)
        {
          __chkstk_darwin(v6);
          v9 = v3;
          sub_1000753AC(&v9, &v10);
          v7 = v10;
          goto LABEL_18;
        }

        if (!v3)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_unknownObjectRetain();
          goto LABEL_8;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        if (!v3)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  v7 = 0;
LABEL_18:

  if (v7)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

unint64_t sub_100075340@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
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
    result = swift_unknownObjectRetain();
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

id sub_100076400()
{
  if (qword_10195DEA8 != -1)
  {
    dispatch_once(&qword_10195DEA8, &stru_101630230);
  }

  v1 = qword_10195DEA0;

  return v1;
}

id sub_10007645C()
{
  if (qword_10195DE88 != -1)
  {
    dispatch_once(&qword_10195DE88, &stru_1016301E8);
  }

  v1 = qword_10195DE80;

  return v1;
}

id sub_1000764DC()
{
  if (qword_10195CAD0 != -1)
  {
    dispatch_once(&qword_10195CAD0, &stru_1016228C0);
  }

  v1 = qword_10195CAC8;

  return v1;
}

id sub_100076A84()
{
  if (qword_10195E9A0 != -1)
  {
    dispatch_once(&qword_10195E9A0, &stru_10164CA30);
  }

  v1 = qword_10195E998;

  return v1;
}

id sub_100078974()
{
  if (qword_10195CE68 != -1)
  {
    dispatch_once(&qword_10195CE68, &stru_1016259C0);
  }

  v1 = qword_10195CE60;

  return v1;
}

void sub_10007ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_10007B340(uint64_t a1)
{
  v2 = [*(a1 + 32) item];
  v3 = [v2 guidanceState];
  v4 = [v3 currentLegIndex] + 1;
  v5 = [*(a1 + 32) item];
  v6 = [v5 guidanceState];
  v7 = [v6 numberOfLegs];

  v8 = [*(a1 + 32) item];
  v9 = [v8 guidanceState];
  v10 = [v9 isInArrivalState];

  v11 = [*(a1 + 32) item];
  v12 = [v11 guidanceState];
  v13 = [v12 isInParkingState];

  v14 = +[MNNavigationService sharedService];
  v15 = [v14 destination];
  v16 = [v15 findMyHandleID];

  v17 = +[MNNavigationService sharedService];
  v18 = [v17 alternateWalkingRoute];

  v19 = [*(a1 + 32) minorText];
  v20 = v19 != 0;

  v21 = *(a1 + 32);
  v22 = *(v21 + 208);
  v23 = 1;
  if (v22 == 1 && v10 && v4 >= v7 && v16)
  {
    v23 = [v21 _isEligibleToShowFindMyButton] ^ 1;
    v21 = *(a1 + 32);
    v22 = *(v21 + 208);
  }

  if ((v22 & v13 & 1) == 0 || !v18)
  {
    v76 = 1;
    if ((v22 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v24 = (v4 < v7) & (v10 | v13);
    v28 = v24 ^ 1;
    v74 = v24 ^ 1;
    if ((v10 | v13))
    {
      v29 = +[MNNavigationService sharedService];
      v30 = [v29 arrivalChargingStationInfo];
      [v30 chargingTime];
      v27 = v31 <= 0.0;

      v21 = *(a1 + 32);
      v26 = 1;
    }

    else
    {
      v24 = 0;
      v26 = 0;
      v27 = 1;
    }

    v25 = v28;
    goto LABEL_15;
  }

  v76 = [v21 _isEligibleToShowWalkingButton] ^ 1;
  v21 = *(a1 + 32);
  if (*(v21 + 208))
  {
    goto LABEL_11;
  }

LABEL_9:
  v24 = 0;
  v25 = 0;
  v26 = v10 | v13;
  v27 = 1;
  v74 = 1;
LABEL_15:
  v32 = v24 & v27;
  v73 = v25;
  v33 = v23 != [*(v21 + 144) isHidden] || v76 != objc_msgSend(*(*(a1 + 32) + 136), "isHidden") || v25 == objc_msgSend(*(*(a1 + 32) + 112), "isHidden") || v24 == objc_msgSend(*(*(a1 + 32) + 120), "isHidden") || v32 == objc_msgSend(*(*(a1 + 32) + 128), "isHidden") || v27 != objc_msgSend(*(*(a1 + 32) + 152), "isHidden");
  v72 = v33;
  v34 = v20 | v13;
  v35 = [*(a1 + 32) contentView];
  v36 = [v35 content];
  v77 = [v36 visibilityFingerprint];

  v37 = *(a1 + 32);
  v75 = v26;
  v38 = v32;
  if (v26)
  {
    v39 = [v37 contentView];
    v40 = [v39 content];
    v41 = [v40 headerView];
    [v41 setHidden:1];

    v42 = [*(a1 + 32) contentView];
    v43 = [v42 content];
    v44 = [v43 iconView];
    [v44 setHidden:1];

    v45 = [*(a1 + 32) contentView];
    v46 = [v45 content];
    v47 = [v46 trailingTopView];
LABEL_26:
    v54 = v47;
LABEL_27:
    v55 = 1;
    goto LABEL_28;
  }

  v48 = [v37 maneuverItem];
  v49 = [v48 laneGuidanceInfo];

  v50 = *(a1 + 32);
  if (v49)
  {
    v51 = [v50 contentView];
    v52 = [v51 content];
    v53 = [v52 headerView];
    [v53 setHidden:0];

    v45 = [*(a1 + 32) contentView];
    v46 = [v45 content];
    v47 = [v46 iconView];
    goto LABEL_26;
  }

  v68 = [v50[5] maneuverArtwork];

  v69 = [*(a1 + 32) contentView];
  v70 = [v69 content];
  v71 = [v70 headerView];
  [v71 setHidden:1];

  v45 = [*(a1 + 32) contentView];
  v46 = [v45 content];
  v47 = [v46 iconView];
  v54 = v47;
  if (!v68)
  {
    goto LABEL_27;
  }

  v55 = 0;
LABEL_28:
  [v47 setHidden:v55];

  [*(*(a1 + 32) + 64) setHidden:(v34 & 1) == 0];
  [*(*(a1 + 32) + 144) setHidden:v23];
  [*(*(a1 + 32) + 136) setHidden:v76];
  [*(*(a1 + 32) + 112) setHidden:v73 ^ 1u];
  [*(*(a1 + 32) + 120) setHidden:v74];
  [*(*(a1 + 32) + 128) setHidden:v38 ^ 1u];
  [*(*(a1 + 32) + 152) setHidden:v27];
  [*(*(a1 + 32) + 104) setHidden:(*(*(a1 + 32) + 208) & 1) == 0];
  if (v72)
  {
    [*(*(a1 + 32) + 104) invalidateStackViewAxis];
    [*(*(a1 + 32) + 104) updateStackViewAxisIfNeeded];
  }

  v56 = [*(a1 + 32) maneuverItem];
  v57 = [v56 maneuverGuidanceInfo];
  v58 = [v57 shieldInfo];
  v59 = v58 == 0;

  v60 = v59 | v75;
  v61 = [*(a1 + 32) contentView];
  v62 = [v61 content];
  v63 = [v62 trailingTopView];
  [v63 setHidden:v60 & 1];

  v64 = [*(a1 + 32) contentView];
  v65 = [v64 content];
  v66 = [v65 visibilityFingerprint];
  v67 = [v66 isEqual:v77];

  if ((v67 & 1) == 0)
  {
    *(*(a1 + 32) + 88) = 0xBFF0000000000000;
  }

  [*(a1 + 32) _updateConstraints];
}

void sub_10007C4EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10007C508(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 usePersistentDisplay:WeakRetained[75]];
  }
}

id sub_10007DD1C()
{
  if (qword_10195D910 != -1)
  {
    dispatch_once(&qword_10195D910, &stru_10162B3E0);
  }

  v1 = qword_10195D908;

  return v1;
}

id sub_10007E168()
{
  if (qword_10195D6E8 != -1)
  {
    dispatch_once(&qword_10195D6E8, &stru_101629A00);
  }

  v1 = qword_10195D6E0;

  return v1;
}

id sub_10007E280(uint64_t a1)
{
  *(*(a1 + 32) + 33) = 0;
  if ([*(a1 + 32) cardState] == 2 || objc_msgSend(*(a1 + 32), "cardState") == 3)
  {
    [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingMapsRegionUpdatedWithGuidanceStep" object:*(a1 + 32) userInfo:0];
  }

  result = [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsPPTGuidanceDidUpdateNotifcation" object:*(a1 + 32) userInfo:0];
  v3 = *(a1 + 32);
  if (*(v3 + 34) == 1)
  {
    *(v3 + 34) = 0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _scheduleReloadAnimated:v5];
  }

  return result;
}

void sub_10007E9E8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_10007F960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007F9A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *a7 = 1;
  return result;
}

_BYTE *sub_10007F9D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10007EEA0;
    v3[3] = &unk_101622860;
    v3[4] = result;
    result = [result _notifyObserversWithBlock:v3];
    *(*(a1 + 32) + 8) = 0;
  }

  return result;
}

void sub_1000807BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[57];
  v4 = [v2 collectionView];
  if (v3)
  {
    v6 = *(a1 + 40);
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [v4 reloadItemsAtIndexPaths:v5];
  }

  else
  {
    v7 = *(a1 + 40);
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    [v4 reconfigureItemsAtIndexPaths:v5];
  }
}

id sub_1000808D8()
{
  if (qword_10195E2A8 != -1)
  {
    dispatch_once(&qword_10195E2A8, &stru_1016329E8);
  }

  v1 = qword_10195E2B0;

  return v1;
}

id sub_1000811E8()
{
  if (qword_10195D718 != -1)
  {
    dispatch_once(&qword_10195D718, &stru_101629A60);
  }

  v1 = qword_10195D710;

  return v1;
}

void sub_100082A50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEvent:v3];
}

id sub_1000835D4()
{
  if (qword_10195F160 != -1)
  {
    dispatch_once(&qword_10195F160, &stru_101653D70);
  }

  v1 = qword_10195F158;

  return v1;
}

uint64_t sub_100083670(uint64_t a1)
{
  v1 = 12;
  if ((a1 & 1) == 0)
  {
    v1 = 15;
  }

  if ((a1 & 2) != 0)
  {
    v1 &= 0xAu;
  }

  if ((a1 & 4) != 0)
  {
    v1 &= 3u;
  }

  if ((a1 & 8) != 0)
  {
    v1 &= 0x5555555555555555uLL;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return -1;
  }
}

id sub_100083A38()
{
  if (qword_10195CD08 != -1)
  {
    dispatch_once(&qword_10195CD08, &stru_101624160);
  }

  v1 = qword_10195CD00;

  return v1;
}

void sub_100083D3C(uint64_t a1)
{
  v2 = sub_10000B11C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) count];
    *buf = 134349570;
    v27 = WeakRetained;
    v28 = 2112;
    v29 = v4;
    v30 = 2048;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] [%@] begin completion with %lu completion blocks", buf, 0x20u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = sub_10000B11C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = objc_loadWeakRetained((a1 + 56));
          v13 = *(a1 + 32);
          v14 = objc_retainBlock(v10);
          *buf = 134349570;
          v27 = v12;
          v28 = 2112;
          v29 = v13;
          v30 = 2112;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] calling completion block: %@", buf, 0x20u);
        }

        v10[2](v10, *(a1 + 32), *(a1 + 48), *(a1 + 64));
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = objc_loadWeakRetained((a1 + 56));
  [v15 _completeOperation];

  v16 = sub_10000B11C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = objc_loadWeakRetained((a1 + 56));
    v18 = *(a1 + 32);
    *buf = 134349314;
    v27 = v17;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] [%@] finish completion", buf, 0x16u);
  }

  v19 = sub_10000B11C();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ContextOperation", "", buf, 2u);
  }
}

NSArray *__cdecl sub_1000842D8(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will push CarSearchModeController.", v9, 2u);
  }

  v6 = objc_alloc_init(CarSearchCategoriesModeController);
  v7 = [(NSArray *)v4 arrayByAddingObject:v6];

  return v7;
}

void sub_100084990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100084F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000882C4()
{
  if (+[CarVisualEffectView isDisablingBlur])
  {
    v0 = [UIColor colorWithRed:0.968627453 green:0.972549021 blue:0.984313726 alpha:1.0];
    v1 = [UIVisualEffect effectCompositingColor:v0];
  }

  else
  {
    v1 = [UIBlurEffect effectWithStyle:14];
  }

  return v1;
}

id sub_100089008()
{
  if (qword_10195D6B8 != -1)
  {
    dispatch_once(&qword_10195D6B8, &stru_1016299A0);
  }

  v1 = qword_10195D6B0;

  return v1;
}

id sub_10008AA10()
{
  if (qword_10195D6F8 != -1)
  {
    dispatch_once(&qword_10195D6F8, &stru_101629A20);
  }

  v1 = qword_10195D6F0;

  return v1;
}

id sub_10008B0B8()
{
  if (qword_10195D748 != -1)
  {
    dispatch_once(&qword_10195D748, &stru_101629AC0);
  }

  v1 = qword_10195D740;

  return v1;
}

uint64_t sub_10008B2E8()
{
  v0 = +[GEOPlatform sharedPlatform];
  if ([v0 isInternalInstall])
  {
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 0;
  }

  return BOOL;
}

id sub_10008B9E8(uint64_t a1)
{
  v2 = sub_10008B0B8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "deactivateForAllChromes", v5, 2u);
  }

  v3 = [*(a1 + 32) activeChromes];
  [v3 removeAllObjects];

  return [*(a1 + 32) setActive:0];
}

id sub_10008C23C()
{
  if (qword_10195E750 != -1)
  {
    dispatch_once(&qword_10195E750, &stru_101638A08);
  }

  v1 = qword_10195E748;

  return v1;
}

void sub_10008CCC8(void *a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if (([v10 isHidden] & 1) == 0)
  {
    v4 = a1[4];
    v5 = [v10 viewportConstraints];
    [v4 addObjectsFromArray:v5];

    v6 = a1[5];
    v7 = [v10 mapInsetsConstraints];
    [v6 addObjectsFromArray:v7];

    v8 = a1[6];
    v9 = [v10 collisionConstraints];
    [v8 addObjectsFromArray:v9];
  }
}

id sub_10008DCA0(uint64_t a1)
{
  v2 = sub_1000835D4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    v9 = [*(a1 + 40) valueForKey:@"key"];
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] The following visible cards will end temporary hiding: %@", buf, 0x16u);
  }

  return [*(a1 + 40) enumerateObjectsUsingBlock:&stru_101653D28];
}

id sub_10008DF8C()
{
  if (qword_10195F358 != -1)
  {
    dispatch_once(&qword_10195F358, &stru_101655D08);
  }

  v1 = qword_10195F350;

  return v1;
}

void sub_10008EF20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[88] = 0;
    v2 = WeakRetained;
    [WeakRetained _updateAppearance];
    WeakRetained = v2;
  }
}

void sub_10008EF80(id *a1, int a2)
{
  if ([a1[4] count])
  {
    [a1[4] removeObjectAtIndex:0];
  }

  if (!a2)
  {
    v4 = sub_1000835D4();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v5 = a1[5];
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_17;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_15;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_15:

LABEL_17:
    *buf = 138543362;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Batch updates interrupted!", buf, 0xCu);

LABEL_18:
    if (![a1[4] count])
    {
LABEL_27:
      if ([a1[6] count])
      {
        v18 = [a1[5] delegate];
        [v18 cardsUpdate:a1[5] finalizeUpdate:0 withCardConfigurations:a1[6]];
      }

      if ([a1[7] count])
      {
        v19 = [a1[5] delegate];
        [v19 cardsUpdate:a1[5] finalizeUpdate:1 withCardConfigurations:a1[7]];
      }

      if ([a1[8] count])
      {
        v20 = [a1[5] delegate];
        [v20 cardsUpdate:a1[5] finalizeUpdate:2 withCardConfigurations:a1[8]];
      }

      v21 = sub_1000835D4();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      v22 = a1[5];
      if (!v22)
      {
        v27 = @"<nil>";
        goto LABEL_42;
      }

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      if (objc_opt_respondsToSelector())
      {
        v25 = [v22 performSelector:"accessibilityIdentifier"];
        v26 = v25;
        if (v25 && ![v25 isEqualToString:v24])
        {
          v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

          goto LABEL_40;
        }
      }

      v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_40:

LABEL_42:
      *buf = 138543362;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}@] Updates completed, running completion blocks.", buf, 0xCu);

LABEL_43:
      [a1[5] runCompletionBlocks];
      return;
    }

    v11 = sub_1000835D4();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_46:

      v29 = [a1[4] firstObject];
      [v29 runWithoutAnimation];

      return;
    }

    v12 = a1[5];
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_45;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_26;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_26:

LABEL_45:
    v28 = [a1[4] count];
    *buf = 138543618;
    v32 = v17;
    v33 = 2048;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Will execute remaining %lu updates without animation.", buf, 0x16u);

    goto LABEL_46;
  }

  if (![a1[4] count])
  {
    goto LABEL_27;
  }

  v30 = [a1[4] firstObject];
  [v30 runWithCurrentOptions];
}

void sub_10008F8AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _updateDidComplete:WeakRetained];
}

uint64_t sub_10008FB5C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v11 = 0;
    goto LABEL_18;
  }

  if (!v3)
  {
    v6 = 1;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:
    v11 = !v6;
    goto LABEL_18;
  }

  v6 = UIContentSizeCategoryCompareToCategory(v3, UIContentSizeCategoryUnspecified) == NSOrderedSame;
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_4:
  v7 = UIContentSizeCategoryCompareToCategory(v5, UIContentSizeCategoryUnspecified);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = 1;
  }

  v10 = v8 - 1;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v11 = UIContentSizeCategoryCompareToCategory(v3, v5);
  }

LABEL_18:

  return v11;
}

Class sub_100090000(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for MapsFavoriteItem();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_10009006C()
{
  v2 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__sortedShortcuts;
  swift_beginAccess();
  v3 = *(v0 + v2);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));

  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v4 + 8 * v1 + 32);
      }

      v7 = v6;
      v8 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if ([v6 type] == 6)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v1;
      if (v8 == i)
      {
        v9 = _swiftEmptyArrayStorage;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_18:

  if (_swiftEmptyArrayStorage < 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = (_swiftEmptyArrayStorage >> 62) & 1;
  }

  if (v10 == 1)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v18 >= 0x14)
    {
      v24 = 20;
    }

    else
    {
      v24 = v18;
    }

    if (v18 >= 0)
    {
      v12 = v24;
    }

    else
    {
      v12 = 20;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v12)
    {
LABEL_26:
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0 && v12)
      {
        type metadata accessor for MapsFavoriteItem();

        v13 = 0;
        do
        {
          v14 = v13 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v13);
          v13 = v14;
        }

        while (v12 != v14);
      }

      else
      {
      }

      if (v10)
      {
        v15 = _CocoaArrayWrapper.subscript.getter();
        v10 = v16;
        v18 = v17;
        v1 = v19;

        v9 = v15;
        if (v1)
        {
LABEL_37:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v22 = swift_dynamicCastClass();
          if (!v22)
          {
            swift_unknownObjectRelease();
            v22 = _swiftEmptyArrayStorage;
          }

          v23 = v22[2];

          if (!__OFSUB__(v1 >> 1, v18))
          {
            if (v23 == (v1 >> 1) - v18)
            {
              v21 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v21)
              {
                return v21;
              }

              v21 = _swiftEmptyArrayStorage;
LABEL_43:
              swift_unknownObjectRelease();
              return v21;
            }

            goto LABEL_48;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        v18 = 0;
        v10 = &_swiftEmptyArrayStorage[4];
        v1 = (2 * v12) | 1;
        if (v1)
        {
          goto LABEL_37;
        }
      }

      sub_100415F50(v9, v10, v18, v1);
      v21 = v20;
      goto LABEL_43;
    }
  }

  else
  {
    result = _swiftEmptyArrayStorage[2];
    if (result >= 0x14)
    {
      v12 = 20;
    }

    else
    {
      v12 = _swiftEmptyArrayStorage[2];
    }

    if (result >= v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

NSString *sub_1000903BC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  if (v5)
  {
    v9 = UIContentSizeCategoryCompareToCategory(v5, UIContentSizeCategoryUnspecified);
    v8 = v5;
    if (v9)
    {
      if (!v6 || UIContentSizeCategoryCompareToCategory(v6, UIContentSizeCategoryUnspecified) == NSOrderedSame || (v10 = UIContentSizeCategoryCompareToCategory(v6, v5), v8 = v6, v10 != NSOrderedDescending))
      {
        if (!v7 || UIContentSizeCategoryCompareToCategory(v7, UIContentSizeCategoryUnspecified) == NSOrderedSame || (v11 = UIContentSizeCategoryCompareToCategory(v7, v5), v8 = v7, v11 != NSOrderedAscending))
        {
          v8 = v5;
        }
      }
    }
  }

  v12 = v8;

  return v12;
}

id sub_1000904CC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) collectionViewLayout];
  [v2 invalidateLayout];

  v3 = *(*(a1 + 32) + 8);

  return [v3 layoutIfNeeded];
}

id sub_100090D58()
{
  if (qword_10195D618 != -1)
  {
    dispatch_once(&qword_10195D618, &stru_101629860);
  }

  v1 = qword_10195D610;

  return v1;
}

BOOL sub_100092130(id a1, UIView *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(UIView *)v4 isUserInteractionEnabled])
  {
    v5 = ![(UIView *)v4 isHidden];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

id sub_1000925BC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_10195E760 == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [@"cat" stringByAppendingFormat:@"_%@", v2];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_10195E760, &stru_101638A28);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = @"cat";
LABEL_6:
  v4 = [(__CFString *)v3 stringByAppendingPathExtension:@"dat"];

  if (qword_10195E758)
  {
    v5 = [qword_10195E758 URLByAppendingPathComponent:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100092C80()
{
  v1 = [v0 type];
  result = 0;
  if (v1 > 4)
  {
    if (v1 != 5)
    {
      if (v1 != 6)
      {
        return result;
      }

      result = [v0 identifier];
      if (!result)
      {
        return result;
      }

      v6 = result;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v7 == 0x725479627261654ELL && v9 == 0xED00007469736E61)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      result = MapsSuggestionsLocalizedNearbyTransitShortString();
      if (!result)
      {
        return result;
      }

LABEL_21:
      v5 = result;
LABEL_22:
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v13;
    }

LABEL_17:
    result = dispatch thunk of FavoriteItem.customName.getter();
    if (v12)
    {
      return result;
    }

    [v0 type];
    result = MapsSuggestionsLocalizedTitleForShortcutType();
    goto LABEL_21;
  }

  if ((v1 - 2) < 2)
  {
    goto LABEL_17;
  }

  if (v1 == 1)
  {
    result = dispatch thunk of FavoriteItem.customName.getter();
    if (!v3)
    {
      result = dispatch thunk of FavoriteItem.mapItemStorage.getter();
      if (result)
      {
        v4 = result;
        v5 = [result name];

        if (v5)
        {
          goto LABEL_22;
        }

        return 0;
      }
    }
  }

  return result;
}

id sub_100092E38(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_100092ED0()
{
  if ([v0 type] == 6)
  {
    v1 = [v0 identifier];
    if (v1)
    {
      v2 = v1;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      if (v3 == 0x725479627261654ELL && v5 == 0xED00007469736E61)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v8 = MapsSuggestionsLocalizedNearbyTransitShortSubtitleString();
      if (!v8)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

LABEL_8:
  if (v0[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] == 1)
  {
    v8 = MapsSuggestionsLocalizedAddShortcutString();
LABEL_14:
    v10 = v8;
LABEL_15:
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  if (!*&v0[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle + 8])
  {
    v12 = [v0 mapItemStorage];
    v10 = MapsSuggestionsMapItemCityName();

    if (!v10)
    {
      return 0;
    }

    goto LABEL_15;
  }

  v9 = *&v0[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle];

  return v9;
}

uint64_t sub_1000933B4()
{
  v1 = *(v0 + 32);

  if (*(v1 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup))
  {
    goto LABEL_6;
  }

  v2 = [*(v0 + 32) mapItemStorage];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(v0 + 32);
  if (*(v3 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted) != 1 || (v4 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA, (*(v3 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA) & 1) != 0))
  {

    goto LABEL_6;
  }

  v7 = v2;
  v8 = *(v0 + 24);
  *(v3 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA) = 1;
  if (!v8)
  {
    v16 = 0.0;
    goto LABEL_13;
  }

  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  [v10 coordinate];
  v12 = v11;
  [v10 coordinate];
  v14 = v13;
  [v7 coordinate];
  j__GEOCalculateDistance();
  v16 = v15;
  v17 = objc_opt_self();
  [v7 coordinate];
  if ((v9 + 1) > 7)
  {
    v20 = 1;
  }

  else
  {
    v20 = dword_10120FC84[v9 + 1];
  }

  v27 = *(v0 + 32);
  v28 = [v17 idealTransportTypeForOrigin:v20 destination:v12 mapType:{v14, v18, v19}];

  *(v27 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_transportType) = v28;
  if (qword_1019066A0 != -1)
  {
    swift_once();
  }

  if (v16 >= *&qword_10195FED0)
  {
    v33 = *(v0 + 32);
    v34 = [objc_opt_self() _navigation_localizedStringForDistance:2 context:1 extraDetail:v16];
    [v33 setSubtitle:v34];

    if (qword_1019066C0 != -1)
    {
      swift_once();
    }

    if (*&qword_10195FEF0 < v16 || [*(v0 + 32) type] == 1)
    {
LABEL_27:

      *(v3 + v4) = 0;
      goto LABEL_6;
    }

LABEL_13:
    if (sub_10009396C())
    {
      v21 = *(v0 + 32);
      v22 = [objc_allocWithZone(MKDirectionsRequest) init];
      v23 = [objc_opt_self() mapItemForCurrentLocation];
      [v22 setSource:v23];

      v24 = [v21 mkMapItem];
      [v22 setDestination:v24];

      v25 = *&v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_transportType] - 1;
      if (v25 > 3)
      {
        v26 = 1;
      }

      else
      {
        v26 = qword_10120FCA8[v25];
      }

      v35 = v8 == 0;
      v36 = *(v0 + 40);
      v37 = *(v0 + 32);
      [v22 setTransportType:v26];
      v38 = [objc_allocWithZone(MKDirections) initWithRequest:v22];
      v39 = type metadata accessor for TaskPriority();
      (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
      v40 = v37;
      v41 = v38;
      v42 = static MainActor.shared.getter();
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = &protocol witness table for MainActor;
      *(v43 + 32) = v40;
      *(v43 + 40) = v41;
      *(v43 + 48) = v16;
      *(v43 + 56) = v35;
      sub_10020AAE4(0, 0, v36, &unk_10120FB90, v43);

      *(v3 + v4) = 0;
      goto LABEL_6;
    }

    goto LABEL_27;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 32);
  v45._object = 0x8000000101241030;
  v30._countAndFlagsBits = 0x79622065736F6C43;
  v31._object = 0x8000000101241010;
  v45._countAndFlagsBits = 0xD000000000000041;
  v31._countAndFlagsBits = 0xD000000000000019;
  v30._object = 0xE800000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, qword_1019600D8, v30, v45);
  v32 = String._bridgeToObjectiveC()();

  [v29 setSubtitle:v32];

  *(v29 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere) = 1;
  *(v3 + v4) = 0;
LABEL_6:

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100093924()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 57, 7);
}

BOOL sub_10009396C()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem);
  [v1 favoriteType];
  v2 = FavoriteItemType.rawValue.getter();
  if (v2 == FavoriteItemType.rawValue.getter())
  {
    return 1;
  }

  [v1 favoriteType];
  v3 = FavoriteItemType.rawValue.getter();
  if (v3 == FavoriteItemType.rawValue.getter())
  {
    return 1;
  }

  [v1 favoriteType];
  v5 = FavoriteItemType.rawValue.getter();
  return v5 == FavoriteItemType.rawValue.getter();
}

uint64_t sub_100093B24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100093B64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100093BA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100093DC8()
{
  v0 = dispatch thunk of FavoriteItem.type.getter();
  if (v0 > 6u)
  {
    return 0;
  }

  else
  {
    return qword_10120FCC8[v0];
  }
}

uint64_t sub_100093E5C()
{
  result = [v0 type];
  if (result > 2)
  {
    goto LABEL_7;
  }

  if (result >= 2)
  {
    goto LABEL_12;
  }

  v2 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 _styleAttributes];

    if (v4)
    {
      return v4;
    }
  }

  result = [objc_opt_self() markerStyleAttributes];
  if (!result)
  {
    __break(1u);
LABEL_7:
    if (result == 3)
    {
LABEL_15:
      result = [objc_opt_self() workStyleAttributes];
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_17;
    }

    if (result == 5)
    {
      result = [objc_opt_self() schoolStyleAttributes];
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (result != 6)
    {
LABEL_17:
      v5 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
      if (v5)
      {
        v6 = v5;
        v4 = [v5 _styleAttributes];

        if (v4)
        {
          return v4;
        }
      }

LABEL_22:
      result = [objc_opt_self() markerStyleAttributes];
      if (!result)
      {
        __break(1u);
      }

      return result;
    }

    result = [objc_opt_self() nearbyTransitStyleAttributes];
    if (result)
    {
      return result;
    }

    __break(1u);
LABEL_12:
    if (result == 2)
    {
      result = [objc_opt_self() homeStyleAttributes];
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  return result;
}

Class sub_100094378(char *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *&a1[v4];
  v6 = a1;

  os_unfair_lock_lock(v5 + 6);

  os_unfair_lock_unlock(v5 + 6);

  type metadata accessor for MapsFavoriteItem();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

void sub_10009448C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshAutomaticSharingContactsFromShortcut];
}

id sub_1000946AC()
{
  if (qword_10195D488 != -1)
  {
    dispatch_once(&qword_10195D488, &stru_101629540);
  }

  v1 = qword_10195D480;

  return v1;
}

void sub_10009475C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = [WeakRetained _favoriteWithIdentifier:v4];
      v6 = sub_1000946AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v5 title];
        *buf = 138477827;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "... found matching favorite item %{private}@", buf, 0xCu);
      }

      v8 = [v5 contacts];
      v9 = [MSPSharedTripContact contactsFromHandles:v8];
    }

    else
    {
      v5 = [WeakRetained _shortcutWithIdentifier:v4];
      v10 = sub_1000946AC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v5 title];
        *buf = 138477827;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "... found matching shortcut %{private}@", buf, 0xCu);
      }

      v8 = [v5 contacts];
      v9 = [MSPSharedTripContact contactValuesFromSuggestionsContacts:v8];
    }

    v12 = v9;

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100F6BBE0;
    v14[3] = &unk_10165E728;
    objc_copyWeak(&v17, (a1 + 40));
    v14[4] = WeakRetained;
    v15 = v12;
    v16 = *(a1 + 32);
    v13 = v12;
    dispatch_async(&_dispatch_main_q, v14);

    objc_destroyWeak(&v17);
  }
}

uint64_t sub_100094A30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_100094B08(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100094B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 112) = a7;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 24) = a4;
  type metadata accessor for MainActor();
  *(v7 + 48) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 56) = v9;
  *(v7 + 64) = v8;

  return _swift_task_switch(sub_100094E24, v9, v8);
}

uint64_t sub_100094BA8()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  v0[7] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_10054CACC;
  v8 = v0[2];
  v7 = v0[3];

  return sub_100094C6C(v8, v7);
}

uint64_t sub_100094C6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000CE6B8(&unk_10190BA50);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000933B4, v5, v4);
}

void sub_100094D44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained timeDidChangeSignificantly];
    [v2 scheduleTimeCheck];
    WeakRetained = v2;
  }
}

uint64_t sub_100094E24()
{
  v16 = v0;
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  *(v0 + 72) = sub_100021540(v2, qword_10195FE88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = [v6 debugDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10004DEB8(v10, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Refreshing ETA: %s", v7, 0xCu);
    sub_10004E3D0(v8);
  }

  return _swift_task_switch(sub_10054C384, 0, 0);
}

void sub_100096A2C(uint64_t a1)
{
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [GEOSearchCategoryStorage alloc];
        v10 = [v9 initWithSearchCategory:{v8, v14}];
        [v2 addObject:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 40) diskCachingKey];
  v12 = sub_1000925BC(v11);

  if (v12)
  {
    v13 = [v2 arrayByApplyingSelector:"data"];
    [v13 writeToURL:v12 atomically:1];
  }
}

id sub_10009737C()
{
  if (qword_10195EF28 != -1)
  {
    dispatch_once(&qword_10195EF28, &stru_101650CF8);
  }

  v1 = qword_10195EF20;

  return v1;
}

char *sub_100097874(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AE78);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_100097978(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000CE6B8(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_100097B7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AFD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_10191AFD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100097CB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AF08);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100097DA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_101908288);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v21 = v8;
        while (1)
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v8 >= v13)
          {
            break;
          }

          v22 = v9[v8];
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v46 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        if ((v45 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_45;
        }

        v43 = 1 << *(v5 + 32);
        v3 = v2;
        if (v43 >= 64)
        {
          bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v43;
        }

        *(v5 + 16) = 0;
        goto LABEL_44;
      }

      v20 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + 32 * v23;
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v30 = v24 + 40 * v23;
      if (v45)
      {
        v31 = *v30;
        v32 = *(v30 + 16);
        v49 = *(v30 + 32);
        v47 = v31;
        v48 = v32;
      }

      else
      {
        sub_10012EFAC(v30, &v47);
        v33 = v27;
        sub_1000D2C54(v26, v28, v29);
      }

      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      if (!v29)
      {
        break;
      }

      if (v29 == 1)
      {
        v34 = 4;
LABEL_22:
        Hasher._combine(_:)(v34);
        String.hash(into:)();
        goto LABEL_29;
      }

      if (v26 | v28)
      {
        if (v26 ^ 1 | v28)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }
      }

      else
      {
        v35 = 0;
      }

      Hasher._combine(_:)(v35);
LABEL_29:
      result = Hasher._finalize()();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v27;
      *(v16 + 8) = v26;
      *(v16 + 16) = v28;
      *(v16 + 24) = v29;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v47;
      v19 = v48;
      *(v17 + 32) = v49;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
      v5 = v44;
      v12 = v46;
    }

    v34 = 3;
    goto LABEL_22;
  }

LABEL_44:

LABEL_45:
  *v3 = v7;
  return result;
}

void sub_100098174(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionAnalyticsCapturer");
  v2 = qword_10195E940;
  qword_10195E940 = v1;
}

void sub_1000981F8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v36 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = a1 + 32;
    do
    {
      sub_100098118(v6, v35);
      v7 = v35[0];
      sub_10019D044(v35);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 += 48;
      --v3;
    }

    while (v3);
    v4 = v36;
  }

  v8 = sub_1000981B8(v4);

  v9 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
  swift_beginAccess();

  sub_1004449F0(v10);
  sub_10053C084(v8, v11, sub_10015F530, sub_10015ECB0, sub_1003074E8);

  __chkstk_darwin(*(v2 + v9));

  v13 = sub_1005400B4(v12, sub_1005405E8);

  v33 = v2;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v15 = ~v18;
    v14 = v13 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & *(v13 + 64);
    v17 = v13;
  }

  v21 = 0;
  v34 = v15;
  v22 = (v15 + 64) >> 6;
  while ((v17 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (sub_100014C84(0, &qword_10190D2F0), swift_dynamicCast(), v29 = v36, sub_100014C84(0, &qword_1019209A8), swift_dynamicCast(), v30 = v36, v25 = v21, v26 = v16, !v29))
    {
LABEL_25:
      sub_10005F14C(v17, v14, v34, v21, v16);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v31 = __CocoaDictionary.count.getter();
      }

      else
      {
        v31 = *(v13 + 16);
      }

      if (v31 < 1)
      {
      }

      else
      {
        v32 = sub_100416054(v13);

        sub_10053DEE8(v32);
      }

      return;
    }

LABEL_22:

    if (([v30 completed] & 1) == 0)
    {
      [v30 markAsCompletedWithSuccess:1 error:0];
    }

    v21 = v25;
    v16 = v26;
  }

  v23 = v21;
  v24 = v16;
  v25 = v21;
  if (v16)
  {
LABEL_18:
    v26 = (v24 - 1) & v24;
    v27 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
    v28 = *(*(v17 + 56) + v27);
    v29 = *(*(v17 + 48) + v27);
    v30 = v28;
    if (!v29)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v24 = *(v14 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1000985EC(unint64_t a1, unint64_t *i, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100014C84(0, i);
    sub_1001609AC(a4, i);
    result = Set.init(minimumCapacity:)();
    v14 = result;
    if (v9)
    {
      break;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; i = (i + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(a1 + 8 * i + 32);
      }

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      a4 = &v14;
      a5(&v13, v12);

      if (v9 == v11)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  a4 = result;
  v11 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (v11)
  {
    goto LABEL_6;
  }

  return result;
}

CGFloat sub_100099504(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = +[CarDisplayController sharedInstance];
  v17 = [v16 screenTraitCollection];
  v18 = [v17 layoutDirection];

  if (v18 == 1)
  {
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    MinX = CGRectGetMinX(v22);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    Width = CGRectGetWidth(v23);
    v24.origin.x = a5;
    v24.origin.y = a6;
    v24.size.width = a7;
    v24.size.height = a8;
    return CGRectGetMaxX(v24) - (MinX + Width);
  }

  return a1;
}

uint64_t type metadata accessor for NavMetricsView()
{
  result = qword_101924868;
  if (!qword_101924868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NSArray *__cdecl sub_10009A494(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = +[CarDisplayController sharedInstance];
  v6 = [v5 platformController];
  v7 = [v6 currentSession];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if ((v5 & 1) != 0 && v7)
  {
    v8 = objc_alloc_init(CarNavigationShareTripModeController);
    v9 = [(NSArray *)v4 arrayByAddingObject:v8];
  }

  else
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [NSString stringWithFormat:@"We should not permit showing Share Trip mode if we're not currently navigating"];
      v15 = 136316162;
      v16 = "[CarChromeModeCoordinator displayTripSharing]_block_invoke";
      v17 = 2080;
      v18 = "CarChromeModeCoordinator.m";
      v19 = 1024;
      v20 = 1548;
      v21 = 2080;
      v22 = "NO";
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v15, 0x30u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
      }
    }

    v9 = v4;
  }

  return v9;
}

void *sub_10009ACF0(id val)
{
  objc_initWeak(&location, val);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009B370;
  v3[3] = &unk_10162A430;
  objc_copyWeak(&v4, &location);
  v1 = objc_retainBlock(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

id sub_10009B2BC(void *a1)
{
  v1 = a1;
  v2 = [v1 _maps_diffableDataSourceIdentifier];
  if ([v2 length])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [NSString stringWithFormat:@"%@.%@", v4, v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10009B370(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained tableView:v9 cellForRowAtIndexPath:v8 itemIdentifier:v7];

  if (!v11)
  {
    v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  }

  return v11;
}

unint64_t sub_10009B534()
{
  result = qword_10190B720;
  if (!qword_10190B720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190B720);
  }

  return result;
}

id sub_10009B590()
{
  if (qword_10195F6C0 != -1)
  {
    dispatch_once(&qword_10195F6C0, &stru_10165CD78);
  }

  v1 = qword_10195F6B8;

  return v1;
}

int64_t sub_10009BAD8(id a1, UIView *a2, UIView *a3)
{
  v4 = a3;
  [(UIView *)a2 frame];
  v5 = [NSNumber numberWithDouble:?];
  [(UIView *)v4 frame];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v5 compare:v8];

  return v9;
}

void sub_10009BCF4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 route];
  [v4 _frameForRoute:v6 offset:a3];
  [v5 setFrame:?];
}

void sub_10009D690(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v4 = [(NSDictionary *)a3 allValues];
  [NSLayoutConstraint deactivateConstraints:v4];
}

void sub_10009E388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009E3A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

id sub_10009E9A4(char a1)
{
  if (a1)
  {
    [UIColor colorWithDynamicProvider:&stru_1016611B0];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v1 = ;

  return v1;
}

id sub_10009FA44(char a1)
{
  if (a1)
  {
    +[UIColor _carSystemPrimaryColor];
  }

  else
  {
    [UIColor colorWithWhite:1.0 alpha:0.800000012];
  }
  v1 = ;

  return v1;
}

id sub_10009FB80()
{
  if (qword_10195CE28 != -1)
  {
    dispatch_once(&qword_10195CE28, &stru_1016256B8);
  }

  v1 = qword_10195CE20;

  return v1;
}

void sub_10009FF4C(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];

  if (v2 && [*(a1 + 32) isActive])
  {
    v3 = *(a1 + 32);

    [v3 _rebuildAlternateRouteFocusItems];
  }
}

BOOL sub_1000A0000(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000A008C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1000A00BC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1000A0168@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000A0194@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000A0268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000D24CC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000A02AC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A02D8()
{
  if (sub_10056E8A0(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_1000A043C()
{
  if (sub_10056E8A0(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for VisitedPlaceHomeCategoryInfo(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VisitedPlaceHomeCategoryInfo(uint64_t result, int a2, int a3)
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

uint64_t sub_1000A0684(uint64_t a1, int a2)
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

uint64_t sub_1000A06A4(uint64_t result, int a2, int a3)
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

uint64_t sub_1000A06D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0718()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0750()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0788()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A07C8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A0844()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A088C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A08C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0904()
{
  v1 = *(v0 + 40);
  if (v1 > 2)
  {
    if (*(v0 + 40) > 4u)
    {
      if (v1 != 5 && v1 != 6)
      {
        goto LABEL_13;
      }
    }

    else if (v1 != 3)
    {
      if (v1 == 4)
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_13;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*(v0 + 40))
  {
    goto LABEL_12;
  }

  if (v1 == 1)
  {

    swift_unknownObjectWeakDestroy();
    swift_unknownObjectWeakDestroy();
    goto LABEL_13;
  }

  if (v1 == 2)
  {
    goto LABEL_12;
  }

LABEL_13:

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000A0A34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0A84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0AC8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0B00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A0B48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0B80()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A0BD8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A0C38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0C70()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A0CD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0D10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0D80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0DC0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0DF8()
{

  sub_1000DE4F4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A0E4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0E84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0EBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0EF4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A0F44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A0F8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0FC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0FFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A103C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101909FB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A10AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A10E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A111C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190A008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A118C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A125C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190FB80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A1318(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190FB80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_1000A14AC@<D0>(double *a1@<X8>)
{
  sub_1000F0B98();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000A1574(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000A1584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190A340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A15FC()
{
  v1 = type metadata accessor for UserGuideItemRowViewModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for UserGuideScrollView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v0 + v3;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = v9 + *(v1 + 20);
  if (*(v11 + 24))
  {
    sub_10004E3D0(v11);
  }

  v12 = v0 + v7;

  sub_1000A1574(*(v12 + 48), *(v12 + 56));
  v13 = *(v5 + 28);
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_1000A1850(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190A458);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A190C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190A458);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A1A94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1ADC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1B68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1C10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1C48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1C80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1CF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A1D60()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1DA0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1DE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1E18()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1E70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1EEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1F4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1F84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A1FCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000A2078(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001018D4(v1, &OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage);
}

void sub_1000A20F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001018D4(v1, &OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__image);
}

uint64_t sub_1000A2150()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A2190()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A21C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A2218@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000A2244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190AE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A22B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190AE68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A2324()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A23C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2408()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_1000A2440()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A252C()
{
  type metadata accessor for CardHeaderModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10010AD34();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A2724()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A275C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A27A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A280C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A2854()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A288C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A28CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2904()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A293C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2974()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000A29D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2A0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2A44()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000A2AB4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A2B1C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A2B74()
{
  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A2C60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2CAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2CE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A2D2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2D7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2DC4()
{
  sub_1000CD8F4();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000A2E04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2E3C()
{

  return _swift_deallocObject(v0, 42, 7);
}

uint64_t sub_1000A2E7C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2EF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A2F8C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000A3068()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A30A0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A3128()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3160()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3198()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A31D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3220()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1000A3260()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A32B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A32EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A33A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A33F8()
{
  sub_1000D6664(&qword_10190BC10);
  type metadata accessor for ModifiedContent();
  sub_100130140();
  return swift_getWitnessTable();
}

uint64_t sub_1000A3478()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A34B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A34FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3544()
{

  sub_1000F1230(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000A3590()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A35E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3618()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3668()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A36A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A36D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3710()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3778()
{
  v1 = *(sub_1000CE6B8(&qword_10190BED0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for PlaceSummaryViewModelLine(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 16, v2 | 7);
}

uint64_t sub_1000A38F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A39A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A3A5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A3B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1000A3BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000A3CA8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000A3D14()
{
  sub_1000D6664(&qword_10190C510);
  sub_1000D6664(&qword_10190C518);
  sub_1000414C8(&qword_10190C520, &qword_10190C510);
  sub_1000414C8(&qword_10190C528, &qword_10190C518);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A3E48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A3E8C()
{
  type metadata accessor for Section();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100109BFC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A40A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100144DA4(v1, v2);
}

uint64_t sub_1000A40EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4124()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A417C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000A41C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4200()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4238()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4270()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A42AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190CA30);
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
      v13 = sub_1000CE6B8(&qword_10190CA38);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000A43E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000CE6B8(&qword_10190CA30);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000CE6B8(&qword_10190CA38);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A458C()
{
  v1 = (type metadata accessor for PlaceItemsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000CE6B8(&qword_10190CA30);

  v7 = v1[14];
  sub_1000CE6B8(&qword_10190CBC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for InterfaceIdiom();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000A47C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4890()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A48D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4954()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A4994()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4A00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UICollectionView.SupplementaryRegistration();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A4AB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UICollectionView.SupplementaryRegistration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4B60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4B98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4BF0()
{
  sub_10016EA40(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1000A4C34()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A4C8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4CD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4D10()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A4D50()
{
  v1 = sub_1000CE6B8(&qword_10190D898);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A4DF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4E30(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A4EDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4F88()
{
  v1 = (type metadata accessor for HomePinnedItemShelfView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A5088()
{
  v1 = (type metadata accessor for HomePinnedItemShelfView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A51C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A5200()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A5254()
{
  sub_1000D6664(&qword_10190DB10);
  sub_1000414C8(&qword_10190DB50, &qword_10190DB10);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A52F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A532C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A536C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A53C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A53FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A5434()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A54C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A55CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A56D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A570C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A574C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5784()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A57BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A57FC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000A5834()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A58CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5954()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A5994()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A5A3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190CA38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A5AF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190CA38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A5BC4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190F6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A5C80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190F6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A5D30()
{
  sub_1000D6664(&qword_10190E288);
  sub_10018C3B8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A5DB8()
{
  v1 = (type metadata accessor for VisitHistoryFilterListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1000CE6B8(&qword_10190F6E0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A5EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190E490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5F40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A5F9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5FD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A6010()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6060()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A60B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A6138()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A6188()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000A61BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100194218(v1, v2);
}

uint64_t sub_1000A62E0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A6328()
{

  sub_10004E3D0(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A6370()
{
  sub_10004E3D0(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A63B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A6408()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A6450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6488()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A6540()
{
  v1 = *(_s4LineVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PlaceSummaryViewModelLine(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A6694()
{
  sub_1000CD8F4();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A66D8()
{
  v1 = *(type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  sub_1000CD8F4();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A67F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10191DA40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A68B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10191DA40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A6994(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000CE6B8(&qword_10190F6E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1000A6A5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190F6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A6B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1000A6BC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A6C68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000CE6B8(&qword_10190F6E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000A6DA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000CE6B8(&qword_10190F6E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1000A6ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_10190F6E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000A6FA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000CE6B8(&qword_10190F6E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A7074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A7120(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A71C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A7270(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A7314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A73C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A7464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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
    v12 = sub_1000CE6B8(&qword_10190FB80);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 48);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000A75A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_1000CE6B8(&qword_10190FB80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000A76D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for AttributedString();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000CE6B8(&qword_10190F380);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1000A7814(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000CE6B8(&qword_10190F380);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A79F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A7A94()
{
  _s9ImageViewVMa();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_1000D6664(&qword_10190F3E0);
  type metadata accessor for _ConditionalContent();
  sub_1000D6664(&qword_10190F3C0);
  type metadata accessor for _ConditionalContent();
  sub_1000D6664(&qword_10190F3B0);
  type metadata accessor for _ConditionalContent();
  sub_1000D6664(&qword_10190F398);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  sub_1001C5014();
  swift_getWitnessTable();
  sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
  swift_getWitnessTable();
  sub_1001C51B0();
  swift_getWitnessTable();
  sub_1001C539C();
  return swift_getWitnessTable();
}

uint64_t sub_1000A7D08()
{
  v1 = (_s13TappableEntryVMa(0) - 8);
  v2 = *(*v1 + 80);
  v16 = *(*v1 + 64);
  v17 = (v2 + 16) & ~v2;
  v18 = v0;
  v3 = (v0 + v17);

  sub_1000CD8F4();
  v4 = v3 + v1[8];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
  v8 = &v4[*(v7 + 20)];
  v6(v8, v5);
  v9 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(&v8[v10], v11);

  v14 = *(v9 + 48);
  if (!(*(v12 + 48))(&v8[v14], 1, v11))
  {
    v13(&v8[v14], v11);
  }

  return _swift_deallocObject(v18, v17 + v16, v2 | 7);
}

uint64_t sub_1000A7F70()
{

  sub_1000CD8F4();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000A7FDC()
{
  sub_1000CD8F4();

  sub_10013BD88(*(v0 + 72));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A8068()
{
  sub_1000CD8F4();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000A80A4()
{
  v1 = (_s12ActionButtonVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1000CD8F4();
  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A82C0()
{
  sub_1000D6664(&qword_101910510);
  type metadata accessor for DefaultButtonStyle();
  sub_1000414C8(&qword_101910548, &qword_101910510);
  sub_1001C3C48(&qword_101910550, &type metadata accessor for DefaultButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A83E4()
{
  sub_1000D6664(&qword_1019105E0);
  sub_1000D6664(&qword_1019105E8);
  _s12ContactBadgeVMa();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000A86D4()
{
  type metadata accessor for Button();

  return swift_getWitnessTable();
}

uint64_t sub_1000A8760()
{
  sub_1000D6664(&qword_1019109D0);
  _s9ImageViewVMa();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();

  return swift_getWitnessTable();
}

uint64_t sub_1000A88A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A88E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A8924()
{
  sub_1000D6664(&qword_101910B28);
  sub_1000D6664(&qword_101910B20);
  sub_1001CFAE8(&qword_101910B48, &qword_101910B20, &unk_1011EEE40, sub_1001CF880);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A89FC()
{
  sub_1000D6664(&qword_101910B98);
  sub_1000D6664(&qword_101910B90);
  sub_1000D6664(&qword_101910B88);
  type metadata accessor for InsetGroupedListStyle();
  sub_1001CFAE8(&qword_101910BB8, &qword_101910B88, &unk_1011EEEC8, sub_1001CFB98);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A8B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_10190CA38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1000CE6B8(&qword_101910C18);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000A8C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000CE6B8(&qword_10190CA38);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000CE6B8(&qword_101910C18);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A8D8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A8DC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A8DFC()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A8E44()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A8F08()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_1000A8FE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A9030()
{
  sub_1000D6664(&qword_101911080);
  sub_1001D36CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A9094(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GuideTileViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A9140(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GuideTileViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A91E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A9224()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A9260()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A9298()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A92E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A9324()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A937C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A93CC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101911310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A9434()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A946C()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000A94CC()
{
  sub_1000D6664(&qword_101911310);
  sub_1001D86D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A9530()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A95A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A95E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A9628()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A9664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A9730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UIHostingControllerSizingOptions();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

double sub_1000A97F4@<D0>(_OWORD *a1@<X8>)
{
  sub_1001DFA04();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000A9848()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A9880()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A98B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsElevationChartViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A9924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsElevationChartViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A9998()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A99D0()
{
  v1 = *(type metadata accessor for MapsElevationChart() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = type metadata accessor for MapsElevationChartViewModel(0);
  v7 = v6[11];
  v8 = sub_1000CE6B8(&qword_10191B3A0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000A9B50()
{
  v1 = *(type metadata accessor for MapsElevationChart() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = type metadata accessor for MapsElevationChartViewModel(0);
  v7 = v6[11];
  v8 = sub_1000CE6B8(&qword_10191B3A0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000A9D54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A9D8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A9E40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A9EB8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A9F0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A9F7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AA014()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA0A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA0E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AA120()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AA18C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AA1DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA214()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AA254()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AA29C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA2FC()
{
  v1 = type metadata accessor for CarUserGuideItemRowViewModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(v1 + 20);
  if (*(v6 + 24))
  {
    sub_10004E3D0(v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000AA430()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AA470()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA4B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AA504()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AA53C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190FB80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000AA5F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190FB80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AA6B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA734@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000AA838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101912500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AA8A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019124F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AA948()
{
  v1 = (type metadata accessor for GuidesPickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000AAB38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AAB70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AABA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AACB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AAD14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AAD54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AAD8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AADC4()
{
  v1 = sub_1000CE6B8(&qword_1019126F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AAE58()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AAE90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AAEE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AAF1C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000AB1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AttributedString();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000AB2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000AB36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000AB424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000AB530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000AB638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000AB704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000AB7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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
    v11 = sub_1000CE6B8(&qword_10190D5A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000AB8F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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
    v11 = sub_1000CE6B8(&qword_10190D5A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000ABA24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributedString();
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

  v14 = sub_1000CE6B8(&qword_10190F380);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[12];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[13]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000ABB84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for AttributedString();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000CE6B8(&qword_10190F380);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[13]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[12];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000ABF68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC020()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AC08C()
{
  type metadata accessor for GuideCell();
  sub_100228578(&qword_101911FB0, &type metadata accessor for GuideCell);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AC114()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC14C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AC18C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AC1F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC268()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AC328()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AC368()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000AC404()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC43C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC474()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000AC4B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003F592C(v1);
}

uint64_t sub_1000AC4F0()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000AC568()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC5F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AC640()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AC678()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AC704()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC73C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AC77C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000AC7DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC814()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC84C()
{
  v1 = type metadata accessor for ImageProvidingSpecs();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000AC930()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AC9A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_1019152C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000ACA60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_1019152C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000ACB10()
{
  v1 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 8))
  {
  }

  v5 = *(v1 + 24);
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000ACC40()
{
  v1 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 8))
  {
  }

  v5 = *(v1 + 24);
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000ACDDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000ACE14()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ACE54@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000ACEBC()
{
  sub_1000D6664(&qword_1019156F8);
  sub_1000D6664(&qword_1019156F0);
  sub_1000414C8(&qword_101915720, &qword_1019156F0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000ACFA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ACFDC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000AD03C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AD084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101915BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AD104()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD188()
{
  type metadata accessor for ButtonStyleConfiguration.Label();
  sub_10025D1EC(&qword_101910A80, &type metadata accessor for ButtonStyleConfiguration.Label);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AD2C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000AD3BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AD430(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100262370(v1, v2);
}

uint64_t sub_1000AD4A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AD520()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD56C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD5A4()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AD5F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD63C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD694()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AD6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_1019152C8);
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

uint64_t sub_1000AD7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000CE6B8(&qword_1019152C8);
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

uint64_t sub_1000AD878()
{
  v1 = *(type metadata accessor for VisitHistoryCategoryPickerView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000AD9B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD9EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000ADA2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ADA64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ADAA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ADAFC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ADB34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ADB6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ADBA4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000ADBF4()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000ADC44()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000ADC84()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000ADCDC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000ADD2C()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ADD80()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ADDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1000ADE8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000ADF44()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ADF88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ADFC8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000AE010@<X0>(_BYTE *a1@<X8>)
{
  sub_10017E204();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000AE0C0@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of SharedTripCellViewModel.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000AE134()
{

  sub_1000A1574(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000AE18C()
{
  sub_1000D6664(&qword_101916640);
  sub_1000D6664(&qword_101916638);
  sub_1000D6664(&qword_101916630);
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  sub_1000414C8(&qword_101916658, &qword_101916630);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AE2E4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AE338()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE37C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE3BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AE3F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000AE4EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000AE5A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE5DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE690()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AE6D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE708()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AE748()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AE780()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE7C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_101916D80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000AE884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_101916D80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AE934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101916E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AE9A4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101916E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AEA0C()
{
  v1 = (type metadata accessor for CarRoutesList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for ScrollPosition();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000CE6B8(&qword_101916D80);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000AEB3C()
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

uint64_t sub_1000AEC54@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.wantsDefaultFocus.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AED28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190FB80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000AEDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190FB80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000AEE70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AEEA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AEF40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AEF78()
{

  sub_10004E3D0(v0 + 40);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000AEFC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AF010()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AF060()
{
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000AF16C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000AF1AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AF1EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AF22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019174C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF29C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019174C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AF30C()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000AF36C()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000AF3E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Capsule();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000AF494(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Capsule();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AF538()
{
  v1 = (type metadata accessor for RefinementMultiSelectButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for RoundedCornerStyle();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000AF628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101917690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000AF76C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000AF824()
{
  v1 = *(type metadata accessor for RefinementBarButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000AF93C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AF974()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AFA38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFA70()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000AFB5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AFB94()
{
  v1 = sub_1000CE6B8(&qword_101917F78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AFC38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFCDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFD24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFD94()
{
  v1 = sub_1000CE6B8(&unk_101918380);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AFE54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFE8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFEC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AFF04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFF3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AFF74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AFFB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0004()
{

  sub_1000F1230(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000B0084()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B00D4()
{
  swift_unknownObjectRelease();
  sub_1000F1230(*(v0 + 32), *(v0 + 40));

  sub_1002BAA0C(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_1000B0144()
{
  swift_unknownObjectRelease();
  sub_1002BAA0C(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B0188()
{
  sub_1000D6664(&qword_101918600);
  sub_1000D6664(&qword_101918628);
  sub_1002BAA50();
  sub_1002BABEC();
  swift_getOpaqueTypeConformance2();
  sub_1001DF878();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B0250(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CarSearchBarViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B02FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CarSearchBarViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B0448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_10191B3A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000B0524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000CE6B8(&qword_10191B3A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000B05EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000CE6B8(&qword_10191B3A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B06A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10191B3A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B0760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B07E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B085C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1002A4AFC(v1, v2);
}

uint64_t sub_1000B08A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B08E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0918()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B096C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B09AC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000B0A08()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B0A58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B0AA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B0B18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0B50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0B90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0BCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0C0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0C44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0C80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B0CD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0D08()
{
  v1 = type metadata accessor for Location();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B0DCC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0E10()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B0E50()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000B0E94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PlaceCardLibraryOperationsCoordinator.mapItem.setter(v1);
}

void sub_1000B0EF4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PlaceCardLibraryOperationsCoordinator.viewControllerForPresentingAlert.setter(v1);
}

uint64_t sub_1000B0FEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1024()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B10A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B10DC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000B1140()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B1178()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B11C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_1000B1254@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 incidentType];
  *a2 = result;
  return result;
}

uint64_t sub_1000B129C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B12D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B1314()
{
  sub_1000D6664(&qword_101919478);
  sub_1000414C8(&qword_1019194A0, &qword_101919478);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B13AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1404()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1494()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B14E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B152C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B15A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190CA38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B165C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190CA38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B1728()
{
  v1 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1000A1574(*(v5 + 64), *(v5 + 72));

  v6 = *(v1 + 40);
  sub_1000CE6B8(&qword_10190CBC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for InterfaceIdiom();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000B19E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1A7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100320820(v1, v2);
}

uint64_t sub_1000B1AF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B1B70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1BB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B1C30()
{
  sub_1000D6664(&qword_101919DD8);
  sub_1003290C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B1C98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B1CE0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B1DB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1DF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1E30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1E68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B1EEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B1F2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1F64()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B1FAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1FE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B201C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B2058()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B2098()
{

  sub_100335DFC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B2160()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B2198()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B21EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2224()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B2270()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B22A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B233C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2374()
{
  sub_10004E3D0(v0 + 24);
  swift_unknownObjectWeakDestroy();
  if (*(v0 + 96))
  {
    sub_10004E3D0(v0 + 72);
  }

  if (*(v0 + 136))
  {
    sub_10004E3D0(v0 + 112);
  }

  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1000B23F4()
{
  v1 = *(v0 + 40);
  if (v1 > 2)
  {
    if (*(v0 + 40) > 4u)
    {
      if (v1 != 5 && v1 != 6)
      {
        goto LABEL_13;
      }
    }

    else if (v1 != 3)
    {
      if (v1 == 4)
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_13;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*(v0 + 40))
  {
    goto LABEL_12;
  }

  if (v1 == 1)
  {

    swift_unknownObjectWeakDestroy();
    swift_unknownObjectWeakDestroy();
    goto LABEL_13;
  }

  if (v1 == 2)
  {
    goto LABEL_12;
  }

LABEL_13:

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000B24A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B24E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B2530()
{

  sub_10004E3D0(v0 + 32);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000B258C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B25C4()
{

  sub_10004E3D0(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000B261C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191A790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B26D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191A788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B2758@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000B27F8()
{
  sub_1000D6664(&qword_10191A808);
  sub_10034A9D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B2904()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2980()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B29F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B2A30()
{
  v1 = sub_1000CE6B8(&unk_101919D38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B2AE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B2B7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B2BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000B2CAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000B2D64()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000B2DC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2DF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2E30()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B2E74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B2EB8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2EF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000B2F5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2F94()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B301C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3054()
{
  v1 = sub_1000CE6B8(&unk_101918380);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}