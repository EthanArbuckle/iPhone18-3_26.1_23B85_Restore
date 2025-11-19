void sub_1001684DC()
{
  sub_100005D28();
  v1 = v0;
  v2 = type metadata accessor for GlassDimmingView.GradientValues();
  v3 = sub_100005568(v2);
  __chkstk_darwin(v3, v4);
  sub_100005BD0();
  if (![v0 dimmingView])
  {
    type metadata accessor for GlassDimmingView();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    static GlassDimmingView.GradientValues.bottomSmallAudio.getter();
    dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
    v8 = v7;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = sub_100006BD0();
    if (v9)
    {
      v10 = v9;
      [v9 addSubview:v8];

      sub_10014EA98(&unk_1003AAAA0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1002FB360;
      v12 = [v8 leadingAnchor];
      v13 = sub_100006BD0();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 leadingAnchor];

        v16 = [v12 constraintEqualToAnchor:v15];
        *(v11 + 32) = v16;
        v17 = [v8 topAnchor];
        v18 = sub_100006BD0();
        if (v18)
        {
          v19 = v18;
          v20 = [v18 topAnchor];

          v21 = [v17 constraintEqualToAnchor:v20];
          *(v11 + 40) = v21;
          v22 = sub_100006BD0();
          if (v22)
          {
            v23 = v22;
            v24 = [v22 trailingAnchor];

            v25 = [v8 trailingAnchor];
            v26 = [v24 constraintEqualToAnchor:v25];

            *(v11 + 48) = v26;
            v27 = sub_100006BD0();
            if (v27)
            {
              v28 = v27;
              v29 = objc_opt_self();
              v30 = [v28 bottomAnchor];

              v31 = [v8 bottomAnchor];
              v32 = [v30 constraintEqualToAnchor:v31];

              *(v11 + 56) = v32;
              sub_1000064BC(0, &qword_1003AAF70);
              sub_10000FF90();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v29 activateConstraints:isa];

              [v1 setDimmingView:v8];
              sub_100007B28();
              return;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_100007B28();
}

void sub_1001688C4()
{
  v1 = v0;
  v2 = [v0 dimmingView];
  if (v2)
  {
    v3 = v2;
    sub_10014EA98(&unk_1003AAF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002FB510;
    v5 = [objc_msgSend(v0 "buttonsViewController")];
    swift_unknownObjectRelease();
    *(inited + 32) = v5;
    v6 = 0;
    *(inited + 40) = [v0 middlePillContainer];
    v7 = &_swiftEmptyArrayStorage;
    v22[0] = &_swiftEmptyArrayStorage;
    while (v6 != 2)
    {
      v8 = *(inited + 8 * v6++ + 32);
      if (v8)
      {
        v9 = v8;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v22[0];
      }
    }

    swift_setDeallocating();
    sub_10014EA34();
    v10 = sub_10000CF28(v7);
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        v16 = objc_opt_self();
        sub_100006BE8();
        v17 = swift_allocObject();
        *(v17 + 16) = v3;
        *(v17 + 24) = v1;
        v22[4] = sub_10016D230;
        v22[5] = v17;
        sub_100006C90();
        v22[1] = 1107296256;
        sub_1000070E4();
        v22[2] = v18;
        v22[3] = &unk_10035B9C8;
        v19 = _Block_copy(v22);
        v20 = v3;
        v21 = v1;

        [v16 animateWithDuration:v19 animations:0.2];
        _Block_release(v19);

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v14 = [v1 view];
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = v14;
      [v14 insertSubview:v3 belowSubview:v13];
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

id sub_100168B98(void *a1, id a2)
{
  v3 = [a2 middleViewState];
  v4 = 0.0;
  if (v3 == 1)
  {
    v4 = 1.0;
  }

  return [a1 setAlpha:v4];
}

uint64_t sub_100168C40(void *a1)
{
  result = sub_100013DA8(a1);
  if (result)
  {
    sub_100014194(0x7469736E65537369, 0xEE0079654B657669, result, &v3);

    if (v4)
    {
      result = sub_100008D28();
      if (result)
      {
        return v2;
      }
    }

    else
    {
      sub_10000830C(&v3, &unk_1003AAF50);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100168D40(void *a1)
{
  v1 = sub_100013DA8(a1);
  if (v1)
  {
    v2 = sub_1000053A8();
    sub_100014194(v2, v3, v1, v4);

    if (v32)
    {
      if (swift_dynamicCast())
      {
        v6 = v29[0];
        v5 = v29[1];
        v7 = [objc_opt_self() defaultManager];
        v8 = String._bridgeToObjectiveC()();
        v9 = [v7 contentsAtPath:v8];

        if (v9)
        {
          v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0xF000000000000000;
        }

        if (qword_1003A9F40 != -1)
        {
          sub_10000755C();
        }

        v14 = type metadata accessor for Logger();
        sub_1000058D0(v14, &unk_1003B8820);

        v15 = sub_1000088D4();
        sub_10016D21C(v15, v16);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        v19 = sub_1000088D4();
        sub_100034FE0(v19, v20);
        if (os_log_type_enabled(v17, v18))
        {
          v21 = swift_slowAlloc();
          v29[0] = swift_slowAlloc();
          *v21 = 136315394;
          v30 = v6;
          v31 = v5;
          v22 = String.init<A>(reflecting:)();
          v24 = v23;
          sub_100008ADC(v22, v23, v29);
          sub_10016D3EC();

          *(v21 + 4) = v6;
          *(v21 + 12) = 2080;
          if (v12 >> 60 == 15)
          {
            v25 = sub_100007B58();
          }

          else
          {
            v30 = v10;
            v31 = v12;
            v26 = sub_1000088D4();
            sub_10016D1C4(v26, v27);
            v25 = String.init<A>(reflecting:)();
            v24 = v28;
          }

          sub_100008ADC(v25, v24, v29);
          sub_10016D3EC();

          *(v21 + 14) = v6;
          _os_log_impl(&_mh_execute_header, v17, v18, "SNAP: Reading from cached last file path %s returned data: %s", v21, 0x16u);
          swift_arrayDestroy();
          sub_100005BB8();
          sub_100005BB8();
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000830C(&v30, &unk_1003AAF50);
    }
  }

  return sub_1000088D4();
}

void *sub_1001690A0(void *a1)
{
  result = sub_100013DA8(a1);
  if (result)
  {
    sub_100014194(0xD000000000000016, 0x80000001002A6630, result, &v2);

    if (v3)
    {
      sub_10014EA98(&qword_1003AAF30);
      if (sub_100008D28())
      {
        sub_1000064BC(0, &unk_1003AFB30);
        return sub_10022A504();
      }
    }

    else
    {
      sub_10000830C(&v2, &unk_1003AAF50);
    }

    return 0;
  }

  return result;
}

void sub_1001691DC()
{
  sub_100005D28();
  v102 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v107 = v1;
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  v105 = v5 - v4;
  sub_100008A4C();
  v106 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v104 = v6;
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v103 = v10 - v9;
  sub_100008A4C();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000688C();
  v100 = v12;
  v101 = v11;
  __chkstk_darwin(v11, v13);
  sub_100005BD0();
  v99 = v15 - v14;
  v16 = sub_10014EA98(&qword_1003AAF20);
  v17 = sub_100005568(v16);
  __chkstk_darwin(v17, v18);
  v96 = &v89[-v19];
  sub_100008A4C();
  v20 = type metadata accessor for URL.DirectoryHint();
  sub_10000688C();
  v22 = v21;
  __chkstk_darwin(v23, v24);
  sub_100005BD0();
  v27 = v26 - v25;
  v28 = type metadata accessor for URL();
  sub_10000688C();
  v98 = v29;
  v31 = *(v30 + 64);
  v34 = __chkstk_darwin(v32, v33);
  v97 = &v89[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __chkstk_darwin(v34, v35);
  v38 = &v89[-v37];
  v40 = __chkstk_darwin(v36, v39);
  v42 = &v89[-v41];
  __chkstk_darwin(v40, v43);
  v45 = &v89[-v44];
  v46 = [v0 features];
  v47 = [v46 isNameAndPhotoC3Enabled];

  if (v47)
  {
    v94 = [objc_opt_self() defaultManager];
    v48 = [v94 temporaryDirectory];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = 0xD000000000000014;
    v110 = 0x80000001002A6590;
    (*(v22 + 104))(v27, enum case for URL.DirectoryHint.inferFromPath(_:), v20);
    sub_100028A30();
    v95 = v45;
    URL.appending<A>(component:directoryHint:)();
    (*(v22 + 8))(v27, v20);
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v49 = type metadata accessor for Logger();
    sub_1000058D0(v49, &unk_1003B8820);
    v50 = v98;
    v51 = *(v98 + 16);
    v52 = sub_10016D3E0();
    v53 = v28;
    v51(v52);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v54, v55);
    v93 = v51;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v92 = v42;
      v58 = v57;
      v91 = swift_slowAlloc();
      v109 = v91;
      *v58 = 136315138;
      v90 = v55;
      v59 = v96;
      (v51)(v96, v38, v53);
      sub_100006848(v59, 0, 1, v53);
      v60 = sub_100173DC8();
      v62 = v61;
      sub_10000830C(v59, &qword_1003AAF20);
      v63 = sub_100005BEC();
      v64(v63);
      v65 = sub_100008ADC(v60, v62, &v109);
      v66 = v50;
      v67 = v65;

      *(v58 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v54, v90, "SNAP: deleteAllUnarchivedPosterDirectories path: %s", v58, 0xCu);
      sub_100005B2C(v91);
      sub_10000558C();
      v42 = v92;
      sub_100005BB8();
    }

    else
    {

      v68 = sub_100005BEC();
      v69(v68);
      v66 = v50;
    }

    v70 = v53;
    sub_1000064BC(0, &qword_1003AAAB0);
    v72 = v99;
    v71 = v100;
    v73 = v101;
    (*(v100 + 104))(v99, enum case for DispatchQoS.QoSClass.background(_:), v101);
    v74 = static OS_dispatch_queue.global(qos:)();
    (*(v71 + 8))(v72, v73);
    v75 = v97;
    v76 = sub_10016D3E0();
    v93(v76);
    v77 = (*(v66 + 80) + 24) & ~*(v66 + 80);
    v78 = swift_allocObject();
    v79 = v94;
    *(v78 + 16) = v94;
    (*(v66 + 32))(v78 + v77, v75, v70);
    v113 = sub_100034FF4;
    v114 = v78;
    sub_10000A3B4();
    v110 = 1107296256;
    sub_1000070E4();
    v111 = v80;
    v112 = &unk_10035B928;
    v81 = _Block_copy(&v109);
    v82 = v79;
    v83 = v103;
    static DispatchQoS.unspecified.getter();
    v108 = &_swiftEmptyArrayStorage;
    sub_100025A38();
    sub_10002D8E4(v84, v85);
    sub_10014EA98(&unk_1003AAAC0);
    sub_100032638();
    v86 = v105;
    v87 = v102;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v81);

    (*(v107 + 8))(v86, v87);
    (*(v104 + 8))(v83, v106);
    v88 = v96;
    (v96)(v42, v70);
    v88(v95, v70);
  }

  sub_100007B28();
}

void sub_1001699AC(void *a1)
{
  v2 = URL.path.getter();
  if (sub_100231D40(v2, v3, a1))
  {
    URL._bridgeToObjectiveC()(v4);
    v6 = v5;
    v23 = 0;
    v7 = [a1 removeItemAtURL:v5 error:&v23];

    v8 = v23;
    if (v7)
    {

      v9 = v8;
    }

    else
    {
      v13 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9F40 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008A14(v14, &unk_1003B8820);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136315138;
        swift_errorRetain();
        sub_10014EA98(&qword_1003AAC00);
        v19 = String.init<A>(reflecting:)();
        v21 = sub_100008ADC(v19, v20, &v23);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "SNAP: Failed to remove PosterConfigurations directory with error: %s", v17, 0xCu);
        sub_100005B2C(v18);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008A14(v10, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "SNAP: Cant find PosterConfigurations directory", v12, 2u);
    }
  }
}

void sub_100169D94()
{
  v1 = v0;
  v2 = [v0 callCenter];
  v3 = [v2 currentCallGroups];

  sub_1000064BC(0, &qword_1003AAF18);
  sub_100006628();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10000CF28(v4);
  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    v9 = [v7 status];

    v6 = (v6 + 1);
    if (v9 == 1)
    {

      v10 = [v0 callCenter];
      v11 = [v10 currentCallGroups];

      sub_100006628();
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = sub_10000CF28(v12);
      v6 = 0;
      while (v13 != v6)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v14 = *(v12 + 8 * v6 + 32);
        }

        v15 = v14;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_56;
        }

        v16 = [v14 status];

        v6 = (v6 + 1);
        if (v16 == 4)
        {
          break;
        }
      }

      v1 = v0;
      break;
    }
  }

  v17 = [v1 callCenter];
  v18 = [v17 currentCallGroups];

  sub_100006628();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_10000CF28(v19);
  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (v20 == v21)
    {

      v27 = [v0 callCenter];
      v19 = [v27 callWithStatus:2];

      v28 = [v0 callCenter];
      v29 = [v28 callWithStatus:1];

      v30 = [v0 callCenter];
      v31 = [v30 callWithStatus:3];

      if (v29)
      {
        v20 = v29;
        if (v19)
        {
          if (v31)
          {
LABEL_38:

            goto LABEL_46;
          }

LABEL_41:
          v21 = v29;
          v32 = [v0 callCenter];
          v33 = [v32 canGroupCall:v20 withCall:v19];

          if ((v33 & 1) == 0)
          {

            return;
          }

          if (([v20 isRTT] & 1) == 0)
          {
            v6 = &selRef_isEqualToCall_;
            if (([v20 isTTY] & 1) == 0 && (objc_msgSend(v19, "isRTT") & 1) == 0)
            {
              goto LABEL_53;
            }
          }

LABEL_46:
          return;
        }
      }

      else if (v19)
      {
        v20 = v19;
        if (v31)
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      return;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      sub_100006628();
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v6 = v23;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (sub_100006CB0() == 1 || sub_100006CB0() == 2 || sub_100006CB0() == 3)
    {

      v24 = 1;
    }

    else
    {
      v26 = sub_100006CB0();

      v24 = v26 == 4;
    }

    ++v21;
    v25 = __OFADD__(v22, v24);
    v22 += v24;
    if (v25)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  [v19 v6[164]];
}

id iPadAudioCallViewController.nameAndPhotoUtilitiesDidUpdatePersonalNickname(oldValue:newValue:)(id result, uint64_t a2)
{
  if (!result)
  {
    if (a2)
    {
      return [v2 updateShareNameAndPhotoHUDPresentationIfNeeded];
    }
  }

  return result;
}

void PHAudioCallViewController.nameAndPhotoUtilitiesNameAndPhotoAvailable(forDestinations:withBannerType:)()
{
  sub_100005D28();
  v3 = v2;
  v5 = v4;
  v6 = sub_10014EA98(&unk_1003AAE40);
  v7 = sub_100005568(v6);
  __chkstk_darwin(v7, v8);
  v10 = v35 - v9;
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

    if (sub_10000CF28(v18))
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
      v35[1] = v13;

      v36 = v5;

      sub_10016C6FC(&v36);
      v23 = v36;
      v24 = [v22 remoteParticipantHandles];
      sub_1000064BC(0, &qword_1003AAE50);
      sub_1000085A8();
      sub_10003012C(v25, &qword_1003AAE50);
      v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001665D4(v26);
      v28 = v27;

      v36 = v28;

      sub_10016C6FC(&v36);

      LOBYTE(v28) = sub_10016A5D8(v23, v36);

      if (v28)
      {
        sub_100164D18();

        v29 = sub_100006628();
        v30(v29);
      }

      else
      {
        v33 = sub_100006628();
        v34(v33);
      }
    }

    else
    {
      v31 = sub_100006628();
      v32(v31);
    }
  }

  sub_100007B28();
}

uint64_t sub_10016A5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10016A664()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ClarityUIContact();
  sub_10000688C();
  v6 = v5;
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v27 - v13;
  v15 = *(v3 + 16);
  if (v15 == *(v1 + 16) && v15 && v3 != v1)
  {
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = v3 + v16;
    v18 = v1 + v16;
    v20 = *(v6 + 16);
    v19 = v6 + 16;
    v21 = (v19 - 8);
    v27 = *(v19 + 56);
    v28 = v20;
    while (1)
    {
      v22 = v28;
      v28(v14, v17, v4);
      if (!v15)
      {
        break;
      }

      v23 = v19;
      v22(v11, v18, v4);
      sub_10002D8E4(&qword_1003AAEE8, &type metadata accessor for ClarityUIContact);
      sub_1000361C8();
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *v21;
      (*v21)(v11, v4);
      v25(v14, v4);
      if (v24)
      {
        v18 += v27;
        v17 += v27;
        v26 = v15-- == 1;
        v19 = v23;
        if (!v26)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_100007B28();
  }
}

void sub_10016A860(void *a1)
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
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v34 = v16;
        *v15 = 136315138;
        v17 = sub_1000064BC(0, &qword_1003AAE50);
        v18 = v13;
        v19 = String.init<A>(reflecting:)();
        sub_100008ADC(v19, v20, &v34);
        sub_10016D3EC();

        *(v15 + 4) = v17;
        sub_1000083DC();
        _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
        sub_100005B2C(v16);
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000087EC();
      sub_100245A04(v4, v5, v6, oslog);
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

  v26 = objc_allocWithZone(TUPhoneNumber);
  sub_1000087EC();
  v30 = sub_1002457CC(v27, v28, v29, v11);
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() sharedPrivacyManager];
    if (v32)
    {
      oslog = v32;
      [v32 setBlockIncomingCommunication:1 forPhoneNumber:v31];

      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }
}

id sub_10016AB8C(void *a1)
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
    v17[0] = a1;
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
      sub_10016D3F8();
      CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
      v17[3] = sub_1000064BC(0, &qword_1003ADBE0);
      sub_100006900();
      v17[4] = sub_10003012C(v14, &qword_1003ADBE0);
      v17[0] = a1;
      v15 = a1;
      dispatch thunk of CarrierVoiceSpamReportHelper.reportSpam(voiceCall:)();

      sub_100005B2C(v17);
    }
  }

  return [v3 releaseDismissalAssertion];
}

void sub_10016AE2C(void *a1)
{
  v2 = v1;
  sub_1000064BC(0, &qword_1003AFB10);
  sub_10014EA98(&qword_1003AAF10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002FAB60;
  v5 = [a1 value];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_10022A60C(0, 0, v4);
  v10 = [objc_opt_self() viewControllerForNewContact:v9];
  [v10 setDelegate:v2];
  [v10 setAllowsEditing:1];
  [v10 setAllowsActions:1];
  if (qword_1003A9F60 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000058D0(v11, &unk_1003B8880);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_100005924();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "presenting create contact view controller", v14, 2u);
    sub_100005BB8();
  }

  v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
  [v2 presentViewController:v15 animated:1 completion:0];
}

Swift::Void __swiftcall PHAudioCallViewController.contactViewController(_:didCompleteWith:)(CNContactViewController _, CNContact_optional didCompleteWith)
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
    v8[3] = &unk_10035B8B8;
    v7 = _Block_copy(v8);

    [v4 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

void sub_10016B198()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentCallCount];

  if (!v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong releaseDismissalAssertion];
    }
  }
}

