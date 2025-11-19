void sub_10022EF84()
{
  sub_100005D28();
  v94 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v99 = v1;
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  v97 = v5 - v4;
  sub_100008A4C();
  v98 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v96 = v6;
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v95 = v10 - v9;
  sub_100008A4C();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000688C();
  v92 = v12;
  v93 = v11;
  __chkstk_darwin(v11, v13);
  sub_100005BD0();
  v91 = v15 - v14;
  v16 = sub_10014EA98(&qword_1003AAF20);
  v17 = sub_100005568(v16);
  __chkstk_darwin(v17, v18);
  v88 = &v81 - v19;
  sub_100008A4C();
  v20 = type metadata accessor for URL.DirectoryHint();
  sub_10000688C();
  v22 = v21;
  __chkstk_darwin(v23, v24);
  sub_100005BD0();
  v27 = v26 - v25;
  v28 = type metadata accessor for URL();
  sub_10000688C();
  v90 = v29;
  v31 = *(v30 + 64);
  v34 = __chkstk_darwin(v32, v33);
  v89 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34, v35);
  v38 = &v81 - v37;
  v40 = __chkstk_darwin(v36, v39);
  v42 = &v81 - v41;
  __chkstk_darwin(v40, v43);
  v45 = &v81 - v44;
  v46 = [v0 features];
  v47 = [v46 isNameAndPhotoC3Enabled];

  if (v47)
  {
    v86 = [objc_opt_self() defaultManager];
    v48 = [v86 temporaryDirectory];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v101 = 0xD000000000000014;
    v102 = 0x80000001002A6590;
    (*(v22 + 104))(v27, enum case for URL.DirectoryHint.inferFromPath(_:), v20);
    sub_100028A30();
    v87 = v45;
    URL.appending<A>(component:directoryHint:)();
    (*(v22 + 8))(v27, v20);
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v49 = type metadata accessor for Logger();
    sub_1000058D0(v49, &unk_1003B8820);
    v50 = v90;
    v51 = *(v90 + 16);
    v51(v38, v42, v28);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v85 = v51;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v84 = v42;
      v56 = v55;
      v83 = swift_slowAlloc();
      v101 = v83;
      *v56 = 136315138;
      v57 = v88;
      v51(v88, v38, v28);
      sub_100006848(v57, 0, 1, v28);
      v82 = sub_100173DC8();
      v59 = v58;
      sub_10000830C(v57, &qword_1003AAF20);
      v60 = sub_1000302DC();
      v61(v60);
      v62 = v50;
      v63 = sub_100008ADC(v82, v59, &v101);

      *(v56 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v52, v53, "SNAP: deleteAllUnarchivedPosterDirectories path: %s", v56, 0xCu);
      sub_100005B2C(v83);
      sub_10000558C();
      v42 = v84;
      sub_100005BB8();
    }

    else
    {

      v64 = sub_1000302DC();
      v65(v64);
      v62 = v50;
    }

    sub_1000064BC(0, &qword_1003AAAB0);
    v67 = v91;
    v66 = v92;
    v68 = v93;
    (*(v92 + 104))(v91, enum case for DispatchQoS.QoSClass.background(_:), v93);
    v69 = static OS_dispatch_queue.global(qos:)();
    (*(v66 + 8))(v67, v68);
    v70 = v89;
    v85(v89, v42, v28);
    v71 = (*(v62 + 80) + 24) & ~*(v62 + 80);
    v72 = swift_allocObject();
    v73 = v86;
    *(v72 + 16) = v86;
    (*(v62 + 32))(v72 + v71, v70, v28);
    sub_100006A90();
    v102 = 1107296256;
    sub_1000070E4();
    v103 = v74;
    v104 = &unk_100361238;
    v75 = _Block_copy(&v101);
    v76 = v73;
    v77 = v95;
    static DispatchQoS.unspecified.getter();
    v100 = _swiftEmptyArrayStorage;
    sub_100158FC0();
    sub_10014EA98(&unk_1003AAAC0);
    sub_100032638();
    v78 = v97;
    v79 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v75);

    (*(v99 + 8))(v78, v79);
    (*(v96 + 8))(v77, v98);
    v80 = v88;
    (v88)(v42, v28);
    v80(v87, v28);
  }

  sub_100007B28();
}

id sub_10022F7B4()
{
  v1 = v0;
  v2 = &selRef_audioCategory;
  v3 = [v0 callCenter];
  v4 = [v3 frontmostCall];

  if (!v4)
  {
    return 0;
  }

  v5 = [v1 prioritizedCall];
  if (!v5)
  {
    v5 = v4;
  }

  v6 = [v1 associatedCallGroupForCall:v5];

  v7 = [v6 calls];
  sub_1000064BC(0, &qword_1003ADBE0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100017230(v8);

  if (v9 > 1)
  {
    if (qword_1003A9F40 != -1)
    {
LABEL_98:
      sub_10000755C();
    }

    v10 = type metadata accessor for Logger();
    sub_1000058D0(v10, &unk_1003B8820);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!sub_100005908(v12))
    {
      goto LABEL_9;
    }

    v13 = sub_100005924();
    sub_10000539C(v13);
    v16 = "callToUseForWallpaper is nil, associatedCallGroup.calls.count > 1";
    goto LABEL_8;
  }

  if ([v1 usesCompactMulticallUI])
  {
    v19 = [v1 prioritizedCall];
    if (v19)
    {
      v17 = v19;

      return v17;
    }
  }

  v20 = [v1 callDisplayStyleManager];
  v21 = [v20 callDisplayStyle];

  v22 = &selRef_countByEnumeratingWithState_objects_count_;
  if (v21 == 3)
  {
    v23 = [v1 features];
    v24 = [v23 isDominoEnabled];

    if (v24)
    {
      if ([v1 participantsViewIsShowingMultipleLabel])
      {
        if (qword_1003A9F40 == -1)
        {
LABEL_19:
          v25 = type metadata accessor for Logger();
          sub_1000058D0(v25, &unk_1003B8820);
          v11 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();
          if (!sub_100005908(v26))
          {
            goto LABEL_9;
          }

          v27 = sub_100005924();
          sub_10000539C(v27);
          v16 = "callToUseForWallpaper is nil, participantsViewIsShowingMultipleLabel";
LABEL_8:
          sub_1000070F8(&_mh_execute_header, v14, v15, v16);
          sub_10000558C();
LABEL_9:

          return 0;
        }

LABEL_100:
        sub_10000755C();
        goto LABEL_19;
      }

      v89 = v6;
      v28 = [v1 callCenter];
      v29 = [v28 currentCalls];

      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = sub_100017230(v30);
      v6 = 0;
      v98 = v30 & 0xFFFFFFFFFFFFFF8;
      v99 = v30 & 0xC000000000000001;
      v91 = v1;
      v92 = v30;
      v97 = v30 + 32;
      v90 = v4;
LABEL_22:
      if (v6 == v31)
      {
        v6 = v31;
      }

      else
      {
        if (v99)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_100;
          }

          v32 = *(v97 + 8 * v6);
        }

        v33 = v32;
        v34 = sub_100231B14(&off_10035A508);
        v35 = [v33 status];
        if (*(v34 + 16))
        {
          v36 = v35;
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v36);
          v37 = Hasher._finalize()();
          v38 = ~(-1 << *(v34 + 32));
          while (1)
          {
            v39 = v37 & v38;
            if (((*(v34 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
            {
              break;
            }

            v37 = v39 + 1;
            if (*(*(v34 + 48) + 4 * v39) == v36)
            {

              v40 = __OFADD__(v6++, 1);
              v1 = v91;
              v2 = &selRef_audioCategory;
              if (!v40)
              {
                goto LABEL_22;
              }

              __break(1u);
LABEL_101:
              sub_10000755C();
              goto LABEL_69;
            }
          }
        }

        v1 = v91;
        v2 = &selRef_audioCategory;
      }

      v41 = sub_100017230(v30);
      v4 = -1;
      v22 = &selRef_countByEnumeratingWithState_objects_count_;
      if (v41 >= v6)
      {
        if (v6 == v41)
        {

          v6 = v89;
          v4 = v90;
          goto LABEL_71;
        }

        v95 = 1;
        v93 = v41;
      }

      else
      {
        v95 = -1;
        v93 = v6;
        v6 = v41;
      }

      v94 = sub_100017230(v92);
      v96 = sub_100017230(v92);
      v100 = 0;
      do
      {
        if (__OFADD__(v100, v95))
        {
          goto LABEL_96;
        }

        v100 += v95;
        if (v6 == v94)
        {
          goto LABEL_97;
        }

LABEL_43:
        v40 = __OFADD__(v6++, 1);
        if (v40)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        if (v6 == v96)
        {
          v6 = v96;
        }

        else
        {
          if (v99)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 < 0)
            {
              goto LABEL_94;
            }

            if (v6 >= *(v98 + 16))
            {
              goto LABEL_95;
            }

            v42 = *(v97 + 8 * v6);
          }

          v17 = v42;
          sub_10014EA98(&unk_1003AFB18);
          v43 = static _SetStorage.allocate(capacity:)();
          v44 = 0;
          v45 = v43 + 56;
          while (2)
          {
            v46 = *(&off_10035A538 + v44++ + 8);
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v46);
            v47 = Hasher._finalize()();
            v48 = ~(-1 << *(v43 + 32));
            while (1)
            {
              v49 = v47 & v48;
              v50 = (v47 & v48) >> 6;
              v51 = *(v45 + 8 * v50);
              v52 = 1 << (v47 & v48);
              if ((v52 & v51) == 0)
              {
                break;
              }

              if (*(*(v43 + 48) + 4 * v49) == v46)
              {
                goto LABEL_56;
              }

              v47 = v49 + 1;
            }

            *(v45 + 8 * v50) = v52 | v51;
            *(*(v43 + 48) + 4 * v49) = v46;
            v53 = *(v43 + 16);
            v40 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            v54 = v55 == 0;
            if (v40)
            {
              __break(1u);
              goto LABEL_87;
            }

            *(v43 + 16) = v55;
LABEL_56:
            if (v44 != 3)
            {
              continue;
            }

            break;
          }

          v56 = [v17 status];
          if (*(v43 + 16))
          {
            v57 = v56;
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v57);
            v58 = Hasher._finalize()();
            v59 = ~(-1 << *(v43 + 32));
            while (1)
            {
              v60 = v58 & v59;
              if (((*(v45 + (((v58 & v59) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v58 & v59)) & 1) == 0)
              {
                break;
              }

              v58 = v60 + 1;
              if (*(*(v43 + 48) + 4 * v60) == v57)
              {

                goto LABEL_43;
              }
            }
          }
        }
      }

      while (v6 != v93);

      v6 = v89;
      v4 = v90;
      v1 = v91;
      v2 = &selRef_audioCategory;
      v22 = &selRef_countByEnumeratingWithState_objects_count_;
      if (v100 > 1)
      {
        if (qword_1003A9F40 != -1)
        {
          goto LABEL_101;
        }

LABEL_69:
        v61 = type metadata accessor for Logger();
        sub_1000058D0(v61, &unk_1003B8820);
        v11 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (!sub_100005908(v62))
        {
          goto LABEL_9;
        }

        v63 = sub_100005924();
        sub_10000539C(v63);
        v16 = "callToUseForWallpaper is nil, answeredCalls > 1";
        goto LABEL_8;
      }
    }
  }

LABEL_71:
  v64 = [v1 v22[399]];
  v65 = [v64 shouldShowFullScreenCallWaiting];

  if (v65 & 1) != 0 || (v66 = [v1 v2[163]], v67 = TUCallCenter.cnk_wantsCallWaiting.getter(), v66, (v67 & 1) == 0) || (v68 = objc_msgSend(v1, v2[163]), v69 = objc_msgSend(v68, "cnk_hasTooManyCallsForCallWaitingBanner"), v68, (v69) || !objc_msgSend(v1, "usesCompactMulticallUI"))
  {
LABEL_81:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v77 = type metadata accessor for Logger();
    sub_1000058D0(v77, &unk_1003B8820);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (sub_100005908(v79))
    {
      v80 = sub_100005924();
      sub_10000539C(v80);
      sub_1000070F8(&_mh_execute_header, v81, v82, "callToUseForWallpaper is frontmostCall");
      sub_10000558C();
    }

    return v4;
  }

  v17 = [v1 activeCall];
  v70 = [v17 isScreening];
  v54 = qword_1003A9F40 == -1;
  if (v70)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v71 = type metadata accessor for Logger();
    sub_1000058D0(v71, &unk_1003B8820);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.fault.getter();
    if (sub_100005908(v73))
    {
      v74 = sub_100005924();
      sub_10000539C(v74);
      sub_1000070F8(&_mh_execute_header, v75, v76, "callToUseForWallpaper: wantsCallWaiting but activeCall is nil");
      sub_10000558C();
    }

    goto LABEL_81;
  }

LABEL_87:
  if (!v54)
  {
    sub_10000755C();
  }

  v83 = type metadata accessor for Logger();
  sub_1000058D0(v83, &unk_1003B8820);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  if (sub_100005908(v85))
  {
    v86 = sub_100005924();
    sub_10000539C(v86);
    sub_1000070F8(&_mh_execute_header, v87, v88, "callToUseForWallpaper is activeCall, wantsCallWaiting (banner-based)");
    sub_10000558C();
  }

  return v17;
}

BOOL sub_100230150()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0);
  sub_10000FF90();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100017230(v2);
  v4 = v3 == 0;
  if (sub_100017230(v2))
  {
    v5 = sub_100005D40();
    sub_100017238(v5, v6, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v2 + 32);
    }

    v8 = v7;

    if (v3 == 1)
    {
      if ([v8 status] == 6)
      {

        return 1;
      }

      else
      {
        v9 = [v8 status];

        return v9 == 5;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return v4;
}

void sub_100230294(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for GlassDimmingView.GradientValues();
  v9 = sub_100005568(v8);
  __chkstk_darwin(v9, v10);
  sub_100005BD0();
  sub_100006634();
  if (a1)
  {
    type metadata accessor for GlassDimmingView();
    sub_10000FF90();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = a1;
      if (a3 >= a2)
      {
        static GlassDimmingView.GradientValues.bottomLargeAudio.getter();
      }

      else
      {
        static GlassDimmingView.GradientValues.landscapeLargeAudio.getter();
      }

      dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
      if (([v4 isShowingPoster] & 1) == 0)
      {
        [v12 setAlpha:0.0];
      }
    }
  }
}

id sub_1002303FC()
{
  v0 = type metadata accessor for GlassDimmingView.GradientValues();
  v1 = sub_100005568(v0);
  __chkstk_darwin(v1, v2);
  sub_100005BD0();
  type metadata accessor for GlassDimmingView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static GlassDimmingView.GradientValues.bottomLargeAudio.getter();
  dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
  static GlassDimmingView.GradientValues.topLargeAudio.getter();
  dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v3;
}

void iPadAudioCallViewController.nameAndPhotoUtilitiesNameAndPhotoAvailable(forDestinations:withBannerType:)()
{
  sub_100005D28();
  v3 = v2;
  v5 = v4;
  v6 = sub_10014EA98(&unk_1003AAE40);
  v7 = sub_100005568(v6);
  __chkstk_darwin(v7, v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for ConversationControlsType();
  sub_10000688C();
  v13 = v12;
  __chkstk_darwin(v14, v15);
  sub_100005BD0();
  sub_100006634();
  sub_10016C68C(v3, v10);
  if (sub_100006AC0(v10, 1, v11) == 1)
  {
    sub_10000830C(v10, &unk_1003AAE40);
  }

  else
  {
    (*(v13 + 32))(v1, v10, v11);
    v16 = [v0 callCenter];
    v17 = [v16 callsWithStatus:1];

    sub_1000064BC(0, &qword_1003ADBE0);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100017230(v18))
    {
      v19 = sub_100005D40();
      sub_100017238(v19, v20, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v18 + 32);
      }

      v22 = v21;
      v32[1] = v13;

      v33 = v5;

      sub_10016C6FC(&v33);
      v23 = v33;
      v24 = [v22 remoteParticipantHandles];
      sub_1000064BC(0, &qword_1003AAE50);
      sub_10003012C(&qword_1003AAE58, &qword_1003AAE50);
      v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001665D4(v25);
      v27 = v26;

      v33 = v27;

      sub_10016C6FC(&v33);

      LOBYTE(v27) = sub_10016A5D8(v23, v33);

      if (v27)
      {
        sub_10022B048();

        v28 = sub_100008E74();
        v29(v28);
      }

      else
      {
        v30 = sub_100008E74();
        v31(v30);
      }
    }

    else
    {
      (*(v13 + 8))(v1, v11);
    }
  }

  sub_100007B28();
}

void sub_100230854(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    return;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v16 = type metadata accessor for Logger();
      sub_1000058D0(v16, &unk_1003B8820);
      v17 = a1;
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30 = v20;
        *v19 = 136315138;
        v21 = sub_1000064BC(0, &qword_1003AAE50);
        v22 = v17;
        v23 = String.init<A>(reflecting:)();
        sub_100008ADC(v23, v24, &v30);
        sub_10016D3EC();

        *(v19 + 4) = v21;
        _os_log_impl(&_mh_execute_header, oslog, v18, "Unknown handle type: %s", v19, 0xCu);
        sub_100005B2C(v20);
        sub_100005BB8();
        sub_100005BB8();

        return;
      }

      goto LABEL_16;
    }

    oslog = [objc_opt_self() sharedPrivacyManager];
    if (oslog)
    {
      v3 = [a1 value];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      sub_100245A04(1, v4, v6, oslog);
LABEL_16:

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  v7 = [a1 value];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = TUHomeCountryCode();
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v25 = objc_allocWithZone(TUPhoneNumber);
  v26 = sub_1002457CC(v8, v10, v13, v15);
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() sharedPrivacyManager];
    if (v28)
    {
      oslog = v28;
      [v28 setBlockIncomingCommunication:1 forPhoneNumber:v27];

      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }
}

void sub_100230B90(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for ReportSpamManager.IDSServiceType();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_100005BD0();
  sub_100006634();
  v10 = [a1 provider];
  v11 = [v10 isFaceTimeProvider];

  if (v11)
  {
    type metadata accessor for ReportSpamManager();
    (*(v7 + 104))(v2, enum case for ReportSpamManager.IDSServiceType.facetimeCall(_:), v5);
    ReportSpamManager.__allocating_init(idsServiceType:unknownContactChecker:)();
    v15[0] = a1;
    sub_1000064BC(0, &qword_1003ADBE0);
    ReportSpamManager.reportFaceTimeCallSpam<A>(call:)();
  }

  else
  {
    v12 = [a1 provider];
    v13 = [v12 isTelephonyProvider];

    if (v13)
    {
      type metadata accessor for VoiceSpamReportTelephonyManager();
      static VoiceSpamReportTelephonyManager.shared.getter();
      type metadata accessor for CarrierVoiceSpamReportHelper();
      swift_allocObject();
      CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
      v15[3] = sub_1000064BC(0, &qword_1003ADBE0);
      v15[4] = sub_10003012C(&unk_1003AAF00, &qword_1003ADBE0);
      v15[0] = a1;
      v14 = a1;
      dispatch thunk of CarrierVoiceSpamReportHelper.reportSpam(voiceCall:)();

      sub_100005B2C(v15);
    }
  }

  [v3 releaseDismissalAssertion];
  sub_1001A0B10();
}

Swift::Void __swiftcall iPadAudioCallViewController.contactViewController(_:didCompleteWith:)(CNContactViewController _, CNContact_optional didCompleteWith)
{
  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_10016C768;
    v8[5] = v5;
    sub_100006C90();
    v8[1] = 1107296256;
    sub_1000070E4();
    v8[2] = v6;
    v8[3] = &unk_1003611E8;
    v7 = _Block_copy(v8);

    [v4 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

BOOL sub_10023102C()
{
  v1 = [v0 features];
  v2 = [v1 isEnhancedEmergencyEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 callCenter];
  v4 = [v3 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0);
  sub_10000FF90();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100017230(v5))
  {
    v6 = sub_100005D40();
    sub_100017238(v6, v7, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v5 + 32);
    }

    v9 = v8;
  }

  else
  {

    v11 = [objc_allocWithZone(ICSApplicationDelegate) init];
    v9 = [v11 mostRecentlyDisconnectedAudioCall];

    if (!v9)
    {
      v12 = 0;
      goto LABEL_11;
    }
  }

  v12 = v9;
  v13 = [v12 isEmergency];

  if (v13)
  {

    return 1;
  }

LABEL_11:
  v14 = [v0 currentState];

  return v14 == 10;
}

void sub_1002311C8()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_1000070F8(&_mh_execute_header, v6, v7, "Update audio call background for emergency call");
    sub_10000558C();
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() blackColor];
    [v9 setBackgroundColor:v10];

    v11 = [v1 buttonsViewController];
    v13 = [v11 view];

    if (v13)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        [v12 updateBackgroundMaterial:3];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002313A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001411C(a2, a3);
  sub_100008194();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_10014EA98(&qword_1003AFB70);
  if (!sub_100012B50())
  {
    goto LABEL_5;
  }

  v12 = sub_10001411C(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
    sub_1001A0B10();
  }

  else
  {
    sub_100231948(v10, a2, a3, a1, v14);
    sub_1001A0B10();
  }
}

void sub_1002314B8()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  sub_10001411C(v6, v4);
  sub_100008194();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_10014EA98(&qword_1003AFB78);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v12))
  {
    goto LABEL_5;
  }

  v18 = sub_10001411C(v7, v5);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v1;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = v11;
    v21[1] = v9;
    sub_100007B28();
  }

  else
  {
    sub_100231990(v16, v7, v5, v11, v9, v20);
    sub_100007B28();
  }
}

void sub_1002315E8()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v30 = v6;
  v31 = v7;
  v29 = v8;
  v10 = v9;
  v11 = type metadata accessor for UUID();
  sub_10000688C();
  v13 = v12;
  __chkstk_darwin(v14, v15);
  sub_100005BD0();
  v18 = v17 - v16;
  v19 = *v0;
  sub_10017007C();
  sub_100008194();
  if (v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = v20;
  v24 = v21;
  sub_10014EA98(&qword_1003AFB68);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v19))
  {
    v25 = sub_10017007C();
    if ((v24 & 1) == (v26 & 1))
    {
      v23 = v25;
      goto LABEL_5;
    }

LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_5:
  v27 = *v1;
  if (v24)
  {
    v28 = v27[7] + 32 * v23;
    *v28 = v10;
    *(v28 + 1) = HIBYTE(v10) & 1;
    *(v28 + 8) = v29;
    *(v28 + 16) = v31;
    *(v28 + 24) = v30;
    *(v28 + 25) = HIBYTE(v30) & 1;
  }

  else
  {
    (*(v13 + 16))(v18, v5, v11);
    sub_1002319DC(v23, v18, v10 & 0x1FF, v29, v31, v30 & 0x1FF, v27);
  }

  sub_100007B28();
}

uint64_t sub_100231790(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  sub_10001411C(a1, a2);
  sub_100008194();
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  sub_10014EA98(&qword_1003AFB60);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_10001411C(a1, a2);
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = result;
LABEL_5:
  v24 = *v8;
  if (v21)
  {
    v25 = (v24[7] + 32 * v20);
    *v25 = a4;
    v25[1] = a5;
    v25[2] = a6;
    v25[3] = a7;
  }

  else
  {
    sub_100231AC4(v20, a1, a2, v24, a4, a5, a6, a7);
  }

  return result;
}

_OWORD *sub_1002318DC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100034DBC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_100231948(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_100231990(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1002319DC(unint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 1) = HIBYTE(a3) & 1;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 25) = HIBYTE(a6) & 1;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

unint64_t sub_100231AC4(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v8 = (a4[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a4[7] + 32 * result);
  *v9 = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_100231B14(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_10014EA98(&unk_1003AFB18);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 4 * v5++);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v7);
    result = Hasher._finalize()();
    v8 = ~(-1 << v3[32]);
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 6) + 4 * v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 6) + 4 * v9) = v7;
    v13 = *(v3 + 2);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 2) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100231C60(void *a1)
{
  v2 = [a1 filePath];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100231CD0(void *a1)
{
  v2 = [a1 wallpaperData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100231D40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 directoryExistsAtPath:v4];

  return v5;
}

void sub_100231DB0()
{
  v1 = *(type metadata accessor for ConversationControlsType() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10022BD80(v0 + v2, v3);
}

id sub_100231EC4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13InCallService13LogoImageView_style] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithImage:", a1);
  v7 = [v6 layer];
  [v7 setMasksToBounds:1];

  return v6;
}

void sub_100231F98()
{
  *(v0 + OBJC_IVAR____TtC13InCallService13LogoImageView_style) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100232018()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = [v0 layer];
  v2 = *&v0[OBJC_IVAR____TtC13InCallService13LogoImageView_style];
  v3 = 10.0;
  if (v2 == 1)
  {
    goto LABEL_4;
  }

  if (!v2)
  {
    [v0 frame];
    v3 = CGRectGetWidth(v5) * 0.5;
LABEL_4:
    [v1 setCornerRadius:v3];

    return;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

unint64_t sub_100232238()
{
  result = qword_1003AFBB0;
  if (!qword_1003AFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFBB0);
  }

  return result;
}

uint64_t sub_10023228C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002322CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_100232344@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MoveTransition();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v23 - v11;
  v42 = *(v1 + 5);
  __src[0] = v42;
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  if (v28 == 1)
  {
    v24 = static HorizontalAlignment.center.getter();
    v13 = v1[1];
    v25 = *v2;
    v26 = a1;
    v14 = v2[2];
    v15 = swift_allocObject();
    v16 = *(v2 + 1);
    *(v15 + 16) = *v2;
    *(v15 + 32) = v16;
    *(v15 + 48) = *(v2 + 2);
    *(v15 + 64) = v2[6];
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();

    sub_100232A90(&v42, __src);

    v27 = 0;
    v17 = static SafeAreaRegions.all.getter();
    v18 = static Edge.Set.all.getter();
    v19 = static Edge.Set.all.getter();
    MoveTransition.init(edge:)();
    (*(v5 + 16))(v9, v12, v4);
    sub_100232B00();
    v20 = AnyTransition.init<A>(_:)();
    (*(v5 + 8))(v12, v4);
    v41 = 0;
    v28 = v24;
    v29 = 0;
    v30 = 0;
    v31 = v25;
    v32 = v13;
    v33 = v14;
    a1 = v26;
    v34 = sub_100232A88;
    v35 = v15;
    v36 = v17;
    v37 = v18;
    v38 = v19;
    v39 = v20;
    v40 = 0;
  }

  else
  {
    v21 = static Color.clear.getter();
    v41 = 1;
    v28 = v21;
    v40 = 1;
  }

  sub_10014EA98(&qword_1003AFBC8);
  sub_100232860();
  _ConditionalContent<>.init(storage:)();
  return memcpy(a1, __src, 0x59uLL);
}

uint64_t sub_100232654(__int128 *a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Animation.clarityUINavigationTransition.getter();
  v12 = a1;
  v7 = *a1;
  v14 = *(a1 + 40);
  v15 = v7;
  v8 = swift_allocObject();
  v9 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = a1[2];
  *(v8 + 64) = *(a1 + 6);
  sub_100232BEC(&v15, v13);
  swift_unknownObjectRetain();

  sub_100232A90(&v14, v13);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100232860()
{
  result = qword_1003AFBD0;
  if (!qword_1003AFBD0)
  {
    sub_100155B7C(&qword_1003AFBC8);
    sub_100232918();
    sub_100027E08(&qword_1003AFC18, &unk_1003AFC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFBD0);
  }

  return result;
}

unint64_t sub_100232918()
{
  result = qword_1003AFBD8;
  if (!qword_1003AFBD8)
  {
    sub_100155B7C(&qword_1003AFBE0);
    sub_1002329D0();
    sub_100027E08(&qword_1003AFC08, &qword_1003AFC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFBD8);
  }

  return result;
}

unint64_t sub_1002329D0()
{
  result = qword_1003AFBE8;
  if (!qword_1003AFBE8)
  {
    sub_100155B7C(&qword_1003AFBF0);
    sub_100027E08(&qword_1003AFBF8, &qword_1003AFC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFBE8);
  }

  return result;
}

uint64_t sub_100232A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AFBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100232B00()
{
  result = qword_1003AF518;
  if (!qword_1003AF518)
  {
    type metadata accessor for MoveTransition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF518);
  }

  return result;
}

uint64_t sub_100232B74()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100232C48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100232C88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100232CD8()
{
  result = qword_1003AFC30;
  if (!qword_1003AFC30)
  {
    sub_100155B7C(&qword_1003AFC38);
    sub_100232860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFC30);
  }

  return result;
}

id sub_100232D64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_opt_self();

  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 tu_contactStoreConfigurationForBundleIdentifier:v8];

  v10 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v9];
  sub_100233114();
  v11 = [a4 sanitizedHandles];
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_100214580(v12);
  v14 = [a4 contactNamesByHandleWithContactsDataSource:v10];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = sub_100232ED4(a2, a3, v13, v15, 3);
  return v16;
}

id sub_100232ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a4)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() lockoutViewControllerWithBundleIdentifier:v7 contactsHandles:v8.super.isa contactNameByHandle:v9.super.isa type:a5];

  return v10;
}

uint64_t sub_100232FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100233158();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100233030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100233158();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100233094()
{
  sub_100233158();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1002330C0()
{
  result = qword_1003AFC40;
  if (!qword_1003AFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFC40);
  }

  return result;
}

unint64_t sub_100233114()
{
  result = qword_1003AFC48;
  if (!qword_1003AFC48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AFC48);
  }

  return result;
}

unint64_t sub_100233158()
{
  result = qword_1003AFC50;
  if (!qword_1003AFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFC50);
  }

  return result;
}

void GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v10 - 8, v11);
  v12 = type metadata accessor for CircleOverlayConfig();
  sub_10000688C();
  v14 = v13;
  v17 = __chkstk_darwin(v15, v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v73 - v21;
  v23 = type metadata accessor for GlassCutoutCirclesOverlayView();
  __chkstk_darwin(v23 - 8, v24);
  v75 = v14;
  v25 = *(v14 + 16);
  v25(&v5[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_frontCircleConfig], a1, v12);
  v25(&v5[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_backCircleConfig], a2, v12);
  v26 = &v5[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_size];
  *v26 = a3;
  v26[1] = a4;
  v25(v22, a1, v12);
  v76 = a2;
  v25(v19, a2, v12);
  GlassCutoutCirclesOverlayView.init(frontCircleConfig:backCircleConfig:size:)();
  v27 = objc_allocWithZone(sub_10014EA98(&qword_1003AFC60));
  *&v5[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_hostingController] = LockScreenHostingController.init(rootView:)();
  v28 = type metadata accessor for GlassCutoutCirclesOverlayViewController();
  v77.receiver = v5;
  v77.super_class = v28;
  v29 = objc_msgSendSuper2(&v77, "initWithNibName:bundle:", 0, 0);
  v30 = OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_hostingController;
  v31 = *&v29[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_hostingController];
  v32 = v29;
  [v32 addChildViewController:v31];
  v33 = sub_10000C1E4();
  if (!v33)
  {
    __break(1u);
    goto LABEL_15;
  }

  v34 = v33;
  v35 = sub_100025F18();
  if (!v35)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v36 = v35;
  [v34 addSubview:v35];

  v37 = sub_100025F18();
  if (!v37)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v38 = v37;
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = *&v29[v30];
  UIHostingController.safeAreaRegions.setter();

  v40 = *&v29[v30];
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v41 = sub_100025F18();
  if (!v41)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v42 = v41;
  v43 = [objc_opt_self() clearColor];
  [v42 setBackgroundColor:v43];

  sub_10014EA98(&unk_1003AAAA0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1002FB360;
  v45 = sub_100025F18();
  if (!v45)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = v45;
  v74 = a1;
  v47 = [v45 topAnchor];

  v48 = sub_10000C1E4();
  if (!v48)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v49 = [v48 topAnchor];

  v50 = [v47 constraintEqualToAnchor:v49];
  *(v44 + 32) = v50;
  v51 = sub_100025F18();
  if (!v51)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v52 = v51;
  v53 = [v51 bottomAnchor];

  v54 = sub_10000C1E4();
  if (!v54)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v55 = [v54 bottomAnchor];

  v56 = [v53 constraintEqualToAnchor:v55];
  *(v44 + 40) = v56;
  v57 = sub_100025F18();
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v58 = v57;
  v59 = [v57 leadingAnchor];

  v60 = sub_10000C1E4();
  if (!v60)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v61 = [v60 leadingAnchor];

  v62 = [v59 constraintEqualToAnchor:v61];
  *(v44 + 48) = v62;
  v63 = sub_100025F18();
  if (!v63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v64 = v63;
  v65 = [v63 trailingAnchor];

  v66 = sub_10000C1E4();
  if (v66)
  {
    v67 = objc_opt_self();
    v68 = [v66 trailingAnchor];

    v69 = [v65 constraintEqualToAnchor:v68];
    *(v44 + 56) = v69;
    sub_100162160();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v67 activateConstraints:isa];

    v71 = *&v29[v30];
    [v71 didMoveToParentViewController:v32];

    v72 = *(v75 + 8);
    v72(v76, v12);
    v72(v74, v12);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t type metadata accessor for GlassCutoutCirclesOverlayViewController()
{
  result = qword_1003AFC98;
  if (!qword_1003AFC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id GlassCutoutCirclesOverlayViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassCutoutCirclesOverlayViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void static GlassCutoutCirclesOverlayViewController.makeTextSOSButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  v46 = sub_100007398();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46, v8);
  sub_10000A554();
  sub_10000688C();
  v47 = v10;
  v48 = v9;
  __chkstk_darwin(v9, v11);
  sub_100007A88(v12, v45);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v45);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  v28 = &v45 - v27;
  v29 = *(v7 + 104);
  (v29)(v1, enum case for CircleOverlayConfig.CircleCorner.topRight(_:), v46);
  v30 = *(v4 + 104);
  v30(v0, enum case for CircleOverlayConfig.CircleScale.small(_:), v2);
  static Color.red.getter();
  static Color.white.getter();
  sub_100008E84();
  sub_100008458();
  v31 = sub_10002481C();
  v29(v31);
  v33 = v47;
  v32 = v48;
  v30(v0, enum case for CircleOverlayConfig.CircleScale.large(_:), v2);
  v34 = static Color.green.getter();
  static Color.white.getter();
  sub_100005D00();
  sub_100008AAC();
  v35 = sub_10000C684();
  v34(v35);
  v36 = sub_10000874C();
  v34(v36);
  objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  v37 = sub_100008E84();
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v37, v38, v39, v40);
  v42 = v41;
  if ([v41 view])
  {

    v43 = *(v33 + 8);
    v44 = sub_1000303CC();
    v43(v44);
    (v43)(v28, v32);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void static GlassCutoutCirclesOverlayViewController.makeEndHoldAndAcceptButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  v3 = sub_1000081A8(v2);
  __chkstk_darwin(v3, v4);
  v5 = sub_100007398();
  v6 = sub_100006F60(v5);
  v8 = v7;
  __chkstk_darwin(v6, v9);
  sub_10000A554();
  sub_10000688C();
  __chkstk_darwin(v10, v11);
  sub_100007A88(v12, v39);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  sub_100005A44();
  v27 = sub_100005528();
  v0(v27);
  v28 = sub_100008C80();
  v1(v28);
  static Color.red.getter();
  static Color.white.getter();
  sub_10000886C();
  sub_100009738();
  sub_100008458();
  v29 = sub_10002481C();
  v0(v29);
  v30 = sub_100030304();
  v1(v30);
  sub_100008DD0();
  v31 = static Color.green.getter();
  static Color.white.getter();
  sub_10000B4D0();
  sub_100009738();
  sub_100008458();
  v32 = sub_10000C684();
  v31(v32);
  v33 = sub_10000874C();
  v31(v33);
  v34 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  sub_100036240();
  v36 = v35;
  if ([v35 view])
  {

    v37 = sub_1000253AC();
    v8(v37);
    v38 = sub_1000303CC();
    v8(v38);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void static GlassCutoutCirclesOverlayViewController.makeEndAndAcceptButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  v3 = sub_1000081A8(v2);
  __chkstk_darwin(v3, v4);
  v5 = sub_100007398();
  v6 = sub_100006F60(v5);
  v8 = v7;
  __chkstk_darwin(v6, v9);
  sub_10000A554();
  sub_10000688C();
  __chkstk_darwin(v10, v11);
  sub_100007A88(v12, v41);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v42);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  sub_100005A44();
  v27 = sub_100005528();
  v0(v27);
  v28 = sub_100008C80();
  v1(v28);
  static Color.red.getter();
  static Color.white.getter();
  sub_10000B4D0();
  sub_100005D00();
  sub_100008AAC();
  v29 = sub_10002481C();
  v0(v29);
  v30 = sub_100030304();
  v1(v30);
  sub_100008DD0();
  v31 = static Color.green.getter();
  static Color.white.getter();
  sub_10000B4D0();
  sub_100009738();
  sub_100008458();
  v32 = sub_10000C684();
  v31(v32);
  v33 = sub_10000874C();
  v31(v33);
  objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  v34 = sub_100008E84();
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v34, v35, v36, v36);
  v38 = v37;
  if ([v37 view])
  {

    v39 = sub_1000253AC();
    v8(v39);
    v40 = sub_1000303CC();
    v8(v40);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void static GlassCutoutCirclesOverlayViewController.makeHoldAndAcceptButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  v3 = sub_1000081A8(v2);
  __chkstk_darwin(v3, v4);
  v5 = sub_100007398();
  v6 = sub_100006F60(v5);
  v8 = v7;
  __chkstk_darwin(v6, v9);
  sub_10000A554();
  sub_10000688C();
  __chkstk_darwin(v10, v11);
  sub_100007A88(v12, v41);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v42);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  sub_100005A44();
  v27 = sub_100005528();
  v0(v27);
  v28 = sub_100008C80();
  v1(v28);
  static Color.white.getter();
  static Color.green.getter();
  sub_10000886C();
  sub_100009738();
  CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
  v29 = sub_10002481C();
  v0(v29);
  v30 = sub_100030304();
  v1(v30);
  sub_100008DD0();
  v31 = static Color.green.getter();
  static Color.white.getter();
  sub_10000B4D0();
  sub_100009738();
  sub_100008458();
  v32 = sub_10000C684();
  v31(v32);
  v33 = sub_10000874C();
  v31(v33);
  objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  v34 = sub_100008E84();
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v34, v35, v36, v36);
  v38 = v37;
  if ([v37 view])
  {

    v39 = sub_1000253AC();
    v8(v39);
    v40 = sub_1000303CC();
    v8(v40);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void static GlassCutoutCirclesOverlayViewController.makeEndAcceptVoipButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  v3 = sub_1000081A8(v2);
  __chkstk_darwin(v3, v4);
  v5 = sub_100007398();
  v6 = sub_100006F60(v5);
  v8 = v7;
  __chkstk_darwin(v6, v9);
  sub_10000A554();
  sub_10000688C();
  __chkstk_darwin(v10, v11);
  sub_100007A88(v12, v39);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  sub_100005A44();
  v27 = sub_100005528();
  v0(v27);
  v28 = sub_100008C80();
  v1(v28);
  static Color.red.getter();
  static Color.white.getter();
  sub_10000B4D0();
  sub_100005D00();
  sub_100008AAC();
  v29 = sub_10002481C();
  v0(v29);
  v30 = sub_100030304();
  v1(v30);
  sub_100008DD0();
  v31 = static Color.blue.getter();
  static Color.white.getter();
  sub_100007238();
  v32 = sub_10000C684();
  v31(v32);
  v33 = sub_10000874C();
  v31(v33);
  v34 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  sub_100036240();
  v36 = v35;
  if ([v35 view])
  {

    v37 = sub_1000253AC();
    v8(v37);
    v38 = sub_1000303CC();
    v8(v38);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void static GlassCutoutCirclesOverlayViewController.makeEndHoldAcceptVoipButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  v3 = sub_1000081A8(v2);
  __chkstk_darwin(v3, v4);
  v5 = sub_100007398();
  v6 = sub_100006F60(v5);
  v8 = v7;
  __chkstk_darwin(v6, v9);
  sub_10000A554();
  sub_10000688C();
  __chkstk_darwin(v10, v11);
  sub_100007A88(v12, v39);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  sub_100005A44();
  v27 = sub_100005528();
  v0(v27);
  v28 = sub_100008C80();
  v1(v28);
  static Color.red.getter();
  static Color.white.getter();
  sub_10000886C();
  sub_100009738();
  CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
  v29 = sub_10002481C();
  v0(v29);
  v30 = sub_100030304();
  v1(v30);
  sub_100008DD0();
  v31 = static Color.blue.getter();
  static Color.white.getter();
  sub_100007238();
  v32 = sub_10000C684();
  v31(v32);
  v33 = sub_10000874C();
  v31(v33);
  v34 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  sub_100036240();
  v36 = v35;
  if ([v35 view])
  {

    v37 = sub_1000253AC();
    v8(v37);
    v38 = sub_1000303CC();
    v8(v38);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void static GlassCutoutCirclesOverlayViewController.makeEndVoipAcceptVoipButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  v3 = sub_1000081A8(v2);
  __chkstk_darwin(v3, v4);
  v5 = sub_100007398();
  v6 = sub_100006F60(v5);
  v8 = v7;
  __chkstk_darwin(v6, v9);
  sub_10000A554();
  sub_10000688C();
  __chkstk_darwin(v10, v11);
  sub_100007A88(v12, v39);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  sub_100005A44();
  v27 = sub_100005528();
  v0(v27);
  v28 = sub_100008C80();
  v1(v28);
  static Color.red.getter();
  static Color.white.getter();
  sub_100005D00();
  sub_10000896C();
  v29 = sub_10002481C();
  v0(v29);
  v30 = sub_100030304();
  v1(v30);
  sub_100008DD0();
  v31 = static Color.blue.getter();
  static Color.white.getter();
  sub_100007238();
  v32 = sub_10000C684();
  v31(v32);
  v33 = sub_10000874C();
  v31(v33);
  v34 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  sub_100036240();
  v36 = v35;
  if ([v35 view])
  {

    v37 = sub_1000253AC();
    v8(v37);
    v38 = sub_1000303CC();
    v8(v38);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void static GlassCutoutCirclesOverlayViewController.makeEndVoipAcceptButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  v3 = sub_1000081A8(v2);
  __chkstk_darwin(v3, v4);
  v5 = sub_100007398();
  v6 = sub_100006F60(v5);
  v8 = v7;
  __chkstk_darwin(v6, v9);
  sub_10000A554();
  sub_10000688C();
  __chkstk_darwin(v10, v11);
  sub_100007A88(v12, v39);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  sub_100005A44();
  v27 = sub_100005528();
  v0(v27);
  v28 = sub_100008C80();
  v1(v28);
  static Color.red.getter();
  static Color.white.getter();
  sub_100005D00();
  sub_10000896C();
  v29 = sub_10002481C();
  v0(v29);
  v30 = sub_100030304();
  v1(v30);
  sub_100008DD0();
  v31 = static Color.green.getter();
  static Color.white.getter();
  sub_10000B4D0();
  sub_100009738();
  sub_100008458();
  v32 = sub_10000C684();
  v31(v32);
  v33 = sub_10000874C();
  v31(v33);
  v34 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  sub_100036240();
  v36 = v35;
  if ([v35 view])
  {

    v37 = sub_1000253AC();
    v8(v37);
    v38 = sub_1000303CC();
    v8(v38);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void static GlassCutoutCirclesOverlayViewController.makeHoldAcceptVoipButtonCircleView()()
{
  sub_100005D28();
  v2 = type metadata accessor for CircleOverlayConfig.CircleScale();
  v3 = sub_1000081A8(v2);
  __chkstk_darwin(v3, v4);
  v5 = sub_100007398();
  v6 = sub_100006F60(v5);
  v8 = v7;
  __chkstk_darwin(v6, v9);
  sub_10000A554();
  sub_10000688C();
  __chkstk_darwin(v10, v11);
  sub_100007A88(v12, v39);
  v15 = __chkstk_darwin(v13, v14);
  sub_100025C54(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  __chkstk_darwin(v23, v24);
  sub_10002701C();
  __chkstk_darwin(v25, v26);
  sub_100005A44();
  v27 = sub_100005528();
  v0(v27);
  v28 = sub_100008C80();
  v1(v28);
  static Color.white.getter();
  static Color.green.getter();
  sub_10000886C();
  sub_100009738();
  CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
  v29 = sub_10002481C();
  v0(v29);
  v30 = sub_100030304();
  v1(v30);
  sub_100008DD0();
  v31 = static Color.blue.getter();
  static Color.white.getter();
  sub_100007238();
  v32 = sub_10000C684();
  v31(v32);
  v33 = sub_10000874C();
  v31(v33);
  v34 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  sub_100036240();
  v36 = v35;
  if ([v35 view])
  {

    v37 = sub_1000253AC();
    v8(v37);
    v38 = sub_1000303CC();
    v8(v38);
    sub_100014214();
    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002353CC()
{
  result = type metadata accessor for CircleOverlayConfig();
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

id PHScreenSharingContainerViewController.makeScreenShareViewController()()
{
  v0 = [objc_allocWithZone(type metadata accessor for SharedContentViewController()) init];
  sub_100235528();
  swift_unknownObjectRetain();
  dispatch thunk of SharedContentViewController.delegate.setter();
  type metadata accessor for ScreenSharingStateMonitor();
  v1 = static ScreenSharingStateMonitor.sharedMonitor.getter();
  v2 = v0;
  dispatch thunk of ScreenSharingStateMonitor.addObserver(_:)();

  return v2;
}

unint64_t sub_100235528()
{
  result = qword_1003AFCA8;
  if (!qword_1003AFCA8)
  {
    sub_100235580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFCA8);
  }

  return result;
}

unint64_t sub_100235580()
{
  result = qword_1003AFCB0;
  if (!qword_1003AFCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AFCB0);
  }

  return result;
}

void PHScreenSharingContainerViewController.sharedContentViewControllerDidUpdateScreenInfo(_:)()
{
  [v0 updatePresenterNameAndAvatar];
  v1 = [v0 pipController];
  [v1 updatePIPSize];

  v2 = [v0 pipController];
  [v2 updatePIPFrame];
}

uint64_t ScoreController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ScoreController.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100162C14(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___ScoreController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10023586C;
}

void sub_10023586C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id ScoreController.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScoreController();
  return objc_msgSendSuper2(&v2, "init");
}

void *sub_10023597C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1 <= 0x7FFFFFFF)
    {
      [result sendUserRating:a1 dontShowPromptAgain:a2 & 1];
      return swift_unknownObjectRelease();
    }

    __break(1u);
  }

  return result;
}

id ScoreController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScoreController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100235A68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScoreController();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100235B44(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PHBackgroundGradientBlurView_image);
  *(v1 + OBJC_IVAR___PHBackgroundGradientBlurView_image) = a1;
  v3 = a1;

  sub_100235B9C();
}

void sub_100235B9C()
{
  v1 = *(v0 + OBJC_IVAR___PHBackgroundGradientBlurView_image);
  sub_100235D5C();
}

void sub_100235BF0()
{
  *(v0 + OBJC_IVAR___PHBackgroundGradientBlurView_metalView) = 0;
  *(v0 + OBJC_IVAR___PHBackgroundGradientBlurView_renderer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100235C7C(void *a1)
{
  *&v1[OBJC_IVAR___PHBackgroundGradientBlurView_metalView] = 0;
  *&v1[OBJC_IVAR___PHBackgroundGradientBlurView_renderer] = 0;
  *&v1[OBJC_IVAR___PHBackgroundGradientBlurView_image] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BackgroundGradientBlurView();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100235DEC();
  v5 = v3;
  sub_100235D5C();

  return v4;
}

id sub_100235D5C()
{
  v1 = *(v0 + OBJC_IVAR___PHBackgroundGradientBlurView_renderer);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();
  }

  result = *(v0 + OBJC_IVAR___PHBackgroundGradientBlurView_metalView);
  if (result)
  {

    return [result setNeedsDisplay];
  }

  return result;
}

uint64_t sub_100235DEC()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AFD28);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v40 - v4;
  v6 = sub_10014EA98(&qword_1003AFD30);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for MetalContext();
  sub_10000688C();
  v12 = v11;
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15, v18);
  v21 = &v40 - v20;
  v22 = OBJC_IVAR___PHBackgroundGradientBlurView_metalView;
  if (!*&v1[OBJC_IVAR___PHBackgroundGradientBlurView_metalView])
  {
    static MetalContext.shared.getter();
    if (sub_100006AC0(v9, 1, v10) == 1)
    {
      return sub_100236530(v9);
    }

    else
    {
      (*(v12 + 32))(v21, v9, v10);
      [v1 bounds];
      v27 = [objc_allocWithZone(MTKView) initWithFrame:MetalContext.device.getter() device:{v23, v24, v25, v26}];
      swift_unknownObjectRelease();
      v28 = v27;
      [v28 setAutoresizingMask:18];
      v29 = [v28 layer];
      [v29 setAllowsDisplayCompositing:0];

      [v28 setEnableSetNeedsDisplay:1];
      if (MetalContext.supportsBGRA10.getter())
      {
        [v28 setColorPixelFormat:552];
      }

      (*(v12 + 16))(v17, v21, v10);
      v30 = type metadata accessor for Backdrop.ViewConfiguration();
      sub_100006848(v5, 1, 1, v30);
      v31 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
      v32 = Backdrop.CompositeRenderer.init(context:configuration:)();
      sub_100236598();
      swift_unknownObjectRetain();
      dispatch thunk of Backdrop.CompositeRenderer.observer.setter();
      v33 = [objc_opt_self() systemGrayColor];
      dispatch thunk of Backdrop.CompositeRenderer.setPlaceholderColor(_:animated:)();

      [v28 colorPixelFormat];
      dispatch thunk of Backdrop.CompositeRenderer.framebufferPixelFormat.setter();
      dispatch thunk of Backdrop.CompositeRenderer.isBehindLyrics.setter();
      [v28 setDelegate:v32];
      v34 = [v28 layer];

      sub_1002365EC();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = sub_100236238();
      [v34 setCompositingFilter:v35];

      v36 = *&v1[v22];
      *&v1[v22] = v28;
      v37 = v28;

      v38 = *&v1[OBJC_IVAR___PHBackgroundGradientBlurView_renderer];
      *&v1[OBJC_IVAR___PHBackgroundGradientBlurView_renderer] = v32;
      v39 = v32;

      [v1 addSubview:v37];
      return (*(v12 + 8))(v21, v10);
    }
  }

  return result;
}

id sub_100236238()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithType:v1];

  return v2;
}

void sub_1002362AC()
{
  v1 = type metadata accessor for Backdrop.State();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Backdrop.CompositeRenderer.state.getter();
  v8 = (*(v3 + 88))(v7, v1);
  if (v8 == enum case for Backdrop.State.none(_:))
  {
    v9 = *(v0 + OBJC_IVAR___PHBackgroundGradientBlurView_metalView);
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = static Backdrop.PerformanceConcessions.getter();
LABEL_7:
    [v10 setPreferredFramesPerSecond:v11];

    return;
  }

  v12 = *(v0 + OBJC_IVAR___PHBackgroundGradientBlurView_metalView);
  if (v8 == enum case for Backdrop.State.transitioning(_:))
  {
    if (!v12)
    {
      return;
    }

    v10 = v12;
    static Backdrop.PerformanceConcessions.getter();
    v11 = v13;
    goto LABEL_7;
  }

  if (v12)
  {
    v14 = v12;
    [v14 setPreferredFramesPerSecond:static Backdrop.PerformanceConcessions.getter()];
  }

  (*(v3 + 8))(v7, v1);
}

id sub_100236478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundGradientBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100236530(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AFD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100236598()
{
  result = qword_1003AFD38;
  if (!qword_1003AFD38)
  {
    type metadata accessor for BackgroundGradientBlurView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFD38);
  }

  return result;
}

unint64_t sub_1002365EC()
{
  result = qword_1003AFD40;
  if (!qword_1003AFD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AFD40);
  }

  return result;
}

uint64_t sub_10023665C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MoveTransition();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v24 - v11;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v13 = sub_10014EA98(&qword_1003AFD48);
  sub_1002368C4(v2, a1 + *(v13 + 44));
  LOBYTE(v2) = static Edge.Set.bottom.getter();
  *(a1 + *(sub_10014EA98(&qword_1003AFD50) + 36)) = v2;
  v14 = static Color.clarityUIContentBackground.getter();
  v15 = static Edge.Set.all.getter();
  v16 = a1 + *(sub_10014EA98(&qword_1003AFD58) + 36);
  *v16 = v14;
  *(v16 + 8) = v15;
  KeyPath = swift_getKeyPath();
  v18 = (a1 + *(sub_10014EA98(&qword_1003AFD60) + 36));
  v19 = *(sub_10014EA98(&qword_1003AF470) + 28);
  v20 = enum case for ColorScheme.dark(_:);
  type metadata accessor for ColorScheme();
  sub_1000058E8();
  (*(v21 + 104))(v18 + v19, v20);
  *v18 = KeyPath;
  MoveTransition.init(edge:)();
  (*(v5 + 16))(v9, v12, v4);
  sub_100232B00();
  v22 = AnyTransition.init<A>(_:)();
  (*(v5 + 8))(v12, v4);
  result = sub_10014EA98(&qword_1003AFD68);
  *(a1 + *(result + 36)) = v22;
  return result;
}

uint64_t sub_1002368C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10014EA98(&qword_1003AFD70);
  v5 = v4 - 8;
  v7 = __chkstk_darwin(v4, v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = v36 - v11;
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v36[0] = v13;
  v36[1] = v14;
  v39 = v15;
  v40 = v16;
  v17 = v14;
  v38 = Image.init(systemName:)();
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = *(a1 + 48);
  sub_100236EDC(a1, v41);
  ClarityUIKeypadView.init(didEnterNumberAction:)();
  static ClarityUIMetrics.componentHorizontalPadding.getter();
  v20 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v21 = &v12[*(v5 + 44)];
  v37 = v12;
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v26 = swift_allocObject();
  v27 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = *(a1 + 48);
  sub_1000098D4(v12, v9, &qword_1003AFD70);
  v28 = v39;
  *a2 = v13;
  *(a2 + 8) = v28;
  v29 = v40 & 1;
  *(a2 + 16) = v40 & 1;
  v30 = v38;
  *(a2 + 24) = v17;
  *(a2 + 32) = v30;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v31 = sub_10014EA98(&qword_1003AFD78);
  sub_1000098D4(v9, a2 + v31[16], &qword_1003AFD70);
  v32 = a2 + v31[20];
  *v32 = 0;
  *(v32 + 8) = 0;
  v33 = (a2 + v31[24]);
  *v33 = sub_100236F6C;
  v33[1] = v26;
  sub_100236EDC(a1, v41);
  v34 = v36[0];
  sub_1001AD550(v36[0], v28, v29);

  sub_100008360(v37, &qword_1003AFD70);

  sub_100008360(v9, &qword_1003AFD70);
  sub_1001AD540(v34, v28, v29);
}

void sub_100236BF4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v24 = *(a3 + 32);
  v23 = v6;
  v19 = *(a3 + 32);
  v20 = v6;
  sub_100232BEC(&v24, &v17);
  sub_1000098D4(&v23, &v17, &qword_1003AFD80);
  sub_10014EA98(&qword_1003AFD88);
  State.wrappedValue.getter();
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v17 = *(a3 + 32);
  v18 = v6;
  v15 = v21;
  v16 = v22;
  State.wrappedValue.setter();
  sub_100236F74(&v24);
  sub_100008360(&v23, &qword_1003AFD80);
  v8 = sub_10023E240();
  if ([v8 shouldPlayDTMFTone])
  {
    v9 = String._bridgeToObjectiveC()();
    if ([v9 length] < 1)
    {
      if (qword_1003A9FB8 == -1)
      {
LABEL_7:
        v11 = type metadata accessor for Logger();
        sub_100008A14(v11, &unk_1003B8978);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Unexpectedly missing number string for keypad button.", v14, 2u);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v10 = [v9 characterAtIndex:0];
      if (v10 <= 0xFF)
      {
        [v8 playDTMFToneForKey:v10];
LABEL_10:

        goto LABEL_11;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }

  v9 = v8;
LABEL_11:
}

uint64_t sub_100236F14()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100236FC8()
{
  result = qword_1003AFD90;
  if (!qword_1003AFD90)
  {
    sub_100155B7C(&qword_1003AFD68);
    sub_100237080();
    sub_100027E08(&qword_1003AFC18, &unk_1003AFC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFD90);
  }

  return result;
}

unint64_t sub_100237080()
{
  result = qword_1003AFD98;
  if (!qword_1003AFD98)
  {
    sub_100155B7C(&qword_1003AFD60);
    sub_100237138();
    sub_100027E08(&qword_1003AF758, &qword_1003AF470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFD98);
  }

  return result;
}

unint64_t sub_100237138()
{
  result = qword_1003AFDA0;
  if (!qword_1003AFDA0)
  {
    sub_100155B7C(&qword_1003AFD58);
    sub_1002371F0();
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFDA0);
  }

  return result;
}

unint64_t sub_1002371F0()
{
  result = qword_1003AFDA8;
  if (!qword_1003AFDA8)
  {
    sub_100155B7C(&qword_1003AFD50);
    sub_100027E08(&qword_1003AFDB0, &qword_1003AFDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFDA8);
  }

  return result;
}

uint64_t sub_1002374B8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ICSPillStateMonitor_hasCurrentCalls);
  *v3 = a1;
  v3[1] = a2;
  return sub_100006DEC();
}

id sub_1002374D0()
{
  ObjectType = swift_getObjectType();
  sub_1000064BC(0, &qword_1003AAAB0);
  v1 = static OS_dispatch_queue.main.getter();
  v2 = objc_allocWithZone(ObjectType);
  v3 = sub_1002375BC(v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id sub_1002375BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10014EA98(&qword_1003AE220);
  __chkstk_darwin(v5 - 8, v6);
  v61 = &v57 - v7;
  sub_10014EA98(&qword_1003AE228);
  sub_10000688C();
  v62 = v8;
  v63 = v9;
  __chkstk_darwin(v8, v10);
  v59 = &v57 - v11;
  sub_10014EA98(&qword_1003AE230);
  sub_10000688C();
  v64 = v12;
  v65 = v13;
  __chkstk_darwin(v12, v14);
  v60 = &v57 - v15;
  v16 = type metadata accessor for NSNotificationCenter.Publisher();
  v67 = *(v16 - 8);
  v17 = v67;
  v19 = __chkstk_darwin(v16, v18);
  v66 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v57 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v57 - v26;
  v28 = &v2[OBJC_IVAR___ICSPillStateMonitor_viewState];
  *v28 = sub_1002372C8;
  v28[1] = 0;
  v28[2] = sub_100237324;
  v28[3] = 0;
  v28[4] = sub_100237380;
  v28[5] = 0;
  v29 = &v2[OBJC_IVAR___ICSPillStateMonitor_hasCurrentCalls];
  *v29 = sub_1002373DC;
  v29[1] = 0;
  *&v2[OBJC_IVAR___ICSPillStateMonitor_subscriptions] = &_swiftEmptySetSingleton;
  v30 = &v2[OBJC_IVAR___ICSPillStateMonitor_timerState];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 4) = 0;
  v31 = OBJC_IVAR___ICSPillStateMonitor_state;
  v32 = type metadata accessor for PillStateMonitor.Snapshot(0);
  sub_100006848(&v2[v31], 1, 2, v32);
  *&v2[OBJC_IVAR___ICSPillStateMonitor_queue] = a1;
  v69.receiver = v2;
  v69.super_class = ObjectType;
  v57 = a1;
  v33 = objc_msgSendSuper2(&v69, "init");
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 defaultCenter];
  v37 = v27;
  NSNotificationCenter.publisher(for:object:)();

  v38 = [v34 defaultCenter];
  v39 = v24;
  v58 = v24;
  NSNotificationCenter.publisher(for:object:)();

  v40 = [v34 defaultCenter];
  v41 = v66;
  NSNotificationCenter.publisher(for:object:)();

  sub_10014EA98(&qword_1003AFF60);
  v42 = *(v17 + 72);
  v43 = v67;
  v44 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1003016C0;
  v46 = v45 + v44;
  v47 = *(v43 + 16);
  v47(v46, v37, v16);
  v47(v46 + v42, v39, v16);
  v47(v46 + 2 * v42, v41, v16);
  sub_100027D30(&qword_1003B0A90, &type metadata accessor for NSNotificationCenter.Publisher);
  v48 = v59;
  Publishers.MergeMany.init(_:)();
  v49 = v57;
  v68 = v57;
  v50 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v51 = v61;
  sub_100006848(v61, 1, 1, v50);
  sub_1000064BC(0, &qword_1003AAAB0);
  sub_100027E08(&qword_1003AE238, &qword_1003AE228);
  sub_100027E50();
  v52 = v60;
  v53 = v62;
  Publisher.receive<A>(on:options:)();
  sub_100008360(v51, &qword_1003AE220);
  (*(v63 + 8))(v48, v53);
  sub_100005C44();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100027E08(&qword_1003AE248, &qword_1003AE230);
  v54 = v64;
  Publisher<>.sink(receiveValue:)();

  (*(v65 + 8))(v52, v54);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v55 = *(v67 + 8);
  v55(v66, v16);
  v55(v58, v16);
  v55(v37, v16);
  return v35;
}