uint64_t sub_10016B2DC()
{
  type metadata accessor for VoiceSpamReportTelephonyManager();
  static VoiceSpamReportTelephonyManager.shared.getter();
  type metadata accessor for CarrierVoiceSpamReportHelper();
  sub_10016D3F8();
  CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
  sub_100019D88();
  v8[3] = sub_1000064BC(v1, v2);
  sub_100006900();
  sub_100019D88();
  v8[4] = sub_10003012C(v3, v4);
  v8[0] = v0;
  v5 = v0;
  v6 = dispatch thunk of CarrierVoiceSpamReportHelper.carrierAllowsReportVoiceCall(for:)();

  sub_100005B2C(v8);
  return v6 & 1;
}

uint64_t sub_10016B410()
{
  type metadata accessor for VoiceSpamReportTelephonyManager();
  static VoiceSpamReportTelephonyManager.shared.getter();
  type metadata accessor for CarrierVoiceSpamReportHelper();
  sub_10016D3F8();
  CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
  sub_100019D88();
  v7[3] = sub_1000064BC(v1, v2);
  sub_100006900();
  sub_100019D88();
  v7[4] = sub_10003012C(v3, v4);
  v7[0] = v0;
  v5 = v0;
  dispatch thunk of CarrierVoiceSpamReportHelper.reportSpamAlertControllerCarrierName(for:)();

  sub_100005B2C(v7);
  return sub_1000088D4();
}

uint64_t TUCall.callDate.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 callDuration];
  Date.init(timeIntervalSinceNow:)();
  v3 = type metadata accessor for Date();

  return sub_100006848(a1, 0, 1, v3);
}

uint64_t TUCall.simUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 localSenderIdentityAccountUUID];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();

  return sub_100006848(a1, v5, 1, v6);
}

uint64_t TUCall.formattedRemoteParticipantHandles.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1000087EC();
  sub_1000064BC(v2, v3);
  sub_1000085A8();
  sub_1000087EC();
  sub_10003012C(v4, v5);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001668D0(v6);
  v8 = v7;

  return v8;
}

void sub_10016B6E0()
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

    v12 = [objc_msgSend(v1 "buttonsViewController")];
    swift_unknownObjectRelease();
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 updateBackgroundMaterial:3];
    }
  }

  else
  {
    __break(1u);
  }
}

id iPadAudioCallViewController.isFullScreen.getter()
{
  v1 = [v0 inCallRootViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isFullScreen];
  swift_unknownObjectRelease();
  return v2;
}

void sub_10016B920()
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
      sub_10003012C(&qword_1003AAEF0, &qword_1003AAEF8);
      sub_100006628();
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
  sub_1000058D0(v7, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    *sub_100005924() = 0;
    sub_1000083DC();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_100005BB8();
  }

LABEL_9:
}

void sub_10016BB34(unint64_t a1, void *a2, NSObject *a3, uint64_t a4, int a5)
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

  v14 = sub_10000CF28(a1);
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

Swift::Void __swiftcall PHAudioCallViewController.peoplePickerAdded(_:shouldAddOtherInvitedToRemoteMembers:)(Swift::OpaquePointer _, Swift::Bool shouldAddOtherInvitedToRemoteMembers)
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
      sub_10016BB34(_._rawValue, oslog, v7, v9, shouldAddOtherInvitedToRemoteMembers);

      [v2 dismissPeoplePicker];
      goto LABEL_9;
    }
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v11 = type metadata accessor for Logger();
  sub_1000058D0(v11, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    *sub_100005924() = 0;
    sub_1000083DC();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    sub_100005BB8();
  }

LABEL_9:
}

id sub_10016C570()
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
    sub_1000070F8(&_mh_execute_header, v6, v7, "Dismiss peoplePicker");
    sub_10000558C();
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_10016C68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&unk_1003AAE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10016C6FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100218B8C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10016C7D8(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_10016C774()
{
  result = qword_1003AAE68;
  if (!qword_1003AAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AAE68);
  }

  return result;
}

Swift::Int sub_10016C7D8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_10016C994(v7, v8, a1, v4);
      *(v6 + 2) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10016C8CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10016C8CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10016C994(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = &_swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10023F7F4();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_10023F7F4();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_10016CFC8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_10016CE9C(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_10016CE9C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100217808(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10016CFC8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10016CFC8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_10003D890(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_10003D890(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_10016D16C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10016D1C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10016D21C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10016D1C4(a1, a2);
  }

  return a1;
}

uint64_t sub_10016D268()
{

  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_10016D30C()
{
  v1 = *(type metadata accessor for ConversationControlsType() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100166E24(v0 + v2, v3);
}

uint64_t sub_10016D3F8()
{

  return swift_allocObject();
}

double sub_10016D410@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10017000C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_100005A60(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10016D474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10001411C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  return v7;
}

void *sub_10016D4C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100170144(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

__n128 sub_10016D510@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  v4 = static Edge.Set.all.getter();
  *a1 = v3;
  result = *(v1 + 1);
  *(a1 + 24) = *(v1 + 3);
  *(a1 + 8) = result;
  *(a1 + 40) = v4;
  return result;
}

char *sub_10016D564()
{
  v1 = objc_allocWithZone(type metadata accessor for VideoCallViewCoordinator());

  return sub_10016DBDC(v0);
}

void sub_10016D5A4()
{
  type metadata accessor for MultiwayViewController();
  sub_10023E240();
  sub_10014EA98(&qword_1003AB088);
  UIViewControllerRepresentableContext.coordinator.getter();
  v0 = *&v11[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_bannerPresentationManager];

  v1 = MultiwayViewController.__allocating_init(activeCall:bannerPresentationManager:)();
  UIViewControllerRepresentableContext.coordinator.getter();
  MultiwayViewController.delegate.setter();
  UIViewControllerRepresentableContext.coordinator.getter();
  MultiwayViewController.iOSDelegate.setter();
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];

  MultiwayViewController.supportedDeviceOrientations.setter();
  MultiwayViewController.isDisplayedInBanner.setter();
  MultiwayViewController.pipState.setter();
  v3 = v1;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  [v4 setUserInteractionEnabled:0];

  MultiwayViewController.needsTips.setter();
  v6 = [v3 view];

  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v6 layoutIfNeeded];

  MultiwayViewController.isOnScreen.setter();
  UIViewControllerRepresentableContext.coordinator.getter();
  v7 = *&v11[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_viewController];
  *&v11[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_viewController] = v3;
  v3;

  UIViewControllerRepresentableContext.coordinator.getter();
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lastValidOrientation];

    sub_10016F24C(v10);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10016D7FC(void *a1)
{
  v2 = v1;
  sub_10014EA98(&qword_1003AB088);
  UIViewControllerRepresentableContext.transaction.getter();
  v4 = Transaction.animation.getter();

  if (v4)
  {

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v7 = *(v2 + 16);
    *(v6 + 24) = *v2;
    *(v6 + 16) = a1;
    *(v6 + 40) = v7;
    *(v6 + 56) = *(v2 + 32);
    aBlock[4] = sub_1001703F8;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = &unk_10035BCF0;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    sub_100170404(v2, v10);

    [v5 animateWithDuration:0 delay:v8 options:0 animations:0.35 completion:0.0];
    _Block_release(v8);
  }

  else
  {
    MultiwayViewController.additionalLocalParticipantInsets.setter();
  }
}

void sub_10016D974(void *a1)
{
  MultiwayViewController.additionalLocalParticipantInsets.setter();
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

char *sub_10016DA6C@<X0>(char **a1@<X8>)
{
  result = sub_10016D564();
  *a1 = result;
  return result;
}

uint64_t sub_10016DAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017043C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10016DB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017043C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10016DBB4()
{
  sub_10017043C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

char *sub_10016DBDC(uint64_t a1)
{
  v3 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v22 - v5;
  *&v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_viewController] = 0;
  *&v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_orientationTask] = 0;
  *&v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice] = 0;
  v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_isAmbient] = 0;
  v7 = &v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_configuration];
  v8 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v8;
  *(v7 + 4) = *(a1 + 32);
  v9 = objc_allocWithZone(type metadata accessor for BannerPresentationManager());

  *&v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_bannerPresentationManager] = BannerPresentationManager.init(delegate:)();
  v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_hasPresentedFullScreenCallUI] = 1;
  v1[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_isPresentingFullScreenCallUI] = 1;
  v10 = type metadata accessor for VideoCallViewCoordinator();
  v22.receiver = v1;
  v22.super_class = v10;
  v11 = objc_msgSendSuper2(&v22, "init");
  v12 = *&v11[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_bannerPresentationManager];
  v13 = v11;
  v14 = v12;
  dispatch thunk of BannerPresentationManager.presentationDelegate.setter();

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v16 = result;
    [result setOrientationEventsEnabled:1];

    v17 = type metadata accessor for TaskPriority();
    sub_100006848(v6, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;

    v21 = sub_10016ECCC();
    sub_10016FF88(a1);
    *&v13[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_orientationTask] = v21;

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016DE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_10014EA98(&qword_1003B05B0);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[18] = swift_task_alloc();
  v6 = sub_10014EA98(&qword_1003AB050);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = sub_10014EA98(&qword_1003AB058);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = type metadata accessor for MainActor();
  v4[26] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v9;
  v4[28] = v8;

  return _swift_task_switch(sub_10016E098, v9, v8);
}

uint64_t sub_10016E098()
{
  v1 = v0[21];
  v13 = v0[20];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultCenter];
  v4 = NSNotificationCenter.notifications(named:object:)();

  v0[9] = v4;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10014EA98(&unk_1003AB060);
  sub_1001708B8(&qword_1003AAC18, &type metadata accessor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();
  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v13 + 8))(v1, v2);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v5 = static MainActor.shared.getter();
  v0[29] = v5;
  if (v5)
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

  v9 = sub_100007618(v8, v6);

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10016E2BC()
{
  v1 = v0[29];
  v0[32] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_1001708B8(&qword_1003AB070, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_10016E3C4;
  v3 = v0[13];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10016E3C4()
{
  v2 = *v1;
  v3 = *v1;
  sub_100006870();
  *v4 = v3;

  if (v0)
  {
    v5 = *(v2 + 240);
    v6 = *(v2 + 248);
    v7 = sub_10016E68C;
  }

  else
  {
    (*(v2 + 256))();
    v5 = *(v2 + 240);
    v6 = *(v2 + 248);
    v7 = sub_10016E4E4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10016E4E4()
{
  v2 = v0[13];
  v1 = v0[14];
  if (sub_100006AC0(v2, 1, v1) == 1)
  {

    sub_1000306A4(v2, &qword_1003B05B0);
    v3 = v0[27];
    v4 = v0[28];

    return _swift_task_switch(sub_10016EABC, v3, v4);
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[34] = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[35] = v7;
    *v7 = v0;
    v7[1] = sub_10016E6A4;
    v8 = v0[16];

    return (v10)(v0 + 11, v8);
  }
}

uint64_t sub_10016E6A4()
{
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  *v3 = *v0;

  (*(v5 + 8))(v4, v6);
  v2[36] = v1[11];
  v7 = v1[31];
  v8 = v1[30];

  return _swift_task_switch(sub_10016E858, v8, v7);
}

uint64_t sub_10016E858()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return _swift_task_switch(sub_10016E8BC, v1, v2);
}

uint64_t sub_10016E8BC()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = [*(v0 + 288) integerValue];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10016F24C(v2);
    }

    v5 = static MainActor.shared.getter();
    *(v0 + 232) = v5;
    if (v5)
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v16 = sub_100007618(v5, v6, v7);

    return _swift_task_switch(v16, v17, v18);
  }

  else
  {

    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008A14(v8, &unk_1003B8978);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Received in-call orientation event with no orientation.", v11, 2u);
    }

    v12 = sub_10000C2F4();
    v13(v12);

    sub_10000535C();

    return v14();
  }
}

uint64_t sub_10016EABC()
{

  v0 = sub_10000C2F4();
  v1(v0);

  sub_10000535C();

  return v2();
}

uint64_t sub_10016EB64(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_10016EB84, 0, 0);
}

uint64_t sub_10016EB84()
{
  v1 = Notification.userInfo.getter();
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  *(v0 + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 96) = v3;
  AnyHashable.init<A>(_:)();
  sub_10016D410(v2, (v0 + 56));

  sub_10016FFB8(v0 + 16);
  if (!*(v0 + 80))
  {
LABEL_6:
    v4 = *(v0 + 104);
    sub_1000306A4(v0 + 56, &unk_1003AAF50);
    *v4 = 0;
    goto LABEL_7;
  }

  sub_1000064BC(0, &qword_1003AB080);
  if ((swift_dynamicCast() & 1) == 0)
  {
    **(v0 + 104) = 0;
  }

LABEL_7:
  sub_10000535C();

  return v5();
}

uint64_t sub_10016ECCC()
{
  sub_100009530();
  v6 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v6 - 8, v7);
  sub_100006918(v8, v14);
  v9 = type metadata accessor for TaskPriority();
  sub_10000A3D4(v9);
  if (v5 == 1)
  {
    sub_1000306A4(v1, &qword_1003AA7B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100007118();
    (*(v10 + 8))(v1, v4);
  }

  v11 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v11)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1000306A4(v3, &qword_1003AA7B0);
    return sub_100006CC8();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();

  v12 = sub_100006CC8();

  sub_1000306A4(v3, &qword_1003AA7B0);

  return v12;
}

uint64_t sub_10016EEE8()
{
  sub_100009530();
  v6 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v6 - 8, v7);
  sub_100006918(v8, v14);
  v9 = type metadata accessor for TaskPriority();
  sub_10000A3D4(v9);
  if (v5 == 1)
  {
    sub_1000306A4(v1, &qword_1003AA7B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100007118();
    (*(v10 + 8))(v1, v4);
  }

  v11 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v11)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1000306A4(v3, &qword_1003AA7B0);
    sub_10014EA98(&qword_1003AB0A8);
    return sub_100006CC8();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();

  sub_10014EA98(&qword_1003AB0A8);
  v12 = sub_100006CC8();

  sub_1000306A4(v3, &qword_1003AA7B0);

  return v12;
}

id sub_10016F114()
{
  if (*&v0[OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_orientationTask])
  {

    sub_10014EA98(&qword_1003AAC00);
    Task.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCallViewCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10016F24C(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8978);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a1;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Ignoring non-interface device orientation: %ld", v6, 0xCu);
LABEL_12:
    }
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_viewController);
    if (v3)
    {
      oslog = v3;
      MultiwayViewController.deviceOrientation.setter();
      goto LABEL_13;
    }

    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008A14(v7, &unk_1003B8978);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Unexpectedly missing view controller for coordinator.", v9, 2u);
      goto LABEL_12;
    }
  }

LABEL_13:
}

void *sub_10016F600()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice);
  v2 = v1;
  return v1;
}

__n128 sub_10016FD64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_10016FD98()
{
  result = qword_1003AB048;
  if (!qword_1003AB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB048);
  }

  return result;
}

uint64_t sub_10016FDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10016FEA0;

  return sub_10016DE68(a1, v4, v5, v6);
}

uint64_t sub_10016FEA0()
{
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

unint64_t sub_10017000C()
{
  v0 = sub_100025A50();
  AnyHashable._rawHashValue(seed:)(v0);
  v1 = sub_100008524();

  return sub_1001702D8(v1, v2);
}

unint64_t sub_100170044()
{
  v0 = sub_100025A50();
  NSObject._rawHashValue(seed:)(v0);
  v1 = sub_100008524();

  return sub_100170490(v1, v2);
}

unint64_t sub_10017007C()
{
  sub_100026EE0();
  type metadata accessor for UUID();
  sub_1001708B8(&qword_1003AB0B0, &type metadata accessor for UUID);
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100170720(v0, v1, &type metadata accessor for UUID, &qword_1003AB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100170144(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100170568(a1, v2);
}

unint64_t sub_1001701D8()
{
  v0 = sub_100025A50();
  NSObject._rawHashValue(seed:)(v0);
  v1 = sub_100008524();

  return sub_100170660(v1, v2);
}

unint64_t sub_100170210()
{
  sub_100026EE0();
  type metadata accessor for TPTipsHelper.Entry.Kind();
  sub_1001708B8(&qword_1003AB098, &type metadata accessor for TPTipsHelper.Entry.Kind);
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100170720(v0, v1, &type metadata accessor for TPTipsHelper.Entry.Kind, &qword_1003AB0A0, &type metadata accessor for TPTipsHelper.Entry.Kind, &protocol conformance descriptor for TPTipsHelper.Entry.Kind);
}

unint64_t sub_1001702D8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10017039C(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10016FFB8(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10017043C()
{
  result = qword_1003AB090;
  if (!qword_1003AB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB090);
  }

  return result;
}

unint64_t sub_100170490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1000064BC(0, &unk_1003AB0C0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100170568(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_100170660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for MessageID(0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100170720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v20 = a5;
  v21 = a6;
  v19 = a4;
  v17 = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v17 - v11;
  v22 = v6 + 64;
  v18 = v6;
  v13 = ~(-1 << *(v6 + 32));
  for (i = a2 & v13; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v9 + 16))(v12, *(v18 + 48) + *(v9 + 72) * i, v8);
    sub_1001708B8(v19, v20);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    if (v15)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1001708B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100008524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001708FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10017093C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001709B0()
{
  result = qword_1003AB0D0;
  if (!qword_1003AB0D0)
  {
    sub_100155B7C(&qword_1003AB0D8);
    sub_10016FD98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB0D0);
  }

  return result;
}

void sub_100170A48(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_100017230(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

Swift::Void __swiftcall PHAudioCallViewController.updateCallRecordingIfNeeded(buttonContainer:pillContainer:)(UIStackView_optional buttonContainer, UIStackView_optional pillContainer)
{
  v3 = v2;
  [v2 addCallRecordingIfNeededWithButtonContainer:buttonContainer.value.super.super.super.isa pillContainer:*&buttonContainer.is_nil];
  v4 = [v2 callRecordingButtonViewController];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CallRecordingButtonViewController();
    if (swift_dynamicCastClass())
    {
      v6 = [v2 frontmostCall];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 callUUID];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12._countAndFlagsBits = v9;
        v12._object = v11;
        CallRecordingButtonViewController.update(callUUID:)(v12);

        [v7 recordingAvailability];
        CallRecordingButtonViewController.update(recordingAvailability:)();

        v5 = v7;
      }
    }
  }

  v13 = [v2 callRecordingPillViewController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 view];

    if (v15)
    {
      [v15 setHidden:{objc_msgSend(v3, "canRecord") ^ 1}];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall PHAudioCallViewController.invertColorCallRecordingButtonColor(_:)(Swift::Bool a1)
{
  v3 = [v1 callRecordingButtonViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CallRecordingButtonViewController();
    if (swift_dynamicCastClass())
    {
      CallRecordingButtonViewController.invertColor(_:)(a1);
    }
  }
}

void sub_100170E54(uint64_t a1, uint64_t a2)
{
  v5 = [v2 features];
  v6 = [v5 callRecordingEnabled];

  if (v6)
  {
    [v2 addRecordingIndicatorWithPillContainer:a2];
    v7 = &selRef_removeButtonFrom_;
    if ([v2 canRecord] && !objc_msgSend(v2, "callIsRecording"))
    {
      v7 = &selRef_addButton_;
    }

    v8 = *v7;

    [v2 v8];
  }
}

void sub_100170FC4(void *a1)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for CallRecordingViewMaterialType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CallRecordingPillViewController.DisplayStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [v1 features];
  v14 = [v13 callRecordingEnabled];

  if (v14)
  {
    v15 = [v2 callRecordingPillViewController];
    if (v15)
    {
    }

    else
    {
      if (sub_10001D2CC())
      {
        [objc_opt_self() ambientAudioRoutesButtonSize];
        *v12 = v16;
        v17 = &enum case for CallRecordingPillViewController.DisplayStyle.ambient(_:);
      }

      else
      {
        v17 = &enum case for CallRecordingPillViewController.DisplayStyle.portrait(_:);
      }

      (*(v9 + 104))(v12, *v17, v8);
      v18 = objc_allocWithZone(type metadata accessor for CallRecordingPillViewController());
      v19 = CallRecordingPillViewController.init(displayStyle:usesGlass:)();
      (*(v4 + 104))(v7, enum case for CallRecordingViewMaterialType.photo(_:), v3);
      CallRecordingPillViewController.updateBackgroundMaterial(material:)();
      (*(v4 + 8))(v7, v3);
      [v2 setCallRecordingPillViewController:v19];
    }

    v20 = [v2 callRecordingPillViewController];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 view];
      if (!v22)
      {
LABEL_23:

        return;
      }

      v23 = v22;
      if (sub_10001D2CC())
      {
        v24 = [v2 features];
        v25 = [v24 callRecordingDominoEnabled];

        if (!v25)
        {
          goto LABEL_22;
        }

        v26 = [v2 ambientAudioRoutesControlView];
        if (!v26)
        {
          goto LABEL_22;
        }

        v27 = v26;
        if (v46)
        {
          v28 = v46;
          [v28 addArrangedSubview:v23];
          [v2 addChildViewController:v21];
          [v21 didMoveToParentViewController:v2];
          [v2 updateLayoutSupplementalButtons];
        }

        v29 = objc_opt_self();
        sub_10014EA98(&unk_1003AAAA0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1002F96C0;
        v31 = [v23 centerYAnchor];
        v32 = [v27 centerYAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];

        *(v30 + 32) = v33;
        v34 = [v23 trailingAnchor];
        v35 = [v27 leadingAnchor];
        v36 = [v34 constraintEqualToAnchor:v35 constant:-12.0];
      }

      else
      {
        if ([v2 middleViewState] != 1)
        {
          goto LABEL_22;
        }

        v37 = [objc_msgSend(v2 "buttonsViewController")];
        swift_unknownObjectRelease();
        sub_10001D320(v37);

        if (v46)
        {
          v38 = v46;
          [v38 addArrangedSubview:v23];
          [v2 addChildViewController:v21];
          [v21 didMoveToParentViewController:v2];
          [v2 updateLayoutSupplementalButtons];
        }

        v39 = [v2 recordingIndicatorLayoutGuide];
        if (!v39)
        {
          goto LABEL_22;
        }

        v27 = v39;
        v29 = objc_opt_self();
        sub_10014EA98(&unk_1003AAAA0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1002F96C0;
        v40 = [v23 centerXAnchor];
        v41 = [v27 centerXAnchor];
        v42 = [v40 constraintEqualToAnchor:v41];

        *(v30 + 32) = v42;
        v34 = [v23 widthAnchor];
        v35 = [v27 widthAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];
      }

      v43 = v36;

      *(v30 + 40) = v43;
      sub_1000064BC(0, &qword_1003AAF70);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v29 activateConstraints:isa];

LABEL_22:
      goto LABEL_23;
    }
  }
}

double sub_1001716A8()
{
  v1 = [v0 isShowingPosterBadge];
  [v0 callDetailsButtonPaddingTrailing];
  if (v1)
  {
    return result * 3.0;
  }

  return result;
}

id sub_100171788(SEL *a1, SEL *a2)
{
  v5 = [v2 frontmostCall];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([v5 isVideo])
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = [v6 *v7];

  return v8;
}

void PHAudioCallViewController.updateCallRecordingViewBackgroundMaterialType(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CallRecordingViewMaterialType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 callRecordingPillViewController];
  if (v9)
  {
    v13 = v9;
    type metadata accessor for CallRecordingPillViewController();
    if (swift_dynamicCastClass())
    {
      switch(a1)
      {
        case 2:
          v10 = &enum case for CallRecordingViewMaterialType.noPhoto(_:);
          goto LABEL_12;
        case 1:
          v10 = &enum case for CallRecordingViewMaterialType.avatar(_:);
          goto LABEL_12;
        case 0:
          v10 = &enum case for CallRecordingViewMaterialType.photo(_:);
LABEL_12:
          (*(v5 + 104))(v8, *v10, v4);
          CallRecordingPillViewController.updateBackgroundMaterial(material:)();

          (*(v5 + 8))(v8, v4);
          return;
      }
    }

    v11 = v13;
  }
}

unint64_t sub_100171AA0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100171AB0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100171AA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100171AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v11 = v10 - v9;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v12, v13);
  sub_10000693C();
  v16 = v14 - v15;
  __chkstk_darwin(v17, v18);
  v20 = (&v33 - v19);
  v21 = sub_10014EA98(&qword_1003AB238);
  v22 = sub_100005568(v21);
  v24 = __chkstk_darwin(v22, v23);
  v26 = &v33 - v25;
  v27 = *(v24 + 56);
  sub_100153C6C(a1, &v33 - v25);
  sub_100153C6C(a2, &v26[v27]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100153C6C(v26, v20);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = *v20 == *&v26[v27];
      goto LABEL_6;
    }

LABEL_8:
    sub_100008360(v26, &qword_1003AB238);
    v30 = 0;
    return v30 & 1;
  }

  v28 = sub_100025A60();
  sub_100153C6C(v28, v29);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v16, v4);
    goto LABEL_8;
  }

  (*(v6 + 32))(v11, &v26[v27], v4);
  v30 = static UUID.== infix(_:_:)();
  v31 = *(v6 + 8);
  v31(v11, v4);
  v31(v16, v4);
LABEL_6:
  sub_100153CD0(v26);
  return v30 & 1;
}

uint64_t sub_100171D54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10000688C();
  v52 = v5;
  v53 = v4;
  __chkstk_darwin(v4, v6);
  sub_10000693C();
  v50 = (v7 - v8);
  __chkstk_darwin(v9, v10);
  v51 = &v49 - v11;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v12, v13);
  sub_10000693C();
  v16 = v14 - v15;
  v19 = __chkstk_darwin(v17, v18);
  v21 = &v49 - v20;
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v49 - v24;
  __chkstk_darwin(v23, v26);
  v28 = (&v49 - v27);
  v29 = sub_10014EA98(&qword_1003AB238);
  v30 = sub_100005568(v29);
  v32 = __chkstk_darwin(v30, v31);
  v34 = &v49 - v33;
  v35 = *(v32 + 56);
  sub_100153C6C(a1, &v49 - v33);
  v54 = a2;
  sub_100153C6C(a2, &v34[v35]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153C6C(v34, v25);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v51;
      v36 = v52;
      v38 = *(v52 + 32);
      v39 = v53;
      v38(v51, v25, v53);
      v40 = v50;
      v38(v50, &v34[v35], v39);
      if (static UUID.== infix(_:_:)())
      {
        v41 = *(v36 + 8);
        v41(v40, v39);
        v41(v37, v39);
LABEL_7:
        sub_100153CD0(v34);
        v44 = 0;
        return v44 & 1;
      }

      v44 = static UUID.< infix(_:_:)();
      v47 = *(v36 + 8);
      v47(v40, v39);
      v47(v37, v39);
LABEL_18:
      sub_100153CD0(v34);
      return v44 & 1;
    }

    (*(v52 + 8))(v25, v53);
  }

  else
  {
    sub_100153C6C(v34, v28);
    v42 = *v28;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v43 = *&v34[v35];
      if (v42 == v43)
      {
        goto LABEL_7;
      }

      v44 = v42 < v43;
      goto LABEL_18;
    }
  }

  sub_100153C6C(a1, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153CD0(v21);
    v45 = 1;
  }

  else
  {
    v45 = 0;
  }

  sub_100153C6C(v54, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153CD0(v16);
    v46 = 1;
  }

  else
  {
    v46 = 0;
  }

  v44 = v45 < v46;
  sub_100008360(v34, &qword_1003AB238);
  return v44 & 1;
}

void sub_10017211C()
{
  v1 = type metadata accessor for UUID();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  v8 = v7 - v6;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v9, v10);
  sub_100005BD0();
  v13 = (v12 - v11);
  sub_100153C6C(v0, v12 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_100025A60();
    v15(v14);
    Hasher._combine(_:)(1uLL);
    sub_10017314C(&qword_1003AB0B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v8, v1);
  }

  else
  {
    v16 = *v13;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v16);
  }
}

Swift::Int sub_1001722B8()
{
  Hasher.init(_seed:)();
  sub_10017211C();
  return Hasher._finalize()();
}

Swift::Int sub_1001723E0()
{
  Hasher.init(_seed:)();
  sub_10017211C();
  return Hasher._finalize()();
}

uint64_t sub_100172438()
{
  v1 = type metadata accessor for UUID();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  v8 = v7 - v6;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v9, v10);
  sub_100005BD0();
  v13 = v12 - v11;
  sub_100153C6C(v0 + OBJC_IVAR___MPMessageID_value, v12 - v11);
  sub_100025A60();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v8, v13, v1);
    UUID.uuidString.getter();
    (*(v3 + 8))(v8, v1);
  }

  else
  {
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  return sub_100025A60();
}