uint64_t sub_100237DA8()
{
  result = type metadata accessor for PillStateMonitor.State(319);
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

uint64_t sub_100237EF4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ICSPillStateMonitor_viewState);
  *v3 = a1;
  v3[1] = a2;
  return sub_100006DEC();
}

uint64_t sub_100237F98(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___ICSPillStateMonitor_viewState;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_100006DEC();
}

id sub_100237FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8[4] = a3();
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001CC768;
  v8[3] = a4;
  v6 = _Block_copy(v8);

  return v6;
}

void sub_1002380D8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  sub_100005C44();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_100238180(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002381C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100238244()
{
  v0 = type metadata accessor for PillStateMonitor.Snapshot(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1002382B0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___ICSPillStateMonitor_viewState;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  return sub_100006DEC();
}

uint64_t sub_1002382C8()
{
  v1 = type metadata accessor for PillStateMonitor.State(0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10014EA98(&qword_1003AB3E0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v116 - v7;
  v9 = sub_10014EA98(&qword_1003AFF68);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v116 - v11;
  v127 = type metadata accessor for PillStateMonitor.Snapshot(0);
  v14 = __chkstk_darwin(v127, v13);
  v119 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v116 = &v116 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v116 - v21;
  v24 = __chkstk_darwin(v20, v23);
  v121 = &v116 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v118 = &v116 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v32 = &v116 - v31;
  v34 = __chkstk_darwin(v30, v33);
  v122 = &v116 - v35;
  __chkstk_darwin(v34, v36);
  v126 = &v116 - v37;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38, v40);
  v42 = (&v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v0 + OBJC_IVAR___ICSPillStateMonitor_queue);
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v44 = v43;
  v45 = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v42, v38);
  if (v45)
  {
    v117 = v22;
    v120 = v32;
    v123 = v8;
    v124 = v4;
    v125 = v0;
    v46 = (v0 + OBJC_IVAR___ICSPillStateMonitor_viewState);
    v47 = *(v0 + OBJC_IVAR___ICSPillStateMonitor_viewState + 16);
    v48 = *(v0 + OBJC_IVAR___ICSPillStateMonitor_viewState + 32);
    sub_10014EA98(&qword_1003ACF40);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1002FB510;

    *(v45 + 32) = v47(v49) & 1;
    *(v45 + 33) = v48() & 1;

    LOBYTE(v22) = sub_10024BC88(1, v45);
    v50 = *v46;

    LOBYTE(v4) = v50(v51);

    if (qword_1003A9FA8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v52 = type metadata accessor for Logger();
  sub_100008A14(v52, &unk_1003B8948);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v129[0] = v56;
    *v55 = 136315650;
    v128[0] = v45;
    sub_10014EA98(&qword_1003ACF48);
    v57 = String.init<A>(reflecting:)();
    v59 = sub_100008ADC(v57, v58, v129);

    *(v55 + 4) = v59;
    *(v55 + 12) = 1024;
    *(v55 + 14) = v22 & 1;
    *(v55 + 18) = 1024;
    *(v55 + 20) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v53, v54, "Pill state timer fired. Calculated pill view state to be: %s (shouldBeShowingPill: %{BOOL}d) isSuppressingPill: %{BOOL}d", v55, 0x18u);
    sub_100005B2C(v56);
  }

  else
  {
  }

  v60 = v126;
  v61 = v127;
  Date.init()();
  *(v60 + *(v61 + 20)) = v4 & 1;
  *(v60 + *(v61 + 24)) = v22 & 1;
  v62 = OBJC_IVAR___ICSPillStateMonitor_state;
  v63 = v125;
  swift_beginAccess();
  sub_1002394C8(v63 + v62, v12, type metadata accessor for PillStateMonitor.State);
  v64 = sub_100006AC0(v12, 2, v61);
  if (!v64)
  {
    v76 = v12;
    if ((v22 & v4 & 1) == 0)
    {
      v86 = v120;
      sub_100239524(v12, v120);
      v87 = v118;
      sub_1002394C8(v86, v118, type metadata accessor for PillStateMonitor.Snapshot);
      v88 = v121;
      sub_1002394C8(v60, v121, type metadata accessor for PillStateMonitor.Snapshot);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v128[0] = v122;
        *v91 = 136315394;
        v92 = v87;
        v93 = v87;
        v94 = v123;
        sub_1002394C8(v92, v123, type metadata accessor for PillStateMonitor.Snapshot);
        sub_100006848(v94, 0, 1, v61);
        v95 = sub_100173F4C(v94);
        v97 = v96;
        sub_100008360(v94, &qword_1003AB3E0);
        sub_100239588(v93, type metadata accessor for PillStateMonitor.Snapshot);
        v98 = sub_100008ADC(v95, v97, v128);
        v61 = v127;

        *(v91 + 4) = v98;
        *(v91 + 12) = 2080;
        v99 = v121;
        sub_1002394C8(v121, v94, type metadata accessor for PillStateMonitor.Snapshot);
        sub_100006848(v94, 0, 1, v61);
        v100 = sub_100173F4C(v94);
        v102 = v101;
        sub_100008360(v94, &qword_1003AB3E0);
        sub_100239588(v99, type metadata accessor for PillStateMonitor.Snapshot);
        v103 = sub_100008ADC(v100, v102, v128);

        *(v91 + 14) = v103;
        _os_log_impl(&_mh_execute_header, v89, v90, "Pill state changed from %s -> %s.", v91, 0x16u);
        swift_arrayDestroy();

        v60 = v126;

        v85 = v120;
        v63 = v125;
      }

      else
      {

        sub_100239588(v88, type metadata accessor for PillStateMonitor.Snapshot);
        sub_100239588(v87, type metadata accessor for PillStateMonitor.Snapshot);
        v85 = v86;
      }

      goto LABEL_30;
    }

    v77 = v117;
    sub_100239524(v76, v117);
    if (*(v77 + *(v61 + 24)) != 1 || (*(v77 + *(v61 + 20)) & 1) == 0)
    {
      v105 = v116;
      sub_1002394C8(v60, v116, type metadata accessor for PillStateMonitor.Snapshot);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v128[0] = v109;
        *v108 = 136315394;
        v110 = v123;
        sub_1002394C8(v105, v123, type metadata accessor for PillStateMonitor.Snapshot);
        sub_100006848(v110, 0, 1, v61);
        v111 = sub_100173F4C(v110);
        v113 = v112;
        sub_100008360(v110, &qword_1003AB3E0);
        sub_100239588(v105, type metadata accessor for PillStateMonitor.Snapshot);
        v114 = sub_100008ADC(v111, v113, v128);
        v61 = v127;

        *(v108 + 4) = v114;
        *(v108 + 12) = 2048;
        *(v108 + 14) = 0x4008000000000000;
        _os_log_impl(&_mh_execute_header, v106, v107, "We detected an inconsistent pill state %s -> inconsistent state. Will hold for %f seconds before we take action.", v108, 0x16u);
        sub_100005B2C(v109);
        v63 = v125;

        v60 = v126;
      }

      else
      {

        sub_100239588(v105, type metadata accessor for PillStateMonitor.Snapshot);
      }

      v85 = v77;
      goto LABEL_30;
    }

    Date.timeIntervalSince(_:)();
    if (v78 > 3.0)
    {
      sub_10023909C();
    }

    sub_100239588(v77, type metadata accessor for PillStateMonitor.Snapshot);
    v79 = v60;
    return sub_100239588(v79, type metadata accessor for PillStateMonitor.Snapshot);
  }

  if (v64 != 1)
  {
    if (v22 & v4)
    {
      v65 = v119;
      sub_1002394C8(v60, v119, type metadata accessor for PillStateMonitor.Snapshot);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v128[0] = v69;
        *v68 = 136315138;
        v80 = v123;
        sub_1002394C8(v65, v123, type metadata accessor for PillStateMonitor.Snapshot);
        sub_100006848(v80, 0, 1, v61);
        v81 = sub_100173F4C(v80);
        v83 = v82;
        sub_100008360(v80, &qword_1003AB3E0);
        sub_100239588(v65, type metadata accessor for PillStateMonitor.Snapshot);
        v84 = sub_100008ADC(v81, v83, v128);
        v61 = v127;

        *(v68 + 4) = v84;
        v75 = "Pill state changed from inconsistent state -> %s.";
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v79 = v60;
    return sub_100239588(v79, type metadata accessor for PillStateMonitor.Snapshot);
  }

  v65 = v122;
  sub_1002394C8(v60, v122, type metadata accessor for PillStateMonitor.Snapshot);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v66, v67))
  {
LABEL_20:

    v85 = v65;
LABEL_30:
    sub_100239588(v85, type metadata accessor for PillStateMonitor.Snapshot);
    goto LABEL_31;
  }

  v68 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  v128[0] = v69;
  *v68 = 136315138;
  v70 = v123;
  sub_1002394C8(v65, v123, type metadata accessor for PillStateMonitor.Snapshot);
  sub_100006848(v70, 0, 1, v61);
  v71 = sub_100173F4C(v70);
  v73 = v72;
  sub_100008360(v70, &qword_1003AB3E0);
  sub_100239588(v65, type metadata accessor for PillStateMonitor.Snapshot);
  v74 = sub_100008ADC(v71, v73, v128);
  v61 = v127;

  *(v68 + 4) = v74;
  v75 = "Changing state from unknown to %s.";
LABEL_19:
  _os_log_impl(&_mh_execute_header, v66, v67, v75, v68, 0xCu);
  sub_100005B2C(v69);

  v60 = v126;

LABEL_31:
  v115 = v124;
  sub_100239524(v60, v124);
  sub_100006848(v115, 0, 2, v61);
  swift_beginAccess();
  sub_100035C94(v115, v63 + v62);
  return swift_endAccess();
}

void sub_10023909C()
{
  v1 = type metadata accessor for PillStateMonitor.State(0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = (v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchPredicate();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR___ICSPillStateMonitor_queue);
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = type metadata accessor for PillStateMonitor.Snapshot(0);
  sub_100006848(v4, 2, 2, v14);
  v15 = OBJC_IVAR___ICSPillStateMonitor_state;
  swift_beginAccess();
  sub_100035C94(v4, v0 + v15);
  swift_endAccess();
  v16 = sub_100009750();
  v17 = v4(v16);

  if (v17)
  {
    if (qword_1003A9FA8 == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      sub_100008A14(v18, &unk_1003B8948);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = 0x4008000000000000;
        _os_log_impl(&_mh_execute_header, v19, v20, "Pill state was inconsistent for %f seconds. Updating pill state...", v21, 0xCu);
      }

      v22 = [objc_opt_self() sharedInstance];
      [v22 stopSuppressingInCallStatusBar];

      v23 = objc_opt_self();
      v30[1] = 0;
      v30[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(43);
      v24._object = 0x80000001002ADE40;
      v24._countAndFlagsBits = 0xD000000000000020;
      String.append(_:)(v24);
      Double.write<A>(to:)();
      v25._countAndFlagsBits = 0x73646E6F63657320;
      v25._object = 0xE90000000000002ELL;
      String.append(_:)(v25);
      v26 = String._bridgeToObjectiveC()();

      [v23 simulateCrashReportWithReason:v26 pid:getpid() code:3735933201];
      goto LABEL_11;
    }

LABEL_13:
    sub_100006F7C();
    goto LABEL_4;
  }

  if (qword_1003A9FA8 != -1)
  {
    sub_100006F7C();
  }

  v27 = type metadata accessor for Logger();
  sub_100008A14(v27, &unk_1003B8948);
  v26 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v26, v28, "Not updating pill state on monitor because we have no current calls.", v29, 2u);
  }

LABEL_11:
}

uint64_t sub_1002394C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000058E8();
  v4 = sub_1000085C0();
  v5(v4);
  return a2;
}

uint64_t sub_100239524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PillStateMonitor.Snapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100239588(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000058E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1002395F8()
{
  v1 = v0;
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isiPadPostersEnabled(for:)();

  if (v3)
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 currentCalls];

    sub_1000064BC(0, &qword_1003ADBE0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_100017230(v6);
    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      if (![v9 isVideo])
      {
        goto LABEL_13;
      }
    }

    v10 = 0;
LABEL_13:

    [v1 setExistingPrioritizedCall:v10];

    sub_10023A3C0();
    v11 = objc_allocWithZone(type metadata accessor for PrioritizedCallObserver());
    v12 = v1;
    v13 = PrioritizedCallObserver.init(delegate:)();
    PrioritizedCallObserver.observeCalls()();
    [v12 setPrioritizedCallObserver:v13];
  }
}

void PHInCallRootViewController.updateWithDisconnectedCall(_:)(void *a1)
{
  v2 = v1;
  v4 = [v2 viewControllersDict];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 uniqueProxyIdentifier];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();

      v6 = v7;
    }

    v8 = v6;
    [v5 removeObjectForKey:?];
  }
}

uint64_t PHInCallRootViewController.updateWithPrioritizedCall(_:)(void *a1)
{
  result = [a1 isVideo];
  if ((result & 1) == 0)
  {
    result = sub_100239968(a1);
    if (result)
    {
      sub_100239A88(a1);

      return [v1 setExistingPrioritizedCall:a1];
    }
  }

  return result;
}

uint64_t sub_100239968(void *a1)
{
  v3 = [v1 existingPrioritizedCall];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uniqueProxyIdentifier];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = [a1 uniqueProxyIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v4)
  {
    if (v6 == v9 && v4 == v11)
    {

      v14 = 0;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v13 ^ 1;
    }
  }

  else
  {

    v14 = 1;
  }

  return v14 & 1;
}

void sub_100239A88(void *a1)
{
  v3 = [v1 currentChildAudioViewController];
  if (v3)
  {
    v29 = v3;
    v4 = [v1 viewControllersDict];
    if (v4)
    {
      v28 = v4;
      v5 = [v1 featureFlags];
      if (v5)
      {
        v6 = v5;
        v7 = [a1 uniqueProxyIdentifier];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        *&v31 = v8;
        *(&v31 + 1) = v10;
        v11 = [v28 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v11)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v31 = 0u;
          v32 = 0u;
        }

        v33[0] = v31;
        v33[1] = v32;
        if (*(&v32 + 1))
        {
          sub_1000064BC(0, &qword_1003B0550);
          if (swift_dynamicCast())
          {
            v13 = v30;
LABEL_20:
            v27 = v13;
            sub_100239DD0(v29, v27);
            swift_unknownObjectRelease();

            return;
          }
        }

        else
        {
          sub_10015E258(v33);
        }

        v14 = [v1 callDisplayStyleManager];
        if (v14)
        {
          v15 = v14;
          [v14 setUsesLargeFormatUI:1];

          v16 = [v1 callDisplayStyleManager];
          if (v16)
          {
            v17 = v16;
            v18 = [v1 callCenter];
            if (v18)
            {
              v19 = v18;
              v20 = objc_allocWithZone(iPadAudioCallViewController);
              swift_getObjectType();
              swift_unknownObjectRetain();
              v21 = a1;
              v22 = sub_10023A428(v17, v19, v6, v21, v20);
              v23 = [v21 uniqueProxyIdentifier];
              v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;

              *&v33[0] = v24;
              *(&v33[0] + 1) = v26;
              v13 = v22;
              [v28 __swift_setObject:v13 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

              swift_unknownObjectRelease();
              [v13 setInCallRootViewController:v1];
              goto LABEL_20;
            }

LABEL_24:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_24;
      }

      v12 = v28;
    }

    else
    {
      v12 = v29;
    }
  }
}

void sub_100239DD0(void *a1, void *a2)
{
  v3 = v2;
  sub_1000064BC(0, &qword_1003B0550);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    [v2 addChildViewController:a2];
    v6 = [a2 view];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        [v7 setFrame:{v11, v13, v15, v17}];
        v18 = [a2 view];
        if (v18)
        {
          v19 = v18;
          [v18 setAlpha:0.0];

          v20 = [v3 view];
          if (v20)
          {
            v21 = v20;
            v22 = [a2 view];
            if (v22)
            {
              v23 = v22;
              [v21 addSubview:v22];

              v24 = objc_opt_self();
              v25 = swift_allocObject();
              *(v25 + 16) = a1;
              v37 = sub_10023A4A0;
              v38 = v25;
              v33 = _NSConcreteStackBlock;
              v34 = 1107296256;
              v35 = sub_10002E570;
              v36 = &unk_100361848;
              v26 = _Block_copy(&v33);
              v27 = a1;

              v28 = swift_allocObject();
              v28[2] = a2;
              v28[3] = v27;
              v28[4] = v3;
              v37 = sub_10023A4C0;
              v38 = v28;
              v33 = _NSConcreteStackBlock;
              v34 = 1107296256;
              v35 = sub_100164920;
              v36 = &unk_100361898;
              v29 = _Block_copy(&v33);
              v30 = v27;
              v31 = a2;
              v32 = v3;

              [v24 animateWithDuration:0x10000 delay:v26 options:v29 animations:0.1 completion:0.0];
              _Block_release(v29);
              _Block_release(v26);
              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10023A0E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v20 = sub_10023A4CC;
  v21 = v8;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10002E570;
  v19 = &unk_1003618E8;
  v9 = _Block_copy(&v16);
  v10 = a2;

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a4;
  v20 = sub_10023A534;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100164920;
  v19 = &unk_100361938;
  v12 = _Block_copy(&v16);
  v13 = v10;
  v14 = a3;
  v15 = a4;

  [v7 animateWithDuration:0x20000 delay:v9 options:v12 animations:0.1 completion:0.0];
  _Block_release(v12);
  _Block_release(v9);
}

void sub_10023A290(void *a1, double a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:a2];
  }

  else
  {
    __break(1u);
  }
}

id sub_10023A2FC(int a1, id a2, void *a3, void *a4)
{
  [a2 willMoveToParentViewController:0];
  result = [a2 view];
  if (result)
  {
    v8 = result;
    [result removeFromSuperview];

    [a2 removeFromParentViewController];
    [a3 didMoveToParentViewController:a4];

    return [a4 setCurrentChildAudioViewController:a3];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10023A3C0()
{
  result = qword_1003AFF70;
  if (!qword_1003AFF70)
  {
    sub_1000064BC(255, &qword_1003AF9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFF70);
  }

  return result;
}

id sub_10023A428(void *a1, void *a2, uint64_t a3, void *a4, id a5)
{
  v8 = [a5 initWithCallDisplayStyleManager:a1 callCenter:a2 featureFlags:a3 call:a4];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_10023A4EC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t KeypadControlService.__allocating_init(call:)(void *a1)
{
  v2 = swift_allocObject();
  KeypadControlService.init(call:)(a1);
  return v2;
}

uint64_t KeypadControlService.init(call:)(void *a1)
{
  v2 = v1;
  *(v2 + 24) = a1;
  sub_10014EA98(&qword_1003ABF68);
  swift_allocObject();
  v4 = a1;
  *(v2 + 16) = CurrentValueSubject.init(_:)();
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 addObserver:v2 selector:"callModelDidChange:" name:TUCallModelChangedNotification object:0];

  v7 = [v5 defaultCenter];
  [v7 addObserver:v2 selector:"callIsOnHoldDidChange:" name:TUCallIsOnHoldChangedNotification object:0];

  sub_10023A898();
  return v2;
}

uint64_t sub_10023A6F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v9);

  return (*(v6 + 8))(v9, v5);
}

void sub_10023A7EC()
{
  v1 = *(v0 + 24);
  Notification.object.getter();
  if (v5)
  {
    sub_1001A7AEC();
    if (swift_dynamicCast())
    {
      v2 = [v3 isEqualToCall:v1];

      if (v2)
      {
        sub_10023A898();
      }
    }
  }

  else
  {
    sub_10015E258(v4);
  }
}

id sub_10023A8D8()
{
  v1 = *(v0 + 24);
  if ([v1 isOnHold])
  {
    return 0;
  }

  v3 = [v1 model];
  v2 = [v3 supportsDTMF];

  return v2;
}

uint64_t KeypadControlService.deinit()
{

  return v0;
}

uint64_t KeypadControlService.__deallocating_deinit()
{
  KeypadControlService.deinit();

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_10023A9A8()
{
  result = qword_1003AFF78;
  if (!qword_1003AFF78)
  {
    type metadata accessor for KeypadControlService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFF78);
  }

  return result;
}

id sub_10023AA24(uint64_t a1)
{
  result = [objc_allocWithZone(PHAudioCallControlsViewController) initWithCallDisplayStyleManager:a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023AAAC(void *a1, void *a2, double a3)
{
  v6 = type metadata accessor for AudioCallView();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9, v12);
  v15 = &v22 - v14;
  if (a2)
  {
    v16 = objc_opt_self();
    v17 = a2;
    v18 = [v16 sharedInstance];
    type metadata accessor for AudioCallModelManager();
    swift_allocObject();
    sub_1001D7828(a1, v17, v18, a3);
    sub_1001D7980();

    AudioCallView.init(model:)();
    (*(v7 + 16))(v11, v15, v6);
    v19 = objc_allocWithZone(type metadata accessor for InCallAudioButtonsViewController());
    sub_1001F8EB0(v11);
    v21 = v20;

    (*(v7 + 8))(v15, v6);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023AD34(uint64_t a1)
{
  v2 = sub_1000082FC(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_10023BF34(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_10023BF88(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_100005884(v7, v9, v11 & 1);
  v13 = sub_10000C6A0();
  if (v12)
  {
    sub_100005884(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_100179038(v13, v14, v15, a1);
    v16 = v17;
    v18 = sub_10000C6A0();
    sub_100005884(v18, v19, v20);
  }

  return v16;
}

uint64_t sub_10023ADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for ClarityUIContact();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100006848(a2, v7, 1, v6);
}

BOOL sub_10023AE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_10023AF84()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 frontmostCall];

  if (v4)
  {
    v5 = [v2 sharedInstance];
    v6 = [v5 activeConversationForCall:v4];

    if (v6)
    {
      type metadata accessor for ConversationHUDDetailsViewController();
      sub_10003012C(&qword_1003B0078, &unk_1003ADBD0);
      oslog = static ConversationHUDDetailsViewController.generateFTPeoplePickerViewController(conversation:delegate:)();
      [v1 presentViewController:? animated:? completion:?];

      goto LABEL_9;
    }
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v7 = type metadata accessor for Logger();
  sub_100008A14(v7, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    *swift_slowAlloc() = 0;
    sub_100006D40(&_mh_execute_header, v9, v10, "Unable to add remote members, no conversation.", v11, v12, v13, v14, v15, oslog);
  }

LABEL_9:
}

void sub_10023B1A8(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, int a5)
{
  v62 = a5;
  v63 = a4;
  v8 = type metadata accessor for UUID();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8, v9);
  v59 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = &_swiftEmptySetSingleton;
  v70 = &_swiftEmptySetSingleton;
  if (qword_1003A9F40 != -1)
  {
LABEL_43:
    swift_once();
  }

  v64 = a3;
  v11 = type metadata accessor for Logger();
  sub_100008A14(v11, &unk_1003B8820);
  a3 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a3, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, a3, v12, "Adding people to conversation on active call.", v13, 2u);
  }

  v14 = sub_100017230(a1);
  v66 = a2;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v67 = a1 & 0xFFFFFFFFFFFFFF8;
    v65 = xmmword_1002FAB60;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v67 + 16))
        {
          goto LABEL_42;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      a3 = sub_1001646DC();
      v20 = PickablePerson.handle.getter();
      v21 = [v20 value];

      if (!v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = String._bridgeToObjectiveC()();
      }

      v22 = sub_10023BEC4(v21);
      if (!v23)
      {
        break;
      }

      v24 = sub_10023AE98(v22, v23, a3);

      if (v24)
      {
      }

      else
      {
        PickablePerson.address.getter();
        v25 = String._bridgeToObjectiveC()();

        v26 = TUCopyIDSCanonicalAddressForDestinationID();

        if (v26 && (v27 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v29 = v28, v26, v30 = [objc_opt_self() sharedManager], sub_10014EA98(&qword_1003AAF10), v31 = swift_allocObject(), *(v31 + 16) = v65, *(v31 + 32) = v27, *(v31 + 40) = v29, isa = Array._bridgeToObjectiveC()().super.isa, a2 = v66, , LODWORD(v29) = objc_msgSend(v30, "isFaceTimeMultiwayAvailableForAnyDestinationInDestinations:", isa), v30, isa, v29))
        {
          a3 = PickablePerson.handle.getter();
          v33 = objc_allocWithZone(TUConversationMember);
          v34 = sub_10023BD1C(a3, 0, 0);
          sub_10019F0A0(&v68, v34);
        }

        else
        {
          v35 = PickablePerson.handle.getter();
          a3 = TUNormalizedHandleForTUHandle();

          if (!a3)
          {
            a3 = PickablePerson.handle.getter();
          }

          sub_10019F07C(&v68, a3);
        }
      }

      ++v16;
      if (v19 == v15)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    if (v62)
    {
      v36 = [a2 otherInvitedHandles];
      sub_1000064BC(0, &qword_1003AAE50);
      sub_10003012C(&qword_1003AAE58, &qword_1003AAE50);
      v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = sub_10023AD34(v37);

      if (v38)
      {
        v39 = [objc_allocWithZone(TUConversationMember) initWithHandle:v38];
        [v39 setIsOtherInvitedHandle:1];
        sub_10019F0A0(&v68, v39);
      }
    }

    v40 = v70;
    v41 = sub_10000654C(v70);
    v42 = v64;
    if (v41 > 0 || sub_10000654C(v69) >= 1)
    {
      if (v42)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        if ((dispatch thunk of Call.isConversation.getter() & 1) == 0)
        {
          v47 = dispatch thunk of Call.handle.getter();
          if (v47)
          {
            v48 = v47;
            v49 = objc_allocWithZone(TUConversationMember);
            v50 = v48;
            v51 = sub_10023BD1C(v50, 0, 0);
            sub_10019F0A0(&v68, v51);

            v40 = v70;
          }

          v52 = v69;
          v53 = objc_allocWithZone(TUJoinConversationRequest);

          v54 = sub_10023BD94(v40, v52, 21);
          [v54 setVideoEnabled:dispatch thunk of Call.isSendingVideo.getter() & 1];
          v55 = v59;
          dispatch thunk of Call.uniqueProxyIdentifierUUID.getter();
          v56 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v60 + 8))(v55, v61);
          [v54 setUUID:v56];

          v57 = [objc_opt_self() sharedInstance];
          v58 = [v57 joinConversationWithConversationRequest:v54];

          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
      }

      v43 = [objc_opt_self() sharedInstance];
      v44 = [v43 conversationManager];

      sub_1000064BC(0, &qword_1003AAFC0);
      sub_10003012C(&qword_1003AAFC8, &qword_1003AAFC0);
      v45 = Set._bridgeToObjectiveC()().super.isa;

      sub_1000064BC(0, &qword_1003AAE50);
      sub_10003012C(&qword_1003AAE58, &qword_1003AAE50);
      v67 = Set._bridgeToObjectiveC()().super.isa;
      [v44 addRemoteMembers:v45 otherInvitedHandles:v67 toConversation:v66];

      v46 = v67;

      return;
    }
  }
}

Swift::Void __swiftcall iPadAudioCallViewController.peoplePickerAdded(_:shouldAddOtherInvitedToRemoteMembers:)(Swift::OpaquePointer _, Swift::Bool shouldAddOtherInvitedToRemoteMembers)
{
  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  v7 = [v6 frontmostCall];

  if (v7)
  {
    v8 = [v5 sharedInstance];
    oslog = [v8 activeConversationForCall:v7];

    if (oslog)
    {
      v9 = sub_10003012C(&qword_1003AAE60, &qword_1003ADBE0);
      v10 = v7;
      sub_10023B1A8(_._rawValue, oslog, v7, v9, shouldAddOtherInvitedToRemoteMembers);

      [v2 dismissPeoplePicker];
      goto LABEL_9;
    }
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v11 = type metadata accessor for Logger();
  sub_100008A14(v11, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    *swift_slowAlloc() = 0;
    sub_100006D40(&_mh_execute_header, v13, v14, "Unable to add remote members, no conversation.", v15, v16, v17, v18, v19, oslog);
  }

LABEL_9:
}

id sub_10023BBE0()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Dismiss peoplePicker", v5, 2u);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_10023BD1C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithHandle:a1 nickname:v5];

  return v6;
}

id sub_10023BD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000064BC(0, &qword_1003AAFC0);
  sub_10003012C(&qword_1003AAFC8, &qword_1003AAFC0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  sub_1000064BC(0, &qword_1003AAE50);
  sub_10003012C(&qword_1003AAE58, &qword_1003AAE50);
  v6 = Set._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithRemoteMembers:isa otherInvitedHandles:v6 originatingUIType:a3];

  return v7;
}

uint64_t sub_10023BEC4(void *a1)
{
  v2 = [a1 _im_normalizedURIString];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10023BF34(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_10023BF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

id sub_10023BFBC()
{
  sub_1000064BC(0, &qword_1003B0120);
  v0 = sub_10023C130();
  v1 = [objc_allocWithZone(ISImageDescriptor) initWithSize:64.0 scale:{64.0, 2.0}];
  v2 = [v0 prepareImageForDescriptor:v1];
  if (!v2)
  {
    v7 = [objc_allocWithZone(UIImageView) init];
    goto LABEL_5;
  }

  v3 = v2;
  result = [v3 CGImage];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(UIImage) initWithCGImage:result];

    v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v0 = v3;
    v1 = v3;
LABEL_5:

    return v7;
  }

  __break(1u);
  return result;
}

id sub_10023C130()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

char *sub_10023C1A4()
{
  v1 = v0;
  v50 = type metadata accessor for PHPickerConfiguration.AssetRepresentationMode();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10014EA98(&qword_1003B0128);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v47 - v10;
  type metadata accessor for PHPickerConfiguration();
  sub_10000688C();
  v48 = v12;
  v49 = v13;
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v47 - v19;
  *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_toolBarViewController] = 0;
  *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_actionButtonsWaitingView] = 0;
  *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_photoPickerViewController] = 0;
  v21 = OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateTitlelabel;
  sub_1001FD1F8(0xD000000000000011, 0x80000001002AE130);
  v22 = objc_allocWithZone(type metadata accessor for EEWaitingStateTitleLabel());
  sub_100030318();
  *&v0[v21] = EEWaitingStateTitleLabel.init(titleString:)();
  v23 = OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateSubtitlelabel;
  sub_1001FD1F8(0xD000000000000014, 0x80000001002AE150);
  v24 = objc_allocWithZone(type metadata accessor for EEWaitingStateSubtitleLabel());
  sub_100030318();
  *&v0[v23] = EEWaitingStateSubtitleLabel.init(titleString:)();
  v25 = OBJC_IVAR___PHEmergencyMediaRequestViewController_photoImageView;
  *&v0[v25] = sub_10023BFBC();
  v26 = OBJC_IVAR___PHEmergencyMediaRequestViewController_titleLabelScrollView;
  v27 = sub_100008C94(objc_allocWithZone(UIScrollView), "initWithFrame:");
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v26] = v27;
  v28 = OBJC_IVAR___PHEmergencyMediaRequestViewController_titleLabelScrollViewContentView;
  v29 = [objc_allocWithZone(UIView) init];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v28] = v29;
  *&v1[OBJC_IVAR___PHEmergencyMediaRequestViewController_viewControllerWaitingStateHeightConstraint] = 0;
  v30 = type metadata accessor for EmergencyMediaRequestViewController();
  v51.receiver = v1;
  v51.super_class = v30;
  v31 = objc_msgSendSuper2(&v51, "initWithNibName:bundle:", 0, 0);
  v32 = objc_allocWithZone(type metadata accessor for EmergencyActionButtonsWaitingView());
  v33 = v31;
  v34 = sub_1001E41C0(1);
  v35 = *&v33[OBJC_IVAR___PHEmergencyMediaRequestViewController_actionButtonsWaitingView];
  *&v33[OBJC_IVAR___PHEmergencyMediaRequestViewController_actionButtonsWaitingView] = v34;

  sub_10023CB5C();
  v36 = [objc_opt_self() sharedPhotoLibrary];
  PHPickerConfiguration.init(photoLibrary:)();
  sub_10014EA98(&qword_1003B0130);
  v37 = type metadata accessor for PHPickerFilter();
  *(swift_allocObject() + 16) = xmmword_1002FB510;
  static PHPickerFilter.images.getter();
  v38 = v48;
  static PHPickerFilter.videos.getter();
  static PHPickerFilter.any(of:)();

  sub_100006848(v11, 0, 1, v37);
  v39 = v49;
  PHPickerConfiguration.filter.setter();
  PHPickerConfiguration.selectionLimit.setter();
  (*(v3 + 104))(v7, enum case for PHPickerConfiguration.AssetRepresentationMode.compatible(_:), v50);
  PHPickerConfiguration.preferredAssetRepresentationMode.setter();
  sub_1000064BC(0, &qword_1003B0138);
  (*(v39 + 16))(v17, v20, v38);
  v40 = PHPickerViewController.init(configuration:)();
  sub_10023E1EC();
  PHPickerViewController.delegate.setter();
  v41 = v40;
  [v41 setOverrideUserInterfaceStyle:2];
  v42 = [v41 sheetPresentationController];

  if (v42)
  {
    sub_10014EA98(&unk_1003AAAA0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1002FBD90;
    *(v43 + 32) = [objc_opt_self() largeDetent];
    sub_1000064BC(0, &qword_1003ABB60);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v42 setDetents:isa];
  }

  (*(v39 + 8))(v20, v38);
  v45 = *&v33[OBJC_IVAR___PHEmergencyMediaRequestViewController_photoPickerViewController];
  *&v33[OBJC_IVAR___PHEmergencyMediaRequestViewController_photoPickerViewController] = v41;

  return v33;
}

void sub_10023C7B0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_toolBarViewController) = 0;
  *(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_actionButtonsWaitingView) = 0;
  *(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_photoPickerViewController) = 0;
  v2 = OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateTitlelabel;
  sub_1001FD1F8(0xD000000000000011, 0x80000001002AE130);
  v3 = objc_allocWithZone(type metadata accessor for EEWaitingStateTitleLabel());
  *(v0 + v2) = EEWaitingStateTitleLabel.init(titleString:)();
  v4 = OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateSubtitlelabel;
  sub_1001FD1F8(0xD000000000000014, 0x80000001002AE150);
  v5 = objc_allocWithZone(type metadata accessor for EEWaitingStateSubtitleLabel());
  *(v0 + v4) = EEWaitingStateSubtitleLabel.init(titleString:)();
  v6 = OBJC_IVAR___PHEmergencyMediaRequestViewController_photoImageView;
  *(v1 + v6) = sub_10023BFBC();
  v7 = OBJC_IVAR___PHEmergencyMediaRequestViewController_titleLabelScrollView;
  v8 = sub_100008C94(objc_allocWithZone(UIScrollView), "initWithFrame:");
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v7) = v8;
  v9 = OBJC_IVAR___PHEmergencyMediaRequestViewController_titleLabelScrollViewContentView;
  v10 = [objc_allocWithZone(UIView) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR___PHEmergencyMediaRequestViewController_viewControllerWaitingStateHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10023C99C()
{
  v1 = *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_photoPickerViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 presentationController];
    if (v3)
    {
      v4 = v3;
      [v3 setDelegate:v0];
    }

    aBlock[4] = sub_10023CB50;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_1000070E4();
    aBlock[2] = v5;
    aBlock[3] = &unk_100361988;
    v6 = _Block_copy(aBlock);
    [v0 presentViewController:v2 animated:1 completion:v6];
    _Block_release(v6);
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v7 = type metadata accessor for Logger();
    sub_100008A14(v7, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = sub_100005924();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "EnhancedEmergency: can't find photo picker to present", v9, 2u);
    }
  }
}

void sub_10023CB5C()
{
  v1 = *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_actionButtonsWaitingView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100006C60();
    if (!v3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v4 = v3;
    v5 = [objc_opt_self() blackColor];
    [v4 setBackgroundColor:v5];

    v6 = sub_100006C60();
    if (!v6)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v7 = v6;
    v8 = *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_titleLabelScrollView];
    [v6 addSubview:v8];

    v9 = *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_titleLabelScrollViewContentView];
    [v8 addSubview:v9];
    v10 = OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateTitlelabel;
    [v9 addSubview:*&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateTitlelabel]];
    v11 = OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateSubtitlelabel;
    [v9 addSubview:*&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateSubtitlelabel]];
    v12 = sub_100006C60();
    if (!v12)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v13 = v12;
    v14 = OBJC_IVAR___PHEmergencyMediaRequestViewController_photoImageView;
    [v12 addSubview:*&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_photoImageView]];

    v15 = v2;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    swift_unknownObjectWeakAssign();
    v16 = sub_100006C60();
    if (!v16)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v17 = v16;
    v134 = v11;
    [v16 addSubview:v15];

    v18 = sub_100006C60();
    if (!v18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19 = v18;
    v20 = [v18 topAnchor];

    v21 = [*&v0[v14] topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    v23 = *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_viewControllerWaitingStateHeightConstraint];
    v133 = OBJC_IVAR___PHEmergencyMediaRequestViewController_viewControllerWaitingStateHeightConstraint;
    *&v0[OBJC_IVAR___PHEmergencyMediaRequestViewController_viewControllerWaitingStateHeightConstraint] = v22;

    sub_10014EA98(&unk_1003AAAA0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1003019A0;
    v25 = [*&v0[v14] centerXAnchor];
    v26 = [v0 view];
    if (!v26)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v27 = v26;
    v28 = [v26 centerXAnchor];

    v29 = sub_100025C6C();
    v31 = [v29 v30];

    *(v24 + 32) = v31;
    v32 = [*&v0[v14] topAnchor];
    v33 = [v0 view];
    if (!v33)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v34 = v33;
    v35 = [v33 topAnchor];

    v36 = sub_100025C6C();
    v38 = [v36 v37];

    *(v24 + 40) = v38;
    v39 = [*&v0[v14] widthAnchor];
    v40 = [v39 constraintEqualToConstant:110.0];

    *(v24 + 48) = v40;
    v41 = [*&v0[v14] heightAnchor];
    v42 = [v41 constraintEqualToConstant:110.0];

    *(v24 + 56) = v42;
    v43 = [v8 topAnchor];
    v44 = [*&v0[v14] bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:24.0];

    *(v24 + 64) = v45;
    v46 = [v8 leadingAnchor];
    v47 = [v0 view];
    if (!v47)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v48 = v47;
    v49 = [v47 leadingAnchor];

    v50 = sub_100025C6C();
    v52 = [v50 v51];

    *(v24 + 72) = v52;
    v53 = [v8 trailingAnchor];
    v54 = [v0 view];
    if (!v54)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v55 = v54;
    v56 = [v54 trailingAnchor];

    v57 = sub_100025C6C();
    v59 = [v57 v58];

    *(v24 + 80) = v59;
    v60 = [v9 topAnchor];
    v61 = [v8 contentLayoutGuide];
    v62 = [v61 topAnchor];

    v63 = sub_100006F9C();
    v65 = [v63 v64];

    *(v24 + 88) = v65;
    v66 = [v9 leadingAnchor];
    v67 = sub_100008760();
    v68 = [v67 leadingAnchor];

    v69 = sub_100006F9C();
    v71 = [v69 v70];

    *(v24 + 96) = v71;
    v72 = [v9 trailingAnchor];
    v73 = sub_100008760();
    v74 = [v73 trailingAnchor];

    v75 = sub_100006F9C();
    v77 = [v75 v76];

    *(v24 + 104) = v77;
    v78 = [v9 bottomAnchor];
    v79 = sub_100008760();
    v80 = [v79 bottomAnchor];

    v81 = sub_100006F9C();
    v83 = [v81 v82];

    *(v24 + 112) = v83;
    v84 = [v9 widthAnchor];
    v85 = [v8 frameLayoutGuide];
    v86 = [v85 widthAnchor];

    v87 = sub_100006F9C();
    v89 = [v87 v88];

    *(v24 + 120) = v89;
    v90 = [*&v0[v10] topAnchor];
    v91 = sub_10000C6B0([v9 topAnchor]);

    *(v24 + 128) = v91;
    v92 = [*&v0[v10] leadingAnchor];
    v93 = sub_10000C6B0([v9 leadingAnchor]);

    *(v24 + 136) = v93;
    v94 = [*&v0[v10] trailingAnchor];
    v95 = sub_10000C6B0([v9 trailingAnchor]);

    *(v24 + 144) = v95;
    v96 = [*&v0[v134] topAnchor];
    v97 = [*&v0[v10] bottomAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 constant:6.0];

    *(v24 + 152) = v98;
    v99 = [*&v0[v134] leadingAnchor];
    v100 = sub_10000C6B0([v9 leadingAnchor]);

    *(v24 + 160) = v100;
    v101 = [*&v0[v134] trailingAnchor];
    v102 = sub_10000C6B0([v9 trailingAnchor]);

    *(v24 + 168) = v102;
    v103 = [*&v0[v134] bottomAnchor];
    v104 = [v9 bottomAnchor];
    v105 = sub_100006F9C();
    v107 = [v105 v106];

    *(v24 + 176) = v107;
    v108 = [v15 bottomAnchor];
    v109 = [v0 view];
    if (!v109)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v110 = v109;
    v111 = [v109 safeAreaLayoutGuide];

    v112 = [v111 bottomAnchor];
    v113 = [v108 constraintEqualToAnchor:v112 constant:-16.0];

    *(v24 + 184) = v113;
    v114 = [v15 leadingAnchor];
    v115 = [v0 view];
    if (!v115)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v116 = v115;
    v117 = [v115 leadingAnchor];

    v118 = [v114 constraintEqualToAnchor:v117];
    *(v24 + 192) = v118;
    v119 = [v15 trailingAnchor];
    v120 = [v0 view];
    if (!v120)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v121 = v120;
    v122 = objc_opt_self();
    v123 = [v121 trailingAnchor];

    v124 = [v119 constraintEqualToAnchor:v123];
    *(v24 + 200) = v124;
    v125 = [v15 topAnchor];

    v126 = [v8 bottomAnchor];
    v127 = [v125 constraintEqualToAnchor:v126 constant:12.0];

    *(v24 + 208) = v127;
    sub_1000064BC(0, &qword_1003AAF70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v122 activateConstraints:isa];

    v129 = *&v0[v133];
    if (v129)
    {
      v130 = v129;
      [v130 setActive:1];
    }
  }

  v131 = sub_100006C60();
  if (!v131)
  {
    __break(1u);
    goto LABEL_22;
  }

  v132 = v131;
  v135 = [objc_opt_self() blackColor];
  [v132 setBackgroundColor:v135];
}

id sub_10023D834()
{
  v1 = OBJC_IVAR___PHEmergencyMediaRequestViewController_actionButtonsWaitingView;
  v2 = *(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_actionButtonsWaitingView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  [*(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_photoImageView) removeFromSuperview];
  [*(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateTitlelabel) removeFromSuperview];
  [*(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateSubtitlelabel) removeFromSuperview];
  result = *(v0 + OBJC_IVAR___PHEmergencyMediaRequestViewController_viewControllerWaitingStateHeightConstraint);
  if (result)
  {

    return [result setActive:0];
  }

  return result;
}

uint64_t sub_10023D900()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10019CC0C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10023DAC8()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008A14(v0, &unk_1003B8820);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100005908(v2))
  {
    *sub_100005924() = 0;
    sub_1000070F8(&_mh_execute_header, v3, v4, "EnhancedEmergency: media upload request cancelled, request to remove media requestView");
    sub_10000558C();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10019505C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10023DBEC()
{
  sub_10023D834();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008A14(v0, &unk_1003B8820);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100005908(v2))
  {
    *sub_100005924() = 0;
    sub_1000070F8(&_mh_execute_header, v3, v4, "EnhancedEmergency: media upload request continued, request to present photo picker");
    sub_10000558C();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10019C914();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10023DD14()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008A14(v0, &unk_1003B8820);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100005908(v2))
  {
    *sub_100005924() = 0;
    sub_1000070F8(&_mh_execute_header, v3, v4, "EnhancedEmergency: user swipe down to dismiss photo picker");
    sub_10000558C();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10019EA58();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10023DE50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_10023D900();
  }

  v10 = sub_10023DF20;
  v11 = 0;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  sub_1000070E4();
  v8 = v3;
  v9 = &unk_100361960;
  v4 = _Block_copy(&v6);
  [v2 dismissViewControllerAnimated:1 completion:{v4, v6, v7}];
  _Block_release(v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10019EA58();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10023DF2C(const char *a1)
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = sub_100005924();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

id sub_10023E008(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PHToolBarViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_10023E0E8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PHToolBarViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10023E190(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10023E1EC()
{
  result = qword_1003B0140;
  if (!qword_1003B0140)
  {
    type metadata accessor for EmergencyMediaRequestViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0140);
  }

  return result;
}

id sub_10023E240()
{
  swift_getKeyPath();
  sub_10023F5B4();
  sub_100007AB8();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10023E2B0()
{
  swift_getKeyPath();
  sub_10023F5B4();
  sub_100007AB8();

  return *(v0 + 24);
}

uint64_t sub_10023E310()
{
  swift_getKeyPath();
  sub_10023F5B4();
  sub_100007AB8();

  swift_beginAccess();
}

uint64_t sub_10023E388()
{
  v0 = sub_10023E240();
  v1 = [v0 displayName];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

BOOL sub_10023E3EC()
{
  v0 = sub_10023E240();
  v1 = [v0 service];

  return v1 == 1;
}

void sub_10023E458(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1001A7AEC();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v9);
    sub_10000727C();
    *(v10 - 16) = v2;
    *(v10 - 8) = a1;
    sub_10023E584();
  }
}

void sub_10023E550(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

uint64_t sub_10023E60C(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    v2 = result;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v4);
    sub_10000727C();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    sub_10023E584();
  }

  return result;
}

uint64_t sub_10023E6D8(uint64_t a1)
{
  swift_beginAccess();

  sub_10016A664();
  v4 = v3;

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v7);
    sub_10000727C();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_10023E584();
  }
}

uint64_t sub_10023E7B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_10023E820()
{
  swift_getKeyPath();
  sub_10023F5B4();
  sub_100007AB8();

  return *(v0 + 40);
}

uint64_t sub_10023E880(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v4);
    sub_10000727C();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    sub_10023E584();
  }

  return result;
}

uint64_t sub_10023E920(void *a1)
{
  *(v1 + 32) = &_swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *(v1 + 16) = a1;
  v3 = a1;
  *(v1 + 24) = [v3 status];
  *(v1 + 40) = [v3 isEmergency];
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  sub_100005538(v5, v6, v7, v8, TUCallCenterCallStatusChangedNotification);

  v9 = [v4 defaultCenter];
  sub_100005538(v9, v10, v11, v12, TUCallCenterVideoCallStatusChangedNotification);

  v13 = [v4 defaultCenter];
  [v13 addObserver:v1 selector:"updateIsEmergencyWithNotification:" name:TUCallCenterIsEmergencyChangedNotification object:v3];

  sub_10023EA64();
  return v1;
}