uint64_t sub_1001726A0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v3, v4);
  sub_100005BD0();
  v7 = v6 - v5;
  sub_100153C6C(v1 + OBJC_IVAR___MPMessageID_value, v6 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = type metadata accessor for UUID();
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v9 - 8) + 32))(a1, v7, v9);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return sub_100006848(a1, v11, 1, v10);
}

id sub_1001727A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

id sub_10017281C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___MPMessageID_value] = a1;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1001728B8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MPMessageID_value;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t sub_100172AA4()
{
  result = type metadata accessor for MessageID.Value(319);
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

uint64_t sub_100172B54(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for UUID();
  sub_10000688C();
  v36 = v4;
  __chkstk_darwin(v5, v6);
  sub_10000693C();
  v9 = (v7 - v8);
  __chkstk_darwin(v10, v11);
  v13 = &v36 - v12;
  type metadata accessor for MessageID.Value(0);
  sub_1000058E8();
  __chkstk_darwin(v14, v15);
  sub_10000693C();
  v18 = (v16 - v17);
  __chkstk_darwin(v19, v20);
  v22 = &v36 - v21;
  v23 = sub_10014EA98(&qword_1003AB238);
  v24 = sub_100005568(v23);
  v26 = __chkstk_darwin(v24, v25);
  v28 = &v36 - v27;
  v29 = OBJC_IVAR___MPMessageID_value;
  v30 = *(v26 + 56);
  sub_100153C6C(a1 + OBJC_IVAR___MPMessageID_value, &v36 - v27);
  sub_100153C6C(v37 + v29, &v28[v30]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153C6C(v28, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v36;
      v32 = *(v36 + 32);
      v32(v13, v22, v3);
      v32(v9, &v28[v30], v3);
      v33 = static UUID.< infix(_:_:)();
      v34 = *(v31 + 8);
      v34(v9, v3);
      v34(v13, v3);
    }

    else
    {
      (*(v36 + 8))(v22, v3);
      sub_100153CD0(&v28[v30]);
      v33 = 1;
    }
  }

  else
  {
    sub_100153C6C(v28, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100153CD0(&v28[v30]);
      v33 = 0;
    }

    else
    {
      v33 = *v18 < *&v28[v30];
    }
  }

  sub_100153CD0(v28);
  return v33 & 1;
}

Swift::Int sub_100172E4C()
{
  Hasher.init(_seed:)();
  sub_10017211C();
  return Hasher._finalize()();
}

uint64_t sub_100172E98(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for MessageID.Value(0);
  v4 = sub_100005568(v3);
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  v8 = v7 - v6;
  sub_10015FE80(a1, v12);
  if (!v13)
  {
    sub_100008360(v12, &unk_1003AAF50);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  sub_100153C6C(v11 + OBJC_IVAR___MPMessageID_value, v8);
  v9 = sub_100171AE4(v8, v1 + OBJC_IVAR___MPMessageID_value);

  sub_100153CD0(v8);
  return v9 & 1;
}

uint64_t sub_100173040()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001730B0()
{
  result = qword_1003AB228;
  if (!qword_1003AB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB228);
  }

  return result;
}

uint64_t sub_10017314C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001731F0()
{
  result = qword_1003AB240;
  if (!qword_1003AB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB240);
  }

  return result;
}

uint64_t sub_100173248(void *a1)
{
  type metadata accessor for ContactStoreProvider();
  static ContactStoreProvider.shared.getter();
  v2 = [a1 provider];
  v3 = [v2 assumedIdentity];

  v4 = ContactStoreProvider.contactStore(for:)();

  swift_unknownObjectRelease();
  return v4;
}

void *sub_100173354()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window);
  v2 = v1;
  return v1;
}

void sub_1001733F4(void *a1)
{
  v2 = v1;
  if (qword_1003A9FC8 != -1)
  {
    sub_100007634();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, qword_1003AB250);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100005924();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "scene willConnectTo", v7, 2u);
    sub_100005BB8();
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = *(*(v2 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_controller) + 16);
    if (v9)
    {
      v10 = v8;
      v11 = a1;
      v12 = v9;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        oslog = v11;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v44 = v16;
        *v15 = 136315138;
        v17 = [v10 activationContext];
        if (v17 && (sub_100173D58(v17), v18))
        {
          v19 = String.init<A>(reflecting:)();
          v21 = v20;
        }

        else
        {

          v21 = 0xE300000000000000;
          v19 = 7104878;
        }

        v27 = sub_100008ADC(v19, v21, &v44);

        *(v15 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v13, v14, "alert will show %s", v15, 0xCu);
        sub_100005B2C(v16);
        sub_100005BB8();
        sub_100005BB8();

        v11 = oslog;
      }

      else
      {
      }

      v28 = sub_1001ED2C8();
      v29 = v28;
      if (v30 > 1u)
      {
        v32 = v28;
      }

      else
      {
        v31 = objc_allocWithZone(type metadata accessor for RemoteAlertHostingViewController());
        v32 = sub_1001FCA38(v29);
      }

      v33 = v32;
      v34 = objc_allocWithZone(UIWindow);
      v35 = v33;
      v36 = [v34 initWithWindowScene:v10];
      [v36 setRootViewController:v35];

      [v36 makeKeyAndVisible];
      v37 = *(v2 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window);
      *(v2 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window) = v36;
      v38 = v36;

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = sub_100005924();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Window is marked as visible", v41, 2u);
        sub_100005BB8();
      }

      [v10 setAllowsMenuButtonDismissal:1];
      [v10 setAllowsAlertStacking:1];

      return;
    }

    osloga = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_100005924();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Not able to find alert handle.", v26, 2u);
      sub_100005BB8();
    }
  }

  else
  {
    osloga = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v22))
    {
      v23 = sub_100005924();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v22, "Not able to find alert scene.", v23, 2u);
      sub_100005BB8();
    }
  }
}

void sub_100173964(uint64_t a1, const char *a2)
{
  if (qword_1003A9FC8 != -1)
  {
    sub_100007634();
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, qword_1003AB250);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = sub_100005924();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
    sub_100005BB8();
  }
}

void sub_100173A90()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window);
  *(v0 + OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window) = 0;

  if (qword_1003A9FC8 != -1)
  {
    sub_100007634();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, qword_1003AB250);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = sub_100005924();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "sceneDidDisconnect", v4, 2u);
    sub_100005BB8();
  }
}

id sub_100173BCC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_controller;
  type metadata accessor for RemoteAlertController();
  *&v0[v2] = swift_initStaticObject();
  *&v0[OBJC_IVAR____TtC13InCallService27ICSRemoteAlertSceneDelegate_window] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100173CD8()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003AB250);
  sub_100008A14(v0, qword_1003AB250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100173D58(void *a1)
{
  v2 = [a1 reason];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100173DF0(uint64_t a1)
{
  sub_100009878(a1, v13, &qword_1003AB3F8);
  if (*&v13[3] == 1)
  {
    sub_100008360(v13, &qword_1003AB3F8);
    sub_100008E00();
  }

  else
  {
    sub_100014220(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0]);
    sub_100026E5C(v9, v10);
    String.init<A>(reflecting:)();
    sub_1000089D4();
    sub_100178F5C(v14);
  }

  return sub_1000089C8();
}

uint64_t sub_100173EBC(uint64_t a1)
{
  sub_100009878(a1, v13, &qword_1003AB3E8);
  if (*&v13[3] == 1)
  {
    sub_100008360(v13, &qword_1003AB3E8);
    sub_100008E00();
  }

  else
  {
    sub_100014220(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0]);
    sub_100027CBC(v9, v10);
    String.init<A>(reflecting:)();
    sub_1000089D4();
    sub_100178DF8(v14);
  }

  return sub_1000089C8();
}

uint64_t sub_100173F88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v9 = sub_10014EA98(a2);
  sub_100005568(v9);
  sub_100005BE0();
  __chkstk_darwin(v10, v11);
  v13 = &v25 - v12;
  v14 = a4(0);
  sub_1000058E8();
  __chkstk_darwin(v15, v16);
  sub_10000693C();
  v19 = v17 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v25 - v22;
  sub_100009878(a1, v13, a2);
  if (sub_100006AC0(v13, 1, v14) == 1)
  {
    sub_100008360(v13, a2);
  }

  else
  {
    sub_100178E4C(v13, v23, a5);
    sub_100178EA8(v23, v19, a5);
    String.init<A>(reflecting:)();
    sub_100178F04(v23, a5);
  }

  return sub_1000088E0();
}

uint64_t sub_100174128(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_10014EA98(a2);
  sub_100005568(v7);
  sub_100005BE0();
  __chkstk_darwin(v8, v9);
  v11 = &v25 - v10;
  v12 = a4(0);
  sub_10000688C();
  v14 = v13;
  __chkstk_darwin(v15, v16);
  sub_10000693C();
  v19 = v17 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v25 - v22;
  sub_100009878(a1, v11, a2);
  if (sub_100006AC0(v11, 1, v12) == 1)
  {
    sub_100008360(v11, a2);
  }

  else
  {
    (*(v14 + 32))(v23, v11, v12);
    (*(v14 + 16))(v19, v23, v12);
    String.init<A>(reflecting:)();
    (*(v14 + 8))(v23, v12);
  }

  return sub_1000088E0();
}

uint64_t sub_1001742F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  sub_100179254();
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1001743B4;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1);
}

uint64_t sub_1001743B4()
{
  sub_1000058A8();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_100006870();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = sub_100174544;
  }

  else
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v12;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = sub_100174520;
  }

  return _swift_task_switch(v13, v9, v11);
}

uint64_t sub_100174544()
{
  sub_100006610();
  *(v0 + 16) = *(v0 + 48);
  sub_10014EA98(&qword_1003AAC00);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_10000535C();

  return v1();
}

id ICSApplicationDelegate.bannerPresentationManager.getter()
{
  v1 = [v0 bannerPresentationManager];
  v2 = direct field offset for CNKBannerPresentationManager.value;
  swift_beginAccess();
  v3 = *&v1[v2];

  return v3;
}

uint64_t ICSApplicationDelegate.updateForegroundApp(url:using:)@<X0>(uint64_t a1@<X1>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  [v3 foregroundAppApplicationType];
  sub_1000065B4(v4, &selRef_foregroundAppBundleIdentifier);
  if (v5 && (type metadata accessor for ForegroundApp(), (v6 = ForegroundApp.__allocating_init(bundleIdentifier:type:)()) != 0))
  {
    v7 = v6;
    v8 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v9 = *(a1 + v8);
    v10 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

    if (v10)
    {
      v11 = v7;
      dispatch thunk of ConversationControlsManager.foregroundApp.setter();
    }

    else
    {
    }

    return 1;
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v12 = type metadata accessor for Logger();
    sub_1000058D0(v12, &unk_1003B8820);
    v13 = v4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_100005384();
      v17 = sub_100005D4C();
      v28[0] = v17;
      *v16 = 136315138;
      v28[3] = v13;
      sub_1000064BC(0, &qword_1003AB3C0);
      v18 = v13;
      v19 = String.init<A>(reflecting:)();
      v21 = sub_100008ADC(v19, v20, v28);

      *(v16 + 4) = v21;
      sub_10000C14C();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      sub_100005B2C(v17);
      sub_100005340();
      sub_100005368();
    }

    else
    {
    }

    return 0;
  }
}

void ICSApplicationDelegate.handleInterventionURL(_:continueWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v100 = a2;
  v4 = type metadata accessor for InterventionRequest();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_10000693C();
  v11 = (v9 - v10);
  v14 = __chkstk_darwin(v12, v13);
  v108 = &v93 - v15;
  __chkstk_darwin(v14, v16);
  v106 = &v93 - v17;
  v18 = sub_10014EA98(&qword_1003AAF20);
  sub_100005568(v18);
  sub_100005BE0();
  __chkstk_darwin(v19, v20);
  v104 = &v93 - v21;
  v22 = type metadata accessor for URL();
  sub_10000688C();
  v24 = v23;
  __chkstk_darwin(v25, v26);
  sub_10000693C();
  v98 = (v27 - v28);
  v31 = __chkstk_darwin(v29, v30);
  v107 = &v93 - v32;
  __chkstk_darwin(v31, v33);
  v35 = &v93 - v34;
  if (qword_1003A9F78 != -1)
  {
    sub_10000C314();
  }

  v103 = v11;
  v36 = type metadata accessor for Logger();
  sub_1000058D0(v36, &unk_1003B88C8);
  v37 = *(v24 + 16);
  v109 = a1;
  v37(v35, a1, v22);
  v105 = v11;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v99 = v24;
  if (v40)
  {
    v41 = sub_100005384();
    v97 = v4;
    v42 = v41;
    v94 = v41;
    v43 = sub_100005D4C();
    v96 = v6;
    v95 = v43;
    aBlock[0] = v43;
    *v42 = 136315138;
    v44 = v104;
    v37(v104, v35, v22);
    sub_100006848(v44, 0, 1, v22);
    sub_100009548();
    v48 = sub_100174128(v44, v45, v46, v47);
    v49 = v22;
    v51 = v50;
    sub_100008360(v44, &qword_1003AAF20);
    v52 = *(v24 + 8);
    v53 = sub_100006640();
    v52(v53);
    v54 = sub_100008ADC(v48, v51, aBlock);
    v22 = v49;

    v55 = v94;
    *(v94 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v38, v39, "handleInterventionURL: %s", v55, 0xCu);
    sub_100005B2C(v95);
    v6 = v96;
    sub_100005BB8();
    v4 = v97;
    sub_100005BB8();
  }

  else
  {

    v52 = *(v24 + 8);
    (v52)(v35, v22);
  }

  v56 = v109;
  v37(v107, v109, v22);
  v57 = v108;
  v58 = v22;
  InterventionRequest.init(url:)();
  v59 = v106;
  (*(v6 + 32))(v106, v57, v4);
  v60 = v103;
  (*(v6 + 16))(v103, v59, v4);
  v61 = sub_100006640();
  v63 = v62(v61);
  if (v63 == enum case for InterventionRequest.dialRequest(_:))
  {
    v64 = sub_100006640();
    v65(v64);
    sub_10000A410();
    sub_1000072C4(COERCE_DOUBLE(1107296256));
    v111 = v66;
    v112 = &unk_10035BE28;
    v67 = _Block_copy(aBlock);

    [v102 handleInterventionWithDialRequestIfNeeded:v60 continueWith:v67];
LABEL_10:
    _Block_release(v67);

    (*(v6 + 8))(v106, v4);
    goto LABEL_14;
  }

  if (v63 == enum case for InterventionRequest.joinConversationRequest(_:))
  {
    v68 = sub_100006640();
    v69(v68);
    sub_10000A410();
    sub_1000072C4(COERCE_DOUBLE(1107296256));
    v111 = v70;
    v112 = &unk_10035BE00;
    v67 = _Block_copy(aBlock);

    [v102 handleInterventionWithConversationRequestIfNeeded:v60 continueWith:v67];
    goto LABEL_10;
  }

  v108 = v52;
  v71 = v98;
  v37(v98, v56, v58);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = sub_100005384();
    v107 = v74;
    v109 = sub_100005D4C();
    aBlock[0] = v109;
    *v74 = 136315138;
    v75 = v104;
    v37(v104, v71, v58);
    sub_100006848(v75, 0, 1, v58);
    v76 = v4;
    sub_100009548();
    v78 = v77;
    v81 = v6;
    v82 = sub_100174128(v75, v77, v79, v80);
    v84 = v83;
    sub_100008360(v75, v78);
    v85 = sub_10000FF9C();
    v86(v85);
    v87 = sub_100008ADC(v82, v84, aBlock);

    v88 = v107;
    *(v107 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v72, v73, "Unknown intervention requestl. %s", v88, 0xCu);
    sub_100005B2C(v109);
    sub_100005368();
    sub_100005BB8();

    v89 = *(v81 + 8);
    v89(v106, v76);
    v89(v103, v76);
  }

  else
  {

    v90 = sub_10000FF9C();
    v91(v90);
    v92 = *(v6 + 8);
    v92(v106, v4);
    v92(v103, v4);
  }

LABEL_14:
  sub_100007B28();
}

void sub_100175294(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100175454(void *a1, void *a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if ([a1 bypassIntervention])
  {
    (a3)[2](a3, 0, a1);

    _Block_release(a3);
    return;
  }

  v50 = a1;
  v51 = v5;
  aBlock = a3;
  v6 = [a1 remoteMembers];
  sub_1000064BC(0, &qword_1003AAFC0);
  sub_1000064FC(&qword_1003AAFC8, &qword_1003AAFC0);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_10000654C(v7);
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
    v58 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v55 = sub_100006554(v7);
    v56 = v11;
    v57 = v12 & 1;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      while (!__OFADD__(v13++, 1))
      {
        v16 = v55;
        v15 = v56;
        v17 = v57;
        sub_100005150(v55, v56, v57, v7, &qword_1003AAFC0);
        v19 = v18;
        v20 = [v18 handle];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((v7 & 0xC000000000000001) != 0)
        {
          if (!v17)
          {
            goto LABEL_48;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10014EA98(&unk_1003AAFD0);
          v25 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v25(&v54, 0);
        }

        else
        {
          if (v17)
          {
            goto LABEL_49;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          v21 = 1 << *(v7 + 32);
          if (v16 >= v21)
          {
            goto LABEL_43;
          }

          v22 = v16 >> 6;
          v23 = *(v7 + 56 + 8 * (v16 >> 6));
          if (((v23 >> v16) & 1) == 0)
          {
            goto LABEL_44;
          }

          if (*(v7 + 36) != v15)
          {
            goto LABEL_45;
          }

          v24 = v23 & (-2 << (v16 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v22 << 6;
            v27 = v22 + 1;
            v28 = (v7 + 64 + 8 * v22);
            while (v27 < (v21 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100005884(v16, v15, 0);
                v21 = __clz(__rbit64(v29)) + v26;
                goto LABEL_26;
              }
            }

            sub_100005884(v16, v15, 0);
          }

LABEL_26:
          v31 = *(v7 + 36);
          v55 = v21;
          v56 = v31;
          v57 = 0;
        }

        if (v13 == v10)
        {

          sub_100005884(v55, v56, v57);
          v32 = v58;
          v9 = &_swiftEmptyArrayStorage;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  v32 = &_swiftEmptyArrayStorage;
LABEL_30:
  v33 = sub_100017230(v32);
  v35 = v50;
  v34 = v51;
  if (!v33)
  {

LABEL_41:
    sub_1001792AC(v35, v9, sub_100005F2C, v34, a2, &unk_10035BED8, &off_10035F138, &unk_1002FBD40);

    _Block_release(aBlock);
    return;
  }

  v36 = v33;
  v54 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v36 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v53 = v32 & 0xC000000000000001;
    v38 = v32;
    do
    {
      if (v53)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v32 + 8 * v37 + 32);
      }

      v40 = v39;
      sub_1000065B4(v39, &selRef_siriDisplayName);
      if (!v41)
      {
        v42 = [v40 value];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      ++v37;
      sub_10014EA98(&qword_1003AAF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002FAB60;
      v44 = [v40 value];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      *(inited + 32) = v45;
      *(inited + 40) = v47;
      sub_1000055F4(inited);
      v48 = objc_allocWithZone(SCAParticipant);
      sub_1000057FC();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 = v38;
    }

    while (v36 != v37);

    v9 = v54;
    v35 = v50;
    v34 = v51;
    goto LABEL_41;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  _Block_release(aBlock);
  __break(1u);
LABEL_49:
  _Block_release(aBlock);
  __break(1u);
}

uint64_t sub_100175A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v13;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a4;
  v8[29] = a5;
  sub_10014EA98(&qword_1003AA7B0);
  v8[34] = swift_task_alloc();
  v8[35] = type metadata accessor for MainActor();
  v8[36] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[37] = v10;
  v8[38] = v9;

  return _swift_task_switch(sub_100175B34, v10, v9);
}

uint64_t sub_100175B34()
{
  v1 = v0[30];
  v2 = objc_opt_self();
  sub_1000064BC(0, &unk_1003AB0C0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[39] = isa;
  v0[40] = swift_getObjectType();
  v4 = (*(v1 + 32))();
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_100175CD0;
  v5 = swift_continuation_init();
  v0[17] = sub_10014EA98(&qword_1003AB408);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100177110;
  v0[13] = &unk_10035BEF0;
  v0[14] = v5;
  [v2 analysesForInterventionOnOutgoingCallToParticipants:isa callType:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100175CD0()
{
  sub_100006610();
  sub_1000058C4();
  v1 = v0[6];
  v0[41] = v1;
  v2 = v0[38];
  v3 = v0[37];
  if (v1)
  {
    v4 = sub_100176A70;
  }

  else
  {
    v4 = sub_100175DF8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100176470()
{
  sub_1000058A8();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = sub_100176C60;
  }

  else
  {
    v7 = sub_1001765A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10017682C()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[52] = v0;

  if (v0)
  {
    v7 = v3[37];
    v8 = v3[38];
    v9 = sub_100176F38;
  }

  else
  {
    sub_100005B2C((v3 + 18));
    v7 = v3[37];
    v8 = v3[38];
    v9 = sub_100176930;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100176930()
{
  sub_100006880();
  v1 = *(v0 + 400);

  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v2) = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v2)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      swift_unknownObjectRetain();
    }

    (*(v0 + 248))(v5, v6);
  }

  else
  {
  }

  sub_10000535C();

  return v7();
}

uint64_t sub_100176A70()
{
  v17 = v0;
  v1 = v0[39];

  swift_willThrow();

  if (qword_1003A9F78 != -1)
  {
    sub_10000C314();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B88C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = sub_100005384();
    v7 = sub_100005D4C();
    v16 = v7;
    *v6 = 136315138;
    v0[24] = v5;
    swift_errorRetain();
    sub_10014EA98(&qword_1003AAC00);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100008ADC(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Not able to fetch analysis results. %s", v6, 0xCu);
    sub_100005B2C(v7);
    sub_100005340();
    sub_100005368();
  }

  v11 = v0[31];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v11(v12, v13);

  sub_10000535C();

  return v14();
}

uint64_t sub_100176F38()
{
  v13 = v0;

  sub_100005B2C((v0 + 18));
  if (qword_1003A9F80 != -1)
  {
    swift_once();
  }

  sub_1000058D0(v0[49], &unk_1003B88E0);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[52];
  if (v3)
  {
    v5 = sub_100005384();
    v6 = sub_100005D4C();
    v12 = v6;
    *v5 = 136315138;
    v0[27] = v4;
    swift_errorRetain();
    sub_10014EA98(&qword_1003AAC00);
    v7 = String.init<A>(reflecting:)();
    v9 = sub_100008ADC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Show remote alert error %s", v5, 0xCu);
    sub_100005B2C(v6);
    sub_100005BB8();
    sub_100005BB8();
  }

  else
  {
  }

  sub_10000535C();

  return v10();
}

uint64_t sub_100177110(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100008878((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1000088BC(v4, v5);
  }

  else
  {
    sub_1000064BC(0, &unk_1003AB0C0);
    sub_1000064BC(0, &qword_1003AB410);
    sub_1000064FC(&qword_1003AB418, &unk_1003AB0C0);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_1002520B4(v4, v7);
  }
}

uint64_t sub_100177208(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 < 0)
  {
    return __CocoaDictionary.count.getter(a1);
  }

  return __CocoaDictionary.count.getter(a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100177228()
{
  sub_10014EA98(&qword_1003B05B0);
  v0[3] = swift_task_alloc();
  v1 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9] = v3;
  v0[10] = v2;

  return _swift_task_switch(sub_100177354, v3, v2);
}

uint64_t sub_100177354()
{
  sub_100006880();
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = static MainActor.shared.getter();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100177478;
  v4 = v0[3];

  return (sub_1001742F0)(v4, v2, &protocol witness table for MainActor, v0 + 2);
}

uint64_t sub_100177478()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[13] = v0;

  if (!v0)
  {

    v8 = v3[9];
    v9 = v3[10];

    return _swift_task_switch(sub_100177578, v8, v9);
  }

  return result;
}

uint64_t sub_100177578()
{
  sub_100006880();
  v1 = *(v0 + 24);

  v2 = sub_1000089C8();
  v3(v2);
  v4 = type metadata accessor for Notification();
  if (sub_100006AC0(v1, 1, v4) != 1)
  {
    sub_100008360(*(v0 + 24), &qword_1003B05B0);
  }

  static Task<>.checkCancellation()();

  sub_10000535C();

  return v5();
}

uint64_t sub_100177660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100177754, v7, v6);
}

uint64_t sub_100177754()
{
  sub_100006610();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10017781C;

  return sub_1000251F4();
}

uint64_t sub_10017781C()
{
  sub_100006880();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  *v4 = *v1;
  *(v3 + 80) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[8];
  v9 = v2[7];
  if (v0)
  {
    v10 = sub_100177A4C;
  }

  else
  {
    v10 = sub_1001779A8;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1001779A8()
{
  sub_100006610();

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_10014EA98(&qword_1003AAC00);
    Task.cancel()();
  }

  sub_10000535C();

  return v0();
}

uint64_t sub_100177A4C()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

Swift::Void __swiftcall ICSApplicationDelegate.dismissAnsweredCallBannerIfNeeded()()
{
  v1 = [v0 features];
  v2 = [v1 isIncomingCallBannerEnabled];

  if (!v2 || (v3 = [v0 features], v4 = objc_msgSend(v3, "isSystemApertureEnabled"), v3, (v4 & 1) != 0))
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v5 = type metadata accessor for Logger();
    sub_1000058D0(v5, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = sub_100005924();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "dismissAnsweredCallBannerIfNeeded: not needed", v7, 2u);
      sub_100005BB8();
    }

LABEL_20:
    v15 = oslog;
    goto LABEL_21;
  }

  oslog = ICSApplicationDelegate.bannerPresentationManager.getter();
  v8 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();
  if (!v8)
  {
LABEL_15:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v16 = type metadata accessor for Logger();
    sub_1000058D0(v16, &unk_1003B8820);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (sub_100007DC4(v18))
    {
      v19 = sub_100005924();
      sub_100005DF4(v19);
      sub_10000C14C();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      sub_100005368();
    }

    v25 = String._bridgeToObjectiveC()();
    [oslog dismissPresentedBannerForReason:v25 animated:1];

    goto LABEL_20;
  }

  v9 = v8;
  if ((dispatch thunk of ConversationControlsManager.hasMultipleCalls.getter() & 1) == 0)
  {

    goto LABEL_15;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v10 = type metadata accessor for Logger();
  sub_1000058D0(v10, &unk_1003B8820);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (sub_100005908(v12))
  {
    *sub_100005924() = 0;
    sub_1000070F8(&_mh_execute_header, v13, v14, "dismissAnsweredCallBannerIfNeeded: hasMultipleCalls, no dismissal needed");
    sub_100005BB8();
  }

  v15 = v9;
LABEL_21:
}

uint64_t sub_100177D90(uint64_t a1)
{
  type metadata accessor for LiveVoicemailCarrierSettings();
  swift_allocObject();
  sub_1001542E4();
  type metadata accessor for AnsweringMachineSyncComposer();
  swift_allocObject();
  AnsweringMachineSyncComposer.init()();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100006BE8();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  swift_unknownObjectRetain();

  v4 = dispatch thunk of AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:)();

  return v4;
}

uint64_t sub_100177EB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 provider];
  v5 = [v4 isFaceTimeProvider];

  if (v5)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008A14(v6, &unk_1003B8820);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v39[0] = v11;
      *v10 = 136446210;
      v12 = [v7 callUUID];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100008ADC(v13, v15, v39);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "callScreening wait time for call: %{public}s needs to wait for default time before call screening.", v10, 0xCu);
      sub_100005B2C(v11);
    }

    v17 = &enum case for TimeToWaitForCall.faceTime(_:);
  }

  else
  {
    sub_10015437C(a1);
    v19 = v18;
    v21 = v20;
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008A14(v22, &unk_1003B8820);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136446466;
      v27 = [v23 callUUID];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_100008ADC(v28, v30, v39);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2082;
      v32 = Duration.description.getter();
      v34 = sub_100008ADC(v32, v33, v39);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "callScreening wait time for call: %{public}s is %{public}s from carrier", v26, 0x16u);
      swift_arrayDestroy();
    }

    *a2 = v19;
    a2[1] = v21;
    v17 = &enum case for TimeToWaitForCall.duration(_:);
  }

  v35 = *v17;
  v36 = type metadata accessor for TimeToWaitForCall();
  v37 = *(*(v36 - 8) + 104);

  return v37(a2, v35, v36);
}

void sub_1001784A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CallScreeningService();
  sub_10000688C();
  v60 = v3;
  __chkstk_darwin(v4, v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CallScreeningStatus();
  sub_10000688C();
  v61 = v9;
  __chkstk_darwin(v10, v11);
  sub_10000693C();
  v14 = v12 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v57 - v17;
  v19 = [objc_msgSend(v0 "featureFlags")];
  swift_unknownObjectRelease();
  if (!v19 || (sub_100019BAC(0) & 1) == 0)
  {
    goto LABEL_35;
  }

  v57 = v8;
  v20 = objc_opt_self();
  v21 = [v20 sharedInstance];
  [v21 fetchCurrentCalls];

  v22 = [v20 sharedInstance];
  v23 = String._bridgeToObjectiveC()();
  v58 = [v22 callWithCallUUID:v23];

  if (!v58)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v29 = type metadata accessor for Logger();
    sub_1000058D0(v29, &unk_1003B8820);
    v61 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v30))
    {
      v31 = sub_100005924();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v61, v30, "Not able to request screening scene. No Screening Calls.", v31, 2u);
      sub_100005BB8();
    }

    goto LABEL_20;
  }

  if ([v58 receptionistState])
  {
    v24 = [v1 sceneManager];
    v25 = [v24 callScene];

    if (v25)
    {

      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v26 = type metadata accessor for Logger();
      sub_1000058D0(v26, &unk_1003B8820);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (!sub_100007DC4(v28))
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if ([v58 resolvedCallStatus] == 4 && (objc_msgSend(objc_opt_self(), "isSpringBoardPasscodeLocked") & 1) != 0)
    {
      v42 = 2;
    }

    else
    {
      v42 = 0;
    }

    v43 = v57;
    v44 = v61;
    v45 = [swift_getObjCClassFromMetadata() configurationForCall:v58 preferredPresentationMode:v42];
    CallScreeningService.init()();
    TUCall.basicCall.getter();
    CallScreeningService.screeningStatusForCall(_:)();
    sub_100005B2C(v62);
    (*(v60 + 8))(v7, v2);
    isa = v44[13].isa;
    isa(v14, enum case for CallScreeningStatus.screening(_:), v43);
    v47 = static CallScreeningStatus.== infix(_:_:)();
    v48 = v44[1].isa;
    v48(v14, v43);
    if (v47 & 1) != 0 || (isa(v14, enum case for CallScreeningStatus.liveVoicemail(_:), v43), v49 = static CallScreeningStatus.== infix(_:_:)(), v48(v14, v43), (v49))
    {
      [v45 setRequiresDismissedPresentationmode:1];
    }

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v50 = type metadata accessor for Logger();
    sub_1000058D0(v50, &unk_1003B8820);
    v51 = v45;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = sub_100005384();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&_mh_execute_header, v52, v53, "config %@", v54, 0xCu);
      sub_100008360(v55, &qword_1003B0230);
      sub_100005BB8();
      sub_100005BB8();
    }

    [v1 performPresentationWithConfiguration:v51 forSceneType:0];
    v48(v18, v43);
LABEL_35:
    sub_100007B28();
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v32 = type metadata accessor for Logger();
  sub_1000058D0(v32, &unk_1003B8820);
  v27 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (!sub_100007DC4(v33))
  {
    goto LABEL_19;
  }

LABEL_18:
  v34 = sub_100005924();
  sub_100005DF4(v34);
  sub_10000C14C();
  _os_log_impl(v35, v36, v37, v38, v39, 2u);
  sub_100005368();
LABEL_19:

LABEL_20:
  sub_100007B28();
}

uint64_t sub_100178B98()
{
  v0 = [objc_allocWithZone(type metadata accessor for WaitOnHoldServiceComposer()) init];
  v1 = WaitOnHoldServiceComposer.compose()();

  return v1;
}