uint64_t sub_10023EA64()
{
  v1 = v0;
  v2 = type metadata accessor for ClarityUIContact();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  __chkstk_darwin(v2, v4);
  v51 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10023E240();
  result = sub_1002402A8(v6);
  if (result)
  {
    v8 = result;
    v9 = *(result + 16);
    if (v9)
    {
      v49 = objc_opt_self();
      v50 = OBJC_IVAR____TtC13InCallService13ClarityUICall___observationRegistrar;
      v46 = v48 + 32;
      v41[1] = v8;
      v10 = (v8 + 40);
      *&v11 = 138412802;
      v42 = v11;
      do
      {
        v12 = *(v10 - 1);
        v13 = *v10;

        v14 = [v49 sharedInstance];
        v15 = [v14 contactStore];

        v16 = String._bridgeToObjectiveC()();
        static ClarityUIContact.requiredDescriptors(for:)();
        sub_10014EA98(&qword_1003AAF80);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v52[0] = 0;
        v18 = [v15 unifiedContactWithIdentifier:v16 keysToFetch:isa error:v52];

        if (v18)
        {
          v19 = v52[0];

          v20 = v18;
          v21 = v15;
          ClarityUIContact.init(cnContact:contactStore:)();
          swift_getKeyPath();
          v52[0] = v1;
          sub_10023F5B4();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v52[0] = v1;
          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          v22 = v1[4];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1[4] = v22;
          v24 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_10023F8C0(0, *(v22 + 2) + 1, 1, v22);
            v1[4] = v22;
          }

          v26 = *(v22 + 2);
          v25 = *(v22 + 3);
          if (v26 >= v25 >> 1)
          {
            v22 = sub_10023F8C0((v25 > 1), v26 + 1, 1, v22);
          }

          *(v22 + 2) = v26 + 1;
          (*(v48 + 32))(&v22[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v26], v51, v47);
          v1[4] = v22;
          swift_endAccess();
          v52[0] = v1;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          v9 = v24;
        }

        else
        {
          v27 = v52[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1003A9FB8 != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          sub_100008A14(v28, &unk_1003B8978);

          swift_errorRetain();
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v45 = v9;
            v32 = v31;
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v43 = v29;
            v44 = v34;
            v52[0] = v34;
            *v32 = v42;
            v35 = sub_10023E240();
            *(v32 + 4) = v35;
            *v33 = v35;
            *(v32 + 12) = 2080;
            v36 = sub_100008ADC(v12, v13, v52);

            *(v32 + 14) = v36;
            *(v32 + 22) = 2080;
            swift_getErrorValue();
            v37 = Error.localizedDescription.getter();
            v39 = sub_100008ADC(v37, v38, v52);

            *(v32 + 24) = v39;
            v40 = v43;
            _os_log_impl(&_mh_execute_header, v43, v30, "Unable to find contact for call: %@, identifier: %s, error: %s", v32, 0x20u);
            sub_100153D2C(v33);

            swift_arrayDestroy();

            v9 = v45;
          }

          else
          {
          }
        }

        v10 += 2;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_10023F090()
{
  v0 = sub_10023E240();
  v1 = [v0 status];

  return sub_10023E60C(v1);
}

uint64_t sub_10023F0FC()
{
  v0 = sub_10023E240();
  v1 = [v0 isEmergency];

  return sub_10023E880(v1);
}

uint64_t sub_10023F168(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v9);

  return (*(v6 + 8))(v9, v5);
}

id sub_10023F260()
{
  v0 = sub_10023E240();
  v1 = sub_10023E240();
  v2 = [v0 isEqualToCall:v1];

  return v2;
}

uint64_t sub_10023F2C4()
{
  _StringGuts.grow(_:)(17);

  v0 = sub_10023E240();
  v1 = [v0 description];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0x5579746972616C43;
}

uint64_t sub_10023F38C()
{

  v1 = OBJC_IVAR____TtC13InCallService13ClarityUICall___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10023F3FC()
{
  sub_10023F38C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ClarityUICall()
{
  result = qword_1003B0180;
  if (!qword_1003B0180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023F4A8()
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

unint64_t sub_10023F5B4()
{
  result = qword_1003B0228;
  if (!qword_1003B0228)
  {
    type metadata accessor for ClarityUICall();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0228);
  }

  return result;
}

void sub_10023F628()
{
  sub_100006AB4();
  if (v6)
  {
    sub_1000081C4();
    if (v7 != v8)
    {
      sub_10000976C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100025C78();
  if (v3)
  {
    sub_10014EA98(&qword_1003B0280);
    v4 = 40;
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  sub_100005D10();
  if (v1)
  {
    if (v9 != v0 || v5 + 40 * v2 <= v4)
    {
      v12 = sub_10000A538();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10014EA98(&qword_1003B0288);
    sub_10000877C();
  }
}

void sub_10023F728()
{
  sub_100006AB4();
  if (v4)
  {
    sub_1000081C4();
    if (v5 != v6)
    {
      sub_10000976C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100025C78();
  if (v3)
  {
    sub_10014EA98(&qword_1003AAF10);
    v7 = sub_1000073C0();
    j__malloc_size(v7);
    sub_10000C6D0();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = sub_100005A54();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10023F7F4()
{
  sub_100006AB4();
  if (v4)
  {
    sub_1000081C4();
    if (v5 != v6)
    {
      sub_10000976C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100036268();
  if (v2)
  {
    sub_10014EA98(&unk_1003B0240);
    v7 = sub_10003032C();
    j__malloc_size(v7);
    sub_10000C6D0();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

char *sub_10023F8C0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_100240014(v8, v7);
  v10 = *(type metadata accessor for ClarityUIContact() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1002401B8(a4 + v11, v8, &v9[v11], &type metadata accessor for ClarityUIContact);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_10023F9C0()
{
  sub_100006AB4();
  if (v4)
  {
    sub_1000081C4();
    if (v5 != v6)
    {
      sub_10000976C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100036268();
  if (v2)
  {
    sub_10014EA98(&unk_1003B02A0);
    v7 = sub_10003032C();
    j__malloc_size(v7);
    sub_100008CB4();
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * v8;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_10023FA90()
{
  sub_100006AB4();
  if (v4)
  {
    sub_1000081C4();
    if (v5 != v6)
    {
      sub_10000976C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100036268();
  if (v2)
  {
    sub_10014EA98(&unk_1003B0290);
    v7 = sub_10003032C();
    j__malloc_size(v7);
    sub_100008CB4();
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * v8;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_10023FB60()
{
  sub_100006AB4();
  if (v4)
  {
    sub_1000081C4();
    if (v5 != v6)
    {
      sub_10000976C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100025C78();
  if (v3)
  {
    sub_10014EA98(&qword_1003AC338);
    v7 = sub_10003032C();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 32);
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = sub_100005A54();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10023FC40()
{
  sub_100006AB4();
  if (v4)
  {
    sub_1000081C4();
    if (v5 != v6)
    {
      sub_10000976C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100025C78();
  if (v3)
  {
    sub_10014EA98(&unk_1003B0270);
    v7 = sub_1000073C0();
    j__malloc_size(v7);
    sub_10000C6D0();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100005A54();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10023FD0C()
{
  sub_100006AB4();
  if (v6)
  {
    sub_1000081C4();
    if (v7 != v8)
    {
      sub_10000976C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100025C78();
  if (v3)
  {
    sub_10014EA98(&qword_1003B0250);
    v9 = sub_1000073C0();
    j__malloc_size(v9);
    sub_10000C6D0();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_100005D10();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_10000A538();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10014EA98(&qword_1003B0258);
    sub_10000877C();
  }
}

void sub_10023FDEC()
{
  sub_100006AB4();
  if (v6)
  {
    sub_1000081C4();
    if (v7 != v8)
    {
      sub_10000976C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100025C78();
  if (v3)
  {
    sub_10014EA98(&qword_1003AF340);
    v9 = sub_1000073C0();
    j__malloc_size(v9);
    sub_10000C6D0();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_100005D10();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_10000A538();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10014EA98(&qword_1003AF348);
    sub_10000877C();
  }
}

void sub_10023FECC()
{
  sub_100006AB4();
  if (v6)
  {
    sub_1000081C4();
    if (v7 != v8)
    {
      sub_10000976C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006FA8();
    }
  }

  sub_100025C78();
  if (v3)
  {
    sub_10014EA98(&qword_1003B0260);
    v9 = sub_1000073C0();
    j__malloc_size(v9);
    sub_10000C6D0();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_100005D10();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_10000A538();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10014EA98(&qword_1003B0268);
    sub_10000877C();
  }
}

void *sub_10023FFAC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10014EA98(&qword_1003AAF10);
  v4 = sub_10003032C();
  j__malloc_size(v4);
  sub_10000C6D0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

char *sub_100240014(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10014EA98(&qword_1003B0238);
  v4 = *(type metadata accessor for ClarityUIContact() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100240110(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10014EA98(&unk_1003AAAA0);
  v4 = sub_10003032C();
  j__malloc_size(v4);
  sub_100008CB4();
  v4[2] = a1;
  v4[3] = (2 * v5) | 1;
  return v4;
}

char *sub_100240180(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100007AA8(a3, result);
  }

  return result;
}

uint64_t sub_1002401B8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_10000B4E4();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_10000B4E4();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

char *sub_100240280(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_100007AA8(a3, result);
  }

  return result;
}

uint64_t sub_1002402A8(void *a1)
{
  v2 = [a1 contactIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100240354(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata obtainDismissalAssertionForReason:a1];
}

id sub_100240398(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata releaseDismissalAssertionForReason:a1];
}

uint64_t sub_1002403DC()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003B02B0);
  v1 = sub_100008A14(v0, qword_1003B02B0);
  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v2 = sub_100008A14(v0, &unk_1003B8820);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002404A4(uint64_t a1)
{
  v2 = direct field offset for CNKBannerPresentationManager.value;
  sub_1000087D0();
  v3 = *(a1 + v2);
  v4 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (!v4)
  {
    return 0;
  }

  sub_1000089C8();
  v5 = makeConversationHUDDetailsNavigationController(for:delegate:shouldSetControlsManagerInCallDetailsDelegate:)();

  return v5;
}

uint64_t sub_1002405B0(void *a1, uint64_t a2)
{
  type metadata accessor for MultiwayViewController();
  v4 = direct field offset for CNKBannerPresentationManager.value;
  sub_1000087D0();
  v5 = *(a2 + v4);
  v6 = a1;
  v7 = v5;
  sub_1000067CC();
  return MultiwayViewController.__allocating_init(activeCall:bannerPresentationManager:)();
}

void sub_100240694(uint64_t a1)
{
  v2 = direct field offset for CNKBannerPresentationManager.value;
  sub_1000087D0();
  v3 = *(a1 + v2);
  v4 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (v4)
  {
    if (dispatch thunk of ConversationControlsManager.isConfirmLeavePTTChannelAlertPresented.getter())
    {
      [v4 dismissConfirmLeavePTTChannelAlert];
    }
  }
}

void sub_100240764()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2 && (v3 = [v2 sceneManager], v4 = objc_msgSend(v3, "ambientScene"), v3, v4))
    {
      type metadata accessor for ActivityScene();
      if (swift_dynamicCastClass())
      {
        dispatch thunk of ActivityScene.idleTimerDisabled.setter();
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002408F8(void *a1)
{
  v3 = static NSNotificationName.cnk_acceptCallButtonTapped.getter();
  [a1 addObserver:v1 selector:"handleAcceptCallButtonTapped:" name:v3 object:0];
}

void sub_1002409D4()
{
  v1 = sub_1002454D4();
  if (v1)
  {
    oslog = v1;
    if (ConversationControlsManager.wantsCallWaitingInSystemAperture.getter())
    {
      [v0 _obtainThenReleaseTransitionAssertion];
    }

LABEL_9:

    return;
  }

  if (qword_1003AA0F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, qword_1003B02B0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (!os_log_type_enabled(oslog, v3))
  {
    goto LABEL_9;
  }

  v4 = sub_100005384();
  v5 = sub_100005D4C();
  v13 = v5;
  *v4 = 136315138;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    sub_10014EA98(&qword_1003B05B8);
    v8 = String.init<A>(reflecting:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  v11 = sub_100008ADC(v8, v10, &v13);

  *(v4 + 4) = v11;
  _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to find controlsManager from %s", v4, 0xCu);
  sub_100005B2C(v5);
  sub_100005368();
  sub_100005BB8();
}

void sub_100240CA4()
{
  sub_100005D28();
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v54 = v2;
  v55 = v1;
  __chkstk_darwin(v1, v3);
  sub_100005BD0();
  v52 = v5 - v4;
  v53 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v51 = v6;
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v50 = v10 - v9;
  v11 = type metadata accessor for DispatchTimeInterval();
  sub_10000688C();
  v13 = v12;
  __chkstk_darwin(v14, v15);
  sub_100005BD0();
  sub_100008470();
  v49 = type metadata accessor for DispatchTime();
  sub_10000688C();
  v17 = v16;
  __chkstk_darwin(v18, v19);
  sub_10000693C();
  v22 = v20 - v21;
  __chkstk_darwin(v23, v24);
  v26 = &v47 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  sub_10000688C();
  v29 = v28;
  __chkstk_darwin(v30, v31);
  sub_100005BD0();
  v34 = (v33 - v32);
  sub_1000064BC(0, &qword_1003AAAB0);
  v35 = static OS_dispatch_queue.main.getter();
  *v34 = v35;
  (*(v29 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v27);
  v47 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v34, v27);
  if (v35)
  {
    v36 = ObjectType;
    sub_100240354(@"PHTransitioningBetweenViewControllersAssertionReason");
    static DispatchTime.now()();
    *v0 = 500;
    (*(v13 + 104))(v0, enum case for DispatchTimeInterval.milliseconds(_:), v11);
    DispatchTime.advanced(by:)();
    (*(v13 + 8))(v0, v11);
    v37 = *(v17 + 8);
    v38 = v49;
    v37(v22, v49);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    v57[4] = sub_100245BA8;
    v57[5] = v39;
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 1107296256;
    v57[2] = sub_10002E570;
    v57[3] = &unk_100361AA0;
    v40 = _Block_copy(v57);
    v41 = v50;
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_10000879C();
    sub_10000C97C(v42, 255, v43);
    sub_10014EA98(&unk_1003AAAC0);
    sub_100032638();
    v44 = v52;
    v45 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v46 = v47;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v40);

    (*(v54 + 8))(v44, v45);
    (*(v51 + 8))(v41, v53);
    v37(v26, v38);

    sub_100007B28();
  }

  else
  {
    __break(1u);
  }
}

void sub_100241278(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    return;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v12 = type metadata accessor for Logger();
      sub_1000058D0(v12, &unk_1003B8820);
      v13 = a1;
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v14))
      {
        v15 = sub_100005384();
        v16 = sub_100005D4C();
        v29 = v16;
        *v15 = 136315138;
        sub_1000064BC(0, &qword_1003AAE50);
        v17 = v13;
        v18 = String.init<A>(reflecting:)();
        v20 = sub_100008ADC(v18, v19, &v29);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, oslog, v14, "Unknown handle type: %s", v15, 0xCu);
        sub_100005B2C(v16);
        sub_100005368();
        sub_100005BB8();

        return;
      }

      goto LABEL_16;
    }

    oslog = [objc_opt_self() sharedPrivacyManager];
    if (oslog)
    {
      v3 = [a1 value];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      sub_100245A04(1, v4, v6, oslog);
LABEL_16:

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  v7 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = TUHomeCountryCode();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v21 = objc_allocWithZone(TUPhoneNumber);
  v22 = sub_100005558();
  v25 = sub_1002457CC(v22, v23, v24, v11);
  if (v25)
  {
    v26 = v25;
    v27 = [objc_opt_self() sharedPrivacyManager];
    if (v27)
    {
      oslog = v27;
      [v27 setBlockIncomingCommunication:1 forPhoneNumber:v26];

      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }
}

uint64_t sub_10024159C()
{
  v1 = type metadata accessor for ReportSpamManager.IDSServiceType();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  sub_100008470();
  type metadata accessor for ReportSpamManager();
  (*(v3 + 104))(v0, enum case for ReportSpamManager.IDSServiceType.facetimeCall(_:), v1);
  ReportSpamManager.__allocating_init(idsServiceType:unknownContactChecker:)();
  sub_1000064BC(0, &qword_1003ADBE0);
  ReportSpamManager.reportFaceTimeCallSpam<A>(call:)();
  [objc_opt_self() releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
}

id sub_10024172C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_100241B20(a1, a2, a3, a4, a5, a6);
  v33 = [objc_allocWithZone(CHManager) init];
  v7 = [v33 latestCallMatchingPredicate:v6];
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v8 = type metadata accessor for Logger();
  sub_100008A14(v8, &unk_1003B8820);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_100005384();
    v13 = sub_100005D4C();
    v34 = v13;
    *v12 = 136315138;
    sub_10014EA98(&unk_1003B05A0);
    v14 = Optional.debugDescription.getter();
    v16 = sub_100008ADC(v14, v15, &v34);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "recentCall: %s", v12, 0xCu);
    sub_100005B2C(v13);
    sub_100005BB8();
    sub_100005BB8();
  }

  if (!v9)
  {
    v21 = v6;
    v6 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v22))
    {
      v23 = sub_100005384();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v21;
      *v24 = v21;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v6, v22, "No call matching predicate %@ was found", v23, 0xCu);
      sub_100008360(v24, &qword_1003B0230);
      sub_100005BB8();
      sub_100005368();
      v21 = v6;
      v6 = v25;
    }

    goto LABEL_19;
  }

  v17 = [v9 filteredOutReason];
  v18 = [objc_allocWithZone(NSNumber) initWithInt:2];
  v19 = v18;
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_15:

LABEL_16:
    v26 = v9;
    v21 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      v30 = [objc_allocWithZone(NSNumber) initWithInt:2];
      *(v28 + 4) = v30;
      *v29 = v30;
      *(v28 + 12) = 2112;
      v31 = [v26 filteredOutReason];
      *(v28 + 14) = v31;
      v29[1] = v31;
      _os_log_impl(&_mh_execute_header, v21, v27, "The call we found had the wrong filteredOutReason (expected: %@ actual: %@)", v28, 0x16u);
      sub_10014EA98(&qword_1003B0230);
      swift_arrayDestroy();
      sub_100005BB8();
      sub_100005BB8();

      v21 = v6;
      v6 = v33;
LABEL_20:

      v7 = 0;
      goto LABEL_21;
    }

LABEL_19:
    v26 = v33;
    goto LABEL_20;
  }

  if (!v18)
  {
    v19 = v17;
    goto LABEL_15;
  }

  sub_1000064BC(0, &qword_1003AB080);
  v20 = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v26 = v33;
LABEL_21:

  return v7;
}

id sub_100241B20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10014EA98(&unk_1003AAAA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002F96C0;
  v9 = objc_opt_self();
  sub_10014EA98(&qword_1003AAF10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002FB510;
  *(v10 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v10 + 40) = v11;
  *(v10 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v10 + 56) = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v9 predicateForCallsWithAnyServiceProviders:isa];

  *(v8 + 32) = v14;
  *(v8 + 40) = [v9 predicateForCallsWithRemoteParticipantCount:1];
  v27 = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002FBD90;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v9 predicateForCallsWithRemoteParticipantHandleValue:v16];

  *(v15 + 32) = v17;
  if (a6)
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [v9 predicateForCallsWithUniqueID:v18];

    v20 = [objc_opt_self() notPredicateWithSubpredicate:v19];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v27;
  }

  if (a4)
  {
    v21 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v21 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = String._bridgeToObjectiveC()();
      v23 = [v9 predicateForCallsWithRemoteParticipantHandleNormalizedValue:v22];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (sub_10000CF28(v15) < 2)
  {
    if (!sub_100017230(v15))
    {

      goto LABEL_21;
    }

    sub_100017238(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v15 + 32);
    }
  }

  else
  {
    sub_1000064BC(0, &qword_1003B0588);
    sub_100242214(v15, &selRef_orPredicateWithSubpredicates_);
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v8 = v27;
LABEL_21:
  sub_1000064BC(0, &qword_1003B0588);
  return sub_100242214(v8, &selRef_andPredicateWithSubpredicates_);
}

BOOL sub_100242008(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_100241B20(a1, a2, a3, a4, 0, 0);
  v5 = [objc_allocWithZone(CHManager) init];
  v6 = [v5 callCountWithPredicate:v4];
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v7 = type metadata accessor for Logger();
  sub_1000058D0(v7, &unk_1003B8820);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_100005384();
    v11 = sub_100005D4C();
    v16 = v11;
    *v10 = 136315138;
    v12 = String.init<A>(reflecting:)();
    v14 = sub_100008ADC(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "matching calls in call history count: %s", v10, 0xCu);
    sub_100005B2C(v11);
    sub_100005BB8();
    sub_100005BB8();
  }

  return v6 < 2;
}

id sub_100242214(uint64_t a1, SEL *a2)
{
  sub_1000064BC(0, &unk_1003B0590);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

Swift::Void __swiftcall PHInCallRootViewController.contactViewController(_:didCompleteWith:)(CNContactViewController _, CNContact_optional didCompleteWith)
{
  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = v3;
    v11 = sub_100242358;
    v12 = 0;
    v7 = _NSConcreteStackBlock;
    v8 = 1107296256;
    sub_1000070E4();
    v9 = v5;
    v10 = &unk_1003619B0;
    v6 = _Block_copy(&v7);
    [v4 dismissViewControllerAnimated:1 completion:{v6, v7, v8}];
    _Block_release(v6);
  }
}

id sub_100242358()
{
  v0 = objc_opt_self();
  [v0 releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];

  return [v0 releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
}

void *sub_100242430()
{
  swift_getKeyPath();
  sub_10000728C();
  sub_10000C97C(v1, 255, v2);
  sub_100007AB8();

  v3 = *(v0 + 16);
  v4 = v3;
  return v3;
}

void sub_1002424BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1002424EC(v1);
}

void sub_1002424EC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = v3;
  LOBYTE(v3) = sub_10024279C(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v6);
    sub_1002426F0();
  }

  else
  {
    v7 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

uint64_t sub_100242620()
{
  swift_getKeyPath();
  sub_1002426F0();
  v0 = sub_100006628();
  sub_1002459C4(v0, v1);
}

void sub_1002426A4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  sub_10000DDCC(a2, a3);
  sub_1002459C4(v3, v4);
}

uint64_t sub_1002426F0()
{
  sub_10000728C();
  sub_10000C97C(v0, 255, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

BOOL sub_10024279C(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1000064BC(0, &qword_1003ADBE0);
    v5 = a1;
    v6 = a2;
    v2 = static NSObject.== infix(_:_:)();
  }

  return (v2 & 1) == 0;
}

id *sub_100242828()
{
  sub_1002459C4(v0[3], v0[4]);

  v1 = OBJC_IVAR____TtCC13InCallService17CallManagerBridge5Calls___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_1000058E8();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_100242898()
{
  sub_100242828();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_1002428F0()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  return v0;
}

void *sub_10024296C()
{

  v0 = sub_10000DD0C();
  v2 = v1;

  if (v0)
  {
    v3 = v0;
  }

  sub_1002459C4(v0, v2);
  return v0;
}

uint64_t sub_1002429D4()
{
  v1 = OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall;
  sub_1000087D0();
  return *(v0 + v1);
}

uint64_t sub_100242A0C(char a1)
{
  v3 = OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall;
  sub_100034C64();
  *(v1 + v3) = a1;
  return sub_100034CF4();
}

void sub_100242A88()
{
  if (*(v0 + OBJC_IVAR___ICSCallManagerBridge_callManager))
  {

    dispatch thunk of AudioCallManager.isICSInBackground.getter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100242B28()
{
  if (*(v0 + OBJC_IVAR___ICSCallManagerBridge_callManager))
  {

    dispatch thunk of AudioCallManager.isICSInBackground.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100242B80(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___ICSCallManagerBridge_activityManager;
  type metadata accessor for HUDActivityManager();
  *&v3[v7] = static HUDActivityManager.shared.getter();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR___ICSCallManagerBridge_callUpdatePublisher;
  sub_10014EA98(&qword_1003B0558);
  swift_allocObject();
  *&v3[v8] = PassthroughSubject.init()();
  *&v3[OBJC_IVAR___ICSCallManagerBridge_callManager] = 0;
  v9 = OBJC_IVAR___ICSCallManagerBridge_calls;
  type metadata accessor for CallManagerBridge.Calls();
  v10 = swift_allocObject();
  sub_1002428F0();
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR___ICSCallManagerBridge_jindoActivity] = 0;
  v4[OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR___ICSCallManagerBridge_callDisplayStyleManager] = a2;
  *&v4[OBJC_IVAR___ICSCallManagerBridge_flags] = a3;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for CallManagerBridge();
  v21 = a2;
  v11 = a3;
  v12 = objc_msgSendSuper2(&v23, "init");
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 sharedInstance];
  sub_100030170(&unk_1003B0560, &qword_1003AAC20);
  sub_10000C97C(&qword_1003B0570, v16, type metadata accessor for CallManagerBridge);
  sub_10000C97C(&qword_1003B0578, v17, type metadata accessor for CallManagerBridge);
  sub_10014EA98(&qword_1003B0580);
  swift_allocObject();
  v18 = v14;

  *&v18[OBJC_IVAR___ICSCallManagerBridge_callManager] = AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)();

  v19 = static HUDActivityManager.shared.getter();
  dispatch thunk of HUDActivityManager.displayResolver.setter();

  return v18;
}

uint64_t sub_100242ECC()
{
  v1 = v0;
  sub_1002446D8();

  sub_100242620();

  sub_1002424EC(0);

  v2 = OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall;
  sub_100034C64();
  *(v1 + v2) = 0;
  result = sub_100034CF4();
  if (*(v1 + OBJC_IVAR___ICSCallManagerBridge_jindoActivity))
  {

    dispatch thunk of HUDActivity.end()();
  }

  return result;
}

void sub_100242FCC()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  sub_100006634();
  v6 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  sub_100005BD0();
  v13 = v12 - v11;

  v14 = sub_100242430();

  if (v14)
  {
  }

  else if (!*(v3 + 24))
  {
    goto LABEL_9;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v15 = type metadata accessor for Logger();
  sub_1000058D0(v15, &unk_1003B8820);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_100005924();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "CallManagerBridge presentInCompactDisplay ", v18, 2u);
    sub_100005BB8();
  }

  sub_1000064BC(0, &qword_1003AAAB0);
  v19 = static OS_dispatch_queue.main.getter();
  sub_1000098D4(v3, &v31, &qword_1003AB3D0);
  v20 = swift_allocObject();
  sub_100009D30(v20);
  *(v21 + 48) = v22;
  *(v21 + 56) = v1;
  sub_100036278(v21);
  v30[1] = 1107296256;
  sub_1000070E4();
  v30[2] = v23;
  v30[3] = &unk_100361A50;
  v24 = _Block_copy(v30);
  v25 = v1;

  static DispatchQoS.unspecified.getter();
  v30[0] = _swiftEmptyArrayStorage;
  sub_10000879C();
  sub_10000C97C(v26, 255, v27);
  sub_10014EA98(&unk_1003AAAC0);
  sub_100032638();
  sub_100007C00();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  v28 = sub_100006628();
  v29(v28);
  (*(v8 + 8))(v13, v6);
LABEL_9:
  sub_100007B28();
}

void sub_100243338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8, v5);
  v111 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HUDActivityManager.RelevanceScore();
  __chkstk_darwin(v7 - 8, v8);
  v9 = sub_10014EA98(&unk_1003AAE40);
  __chkstk_darwin(v9 - 8, v10);
  v110 = &v98 - v11;
  v12 = type metadata accessor for HUDActivityManager.BannerUpdate();
  v113 = *(v12 - 8);
  v14 = __chkstk_darwin(v12, v13);
  v112 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v19 = &v98 - v18;
  __chkstk_darwin(v17, v20);
  v22 = &v98 - v21;
  v23 = type metadata accessor for ConversationControlsType();
  v114 = *(v23 - 8);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v98 - v30;
  __chkstk_darwin(v29, v32);
  v34 = &v98 - v33;
  sub_1000098D4(a1, v116, &qword_1003AB3D0);
  if (!v116[3])
  {
    sub_100008360(v116, &qword_1003AB3D0);
LABEL_6:

    v37 = sub_100242430();

    if (v37)
    {

      if (qword_1003A9F40 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100008A14(v38, &unk_1003B8820);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "CallManagerBridge removing current activity", v41, 2u);
      }

      sub_1002446D8();
    }

    return;
  }

  sub_10014EA98(&qword_1003AB3D8);
  v109 = sub_1000064BC(0, &qword_1003ADBE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v35 = a2;
  v36 = v115;
  sub_100244A90();
  if ([v36 isWaitOnHoldActive])
  {
    (*(v114 + 8))(v34, v23);

    return;
  }

  v106 = v34;
  v107 = v36;
  v104 = v12;
  v105 = v35;
  v103 = OBJC_IVAR___ICSCallManagerBridge_calls;

  v42 = sub_100242430();

  v108 = v23;
  if (v42)
  {
    v43 = [v42 callUUID];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v45;
  }

  else
  {
    v44 = 0;
  }

  v46 = [v107 callUUID];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  if (v42)
  {
    if (v44 == v47 && v42 == v49)
    {
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v51 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v52 = *(v105 + OBJC_IVAR___ICSCallManagerBridge_jindoActivity);
    if (v52)
    {

      dispatch thunk of HUDActivity.relatedUpdate.getter();
      HUDActivityManager.BannerUpdate.type.getter();
      v53 = v104;
      v99 = *(v113 + 8);
      v99(v22, v104);
      v54 = static ConversationControlsType.== infix(_:_:)();
      v102 = v52;
      v55 = v114;
      v56 = v108;
      v100 = *(v114 + 8);
      v101 = v114 + 8;
      v100(v31, v108);
      if (v54)
      {
        dispatch thunk of HUDActivity.relatedUpdate.getter();
        HUDActivityManager.BannerUpdate.type.getter();
        v99(v19, v53);
        if ((*(v55 + 88))(v27, v56) != enum case for ConversationControlsType.swap(_:))
        {
          v100(v27, v56);
          if (qword_1003A9F40 != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Logger();
          sub_100008A14(v83, &unk_1003B8820);

          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.default.getter();

          v86 = os_log_type_enabled(v84, v85);
          v87 = v107;
          if (v86)
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v116[0] = v89;
            *v88 = 136315138;
            dispatch thunk of HUDActivity.relatedUpdate.getter();
            v90 = v110;
            HUDActivityManager.BannerUpdate.type.getter();
            v99(v22, v104);
            v91 = v108;
            sub_100006848(v90, 0, 1, v108);
            v92 = sub_100174100(v90);
            v94 = v93;
            sub_100008360(v90, &unk_1003AAE40);
            v95 = sub_100008ADC(v92, v94, v116);

            *(v88 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v84, v85, "CallManagerBridge same call, same type, skipping update %s", v88, 0xCu);
            sub_100005B2C(v89);

            v96 = v106;
            v97 = v91;
          }

          else
          {

            v96 = v106;
            v97 = v108;
          }

          v100(v96, v97);
          return;
        }

        v100(v27, v56);
      }

      else
      {
      }
    }

    goto LABEL_30;
  }

LABEL_30:
  v57 = v105;
  sub_1002446D8();
  static HUDActivityManager.RelevanceScore.userInput.getter();
  v58 = v114;
  v59 = v106;
  (*(v114 + 16))(v31, v106, v108);
  sub_100030170(&qword_1003AAE60, &qword_1003ADBE0);
  v60 = v107;
  v61 = v107;
  UUID.init()();
  v62 = v112;
  HUDActivityManager.BannerUpdate.init(score:type:requestedSizeClass:temporary:associatedCall:uuid:controlsManager:shouldRemoveAfterBannerDismissal:)();
  v63 = dispatch thunk of HUDActivityManager.activityWith(_:)();
  if (v63)
  {
    v64 = v63;
    v65 = v61;

    sub_1002424EC(v60);

    *(v57 + OBJC_IVAR___ICSCallManagerBridge_jindoActivity) = v64;

    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100008A14(v66, &unk_1003B8820);
    v67 = v65;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v115 = v67;
      v116[0] = v71;
      *v70 = 136315138;
      v72 = v67;
      v73 = String.init<A>(reflecting:)();
      v75 = v62;
      v76 = sub_100008ADC(v73, v74, v116);

      *(v70 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v68, v69, "CallManagerBridge presenting a compact call: %s", v70, 0xCu);
      sub_100005B2C(v71);

      (*(v113 + 8))(v75, v104);
      (*(v58 + 8))(v106, v108);
      return;
    }

    (*(v113 + 8))(v62, v104);
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100008A14(v77, &unk_1003B8820);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v104;
    if (v80)
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "CallManagerBridge could not present activity", v82, 2u);
    }

    (*(v113 + 8))(v62, v81);
  }

  (*(v58 + 8))(v59, v108);
}

void sub_100243F68(uint64_t a1@<X8>)
{
  if (!*(v1 + OBJC_IVAR___ICSCallManagerBridge_callManager))
  {
    __break(1u);
    return;
  }

  v3 = dispatch thunk of AudioCallManager.callCoordinator.getter();

  if (!v3)
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  v4 = dispatch thunk of CallCoordinator.prioritizedCall.getter();
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v6 = type metadata accessor for Logger();
    sub_1000058D0(v6, &unk_1003B8820);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_100005924();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "CallManagerBridge: No presented call, so not returning an activity to present", v9, 2u);
      sub_100005BB8();
    }

    v5 = 1;
    goto LABEL_12;
  }

  sub_100244A90();
  swift_unknownObjectRelease();
  v5 = 0;
LABEL_12:
  v10 = type metadata accessor for ConversationControlsType();

  sub_100006848(a1, v5, 1, v10);
}

void sub_1002440F0()
{
  sub_100005D28();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  __chkstk_darwin(v3, v4);
  sub_100005BD0();
  sub_100006634();
  v5 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_100005BD0();
  v12 = v11 - v10;
  sub_1000064BC(0, &qword_1003AAAB0);
  v13 = static OS_dispatch_queue.main.getter();
  sub_1000098D4(v2, &v25, &unk_1003B0510);
  v14 = swift_allocObject();
  sub_100009D30(v14);
  *(v15 + 48) = v16;
  *(v15 + 56) = v0;
  sub_100036278(v15);
  v24[1] = 1107296256;
  sub_1000070E4();
  v24[2] = v17;
  v24[3] = &unk_100361A00;
  v18 = _Block_copy(v24);
  v19 = v0;

  static DispatchQoS.unspecified.getter();
  v24[0] = _swiftEmptyArrayStorage;
  sub_10000879C();
  sub_10000C97C(v20, 255, v21);
  sub_10014EA98(&unk_1003AAAC0);
  sub_100032638();
  sub_100007C00();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v22 = sub_100006628();
  v23(v22);
  (*(v7 + 8))(v12, v5);
  sub_100007B28();
}

void sub_100244350(uint64_t a1)
{
  sub_1000098D4(a1, v26, &unk_1003B0510);
  if (!v26[3])
  {
    sub_100008360(v26, &unk_1003B0510);
    return;
  }

  sub_10014EA98(&qword_1003AB3C8);
  sub_1000064BC(0, &qword_1003ADBE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, &unk_1003B8820);
  v2 = v25;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v2;
    v26[0] = v6;
    *v5 = 136315138;
    v7 = v2;
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100008ADC(v8, v9, v26);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "CallManagerBridge presenting a full call: %s", v5, 0xCu);
    sub_100005B2C(v6);
  }

  v11 = sub_100242430();

  if (v11)
  {

    v12 = sub_10000DD0C();
    v14 = v13;

    if (v12)
    {
      v15 = v12;
      sub_1002459C4(v12, v14);
      v16 = [v15 callUUID];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v18;
    }

    else
    {
      v17 = 0;
    }

    v19 = [v2 callUUID];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v12)
    {
      if (v17 == v20 && v12 == v22)
      {

LABEL_22:
        sub_100244688();
        goto LABEL_23;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  sub_10024474C(v2);
LABEL_23:
}

uint64_t sub_100244688()
{

  sub_100242620();
}

uint64_t sub_1002446D8()
{
  if (*(v0 + OBJC_IVAR___ICSCallManagerBridge_jindoActivity))
  {

    dispatch thunk of HUDActivity.end()();
  }

  sub_1002424EC(0);
}

void sub_10024474C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v19 = type metadata accessor for Logger();
    sub_1000058D0(v19, &unk_1003B8820);
    v25 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v20))
    {
      v21 = sub_100005924();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v25, v20, "CallManagerBridge could not load a new audio call view controller, no inCallRootViewController", v21, 2u);
      sub_100005BB8();
    }

    goto LABEL_20;
  }

  v3 = Strong;
  sub_10000E4A0(a1);
  v4 = sub_10000CE48();
  if (!v4)
  {
    goto LABEL_15;
  }

  v25 = v4;
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {

LABEL_15:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v22 = type metadata accessor for Logger();
    sub_1000058D0(v22, &unk_1003B8820);
    v25 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v24 = sub_100005924();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v25, v23, "CallManagerBridge could not load a new audio call view controller", v24, 2u);
      sub_100005368();
    }

    goto LABEL_20;
  }

  v6 = v5;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v7 = type metadata accessor for Logger();
  sub_1000058D0(v7, &unk_1003B8820);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100005384();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "CallManagerBridge Setting prioritizedCall: %@", v11, 0xCu);
    sub_100008360(v12, &qword_1003B0230);
    sub_100005BB8();
    sub_100005BB8();
  }

  [v25 setPrioritizedCall:v8];
  v14 = v8;

  v15 = v6;
  sub_100242620();

  v16 = [v15 parentViewController];
  if (v16)
  {
    v17 = v16;

    v18 = v17;
    goto LABEL_21;
  }

  [v3 presentViewControllerFullScreen:v15];

LABEL_20:
  v18 = v25;
LABEL_21:
}

void sub_100244A90()
{
  sub_100005D28();
  v83 = v0;
  v84 = v2;
  v82 = v3;
  type metadata accessor for ConversationControlsType();
  sub_10000688C();
  v80 = v5;
  v81 = v4;
  __chkstk_darwin(v4, v6);
  sub_100005BD0();
  v77 = (v8 - v7);
  v78 = sub_10014EA98(&unk_1003B0500);
  sub_1000058E8();
  __chkstk_darwin(v9, v10);
  sub_10000693C();
  v76 = v11 - v12;
  __chkstk_darwin(v13, v14);
  v16 = v74 - v15;
  v17 = type metadata accessor for CallScreeningService();
  sub_10000688C();
  v19 = v18;
  __chkstk_darwin(v20, v21);
  sub_100005BD0();
  sub_100008470();
  v22 = type metadata accessor for CallScreeningStatus();
  sub_10000688C();
  v24 = v23;
  __chkstk_darwin(v25, v26);
  sub_10000693C();
  v29 = v27 - v28;
  __chkstk_darwin(v30, v31);
  v33 = v74 - v32;
  v34 = [objc_allocWithZone(type metadata accessor for Features()) init];
  v35 = Features.receptionistEnabled.getter();

  v79 = v22;
  if (v35)
  {
    CallScreeningService.init()();
    v36 = v84;
    TUCall.basicCall.getter();
    CallScreeningService.screeningStatusForCall(_:)();
    sub_100005B2C(&v85);
    (*(v19 + 8))(v1, v17);
  }

  else
  {
    v37 = v84;
    v38 = [v84 isScreening];
    v39 = &enum case for CallScreeningStatus.notScreening(_:);
    if (v38)
    {
      v39 = &enum case for CallScreeningStatus.liveVoicemail(_:);
    }

    (*(v24 + 104))(v29, *v39, v22);
    sub_100005D1C();
    v40();
    v36 = v37;
  }

  v41 = [v36 provider];
  v42 = [v41 isSystemProvider];

  *v16 = v42;
  v43 = [v36 status];
  v16[1] = v43 == 2;
  v44 = [v36 provider];
  v45 = [v44 isTelephonyProvider];

  v16[2] = v45;
  if (*&v83[OBJC_IVAR___ICSCallManagerBridge_callManager])
  {
    v74[2] = v43;

    v46 = dispatch thunk of AudioCallManager.callCoordinator.getter();

    v75 = v42;
    v74[1] = v45;
    if (v46)
    {
      swift_getObjectType();
      v47 = dispatch thunk of CallCoordinator.callCount.getter();
      swift_unknownObjectRelease();
      v48 = v47 > 1;
    }

    else
    {
      v48 = 0;
    }

    v49 = v84;
    v51 = v78;
    v50 = v79;
    v52 = *(v78 + 96);
    v53 = *(v78 + 112);
    v16[3] = v48;
    (*(v24 + 16))(&v16[v52], v33, v50);
    v54 = v51;
    v55 = [v49 status];
    v16[v53] = v55 == 4;
    sub_100245140();
    LOBYTE(v53) = v56;
    v83 = *(v24 + 8);
    (v83)(v33, v50);
    if (v53)
    {
      sub_100008360(v16, &unk_1003B0500);
      (*(v80 + 104))(v82, enum case for ConversationControlsType.incomingScreenSharingRequest(_:), v81);
LABEL_21:
      sub_100007B28();
      return;
    }

    v57 = *(v54 + 96);
    v58 = v76;
    (*(v24 + 32))(v76 + v57, &v16[v52], v50);
    v59 = (*(v24 + 88))(v58 + v57, v50);
    v60 = v50;
    if (v59 == enum case for CallScreeningStatus.ringing(_:))
    {
      (v83)(v58 + v57, v50);
      v61 = enum case for ConversationControlsType.callScreeningRinging(_:);
      v48 = v80;
      v62 = v81;
LABEL_19:
      v64 = v77;
      (*(v48 + 104))(v77, v61, v62);
LABEL_20:
      (*(v48 + 32))(v82, v64, v62);
      goto LABEL_21;
    }

    v62 = v81;
    if (v59 == enum case for CallScreeningStatus.liveVoicemail(_:))
    {
      v63 = &enum case for ConversationControlsType.liveVoicemailOngoing(_:);
LABEL_18:
      v61 = *v63;
      v48 = v80;
      goto LABEL_19;
    }

    if (v59 == enum case for CallScreeningStatus.screening(_:))
    {
      v63 = &enum case for ConversationControlsType.callScreeningIncoming(_:);
      goto LABEL_18;
    }

    if (v75)
    {
      if (v55 == 4)
      {
        goto LABEL_26;
      }

      sub_100005E18();
      v64 = v77;
      if ((v66 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v55 == 4)
      {
LABEL_26:
        sub_1000253BC();
        v64 = v77;
LABEL_27:
        v65(v64);
LABEL_32:
        (v83)(v58 + v57, v60);
        goto LABEL_20;
      }

      sub_100005E18();
      v64 = v77;
      if (v67 != 1)
      {
LABEL_29:
        sub_1000253BC();
        goto LABEL_27;
      }
    }

    sub_100006FB8();
    v70 = sub_100030170(v68, v69);
    v71 = v84;
    *v64 = v84;
    v64[1] = v70;
    sub_1000253BC();
    v72(v64);
    v73 = v71;
    goto LABEL_32;
  }

  __break(1u);
}

void sub_100245140()
{
  sub_100005D28();
  v2 = v1;
  v29 = type metadata accessor for UUID();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  sub_100005BD0();
  sub_100006634();
  v30 = sub_1002454D0();
  if (!v30)
  {
    goto LABEL_26;
  }

  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 activeConversationForCall:v2];

  if (!v8)
  {

LABEL_26:
    sub_100007B28();
    return;
  }

  v27 = v8;
  v9 = [v8 screenSharingRequests];
  sub_1000064BC(0, &qword_1003B04F0);
  sub_100030170(&qword_1003B04F8, &qword_1003B04F0);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v10 = v32;
    v11 = v33;
    v12 = v34;
    v13 = v35;
    v14 = v36;
  }

  else
  {
    v15 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v16 = ~v15;
    v17 = -v15;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v14 = v18 & *(v10 + 56);

    v12 = v16;
    v13 = 0;
  }

  v26 = v12;
  v19 = (v12 + 64) >> 6;
  v28 = (v4 + 8);
  if (v10 < 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v20 = v13;
  v21 = v14;
  v22 = v13;
  if (v14)
  {
LABEL_16:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (v24)
    {
      do
      {
        if ([v24 type] == 4)
        {
          v25 = [v24 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v25) = ConversationControlsManager.isIgnoredScreenSharingRequestUUID(_:)();
          (*v28)(v0, v29);
          if ((v25 & 1) == 0)
          {
            break;
          }
        }

        v13 = v22;
        v14 = v23;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_18:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_24;
        }

        swift_dynamicCast();
        v24 = v31;
        v22 = v13;
        v23 = v14;
      }

      while (v31);
    }

LABEL_25:

    sub_10016D304();

    goto LABEL_26;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
LABEL_24:
      v24 = 0;
      goto LABEL_25;
    }

    v21 = *(v11 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1002454D4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    objc_opt_self();
    sub_1000067CC();
    if (swift_dynamicCastObjCClass())
    {
      v2 = ICSApplicationDelegate.bannerPresentationManager.getter();
      v3 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();
      swift_unknownObjectRelease();

      return v3;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_1002455C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallManagerBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t (*sub_1002456C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10024572C;
}

uint64_t sub_10024572C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100034CF4();
  }

  return result;
}

uint64_t sub_100245778@<X0>(uint64_t *a1@<X8>)
{
  sub_1000064BC(0, &qword_1003ADBE0);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

id sub_1002457CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithDigits:v6 countryCode:v7];

  return v8;
}

uint64_t type metadata accessor for CallManagerBridge.Calls()
{
  result = qword_1003B0388;
  if (!qword_1003B0388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002458F0()
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

void sub_1002459C4(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_100245A04(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 setBlockIncomingCommunication:a1 & 1 forEmailAddress:v6];
}

void sub_100245A80(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_10000C97C(&qword_1003AA500, 255, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setTitleTextAttributes:isa];
}

uint64_t sub_100245B54()
{
  if (*(v0 + 40))
  {
    sub_100005B2C(v0 + 16);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100245BCC()
{
  *(v1 - 272) = v0;

  return swift_unknownObjectRetain();
}

uint64_t sub_100245C08()
{

  return swift_beginAccess();
}

uint64_t sub_100245C4C()
{
  v0 = sub_100245C8C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = PriorityStackViewManager.stackView.getter();

  return v2;
}

id sub_100245C8C()
{
  result = [v0 middleStackViewPriorityManagerHolder];
  if (result)
  {
    v2 = result;
    type metadata accessor for PriorityStackViewManager();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_100245CE8()
{
  v1 = v0;
  v2 = [v0 middleStackViewPriorityManagerHolder];
  if (!v2)
  {
    sub_1000064BC(0, &qword_1003B05C0);
    v3 = sub_100245EA4();
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 setAxis:1];
    [v3 setSpacing:15.0];
    [v3 setAlignment:3];
    [v3 setDistribution:3];
    [v3 setLayoutMargins:{0.0, 0.0, 10.0, 0.0}];
    [v3 setLayoutMarginsRelativeArrangement:0];
    LODWORD(v4) = 1144750080;
    [v3 setContentCompressionResistancePriority:1 forAxis:v4];
    v5 = [v1 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 addSubview:v3];

    objc_allocWithZone(type metadata accessor for PriorityStackViewManager());
    v8 = v3;
    v7 = PriorityStackViewManager.init(stackView:)();
    [v1 setMiddleStackViewPriorityManagerHolder:v7];

    [v1 constraintsMiddleStackViewToMiddleShelf];
    v2 = v8;
  }
}

id sub_100245EA4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000064BC(0, &qword_1003AAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithArrangedSubviews:isa];

  return v2;
}

void sub_100245F74(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for PriorityStackViewManager.Priority();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100245C8C();
  if (v10)
  {
    v11 = v10;
    sub_1002460AC(a2, v9);
    PriorityStackViewManager.addView(_:priority:animated:)();
    (*(v6 + 8))(v9, v5);
    v12 = [v3 layoutGuidesProvider];
    if (v12)
    {
      v13 = v12;
      [v12 updateMiddleStateWithIsEmpty:0];

      v11 = v13;
    }
  }
}

uint64_t sub_1002460AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 3)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v3 = **(&off_100361AE8 + a1);
    v4 = type metadata accessor for PriorityStackViewManager.Priority();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

void sub_1002461C8(UIView a1)
{
  v3 = sub_100245C8C();
  if (v3)
  {
    v7 = v3;
    PriorityStackViewManager.removeView(_:animated:)(a1, 1);
    v4 = [v1 layoutGuidesProvider];
    if (v4)
    {
      v5 = v4;
      [v4 updateMiddleStateWithIsEmpty:PriorityStackViewManager.isEmpty.getter() & 1];

      v6 = v5;
    }

    else
    {
      v6 = v7;
    }
  }
}

unint64_t sub_10024630C()
{
  result = qword_1003B05C8;
  if (!qword_1003B05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B05C8);
  }

  return result;
}

id sub_10024642C()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC13InCallService13FTPreferences____lazy_storage___enableInterstitialLinkSharingFlow] = 2;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

Swift::Void __swiftcall iPadAudioCallViewController.setupCallHoldingObservers()()
{
  v1 = [v0 features];
  v2 = [v1 waitOnHoldEnabled];

  if (v2)
  {
    v3 = objc_opt_self();
    v4 = [v3 defaultCenter];
    [v4 addObserver:v0 selector:"updateWaitOnHoldViewIfNeeded" name:TUCallSmartHoldingSessionChangedNotification object:0];

    v5 = [v3 defaultCenter];
    v6 = static NSNotificationName.startCallRecordingCountdownNotification.getter();
    [v5 addObserver:v0 selector:"handleCallRecordingCountdownNotificationWithNotification:" name:v6 object:0];
  }
}

void iPadAudioCallViewController.updateWaitOnHoldService(call:)(void *a1)
{
  v3 = [v1 features];
  v4 = [v3 waitOnHoldEnabled];

  if (v4)
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 delegate];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = [v7 waitOnHoldService];
        if (v8)
        {
          v9 = v8;
          v10 = [a1 callUUID];
          if (!v10)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v10 = String._bridgeToObjectiveC()();
          }

          [v9 updateForCallWithUUID:v10];

          swift_unknownObjectRelease();
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall iPadAudioCallViewController.beginWaitOnHoldSession()()
{
  if ([v1 frontmostCall])
  {
    sub_100007DB8();
    type metadata accessor for ConversationControlsManager();
    v2 = v0;
    v3 = ConversationControlsManager.__allocating_init(activeCall:)();
    ConversationControlsManager.startWaitOnHoldSession()();
  }
}

Swift::Void __swiftcall iPadAudioCallViewController.endWaitOnHoldSession()()
{
  if ([v1 frontmostCall])
  {
    sub_100007DB8();
    type metadata accessor for ConversationControlsManager();
    v2 = v0;
    v3 = ConversationControlsManager.__allocating_init(activeCall:)();
    v4 = [objc_allocWithZone(UIButton) init];
    [v3 waitOnHoldPickUpButtonTappedWithButton:v4];
  }
}

uint64_t sub_100246AC4()
{
  _s21WaitOnHoldTipUserInfoCMa();
  result = swift_allocObject();
  *(result + 16) = 0;
  off_1003B0600 = result;
  return result;
}

uint64_t sub_100246AF8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for WaitOnHoldTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  sub_10014EA98(&qword_1003AA7B0);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return _swift_task_switch(sub_100246D00, v8, v7);
}

uint64_t sub_100246D00()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v18 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  sub_100006848(v1, 1, 1, v7);
  sub_100005C44();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

  sub_1001621BC();
  v0[33] = v14;
  type metadata accessor for TPTipsHelper();
  v15 = swift_task_alloc();
  v0[34] = v15;
  *v15 = v0;
  v16 = sub_100008DDC(v15);

  return static TPTipsHelper.shared.getter(v16);
}

uint64_t sub_100246EE8()
{
  sub_100006610();
  sub_1000054B0();
  sub_1000068BC();
  *v3 = v2;
  v4 = *v1;
  sub_1000085E4();
  *v5 = v4;
  *(v7 + 280) = v6;

  sub_1000253A0();
  v9 = *(v8 + 240);
  v10 = *(v0 + 232);

  return _swift_task_switch(sub_100246FF8, v10, v9);
}

uint64_t sub_100246FF8()
{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.waitOnHold(_:), v7);
  v0[5] = v2;
  v0[6] = sub_10024ACC0();
  v9 = sub_10015DFA8(v0 + 2);
  v12(v9, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  sub_10015E008((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  sub_100005B2C((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  sub_10000535C();

  return v10();
}

uint64_t sub_1002471B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[59] = a5;
  v6[60] = a6;
  v6[58] = a4;
  v7 = type metadata accessor for Material._GlassVariant();
  v6[61] = v7;
  v6[62] = *(v7 - 8);
  v6[63] = swift_task_alloc();
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[64] = v8;
  v6[65] = *(v8 - 8);
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  sub_10014EA98(&qword_1003B06C8);
  v6[68] = swift_task_alloc();
  v9 = type metadata accessor for Tips.Status();
  v6[69] = v9;
  v6[70] = *(v9 - 8);
  v6[71] = swift_task_alloc();
  v6[72] = sub_10014EA98(&qword_1003B06D0);
  v6[73] = swift_task_alloc();
  v6[74] = sub_10014EA98(&qword_1003B06D8);
  v6[75] = swift_task_alloc();
  v10 = sub_10014EA98(&qword_1003B06E0);
  v6[76] = v10;
  v6[77] = *(v10 - 8);
  v6[78] = swift_task_alloc();
  v11 = sub_10014EA98(&qword_1003B06E8);
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = type metadata accessor for MainActor();
  v6[83] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[84] = v13;
  v6[85] = v12;

  return _swift_task_switch(sub_1002474FC, v13, v12);
}

uint64_t sub_1002474FC()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  *(v0 + 688) = type metadata accessor for WaitOnHoldTip();
  *(v0 + 696) = sub_10024ACC0();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_100027E08(&qword_1003B06F0, &qword_1003B06D0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  sub_100008D1C();
  swift_beginAccess();
  *(v0 + 824) = enum case for TPTipsHelper.Entry.Kind.waitOnHold(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 704) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_100007AD8(v7, v5);

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1002476B8()
{
  sub_1000058A8();
  v1 = v0[88];
  v0[91] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_100027E08(&qword_1003B06F8, &qword_1003B06D8);
  v2 = swift_task_alloc();
  v0[92] = v2;
  *v2 = v0;
  v2[1] = sub_1002477B8;
  v3 = v0[68];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_1002477B8()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  sub_1000068BC();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 720);
    v8 = *(v3 + 712);
    v9 = sub_100247A8C;
  }

  else
  {
    (*(v3 + 728))();
    v7 = *(v3 + 720);
    v8 = *(v3 + 712);
    v9 = sub_1002478D4;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1002478D4()
{
  v1 = *(v0 + 69);
  v2 = *(v0 + 68);
  if (sub_100006AC0(v2, 1, v1) == 1)
  {
    sub_1000306A4(v2, &qword_1003B06C8);

    v3 = *(v0 + 85);
    v4 = *(v0 + 84);

    return _swift_task_switch(sub_100247AA4, v4, v3);
  }

  else
  {
    (*(*(v0 + 70) + 32))(*(v0 + 71), v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 93) = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v0 + 94) = v7;
    *v7 = v0;
    v7[1] = sub_100247B68;
    v8 = *(v0 + 71);

    return v10(v0 + 828, v8);
  }
}

uint64_t sub_100247AA4()
{
  sub_100005408();
  v0 = sub_100008E90();
  v1(v0);

  sub_100008CD0();

  sub_10000535C();

  return v2();
}

uint64_t sub_100247B68()
{
  sub_100007C1C();
  sub_100005408();
  sub_1000054B0();
  sub_100006870();
  *v2 = v0;
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  *v2 = *v1;

  *(v0 + 829) = *(v0 + 828);
  (*(v4 + 8))(v3, v5);
  sub_1000253A0();
  sub_10000C20C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100247CF0()
{
  sub_100006610();

  v1 = *(v0 + 680);
  v2 = *(v0 + 672);

  return _swift_task_switch(sub_100247D54, v2, v1);
}

uint64_t sub_100247D54()
{
  v40 = v0;
  if (qword_1003A9F58 != -1)
  {
    sub_1000073F0();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, &unk_1003B8868);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 829);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v5 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008ADC(v7, v8, &v39);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: should display from iPad %{BOOL}d", v5, 0x12u);
    sub_100005B2C(v6);
    sub_100005BB8();
    sub_100005BB8();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 760) = Strong;
  if (!Strong)
  {
    v17 = sub_100008E90();
    v18(v17);

    goto LABEL_10;
  }

  if (*(v0 + 829))
  {
    v11 = Strong;
    v12 = [Strong waitOnHoldTipView];
    if (v12)
    {
      v13 = v12;
      v14 = *(v0 + 648);
      v15 = *(v0 + 640);
      v16 = *(v0 + 632);

      (*(v15 + 8))(v14, v16);
LABEL_10:
      sub_100008CD0();

      sub_10000535C();

      return v19();
    }

    v23 = [v11 smartHoldingAnalytics];
    if (v23)
    {
      v24 = v23;
      sub_1001CAF64();
    }

    v25 = *(v0 + 464);
    v26 = *(v0 + 688);
    *(v0 + 120) = v26;
    v27 = v26;
    v28 = sub_10015DFA8((v0 + 96));
    v29 = *(v27 - 8);
    v30 = *(v29 + 16);
    *(v0 + 784) = v30;
    *(v0 + 792) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v28, v25, v27);
    sub_100005C44();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = objc_allocWithZone(type metadata accessor for TipUIView());
    v32 = TipUIView.init(_:arrowEdge:actionHandler:)();
    *(v0 + 800) = v32;
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_100005C44();
    *(swift_allocObject() + 16) = v11;
    v33 = v11;
    TipUIView.dismissalHandler.setter();
    *(v0 + 160) = &type metadata for TrailingActionButtonTipStyle;
    *(v0 + 168) = sub_10024AF60();
    TipUIView.viewStyle.setter();
    if (_UISolariumEnabled())
    {
      v35 = *(v0 + 496);
      v34 = *(v0 + 504);
      v36 = *(v0 + 488);
      static Material._GlassVariant.clear.getter();
      *(v0 + 360) = type metadata accessor for Material();
      *(v0 + 368) = &protocol witness table for Material;
      sub_10015DFA8((v0 + 336));
      static Material._glass(_:)();
      (*(v35 + 8))(v34, v36);
    }

    else
    {
      v37 = [objc_opt_self() secondarySystemBackgroundColor];
      v38 = Color.init(uiColor:)();
      *(v0 + 200) = &type metadata for Color;
      *(v0 + 208) = &protocol witness table for Color;
      *(v0 + 176) = v38;
    }

    TipUIView.backgroundStyle.setter();
    type metadata accessor for TPTipsHelper();
    v21 = swift_task_alloc();
    *(v0 + 808) = v21;
    *v21 = v0;
    v22 = sub_1002485E8;
  }

  else
  {
    type metadata accessor for TPTipsHelper();
    v21 = swift_task_alloc();
    *(v0 + 768) = v21;
    *v21 = v0;
    v22 = sub_100248260;
  }

  v21[1] = v22;

  return static TPTipsHelper.shared.getter(v21);
}

uint64_t sub_100248260()
{
  sub_100006610();
  sub_1000054B0();
  sub_1000068BC();
  *v3 = v2;
  v4 = *v1;
  sub_1000085E4();
  *v5 = v4;
  *(v7 + 776) = v6;

  sub_1000253A0();
  v9 = *(v8 + 680);
  v10 = *(v0 + 672);

  return _swift_task_switch(sub_100248370, v10, v9);
}

uint64_t sub_100248370()
{
  sub_100007C1C();
  sub_100005408();
  v1 = *(v0 + 776);
  (*(*(v0 + 520) + 104))(*(v0 + 536), *(v0 + 824), *(v0 + 512));
  v2 = dispatch thunk of TPTipsHelper.currentTip.getter();

  if (!*(v2 + 16) || (v3 = sub_100170210(), (v4 & 1) == 0))
  {
    v14 = *(v0 + 536);
    v15 = *(v0 + 520);
    v16 = *(v0 + 512);

    (*(v15 + 8))(v14, v16);
    goto LABEL_17;
  }

  v5 = *(v0 + 536);
  v6 = *(v0 + 520);
  v7 = *(v0 + 512);
  sub_10015E008(*(v2 + 56) + 40 * v3, v0 + 56);
  (*(v6 + 8))(v5, v7);

  sub_1000304E0((v0 + 56), v0 + 16);
  sub_100008878((v0 + 16), *(v0 + 40));
  sub_10000594C();
  v8 = dispatch thunk of Tip.id.getter();
  v10 = v9;
  if (v8 == dispatch thunk of Tip.id.getter() && v10 == v11)
  {

    goto LABEL_11;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_11:
    v17 = [*(v0 + 760) waitOnHoldTipView];
    v18 = *(v0 + 760);
    if (v17)
    {
      v19 = v17;
      [*(v0 + 760) removeSubviewFromMiddleStackViewWithView:v17];
      [v18 setWaitOnHoldTipView:0];
      v20 = [v18 smartHoldingAnalytics];
      if (v20)
      {
        v21 = v20;
        sub_1001CACF0();
      }

      v18 = *(v0 + 760);
    }

    goto LABEL_16;
  }

LABEL_16:
  sub_100005B2C(v0 + 16);
LABEL_17:
  v22 = static MainActor.shared.getter();
  *(v0 + 704) = v22;
  if (v22)
  {
    swift_getObjectType();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  sub_100007AD8(v22, v23, v24);
  sub_10000C20C();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_1002485E8()
{
  sub_100006610();
  sub_1000054B0();
  sub_1000068BC();
  *v3 = v2;
  v4 = *v1;
  sub_1000085E4();
  *v5 = v4;
  *(v7 + 816) = v6;

  sub_1000253A0();
  v9 = *(v8 + 680);
  v10 = *(v0 + 672);

  return _swift_task_switch(sub_1002486F8, v10, v9);
}

uint64_t sub_1002486F8()
{
  v30 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 464);
  v27 = *(v0 + 688);
  (*(*(v0 + 520) + 104))(*(v0 + 528), *(v0 + 824), *(v0 + 512));
  *(v0 + 240) = v27;
  v3 = sub_10015DFA8((v0 + 216));
  v1(v3, v2, v27);
  v4 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v6 = v5;
  v7 = *(v0 + 528);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  if (*(v0 + 240))
  {
    sub_1000304E0((v0 + 216), v0 + 296);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v6;
    v10 = *(v0 + 320);
    v28 = v9;
    v11 = sub_10015E208(v0 + 296, v10);
    v12 = v4;
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v11, v10);
    v4 = v12;
    sub_100251308(v14, v7, isUniquelyReferenced_nonNull_native, &v29);
    sub_100005B2C(v0 + 296);

    *v6 = v29;
    (*(v8 + 8))(v7, v28);
  }

  else
  {
    sub_1000306A4(v0 + 216, &qword_1003B0708);
    v15 = sub_100251158(v0 + 256);
    (*(v8 + 8))(v7, v9, v15);
    sub_1000306A4(v0 + 256, &qword_1003B0708);
  }

  v16 = *(v0 + 816);
  v17 = *(v0 + 800);
  v18 = *(v0 + 760);
  v4(v0 + 408, 0);

  [v18 setWaitOnHoldTipView:v17];
  [v18 updateWaitOnHoldViewIfNeeded];

  v19 = static MainActor.shared.getter();
  *(v0 + 704) = v19;
  if (v19)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_100007AD8(v19, v20, v21);

  return _swift_task_switch(v22, v23, v24);
}

void sub_1002489B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissWaitOnHoldTip];
    [v1 beginWaitOnHoldSession];
    v2 = [v1 smartHoldingAnalytics];
    if (v2)
    {
      v3 = v2;
      sub_1001CA988();
    }
  }
}

void sub_100248A4C(int a1, id a2)
{
  [a2 dismissWaitOnHoldTip];
  sub_100248AD4();
  v3 = [a2 smartHoldingAnalytics];
  if (v3)
  {
    v4 = v3;
    sub_1001CAA88();
  }
}

id sub_100248AD4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v29 - v4;
  v6 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v15 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v29 - v17;
  result = [v0 frontmostCall];
  if (result)
  {
    v20 = result;
    v32 = v11;
    v33 = ObjectType;
    v34 = v5;
    v21 = [result callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if (sub_100006AC0(v9, 1, v10) == 1)
    {

      return sub_1000306A4(v9, &qword_1003AAB40);
    }

    else
    {
      v22 = v32;
      v31 = *(v32 + 32);
      v31(v18, v9, v10);
      v23 = v34;
      static TaskPriority.userInitiated.getter();
      v24 = type metadata accessor for TaskPriority();
      sub_100006848(v23, 0, 1, v24);
      (*(v22 + 16))(v15, v18, v10);
      type metadata accessor for MainActor();
      v30 = v0;
      v25 = static MainActor.shared.getter();
      v26 = (*(v22 + 80) + 40) & ~*(v22 + 80);
      v27 = swift_allocObject();
      *(v27 + 2) = v25;
      *(v27 + 3) = &protocol witness table for MainActor;
      v28 = v31;
      *(v27 + 4) = v30;
      v28(&v27[v26], v15, v10);
      *&v27[(v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v33;
      sub_1001621BC();

      return (*(v22 + 8))(v18, v10);
    }
  }

  return result;
}

uint64_t sub_100248E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  type metadata accessor for MainActor();
  v6[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[22] = v8;
  v6[23] = v7;

  return _swift_task_switch(sub_100248F10, v8, v7);
}

uint64_t sub_100248F10()
{
  v1 = [*(v0 + 144) callCenter];
  *(v0 + 192) = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v0 + 200) = isa;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10024905C;
  v3 = swift_continuation_init();
  *(v0 + 136) = sub_10014EA98(&qword_1003B0710);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10024BE1C;
  *(v0 + 104) = &unk_100361BC8;
  *(v0 + 112) = v3;
  [v1 performSmartHoldingRequestWithType:2 forCallWithUUID:isa completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10024905C()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000085E4();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 208) = v4;
  v5 = v3[23];
  v6 = v3[22];
  if (v4)
  {
    v7 = sub_1002491E0;
  }

  else
  {
    v7 = sub_10024917C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10024917C()
{
  sub_100006610();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  sub_10000535C();

  return v3();
}

uint64_t sub_1002491E0()
{
  v16 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);

  swift_willThrow();

  if (qword_1003A9F58 != -1)
  {
    sub_1000073F0();
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, &unk_1003B8868);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008ADC(v8, v9, &v15);

    *(v6 + 4) = v10;
    sub_100005414(&_mh_execute_header, v11, v12, "%s: failed to stop hold detection after tip was closed");
    sub_100005B2C(v7);
    sub_100005BB8();
    sub_100005BB8();
  }

  sub_10000535C();

  return v13();
}

uint64_t sub_10024937C()
{
  v2 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v20 - v4;
  type metadata accessor for WaitOnHoldTip();
  sub_100006E40();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WaitOnHoldTip.init()();
  sub_10024ACC0();
  Tip.reset()();
  if (qword_1003AA0F8 != -1)
  {
    sub_10000C6FC();
  }

  v12 = off_1003B0600;
  if (*(off_1003B0600 + 2))
  {

    sub_10014EA98(&qword_1003AAC00);
    Task.cancel()();

    v12 = off_1003B0600;
  }

  v13 = type metadata accessor for TaskPriority();
  sub_100006848(v5, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = v1;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  v12[2] = sub_10016ECCC();

  v17 = [v14 smartHoldingAnalytics];
  if (v17)
  {
    v18 = v17;
    sub_1001CB2DC();
  }

  return (*(v7 + 8))(v11, v0);
}

uint64_t sub_1002495E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10024967C, v6, v5);
}

uint64_t sub_10024967C()
{
  sub_1000058A8();
  type metadata accessor for TPTipsHelper();
  v0[7] = static TPTipsHelper.taskQueue.getter();
  sub_100005C44();
  v1 = swift_allocObject();
  v0[8] = v1;
  swift_unknownObjectWeakInit();
  v2 = sub_10000A4A0();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10024977C;
  v3 = v0[2];

  return v5(v3, &unk_100302080, v1, &type metadata for ()[8]);
}

uint64_t sub_10024977C()
{
  sub_1000058A8();
  sub_1000054B0();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;

  sub_1000253A0();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return _swift_task_switch(sub_1002498C8, v6, v5);
}

uint64_t sub_1002498C8()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

uint64_t sub_100249924(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = type metadata accessor for CancellationError();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for WaitOnHoldTip();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100249A9C, 0, 0);
}

uint64_t sub_100249A9C()
{
  sub_100006610();
  ContinuousClock.init()();
  v1 = sub_10000A4A0();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100249B50;
  sub_100008D1C();

  return v3();
}

uint64_t sub_100249B50()
{
  sub_1000058A8();
  v2 = *v1;
  sub_1000068BC();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  (*(v2[14] + 8))(v2[15], v2[13]);
  if (v0)
  {
    v5 = sub_10024A1C0;
  }

  else
  {
    v5 = sub_100249CB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100249CB0()
{
  sub_100006610();
  sub_100008D1C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    type metadata accessor for TPTipsHelper();
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v3 = sub_100008DDC(v2);

    return static TPTipsHelper.shared.getter(v3);
  }

  else
  {
    sub_100008480();

    sub_10000535C();

    return v4();
  }
}

uint64_t sub_100249DA8()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000085E4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = sub_100008184();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100249E90()
{
  sub_100006610();
  type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100249F14()
{
  sub_100006610();
  v1 = *(v0 + 160);

  dispatch thunk of TPTipsHelper.setup()();

  v2 = sub_100008184();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100249F78()
{
  sub_100006610();
  WaitOnHoldTip.init()();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_10024A014;
  v2 = *(v0 + 96);

  return sub_100246AF8(v2);
}

uint64_t sub_10024A014()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = *v0;
  sub_100006870();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = sub_100008184();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10024A154()
{
  sub_100006610();

  sub_100008480();

  sub_10000535C();

  return v1();
}

uint64_t sub_10024A1C0()
{
  v0[5] = v0[17];
  swift_errorRetain();
  sub_10014EA98(&qword_1003AAC00);
  if (swift_dynamicCast())
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[7];

    (*(v2 + 8))(v1, v3);
  }

  else
  {

    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8820);
    sub_10000594C();
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      sub_100005414(&_mh_execute_header, v10, v11, "Failed to start observing tips due to %@");
      sub_1000306A4(v8, &qword_1003B0230);
      sub_100005BB8();
      sub_100005BB8();

      goto LABEL_9;
    }
  }

LABEL_9:
  sub_100008480();

  sub_10000535C();

  return v12();
}

uint64_t sub_10024A418()
{
  if (qword_1003AA0F8 != -1)
  {
    sub_10000C6FC();
  }

  if (*(off_1003B0600 + 2))
  {

    sub_10014EA98(&qword_1003AAC00);
    Task.cancel()();
  }

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  sub_100005C44();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_10024A524(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10024A5E4, 0, 0);
}

uint64_t sub_10024A5E4()
{
  sub_100006610();
  sub_100008D1C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    type metadata accessor for TPTipsHelper();
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v3 = sub_100008DDC(v2);

    return static TPTipsHelper.shared.getter(v3);
  }

  else
  {

    sub_10000535C();

    return v4();
  }
}

uint64_t sub_10024A6D0()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000085E4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = sub_100008184();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10024A7B8()
{
  sub_100006610();
  (*(v0[7] + 104))(v0[8], enum case for TPTipsHelper.Entry.Kind.waitOnHold(_:), v0[6]);
  v0[12] = type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10024A864()
{
  sub_1000058A8();
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  dispatch thunk of TPTipsHelper.removeEntries(_:)();

  (*(v3 + 8))(v2, v4);
  v5 = sub_100008184();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10024A8F8()
{
  sub_100006610();
  *(v0 + 112) = static MainActor.shared.getter();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10024A974()
{
  sub_100006610();
  v1 = *(v0 + 72);

  [v1 dismissWaitOnHoldTip];
  if (qword_1003AA0F8 != -1)
  {
    sub_10000C6FC();
  }

  _s21WaitOnHoldTipUserInfoCMa();
  sub_100005C44();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  off_1003B0600 = v2;

  v3 = sub_100008184();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10024AA74()
{
  v1 = [v0 waitOnHoldTipView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 superview];
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v4) = 1144750080;
      [v2 setContentCompressionResistancePriority:1 forAxis:v4];
      LODWORD(v5) = 1144750080;
      [v2 setContentCompressionResistancePriority:0 forAxis:v5];
      [v0 addSubviewsToMiddleStackViewWithView:v2 priority:1];
      [v0 constraintWaitOnHoldView:v2];
      v7 = [objc_allocWithZone(TLAlertConfiguration) initWithType:17];
      v6 = [objc_opt_self() alertWithConfiguration:v7];
      [v6 play];

      v2 = v6;
    }
  }
}

uint64_t sub_10024AC38()
{
  sub_100006610();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  sub_100008DDC(v2);

  return sub_10024A524(v0);
}

unint64_t sub_10024ACC0()
{
  result = qword_1003B06C0;
  if (!qword_1003B06C0)
  {
    type metadata accessor for WaitOnHoldTip();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B06C0);
  }

  return result;
}

uint64_t sub_10024AD18()
{
  sub_1000058A8();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v3[1] = sub_100008208;
  v5 = sub_100008BC0();

  return sub_1002495E4(v5, v6, v7, v1);
}

uint64_t sub_10024ADB4()
{
  sub_100006610();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = sub_100005B88(v3);
  *v4 = v5;
  v4[1] = sub_100008204;

  return sub_100249924(v2, v0);
}

uint64_t sub_10024AE44()
{
  sub_100007C1C();
  sub_100005408();
  sub_100007DB8();
  type metadata accessor for WaitOnHoldTip();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v1[1] = sub_100008204;
  sub_100008BC0();
  sub_10000C20C();

  return sub_1002471B8(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_10024AF60()
{
  result = qword_1003B0700;
  if (!qword_1003B0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0700);
  }

  return result;
}

uint64_t sub_10024AFB4()
{
  sub_100007C1C();
  sub_100005408();
  sub_100007DB8();
  type metadata accessor for UUID();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v1[1] = sub_100008208;
  sub_100008BC0();
  sub_10000C20C();

  return sub_100248E74(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10024B0B8()
{
  swift_getKeyPath();
  sub_10024BBF8();
  sub_100007AB8();
}

uint64_t sub_10024B11C()
{
  swift_getKeyPath();
  sub_10024BBF8();
  sub_100007AB8();

  return *(v0 + 24);
}

void sub_10024B17C(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;

    sub_10024B484();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_10024B3FC();
  }
}

uint64_t sub_10024B270(uint64_t a1)
{

  v4 = sub_10024B364(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v6);
    sub_10024B3FC();
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

BOOL sub_10024B364(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for ClarityUICall();
    v3 = sub_10023F260();
  }

  return (v3 & 1) == 0;
}

uint64_t sub_10024B3C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

void sub_10024B484()
{
  v0 = [objc_opt_self() sharedInstance];
  v15 = [v0 routeController];

  v1 = sub_10024B11C();
  v2 = &selRef_routeForSpeakerEnable;
  if ((v1 & 1) == 0)
  {
    v2 = &selRef_routeForSpeakerDisable;
  }

  v3 = [v15 *v2];
  if (v3)
  {
    v4 = v3;
    [v16 pickRoute:v3];
  }

  else
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8978);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = sub_10024B11C();
      v11 = (v10 & 1) == 0;
      if (v10)
      {
        v12 = 0x656C62616E65;
      }

      else
      {
        v12 = 0x656C6261736964;
      }

      if (v11)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      v14 = sub_100008ADC(v12, v13, &v17);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to %s speaker.", v8, 0xCu);
      sub_100005B2C(v9);
    }
  }
}

uint64_t sub_10024B6B4()
{
  v1 = v0;
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 routeController];

  v4 = [v3 pickedRoute];
  if (v4)
  {
    v5 = [v4 isSpeaker];

    *(v1 + 24) = v5;
  }

  else
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008A14(v6, &unk_1003B8978);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to find currently picked route.", v9, 2u);
    }

    *(v1 + 24) = 0;
  }

  v10 = sub_10024B8B8();
  sub_10024B270(v10);
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  sub_1000071B4(v12, v13, v14, v15, TUCallCenterCallStatusChangedNotification);

  v16 = [v11 defaultCenter];
  sub_1000071B4(v16, v17, v18, v19, TUCallCenterVideoCallStatusChangedNotification);

  return v1;
}

uint64_t sub_10024B8B8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 frontmostAudioOrVideoCall];

  result = 0;
  if (v1)
  {
    type metadata accessor for ClarityUICall();
    swift_allocObject();
    return sub_10023E920(v1);
  }

  return result;
}