void sub_100178C24(void *a1, void (**a2)(void))
{
  v3 = [a1 currentInCallScene];
  if (v3)
  {
    v4 = v3;
    [v3 requestTransitionToPresentationMode:2 isUserInitiated:0 analyticsSource:0];
  }

  a2[2](a2);

  _Block_release(a2);
}

char *sub_100178D04(char *result, int64_t a2, char a3, char *a4)
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
    sub_10014EA98(&qword_1003AB428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100178E4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000058E8();
  v4 = sub_1000085C0();
  v5(v4);
  return a2;
}

uint64_t sub_100178EA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000058E8();
  v4 = sub_1000085C0();
  v5(v4);
  return a2;
}

uint64_t sub_100178F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000058E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100178FB0(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return _HashTable.occupiedBucket(after:)();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10017904C()
{
  sub_100179524();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000301D4(v1);

  return sub_100175A50(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100179124()
{
  sub_1000058A8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100009D10(v1);

  return sub_100177228();
}

uint64_t sub_1001791B8()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_100005B88(v3);
  *v4 = v5;
  v6 = sub_100009D10(v4);

  return sub_100177660(v6, v7, v1, v2);
}

unint64_t sub_100179254()
{
  result = qword_1003AB070;
  if (!qword_1003AB070)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB070);
  }

  return result;
}

void sub_1001792AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[1] = a8;
  v14 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v14);
  sub_100005BE0();
  __chkstk_darwin(v15, v16);
  v18 = v24 - v17;
  [a5 acquirePreventSuspensionAssertion];
  v19 = type metadata accessor for TaskPriority();
  sub_100006848(v18, 1, 1, v19);
  type metadata accessor for MainActor();

  v20 = a1;

  v21 = a5;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = a2;
  v23[5] = v20;
  v23[6] = a7;
  v23[7] = a3;
  v23[8] = a4;
  v23[9] = v21;
  sub_1001621BC();

  sub_100007B28();
}

uint64_t sub_1001793F4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10017944C()
{
  sub_100179524();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000301D4(v1);

  return sub_100175A50(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100179504(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10017953C()
{

  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_100179574()
{

  return swift_dynamicCast();
}

uint64_t sub_100179634()
{
  v0 = sub_1000085C0();
  sub_10017A4B4(v0);
  return sub_1000085C0();
}

uint64_t sub_100179714(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction);
  v4 = *(v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000081F4(v4);
}

id sub_100179734(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___ICSFallbackToTelephonyAlert_disconnectedCall] = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 tu_contactStoreConfigurationForCall:v5];
  v7 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v6];
  v8 = [v5 handle];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = String._bridgeToObjectiveC()();

  sub_10014EA98(&unk_1003AAAA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002FBD90;
  *(v12 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  sub_10014EA98(&qword_1003AAF80);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v7 contactForDestinationId:v11 keysToFetch:isa];

  if (v14)
  {
    v15 = sub_10017A444(v14);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      if (String.count.getter() > 0)
      {
LABEL_17:
        v30 = &v1[OBJC_IVAR___ICSFallbackToTelephonyAlert_name];
        *v30 = v17;
        v30[1] = v18;
        v34.receiver = v1;
        v34.super_class = ObjectType;
        v31 = objc_msgSendSuper2(&v34, "init", v32);

        return v31;
      }
    }
  }

  v19 = [v5 handle];
  if (!v19)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 type];
  result = [v20 value];
  v23 = result;
  if (v21 != 2)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v29;
LABEL_16:

    goto LABEL_17;
  }

  if (result)
  {
    v24 = PNCopyBestGuessCountryCodeForNumber();

    result = [v20 value];
    if (result)
    {
      v25 = result;
      v32 = v24;
      v23 = CFPhoneNumberCreate();

      String = CFPhoneNumberCreateString();
      if (!String)
      {
        String = [v20 value];
      }

      v27 = String;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v28;

      v20 = v27;
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100179B6C()
{
  sub_1001FD1F8(0xD000000000000014, 0x80000001002A6CF0);
  sub_10014EA98(&qword_1003AB478);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002FAB60;
  v3 = *(v0 + OBJC_IVAR___ICSFallbackToTelephonyAlert_name);
  v2 = *(v0 + OBJC_IVAR___ICSFallbackToTelephonyAlert_name + 8);
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10002BBB4();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  String.init(format:_:)();

  return sub_1000085C0();
}

id sub_100179C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  sub_100179CE0(a3, a4);
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100179CE0(uint64_t a1, uint64_t a2)
{
  sub_1001FD1F8(a1, a2);
  sub_10014EA98(&qword_1003AB478);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002FAB60;
  v5 = *(v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_name);
  v4 = *(v2 + OBJC_IVAR___ICSFallbackToTelephonyAlert_name + 8);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10002BBB4();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  String.init(format:_:)();

  return sub_1000085C0();
}

void sub_100179E28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  byte_1003AB430 = 0;
  v6 = [objc_allocWithZone(TUCallProviderManager) init];
  v7 = [v6 telephonyProvider];
  v8 = [objc_allocWithZone(TUDialRequest) initWithProvider:v7];

  v9 = *(v0 + OBJC_IVAR___ICSFallbackToTelephonyAlert_disconnectedCall);
  v10 = [v9 handle];
  [v8 setHandle:v10];

  [v8 setPreferDefaultApp:0];
  isa = [v9 localSenderIdentityUUID];
  if (isa)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v5, v1);
  }

  [v8 setLocalSenderIdentityAccountUUID:isa];

  [v8 setOriginatingUIType:51];
  [v8 setTtyType:1];
  v12 = [objc_opt_self() sharedInstance];
  [v12 launchAppForDialRequest:v8 completion:0];
}

void sub_10017A0AC()
{
  byte_1003AB430 = 0;
  v1 = *(v0 + OBJC_IVAR___ICSFallbackToTelephonyAlert_cancelAction);
  if (v1)
  {

    v1(v2);
    v3 = sub_1000085C0();

    sub_1000081F4(v3);
  }
}

void sub_10017A160()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (byte_1003AB430)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v3 = type metadata accessor for Logger();
    sub_100008A14(v3, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "FallbackToTelephonyAlert is already presented.", v5, 2u);
    }
  }

  else
  {
    v6 = ObjectType;
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v7 = type metadata accessor for Logger();
    sub_100008A14(v7, &unk_1003B8820);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Presenting FallbackToTelephonyAlert.", v10, 2u);
    }

    byte_1003AB430 = 1;
    v12.receiver = v1;
    v12.super_class = v6;
    objc_msgSendSuper2(&v12, "show");
  }
}

uint64_t sub_10017A444(void *a1)
{
  v2 = [a1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10017A4B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10017A55C()
{
  sub_1000064BC(0, &qword_1003AB4C0);
  v1 = NSString.init(stringLiteral:)();
  sub_10014EA98(&qword_1003AB478);
  v2 = swift_allocObject();
  v3 = *&v0[OBJC_IVAR____TtC13InCallService15PHCountingLayer_value];
  *(v2 + 16) = xmmword_1002FAB60;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v3;
  v4 = NSString.init(format:_:)();

  [v0 setString:v4];
  [v0 setNeedsDisplay];
}

uint64_t sub_10017A65C()
{
  sub_10000C334();
  v1 = v1 && v0 == 0xE500000000000000;
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  v11 = sub_100007654(v4, "needsDisplayForKey:", v5, v6, v7, v8, v9, v10, ObjCClassFromMetadata);
  v2 = objc_msgSendSuper2(v11, v12);

  return v2;
}

id sub_10017A760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000C334();
  v7 = v7 && v6 == 0xE500000000000000;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1000064BC(0, &qword_1003AB4B8);

    v8 = sub_100205804(a1, a2);
    v9 = [v3 presentationLayer];
    if (v9)
    {
      v10 = v9;
      [v9 value];
    }

    else
    {
      [v3 value];
    }

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v8 setFromValue:isa];
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();
    v22 = type metadata accessor for PHCountingLayer();
    v19 = sub_100007654(v22, "actionForKey:", v13, v14, v15, v16, v17, v18, v3);
    v8 = objc_msgSendSuper2(v19, v20);
  }

  return v8;
}

id sub_10017A914()
{
  *&v0[OBJC_IVAR____TtC13InCallService15PHCountingLayer_value] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHCountingLayer();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10017A978(void *a1)
{
  *(v1 + OBJC_IVAR____TtC13InCallService15PHCountingLayer_value) = 0;
  sub_100008878(a1, a1[3]);
  _bridgeAnythingToObjectiveC<A>(_:)();
  v13 = type metadata accessor for PHCountingLayer();
  v9 = sub_100007654(v13, "initWithLayer:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);
  swift_unknownObjectRelease();
  sub_100005B2C(a1);
  return v11;
}

id sub_10017AA4C(void *a1)
{
  *(v1 + OBJC_IVAR____TtC13InCallService15PHCountingLayer_value) = 0;
  v13 = type metadata accessor for PHCountingLayer();
  v9 = sub_100007654(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id sub_10017AAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHCountingLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10017AB3C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10017B61C();
    sub_10017B660();
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_10017B61C(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_24:
        sub_10016D304();
        return;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_17:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_7;
    }

    v15 = [v14 keyWindow];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_10017ADA4()
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
    *sub_100005924() = 0;
    sub_100007F34();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100005BB8();
  }

  v10 = *(v1 + OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy);

  return [v10 startPictureInPicture];
}

id sub_10017AE7C()
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
    *sub_100005924() = 0;
    sub_100007F34();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100005BB8();
  }

  v10 = *(v1 + OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy);

  return [v10 stopPictureInPictureAndRestoreUserInterface:1];
}

id sub_10017AF98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnhancedEmergencyPIPCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10017B05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong transitionToRTTState:2];

      swift_unknownObjectRelease();
    }
  }
}

id sub_10017B12C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_sourceView) window];
  if (!v1)
  {
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 connectedScenes];

    sub_10017B61C();
    sub_10017B660();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10017AB3C(v4);
    v6 = v5;

    if (sub_100017230(v6))
    {
      sub_100017238(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v6 + 32);
      }

      v8 = v7;

      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v9 = type metadata accessor for Logger();
      sub_100008A14(v9, &unk_1003B8820);
      v1 = v8;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v1;
        *v13 = v1;
        v1 = v1;
        sub_100007F34();
        _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
        sub_100153D2C(v13);
        sub_100005BB8();
        sub_100005BB8();
      }
    }

    else
    {

      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v19 = type metadata accessor for Logger();
      sub_100008A14(v19, &unk_1003B8820);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        *sub_100005924() = 0;
        sub_100007F44(&_mh_execute_header, v22, v23, "EnhancedEmergency: There are no windows associated with the application, returning an empty window.");
        sub_100005BB8();
      }

      return [objc_allocWithZone(UIWindow) init];
    }
  }

  return v1;
}

double sub_10017B438()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_sourceView);
  [v1 frame];
  if (CGRectIsEmpty(v12) || (v2 = [v1 superview]) == 0)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      *sub_100005924() = 0;
      sub_100007F44(&_mh_execute_header, v8, v9, "EnhancedEmergency: The source view does not yet have a frame or superview set, returning the main screen bounds for picture-in-picture");
      sub_100005BB8();
    }

    v3 = [objc_opt_self() mainScreen];
    [(UIView *)v3 bounds];
  }

  else
  {
    v3 = v2;
    [v1 frame];
    v4 = UIAccessibilityConvertFrameToScreenCoordinates(v13, v3);
  }

  v10 = *&v4;

  return v10;
}

unint64_t sub_10017B61C()
{
  result = qword_1003AB510;
  if (!qword_1003AB510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AB510);
  }

  return result;
}

unint64_t sub_10017B660()
{
  result = qword_1003AB518;
  if (!qword_1003AB518)
  {
    sub_10017B61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB518);
  }

  return result;
}

void *sub_10017B6EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window);
  v2 = v1;
  return v1;
}

void sub_10017B78C(void *a1)
{
  v3 = sub_10014EA98(&qword_1003AB600);
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = v63 - v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = v12;
  v64 = v4;
  v14 = objc_opt_self();
  v65 = a1;
  v15 = [v14 sharedApplication];
  v16 = [v15 delegate];

  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v63[1] = v16;
      v18 = [v17 sceneManager];
      [v18 registerGenericScene:v65 ofType:3];

      v19 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v13];
      v20 = *(v1 + OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window);
      *(v1 + OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window) = v19;
      v21 = v19;

      v22 = [v14 sharedApplication];
      v23 = [v22 delegate];

      if (v23)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v24;
          if ([v24 shouldActivateSOS])
          {
            v26 = [objc_allocWithZone(PHInCallRootViewController) initWithCallDisplayStyleManager:0];
            if (!v26)
            {
LABEL_27:
              [v21 makeKeyAndVisible];

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

LABEL_28:
              sub_100007660();
              return;
            }

            v27 = v26;
            [v26 forceUpdateCallControllerForSOS];
            v28 = [objc_allocWithZone(UIViewController) init];
            v29 = [v28 view];
            if (v29)
            {
              v30 = v29;
              v31 = [objc_opt_self() blackColor];
              [v30 setBackgroundColor:v31];

              v32 = [v28 view];
              if (v32)
              {
                v33 = v32;
                v34 = v27;
                v35 = [v34 view];
                if (v35)
                {
                  v36 = v35;
                  [v33 addSubview:v35];

                  v37 = [v34 view];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = [v28 view];
                    if (v39)
                    {
                      v40 = v39;
                      [v39 bounds];
                      v42 = v41;
                      v44 = v43;
                      v46 = v45;
                      v48 = v47;

                      [v38 setFrame:{v42, v44, v46, v48}];
                      v49 = [v34 view];

                      if (v49)
                      {
                        [v49 setAutoresizingMask:18];

                        [v28 addChildViewController:v34];
                        v50 = v28;
                        [v34 didMoveToParentViewController:v50];
                        [v21 setRootViewController:v50];

LABEL_26:
                        goto LABEL_27;
                      }

                      goto LABEL_35;
                    }

LABEL_34:
                    __break(1u);
LABEL_35:
                    __break(1u);
                    return;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          else
          {
            sub_10017BEAC(v25);
            v54 = objc_allocWithZone(sub_10014EA98(&qword_1003AB608));
            v55 = v64;
            (*(v64 + 16))(v8, v11, v3);
            v56 = UIHostingController.init(rootView:)();
            (*(v55 + 8))(v11, v3);
            v50 = v56;
            v57 = [v50 view];
            if (v57)
            {
              v58 = v57;
              v59 = objc_opt_self();
              v60 = [v59 clearColor];
              [v58 setBackgroundColor:v60];

              v61 = v21;
              v62 = [v59 clearColor];
              [v61 setBackgroundColor:v62];

              [v61 setRootViewController:v50];
              goto LABEL_26;
            }

            __break(1u);
          }

          __break(1u);
          goto LABEL_31;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }

    sub_100007660();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100007660();
  }
}

uint64_t sub_10017BEAC(void *a1)
{
  v2 = [a1 activationContext];
  v3 = [v2 pendingRestrictedScreenTimeRequest];

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = a1;
  sub_1001D8FB8(v3, sub_10017C548, v4, &v8);
  v13 = v9;
  v6 = v11;
  v14 = v10;
  v15 = v12;
  sub_10017C558();
  View.clarityUIIdiom()();

  sub_1000306A4(&v13, &unk_1003ADA00);

  sub_1000306A4(&v14, &qword_1003AB5F0);

  return sub_1000306A4(&v15, &qword_1003AB5F8);
}

id sub_10017C000()
{
  *&v0[OBJC_IVAR____TtC13InCallService22ClarityUISceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10017C064()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017C13C(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1003AB550);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1, a2);
  (*(v5 + 16))(&v9 - v6, a1, v4);
  v7 = UIHostingController.init(rootView:)();
  (*(v5 + 8))(a1, v4);
  return v7;
}

void *sub_10017C2A4(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1003AB550);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1, a2);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_10017C3DC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureHostingController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10017C4B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10017C558()
{
  result = qword_1003AB5E0;
  if (!qword_1003AB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB5E0);
  }

  return result;
}

void *AudioCallIcon.iconView.getter()
{
  v1 = *(v0 + OBJC_IVAR___PHAudioCallIcon_iconView);
  v2 = v1;
  return v1;
}

void *AudioCallIcon.iconImage.getter()
{
  v1 = *(v0 + OBJC_IVAR___PHAudioCallIcon_iconImage);
  v2 = v1;
  return v1;
}

id AudioCallIcon.init(iconView:iconImage:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___PHAudioCallIcon_iconView] = a1;
  *&v2[OBJC_IVAR___PHAudioCallIcon_iconImage] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id AmbientAvatarView.contact.getter()
{
  v1 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AmbientAvatarView.contact.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_10017C998(v4);
}

void sub_10017C998(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact;
  swift_beginAccess();
  v5 = [*(v2 + v4) identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v15 = *(v2 + OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView);
      dispatch thunk of _UIHostingView.rootView.getter();

      v16 = *(v2 + v4);
      sub_10014EA98(&qword_1003AB688);
      State.wrappedValue.setter();

      sub_10017ED80(v30[2], v31);

      return;
    }
  }

  v17 = *(v2 + v4);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 isKeyAvailable:v18];

  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = [a1 isKeyAvailable:v20];

    if (v21)
    {
      v22 = [a1 wallpaper];
      v23 = v22;
      if (v22)
      {
      }

      v24 = [*(v2 + v4) wallpaper];
      if (v24)
      {

        if (v23)
        {
          return;
        }
      }

      else if (!v23)
      {
        return;
      }

      v25 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView;
      [*(v2 + OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView) removeFromSuperview];
      v26 = *(v2 + v4);
      sub_10017CC50(v30);
      v27 = objc_allocWithZone(sub_10014EA98(&qword_1003AB650));
      v28 = _UIHostingView.init(rootView:)();
      v29 = *(v2 + v25);
      *(v2 + v25) = v28;

      sub_10017CF24();
    }
  }
}

uint64_t sub_10017CC50@<X0>(uint64_t a1@<X8>)
{
  sub_1000064BC(0, &qword_1003AFB10);
  State.init(wrappedValue:)();
  result = State.init(wrappedValue:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*AmbientAvatarView.contact.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100162C14(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_10017CD74;
}

void sub_10017CD74(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    AmbientAvatarView.contact.setter(v3);
  }

  else
  {
    AmbientAvatarView.contact.setter(v3);
  }

  free(v2);
}

id AmbientAvatarView.init(contact:)(void *a1)
{
  v2 = a1;
  sub_10017CC50(v8);
  v3 = objc_allocWithZone(sub_10014EA98(&qword_1003AB650));
  *&v1[OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView] = _UIHostingView.init(rootView:)();
  *&v1[OBJC_IVAR____TtC13InCallService17AmbientAvatarView_contact] = v2;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AmbientAvatarView();
  v4 = v2;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10017CF24();

  return v5;
}

void sub_10017CF24()
{
  v2 = OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC13InCallService17AmbientAvatarView_avatarView]];
  [*&v0[v2] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10014EA98(&unk_1003AAAA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002FB360;
  v4 = [v0 leadingAnchor];
  v5 = [sub_100025A90() leadingAnchor];
  v6 = [v1 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v0 topAnchor];
  v8 = [sub_100025A90() topAnchor];
  v9 = sub_100007680(v8);

  *(v3 + 40) = v9;
  v10 = [v0 trailingAnchor];
  v11 = [sub_100025A90() trailingAnchor];
  v12 = sub_100007680(v11);

  *(v3 + 48) = v12;
  v13 = [v0 bottomAnchor];
  v14 = [sub_100025A90() bottomAnchor];
  v15 = sub_100007680(v14);

  *(v3 + 56) = v15;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 addConstraints:isa];
}

id AmbientAvatarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id AmbientAvatarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientAvatarView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017D2DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10017D328(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a2 >> 6))
  {
    if (a4 < 0x40u)
    {
      sub_1000064BC(0, &qword_1003AB7A0);
      v7 = static NSObject.== infix(_:_:)();
      v8 = a4 ^ a2 ^ 1;
      if ((v7 & 1) == 0)
      {
        v8 = 0;
      }

      return v8 & 1;
    }

    goto LABEL_20;
  }

  if (a2 >> 6 == 1)
  {
    if ((a4 & 0xC0) == 0x40)
    {
      sub_1000064BC(0, &qword_1003AB7A0);
      return static NSObject.== infix(_:_:)() & 1;
    }

    goto LABEL_20;
  }

  v9 = a4 & 0xC0;
  if (a1 | a2 ^ 0x80)
  {
    if (v9 != 128 || a3 != 1)
    {
      goto LABEL_20;
    }
  }

  else if (v9 != 128 || a3)
  {
    goto LABEL_20;
  }

  if (a4 != 128)
  {
LABEL_20:
    v8 = 0;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

void sub_10017D444(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      Hasher._combine(_:)(3uLL);
      NSObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)((a2 | a3 ^ 0x80) != 0);
    }
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    NSObject.hash(into:)();
    Hasher._combine(_:)(a3 & 1);
  }
}

Swift::Int sub_10017D4EC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  sub_10017D444(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10017D554()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_10017D444(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10017D5B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10017D784(v1, &v23);
  v21 = v23;
  v20 = v24;
  v4 = v25;
  v5 = v26;
  v7 = *(v1 + 8);
  *&v23 = *v1;
  v6 = v23;
  *(&v23 + 1) = v7;
  sub_10014EA98(&qword_1003AB688);
  State.wrappedValue.getter();
  v8 = [v22[0] identifier];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (a1 + *(sub_10014EA98(&qword_1003AB690) + 36));
  v13 = sub_10014EA98(&qword_1003AB698);
  static TaskPriority.userInitiated.getter();
  v14 = *(v2 + 32);
  *&v23 = *(v2 + 16);
  BYTE8(v23) = *(v2 + 24);
  v27 = v14;
  v28 = v7;
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v2 + 32);
  v17 = (v12 + *(v13 + 40));
  *v17 = v9;
  v17[1] = v11;
  *v12 = &unk_1002FC070;
  v12[1] = v15;
  *a1 = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = v4;
  *(a1 + 26) = v5;
  v18 = v6;
  sub_10017FF60(&v28, v22, &qword_1003AB6A0);
  sub_10017EF08(&v23, v22);
  return sub_10017FF60(&v27, v22, &qword_1003AB6A8);
}

void sub_10017D784(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = a1[1];
  v32 = *(a1 + 4);
  sub_10014EA98(&qword_1003AB6B0);
  State.wrappedValue.getter();
  v9 = *v28;
  v10 = v28[8];
  v11 = v28[8] >> 6;
  if (!v11)
  {
    if ((v28[8] & 1) == 0)
    {
      v19 = *v28;
      Image.init(uiImage:)();
      (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
      v20 = Image.resizable(capInsets:resizingMode:)();

      (*(v5 + 8))(v8, v4);
      *v28 = v20;
      *&v28[8] = xmmword_1002FBF10;
      LOBYTE(v29) = 1;

      sub_10014EA98(&qword_1003AB700);
      sub_10017FA34();
      sub_10017FA88();
      _ConditionalContent<>.init(storage:)();
      *v28 = v31;
      *&v28[16] = v32;
      LOBYTE(v29) = v33;
      HIBYTE(v29) = 1;
      sub_10014EA98(&qword_1003AB6D0);
      sub_10014EA98(&qword_1003AB6E8);
      sub_10017F8C8();
      sub_10017F9A8();
      _ConditionalContent<>.init(storage:)();
      if (HIBYTE(v33))
      {
        v21 = 256;
      }

      else
      {
        v21 = 0;
      }

      *v28 = v31;
      *&v28[16] = v32;
      v29 = v21 | v33;
      v30 = 0;
      sub_10014EA98(&qword_1003AB6B8);
      sub_10017F83C();
      _ConditionalContent<>.init(storage:)();
      sub_10017ED80(v9, v10);
      goto LABEL_20;
    }

    v13 = sub_10017DF54();
    v14 = [v13 backgroundColor];

    if (!v14)
    {
      v15 = [objc_opt_self() blackColor];
      v14 = [v15 colorWithAlphaComponent:0.1];
    }

    *v28 = v9;
    *&v28[8] = 1;
    *&v28[16] = v14;
    LOBYTE(v29) = 0;
    sub_10017EF60(v9, v10);
    v16 = v14;
    sub_10014EA98(&qword_1003AB700);
    sub_10017FA34();
    sub_10017FA88();
    _ConditionalContent<>.init(storage:)();
    *v28 = v31;
    *&v28[16] = v32;
    LOBYTE(v29) = v33;
    HIBYTE(v29) = 1;
    sub_10014EA98(&qword_1003AB6D0);
    sub_10014EA98(&qword_1003AB6E8);
    sub_10017F8C8();
    sub_10017F9A8();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v33))
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    *v28 = v31;
    *&v28[16] = v32;
    v29 = v17 | v33;
    v30 = 0;
    sub_10014EA98(&qword_1003AB6B8);
    sub_10017F83C();
    _ConditionalContent<>.init(storage:)();
    sub_10017ED80(v9, v10);
LABEL_25:

    goto LABEL_26;
  }

  if (v11 != 1)
  {
    if (!(*v28 | v28[8] ^ 0x80))
    {
      *v28 = static Color.clear.getter();
      v28[8] = 0;
      sub_10017F954();

      _ConditionalContent<>.init(storage:)();
      *v28 = v31;
      *&v28[8] = BYTE8(v31);
      *&v28[16] = 0;
      v29 = 0;
      sub_10014EA98(&qword_1003AB6D0);
      sub_10014EA98(&qword_1003AB6E8);
      sub_10017F8C8();
      sub_10017F9A8();
      _ConditionalContent<>.init(storage:)();
      if (HIBYTE(v33))
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      *v28 = v31;
      *&v28[16] = v32;
      v29 = v18 | v33;
      v30 = 0;
      sub_10014EA98(&qword_1003AB6B8);
      sub_10017F83C();
      sub_10017FA34();
      _ConditionalContent<>.init(storage:)();
LABEL_20:

      goto LABEL_26;
    }

    v31 = *a1;
    sub_10014EA98(&qword_1003AB688);
    State.wrappedValue.getter();
    v22 = *v28;
    v28[8] = 1;
    sub_10017F954();
    v16 = v22;
    _ConditionalContent<>.init(storage:)();
    *v28 = v31;
    *&v28[8] = BYTE8(v31);
    *&v28[16] = 0;
    v29 = 0;
    sub_10014EA98(&qword_1003AB6D0);
    sub_10014EA98(&qword_1003AB6E8);
    sub_10017F8C8();
    sub_10017F9A8();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v33))
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    *v28 = v31;
    *&v28[16] = v32;
    v29 = v23 | v33;
    v30 = 0;
    sub_10014EA98(&qword_1003AB6B8);
    sub_10017F83C();
    sub_10017FA34();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_25;
  }

  v12 = [objc_opt_self() clearColor];
  *v28 = v9;
  *&v28[16] = v12;
  v29 = 0;
  v30 = 1;
  sub_10014EA98(&qword_1003AB6B8);
  sub_10017F83C();
  sub_10017FA34();
  _ConditionalContent<>.init(storage:)();
LABEL_26:
  v24 = *(&v31 + 1);
  v25 = v32;
  v26 = v33;
  v27 = v34;
  *a2 = v31;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 26) = v27;
}

id sub_10017DF54()
{
  sub_10014EA98(&qword_1003AB688);
  State.wrappedValue.getter();
  v0 = String._bridgeToObjectiveC()();
  v1 = [v4 isKeyAvailable:v0];

  if (!v1)
  {
    return 0;
  }

  State.wrappedValue.getter();
  v2 = [v4 wallpaper];

  return v2;
}

uint64_t sub_10017E048(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for Date();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_10017E148, v4, v3);
}

uint64_t sub_10017E148()
{
  sub_100006610();
  static Date.now.getter();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10017E1DC;

  return sub_10017E4D0();
}

uint64_t sub_10017E1DC()
{
  sub_100006610();
  v1 = *v0;
  sub_1000068BC();
  *v3 = v2;
  v4 = *v0;
  sub_1000068BC();
  *v5 = v4;
  *(v7 + 128) = v6;
  *(v7 + 49) = v8;

  v9 = *(v1 + 112);
  v10 = *(v1 + 104);

  return _swift_task_switch(sub_10017E2FC, v10, v9);
}

uint64_t sub_10017E2FC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v5 = v4;
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (v5 <= 0.05)
  {
    v15 = *(v0 + 56);
    v16 = *(v15 + 32);
    v17 = *(v15 + 16);
    *(v0 + 40) = *(v0 + 128);
    v18 = *(v0 + 49);
    v19 = *(v0 + 88);
    v11 = *(v0 + 64);
    *(v0 + 16) = v17;
    *(v0 + 32) = v16;
    *(v0 + 48) = v18;
    sub_10014EA98(&qword_1003AB6B0);
    State.wrappedValue.setter();
    v14 = v19;
  }

  else
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 88);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v0 + 49);
    v7.n128_u64[0] = 0x3FE6666666666666;
    sub_10017EA9C(v7, 0.0);
    v13 = swift_task_alloc();
    *(v13 + 16) = v10;
    *(v13 + 24) = v8;
    *(v13 + 32) = v12;
    withAnimation<A>(_:_:)();
    sub_10017ED80(v8, v12);

    v14 = v9;
  }

  v6(v14, v11);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10017E4D0()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10017E568, v3, v2);
}

uint64_t sub_10017E568()
{
  sub_100006610();
  if (sub_10017EB64())
  {
    if (qword_1003A9FF8 != -1)
    {
      swift_once();
    }

    *(v0 + 16) = **(v0 + 40);
    sub_10014EA98(&qword_1003AB688);
    State.wrappedValue.getter();
    v1 = *(v0 + 32);
    *(v0 + 72) = v1;
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_10017E6B8;

    return PosterSnapshotService.takeSnapshot(contact:)(v1);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(1, 128);
  }
}

uint64_t sub_10017E6B8()
{
  v1 = *v0;
  sub_1000068BC();
  *v3 = v2;
  v4 = v1[9];
  v5 = *v0;
  sub_1000068BC();
  *v6 = v5;
  *(v8 + 88) = v7;

  v9 = v1[8];
  v10 = v1[7];

  return _swift_task_switch(sub_10017E7F8, v10, v9);
}

uint64_t sub_10017E7F8()
{
  v1 = *(v0 + 88);

  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = *(v0 + 88);
  v3 = sub_10017DF54();
  v4 = [v3 type];

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    goto LABEL_17;
  }

  v10 = sub_100007F64();

  if (v10)
  {
LABEL_17:
    [v2 size];
    v22 = v21;
    v23 = objc_opt_self();
    v24 = [v23 mainScreen];
    [v24 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v47.origin.x = v26;
    v47.origin.y = v28;
    v47.size.width = v30;
    v47.size.height = v32;
    Width = CGRectGetWidth(v47);
    v34 = [v23 mainScreen];
    [v34 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v48.origin.x = v36;
    v48.origin.y = v38;
    v48.size.width = v40;
    v48.size.height = v42;
    Height = CGRectGetHeight(v48);
    if (Height >= Width)
    {
      Height = Width;
    }

    v19 = v22 == Height;
    v20 = *(v0 + 88);
    goto LABEL_22;
  }

LABEL_8:
  v11 = sub_10017DF54();
  v12 = [v11 type];

  if (!v12)
  {
LABEL_14:

LABEL_15:
    v19 = 128;
    v20 = 1;
    goto LABEL_22;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_100007F64();

    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v20 = *(v0 + 88);
  v19 = 64;
LABEL_22:
  v44 = *(v0 + 8);

  return v44(v20, v19);
}

uint64_t sub_10017EA9C(__n128 a1, double a2)
{
  if (a2 <= -1.0)
  {
    v2 = INFINITY;
  }

  else if (a2 >= 0.0)
  {
    v2 = 1.0;
    if (a2 != 0.0)
    {
      if (a2 > 1.0)
      {
        a2 = 1.0;
      }

      v2 = 1.0 - a2;
    }
  }

  else
  {
    v2 = 1.0 / (a2 + 1.0);
  }

  return static Animation.spring(response:dampingFraction:blendDuration:)(a1, v2, 0.0);
}

uint64_t sub_10017EAF0(uint64_t a1, void *a2, char a3)
{
  sub_10017EF60(a2, a3);
  sub_10014EA98(&qword_1003AB6B0);
  return State.wrappedValue.setter();
}

uint64_t sub_10017EB64()
{
  v0 = sub_10017DF54();
  v1 = [v0 type];

  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = sub_10017DF54();
    v1 = [v9 type];

    if (!v1)
    {
      v8 = 0;
      return v8 & 1;
    }

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v12 != v13)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_15:

      return v8 & 1;
    }

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  v8 = 1;
  return v8 & 1;
}