uint64_t sub_10024B938()
{
  v0 = sub_10024B8B8();
  result = sub_10024B0B8();
  if (result)
  {
    if (v0)
    {
      type metadata accessor for ClarityUICall();

      v2 = sub_10023F260();

      if (v2)
      {
      }
    }

    else
    {
    }
  }

  else if (!v0)
  {
    return result;
  }

  return sub_10024B270(v0);
}

uint64_t sub_10024BA40()
{

  v1 = OBJC_IVAR____TtC13InCallService19ClarityUICallCenter___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ClarityUICallCenter()
{
  result = qword_1003B0748;
  if (!qword_1003B0748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10024BB38()
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

unint64_t sub_10024BBF8()
{
  result = qword_1003B07E0;
  if (!qword_1003B07E0)
  {
    type metadata accessor for ClarityUICallCenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B07E0);
  }

  return result;
}

BOOL sub_10024BC88(char a1, uint64_t a2)
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

  while (v6 != (a1 & 1));
  return v4 != 0;
}

BOOL sub_10024BCB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 2;
    v6 = MessageType.rawValue.getter();
  }

  while (v6 != MessageType.rawValue.getter());
  return v4 != 0;
}

uint64_t sub_10024BD68(uint64_t a1)
{
  type metadata accessor for ColorScheme();
  sub_10000688C();
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  (*(v6 + 16))(v5 - v4, a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10024BE1C(uint64_t a1, void *a2)
{
  v3 = *sub_100008878((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_100005AC0(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

Swift::Void __swiftcall PHAudioCallViewController.endWaitOnHoldSession()()
{
  v1 = [v0 callHoldingButtonViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CallHoldingButtonViewController();
    if (swift_dynamicCastClass())
    {
      CallHoldingButtonViewController.setWaitOnHoldActive(_:)(0);
    }
  }
}

Swift::Void __swiftcall PHAudioCallViewController.invertColorCallHoldingButtonColor(_:)(Swift::Bool a1)
{
  v3 = [v1 callHoldingButtonViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CallHoldingButtonViewController();
    if (swift_dynamicCastClass())
    {
      CallHoldingButtonViewController.invertColor(_:)(a1);
    }
  }
}

double sub_10024C080()
{
  v1 = [v0 isShowingPosterBadge];
  [v0 callDetailsButtonPaddingTrailing];
  v3 = 3.5;
  if (v1)
  {
    v3 = 8.0;
  }

  return v2 * v3;
}

uint64_t sub_10024C1B8()
{
  _s21WaitOnHoldTipUserInfoCMa_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  off_1003B07E8 = result;
  return result;
}

uint64_t sub_10024C1EC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for WaitOnHoldTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  sub_10014EA98(&qword_1003AA7B0);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return _swift_task_switch(sub_10024C3F4, v8, v7);
}

uint64_t sub_10024C3F4()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v18 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  sub_100006848(v1, 1, 1, v7);
  sub_100005C44();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

  sub_1001621BC();
  v0[33] = v14;
  type metadata accessor for TPTipsHelper();
  v15 = swift_task_alloc();
  v0[34] = v15;
  *v15 = v0;
  v16 = sub_100008DDC(v15);

  return static TPTipsHelper.shared.getter(v16);
}

uint64_t sub_10024C5DC()
{
  sub_100006610();
  sub_1000054B0();
  sub_1000058F8();
  *v3 = v2;
  v4 = *v1;
  sub_1000085E4();
  *v5 = v4;
  *(v7 + 280) = v6;

  sub_1000253A0();
  v9 = *(v8 + 240);
  v10 = *(v0 + 232);

  return _swift_task_switch(sub_10024C6E8, v10, v9);
}

uint64_t sub_10024C6E8()
{
  v15 = v0[35];
  v14 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v16 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.waitOnHold(_:), v7);
  v0[5] = v2;
  sub_100007AF8();
  v0[6] = sub_100025E38(v9, v10);
  v11 = sub_10015DFA8(v0 + 2);
  v14(v11, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  sub_10015E008((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  sub_100005B2C((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v16);

  sub_10000535C();

  return v12();
}

uint64_t sub_10024C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[59] = a5;
  v6[60] = a6;
  v6[58] = a4;
  v7 = type metadata accessor for Material._GlassVariant();
  v6[61] = v7;
  v6[62] = *(v7 - 8);
  v6[63] = swift_task_alloc();
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[64] = v8;
  v6[65] = *(v8 - 8);
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  sub_10014EA98(&qword_1003B06C8);
  v6[68] = swift_task_alloc();
  v9 = type metadata accessor for Tips.Status();
  v6[69] = v9;
  v6[70] = *(v9 - 8);
  v6[71] = swift_task_alloc();
  v6[72] = sub_10014EA98(&qword_1003B06D0);
  v6[73] = swift_task_alloc();
  v6[74] = sub_10014EA98(&qword_1003B06D8);
  v6[75] = swift_task_alloc();
  v10 = sub_10014EA98(&qword_1003B06E0);
  v6[76] = v10;
  v6[77] = *(v10 - 8);
  v6[78] = swift_task_alloc();
  v11 = sub_10014EA98(&qword_1003B06E8);
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = type metadata accessor for MainActor();
  v6[83] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[84] = v13;
  v6[85] = v12;

  return _swift_task_switch(sub_10024CC0C, v13, v12);
}

uint64_t sub_10024CC0C()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  *(v0 + 688) = type metadata accessor for WaitOnHoldTip();
  sub_100007AF8();
  *(v0 + 696) = sub_100025E38(v4, v5);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_100027E08(&qword_1003B06F0, &qword_1003B06D0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  sub_100008D1C();
  swift_beginAccess();
  *(v0 + 824) = enum case for TPTipsHelper.Entry.Kind.waitOnHold(_:);
  v6 = static MainActor.shared.getter();
  *(v0 + 704) = v6;
  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_10000C71C(v9, v7);

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10024CDE8()
{
  sub_1000058A8();
  v1 = v0[88];
  v0[91] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_100027E08(&qword_1003B06F8, &qword_1003B06D8);
  v2 = swift_task_alloc();
  v0[92] = v2;
  *v2 = v0;
  v2[1] = sub_10024CEE8;
  v3 = v0[68];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10024CEE8()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 720);
    v8 = *(v3 + 712);
    v9 = sub_100247A8C;
  }

  else
  {
    (*(v3 + 728))();
    v7 = *(v3 + 720);
    v8 = *(v3 + 712);
    v9 = sub_10024D000;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10024D000()
{
  sub_100006880();
  v1 = *(v0 + 69);
  v2 = *(v0 + 68);
  if (sub_100006AC0(v2, 1, v1) == 1)
  {
    sub_100008360(v2, &qword_1003B06C8);

    v3 = *(v0 + 85);
    v4 = *(v0 + 84);

    return _swift_task_switch(sub_100247AA4, v4, v3);
  }

  else
  {
    (*(*(v0 + 70) + 32))(*(v0 + 71), v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 93) = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v0 + 94) = v7;
    *v7 = v0;
    v7[1] = sub_10024D1B4;
    v8 = *(v0 + 71);

    return v10(v0 + 828, v8);
  }
}

uint64_t sub_10024D1B4()
{
  sub_100007C1C();
  sub_100005408();
  sub_1000054B0();
  sub_100006870();
  *v2 = v0;
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  *v2 = *v1;

  *(v0 + 829) = *(v0 + 828);
  (*(v4 + 8))(v3, v5);
  sub_1000253A0();
  sub_10000C20C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10024D33C()
{
  sub_100006610();

  v1 = *(v0 + 680);
  v2 = *(v0 + 672);

  return _swift_task_switch(sub_10024D3A0, v2, v1);
}

uint64_t sub_10024D3A0()
{
  v38 = v0;
  if (qword_1003A9F58 != -1)
  {
    sub_1000073F0();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, &unk_1003B8868);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 829);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008ADC(v7, v8, &v37);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: should display %{BOOL}d", v5, 0x12u);
    sub_100005B2C(v6);
    sub_100005BB8();
    sub_100005BB8();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 760) = Strong;
  if (!Strong)
  {
    v16 = sub_100008E90();
    v17(v16);

    goto LABEL_10;
  }

  if (*(v0 + 829))
  {
    v11 = Strong;
    v12 = [Strong waitOnHoldTipView];
    if (v12)
    {
      v13 = v12;

      v14 = sub_100008DE8();
      v15(v14);
LABEL_10:
      sub_100008CD0();

      sub_10000535C();

      return v18();
    }

    v22 = [v11 smartHoldingAnalytics];
    if (v22)
    {
      v23 = v22;
      sub_1001CAF64();
    }

    v24 = *(v0 + 464);
    v25 = *(v0 + 688);
    *(v0 + 120) = v25;
    v26 = v25;
    v27 = sub_10015DFA8((v0 + 96));
    v28 = *(v26 - 8);
    v29 = *(v28 + 16);
    *(v0 + 784) = v29;
    *(v0 + 792) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v27, v24, v26);
    sub_100005C44();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = objc_allocWithZone(type metadata accessor for TipUIView());
    v31 = TipUIView.init(_:arrowEdge:actionHandler:)();
    *(v0 + 800) = v31;
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_100005C44();
    *(swift_allocObject() + 16) = v11;
    v32 = v11;
    TipUIView.dismissalHandler.setter();
    *(v0 + 160) = &type metadata for TrailingActionButtonTipStyle;
    *(v0 + 168) = sub_10024AF60();
    TipUIView.viewStyle.setter();
    if (_UISolariumEnabled())
    {
      static Material._GlassVariant.clear.getter();
      *(v0 + 360) = type metadata accessor for Material();
      *(v0 + 368) = &protocol witness table for Material;
      sub_10015DFA8((v0 + 336));
      static Material._glass(_:)();
      v33 = sub_100008DE8();
      v34(v33);
    }

    else
    {
      v35 = [objc_opt_self() secondarySystemBackgroundColor];
      v36 = Color.init(uiColor:)();
      *(v0 + 200) = &type metadata for Color;
      *(v0 + 208) = &protocol witness table for Color;
      *(v0 + 176) = v36;
    }

    TipUIView.backgroundStyle.setter();
    type metadata accessor for TPTipsHelper();
    v20 = swift_task_alloc();
    *(v0 + 808) = v20;
    *v20 = v0;
    v21 = sub_10024DC2C;
  }

  else
  {
    type metadata accessor for TPTipsHelper();
    v20 = swift_task_alloc();
    *(v0 + 768) = v20;
    *v20 = v0;
    v21 = sub_10024D8A4;
  }

  v20[1] = v21;

  return static TPTipsHelper.shared.getter(v20);
}

uint64_t sub_10024D8A4()
{
  sub_100006610();
  sub_1000054B0();
  sub_1000058F8();
  *v3 = v2;
  v4 = *v1;
  sub_1000085E4();
  *v5 = v4;
  *(v7 + 776) = v6;

  sub_1000253A0();
  v9 = *(v8 + 680);
  v10 = *(v0 + 672);

  return _swift_task_switch(sub_10024D9B0, v10, v9);
}

uint64_t sub_10024D9B0()
{
  sub_100007C1C();
  sub_100005408();
  v1 = *(v0 + 776);
  (*(*(v0 + 520) + 104))(*(v0 + 536), *(v0 + 824), *(v0 + 512));
  v2 = dispatch thunk of TPTipsHelper.currentTip.getter();

  if (!*(v2 + 16) || (v3 = sub_100170210(), (v4 & 1) == 0))
  {
    v14 = *(v0 + 536);
    v15 = *(v0 + 520);
    v16 = *(v0 + 512);

    (*(v15 + 8))(v14, v16);
    goto LABEL_15;
  }

  v5 = *(v0 + 536);
  v6 = *(v0 + 520);
  v7 = *(v0 + 512);
  sub_10015E008(*(v2 + 56) + 40 * v3, v0 + 56);
  (*(v6 + 8))(v5, v7);

  sub_1000304E0((v0 + 56), v0 + 16);
  sub_100008878((v0 + 16), *(v0 + 40));
  sub_10000594C();
  v8 = dispatch thunk of Tip.id.getter();
  v10 = v9;
  if (v8 == dispatch thunk of Tip.id.getter() && v10 == v11)
  {

    goto LABEL_11;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_11:
    v17 = *(v0 + 760);
    v18 = [v17 waitOnHoldTipView];
    [v18 removeFromSuperview];

    [v17 setWaitOnHoldTipView:0];
    v19 = [v17 smartHoldingAnalytics];
    if (v19)
    {
      v20 = v19;
      sub_1001CACF0();
    }

    v21 = *(v0 + 760);
    [v21 updateLayoutSupplementalButtons];

    goto LABEL_14;
  }

LABEL_14:
  sub_100005B2C(v0 + 16);
LABEL_15:
  v22 = static MainActor.shared.getter();
  *(v0 + 704) = v22;
  if (v22)
  {
    swift_getObjectType();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  sub_10000C71C(v22, v23, v24);
  sub_10000C20C();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_10024DC2C()
{
  sub_100006610();
  sub_1000054B0();
  sub_1000058F8();
  *v3 = v2;
  v4 = *v1;
  sub_1000085E4();
  *v5 = v4;
  *(v7 + 816) = v6;

  sub_1000253A0();
  v9 = *(v8 + 680);
  v10 = *(v0 + 672);

  return _swift_task_switch(sub_10024DD38, v10, v9);
}

uint64_t sub_10024DD38()
{
  v30 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 464);
  v27 = *(v0 + 688);
  (*(*(v0 + 520) + 104))(*(v0 + 528), *(v0 + 824), *(v0 + 512));
  *(v0 + 240) = v27;
  v3 = sub_10015DFA8((v0 + 216));
  v1(v3, v2, v27);
  v4 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v6 = v5;
  v7 = *(v0 + 528);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  if (*(v0 + 240))
  {
    sub_1000304E0((v0 + 216), v0 + 296);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v6;
    v10 = *(v0 + 320);
    v28 = v9;
    v11 = sub_10015E208(v0 + 296, v10);
    v12 = v4;
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v11, v10);
    v4 = v12;
    sub_100251308(v14, v7, isUniquelyReferenced_nonNull_native, &v29);
    sub_100005B2C(v0 + 296);

    *v6 = v29;
    (*(v8 + 8))(v7, v28);
  }

  else
  {
    sub_100008360(v0 + 216, &qword_1003B0708);
    v15 = sub_100251158(v0 + 256);
    (*(v8 + 8))(v7, v9, v15);
    sub_100008360(v0 + 256, &qword_1003B0708);
  }

  v16 = *(v0 + 816);
  v17 = *(v0 + 800);
  v18 = *(v0 + 760);
  v4(v0 + 408, 0);

  [v18 setWaitOnHoldTipView:v17];
  [v18 updateWaitOnHoldViewIfNeeded];

  v19 = static MainActor.shared.getter();
  *(v0 + 704) = v19;
  if (v19)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_10000C71C(v19, v20, v21);

  return _swift_task_switch(v22, v23, v24);
}

void sub_10024DFF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissWaitOnHoldTip];
    v2 = [v1 callHoldingButtonViewController];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for CallHoldingButtonViewController();
      if (swift_dynamicCastClass())
      {
        CallHoldingButtonViewController.buttonTapped()();
      }
    }

    v4 = [v1 smartHoldingAnalytics];
    if (v4)
    {
      v5 = v4;
      sub_1001CA988();
    }
  }
}