Swift::Int sub_10017ECFC(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void sub_10017ED80(id a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }
}

uint64_t sub_10017ED8C()
{
  sub_100006610();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10017EE1C;

  return sub_10017E048(v0 + 16);
}

uint64_t sub_10017EE1C()
{
  sub_100006610();
  v1 = *v0;
  sub_1000068BC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id sub_10017EF60(id result, char a2)
{
  if ((a2 & 0x80) == 0)
  {
    return result;
  }

  return result;
}

void sub_10017EF88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    Image.init(uiImage:)();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v10 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v8, v4);
    v12 = v10;
    v13 = 0;

    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v12 = 0;
    v13 = 1;
    _ConditionalContent<>.init(storage:)();
  }

  v11 = v15;
  *a2 = v14;
  *(a2 + 8) = v11;
}

id sub_10017F158@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *(**a4)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  *(v7 + 32) = a3;
  *a4 = sub_10017FF50;
  a4[1] = v7;
  v8 = a1;

  return a3;
}

void *sub_10017F1E8@<X0>(void *a1@<X1>, char a2@<W2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  v8 = a3;
  v9 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (a2)
  {
    v10 = static Alignment.top.getter();
  }

  else
  {
    v10 = static Alignment.center.getter();
  }

  v12 = v10;
  v13 = v11;
  sub_10017F378(a1, a2 & 1, __src);
  memcpy(__dst, __src, 0xC0uLL);
  __dst[24] = v12;
  __dst[25] = v13;
  memcpy(v22, __dst, sizeof(v22));
  memcpy(v19, __src, sizeof(v19));
  v20 = v12;
  v21 = v13;
  sub_10017FF60(__dst, &v16, &qword_1003AB748);
  sub_10017FFC8(v19);
  *a4 = v9;
  *(a4 + 8) = xmmword_1002FBF20;
  *(a4 + 24) = 0x3FC3333333333333;
  v14 = v24;
  *(a4 + 32) = v23;
  *(a4 + 48) = v14;
  *(a4 + 64) = v25;
  result = memcpy((a4 + 80), v22, 0xD0uLL);
  *(a4 + 288) = 256;
  return result;
}

void *sub_10017F378@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    sub_10017EF88(a1, v27);
    v4 = v27[0];
    v5 = v27[1];
    v6 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v27[0]) = v5;
    __dst[0] = 1;
    v24[0] = v4;
    LOBYTE(v24[1]) = v5;
    v24[2] = 0;
    LOWORD(v24[3]) = 257;
    LOBYTE(v24[4]) = v6;
    v24[5] = v7;
    v24[6] = v8;
    v24[7] = v9;
    v24[8] = v10;
    LOBYTE(v24[9]) = 0;
    sub_100180030(v24);
  }

  else
  {
    sub_10017EF88(a1, v27);
    v11 = v27[0];
    v12 = v27[1];
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v23[126] = v12;
    v23[118] = 1;
    memcpy(&v23[6], __src, 0x70uLL);
    v13 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23[134] = 0;
    v24[0] = v11;
    LOBYTE(v24[1]) = v12;
    v24[2] = 0;
    LOWORD(v24[3]) = 1;
    memcpy(&v24[3] + 2, v23, 0x76uLL);
    LOBYTE(v24[18]) = v13;
    v24[19] = v15;
    v24[20] = v17;
    v24[21] = v19;
    v24[22] = v21;
    LOBYTE(v24[23]) = 0;
    sub_10018025C(v24);
  }

  memcpy(__dst, v24, 0xBAuLL);
  sub_10014EA98(&qword_1003AB750);
  sub_10014EA98(&qword_1003AB758);
  sub_1001801D8(&qword_1003AB760, &qword_1003AB750, &unk_1002FC370, sub_10018003C);
  sub_1001801D8(&qword_1003AB798, &qword_1003AB758, &unk_1002FC378, sub_1001800C8);
  _ConditionalContent<>.init(storage:)();
  memcpy(__dst, v27, 0xBAuLL);
  iPadAudioCallViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)(__dst);
  memcpy(v27, __dst, 0xBAuLL);
  return memcpy(a3, v27, 0xBAuLL);
}

id sub_10017F694(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(CNAvatarView);

  return [v3 initWithContact:a2];
}

uint64_t sub_10017F74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017FEFC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10017F7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017FEFC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10017F814()
{
  sub_10017FEFC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10017F83C()
{
  result = qword_1003AB6C0;
  if (!qword_1003AB6C0)
  {
    sub_100155B7C(&qword_1003AB6B8);
    sub_10017F8C8();
    sub_10017F9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6C0);
  }

  return result;
}

unint64_t sub_10017F8C8()
{
  result = qword_1003AB6C8;
  if (!qword_1003AB6C8)
  {
    sub_100155B7C(&qword_1003AB6D0);
    sub_10017F954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6C8);
  }

  return result;
}

unint64_t sub_10017F954()
{
  result = qword_1003AB6D8;
  if (!qword_1003AB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6D8);
  }

  return result;
}

unint64_t sub_10017F9A8()
{
  result = qword_1003AB6E0;
  if (!qword_1003AB6E0)
  {
    sub_100155B7C(&qword_1003AB6E8);
    sub_10017FA34();
    sub_10017FA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6E0);
  }

  return result;
}

unint64_t sub_10017FA34()
{
  result = qword_1003AB6F0;
  if (!qword_1003AB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6F0);
  }

  return result;
}

unint64_t sub_10017FA88()
{
  result = qword_1003AB6F8;
  if (!qword_1003AB6F8)
  {
    sub_100155B7C(&qword_1003AB700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6F8);
  }

  return result;
}

__n128 sub_10017FB0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10017FB20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10017FB60(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10017FBC0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10017FBD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10017FC20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10017FC84(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_10017FCBC()
{
  result = qword_1003AB708;
  if (!qword_1003AB708)
  {
    sub_100155B7C(&qword_1003AB690);
    sub_10017FD74();
    sub_100027E08(&qword_1003AB730, &qword_1003AB698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB708);
  }

  return result;
}

unint64_t sub_10017FD74()
{
  result = qword_1003AB710;
  if (!qword_1003AB710)
  {
    sub_100155B7C(&qword_1003AB718);
    sub_10017FDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB710);
  }

  return result;
}

unint64_t sub_10017FDF8()
{
  result = qword_1003AB720;
  if (!qword_1003AB720)
  {
    sub_100155B7C(&qword_1003AB728);
    sub_10017F83C();
    sub_10017FA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB720);
  }

  return result;
}

unint64_t sub_10017FE88()
{
  result = qword_1003AB738;
  if (!qword_1003AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB738);
  }

  return result;
}

unint64_t sub_10017FEFC()
{
  result = qword_1003AB740;
  if (!qword_1003AB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB740);
  }

  return result;
}

uint64_t sub_10017FF60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10014EA98(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10017FFC8(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AB748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10018003C()
{
  result = qword_1003AB768;
  if (!qword_1003AB768)
  {
    sub_100155B7C(&qword_1003AB770);
    sub_1001800C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB768);
  }

  return result;
}

unint64_t sub_1001800C8()
{
  result = qword_1003AB778;
  if (!qword_1003AB778)
  {
    sub_100155B7C(&qword_1003AB780);
    sub_100180154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB778);
  }

  return result;
}

unint64_t sub_100180154()
{
  result = qword_1003AB788;
  if (!qword_1003AB788)
  {
    sub_100155B7C(&qword_1003AB790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB788);
  }

  return result;
}

uint64_t sub_1001801D8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CircledImageView.ContentMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CircledImageView.ContentMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001803D8()
{
  result = qword_1003AB7B8;
  if (!qword_1003AB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB7B8);
  }

  return result;
}

void sub_100180434(char a1)
{
  v2 = OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls;
  if (v1[OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls] != (a1 & 1))
  {
    v3 = v1;
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8820);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v3[v2];
      _os_log_impl(&_mh_execute_header, v6, v7, "EnhancedEmergency: shouldHideControls for %@: %{BOOL}d", v8, 0x12u);
      sub_1000306A4(v9, &qword_1003B0230);
    }

    else
    {

      v6 = v5;
    }

    v10 = *(&v5->isa + OBJC_IVAR___EmergencyWebRTCViewController_currentState);
    if (v10)
    {
      v11 = v10;
      sub_1001805FC();
    }
  }
}

void sub_1001805FC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls))
  {
    v2 = 1;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = [Strong getRTTState];
      swift_unknownObjectRelease();
      v2 = v4 == 4;
    }

    else
    {
      v2 = 0;
    }
  }

  v5 = sub_1001808D8();
  v6 = v5;
  v7 = 0.0;
  if (v2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [v5 setAlpha:v8];

  v9 = sub_1001808B8();
  [v9 setAlpha:v8];

  v10 = sub_1001808F8();
  v11 = v10;
  v12 = 0.0;
  if (!v2 && *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_showWebRTCQualityLabel))
  {
    v12 = 1.0;
  }

  [v10 setAlpha:v12];

  v13 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flashButton);
  if (!v2)
  {
    SOSUIWebRTCState.cameraFacing.getter();
    v14 = SOSUIWebRTCCameraFacing.rawValue.getter();
    if (v14 == SOSUIWebRTCCameraFacing.rawValue.getter())
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }
  }

  [v13 setAlpha:v7];

  v15 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButton);
  v16 = 0.0;
  v17 = 0.0;
  if (!v2)
  {
    SOSUIWebRTCState.cameraFacing.getter();
    v18 = SOSUIWebRTCCameraFacing.rawValue.getter();
    v19 = SOSUIWebRTCCameraFacing.rawValue.getter();
    v17 = 1.0;
    if (v18 == v19)
    {
      v17 = 0.0;
    }
  }

  [v15 setAlpha:v17];

  [*(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton) setAlpha:v8];
  v20 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel);
  if (!v2)
  {
    SOSUIWebRTCState.state.getter();
    v21 = SOSUIWebRTCStateName.rawValue.getter();
    if (v21 == SOSUIWebRTCStateName.rawValue.getter())
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.0;
    }
  }

  [v20 setAlpha:v16];

  v25 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView);
  v22 = 0.0;
  if (!v2)
  {
    SOSUIWebRTCState.state.getter();
    v23 = SOSUIWebRTCStateName.rawValue.getter();
    v24 = SOSUIWebRTCStateName.rawValue.getter();
    v22 = 0.0;
    if (v23 == v24)
    {
      v22 = 1.0;
    }
  }

  [v25 setAlpha:v22];
}

void sub_1001808A0(char a1)
{
  v2 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls);
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls) = a1;
  sub_100180434(v2);
}

id sub_100180918(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100180990()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v23 - v12;
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*(v1 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
    UIButton.Configuration.cornerStyle.setter();
  }

  UIButton.Configuration.contentInsets.setter();
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v16 = [v14 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1000064BC(0, &qword_1003ABA20);
  (*(v6 + 16))(v10, v13, v5);
  v18 = UIButton.init(configuration:primaryAction:)();
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = v18;
  v20 = sub_1001FD1F8(0x47494C4853414C46, 0xEA00000000005448);
  sub_1001E56EC(v20, v21, v19);

  [v19 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  (*(v6 + 8))(v13, v5);
  return v19;
}

id sub_100180CC4()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = aBlock - v12;
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*(v1 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
    UIButton.Configuration.cornerStyle.setter();
  }

  UIButton.Configuration.contentInsets.setter();
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v16 = [v14 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003ABA20);
  (*(v6 + 16))(v10, v13, v5);
  v17 = UIButton.init(configuration:primaryAction:)();
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = v17;
  v19 = sub_1001FD1F8(1297043290, 0xE400000000000000);
  sub_1001E56EC(v19, v20, v18);
  [v18 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  aBlock[4] = sub_10018FB9C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001810A4;
  aBlock[3] = &unk_10035C410;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v23 setAccessibilityValueBlock:v22];
  _Block_release(v22);
  [v23 setAccessibilityTraits:?];

  (*(v6 + 8))(v13, v5);
  return v23;
}

id sub_10018106C(void *a1)
{
  result = [a1 titleLabel];
  if (result)
  {
    return sub_1001F8A08(result);
  }

  return result;
}

id sub_1001810A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100181128()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v23 - v12;
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*(v1 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
    UIButton.Configuration.cornerStyle.setter();
  }

  UIButton.Configuration.contentInsets.setter();
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v16 = [v14 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1000064BC(0, &qword_1003ABA20);
  (*(v6 + 16))(v10, v13, v5);
  v18 = UIButton.init(configuration:primaryAction:)();
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setAlpha:0.0];
  v19 = v18;
  v20 = sub_1001FD1F8(0x4D41435F50494C46, 0xEB00000000415245);
  sub_1001E56EC(v20, v21, v19);
  [v19 setAccessibilityTraits:?];

  [v19 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  (*(v6 + 8))(v13, v5);
  return v19;
}

id sub_1001814DC()
{
  v0 = sub_10014EA98(&qword_1003AAA90);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v41 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  (*(v5 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.contentInsets.setter();
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v16 = [v14 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v18 = [objc_opt_self() buttonWithType:1];
  v19 = *(v10 + 16);
  v42 = v9;
  v19(v3, v13, v9);
  sub_100006848(v3, 0, 1, v9);
  UIButton.configuration.setter();
  v20 = v18;
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = v20;
  v22 = sub_1001FD1F8(0x4F525F4F49445541, 0xEB00000000455455);
  sub_1001E56EC(v22, v23, v21);

  [v21 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v24 = [objc_allocWithZone(type metadata accessor for ButtonBackgroundViewEffectView()) init];
  [v24 setUserInteractionEnabled:0];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 insertSubview:v24 atIndex:0];
  v25 = objc_opt_self();
  sub_10014EA98(&unk_1003AAAA0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002FB360;
  v27 = [v24 leadingAnchor];
  v28 = [v21 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v26 + 32) = v29;
  v30 = [v24 trailingAnchor];
  v31 = [v21 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v26 + 40) = v32;
  v33 = [v24 topAnchor];
  v34 = [v21 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v26 + 48) = v35;
  v36 = [v24 bottomAnchor];

  v37 = [v21 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v26 + 56) = v38;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];

  (*(v10 + 8))(v13, v42);
  return v21;
}

id sub_100181AD8()
{
  v0 = sub_10014EA98(&qword_1003AAA90);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v41 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  (*(v5 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.contentInsets.setter();
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v16 = [v14 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v18 = [objc_opt_self() buttonWithType:1];
  v19 = *(v10 + 16);
  v42 = v9;
  v19(v3, v13, v9);
  sub_100006848(v3, 0, 1, v9);
  UIButton.configuration.setter();
  v20 = v18;
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = v20;
  v22 = sub_1001FD1F8(0xD000000000000012, 0x80000001002A7A10);
  sub_1001E56EC(v22, v23, v21);

  [v21 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v24 = [objc_allocWithZone(type metadata accessor for ButtonBackgroundViewEffectView()) init];
  [v24 setUserInteractionEnabled:0];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 insertSubview:v24 atIndex:0];
  v25 = objc_opt_self();
  sub_10014EA98(&unk_1003AAAA0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002FB360;
  v27 = [v24 leadingAnchor];
  v28 = [v21 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v26 + 32) = v29;
  v30 = [v24 trailingAnchor];
  v31 = [v21 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v26 + 40) = v32;
  v33 = [v24 topAnchor];
  v34 = [v21 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v26 + 48) = v35;
  v36 = [v24 bottomAnchor];

  v37 = [v21 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v26 + 56) = v38;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];

  (*(v10 + 8))(v13, v42);
  return v21;
}