void sub_10024E0C8(int a1, id a2)
{
  [a2 dismissWaitOnHoldTip];
  sub_10024E150();
  v3 = [a2 smartHoldingAnalytics];
  if (v3)
  {
    v4 = v3;
    sub_1001CAA88();
  }
}

id sub_10024E150()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v29 - v4;
  v6 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v15 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v29 - v17;
  result = [v0 frontmostCall];
  if (result)
  {
    v20 = result;
    v32 = v11;
    v33 = ObjectType;
    v34 = v5;
    v21 = [result callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if (sub_100006AC0(v9, 1, v10) == 1)
    {

      return sub_100008360(v9, &qword_1003AAB40);
    }

    else
    {
      v22 = v32;
      v31 = *(v32 + 32);
      v31(v18, v9, v10);
      v23 = v34;
      static TaskPriority.userInitiated.getter();
      v24 = type metadata accessor for TaskPriority();
      sub_100006848(v23, 0, 1, v24);
      (*(v22 + 16))(v15, v18, v10);
      type metadata accessor for MainActor();
      v30 = v0;
      v25 = static MainActor.shared.getter();
      v26 = (*(v22 + 80) + 40) & ~*(v22 + 80);
      v27 = swift_allocObject();
      *(v27 + 2) = v25;
      *(v27 + 3) = &protocol witness table for MainActor;
      v28 = v31;
      *(v27 + 4) = v30;
      v28(&v27[v26], v15, v10);
      *&v27[(v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v33;
      sub_1001621BC();

      return (*(v22 + 8))(v18, v10);
    }
  }

  return result;
}

id sub_10024E4A8()
{
  v1 = v0;
  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.updateCanDisplayWaitOnHoldTip(_:)();
  v2 = [v0 waitOnHoldTipView];
  [v2 removeFromSuperview];

  [v1 setWaitOnHoldTipView:0];

  return [v1 updateLayoutSupplementalButtons];
}

uint64_t sub_10024E538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  type metadata accessor for MainActor();
  v6[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[22] = v8;
  v6[23] = v7;

  return _swift_task_switch(sub_10024E5D4, v8, v7);
}

uint64_t sub_10024E5D4()
{
  sub_100006880();
  v1 = [*(v0 + 144) callCenter];
  *(v0 + 192) = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v0 + 200) = isa;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10024905C;
  v3 = swift_continuation_init();
  *(v0 + 136) = sub_10014EA98(&qword_1003B0710);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10024BE1C;
  *(v0 + 104) = &unk_100361CB8;
  *(v0 + 112) = v3;
  [v1 performSmartHoldingRequestWithType:2 forCallWithUUID:isa completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10024E71C()
{
  sub_10014EA98(&qword_1003AA7B0);
  sub_100005BE0();
  __chkstk_darwin(v1, v2);
  v4 = &v23 - v3;
  v5 = type metadata accessor for WaitOnHoldTip();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_100005BD0();
  v12 = v11 - v10;
  WaitOnHoldTip.init()();
  sub_100007AF8();
  sub_100025E38(v13, v14);
  Tip.reset()();
  if (qword_1003AA100 != -1)
  {
    sub_1000081D4();
  }

  if (*(off_1003B07E8 + 2))
  {

    sub_10014EA98(&qword_1003AAC00);
    Task.cancel()();
  }

  if ([v0 holdingConditions])
  {
    v15 = off_1003B07E8;
    v16 = type metadata accessor for TaskPriority();
    sub_100006848(v4, 1, 1, v16);
    type metadata accessor for MainActor();

    v17 = v0;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v17;
    v15[2] = sub_10016ECCC();

    v20 = [v17 smartHoldingAnalytics];
    if (v20)
    {
      v21 = v20;
      sub_1001CB2DC();
    }
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_10024E9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10024EA48, v6, v5);
}

uint64_t sub_10024EA48()
{
  sub_1000058A8();
  type metadata accessor for TPTipsHelper();
  v0[7] = static TPTipsHelper.taskQueue.getter();
  sub_100005C44();
  v1 = swift_allocObject();
  v0[8] = v1;
  swift_unknownObjectWeakInit();
  v2 = sub_10000A4A0();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10024977C;
  v3 = v0[2];

  return v5(v3, &unk_100302280, v1, &type metadata for ()[8]);
}

uint64_t sub_10024EB48(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = type metadata accessor for CancellationError();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for WaitOnHoldTip();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10024ECC0, 0, 0);
}

uint64_t sub_10024ECC0()
{
  sub_100006610();
  ContinuousClock.init()();
  v1 = sub_10000A4A0();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10024ED74;
  sub_100008D1C();

  return v3();
}

uint64_t sub_10024ED74()
{
  sub_1000058A8();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  (*(v2[14] + 8))(v2[15], v2[13]);
  if (v0)
  {
    v5 = sub_10024F234;
  }

  else
  {
    v5 = sub_10024EED0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10024EED0()
{
  sub_100006610();
  sub_100008D1C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    type metadata accessor for TPTipsHelper();
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v3 = sub_100008DDC(v2);

    return static TPTipsHelper.shared.getter(v3);
  }

  else
  {
    sub_100008480();

    sub_10000535C();

    return v4();
  }
}

uint64_t sub_10024EFC8()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000085E4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = sub_100008184();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10024F0B0()
{
  sub_100006610();
  type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10024F134()
{
  sub_100006610();
  v1 = *(v0 + 160);

  dispatch thunk of TPTipsHelper.setup()();

  v2 = sub_100008184();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10024F198()
{
  sub_100006610();
  WaitOnHoldTip.init()();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_10024A014;
  v2 = *(v0 + 96);

  return sub_10024C1EC(v2);
}

uint64_t sub_10024F234()
{
  sub_100006880();
  v0[5] = v0[17];
  swift_errorRetain();
  sub_10014EA98(&qword_1003AAC00);
  if (swift_dynamicCast())
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[7];

    (*(v2 + 8))(v1, v3);
  }

  else
  {

    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8820);
    sub_10000594C();
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      sub_100005414(&_mh_execute_header, v10, v11, "Failed to start observing tips due to %@");
      sub_100008360(v8, &qword_1003B0230);
      sub_100005BB8();
      sub_100005BB8();

      goto LABEL_9;
    }
  }

LABEL_9:
  sub_100008480();

  sub_10000535C();

  return v12();
}

uint64_t sub_10024F488(uint64_t a1)
{
  sub_10014EA98(&qword_1003B08D0);
  sub_100005BE0();
  __chkstk_darwin(v2, v3);
  v5 = &__src[-v4];
  v6 = sub_10014EA98(&qword_1003B08D8) - 8;
  sub_100005BE0();
  __chkstk_darwin(v7, v8);
  v10 = &__src[-v9];
  v11 = sub_10014EA98(&qword_1003B08E0);
  sub_1000058E8();
  sub_100005BE0();
  __chkstk_darwin(v12, v13);
  v15 = &__src[-v14];
  *v5 = static Alignment.center.getter();
  v5[1] = v16;
  v17 = sub_10014EA98(&qword_1003B08E8);
  sub_10024F720(a1, v5 + *(v17 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001BE054(v5, v10, &qword_1003B08D0);
  memcpy(&v10[*(v6 + 44)], __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v19 = &v15[*(v11 + 36)];
  v20 = *(sub_10014EA98(&qword_1003AF470) + 28);
  v21 = enum case for ColorScheme.dark(_:);
  type metadata accessor for ColorScheme();
  sub_1000058E8();
  (*(v22 + 104))(v19 + v20, v21);
  *v19 = KeyPath;
  sub_1001BE054(v10, v15, &qword_1003B08D8);
  sub_10025186C();
  View.tipCornerRadius(_:antialiased:)();
  return sub_100008360(v15, &qword_1003B08E0);
}

uint64_t sub_10024F720@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a1;
  v60 = a2;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2, v3);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10014EA98(&qword_1003B0908);
  __chkstk_darwin(v53, v5);
  v7 = &v51 - v6;
  v55 = sub_10014EA98(&qword_1003B0910) - 8;
  v9 = __chkstk_darwin(v55, v8);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = &v51 - v12;
  v14 = sub_10014EA98(&qword_1003B0918);
  v16 = __chkstk_darwin(v14 - 8, v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v51 - v20;
  v22 = type metadata accessor for GlassDimmingRepresentableView();
  v51 = *(v22 - 8);
  v23 = v51;
  v25 = __chkstk_darwin(v22, v24);
  v52 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v29 = &v51 - v28;
  sub_10014EA98(&unk_1003AAAA0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002F96C0;
  v31 = objc_opt_self();
  *(v30 + 32) = [v31 blackColor];
  v32 = [v31 blackColor];
  v33 = [v32 colorWithAlphaComponent:0.0];

  *(v30 + 40) = v33;
  GlassDimmingView.GradientValues.init(startPoint:endPoint:colors:isVisible:)();
  v34 = type metadata accessor for GlassDimmingView.GradientValues();
  sub_100006848(v21, 0, 1, v34);
  sub_100006848(v18, 1, 1, v34);
  v35 = v29;
  GlassDimmingRepresentableView.init(foregroundGradient:backgroundGradient:)();
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v36 = &v7[*(sub_10014EA98(&qword_1003B0920) + 44)];
  *v36 = static VerticalAlignment.center.getter();
  *(v36 + 1) = 0;
  v36[16] = 1;
  v37 = sub_10014EA98(&qword_1003B0928);
  sub_10024FCB4(v56, &v36[*(v37 + 44)]);
  v38 = v54;
  static AccessibilityChildBehavior.contain.getter();
  sub_100027E08(&qword_1003B0930, &qword_1003B0908);
  View.accessibilityElement(children:)();
  (*(v58 + 8))(v38, v59);
  sub_100008360(v7, &qword_1003B0908);
  LOBYTE(v7) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v39 = &v13[*(v55 + 44)];
  *v39 = v7;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v44 = *(v23 + 16);
  v45 = v52;
  v44(v52, v35, v22);
  v46 = v57;
  sub_1001BE004(v13, v57, &qword_1003B0910);
  v47 = v60;
  v44(v60, v45, v22);
  v48 = sub_10014EA98(&qword_1003B0938);
  sub_1001BE004(v46, &v47[*(v48 + 48)], &qword_1003B0910);
  sub_100008360(v13, &qword_1003B0910);
  v49 = *(v51 + 8);
  v49(v35, v22);
  sub_100008360(v46, &qword_1003B0910);
  return (v49)(v45, v22);
}

uint64_t sub_10024FCB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v45 = type metadata accessor for TipViewStyleConfiguration();
  v3 = *(v45 - 8);
  v44 = *(v3 + 64);
  __chkstk_darwin(v45, v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10014EA98(&qword_1003B0940);
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  __chkstk_darwin(v6, v8);
  v10 = &v39 - v9;
  v11 = sub_10014EA98(&qword_1003B0948);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v51 = &v39 - v16;
  v46 = sub_10014EA98(&qword_1003B0950);
  v52 = *(v46 - 8);
  v18 = __chkstk_darwin(v46, v17);
  v43 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v39 - v21;
  v42 = TipViewStyleConfiguration.image.getter();

  v54 = static HorizontalAlignment.leading.getter();
  LOBYTE(v58[0]) = 1;
  sub_100250324(v56);
  *&v55[7] = v56[0];
  *&v55[23] = v56[1];
  *&v55[39] = v56[2];
  *&v55[55] = v56[3];
  v53 = LOBYTE(v58[0]);
  v58[0] = TipViewStyleConfiguration.actions.getter();
  swift_getKeyPath();
  sub_10014EA98(&qword_1003B0958);
  sub_10014EA98(&qword_1003B0960);
  sub_100027E08(&qword_1003B0968, &qword_1003B0958);
  sub_1002519DC();
  v40 = v22;
  ForEach<>.init(_:id:content:)();
  v23 = v41;
  v24 = v45;
  (*(v3 + 16))(v41, a1, v45);
  v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = swift_allocObject();
  (*(v3 + 32))(v26 + v25, v23, v24);
  sub_10014EA98(&qword_1003B09B8);
  sub_100251DAC();
  Button.init(action:label:)();
  sub_100027E08(&qword_1003B09C8, &qword_1003B0940);
  v27 = v51;
  v28 = v48;
  View.accessibilityIdentifier(_:)();
  (*(v49 + 8))(v10, v28);
  v29 = *(v52 + 16);
  v30 = v43;
  v31 = v22;
  v32 = v46;
  v29(v43, v31, v46);
  v33 = v47;
  sub_1001BE004(v27, v47, &qword_1003B0948);
  v34 = v50;
  *v50 = v42;
  v57[0] = v54;
  v57[1] = 0;
  LOBYTE(v57[2]) = v53;
  memcpy(&v57[2] + 1, v55, 0x47uLL);
  memcpy(v34 + 1, v57, 0x58uLL);
  v34[12] = 0;
  *(v34 + 104) = 1;
  v35 = v34;
  v36 = sub_10014EA98(&qword_1003B09D0);
  v29(v35 + *(v36 + 80), v30, v32);
  sub_1001BE004(v33, v35 + *(v36 + 96), &qword_1003B0948);

  sub_100251E94(v57, v58);

  sub_100008360(v51, &qword_1003B0948);
  v37 = *(v52 + 8);
  v37(v40, v32);
  sub_100008360(v33, &qword_1003B0948);
  v37(v30, v32);
  v58[0] = v54;
  v58[1] = 0;
  v59 = v53;
  memcpy(v60, v55, sizeof(v60));
  sub_100008360(v58, &qword_1003B09D8);
}

uint64_t sub_100250324@<X0>(uint64_t *a1@<X8>)
{
  v2 = TipViewStyleConfiguration.title.getter();
  v4 = v3;
  v6 = v5;
  if (v7)
  {
    static Font.headline.getter();
    v8 = Text.font(_:)();
    v10 = v9;
    v12 = v11;
    v39 = v13;
    sub_1001AD540(v2, v4, v6 & 1);

    v6 = v12 & 1;
    v14 = v39;
    sub_1001AD550(v8, v10, v6);

    v2 = v8;
    v4 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = TipViewStyleConfiguration.message.getter();
  v17 = v16;
  v19 = v18;
  if (v20)
  {
    static Font.subheadline.getter();
    v40 = v14;
    v36 = v19 & 1;
    v21 = Text.font(_:)();
    v37 = v4;
    v38 = v2;
    v23 = v22;
    v25 = v24;

    static HierarchicalShapeStyle.secondary.getter();
    v26 = Text.foregroundStyle<A>(_:)();
    v35 = v27;
    v34 = v28;
    v30 = v29;
    v31 = v25 & 1;
    v32 = v23;
    v4 = v37;
    v2 = v38;
    sub_1001AD540(v21, v32, v31);

    sub_1001AD540(v15, v17, v36);

    v19 = v34 & 1;
    v17 = v35;
    sub_1001AD550(v26, v35, v34 & 1);

    v15 = v26;
    v14 = v40;
  }

  else
  {
    v30 = 0;
  }

  sub_10025202C(v2, v4, v6, v14);
  sub_10025202C(v15, v17, v19, v30);
  sub_100252070(v2, v4, v6, v14);
  sub_100252070(v15, v17, v19, v30);
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v14;
  a1[4] = v15;
  a1[5] = v17;
  a1[6] = v19;
  a1[7] = v30;
  sub_100252070(v15, v17, v19, v30);
  return sub_100252070(v2, v4, v6, v14);
}

uint64_t sub_1002505A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for BorderedButtonStyle();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Tips.Action();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v33 = sub_10014EA98(&qword_1003AC348);
  v12 = *(v33 - 8);
  __chkstk_darwin(v33, v13);
  v15 = &v32 - v14;
  v34 = sub_10014EA98(&qword_1003B0980);
  __chkstk_darwin(v34, v16);
  v18 = &v32 - v17;
  (*(v9 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  (*(v9 + 32))(v20 + v19, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v38 = a1;
  Button.init(action:label:)();
  BorderedButtonStyle.init()();
  sub_100027E08(&qword_1003AC340, &qword_1003AC348);
  sub_100025E38(&qword_1003B09A8, &type metadata accessor for BorderedButtonStyle);
  v21 = v33;
  v22 = v35;
  View.buttonStyle<A>(_:)();
  (*(v36 + 8))(v7, v22);
  (*(v12 + 8))(v15, v21);
  v23 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v25 = &v18[*(sub_10014EA98(&qword_1003B09A0) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  static Color.white.getter();
  v26 = Color.opacity(_:)();

  LOBYTE(v23) = static Edge.Set.all.getter();
  v27 = &v18[*(sub_10014EA98(&qword_1003B0990) + 36)];
  *v27 = v26;
  v27[8] = v23;
  v28 = &v18[*(v34 + 36)];
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(v28, v29, v30);
  *&v28[*(sub_10014EA98(&qword_1003AD4E0) + 36)] = 256;
  sub_100251A98();
  View.accessibilityIdentifier(_:)();
  return sub_100008360(v18, &qword_1003B0980);
}

uint64_t sub_100250A60@<X0>(uint64_t a1@<X8>)
{
  v2 = Tips.Action.label.getter();
  v3 = v2();
  v5 = v4;
  v7 = v6;

  static Font.subheadline.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1001AD540(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_100250B30(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v2();
}

uint64_t sub_100250B78@<X0>(uint64_t a1@<X8>)
{
  Image.init(systemName:)();
  static Font.Weight.medium.getter();
  View.fontWeight(_:)();

  v2 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10014EA98(&qword_1003B09B8);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

Swift::Void __swiftcall PHAudioCallViewController.didTapBeginWaitOnHold()()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 requestWaitOnHoldBannerPresentation];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100250CF0()
{
  sub_1000058A8();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v3[1] = sub_100008208;
  v5 = sub_100008BC0();

  return sub_10024E9B0(v5, v6, v7, v1);
}

uint64_t sub_100250D8C()
{
  sub_100006610();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = sub_100005B88(v3);
  *v4 = v5;
  v4[1] = sub_100008204;

  return sub_10024EB48(v2, v0);
}

uint64_t sub_100250E1C()
{
  sub_100007C1C();
  sub_100005408();
  v0 = type metadata accessor for WaitOnHoldTip();
  sub_100006998(v0);
  v1 = swift_task_alloc();
  v2 = sub_100005B88(v1);
  *v2 = v3;
  v2[1] = sub_100008204;
  sub_100008BC0();
  sub_10000C20C();

  return sub_10024C8C8(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100250F34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10001411C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000899C();
  v7 = sub_10014EA98(&qword_1003AFB78);
  sub_100034C80(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);

  v15 = *(*(v19 + 56) + 16 * v6);
  sub_100008DE8();
  _NativeDictionary._delete(at:)();
  *v3 = v19;
  return v15;
}

uint64_t sub_100250FF8()
{
  v1 = v0;
  v2 = sub_10017007C();
  if ((v3 & 1) == 0)
  {
    return 512;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000899C();
  v5 = sub_10014EA98(&qword_1003AFB68);
  sub_100034C80(v5, v6, v7, v8, v9, v10, v11, v12, v21, v22);
  v13 = *(v23 + 48);
  v14 = type metadata accessor for UUID();
  sub_1000058E8();
  (*(v15 + 8))(v13 + *(v15 + 72) * v4, v14);
  v16 = (*(v23 + 56) + 32 * v4);
  v17 = *v16;
  v18 = v16[1];
  sub_100025E38(&qword_1003AB0B0, &type metadata accessor for UUID);
  sub_100008DE8();
  _NativeDictionary._delete(at:)();
  *v1 = v23;
  if (v18)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  return v19 | v17;
}

double sub_100251158@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_100170210();
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    v7 = *(*v1 + 24);
    sub_10014EA98(&qword_1003B08A8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
    v8 = *(v12 + 48);
    v9 = type metadata accessor for TPTipsHelper.Entry.Kind();
    sub_1000058E8();
    (*(v10 + 8))(v8 + *(v10 + 72) * v5, v9);
    sub_1000304E0((*(v12 + 56) + 40 * v5), a1);
    sub_10014EA98(&qword_1003B08B0);
    sub_100025E38(&qword_1003AB098, &type metadata accessor for TPTipsHelper.Entry.Kind);
    _NativeDictionary._delete(at:)();
    *v1 = v12;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1002512B0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100251308(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  sub_10000688C();
  v10 = v9;
  __chkstk_darwin(v11, v12);
  sub_100005BD0();
  v15 = v14 - v13;
  v16 = type metadata accessor for WaitOnHoldTip();
  v39 = v16;
  sub_100007AF8();
  v40 = sub_100025E38(v17, v18);
  v19 = sub_10015DFA8(&v38);
  (*(*(v16 - 8) + 32))(v19, a1, v16);
  v20 = *a4;
  v21 = sub_100170210();
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_10;
  }

  v26 = v21;
  v27 = v22;
  sub_10014EA98(&qword_1003B08A8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v25))
  {
    goto LABEL_5;
  }

  v28 = sub_100170210();
  if ((v27 & 1) != (v29 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v26 = v28;
LABEL_5:
  v30 = *a4;
  if (v27)
  {
    v31 = v30[7] + 40 * v26;
    sub_100005B2C(v31);
    return sub_1000304E0(&v38, v31);
  }

  else
  {
    (*(v10 + 16))(v15, a2, v8);
    v33 = sub_10015E208(&v38, v39);
    __chkstk_darwin(v33, v33);
    sub_100005BD0();
    v36 = v35 - v34;
    (*(v37 + 16))(v35 - v34);
    sub_1002515B0(v26, v15, v36, v30);
    return sub_100005B2C(&v38);
  }
}

uint64_t sub_1002515B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for WaitOnHoldTip();
  v17 = v8;
  v18 = sub_100025E38(&qword_1003B06C0, &type metadata accessor for WaitOnHoldTip);
  v9 = sub_10015DFA8(&v16);
  (*(*(v8 - 8) + 32))(v9, a3, v8);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for TPTipsHelper.Entry.Kind();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_1000304E0(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1002516FC()
{
  sub_100007C1C();
  sub_100005408();
  v0 = type metadata accessor for UUID();
  sub_100006998(v0);
  v1 = swift_task_alloc();
  v2 = sub_100005B88(v1);
  *v2 = v3;
  v2[1] = sub_100008208;
  sub_100008BC0();
  sub_10000C20C();

  return sub_10024E538(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1002517FC()
{
  result = qword_1003AAEF8;
  if (!qword_1003AAEF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAEF8);
  }

  return result;
}

unint64_t sub_10025186C()
{
  result = qword_1003B08F0;
  if (!qword_1003B08F0)
  {
    sub_100155B7C(&qword_1003B08E0);
    sub_100251924();
    sub_100027E08(&qword_1003AF758, &qword_1003AF470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B08F0);
  }

  return result;
}

unint64_t sub_100251924()
{
  result = qword_1003B08F8;
  if (!qword_1003B08F8)
  {
    sub_100155B7C(&qword_1003B08D8);
    sub_100027E08(&qword_1003B0900, &qword_1003B08D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B08F8);
  }

  return result;
}

unint64_t sub_1002519DC()
{
  result = qword_1003B0970;
  if (!qword_1003B0970)
  {
    sub_100155B7C(&qword_1003B0960);
    sub_100251A98();
    sub_100025E38(&qword_1003B09B0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0970);
  }

  return result;
}

unint64_t sub_100251A98()
{
  result = qword_1003B0978;
  if (!qword_1003B0978)
  {
    sub_100155B7C(&qword_1003B0980);
    sub_100251B50();
    sub_100027E08(&qword_1003AD618, &qword_1003AD4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0978);
  }

  return result;
}

unint64_t sub_100251B50()
{
  result = qword_1003B0988;
  if (!qword_1003B0988)
  {
    sub_100155B7C(&qword_1003B0990);
    sub_100251C08();
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0988);
  }

  return result;
}

unint64_t sub_100251C08()
{
  result = qword_1003B0998;
  if (!qword_1003B0998)
  {
    sub_100155B7C(&qword_1003B09A0);
    sub_100155B7C(&qword_1003AC348);
    type metadata accessor for BorderedButtonStyle();
    sub_100027E08(&qword_1003AC340, &qword_1003AC348);
    sub_100025E38(&qword_1003B09A8, &type metadata accessor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0998);
  }

  return result;
}

unint64_t sub_100251DAC()
{
  result = qword_1003B09C0;
  if (!qword_1003B09C0)
  {
    sub_100155B7C(&qword_1003B09B8);
    swift_getOpaqueTypeConformance2();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B09C0);
  }

  return result;
}

uint64_t sub_100251E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003B09D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100251F04(void (*a1)(void))
{
  a1(0);
  sub_1000058E8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_10025202C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001AD550(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100252070(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001AD540(result, a2, a3 & 1);
  }

  return result;
}

void sub_1002520B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10014EA98(&qword_1003B0A98);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_10001411C(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v22 = (v2[6] + 16 * v16);
      *v22 = v13;
      v22[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v7 = v8;
    }
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

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_10025229C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10014EA98(&qword_1003B0A88);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100034DBC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100034DBC(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_100034DBC(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

NSString sub_100252550()
{
  result = String._bridgeToObjectiveC()();
  qword_1003B8B20 = result;
  return result;
}

uint64_t static NSNotification.PHAlertInvoked.getter()
{
  if (qword_1003AA108 != -1)
  {
    swift_once();
  }

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100252750()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_callCenter) emergencyCall];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  if (![v1 supportsEmergencyFallback])
  {

LABEL_6:
    if (qword_1003A9F98 != -1)
    {
      sub_1000076C0();
    }

    static os_log_type_t.default.getter();
    sub_10000C73C();
    os_log(_:dso:log:type:_:)();
    goto LABEL_9;
  }

  v3 = [v2 originatingUIType];

  if (v3 >= 0xE)
  {
LABEL_9:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  v4 = 0x3440u >> v3;
  return v4 & 1;
}

void *sub_100252830()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000064BC(0, &qword_1003AAAB0);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result;
      if ([result respondsToSelector:"demoAvailabilityChangedWithIsDemoAvailable:"])
      {
        [v9 demoAvailabilityChangedWithIsDemoAvailable:*(v1 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_isDemoAvailable)];
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002529A4()
{
  if (qword_1003A9F98 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002BA70();
  }

  Notification.object.getter();
  if (v6)
  {
    sub_1000064BC(0, &qword_1003ADBE0);
    if (swift_dynamicCast())
    {
      if ([v4 supportsEmergencyFallback])
      {
        swift_beginAccess();
        v2 = swift_unknownObjectWeakLoadStrong();
        if (v2)
        {
          v3 = v2;
          sub_10002BC08();
        }
      }
    }
  }

  else
  {
    sub_10015E258(v5);
  }
}

void sub_100252B10()
{
  if (qword_1003A9F98 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002BC08();
  }
}

id sub_100252BCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100252C40()
{
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0();
  }

  static os_log_type_t.default.getter();
  sub_10000C73C();
  os_log(_:dso:log:type:_:)();
  *(v0 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor) = 0;

  return swift_unknownObjectRelease();
}

id sub_100252D18(char a1, char a2)
{
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return [v2 performAlertRequestWithRequestUnlock:a1 & 1 automaticallyInvoked:a2 & 1];
}

void sub_100252E94()
{
  v1 = OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer;
  v2 = *(v0 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer);
  if (v2)
  {
    [v2 invalidate];
    v1 = OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer;
    v2 = *(v0 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer);
  }

  *(v0 + v1) = 0;
}

void sub_100252F30(char a1, char a2)
{
  if (sub_10002B048())
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a2 & 1;
    if (a1)
    {
      v6 = [objc_opt_self() sharedInstance];
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_100253DC4;
        *(v8 + 24) = v5;
        v11[4] = sub_100253DD0;
        v11[5] = v8;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 1107296256;
        v11[2] = sub_100164920;
        v11[3] = &unk_100361E18;
        v9 = _Block_copy(v11);

        [v7 requestPasscodeUnlockWithCompletion:v9];

        _Block_release(v9);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      sub_100253184(v10, a2 & 1);
    }
  }

  else
  {
    if (qword_1003A9F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_100253184(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [objc_allocWithZone(CTStewieRequestContext) init];
    [v5 setReason:1];
    v6 = OBJC_IVAR____TtC13InCallService16AlertCoordinator_callCenter;
    v7 = [*&v4[OBJC_IVAR____TtC13InCallService16AlertCoordinator_callCenter] emergencyCall];
    if (v7)
    {
      v8 = v7;
      if (a2)
      {
        v9 = [v7 originatingUIType] - 6;
        if (v9 <= 7 && ((0xD1u >> v9) & 1) != 0)
        {
          [v5 setReason:qword_100302558[v9]];
        }
      }
    }

    if (qword_1003A9F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v4[OBJC_IVAR____TtC13InCallService16AlertCoordinator_isAlertRequestPending] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alertWillInvoke];
      swift_unknownObjectRelease();
    }

    [*&v4[v6] disconnectAllCallsWithNoPreflight];
    v11 = *&v4[OBJC_IVAR____TtC13InCallService16AlertCoordinator_telephonyClient];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a2 & 1;
    aBlock[4] = sub_100253DD8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019E9EC;
    aBlock[3] = &unk_100361E68;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v11 requestStewieWithContext:v5 completion:v14];
    _Block_release(v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10025342C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(Strong + OBJC_IVAR____TtC13InCallService16AlertCoordinator_isAlertRequestPending) = 0;
    if (a1)
    {
      swift_errorRetain();
      if (qword_1003A9F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      sub_10014EA98(&qword_1003AB478);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1002FAB60;
      swift_errorRetain();
      sub_10014EA98(&qword_1003AAC00);
      v8 = String.init<A>(reflecting:)();
      v10 = v9;
      *(v7 + 56) = &type metadata for String;
      *(v7 + 64) = sub_10002BBB4();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      if (qword_1003A9F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      sub_10014EA98(&unk_1003B0A78);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002FAB60;
      *(inited + 32) = 0xD000000000000017;
      *(inited + 40) = 0x80000001002AE780;
      *(inited + 48) = a3 & 1;
      v12 = Dictionary.init(dictionaryLiteral:)();
      v13 = [objc_opt_self() defaultCenter];
      if (qword_1003AA108 != -1)
      {
        swift_once();
      }

      v14 = qword_1003B8B20;
      v15 = sub_10025229C(v12);

      sub_100253DE4(v14, 0, v15, v13);

      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v17 = v16;
        if ([v16 respondsToSelector:"alertDidInvoke"])
        {
          [v17 alertDidInvoke];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100253758(char a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    return a2();
  }

  if (qword_1003A9F98 != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();

  return os_log(_:dso:log:type:_:)();
}

void sub_100253860()
{
  if (([v0 isBackgroundCountdownRunning] & 1) == 0)
  {
    *&v0[OBJC_IVAR____TtC13InCallService16AlertCoordinator__currentBackgroundCountdownDuration] = 0x4024000000000000;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_100253DBC;
    v8[5] = v2;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100253ABC;
    v8[3] = &unk_100361DA0;
    v3 = _Block_copy(v8);

    v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:1.0];
    _Block_release(v3);
    v5 = OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer;
    v6 = *&v0[OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer];
    if (v6)
    {
      [v6 invalidate];
      v5 = OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer;
      v7 = *&v0[OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = v4;
  }
}

void sub_1002539B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC13InCallService16AlertCoordinator__currentBackgroundCountdownDuration) + -1.0;
    *(Strong + OBJC_IVAR____TtC13InCallService16AlertCoordinator__currentBackgroundCountdownDuration) = v2;
    if (v2 <= 0.0)
    {
      if (qword_1003A9F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      [*&v1[OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer] invalidate];
      [v1 invokeAlertWithRequestUnlock:0 automaticallyInvoked:1];
    }
  }
}

void sub_100253ABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100253B24(void *a1)
{
  [v1 statusChanged:{objc_msgSend(a1, "status")}];
  v2 = sub_100253C40();
  v3 = OBJC_IVAR____TtC13InCallService16AlertCoordinator_isDemoAvailable;
  *(v1 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_isDemoAvailable) = v2 & 1;
  sub_100252830();
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0();
  }

  sub_10014EA98(&qword_1003AB478);
  v4 = swift_allocObject();
  v5 = *(v1 + v3);
  *(v4 + 16) = xmmword_1002FAB60;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  *(v4 + 32) = v5;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_100253D28()
{
  v1 = [v0 getState];
  v2 = sub_100253D70();

  return v2 & 1;
}

void sub_100253DE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 postNotificationName:a1 object:a2 userInfo:isa];
}

void sub_100253FD0(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 deviceType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to determine glyph for %ld. Defaulting to speaker", &v3, 0xCu);
}

void sub_1002540F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to look up scene type for configuration identifier %@", &v2, 0xCu);
}

void sub_100254170(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_100030C10(a2);
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "There's no previously registered scene of type %{public}@; ignoring scene %{public}@", &v7, 0x16u);
}

void sub_100254274(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SNAP: updateContactAndNicknamesForAutoUpdateWithError returned error: %@", &v2, 0xCu);
}

void sub_100254300(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@: PiP Proxy doesn't implement selector, won't set title and avatar", &v2, 0xCu);
}

void sub_1002543BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@: Received unknown PIP FaceTime action %ld", &v3, 0x16u);
}

void sub_100254444(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_1002544D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to punch out for call %@ because it has no bundle identifier", &v2, 0xCu);
}

void sub_100254548(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to punch out for call %@ because it has no bundle identifier", &v3, 0xCu);
}

void sub_1002545D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find bundle identifier for request: %@", &v2, 0xCu);
}

void sub_1002546A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Setting attribute failed with error %@", &v2, 0xCu);
}

void sub_100254720(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not obtain audio session for identifier %d", v2, 8u);
}

void sub_1002547D4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not obtain application record with bundle identifier %@; attempt failed with error %@", &v3, 0x16u);
}

uint64_t sub_10025485C()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100254880(v0);
}

void sub_100254894()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10025496C()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002549DC()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254A18()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254A54()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100254AC4()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254B00()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254B3C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to retrieve application record for bundle identifier %@ failed with error: %@", buf, 0x16u);
}

void sub_100254BA4()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100254C14()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254C50()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100254CC0()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100254D44()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100254DB4()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254DF0()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100254E60()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254E9C()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254ED8()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100254F14(void *a1)
{
  v1 = a1;
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 currentCalls];
  sub_100007E1C();
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received show in-call UI URL but still could not find any calls, after requerying for current calls: %@ or should activate SpringBoard alert %d", v5, 0x12u);
}

void sub_100254FE8()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100255024()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100255060(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to open video message with UUID %@", &v3, 0xCu);
}

void sub_1002550DC(void *a1, NSObject *a2)
{
  v3 = [a1 processAssertion];
  sub_100007E1C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to acquire temporary prevent suspension assertion: %@", v4, 0xCu);
}

void sub_100255170()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002551AC()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100255290(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10000C224(&_mh_execute_header, a2, a3, "Error pushing call to %@ -- %@", *v3, *&v3[8], *&v3[16]);
}

void sub_10025530C()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100255348()
{
  sub_100007E1C();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100255420(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PHSOSViewController,launched with unhandled SOSTriggerMechanism,%d", v3, 8u);
}

void sub_100255504(void *a1)
{
  [a1 sosTrigger];
  sub_100007E28();
  sub_10000C244();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1002555EC(void *a1)
{
  [a1 sosTrigger];
  sub_100007E28();
  sub_10000C244();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1002556D8(void *a1)
{
  [a1 priorSystemVolume];
  sub_10000C244();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100255794(void *a1)
{
  [a1 sosTrigger];
  sub_100007E28();
  sub_10000C244();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100255848(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PHSOSViewController,failed to open messages with error,%@", &v2, 0xCu);
}

void sub_100255928(void *a1)
{
  [a1 sosTrigger];
  sub_100007E28();
  sub_10000C244();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100255AD8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "System aperture element provider %@ doesn't conform to SBUISystemApertureElementProviding protocol", &v2, 0xCu);
}

void sub_100255B50(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Disconnect called for zombie scene %@", &v2, 0xCu);
}

void sub_100255BC8(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
}

void sub_100255C80(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PHAudioDeviceController: Error picking new route: %@", &v2, 0xCu);
}

void sub_100255D34(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 localizedName];
  v7 = [a1 supportedHandleTypes];
  v8 = 134218498;
  v9 = a2;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not create a dial request due to an invalid handle type (%zd). For call provider %@, the supported handle types are (%@).", &v8, 0x20u);
}

void sub_100255E04(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not retrieve a call provider for the specified identifier %@.", &v2, 0xCu);
}

void sub_100256064(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Geocode error: %@", &v2, 0xCu);
}

void sub_100256120(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot archive addresses, error: %@", &v2, 0xCu);
}

void sub_100256214(uint64_t a1, NSObject *a2)
{
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find sender identity for contact %{sensitive}@", &v2, 0xCu);
}

void sub_1002562F4(uint64_t a1, NSObject *a2)
{
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find sender identity for contact handle %{sensitive}@", &v2, 0xCu);
}

void sub_1002563B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not dial an emergency call, call provider manager (%@) returned an emergency call provider that is nil,.", &v2, 0xCu);
}

void sub_100256464(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Wanted to file a simulated crash report for reason: %@", &v3, 0xCu);
}

void sub_1002564E0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Simulated a crash report for reason: %@", &v3, 0xCu);
}

void sub_100256640()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002566BC(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Showing failure alert with title: %@ message: %@", buf, 0x16u);
}

void sub_10025672C()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002568D0(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 1024;
  v10 = [a2 isDisplayStyleMiniWindow];
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "updateVideoState: viewController of class (%@) missing selector for isDisplayStyleMiniWindow %d", &v7, 0x12u);
}

void sub_10025698C()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002569C8()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100256A04()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100256C64()
{
  sub_100007E1C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not decline with message because recipientHandle=%@ and response=%@", v2, 0x16u);
}

void sub_100256D50(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open user activity %@ for application %@: %@", &v5, 0x20u);
}

void sub_100256F04(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Updating avatar image in screen sharing and PiP: %@", &v3, 0xCu);
}

void sub_1002571E4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to initialize PHBottomBarSupplementalButton; unsupported action type: %ld", &v2, 0xCu);
}

void sub_1002572C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find active conversation for call: %@", &v2, 0xCu);
}

void sub_100257384(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "-- CarPlay: Could not find available route to pick for speaker enable", buf, 2u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

CNContact_optional __swiftcall ContactsService.findContact(predicate:)(NSPredicate *predicate)
{
  v1 = ContactsService.findContact(predicate:)(predicate);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

Swift::String __swiftcall SOSUIWebRTCStateName.getValue()()
{
  v0 = SOSUIWebRTCStateName.getValue()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
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

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}