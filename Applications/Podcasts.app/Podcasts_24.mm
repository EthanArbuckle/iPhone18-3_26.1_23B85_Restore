uint64_t sub_1003448A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for PlaybackController.TransportCommand();
  v6 = sub_1001825CC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t CarPlayStepPlaybackRateActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for PlaybackController.TransportCommand();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = type metadata accessor for PlaybackController();
  v5 = swift_task_alloc();
  v2[15] = v5;
  *v5 = v2;
  v5[1] = sub_100344A6C;

  return BaseObjectGraph.inject<A>(_:)(v2 + 7, v4, v4);
}

uint64_t sub_100344A6C()
{
  v2 = *v1;
  v2[16] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v4;
  v2[18] = v3;
  if (v0)
  {
    v5 = sub_100344F84;
  }

  else
  {
    v5 = sub_100344BCC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100344BCC()
{
  v1 = v0[9];
  v0[19] = v0[7];
  if (*v1)
  {
    if (qword_100572860 != -1)
    {
      swift_once();
    }

    v2 = static CarPlayStepPlaybackRateActionImplementation.decreaseSpeedCommand;
  }

  else
  {
    if (qword_100572858 != -1)
    {
      swift_once();
    }

    v2 = static CarPlayStepPlaybackRateActionImplementation.increaseSpeedCommand;
  }

  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = sub_1001825CC(v5, v2);
  v7 = *(v4 + 16);
  v7(v3, v6, v5);
  v0[5] = v5;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v8 = sub_10000E680(v0 + 2);
  v7(v8, v3, v5);
  v11 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_100344D64;

  return (v11)(v0 + 2, 0);
}

uint64_t sub_100344D64(void *a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_100344FF0;
  }

  else
  {

    sub_100004590(v4 + 16);
    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_100344E90;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100344E90()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];

  (*(v2 + 8))(v1, v3);
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = type metadata accessor for ActionOutcome();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100344F84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100344FF0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  sub_100004590((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_10034509C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return CarPlayStepPlaybackRateActionImplementation.perform(_:asPartOf:)(a1, a2);
}

unint64_t sub_100345150()
{
  result = qword_10057DDC0;
  if (!qword_10057DDC0)
  {
    type metadata accessor for CarPlayStepPlaybackRateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057DDC0);
  }

  return result;
}

uint64_t sub_1003451A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034521C();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_10034521C()
{
  result = qword_100580658;
  if (!qword_100580658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580658);
  }

  return result;
}

uint64_t sub_100345270(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for Glyph();
  v4 = *(v85 - 8);
  __chkstk_darwin();
  v84 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  __chkstk_darwin();
  v87 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = v76 - v7;
  __chkstk_darwin();
  v81 = v76 - v8;
  sub_100168088(&qword_100580660);
  __chkstk_darwin();
  v10 = v76 - v9;
  v96 = _s16MenuImageRowItemVMa();
  v11 = *(v96 - 8);
  __chkstk_darwin();
  v88 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = (v76 - v13);
  __chkstk_darwin();
  v86 = v76 - v14;
  v15 = type metadata accessor for TabMenu.Item();
  __chkstk_darwin();
  v17 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v98 = v76 - v20;
  v21 = *(a2 + 16);
  v89 = v11;
  v77 = a1;
  if (v21)
  {
    v23 = *(v18 + 16);
    v22 = v18 + 16;
    v94 = v23;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v76[1] = a2;
    v25 = a2 + v24;
    v26 = *(v22 + 56);
    v95 = v22;
    v92 = (v22 - 8);
    v93 = v26;
    v78 = (v4 + 8);
    v91 = (v11 + 56);
    v27 = _swiftEmptyArrayStorage;
    v90 = (v11 + 48);
    v28 = v11;
    v79 = v10;
    v29 = v86;
    while (1)
    {
      v97 = v27;
      v30 = v98;
      v31 = v94;
      (v94)(v98, v25, v15, v19);
      v31(v17, v30, v15);
      v32 = TabMenu.Item.title.getter();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (!v35)
      {
        goto LABEL_12;
      }

      v36 = TabMenu.Item.navigationTab.getter();
      if (v36 > 3)
      {
        break;
      }

      if ((v36 - 2) < 2)
      {
        goto LABEL_11;
      }

      if (v36)
      {
        if (v36 != 1)
        {
          goto LABEL_28;
        }

        *v87 = 7;
LABEL_32:
        v45 = v87;
        swift_storeEnumTagMultiPayload();
        v46 = v45;
        v47 = v82;
        sub_100346424(v46, v82, type metadata accessor for CarPlayTemplateInfo.TemplateType);
        v48 = v81;
        sub_100346424(v47, v81, type metadata accessor for CarPlayTemplateInfo.TemplateType);
        v49 = TabMenu.Item.title.getter();
        v50 = v80;
        *v80 = v49;
        *(v50 + 8) = v51;
        sub_100346560(v48, v50 + *(v96 + 20), type metadata accessor for CarPlayTemplateInfo.TemplateType);
        v52 = v84;
        TabMenu.Item.glyph.getter();
        v53 = Glyph.image.getter();
        (*v78)(v52, v85);
        sub_1003465C8(v48, type metadata accessor for CarPlayTemplateInfo.TemplateType);
        v54 = *v92;
        (*v92)(v17, v15);
        v54(v98, v15);
        *(v50 + *(v96 + 24)) = v53;
        v10 = v79;
        sub_100346424(v50, v79, _s16MenuImageRowItemVMa);
        v38 = 0;
        v28 = v89;
        v29 = v86;
        goto LABEL_13;
      }

LABEL_12:
      v37 = *v92;
      (*v92)(v17, v15);
      v37(v98, v15);
      v38 = 1;
LABEL_13:
      v39 = v96;
      (*v91)(v10, v38, 1, v96);
      v40 = (*v90)(v10, 1, v39);
      v27 = v97;
      if (v40 == 1)
      {
        sub_100009104(v10, &qword_100580660);
      }

      else
      {
        sub_100346424(v10, v29, _s16MenuImageRowItemVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_10024405C(0, v27[2] + 1, 1, v27);
        }

        v42 = v27[2];
        v41 = v27[3];
        if (v42 >= v41 >> 1)
        {
          v27 = sub_10024405C(v41 > 1, v42 + 1, 1, v27);
        }

        v27[2] = v42 + 1;
        sub_100346424(v29, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v42, _s16MenuImageRowItemVMa);
      }

      v25 += v93;
      if (!--v21)
      {

        a1 = v77;
        goto LABEL_35;
      }
    }

    if (v36 > 0x12)
    {
      goto LABEL_26;
    }

    if (((1 << v36) & 0x67FE0) == 0)
    {
      if (v36 == 15)
      {
        v43 = v87;
        v44 = 6;
LABEL_30:
        *v43 = v44;
        *(v43 + 8) = 0u;
        *(v43 + 24) = 0u;
        *(v43 + 40) = 0u;
        *(v43 + 7) = 0;
LABEL_31:
        v43[64] = 10;
      }

      else
      {
        if (v36 == 16)
        {
          v43 = v87;
          v44 = 5;
          goto LABEL_30;
        }

LABEL_26:
        if (v36 == 4)
        {
          v43 = v87;
          *(v87 + 2) = 0u;
          *(v43 + 3) = 0u;
          *v43 = 0u;
          *(v43 + 1) = 0u;
          goto LABEL_31;
        }

LABEL_28:
        *v87 = v36;
      }

      goto LABEL_32;
    }

LABEL_11:
    sub_10002ACE0(v36);
    goto LABEL_12;
  }

  v27 = _swiftEmptyArrayStorage;
  v28 = v11;
LABEL_35:
  result = sub_10023E37C(CPMaximumNumberOfGridImages, v27);
  v59 = result;
  v60 = (v58 >> 1);
  if (v57 == (v58 >> 1))
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v61 = v57;
  v62 = v60 - v57;
  if (__OFSUB__(v60, v57))
  {
    goto LABEL_48;
  }

  v63 = v56;
  v64 = v58;
  if (!v62)
  {
LABEL_46:
    v70 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_100009F1C(0, &qword_10057A498);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v72 = [v70 initWithText:0 condensedElements:isa allowsMultipleLines:1];

    v73 = swift_allocObject();
    v73[2] = v59;
    v73[3] = v63;
    v73[4] = v61;
    v73[5] = v64;
    v73[6] = a1;
    aBlock[4] = sub_1003463F4;
    aBlock[5] = v73;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B1CD0;
    aBlock[3] = &unk_1004EF578;
    v74 = _Block_copy(aBlock);
    v75 = v72;
    swift_unknownObjectRetain();

    [v75 setListImageRowHandler:v74];

    _Block_release(v74);
    swift_unknownObjectRelease();
    return v75;
  }

  aBlock[0] = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v62 & 0x8000000000000000) == 0)
  {
    v95 = v64;
    v97 = v61;
    v98 = v59;
    if (v61 <= v60)
    {
      v65 = v60;
    }

    else
    {
      v65 = v61;
    }

    while (v65 != v61)
    {
      v66 = v88;
      sub_100346560(v63 + *(v28 + 72) * v61, v88, _s16MenuImageRowItemVMa);
      v67 = *(v66 + *(v96 + 24));
      v68 = objc_allocWithZone(CPListImageRowItemCondensedElement);
      v69 = String._bridgeToObjectiveC()();
      [v68 initWithImage:v67 imageShape:1 title:v69 subtitle:0 accessorySymbolName:0];

      sub_1003465C8(v66, _s16MenuImageRowItemVMa);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v28 = v89;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v60 == ++v61)
      {
        v59 = v98;
        a1 = v77;
        v61 = v97;
        v64 = v95;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s16MenuImageRowItemVMa()
{
  result = qword_1005806C0;
  if (!qword_1005806C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100345D38(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v50 = a6;
  v55 = a3;
  v56 = a4;
  v12 = type metadata accessor for Logger();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v54 = &v49 - v15;
  v16 = type metadata accessor for CarPlayTemplateInfo(0);
  v53 = *(v16 - 8);
  __chkstk_darwin();
  v49 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100575AE0);
  __chkstk_darwin();
  v19 = &v49 - v18;
  sub_100168088(&unk_100578410);
  __chkstk_darwin();
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v49 - v22;
  v24 = _s16MenuImageRowItemVMa();
  __chkstk_darwin();
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to select menu image row item with invalid index!", v47, 2u);
    }

    v48 = (*(v51 + 8))(v14, v52);
    v55(v48);
  }

  else
  {
    v52 = a9;
    sub_100346560(v50 + *(v25 + 72) * a2, &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), _s16MenuImageRowItemVMa);
    v28 = objc_allocWithZone(CPListImageRowItem);
    v29 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_10057A498);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v31 = [v28 initWithText:v29 condensedElements:isa allowsMultipleLines:1];

    sub_100346560(&v27[*(v24 + 20)], v19, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v32 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v33 = *(*(v32 - 8) + 56);
    v33(v19, 0, 1, v32);
    v33(v23, 1, 1, v32);
    v34 = *(v16 + 20);
    sub_1001FBB44(v19, v23);
    v23[v34] = 0;
    v35 = v53;
    (*(v53 + 56))(v23, 0, 1, v16);
    sub_1001D2D08(v23, v21);
    v36 = (*(v35 + 48))(v21, 1, v16);
    v37 = 0;
    if (v36 != 1)
    {
      sub_100346560(v21, v49, type metadata accessor for CarPlayTemplateInfo);
      v37 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_1003465C8(v21, type metadata accessor for CarPlayTemplateInfo);
    }

    [v31 setUserInfo:v37];
    swift_unknownObjectRelease();
    sub_100009104(v23, &unk_100578410);
    v38 = v54;
    static TaskPriority.userInitiated.getter();
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    type metadata accessor for MainActor();
    v40 = v52;

    v41 = v31;
    v42 = v56;

    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = v40;
    v44[5] = v41;
    v44[6] = v55;
    v44[7] = v42;
    sub_10023EE80(0, 0, v38, &unk_10040E488, v44);

    sub_1003465C8(v27, _s16MenuImageRowItemVMa);
  }
}

uint64_t sub_100346424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10034648C(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100346560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003465C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100346650()
{
  result = type metadata accessor for CarPlayTemplateInfo.TemplateType(319);
  if (v1 <= 0x3F)
  {
    result = sub_100009F1C(319, &qword_100578C08);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1003466F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    a6(1, 0, 2);
    return;
  }

  v12 = Strong;
  if (a4)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v13 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100022C18();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = _convertErrorToNSError(_:)();
    v19 = [v18 code];

    if (v19 == -999)
    {
      v20 = 1;
    }

    else
    {
      v27 = _convertErrorToNSError(_:)();
      v28 = [v27 code];

      if (v28 != -1009)
      {
        swift_errorRetain();
        a6(a4, 0, 128);

        goto LABEL_16;
      }

      v20 = 0;
    }

    a6(v20, 0, 2);

LABEL_16:

    return;
  }

  if (!a3 || (objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_100370B38();
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v29 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();

    a6(0, 0, 192);

    return;
  }

  v22 = v21;
  v23 = a3;
  if ([v22 statusCode] < 200 || objc_msgSend(v22, "statusCode") >= 300)
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v24 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100400790;
    v26 = [v22 statusCode];
    *(v25 + 56) = &type metadata for Int;
    *(v25 + 64) = &protocol witness table for Int;
    *(v25 + 32) = v26;
    os_log(_:dso:log:_:_:)();

LABEL_42:
    v45 = 0;
    v46 = 192;
    goto LABEL_43;
  }

  v30 = [v22 allHeaderFields];
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v70, "Content-Length");
  HIBYTE(v70[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v31 + 16) || (v32 = sub_100202028(v71), (v33 & 1) == 0))
  {

    sub_10016BE9C(v71);
    goto LABEL_40;
  }

  sub_10001B944(*(v31 + 56) + 32 * v32, v72);
  sub_10016BE9C(v71);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v44 = static OS_os_log.downloads.getter();
LABEL_41:
    os_log(_:dso:log:_:_:)();

    goto LABEL_42;
  }

  v34 = HIBYTE(v70[1]) & 0xF;
  v35 = v70[0] & 0xFFFFFFFFFFFFLL;
  if ((v70[1] & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v70[1]) & 0xF;
  }

  else
  {
    v36 = v70[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    goto LABEL_92;
  }

  if ((v70[1] & 0x1000000000000000) != 0)
  {
    v40 = sub_100311A9C(v70[0], v70[1], 10);
    v69 = v68;

    if ((v69 & 1) == 0)
    {
LABEL_85:
      if (v40 >= 1)
      {
        v63 = v12[10];
        if (v63 == 1 || v63 == 2 && v12[9] < v40)
        {
          sub_100347120(v40, a6, a7);
          goto LABEL_44;
        }

        static os_log_type_t.default.getter();
        sub_100009F1C(0, &qword_1005748A0);
        v64 = static OS_os_log.downloads.getter();
        sub_100168088(&unk_100574670);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_1004007C0;
        *(v65 + 56) = &type metadata for Int64;
        *(v65 + 64) = &protocol witness table for Int64;
        *(v65 + 32) = v40;
        v66 = v12[2];
        v67 = v12[3];
        *(v65 + 96) = &type metadata for String;
        *(v65 + 104) = sub_100022C18();
        *(v65 + 72) = v66;
        *(v65 + 80) = v67;

        os_log(_:dso:log:_:_:)();

        v45 = v40;
        v46 = 64;
LABEL_43:
        a6(v45, 0, v46);
LABEL_44:

        return;
      }
    }

LABEL_92:
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v44 = static OS_os_log.downloads.getter();
    goto LABEL_41;
  }

  if ((v70[1] & 0x2000000000000000) != 0)
  {
    v71[0] = v70[0];
    v71[1] = v70[1] & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(v70[0]) == 43)
    {
      v37 = (v34 - 1);
      if (v34 != 1)
      {
        v40 = 0;
        v54 = v71 + 1;
        while (1)
        {
          v55 = *v54 - 48;
          if (v55 > 9)
          {
            break;
          }

          v56 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v56 + v55;
          if (__OFADD__(v56, v55))
          {
            break;
          }

          ++v54;
          if (!--v37)
          {
            goto LABEL_84;
          }
        }
      }
    }

    else if (LOBYTE(v70[0]) == 45)
    {
      v37 = (v34 - 1);
      if (v34 != 1)
      {
        v40 = 0;
        v47 = v71 + 1;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v49 - v48;
          if (__OFSUB__(v49, v48))
          {
            break;
          }

          ++v47;
          if (!--v37)
          {
            goto LABEL_84;
          }
        }
      }
    }

    else
    {
      v40 = 0;
      v59 = v71;
      while (1)
      {
        v60 = *v59 - 48;
        if (v60 > 9)
        {
          break;
        }

        v61 = 10 * v40;
        if ((v40 * 10) >> 64 != (10 * v40) >> 63)
        {
          break;
        }

        v40 = v61 + v60;
        if (__OFADD__(v61, v60))
        {
          break;
        }

        ++v59;
        if (!--v34)
        {
LABEL_82:
          LOBYTE(v37) = 0;
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

  if ((v70[0] & 0x1000000000000000) != 0)
  {
    v37 = ((v70[1] & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v37 = _StringObject.sharedUTF8.getter();
  }

  v38 = *v37;
  if (v38 == 43)
  {
    if (v35 >= 1)
    {
      v50 = v35 - 1;
      if (v35 != 1)
      {
        v40 = 0;
        if (!v37)
        {
          goto LABEL_84;
        }

        v51 = v37 + 1;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          v53 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            break;
          }

          ++v51;
          if (!--v50)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_97;
  }

  if (v38 != 45)
  {
    if (v35)
    {
      v40 = 0;
      if (!v37)
      {
        goto LABEL_84;
      }

      while (1)
      {
        v57 = *v37 - 48;
        if (v57 > 9)
        {
          break;
        }

        v58 = 10 * v40;
        if ((v40 * 10) >> 64 != (10 * v40) >> 63)
        {
          break;
        }

        v40 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          break;
        }

        ++v37;
        if (!--v35)
        {
          goto LABEL_82;
        }
      }
    }

LABEL_83:
    v40 = 0;
    LOBYTE(v37) = 1;
LABEL_84:
    v72[0] = v37;
    v62 = v37;

    if ((v62 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_92;
  }

  if (v35 >= 1)
  {
    v39 = v35 - 1;
    if (v35 != 1)
    {
      v40 = 0;
      if (!v37)
      {
        goto LABEL_84;
      }

      v41 = v37 + 1;
      while (1)
      {
        v42 = *v41 - 48;
        if (v42 > 9)
        {
          break;
        }

        v43 = 10 * v40;
        if ((v40 * 10) >> 64 != (10 * v40) >> 63)
        {
          break;
        }

        v40 = v43 - v42;
        if (__OFSUB__(v43, v42))
        {
          break;
        }

        ++v41;
        if (!--v39)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_83;
  }

  __break(1u);
  __break(1u);
LABEL_97:
  __break(1u);
  __break(1u);
}

uint64_t sub_100347058(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1001F6D60(v6, v10);
}

uint64_t sub_100347120(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin();
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin();
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 72);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v55 = v11;
  v13[2] = v11;
  v13[3] = a1;
  v13[4] = v12;
  v13[5] = a2;
  v70 = v13;
  v13[6] = a3;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v14;
  v58 = a2;
  v15[4] = a2;
  v15[5] = a3;
  v71 = v15;
  v16 = objc_allocWithZone(NSNumber);
  v57 = a3;
  swift_retain_n();
  v56 = a1;
  v17 = [v16 initWithLongLong:a1];
  v67 = static Localization.fileSize(_:)();
  v69 = v18;

  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v74._object = 0xE000000000000000;
  v21._object = 0x8000000100470C00;
  v21._countAndFlagsBits = 0xD00000000000001DLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v74._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v74)._countAndFlagsBits;

  v66 = sub_100168088(&unk_100574670);
  v23 = swift_allocObject();
  v65 = xmmword_100400790;
  *(v23 + 16) = xmmword_100400790;
  v24 = *(v4 + 32);
  v25 = *(v4 + 40);
  *(v23 + 56) = &type metadata for String;
  v26 = sub_100022C18();
  *(v23 + 64) = v26;
  if (v25)
  {
    object = v25;
  }

  else
  {
    v28 = [v19 mainBundle];
    v75._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0xD00000000000002DLL;
    v29._object = 0x8000000100470C20;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v75._countAndFlagsBits = 0;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v75);
    v24 = v31._countAndFlagsBits;
    object = v31._object;
  }

  *(v23 + 32) = v24;
  *(v23 + 40) = object;

  v32 = static String.localizedStringWithFormat(_:_:)();
  v34 = v33;

  v35 = [v19 mainBundle];
  v36 = v69;
  if (v69)
  {
    v76._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0xD000000000000029;
    v37._object = 0x8000000100470C80;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v76._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v35, v38, v76);

    v39 = swift_allocObject();
    *(v39 + 16) = v65;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v26;
    *(v39 + 32) = v67;
    *(v39 + 40) = v36;
    v40 = static String.localizedStringWithFormat(_:_:)();
    v42 = v41;

    if (*(v4 + 96))
    {
LABEL_6:
      sub_100009F1C(0, &qword_1005729D0);
      v43 = static OS_dispatch_queue.main.getter();
      v44 = swift_allocObject();
      v44[2] = v32;
      v44[3] = v34;
      v44[4] = v40;
      v44[5] = v42;
      v45 = v70;
      v46 = v71;
      v44[6] = sub_100347F00;
      v44[7] = v45;
      v44[8] = sub_100347F10;
      v44[9] = v46;
      aBlock[4] = sub_100347F1C;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004EF680;
      v47 = _Block_copy(aBlock);

      v48 = v59;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1001D293C();
      sub_100168088(&unk_100575CD0);
      sub_100182E30();
      v49 = v61;
      v50 = v64;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);

      (*(v63 + 8))(v49, v50);
      return (*(v60 + 8))(v48, v62);
    }
  }

  else
  {
    v77._object = 0xE000000000000000;
    v52._countAndFlagsBits = 0xD000000000000027;
    v52._object = 0x8000000100470C50;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    v77._countAndFlagsBits = 0;
    v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v35, v53, v77);
    v40 = v54._countAndFlagsBits;
    v42 = v54._object;

    if (*(v4 + 96))
    {
      goto LABEL_6;
    }
  }

  v58(v56, v55, 0);
}

uint64_t sub_100347830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void))
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v8 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004007E0;
  *(v9 + 56) = &type metadata for Int64;
  *(v9 + 64) = &protocol witness table for Int64;
  *(v9 + 32) = a2;
  *(v9 + 96) = &type metadata for Int64;
  *(v9 + 104) = &protocol witness table for Int64;
  *(v9 + 72) = a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 16);
    v11 = *(Strong + 24);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *(v9 + 136) = &type metadata for String;
  *(v9 + 144) = sub_100022C18();
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v11)
  {
    v14 = v11;
  }

  *(v9 + 112) = v13;
  *(v9 + 120) = v14;
  os_log(_:dso:log:_:_:)();

  return a5(a3, a2, 0);
}

uint64_t sub_1003479BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t))
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v6 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004007C0;
  *(v7 + 56) = &type metadata for Int64;
  *(v7 + 64) = &protocol witness table for Int64;
  *(v7 + 32) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 16);
    v9 = *(Strong + 24);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = sub_100022C18();
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v9)
  {
    v12 = v9;
  }

  *(v7 + 72) = v11;
  *(v7 + 80) = v12;
  os_log(_:dso:log:_:_:)();

  return a4(a2, 0, 64);
}

void sub_100347B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v15._object = 0x8000000100470CB0;
  v15._countAndFlagsBits = 0xD000000000000025;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedStringReferencingWiFi(_:comment:)(v15, v16);
  static String.localizedStringWithFormat(_:_:)();

  v17 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v30 = a5;
    v31 = a6;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1002E8240;
    v29 = &unk_1004EF6D0;
    v18 = _Block_copy(&aBlock);
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  v21 = [objc_opt_self() mainBundle];
  v32._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000027;
  v22._object = 0x8000000100470CE0;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v32);

  static String.localizedStringWithFormat(_:_:)();

  v24 = String._bridgeToObjectiveC()();

  if (a7)
  {
    v30 = a7;
    v31 = a8;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1002E8240;
    v29 = &unk_1004EF6A8;
    a7 = _Block_copy(&aBlock);
  }

  v25 = [v19 actionWithTitle:v24 style:0 handler:a7];
  _Block_release(a7);

  [v14 addAction:v20];
  [v14 addAction:v25];
  [v14 presentAnimated:1 completion:0];
}

uint64_t sub_100347E84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100347F30(uint64_t a1, void (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v7 = &v41 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = *(a1 + 88);

  v14 = v13;
  DownloadableURLOptions.url.getter();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1001FDD40(v7);
    a2(2, 0, 2);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(a1 + 80))
    {
      v15 = objc_allocWithZone(NSMutableURLRequest);
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      v19 = [v15 initWithURL:v17];

      v20 = String._bridgeToObjectiveC()();
      [v19 setHTTPMethod:v20];

      v21 = *(a1 + 64);
      v42 = v19;
      [v19 setTimeoutInterval:v21];
      v22 = *(a1 + 88);
      v23 = DownloadableURLOptions.nonAppInitiated.getter();

      [v19 setNonAppInitiated:v23 & 1];
      static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v24 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100400790;
      v26 = *(a1 + 16);
      v27 = *(a1 + 24);
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100022C18();
      *(v25 + 32) = v26;
      *(v25 + 40) = v27;

      os_log(_:dso:log:_:_:)();

      v28 = *(a1 + 48);
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = sub_100348474;
      v30[4] = v12;
      aBlock[4] = sub_10034847C;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100347058;
      aBlock[3] = &unk_1004EF748;
      v31 = _Block_copy(aBlock);
      v32 = v42;

      v33 = [v28 dataTaskWithRequest:v32 completionHandler:v31];
      _Block_release(v31);

      v34 = *(a1 + 56);
      *(a1 + 56) = v33;
      v35 = v33;

      [v35 resume];
    }

    else
    {
      LODWORD(v42) = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v36 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100400790;
      v39 = *(a1 + 16);
      v38 = *(a1 + 24);
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_100022C18();
      *(v37 + 32) = v39;
      *(v37 + 40) = v38;

      os_log(_:dso:log:_:_:)();

      a2(0, 0, 64);
    }

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100348718()
{
  sub_100168088(&qword_1005777D0);
  __chkstk_darwin();
  v27 = &v21 - v0;
  sub_100168088(&qword_1005808F0);
  __chkstk_darwin();
  v25 = &v21 - v1;
  v24 = sub_100168088(&qword_1005808F8);
  v26 = *(v24 - 8);
  __chkstk_darwin();
  v22 = &v21 - v2;
  v23 = type metadata accessor for AttributedString();
  v28 = *(v23 - 8);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v31._object = 0x80000001004710B0;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v7._object = 0x8000000100471090;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000013;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v31);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v9 = objc_opt_self();
  v29 = [v9 systemFontOfSize:9.0];
  sub_10034B5D4();
  AttributedString.subscript.setter();
  v10 = [v5 mainBundle];
  v32._object = 0x8000000100471100;
  v11._countAndFlagsBits = 0xD000000000000025;
  v11._object = 0x80000001004710D0;
  v32._countAndFlagsBits = 0xD000000000000015;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v32);

  AttributeContainer.init()();
  v13 = v23;
  AttributedString.init(_:attributes:)();
  v14 = v9;
  v15 = v24;
  v29 = [v14 systemFontOfSize:18.0];
  AttributedString.subscript.setter();
  v29 = 16421;
  v30 = 0xE200000000000000;
  v16 = type metadata accessor for Locale();
  v17 = v27;
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  sub_10034B628();
  sub_10019FA64();
  v18 = v25;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_100009104(v17, &qword_1005777D0);
  if ((*(v26 + 48))(v18, 1, v15) == 1)
  {
    (*(v28 + 8))(v4, v13);
    return sub_100009104(v18, &qword_1005808F0);
  }

  else
  {
    v20 = v22;
    sub_10034B680(v18, v22);
    sub_100009FAC(&qword_100580910, &qword_1005808F8);
    AttributedString.replaceSubrange<A, B>(_:with:)();
    sub_100009104(v20, &qword_1005808F8);
    return (*(v28 + 8))(v4, v13);
  }
}

uint64_t sub_100348CA8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v212 = a2;
  v209 = sub_100168088(&qword_1005809D0);
  __chkstk_darwin();
  v211 = &v189 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v210 = (&v189 - v4);
  v203 = sub_100168088(&qword_1005809D8);
  __chkstk_darwin();
  v205 = &v189 - v5;
  v204 = sub_100168088(&qword_1005809E0);
  __chkstk_darwin();
  v206 = &v189 - v6;
  sub_100168088(&qword_1005809E8);
  __chkstk_darwin();
  v217 = &v189 - v7;
  v8 = sub_100168088(&qword_1005809F0);
  v196 = *(v8 - 8);
  v197 = v8;
  __chkstk_darwin();
  v194 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v192 = &v189 - v10;
  v195 = sub_100168088(&qword_1005809F8);
  __chkstk_darwin();
  v193 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v216 = &v189 - v12;
  __chkstk_darwin();
  v202 = &v189 - v13;
  __chkstk_darwin();
  v191 = &v189 - v14;
  __chkstk_darwin();
  v213 = &v189 - v15;
  sub_100168088(&qword_100580A00);
  __chkstk_darwin();
  v208 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v219 = &v189 - v17;
  v18 = type metadata accessor for Image.ResizingMode();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = (sub_100168088(&qword_100580A08) - 8);
  __chkstk_darwin();
  v207 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v189 - v23;
  v214 = *a1;
  v215 = a1;
  v25 = *(v214 + OBJC_IVAR___MTInstagramShareModel_artwork);
  Image.init(uiImage:)();
  (*(v19 + 104))(v21, enum case for Image.ResizingMode.stretch(_:), v18);
  *&v201 = Image.resizable(capInsets:resizingMode:)();

  (*(v19 + 8))(v21, v18);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = v255;
  LOBYTE(v19) = v256;
  v27 = v257;
  v28 = v258;
  v29 = v259;
  v200 = v260;
  v30 = &v24[*(sub_100168088(&qword_100580A10) + 36)];
  v31 = *(type metadata accessor for RoundedRectangle() + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = type metadata accessor for RoundedCornerStyle();
  (*(*(v33 - 8) + 104))(&v30->i8[v31], v32, v33);
  *v30 = vdupq_n_s64(0x402591B4E81B4E82uLL);
  *(v30->i16 + *(sub_100168088(&qword_100580A18) + 36)) = 256;
  v34 = v200;
  *v24 = v201;
  *(v24 + 1) = v26;
  v24[16] = v19;
  *(v24 + 3) = v27;
  v24[32] = v28;
  *(v24 + 5) = v29;
  *(v24 + 6) = v34;
  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = static Alignment.center.getter();
  v40 = v39;
  sub_10034A5A4(v285);
  memcpy(v281, v285, sizeof(v281));
  memcpy(v282, v285, 0x130uLL);
  sub_100010430(v281, v284, &qword_100580A20);
  sub_100009104(v282, &qword_100580A20);
  *v284 = v38;
  *&v284[8] = v40;
  memcpy(&v284[16], v281, 0x130uLL);
  v201 = xmmword_10040E550;
  *&v284[320] = xmmword_10040E550;
  v284[336] = 0;
  *&v284[337] = *v283;
  *&v284[340] = *&v283[3];
  *&v284[344] = 0xC006000000000000;
  *&v284[352] = 0xC006000000000000;
  *&v284[360] = v35;
  *&v284[368] = v37;
  v41 = *(v218 + 11);
  v218 = v24;
  v42 = &v24[v41];
  v43 = v214;
  memcpy(v42, v284, 0x178uLL);
  v285[0] = v38;
  v285[1] = v40;
  memcpy(&v285[2], v281, 0x130uLL);
  v286 = v201;
  v287 = 0;
  *v288 = *v283;
  *&v288[3] = *&v283[3];
  v289 = 0xC006000000000000;
  v290 = 0xC006000000000000;
  v291 = v35;
  v292 = v37;
  sub_100010430(v284, &v251, &qword_100580A28);
  sub_100009104(v285, &qword_100580A28);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v200 = v263;
  *&v201 = v261;
  v198 = v266;
  v199 = v265;
  v295 = 1;
  v294 = v262;
  v293 = v264;
  v44 = *(v43 + OBJC_IVAR___MTInstagramShareModel_episodeName + 8);
  if (v44)
  {
    v45 = v217;
    v213 = *(v43 + OBJC_IVAR___MTInstagramShareModel_episodeName);
    v46 = *(v215 + *(type metadata accessor for SocialStoryPostView() + 28));
    v47 = *(v43 + OBJC_IVAR___MTInstagramShareModel_publishDate);

    v48 = [v46 stringForObjectValue:v47];
    v190 = v44;
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xE000000000000000;
    }

    *&v251 = v50;
    *(&v251 + 1) = v52;
    v214 = sub_10019FA64();
    v115 = Text.init<A>(_:)();
    v117 = v116;
    v119 = v118;
    v191 = type metadata accessor for Font.Design();
    v120 = *(v191 - 1);
    v189 = *(v120 + 56);
    v192 = (v120 + 56);
    v189(v45, 1, 1, v191);
    static Font.system(size:weight:design:)();
    sub_100009104(v45, &qword_1005809E8);
    v121 = Text.font(_:)();
    v123 = v122;
    v125 = v124;
    v127 = v126;

    sub_1002B0D48(v115, v117, v119 & 1);

    *&v251 = v121;
    *(&v251 + 1) = v123;
    LOBYTE(v252) = v125 & 1;
    *(&v252 + 1) = v127;
    *&v253 = 0x3FE0000000000000;
    static Font.Weight.semibold.getter();
    sub_100168088(&qword_100580A30);
    sub_10034B7FC();
    v128 = v194;
    View.fontWeight(_:)();
    sub_1002B0D48(v121, v123, v125 & 1);

    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v129 = v193;
    (*(v196 + 32))(v193, v128, v197);
    v130 = (v129 + *(v195 + 36));
    v131 = v272;
    v130[4] = v271;
    v130[5] = v131;
    v130[6] = v273;
    v132 = v268;
    *v130 = v267;
    v130[1] = v132;
    v133 = v270;
    v130[2] = v269;
    v130[3] = v133;
    sub_100056724(v129, v216);
    *&v251 = v213;
    *(&v251 + 1) = v190;
    v134 = Text.init<A>(_:)();
    v136 = v135;
    LOBYTE(v121) = v137;
    v138 = v217;
    v189(v217, 1, 1, v191);
    static Font.system(size:weight:design:)();
    sub_100009104(v138, &qword_1005809E8);
    v139 = Text.font(_:)();
    v141 = v140;
    LOBYTE(v128) = v142;

    sub_1002B0D48(v134, v136, v121 & 1);

    static Font.Weight.semibold.getter();
    v143 = Text.fontWeight(_:)();
    v145 = v144;
    LOBYTE(v123) = v146;
    v148 = v147;
    sub_1002B0D48(v139, v141, v128 & 1);

    KeyPath = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v247[103] = v280;
    *&v254[7] = *(&v280 + 1);
    *&v247[55] = v277;
    *&v247[71] = v278;
    *&v247[87] = v279;
    *&v247[7] = v274;
    *&v247[23] = v275;
    *&v247[39] = v276;
    *(v254 + 1) = *v247;
    *(&v254[1] + 1) = *&v247[16];
    *(&v254[2] + 1) = *&v247[32];
    *(&v254[6] + 1) = *&v247[96];
    *(&v254[5] + 1) = *&v247[80];
    *(&v254[4] + 1) = *&v247[64];
    v250 = v123 & 1;
    v248 = 1;
    *&v251 = v143;
    *(&v251 + 1) = v145;
    LOBYTE(v252) = v123 & 1;
    DWORD1(v252) = *&v249[3];
    *(&v252 + 1) = *v249;
    *(&v252 + 1) = v148;
    v253 = KeyPath;
    LOBYTE(v254[0]) = 1;
    *(&v254[3] + 1) = *&v247[48];
    v150 = v202;
    sub_100010430(v216, v202, &qword_1005809F8);
    v229 = v254[5];
    v230 = v254[6];
    v231 = *&v254[7];
    v225 = v254[1];
    v226 = v254[2];
    v227 = v254[3];
    v228 = v254[4];
    v221 = v251;
    v222 = v252;
    v223 = v253;
    v224 = v254[0];
    v151 = v206;
    sub_100010430(v150, v206, &qword_1005809F8);
    v152 = v151 + *(sub_100168088(&qword_100580A40) + 48);
    v153 = v229;
    v235[5] = v229;
    v235[6] = v230;
    v154 = v225;
    v155 = v225;
    v235[1] = v225;
    v235[2] = v226;
    v235[3] = v227;
    v235[4] = v228;
    v156 = v221;
    v232 = v221;
    v233 = v222;
    v234 = v223;
    v235[0] = v224;
    v157 = v230;
    v158 = v230;
    *(v152 + 128) = v229;
    *(v152 + 144) = v157;
    v159 = v226;
    v160 = v227;
    v161 = v226;
    v162 = v227;
    *(v152 + 64) = v154;
    *(v152 + 80) = v159;
    v163 = v228;
    v164 = v228;
    *(v152 + 96) = v160;
    *(v152 + 112) = v163;
    v166 = v221;
    v165 = v222;
    v167 = v222;
    v168 = v223;
    *v152 = v156;
    *(v152 + 16) = v165;
    v170 = v223;
    v169 = v224;
    v171 = v224;
    *(v152 + 32) = v168;
    *(v152 + 48) = v169;
    v244 = v153;
    v245 = v158;
    v240 = v155;
    v241 = v161;
    v242 = v162;
    v243 = v164;
    v236 = v166;
    v237 = v167;
    *&v235[7] = v231;
    *(v152 + 160) = v231;
    v246 = v231;
    v238 = v170;
    v239 = v171;
    sub_100010430(&v251, v220, &qword_100580A48);
    sub_100010430(&v232, v220, &qword_100580A48);
    sub_100009104(&v236, &qword_100580A48);
    sub_100009104(v150, &qword_1005809F8);
    sub_100010430(v151, v205, &qword_1005809E0);
    swift_storeEnumTagMultiPayload();
    sub_100009FAC(&qword_100580A50, &qword_1005809E0);
    v114 = v219;
    _ConditionalContent<>.init(storage:)();
    sub_100009104(&v251, &qword_100580A48);
    sub_100009104(v151, &qword_1005809E0);
    sub_100009104(v216, &qword_1005809F8);
  }

  else
  {
    v53 = *(v43 + OBJC_IVAR___MTInstagramShareModel_creatorName + 8);
    *&v251 = *(v43 + OBJC_IVAR___MTInstagramShareModel_creatorName);
    *(&v251 + 1) = v53;
    v216 = sub_10019FA64();

    v54 = Text.init<A>(_:)();
    v56 = v55;
    v58 = v57;
    v193 = type metadata accessor for Font.Design();
    v59 = *(v193 - 1);
    v190 = *(v59 + 56);
    v194 = (v59 + 56);
    v60 = v217;
    v190(v217, 1, 1, v193);
    static Font.system(size:weight:design:)();
    sub_100009104(v60, &qword_1005809E8);
    v61 = Text.font(_:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    sub_1002B0D48(v54, v56, v58 & 1);

    *&v251 = v61;
    *(&v251 + 1) = v63;
    LOBYTE(v252) = v65 & 1;
    *(&v252 + 1) = v67;
    *&v253 = 0x3FE0000000000000;
    static Font.Weight.semibold.getter();
    sub_100168088(&qword_100580A30);
    sub_10034B7FC();
    v68 = v192;
    View.fontWeight(_:)();
    sub_1002B0D48(v61, v63, v65 & 1);

    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v69 = v191;
    (*(v196 + 32))(v191, v68, v197);
    v70 = (v69 + *(v195 + 36));
    v71 = v272;
    v70[4] = v271;
    v70[5] = v71;
    v70[6] = v273;
    v72 = v268;
    *v70 = v267;
    v70[1] = v72;
    v73 = v270;
    v70[2] = v269;
    v70[3] = v73;
    sub_100056724(v69, v213);
    v74 = *(v214 + OBJC_IVAR___MTInstagramShareModel_showName + 8);
    *&v251 = *(v214 + OBJC_IVAR___MTInstagramShareModel_showName);
    *(&v251 + 1) = v74;

    v75 = Text.init<A>(_:)();
    v77 = v76;
    LOBYTE(v54) = v78;
    v79 = v217;
    v190(v217, 1, 1, v193);
    static Font.system(size:weight:design:)();
    sub_100009104(v79, &qword_1005809E8);
    v80 = Text.font(_:)();
    v82 = v81;
    LOBYTE(v67) = v83;

    sub_1002B0D48(v75, v77, v54 & 1);

    static Font.Weight.semibold.getter();
    v84 = Text.fontWeight(_:)();
    v86 = v85;
    LOBYTE(v56) = v87;
    v89 = v88;
    sub_1002B0D48(v80, v82, v67 & 1);

    v90 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v247[103] = v280;
    *&v235[7] = *(&v280 + 1);
    *&v247[55] = v277;
    *&v247[71] = v278;
    *&v247[87] = v279;
    *&v247[7] = v274;
    *&v247[23] = v275;
    *&v247[39] = v276;
    *(v235 + 1) = *v247;
    *(&v235[1] + 1) = *&v247[16];
    *(&v235[2] + 1) = *&v247[32];
    *(&v235[6] + 1) = *&v247[96];
    *(&v235[5] + 1) = *&v247[80];
    *(&v235[4] + 1) = *&v247[64];
    v250 = v56 & 1;
    v248 = 1;
    *&v232 = v84;
    *(&v232 + 1) = v86;
    LOBYTE(v233) = v56 & 1;
    DWORD1(v233) = *&v249[3];
    *(&v233 + 1) = *v249;
    *(&v233 + 1) = v89;
    v234 = v90;
    LOBYTE(v235[0]) = 1;
    *(&v235[3] + 1) = *&v247[48];
    v91 = v202;
    sub_100010430(v213, v202, &qword_1005809F8);
    v229 = v235[5];
    v230 = v235[6];
    v231 = *&v235[7];
    v225 = v235[1];
    v226 = v235[2];
    v227 = v235[3];
    v228 = v235[4];
    v221 = v232;
    v222 = v233;
    v223 = v234;
    v224 = v235[0];
    v92 = v206;
    sub_100010430(v91, v206, &qword_1005809F8);
    v93 = v92 + *(sub_100168088(&qword_100580A40) + 48);
    v94 = v229;
    v244 = v229;
    v245 = v230;
    v95 = v225;
    v96 = v225;
    v240 = v225;
    v241 = v226;
    v242 = v227;
    v243 = v228;
    v97 = v221;
    v236 = v221;
    v237 = v222;
    v238 = v223;
    v239 = v224;
    v98 = v230;
    v99 = v230;
    *(v93 + 128) = v229;
    *(v93 + 144) = v98;
    v100 = v226;
    v101 = v227;
    v102 = v226;
    v103 = v227;
    *(v93 + 64) = v95;
    *(v93 + 80) = v100;
    v104 = v228;
    v105 = v228;
    *(v93 + 96) = v101;
    *(v93 + 112) = v104;
    v107 = v221;
    v106 = v222;
    v108 = v222;
    v109 = v223;
    *v93 = v97;
    *(v93 + 16) = v106;
    v111 = v223;
    v110 = v224;
    v112 = v224;
    *(v93 + 32) = v109;
    *(v93 + 48) = v110;
    v254[5] = v94;
    v254[6] = v99;
    v254[1] = v96;
    v254[2] = v102;
    v254[4] = v105;
    v254[3] = v103;
    v251 = v107;
    v252 = v108;
    v246 = v231;
    *(v93 + 160) = v231;
    *&v254[7] = v231;
    v254[0] = v112;
    v253 = v111;
    sub_100010430(&v232, v220, &qword_100580A48);
    sub_100010430(&v236, v220, &qword_100580A48);
    sub_100009104(&v251, &qword_100580A48);
    sub_100009104(v91, &qword_1005809F8);
    sub_100010430(v92, v205, &qword_1005809E0);
    swift_storeEnumTagMultiPayload();
    sub_100009FAC(&qword_100580A50, &qword_1005809E0);
    v113 = v219;
    _ConditionalContent<>.init(storage:)();
    sub_100009104(&v232, &qword_100580A48);
    sub_100009104(v92, &qword_1005809E0);
    sub_100009104(v213, &qword_1005809F8);
    v114 = v113;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v216 = v252;
  v217 = v251;
  v213 = *(&v253 + 1);
  v214 = v253;
  LOBYTE(v236) = 1;
  LOBYTE(v232) = BYTE8(v251);
  LOBYTE(v221) = BYTE8(v252);
  v172 = static VerticalAlignment.center.getter();
  v173 = v210;
  *v210 = v172;
  *(v173 + 8) = 0;
  *(v173 + 16) = 0;
  v174 = sub_100168088(&qword_100580A58);
  sub_10034AA98(v215, v173 + *(v174 + 44));
  *(v173 + *(v209 + 36)) = xmmword_10040E560;
  v175 = v207;
  sub_100010430(v218, v207, &qword_100580A08);
  v176 = v295;
  v177 = v294;
  v178 = v293;
  v179 = v208;
  sub_100010430(v114, v208, &qword_100580A00);
  LODWORD(v206) = v236;
  LODWORD(v209) = v232;
  LODWORD(v215) = v221;
  v180 = v211;
  sub_100010430(v173, v211, &qword_1005809D0);
  v181 = v212;
  sub_100010430(v175, v212, &qword_100580A08);
  v182 = sub_100168088(&qword_100580A60);
  v183 = v181 + v182[12];
  *v183 = 0;
  *(v183 + 8) = v176;
  v184 = v200;
  *(v183 + 16) = v201;
  *(v183 + 24) = v177;
  *(v183 + 32) = v184;
  *(v183 + 40) = v178;
  v185 = v198;
  *(v183 + 48) = v199;
  *(v183 + 56) = v185;
  sub_100010430(v179, v181 + v182[16], &qword_100580A00);
  v186 = v181 + v182[20];
  *v186 = 0;
  *(v186 + 8) = v206;
  *(v186 + 16) = v217;
  *(v186 + 24) = v209;
  *(v186 + 32) = v216;
  *(v186 + 40) = v215;
  v187 = v213;
  *(v186 + 48) = v214;
  *(v186 + 56) = v187;
  sub_100010430(v180, v181 + v182[24], &qword_1005809D0);
  sub_100009104(v173, &qword_1005809D0);
  sub_100009104(v219, &qword_100580A00);
  sub_100009104(v218, &qword_100580A08);
  sub_100009104(v180, &qword_1005809D0);
  sub_100009104(v179, &qword_100580A00);
  return sub_100009104(v175, &qword_100580A08);
}

uint64_t sub_10034A5A4@<X0>(void *a1@<X8>)
{
  Path.init(_:)();
  sub_100168088(&qword_100580A70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004007C0;
  *(v2 + 32) = static Color.black.getter();
  *(v2 + 40) = static Color.clear.getter();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Alignment.bottomLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v17[3] = *&v17[27];
  *&v17[11] = *&v17[35];
  *&v17[19] = *&v17[43];
  Path.init(_:)();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004007C0;
  *(v3 + 32) = static Color.black.getter();
  *(v3 + 40) = static Color.clear.getter();
  static UnitPoint.top.getter();
  static UnitPoint.top.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Alignment.bottomLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11[6] = *&v17[51];
  *&v11[22] = *&v17[59];
  *&v11[38] = v18;
  v19[2] = v14;
  v19[3] = v15;
  v19[4] = v16;
  v19[0] = v12;
  v19[1] = v13;
  *v20 = 256;
  *&v20[48] = *&v17[23];
  *&v20[34] = *&v17[16];
  *&v20[18] = *&v17[8];
  *&v20[2] = *v17;
  *&v20[56] = xmmword_10040E570;
  __src[2] = v14;
  __src[3] = v15;
  __src[0] = v12;
  __src[1] = v13;
  __src[7] = *&v20[32];
  __src[8] = *&v20[48];
  __src[5] = *v20;
  __src[6] = *&v20[16];
  __src[4] = v16;
  *&v22[2] = *v11;
  *&v22[34] = *&v11[32];
  *&v22[48] = *(&v18 + 1);
  v21[2] = v8;
  v21[3] = v9;
  v21[4] = v10;
  v21[0] = v6;
  v21[1] = v7;
  *v22 = 256;
  *&v22[18] = *&v11[16];
  *&v22[56] = xmmword_10040E580;
  *(&__src[16] + 8) = *&v22[32];
  *(&__src[17] + 8) = *&v22[48];
  *(&__src[10] + 8) = v7;
  *(&__src[9] + 8) = v6;
  *(&__src[14] + 8) = *v22;
  *(&__src[13] + 8) = v10;
  *(&__src[12] + 8) = v9;
  *(&__src[11] + 8) = v8;
  *&__src[9] = 0x4018000000000000;
  *(&__src[18] + 1) = 0x40746CE38E38E38ELL;
  *(&__src[15] + 8) = *&v22[16];
  memcpy(a1, __src, 0x130uLL);
  v23[2] = v8;
  v23[3] = v9;
  v23[4] = v10;
  v23[1] = v7;
  v23[0] = v6;
  v25 = *v11;
  v24 = 256;
  v26 = *&v11[16];
  *v27 = *&v11[32];
  *&v27[14] = *&v11[46];
  v28 = xmmword_10040E580;
  sub_100010430(v19, v29, &qword_100580A78);
  sub_100010430(v21, v29, &qword_100580A78);
  sub_100009104(v23, &qword_100580A78);
  v29[2] = v14;
  v29[3] = v15;
  v29[4] = v16;
  v29[1] = v13;
  v29[0] = v12;
  v30 = 256;
  v31 = *v17;
  v32 = *&v17[8];
  *v33 = *&v17[16];
  *&v33[14] = *&v17[23];
  v34 = xmmword_10040E570;
  return sub_100009104(v29, &qword_100580A78);
}

void sub_10034A9C8()
{
  Path.move(to:)(0);
  Path.addLine(to:)(__PAIR128__(0x40425C56789ABCE0, 0x40425C56789ABCE0));
  Path.addLine(to:)(__PAIR128__(0x407626E02468ACF1, 0x40425C56789ABCE0));
  Path.addLine(to:)(__PAIR128__(0x4074135555555555, 0));
}

void sub_10034AA30()
{
  Path.move(to:)(0);
  Path.addLine(to:)(0x4074135555555555uLL);
  Path.addLine(to:)(__PAIR128__(0x40425C56789ABCE0, 0x40765EE02468ACF1));
  Path.addLine(to:)(__PAIR128__(0x40425C56789ABCE0, 0x40425C56789ABCE0));
}

uint64_t sub_10034AA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v50 = a2;
  v3 = type metadata accessor for AttributedString();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin();
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_100580A10) - 8;
  __chkstk_darwin();
  v51 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v40 - v11;
  v45 = type metadata accessor for SocialStoryPostView();
  v13 = *(a1 + *(v45 + 24));
  Image.init(uiImage:)();
  (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  v44 = Image.resizable(capInsets:resizingMode:)();

  (*(v6 + 8))(v8, v5);
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v52;
  v15 = v53;
  v16 = v54;
  v17 = v55;
  v18 = v56;
  v19 = v57;
  v20 = &v12[*(v9 + 44)];
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(&v20->i8[v21], v22, v23);
  *v20 = vdupq_n_s64(0x401400E0BEAA8385uLL);
  *(v20->i16 + *(sub_100168088(&qword_100580A18) + 36)) = 256;
  *v12 = v44;
  *(v12 + 1) = v14;
  v12[16] = v15;
  *(v12 + 3) = v16;
  v12[32] = v17;
  *(v12 + 5) = v18;
  *(v12 + 6) = v19;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v44 = v58;
  v43 = v60;
  v42 = v62;
  v41 = v63;
  v66 = 1;
  v65 = v59;
  v64 = v61;
  (*(v48 + 16))(v47, v46 + *(v45 + 20), v49);
  v24 = Text.init(_:)();
  v26 = v25;
  LODWORD(v48) = v27;
  v49 = v28;
  KeyPath = swift_getKeyPath();
  v30 = v51;
  sub_100010430(v12, v51, &qword_100580A10);
  LOBYTE(v14) = v66;
  v31 = v65;
  LOBYTE(v18) = v64;
  v32 = v30;
  v33 = v50;
  sub_100010430(v32, v50, &qword_100580A10);
  v34 = sub_100168088(&qword_100580A68);
  v35 = v33 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = v14;
  *(v35 + 16) = v44;
  *(v35 + 24) = v31;
  *(v35 + 32) = v43;
  *(v35 + 40) = v18;
  v36 = v41;
  *(v35 + 48) = v42;
  *(v35 + 56) = v36;
  v37 = v33 + *(v34 + 64);
  *v37 = v24;
  *(v37 + 8) = v26;
  v38 = v48;
  LOBYTE(v14) = v48 & 1;
  *(v37 + 16) = v48 & 1;
  *(v37 + 24) = v49;
  *(v37 + 32) = KeyPath;
  *(v37 + 40) = 0;
  sub_10034B880(v24, v26, v38 & 1);

  sub_100009104(v12, &qword_100580A10);
  sub_1002B0D48(v24, v26, v14);

  return sub_100009104(v51, &qword_100580A10);
}

uint64_t sub_10034AFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = static Alignment.center.getter();
  v5 = v4;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = sub_100168088(&qword_1005809B8);
  sub_100348CA8(v1, a1 + *(v6 + 44));
  v7 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_100168088(&qword_1005809C0) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  result = sub_100168088(&qword_1005809C8);
  v11 = (a1 + *(result + 36));
  *v11 = v3;
  v11[1] = v5;
  return result;
}

double sub_10034B08C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100580A70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004007C0;
  *(v6 + 32) = static Color.purple.getter();
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  *(v6 + 40) = Color.init(_:red:green:blue:opacity:)();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v7 = v12;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11[8] = v15;
  *&v11[24] = v16;
  *&v11[40] = v17;
  *a1 = v7;
  v8 = v13;
  *(a1 + 24) = v14;
  *(a1 + 8) = v8;
  *(a1 + 40) = 256;
  v9 = *&v11[18];
  *(a1 + 42) = *&v11[2];
  *(a1 + 58) = v9;
  result = *&v11[34];
  *(a1 + 74) = *&v11[34];
  *(a1 + 88) = *&v11[48];
  return result;
}

uint64_t sub_10034B260@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10034B2B8(void *a1)
{
  v2 = type metadata accessor for SocialStoryPostView();
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v16 - v5;
  *(&v16 - v5) = a1;
  v7 = a1;
  sub_100348718();
  v8 = *(v2 + 24);
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() imageNamed:v9];

  if (!v10)
  {
    v10 = [objc_allocWithZone(UIImage) init];
  }

  *&v6[v8] = v10;
  v11 = *(v2 + 28);
  v12 = [objc_allocWithZone(NSDateFormatter) init];
  [v12 setDateStyle:3];
  [v12 setTimeStyle:0];
  *&v6[v11] = v12;
  sub_10034B514(v6, v4);
  sub_100168088(&qword_1005808E8);
  swift_allocObject();
  ImageRenderer.init(content:)();
  v13 = [objc_opt_self() mainScreen];
  [v13 scale];

  ImageRenderer.scale.setter();
  v14 = ImageRenderer.uiImage.getter();

  sub_10034B578(v6);
  return v14;
}

uint64_t type metadata accessor for SocialStoryPostView()
{
  result = qword_100580970;
  if (!qword_100580970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034B514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialStoryPostView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034B578(uint64_t a1)
{
  v2 = type metadata accessor for SocialStoryPostView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10034B5D4()
{
  result = qword_100580900;
  if (!qword_100580900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580900);
  }

  return result;
}

unint64_t sub_10034B628()
{
  result = qword_100580908;
  if (!qword_100580908)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580908);
  }

  return result;
}

uint64_t sub_10034B680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_1005808F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034B718()
{
  type metadata accessor for InstagramShareModel();
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    result = sub_100009F1C(319, &qword_100578C08);
    if (v2 <= 0x3F)
    {
      result = sub_100009F1C(319, &unk_100580980);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10034B7FC()
{
  result = qword_100580A38;
  if (!qword_100580A38)
  {
    sub_100168310(&qword_100580A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580A38);
  }

  return result;
}

uint64_t sub_10034B880(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10034B8A0()
{
  result = qword_100580A80;
  if (!qword_100580A80)
  {
    sub_100168310(&qword_100580A88);
    sub_10034B958();
    sub_100009FAC(&qword_100580A98, &qword_1005809C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580A80);
  }

  return result;
}

unint64_t sub_10034B958()
{
  result = qword_100580A90;
  if (!qword_100580A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580A90);
  }

  return result;
}

unint64_t sub_10034B9C8()
{
  result = qword_100580AA0;
  if (!qword_100580AA0)
  {
    sub_100168310(&qword_100580AA8);
    sub_100009FAC(&qword_100580AB0, &qword_100580AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580AA0);
  }

  return result;
}

unint64_t sub_10034BA8C()
{
  sub_100168088(&qword_100580AC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100400790;
  v1 = type metadata accessor for PodcastsAppIntentsPackage();
  result = sub_10034BB60();
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  qword_1005936A8 = v0;
  return result;
}

uint64_t sub_10034BAF4()
{
  if (qword_100572868 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10034BB60()
{
  result = qword_100580AC8;
  if (!qword_100580AC8)
  {
    type metadata accessor for PodcastsAppIntentsPackage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580AC8);
  }

  return result;
}

CSSearchableItem __swiftcall AppCoreSpotlightEntityAnnotator.annotate(item:with:)(CSSearchableItem item, NSManagedObject with)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(&v10 + 1) = type metadata accessor for EpisodeEntity();
    v11 = sub_10034C4A0(&qword_100580AF0, &type metadata accessor for EpisodeEntity);
    sub_10000E680(&v9);
    v3 = with.super.isa;
    EpisodeEntity.init(model:)();
LABEL_9:
    sub_1000109E4(&v9, v12);
    sub_1000044A0(v12, v12[3]);
    CSSearchableItem.associateAppEntity<A>(_:priority:)();
    sub_100004590(v12);
    goto LABEL_10;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(&v10 + 1) = type metadata accessor for ShowEntity();
    v11 = sub_10034C4A0(&qword_100580AE8, &type metadata accessor for ShowEntity);
    sub_10000E680(&v9);
    v4 = with.super.isa;
    ShowEntity.init(model:)();
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(&v10 + 1) = type metadata accessor for ChannelEntity();
    v11 = sub_10034C4A0(&qword_100580AE0, &type metadata accessor for ChannelEntity);
    sub_10000E680(&v9);
    v5 = with.super.isa;
    ChannelEntity.init(model:)();
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(&v10 + 1) = type metadata accessor for StationEntity();
    v11 = sub_10034C4A0(&qword_100580AD8, &type metadata accessor for StationEntity);
    sub_10000E680(&v9);
    v6 = with.super.isa;
    StationEntity.init(model:)();
    goto LABEL_9;
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  sub_10034C438(&v9);
LABEL_10:

  return item.super.isa;
}

CSSearchableItem __swiftcall AppCoreSpotlightEntityAnnotator.annotate(item:with:)(CSSearchableItem item, MTPlayerItem *with)
{
  isa = item.super.isa;
  v3 = type metadata accessor for EpisodeEntity();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(MTPlayerItem *)with episode];
  if (v8)
  {
    v9 = v8;
    EpisodeEntity.init(model:)();
    sub_10034C4A0(&qword_100580AF0, &type metadata accessor for EpisodeEntity);
    CSSearchableItem.associateAppEntity<A>(_:priority:)();

    (*(v4 + 8))(v7, v3);
  }

  v10 = isa;

  return v10;
}

double sub_10034C1F0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(a2 + 24) = type metadata accessor for EpisodeEntity();
    *(a2 + 32) = sub_10034C4A0(&qword_100580AF0, &type metadata accessor for EpisodeEntity);
    sub_10000E680(a2);
    v4 = a1;
    EpisodeEntity.init(model:)();
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *(a2 + 24) = type metadata accessor for ShowEntity();
      *(a2 + 32) = sub_10034C4A0(&qword_100580AE8, &type metadata accessor for ShowEntity);
      sub_10000E680(a2);
      v6 = a1;
      ShowEntity.init(model:)();
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *(a2 + 24) = type metadata accessor for ChannelEntity();
        *(a2 + 32) = sub_10034C4A0(&qword_100580AE0, &type metadata accessor for ChannelEntity);
        sub_10000E680(a2);
        v7 = a1;
        ChannelEntity.init(model:)();
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          *(a2 + 24) = type metadata accessor for StationEntity();
          *(a2 + 32) = sub_10034C4A0(&qword_100580AD8, &type metadata accessor for StationEntity);
          sub_10000E680(a2);
          v8 = a1;
          StationEntity.init(model:)();
        }

        else
        {
          *(a2 + 32) = 0;
          result = 0.0;
          *a2 = 0u;
          *(a2 + 16) = 0u;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10034C438(uint64_t a1)
{
  v2 = sub_100168088(&qword_100580AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10034C4A0(unint64_t *a1, void (*a2)(uint64_t))
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

id AppCoreSpotlightEntityAnnotator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCoreSpotlightEntityAnnotator();
  return objc_msgSendSuper2(&v2, "init");
}

id AppCoreSpotlightEntityAnnotator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCoreSpotlightEntityAnnotator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MTEpisodeUnavailableUtil.showDialog(for:)(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&unk_10057BB38);
  __chkstk_darwin();
  v5 = v15 - v4;
  v6 = type metadata accessor for PlaybackController.ErrorDialog();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = a1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
    PlaybackController.ErrorDialog.error.getter();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_10034C76C(v5);
    swift_errorRetain();
  }

  v12 = static EpisodeUnavailableReason.Translator.episodeUnavailableReason(for:)();
  v13 = EpisodeUnavailableReason.rawValue.getter();
  if (v13 != EpisodeUnavailableReason.rawValue.getter())
  {
    [v2 showDialogForReason:v12 podcastTitle:0 completion:0];
  }
}

uint64_t sub_10034C76C(uint64_t a1)
{
  v2 = sub_100168088(&unk_10057BB38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10034C81C(uint64_t a1, unsigned __int8 a2, __int16 a3)
{
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_100168088(&qword_100576AF8);
      if ((a3 & 1) == 0)
      {
        goto LABEL_17;
      }

      if ((a3 & 0x100) != 0)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100400790;
        *(v9 + 32) = a1;
        *(v9 + 40) = 1;
        return 3;
      }

      else
      {
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1004007C0;
        *(v7 + 32) = 1;
        result = 2;
        *(v7 + 40) = 2;
        *(v7 + 48) = a1;
        *(v7 + 56) = 1;
      }

      return result;
    }

    if (a2 == 4)
    {
      if (a1 <= 4)
      {
        if (a1 == 1)
        {
          if ((a3 & 1) == 0)
          {
            return 1;
          }

          if ((a3 & 0x100) == 0)
          {
            return 2;
          }
        }

        else
        {
          if (a1 != 2 || (a3 & 1) == 0)
          {
            return 1;
          }

          if ((a3 & 0x100) == 0)
          {
            return 2;
          }
        }

        return 3;
      }

      if (a1 == 5 || a1 == 6)
      {
        if ((a3 & 0x100) != 0)
        {
          return 1;
        }

        return 1;
      }

      if (a1 == 9)
      {
        return 2;
      }
    }

    return 1;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      sub_100168088(&qword_100576AF8);
LABEL_17:
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100400790;
      *(v8 + 32) = a1;
      result = 1;
      *(v8 + 40) = 1;
      return result;
    }

    return 1;
  }

  sub_100168088(&qword_100576AF8);
  v5 = swift_allocObject();
  result = 0;
  if ((a3 & 0x100) != 0)
  {
    *(v5 + 16) = xmmword_100400790;
    *(v5 + 32) = a1;
    *(v5 + 40) = 0;
  }

  else
  {
    *(v5 + 16) = xmmword_1004007C0;
    *(v5 + 32) = a1;
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    *(v5 + 56) = 2;
  }

  return result;
}

uint64_t sub_10034CA50(uint64_t a1, char a2, char a3)
{
  v6 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v23 - v10;
  if (!a2)
  {
    sub_100168088(&qword_100576AF8);
    v16 = swift_allocObject();
    result = 0;
    *(v16 + 16) = xmmword_1004007E0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 2;
    *(v16 + 48) = a1;
    *(v16 + 56) = 0;
    goto LABEL_13;
  }

  if (a2 == 2)
  {
    if ((a3 & 1) == 0)
    {
      sub_100168088(&qword_100576AF8);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1004007C0;
      *(v18 + 32) = a1;
      result = 1;
      *(v18 + 40) = 1;
      *(v18 + 48) = 4;
      *(v18 + 56) = 2;
      return result;
    }

    v12 = v9;
    static Logger.podcastsStatesCoordination.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v15, 2u);
    }

    (*(v6 + 8))(v11, v12);
    sub_100168088(&qword_100576AF8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1004007E0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 2;
    *(v16 + 48) = a1;
    result = 1;
    *(v16 + 56) = 1;
LABEL_13:
    *(v16 + 64) = 4;
    *(v16 + 72) = 2;
    return result;
  }

  if (a2 != 4)
  {
    return 2;
  }

  if (a1 > 6)
  {
    if (a1 == 7 && (a3 & 1) != 0)
    {
      return 3;
    }

    return 2;
  }

  if (a1)
  {
    if (a1 != 4)
    {
      return 2;
    }

    return 3;
  }

  else if (a3)
  {
    v19 = v9;
    static Logger.podcastsStatesCoordination.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v22, 2u);
    }

    (*(v6 + 8))(v8, v19);
    return 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10034CE30(uint64_t a1, char a2, char a3)
{
  v6 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  if (!a2)
  {
    sub_100168088(&qword_100576AF8);
    v14 = swift_allocObject();
    v12 = 0;
    *(v14 + 16) = xmmword_100400790;
    *(v14 + 32) = a1;
    *(v14 + 40) = 0;
    return v12;
  }

  if (a2 == 2)
  {
    sub_100168088(&qword_100576AF8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100400790;
    *(v13 + 32) = a1;
    v12 = 1;
    *(v13 + 40) = 1;
    return v12;
  }

  if (a2 != 4)
  {
    return 3;
  }

  if (a1 <= 4)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 == 3)
    {
      return 2;
    }

    return 3;
  }

  if (a1 == 5)
  {
    v16 = v9;
    static Logger.podcastsStatesCoordination.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v12 = 2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v19, 2u);

      (*(v6 + 8))(v11, v16);
    }

    else
    {

      (*(v6 + 8))(v11, v16);
      return 2;
    }
  }

  else
  {
    if (a1 != 6)
    {
      return 3;
    }

    if (a3)
    {
      return 2;
    }

    else
    {
      v20 = v9;
      static Logger.podcastsStatesCoordination.getter();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "The show has play state but for some reason it's in Store state. This doesn't make any sense, with playState a show should be at least Implicitly Followed. Figure out what's going on.", v23, 2u);
      }

      (*(v6 + 8))(v8, v20);
      return 2;
    }
  }

  return v12;
}

uint64_t sub_10034D1DC(uint64_t a1, unsigned __int8 a2, __int16 a3)
{
  if (a2 - 2 >= 2)
  {
    if (a2 == 1)
    {
      sub_100168088(&qword_100576AF8);
      if (a3)
      {
        if ((a3 & 0x100) != 0)
        {
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_100400790;
          *(v9 + 32) = a1;
          *(v9 + 40) = 0;
          return 3;
        }

        else
        {
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_1004007E0;
          *(v7 + 32) = a1;
          *(v7 + 40) = 0;
          *(v7 + 48) = 1;
          result = 2;
          *(v7 + 56) = 2;
          *(v7 + 64) = 0;
          *(v7 + 72) = 2;
        }
      }

      else
      {
        v8 = swift_allocObject();
        if ((a3 & 0x100) != 0)
        {
          *(v8 + 16) = xmmword_100400790;
          *(v8 + 32) = a1;
          *(v8 + 40) = 0;
        }

        else
        {
          *(v8 + 16) = xmmword_1004007C0;
          *(v8 + 32) = a1;
          *(v8 + 40) = 0;
          *(v8 + 48) = 0;
          *(v8 + 56) = 2;
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100168088(&qword_100576AF8);
    v4 = swift_allocObject();
    result = 0;
    *(v4 + 16) = xmmword_100400790;
    *(v4 + 32) = a1;
    *(v4 + 40) = 1;
  }

  return result;
}

uint64_t sub_10034D36C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v98 = a5;
  v99 = a3;
  v100 = a4;
  v7 = type metadata accessor for Logger();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin();
  v101 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PodcastStateModel();
  v103 = *(v9 - 8);
  __chkstk_darwin();
  v95 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v85 - v11;
  PodcastStateModel.uuid.getter();
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 predicateForLibraryEpisodesOnPodcastUuid:v14];

  v16 = kMTEpisodeEntityName;
  v94 = [a2 hasAnyObjectsInEntity:kMTEpisodeEntityName satisfyingPredicate:v15];

  PodcastStateModel.uuid.getter();
  v17 = [v13 predicateForHasAnyVisualPlayState];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v13 predicateForAllEpisodesOnPodcastUuid:v18];

  v20 = [v17 AND:v19];
  v21 = v103;

  v22 = [a2 hasAnyObjectsInEntity:v16 satisfyingPredicate:v20];

  v23 = *(v21 + 16);
  v23(v12, a1, v9);
  v24 = v102;
  v25 = PodcastStateModel.sanitizedState()();
  if (v24)
  {
    v27 = *(v21 + 8);
    v26 = v21 + 8;
    v27(v12, v9);
  }

  else
  {
    v28 = v25;
    v93 = a1;
    v29 = v95;
    v92 = v94 ^ 1;
    v94 = v22 ^ 1;
    v30 = *(v21 + 8);
    v103 = v21 + 8;
    v91 = v30;
    v30(v12, v9);
    v89 = v28;
    v31 = v28;
    if (v28 > 1u)
    {
      v32 = v101;
      if (v31 == 2)
      {
        v34 = sub_10034CA50(v99, v100, v94);
      }

      else
      {
        v34 = sub_10034CE30(v99, v100, v94);
      }
    }

    else
    {
      v32 = v101;
      if (v31)
      {
        if (v22)
        {
          v37 = 0;
        }

        else
        {
          v37 = 256;
        }

        v34 = sub_10034C81C(v99, v100, v37 | v92);
      }

      else
      {
        if (v22)
        {
          v33 = 0;
        }

        else
        {
          v33 = 256;
        }

        v34 = sub_10034D1DC(v99, v100, v33 | v92);
      }
    }

    v26 = v34;
    v38 = v35;
    LODWORD(v102) = v36;
    static Logger.podcastsStatesCoordination.getter();
    v39 = static os_log_type_t.default.getter();
    v23(v29, v93, v9);
    v40 = Logger.logObject.getter();
    v90 = v39;
    if (os_log_type_enabled(v40, v39))
    {
      v87 = v40;
      v88 = 0;
      v41 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v108 = v86;
      *v41 = 136382211;
      v42 = PodcastStateModel.id.getter();
      v44 = v43;
      v46 = v45;
      v47 = PodcastIdentifier.description.getter();
      v93 = v38;
      v48 = v47;
      v50 = v49;
      sub_1001F876C(v42, v44, v46);
      v91(v29, v9);
      v51 = sub_1000153E0(v48, v50, &v108);

      *(v41 + 4) = v51;
      v52 = v26;
      *(v41 + 12) = 2080;
      LOBYTE(v106) = v89;
      sub_1001F8788();
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = sub_1000153E0(v53, v54, &v108);

      *(v41 + 14) = v55;
      *(v41 + 22) = 2080;
      v56 = sub_1002C99B4(v99, v100);
      v58 = sub_1000153E0(v56, v57, &v108);

      *(v41 + 24) = v58;
      *(v41 + 32) = 2080;
      LOBYTE(v106) = v92;
      sub_1001F87DC();
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = sub_1000153E0(v59, v60, &v108);

      *(v41 + 34) = v61;
      *(v41 + 42) = 2080;
      LOBYTE(v106) = v94;
      sub_1001F8830();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = sub_1000153E0(v62, v63, &v108);

      *(v41 + 44) = v64;
      *(v41 + 52) = 2080;
      v65 = PodcastsStateChangeOrigin.description.getter();
      v67 = sub_1000153E0(v65, v66, &v108);

      *(v41 + 54) = v67;
      *(v41 + 62) = 2080;
      v68 = 0x697469736E617254;
      if (v102)
      {
        v68 = 0x3A6E6F28706F6F6CLL;
      }

      v69 = 0xEF203A6F74286E6FLL;
      if (v102)
      {
        v69 = 0xE900000000000020;
      }

      v106 = v68;
      v107 = v69;
      object = 0xE100000000000000;
      v105._countAndFlagsBits = 46;
      v105._object = 0xE100000000000000;
      v104 = v26;

      v71 = v93;
      v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v72);

      String.append(_:)(v105);

      if (v71)
      {
        v105._countAndFlagsBits = 0x746365666665202CLL;
        v105._object = 0xEB00000000203A73;

        v73 = Array.description.getter();
        v75 = v74;

        v76._countAndFlagsBits = v73;
        v76._object = v75;
        String.append(_:)(v76);

        v77._countAndFlagsBits = 41;
        v77._object = 0xE100000000000000;
        String.append(_:)(v77);
        countAndFlagsBits = v105._countAndFlagsBits;
        object = v105._object;
      }

      else
      {
        countAndFlagsBits = 41;
      }

      v80 = v96;
      v79 = v97;
      v81 = object;
      String.append(_:)(*&countAndFlagsBits);

      v82 = sub_1000153E0(v106, v107, &v108);

      *(v41 + 64) = v82;
      v83 = v87;
      _os_log_impl(&_mh_execute_header, v87, v90, "Show with %{private}s; State: .%s; Event: (.%s, .%s, .%s, from: .%s) ==> %s", v41, 0x48u);
      swift_arrayDestroy();

      (*(v80 + 8))(v101, v79);
      return v52;
    }

    else
    {

      v91(v29, v9);
      (*(v96 + 8))(v32, v97);
    }
  }

  return v26;
}

uint64_t sub_10034DB8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PodcastsURLEpisodeParameters();
  v49 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v44 - v7;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v11 = type metadata accessor for CLSContextMetadata();
  v50 = *(v11 - 1);
  __chkstk_darwin();
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v44 - v14;
  if (([objc_opt_self() isEmpty:{objc_msgSend(v2, "storeCollectionId")}] & 1) != 0 || (v16 = objc_msgSend(v2, "title")) == 0)
  {
    v30 = *(v50 + 56);

    return v30(a1, 1, 1, v11);
  }

  else
  {
    v47 = v4;
    v48 = a1;
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v19;
    v46 = v18;

    *&v54[0] = [v2 storeCollectionId];
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    v13[40] = 1;
    *(v13 + 6) = 0;
    v23 = v11[9];
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(&v13[v23], 1, 1, v24);
    v25 = &v13[v11[10]];
    *v25 = variable initialization expression of MTNotificationSettingsPresentationController.activePresentedSettingsViewController;
    v25[1] = 0;
    *&v13[v11[11]] = 0;
    *v13 = 0;
    *(v13 + 1) = v20;
    v26 = v45;
    v27 = v46;
    *(v13 + 2) = v22;
    *(v13 + 3) = v27;
    *(v13 + 4) = v26;
    sub_100310F08(v54, v51);
    v28 = v52;
    if (v52)
    {
      v29 = v53;
      sub_1000044A0(v51, v52);
      v28 = sub_1002267B4(v28, v29);
      sub_1002268BC(v54);
      sub_100004590(v51);
    }

    else
    {
      sub_1002268BC(v54);
      sub_1002268BC(v51);
    }

    v32 = v47;
    *&v13[v11[12]] = v28;
    sub_100310F78(v13, v15);
    v15[40] = 0;
    PodcastsURLEpisodeParameters.init(podcastUuid:episodeUuid:storeCollectionId:storeTrackId:)();
    [v2 storeCollectionId];
    PodcastsURLEpisodeParameters.storeCollectionId.setter();
    type metadata accessor for PodcastsURLScheme();
    v33 = v49;
    (*(v49 + 16))(v6, v8, v32);
    type metadata accessor for PodcastsURLShowCommand();
    swift_allocObject();
    PodcastsURLShowCommand.init(params:)();
    static PodcastsURLScheme.buildURL(for:)();

    (*(v33 + 8))(v8, v32);
    sub_1001FDDA8(v10, &v15[v11[9]]);
    v34 = [v2 uuid];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = CLSContextThumbnailMaximumAllowedDimension;
      v40 = swift_allocObject();
      *(v40 + 16) = v36;
      *(v40 + 24) = v38;
      *(v40 + 32) = v39;
      *(v40 + 40) = v39;
      v41 = sub_10034E20C;
    }

    else
    {
      v41 = variable initialization expression of MTNotificationSettingsPresentationController.activePresentedSettingsViewController;
      v40 = 0;
    }

    v42 = &v15[v11[10]];

    *v42 = v41;
    *(v42 + 1) = v40;
    v43 = v48;
    sub_100310FDC(v15, v48);
    (*(v50 + 56))(v43, 0, 1, v11);
    return sub_100311040(v15);
  }
}

id sub_10034E10C(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 artworkForPodcastUuid:v5 size:0 triggerDownload:{a1, a2}];

  v7 = [v6 CGImage];
  return v7;
}

void sub_10034E218()
{
  if (*(v0 + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_podcastUuid + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_downloadManager);
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 numberOfDownloadsFrom:v2];

    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v4 = [*(v0 + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_downloadManager) numberOfDownloads];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  v3 = v4;
LABEL_6:
  if (v3 != *(v0 + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_currentValue))
  {
    *(v0 + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_currentValue) = v3;
    v5 = (v0 + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_didChange);
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {

      v6(v3);
      sub_1000112B4(v6);
    }
  }
}

id sub_10034E31C()
{
  [*&v0[OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_downloadsNotifier] unregisterForUpdates:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadCountObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t (*sub_10034E4B0())()
{
  v1 = (*v0 + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_didChange);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1002ABF4C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2);
  return v5;
}

uint64_t sub_10034E558(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1002ABF48;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*v2 + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_didChange);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  return sub_1000112B4(v8);
}

void (*sub_10034E5FC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_didChange;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_1002ABF40;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *(v4 + 24) = v11;
  *(v4 + 32) = v10;
  return sub_10034E6D4;
}

void sub_10034E6D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1002ABF38;
    }

    else
    {
      v4 = sub_1002ABF48;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v2[5] + v2[6]);
  *v7 = v4;
  v7[1] = v6;
  swift_endAccess();

  free(v2);
}

char *sub_10034E790(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for DownloadCountObserver());

  return sub_10034E800(a1, a2, a3, a4, v8);
}

char *sub_10034E800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{

  *&a5[OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_currentValue] = 0;
  v8 = &a5[OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_didChange];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a5[OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_podcastUuid];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a5[OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_downloadManager] = a1;
  *&a5[OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_downloadsNotifier] = a2;
  v15.receiver = a5;
  v15.super_class = type metadata accessor for DownloadCountObserver();
  v10 = a2;
  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = *&v11[OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_downloadsNotifier];
  v13 = v11;
  [v12 registerForUpdates:{v13, v15.receiver, v15.super_class}];
  sub_10034E218();

  return v13;
}

uint64_t sub_10034E8EC()
{
  v1 = v0;
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v9 = *(v0 + 64);
  if (v9)
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v5 + 8))(v7, v4);
    LOBYTE(v9) = InteractionContext.Page.isShowPage.getter();
    result = sub_1002AF030(v3, &type metadata accessor for InteractionContext.Page);
  }

  *(v1 + 72) = v9 & 1;
  return result;
}

uint64_t sub_10034EA68()
{
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72) == 1 && (v3 = *(v0 + 56)) != 0)
  {
    v4 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v3 + v4, v2);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for PodcastContextActionDataType;
    }

    else
    {
      type metadata accessor for PodcastContextActionDataType.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v7 = objc_opt_self();
        v8 = String._bridgeToObjectiveC()();

        v9 = [v7 predicateForAllEpisodesOnPodcastUuid:v8];

        sub_1000044A0((v0 + 16), *(v0 + 40));
        v6 = dispatch thunk of LibraryActionControllerProtocol.hasEpisodesThatAre(visuallyPlayed:baseEpisodesPredicate:)();

        return v6 & 1;
      }

      v5 = type metadata accessor for PodcastContextActionDataType.Kind;
    }

    sub_1002AF030(v2, v5);
    v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_10034EC1C()
{
  sub_100168088(&unk_10057BB90);
  __chkstk_darwin();
  v2 = &v16[-v1];
  v3 = type metadata accessor for PresentationSource();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 72) == 1)
  {
    v9 = *(v0 + 56);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
      swift_beginAccess();
      sub_1001A1560(v9 + v10, v8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = type metadata accessor for PodcastContextActionDataType;
      }

      else
      {
        type metadata accessor for PodcastContextActionDataType.Kind(0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          swift_beginAccess();
          if (*(v0 + 64))
          {
            v12 = v0;

            dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

            if ((*(v4 + 48))(v2, 1, v3) != 1)
            {
              (*(v4 + 32))(v6, v2, v3);
              v13 = objc_opt_self();
              v14 = String._bridgeToObjectiveC()();

              v15 = [v13 predicateForAllEpisodesOnPodcastUuid:v14];

              sub_1000044A0((v12 + 16), *(v12 + 40));
              dispatch thunk of LibraryActionControllerProtocol.handleMarkingEpisodesAsPlayed(source:baseEpisodesPredicate:)();

              (*(v4 + 8))(v6, v3);
              return;
            }
          }

          else
          {

            (*(v4 + 56))(v2, 1, 1, v3);
          }

          sub_100009104(v2, &unk_10057BB90);
          return;
        }

        v11 = type metadata accessor for PodcastContextActionDataType.Kind;
      }

      sub_1002AF030(v8, v11);
    }
  }
}

uint64_t sub_10034EF7C()
{
  sub_100004590(v0 + 16);

  v1 = OBJC_IVAR____TtC8Podcasts28MarkAllAsPlayedContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts28MarkAllAsPlayedContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MarkAllAsPlayedContextAction()
{
  result = qword_100580C98;
  if (!qword_100580C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034F0B4()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10034F1C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28MarkAllAsPlayedContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10034F254(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_10034F2B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10034F314(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_10034F378(uint64_t a1)
{
  result = sub_10034F400(&qword_100580DC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10034F3BC(uint64_t a1)
{
  result = sub_10034F400(&qword_100580DC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10034F400(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarkAllAsPlayedContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10034F488()
{
  v8 = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 mainOrPrivateContext];

  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = &v8 + 1;
  v3[4] = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1003502B4;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004EFAA0;
  v5 = _Block_copy(aBlock);

  [v2 performBlockAndWait:v5];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 72) = v8;
  }

  return result;
}

void sub_10034F640(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v8 + v9, v7);
    v10 = sub_100215D14();
    sub_100350254(v7, type metadata accessor for PodcastContextActionDataType);
    if (v10)
    {
      [v10 hidesPlayedEpisodes];
      *a2 = MTPodcastHidesPlayedEpisodesResolved();
      v11 = [v10 subscribed];

      *a3 = v11;
    }
  }
}

uint64_t sub_10034F758()
{
  v1 = type metadata accessor for InteractionContext.Origin();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v20 - v5;
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InteractionContext();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v20 - v13;
  if (*(v0 + 56))
  {
    v22 = v2;
    swift_beginAccess();
    if (*(v0 + 64))
    {
      v21 = v0;

      dispatch thunk of ContextActionsConfiguration.context.getter();

      (*(v10 + 32))(v14, v12, v9);
      InteractionContext.page.getter();
      v15 = InteractionContext.Page.isShowPage.getter();
      sub_100350254(v8, &type metadata accessor for InteractionContext.Page);
      if (v15)
      {
        InteractionContext.origin.getter();
        v16 = v22;
        (*(v22 + 104))(v4, enum case for InteractionContext.Origin.local(_:), v1);
        v17 = static InteractionContext.Origin.== infix(_:_:)();
        v18 = *(v16 + 8);
        v18(v4, v1);
        v18(v6, v1);
        (*(v10 + 8))(v14, v9);
        if (v17)
        {
          return *(v21 + 72);
        }
      }

      else
      {
        (*(v10 + 8))(v14, v9);
      }
    }
  }

  return 0;
}

void sub_10034FA68()
{
  if (*(v0 + 73))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v7[4] = sub_100350244;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000F038;
  v7[3] = &unk_1004EFA28;
  v5 = _Block_copy(v7);

  v6 = v3;

  [v6 performBlock:v5];
  _Block_release(v5);
}

void sub_10034FBA4(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v8 + v9, v7);
    v10 = sub_100215D14();
    sub_100350254(v7, type metadata accessor for PodcastContextActionDataType);
    if (v10)
    {
      [v10 setHidesPlayedEpisodes:a2];
      [a3 saveInCurrentBlock];
    }
  }
}

uint64_t sub_10034FCAC()
{
  sub_100004590(v0 + 16);

  sub_1001C2B94(v0 + OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_contextActionType);

  v1 = OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HidePlayedEpisodesPodcastContextAction()
{
  result = qword_100580DF8;
  if (!qword_100580DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034FDD8()
{
  sub_1001C25E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsLabel();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10034FEDC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x8000000100471370;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10034FF7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_systemImageName);

  return v1;
}

uint64_t sub_10034FFB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100350054(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1003500B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_100350114(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_100350178(uint64_t a1)
{
  result = sub_100350200(&unk_1005822C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003501BC(uint64_t a1)
{
  result = sub_100350200(&qword_100580F48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100350200(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HidePlayedEpisodesPodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100350254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003502C8()
{
  v1 = v0;
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v2 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100400790;
  v4 = &v1[OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input];
  if (v1[OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input + 8])
  {
    goto LABEL_21;
  }

  if (*v4 >> 62)
  {
    v17 = v3;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v17;
  }

  else
  {
    v5 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = v5;
  os_log(_:dso:log:_:_:)();

  if (v4[8])
  {
    goto LABEL_21;
  }

  v6 = *v4;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_16:

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_7:
  v48 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v44 = v1;
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      ++v9;
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v7;
      v12 = sub_100168088(&qword_100574420);
      v13 = objc_allocWithZone(v12);
      v14 = &v13[*((swift_isaMask & *v13) + 0x180)];
      *v14 = 0;
      v14[8] = 2;
      v15 = &v13[*((swift_isaMask & *v13) + 0x188)];
      *v15 = sub_100350EAC;
      v15[1] = v11;
      v47.receiver = v13;
      v47.super_class = v12;

      objc_msgSendSuper2(&v47, "init");
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v9);
    sub_10003B684(v6, 0);

    v16 = v48;
    v1 = v44;
LABEL_17:
    v18 = static OS_os_log.default.getter();
    v19 = objc_allocWithZone(type metadata accessor for GroupOperation());
    v20 = sub_100394FF8(v16, 1, v18);

    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v22 = sub_100168088(&unk_10057A690);
    v23 = objc_allocWithZone(v22);
    v24 = &v23[*((swift_isaMask & *v23) + 0x180)];
    *v24 = 0;
    v24[8] = 2;
    v25 = &v23[*((swift_isaMask & *v23) + 0x188)];
    *v25 = sub_100350EB4;
    v25[1] = v21;
    v46.receiver = v23;
    v46.super_class = v22;
    v26 = v1;
    v27 = objc_msgSendSuper2(&v46, "init");
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = &v20[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    v30 = *&v20[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    *v29 = sub_100182704;
    v29[1] = v28;

    sub_1000112B4(v30);

    ObjectType = swift_getObjectType();
    v32 = swift_conformsToProtocol2();
    if (v32)
    {
      v33 = v32;
      v34 = swift_allocObject();
      *(v34 + 24) = v33;
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v34;
      v37 = *(v33 + 72);
      v38 = v20;

      v37(sub_1000319D0, v36, ObjectType, v33);

      v45.receiver = v27;
      v45.super_class = type metadata accessor for BaseOperation();
      objc_msgSendSuper2(&v45, "addDependency:", v38);

      v39 = *&v26[OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_serialQueue];
      sub_100168088(&unk_100574680);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100405740;
      *(v40 + 32) = v38;
      *(v40 + 40) = v27;
      sub_100009F1C(0, &unk_10057A6A0);
      v41 = v38;
      v42 = v27;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v39 addOperations:isa waitUntilFinished:0];

      return;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003509BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_5;
  }

  v9 = *(Strong + OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_beforeTakeOff);
  v10 = Strong;

  sub_100013CB4(v9);

  if (!v9)
  {
LABEL_5:
    v11 = 0;
    v13 = 0;
    v15 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v11 = v9(a4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1000112B4(v9);
LABEL_6:
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10002DD38;
  *(v18 + 24) = v7;
  sub_10016E94C(v11, v13, v15, v17, sub_100350ED0, v18);

  return sub_100183CD8(v11);
}

uint64_t sub_100350B48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v4 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)();

  if (*(a1 + OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input + 8))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = *(a1 + OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input);
    v6 = *(a1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v6)
    {
      v10 = sub_100168088(&unk_100581790);
      v8 = v5;
      v9 = 0;
      sub_10003B668(v5, 0);
      sub_10003B668(v5, 0);
      sub_100013CB4(v6);
      v6(&v8);
      sub_1000112B4(v6);
      sub_100004590(&v8);
    }

    else
    {
    }

    sub_10003172C();
    result = sub_10003B684(v5, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_100350D70()
{
  sub_1000112B4(*(v0 + OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_beforeTakeOff));
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input);
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input + 8);

  return sub_10003B684(v1, v2);
}

id sub_100350DCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartJobPipelinesOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100350E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_10003B668(v3, v4);
}

uint64_t sub_100350F00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v46 = a6;
  v47 = a5;
  v54 = a3;
  v55 = a4;
  v56 = a2;
  v57 = type metadata accessor for Logger();
  v7 = *(v57 - 8);
  __chkstk_darwin(v57);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

    return v47(0);
  }

  result = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return v47(0);
  }

LABEL_3:
  v60 = result - 1;
  if (result >= 1)
  {
    v11 = 0;
    v12 = v61 & 0xC000000000000001;
    v53 = (v7 + 8);
    v51 = v63;
    v52 = CLSPredicateKeyPathParent;
    v13 = &type metadata for String;
    *(&v14 + 1) = 4;
    v49 = xmmword_1004007C0;
    *&v14 = 136315138;
    v48 = v14;
    v58 = v9;
    v50 = v61 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v61 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = [v15 identifierPath];
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = *(v18 + 16);

      if (v19 > 2)
      {
        sub_100009F1C(0, &qword_1005748A0);
        static OS_os_log.classKit.getter();
        v35 = v16;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          aBlock[0] = v39;
          *v38 = v48;
          v40 = [v35 identifierPath];
          v59 = v11;
          v41 = v40;
          static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = Array.description.getter();
          v44 = v43;

          v45 = sub_1000153E0(v42, v44, aBlock);

          *(v38 + 4) = v45;
          v11 = v59;
          _os_log_impl(&_mh_execute_header, v36, v37, "Invalid show context - %s", v38, 0xCu);
          sub_100004590(v39);

          v9 = v58;
        }

        (*v53)(v9, v57);
        if (v60 == v11)
        {
          return v47(0);
        }
      }

      else
      {
        v20 = swift_allocObject();
        v21 = v55;
        v22 = v13;
        v23 = v54;
        v20[2] = v56;
        v20[3] = v23;
        v20[4] = v21;
        v20[5] = v16;
        v59 = sub_100009F1C(0, &qword_1005751F0);
        sub_100168088(&unk_100574670);
        v24 = swift_allocObject();
        *(v24 + 16) = v49;
        *(v24 + 56) = sub_100009F1C(0, &qword_100575278);
        *(v24 + 64) = sub_100352A68(&qword_100580FC8, &qword_100575278);
        v25 = v52;
        *(v24 + 32) = v52;
        *(v24 + 96) = sub_100009F1C(0, &unk_100575050);
        *(v24 + 104) = sub_100352A68(&qword_100580FD0, &unk_100575050);
        *(v24 + 72) = v16;
        v26 = v16;
        v13 = v22;

        v27 = v21;
        v28 = v25;
        v29 = NSPredicate.init(format:_:)();
        v30 = [objc_opt_self() shared];
        v31 = swift_allocObject();
        v31[2] = v29;
        v31[3] = sub_100352A5C;
        v31[4] = v20;
        v63[2] = sub_100352AB8;
        v63[3] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v63[0] = sub_10035297C;
        v63[1] = &unk_1004EFD48;
        v32 = _Block_copy(aBlock);
        v33 = v29;

        [v30 contextsMatchingPredicate:v33 completion:v32];
        v34 = v32;
        v9 = v58;
        _Block_release(v34);

        v12 = v50;

        if (v60 == v11)
        {
          return v47(0);
        }
      }

      ++v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003514E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = type metadata accessor for DispatchQoS();
  v14 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = sub_100351854;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EFC58;
  v18 = _Block_copy(aBlock);

  a5;

  static DispatchQoS.unspecified.getter();
  v20[1] = &_swiftEmptyArrayStorage;
  sub_1001D293C();
  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v20[0]);
}

uint64_t sub_100351778(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() shared];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;

  v12 = a3;

  sub_1001BB150(sub_100351DB4, v11);
}

uint64_t sub_100351864(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v50 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v23 = &v44 - v22;
  if (a2)
  {
    v24 = v21;
    v25 = v20;
    sub_100009F1C(0, &qword_1005748A0);
    swift_errorRetain();
    static OS_os_log.classKit.getter();
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = a2;
      aBlock[0] = v29;
      *v28 = 136315138;
      swift_errorRetain();
      sub_100168088(&qword_100575C50);
      v30 = String.init<A>(describing:)();
      v32 = sub_1000153E0(v30, v31, aBlock);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error finding all show contexts - %s", v28, 0xCu);
      sub_100004590(v29);
    }

    else
    {
    }

    return (*(v24 + 8))(v23, v25);
  }

  else
  {
    v34 = v48;
    v33 = v49;
    v45 = v12;
    v46 = v13;
    v47 = v9;
    v35 = v50;
    if (v50)
    {
      v36 = swift_allocObject();
      v36[2] = v34;
      v36[3] = v33;
      v36[4] = v35;
      aBlock[4] = sub_100352A2C;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004EFCD0;
      v37 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v51 = &_swiftEmptyArrayStorage;
      sub_1001D293C();
      sub_100168088(&unk_100575CD0);
      sub_100182E30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);
      (*(v47 + 8))(v11, v8);
      (*(v46 + 8))(v15, v45);
    }

    else
    {
      v39 = v21;
      v40 = v20;
      sub_100009F1C(0, &qword_1005748A0);
      static OS_os_log.classKit.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Unable to load all show contexts", v43, 2u);
      }

      return (*(v39 + 8))(v19, v40);
    }
  }
}

uint64_t sub_100351DC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v110 = a5;
  v6 = type metadata accessor for Logger();
  v120 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v118 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v114 = &v107 - v10;
  __chkstk_darwin(v9);
  v113 = &v107 - v11;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_114;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v123 = a1 & 0xC000000000000001;
  v111 = a1;
  v121 = a1 + 32;
  v122 = v13;
  if (v13)
  {
    v14 = 0;
    v15 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v123)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          goto LABEL_109;
        }

        v16 = *(v121 + 8 * v14);
      }

      v17 = v16;
      if (__OFADD__(v14++, 1))
      {
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
        v13 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v19 = [v16 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a1 = v21;

      v22 = HIBYTE(a1) & 0xF;
      v23 = v20 & 0xFFFFFFFFFFFFLL;
      if ((a1 & 0x2000000000000000) != 0 ? HIBYTE(a1) & 0xF : v20 & 0xFFFFFFFFFFFFLL)
      {
        break;
      }

LABEL_72:
      if (v14 == v122)
      {
        goto LABEL_84;
      }
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v127 = 0;
      v27 = sub_100311A9C(v20, a1, 10);
      v45 = v48;
LABEL_71:

      if ((v45 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10024339C(0, *(v15 + 2) + 1, 1, v15);
        }

        v47 = *(v15 + 2);
        v46 = *(v15 + 3);
        a1 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v15 = sub_10024339C((v46 > 1), v47 + 1, 1, v15);
        }

        *(v15 + 2) = a1;
        *&v15[8 * v47 + 32] = v27;
      }

      goto LABEL_72;
    }

    if ((a1 & 0x2000000000000000) != 0)
    {
      aBlock = v20;
      v125 = a1 & 0xFFFFFFFFFFFFFFLL;
      if (v20 == 43)
      {
        if (!v22)
        {
          goto LABEL_111;
        }

        if (--v22)
        {
          v27 = 0;
          v37 = &aBlock + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v37;
            if (!--v22)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v20 == 45)
      {
        if (!v22)
        {
          goto LABEL_110;
        }

        if (--v22)
        {
          v27 = 0;
          v31 = &aBlock + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v22)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v22)
      {
        v27 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v43 = *p_aBlock - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            break;
          }

          v27 = v44 + v43;
          if (__OFADD__(v44, v43))
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v22)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      v25 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = _StringObject.sharedUTF8.getter();
    }

    v26 = *v25;
    if (v26 == 43)
    {
      if (v23 < 1)
      {
        goto LABEL_112;
      }

      v22 = v23 - 1;
      if (v23 == 1)
      {
        goto LABEL_69;
      }

      v27 = 0;
      if (v25)
      {
        v34 = v25 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            goto LABEL_69;
          }

          v36 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            goto LABEL_69;
          }

          v27 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            goto LABEL_69;
          }

          ++v34;
          if (!--v22)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v26 == 45)
    {
      if (v23 < 1)
      {
        goto LABEL_113;
      }

      v22 = v23 - 1;
      if (v23 == 1)
      {
        goto LABEL_69;
      }

      v27 = 0;
      if (v25)
      {
        v28 = v25 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            goto LABEL_69;
          }

          v30 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            goto LABEL_69;
          }

          v27 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            goto LABEL_69;
          }

          ++v28;
          if (!--v22)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else
    {
      if (!v23)
      {
LABEL_69:
        v27 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_70;
      }

      v27 = 0;
      if (v25)
      {
        do
        {
          v40 = *v25 - 48;
          if (v40 > 9)
          {
            goto LABEL_69;
          }

          v41 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            goto LABEL_69;
          }

          v27 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            goto LABEL_69;
          }

          ++v25;
        }

        while (--v23);
      }
    }

    LOBYTE(v22) = 0;
LABEL_70:
    v127 = v22;
    v45 = v22;
    goto LABEL_71;
  }

  v15 = &_swiftEmptyArrayStorage;
LABEL_84:
  v119 = sub_10039B6E4(v15);

  v51 = v118;
  v52 = v122;
  if (!v122)
  {
  }

  if (v122 >= 1)
  {
    v53 = 0;
    v54 = v119 + 56;
    ++v120;
    v112 = v126;
    *&v50 = 136315138;
    v115 = v50;
    v116 = v119 + 56;
    v117 = v6;
    do
    {
      if (v123)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = *(v121 + 8 * v53);
      }

      v55 = v57;
      v58 = [v57 identifier];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_100352AC4(v59, v61);
      LOBYTE(v58) = v63;

      if ((v58 & 1) == 0)
      {
        if (*(v119 + 16) && (v64 = v119, v65 = static Hasher._hash(seed:_:)(), v66 = -1 << *(v64 + 32), v67 = v65 & ~v66, ((*(v54 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) != 0))
        {
          v68 = ~v66;
          while (*(*(v119 + 48) + 8 * v67) != v62)
          {
            v67 = (v67 + 1) & v68;
            if (((*(v54 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
            {
              goto LABEL_98;
            }
          }
        }

        else
        {
LABEL_98:
          v69 = sub_100009F1C(0, &qword_1005748A0);
          v70 = v113;
          static OS_os_log.classKit.getter();
          v71 = v55;
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            aBlock = v108;
            *v74 = v115;
            v75 = [v71 identifier];
            v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v109 = v69;
            v77 = v76;
            v79 = v78;

            v80 = sub_1000153E0(v77, v79, &aBlock);

            *(v74 + 4) = v80;
            _os_log_impl(&_mh_execute_header, v72, v73, "Creating copy of episode context - %s", v74, 0xCu);
            sub_100004590(v108);
            v6 = v117;

            v81 = *v120;
            (*v120)(v113, v6);
          }

          else
          {

            v81 = *v120;
            (*v120)(v70, v6);
          }

          v82 = v114;
          aBlock = v62;
          dispatch thunk of CustomStringConvertible.description.getter();
          v83 = sub_10035C6EC();

          static OS_os_log.classKit.getter();
          v84 = v83;
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            aBlock = v88;
            *v87 = v115;
            v89 = [v84 identifier];
            v109 = v81;
            v90 = v89;
            v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;

            v94 = v91;
            v6 = v117;
            v95 = sub_1000153E0(v94, v93, &aBlock);

            *(v87 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v85, v86, "Adding migrated episode context - %s", v87, 0xCu);
            sub_100004590(v88);

            v109(v114, v6);
          }

          else
          {

            v81(v82, v6);
          }

          v51 = v118;
          v52 = v122;
          v54 = v116;
          [v110 addChildContext:v84];
        }

        sub_100009F1C(0, &qword_1005748A0);
        static OS_os_log.classKit.getter();
        v96 = v55;
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          aBlock = v100;
          *v99 = v115;
          v101 = [v96 identifier];
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;

          v105 = v102;
          v54 = v116;
          v106 = sub_1000153E0(v105, v104, &aBlock);
          v6 = v117;

          *(v99 + 4) = v106;
          v52 = v122;
          _os_log_impl(&_mh_execute_header, v97, v98, "Removing old episode context - %s", v99, 0xCu);
          sub_100004590(v100);
          v51 = v118;
        }

        (*v120)(v51, v6);
        [v96 removeFromParent];
        v55 = [objc_opt_self() shared];
        v126[2] = sub_1002CF47C;
        v126[3] = 0;
        aBlock = _NSConcreteStackBlock;
        v125 = 1107296256;
        v126[0] = sub_10022AF0C;
        v126[1] = &unk_1004EFD70;
        v56 = _Block_copy(&aBlock);
        [v55 saveWithCompletion:v56];
        _Block_release(v56);
      }

      ++v53;
    }

    while (v53 != v52);
  }

  __break(1u);
  return result;
}

void sub_10035297C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_100009F1C(0, &unk_100575050);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_100352A68(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009F1C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unsigned __int8 *sub_100352AC4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v44[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v44[-1] - v10;
  v12 = HIBYTE(a2) & 0xF;
  v13 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
LABEL_63:
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.classKit.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000153E0(a1, a2, v44);
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to convert episode context identifier to Int64 - %s", v36, 0xCu);
      sub_100004590(v37);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v16 = sub_100311A9C(a1, a2, 10);
    v39 = v38;

    if (v39)
    {
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v44[0] = a1;
    v44[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v12)
      {
        if (--v12)
        {
          v16 = 0;
          v26 = v44 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_77:
      __break(1u);
      return result;
    }

    if (a1 != 45)
    {
      if (v12)
      {
        v16 = 0;
        v31 = v44;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          v31 = (v31 + 1);
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_75;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v15 = *result;
  if (v15 == 43)
  {
    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_61;
            }

            v25 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_61;
            }

            ++v23;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_76;
  }

  if (v15 == 45)
  {
    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          v17 = result + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v12) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v13)
  {
    v16 = 0;
    if (result)
    {
      while (1)
      {
        v29 = *result - 48;
        if (v29 > 9)
        {
          goto LABEL_61;
        }

        v30 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          goto LABEL_61;
        }

        v16 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v13)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v16 = 0;
  LOBYTE(v12) = 1;
LABEL_62:
  v45 = v12;
  if (v12)
  {
    goto LABEL_63;
  }

LABEL_67:
  result = [objc_opt_self() serpentIdFromAdamId:v16];
  if (v16 != result)
  {
    return result;
  }

  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.classKit.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v40, v41, "Episode context already has migrated identifier - %lld", v42, 0xCu);
  }

  (*(v5 + 8))(v11, v4);
  return 0;
}

uint64_t sub_100353048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100353090(uint64_t result, int a2, int a3)
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

uint64_t sub_1003530F0()
{
  v1 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || (v12[0] = v2, type metadata accessor for ContextActionsConfiguration(), , sub_100168088(&qword_10057D070), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_100009104(&v9, &qword_10057D068);
  }

  if (!*(&v10 + 1))
  {
    return sub_100009104(&v9, &qword_10057D068);
  }

  sub_1000109E4(&v9, v12);
  v3 = v13;
  sub_1000044A0(v12, v13);
  v4 = sub_1001ED800(v3);
  if ((v5 & 1) == 0)
  {
    v6 = v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID;
    *v6 = v4;
    *(v6 + 8) = 0;
    InterestStateController.stateMachine(for:)();
    v7 = InterestStateMachine.currentState.getter();

    *(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) = v7;
  }

  return sub_100004590(v12);
}

uint64_t sub_10035323C()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) == 4 || (v1 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration, swift_beginAccess(), *(v0 + v1)) && (type metadata accessor for PodcastContextActionConfiguration(0), swift_dynamicCastClass()))
  {
    v2 = 0;
  }

  else
  {
    v4 = InterestState.rawValue.getter();
    v6 = v5;
    if (v4 == InterestState.rawValue.getter() && v6 == v7)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v2 & 1;
}

uint64_t sub_100353334()
{
  v1 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v1 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v9 = v27 - v8;
  v34 = type metadata accessor for MetricsData();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v13 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UnfavoriteInterestAction();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration;
  result = swift_beginAccess();
  if (*(v0 + v18))
  {
    if ((*(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID + 8) & 1) == 0)
    {
      v32 = *(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID);
      v20 = v32;
      sub_100168088(&unk_10057DC50);
      v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100400790;
      *&v39 = v20;
      sub_1000366D8();

      v27[2] = BinaryInteger.description.getter();
      v28 = v6;
      v21 = static MetricsTargetType.button.getter();
      v29 = v3;
      v27[1] = v21;
      v27[0] = static MetricsActionType.unfavorite.getter();
      v27[3] = v15;
      static MetricsActionContext.contextual.getter();
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      static MetricsDataConfiguration.default.getter();
      static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
      v45 = v39;
      sub_100009104(&v45, &unk_100574650);
      v44 = v40;
      sub_100009104(&v44, &unk_100573A90);
      v43 = v41;
      sub_100009104(&v43, &unk_100574660);
      sub_100037470(v42);

      sub_100009104(v9, &qword_100574040);
      v23 = v28;
      static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
      MetricsData.removingIncludedField(_:)();
      (*(v36 + 8))(v23, v37);
      (*(v10 + 8))(v12, v34);
      ScalarDictionary.init()();
      ActionMetrics.init(data:custom:)();
      UnfavoriteInterestAction.init(adamID:actionMetrics:)();
      v24 = v33;
      v38[3] = v33;
      v38[4] = sub_100353EB0(&qword_1005810E0, &type metadata accessor for UnfavoriteInterestAction);
      v25 = sub_10000E680(v38);
      v26 = v35;
      (*(v35 + 16))(v25, v17, v24);
      ContextActionsConfiguration.perform(_:)();

      (*(v26 + 8))(v17, v24);
      return sub_100004590(v38);
    }
  }

  return result;
}

uint64_t sub_100353944()
{

  v1 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UndoFavoriteContextAction()
{
  result = qword_100581010;
  if (!qword_100581010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100353A8C()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100353B98()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xED0000657469726FLL;
  v5._countAndFlagsBits = 0x766146206F646E55;
  v1._object = 0x8000000100468450;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100353C50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100353CE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1003530F0();
}

uint64_t sub_100353D94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100353E58(uint64_t a1)
{
  result = sub_100353EB0(&qword_1005810D8, type metadata accessor for UndoFavoriteContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100353EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100353EFC()
{
  swift_beginAccess();
  if (*(v0 + 24) && (v7[0] = *(v0 + 24), type metadata accessor for ContextActionsConfiguration(), , sub_100168088(&qword_100581288), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v5 + 1))
    {
      sub_1000109E4(&v4, v7);
      sub_1000044A0(v7, v8);
      *(v0 + 32) = dispatch thunk of TimestampContextActionsConfiguration.referenceTime.getter();
      *(v0 + 40) = v1 & 1;
      sub_1000044A0(v7, v8);
      *(v0 + 48) = dispatch thunk of TimestampContextActionsConfiguration.playerTime.getter();
      *(v0 + 56) = v2 & 1;
      return sub_100004590(v7);
    }
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  return sub_100009104(&v4, &qword_100581280);
}

uint64_t sub_10035402C()
{
  swift_beginAccess();
  if (*(v0 + 24) && (v11[0] = *(v0 + 24), type metadata accessor for ContextActionsConfiguration(), , sub_100168088(&qword_100581288), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v9 + 1))
    {
      sub_1000109E4(&v8, v11);
      sub_1000044A0(v11, v12);
      v1 = dispatch thunk of TimestampContextActionsConfiguration.referenceTime.getter();
      v2 = v0 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime;
      *v2 = v1;
      *(v2 + 8) = v3 & 1;
      sub_1000044A0(v11, v12);
      v4 = dispatch thunk of TimestampContextActionsConfiguration.playerTime.getter();
      v5 = v0 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime;
      *v5 = v4;
      *(v5 + 8) = v6 & 1;
      return sub_100004590(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  return sub_100009104(&v8, &qword_100581280);
}

id sub_10035417C()
{
  v0 = [objc_allocWithZone(AVTimeFormatter) init];
  result = [v0 setStyle:1];
  qword_1005810E8 = v0;
  return result;
}

uint64_t sub_1003541CC()
{
  v1 = v0;
  type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v7 = &v38 - v6;
  __chkstk_darwin();
  v9 = &v38 - v8;
  if (!*(v0 + 16))
  {
    return 0;
  }

  sub_100399278();
  v10 = AdamID.isEmpty.getter();

  if (v10)
  {
    return 0;
  }

  v11 = *(v0 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v11 + v12, v7);
  sub_1001EB048(v7, v9, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(v9, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        sub_1001EB048(v5, v3, type metadata accessor for EpisodeContextActionDataType.Reference);
        v33 = objc_opt_self();
        sub_1003979DC();
        v35 = v34;
        v36 = [v33 shareViewControllerWithPlayerItem:v34 selectedReferenceTime:0.0 selectedPlayerTime:0.0 currentPlayerTime:0.0];

        sub_100355C0C(v3, type metadata accessor for EpisodeContextActionDataType.Reference);
        sub_100355C0C(v9, type metadata accessor for EpisodeContextActionDataType);
        return v36;
      }

      v14 = sub_10039779C(*v5);

      if (v14 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_9:
          if ((v14 & 0xC000000000000001) != 0)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_12;
          }

          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v16 = *(v14 + 32);
LABEL_12:
            v17 = v16;

            if (*(v1 + 40))
            {
              v18 = 0.0;
            }

            else
            {
              v18 = *(v1 + 32);
            }

            if (*(v1 + 56))
            {
              v19 = 0.0;
            }

            else
            {
              v19 = *(v1 + 48);
            }

LABEL_38:
            v29 = objc_opt_self();
            v30 = v17;
            [v30 playhead];
            v32 = [v29 shareViewControllerWithPlayerItem:v30 selectedReferenceTime:v18 selectedPlayerTime:v19 currentPlayerTime:v31];

            sub_100355C0C(v9, type metadata accessor for EpisodeContextActionDataType);
            return v32;
          }

          goto LABEL_51;
        }
      }

      goto LABEL_46;
    }

    v27 = *v5;
    if (*v5 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_29:
        if ((v27 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_51:
            __break(1u);
            return result;
          }

          v28 = *(v27 + 32);
        }

        v17 = v28;

        if (*(v1 + 40))
        {
          v18 = 0.0;
        }

        else
        {
          v18 = *(v1 + 32);
        }

        if (*(v1 + 56))
        {
          v19 = 0.0;
        }

        else
        {
          v19 = *(v1 + 48);
        }

        goto LABEL_38;
      }
    }

    else
    {
      result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_29;
      }
    }

LABEL_46:
    sub_100355C0C(v9, type metadata accessor for EpisodeContextActionDataType);

    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_100355C0C(v9, type metadata accessor for EpisodeContextActionDataType);
    v37 = v5;
LABEL_42:
    sub_100355C0C(v37, type metadata accessor for EpisodeContextActionDataType);
    return 0;
  }

  sub_100355C0C(v5, type metadata accessor for EpisodeContextActionDataType);
  v20 = sub_100398A94();
  if (!v20)
  {
    v37 = v9;
    goto LABEL_42;
  }

  v21 = v20;
  if (*(v1 + 40))
  {
    v22 = 0.0;
  }

  else
  {
    v22 = *(v1 + 32);
  }

  if (*(v1 + 56))
  {
    v23 = 0.0;
  }

  else
  {
    v23 = *(v1 + 48);
  }

  v24 = objc_opt_self();
  [v21 playhead];
  v26 = [v24 shareViewControllerWithEpisode:v21 selectedReferenceTime:v22 selectedPlayerTime:v23 currentPlayerTime:v25];

  sub_100355C0C(v9, type metadata accessor for EpisodeContextActionDataType);
  return v26;
}

uint64_t sub_100354764()
{
  type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = &v31 - v5;
  __chkstk_darwin();
  v8 = &v31 - v7;
  if (!*(v0 + 16))
  {
    return 0;
  }

  sub_100399278();
  v9 = AdamID.isEmpty.getter();

  if (v9)
  {
    return 0;
  }

  v10 = *(v0 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v10 + v11, v6);
  sub_1001EB048(v6, v8, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(v8, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100355C0C(v8, type metadata accessor for EpisodeContextActionDataType);
      v27 = v4;
    }

    else
    {
      sub_100355C0C(v4, type metadata accessor for EpisodeContextActionDataType);
      v19 = sub_100398A94();
      if (v19)
      {
        v16 = v19;
        v17 = [objc_opt_self() shareActivityItemsWithEpisode:v19];
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_13;
      }

      v27 = v8;
    }

    sub_100355C0C(v27, type metadata accessor for EpisodeContextActionDataType);
    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_1001EB048(v4, v2, type metadata accessor for EpisodeContextActionDataType.Reference);
      v22 = objc_opt_self();
      sub_1003979DC();
      v24 = v23;
      v25 = [v22 shareActivityItemsWithPlayerItem:v23];

      v26 = [objc_opt_self() mt_configurationWithActivityItems:v25];
      sub_100355C0C(v2, type metadata accessor for EpisodeContextActionDataType.Reference);
      sub_100355C0C(v8, type metadata accessor for EpisodeContextActionDataType);
      return v26;
    }

    v13 = sub_10039779C(*v4);

    if (v13 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_9:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
          v16 = v15;

          v17 = [objc_opt_self() shareActivityItemsWithPlayerItem:v16];
          if (!v17)
          {
LABEL_29:
            v28 = objc_opt_self();
            isa = Array._bridgeToObjectiveC()().super.isa;

            v30 = [v28 mt_configurationWithActivityItems:isa];

            sub_100355C0C(v8, type metadata accessor for EpisodeContextActionDataType);
            return v30;
          }

LABEL_13:
          v18 = v17;
          static Array._unconditionallyBridgeFromObjectiveC(_:)();

          goto LABEL_29;
        }

        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *(v13 + 32);
          goto LABEL_12;
        }

        goto LABEL_38;
      }
    }

    goto LABEL_33;
  }

  v20 = *v4;
  if (!(*v4 >> 62))
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_20;
    }

LABEL_33:
    sub_100355C0C(v8, type metadata accessor for EpisodeContextActionDataType);

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_20:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
    v16 = v21;

    v17 = [objc_opt_self() shareActivityItemsWithPlayerItem:v16];
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v20 + 32);
    goto LABEL_23;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100354D68()
{
  sub_100168088(&unk_10057BB90);
  __chkstk_darwin();
  v2 = &v8 - v1;
  result = sub_1003541CC();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (!*(v0 + 24))
    {

      v7 = type metadata accessor for PresentationSource();
      (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
      return sub_100009104(v2, &unk_10057BB90);
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    v5 = type metadata accessor for PresentationSource();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) == 1)
    {

      return sub_100009104(v2, &unk_10057BB90);
    }

    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

    return (*(v6 + 8))(v2, v5);
  }

  return result;
}

void sub_100354F28()
{
  v1 = type metadata accessor for PreviewingPresentationHint();
  v29 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for EpisodeOffer();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v24[-v10];
  v12 = *(v0 + 16);
  if (v12)
  {
    v28 = v1;
    v13 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v12 + v13, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_100355C0C(v11, type metadata accessor for EpisodeContextActionDataType);
LABEL_7:
      sub_100353EFC();

      return;
    }

    v14 = *v11;
    if (*(v14 + 16) == 1)
    {
      (*(v5 + 16))(v7, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v27 = v0;
      v15 = sub_100294534();
      (*(v5 + 8))(v7, v4);
      if (v15)
      {
        sub_100168088(&unk_100574680);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1004007B0;
        *(v16 + 32) = v15;
        *v9 = v16;
        swift_storeEnumTagMultiPayload();
        v18 = v28;
        v17 = v29;
        v26 = *(v29 + 16);
        v26(v3, v12 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v28);
        v25 = *(v12 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron);
        type metadata accessor for EpisodeContextActionData(0);
        v19 = swift_allocObject();
        v20 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
        v21 = objc_opt_self();
        v22 = v15;
        *(v19 + v20) = [v21 sharedInstance];
        sub_1001EAFE4(v9, v19 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type);
        v26((v19 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint), v3, v18);
        *(v19 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = v25;
        sub_100399908();
        v23 = v27;

        (*(v17 + 8))(v3, v18);
        sub_100355C0C(v9, type metadata accessor for EpisodeContextActionDataType);
        *(v23 + 16) = v19;
      }

      goto LABEL_7;
    }
  }
}

uint64_t sub_100355354()
{
  swift_beginAccess();
  if (*(v0 + 24) && ((type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for TranscriptSelectionContextActionConfiguration(0), swift_dynamicCastClass())) && (*(v0 + 56) != 1 || (*(v0 + 40) & 1) == 0))
  {
    if (qword_100572870 != -1)
    {
      swift_once();
    }

    v5 = [qword_1005810E8 stringFromSeconds:?];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [objc_opt_self() mainBundle];
    v15._object = 0xE000000000000000;
    v10._object = 0x80000001004714F0;
    v10._countAndFlagsBits = 0xD000000000000014;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v15);

    sub_100168088(&unk_100574670);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100400790;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100022C18();
    *(v12 + 32) = v6;
    *(v12 + 40) = v8;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v14._object = 0xE000000000000000;
    v2._countAndFlagsBits = 0x6572616853;
    v2._object = 0xE500000000000000;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v14)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

unint64_t sub_1003555A8()
{
  v1 = 0xD00000000000001FLL;
  swift_beginAccess();
  if (!*(v0 + 24))
  {
    return 0xD000000000000013;
  }

  type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    if (!swift_dynamicCastClass())
    {
      return 0xD000000000000013;
    }
  }

  return v1;
}

uint64_t sub_100355648()
{

  v1 = OBJC_IVAR____TtC8Podcasts25ShareEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShareEpisodeContextAction()
{
  result = qword_100581118;
  if (!qword_100581118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100355748()
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_100355800@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts25ShareEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100355878@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.iOSShareSheetEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_100355958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1003559B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_100355A18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_100355A78()
{
  if (*(v0 + 16))
  {

    sub_100399278();
    v1 = AdamID.isEmpty.getter();

    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100355AC8(uint64_t a1)
{
  result = sub_100355BC8(&qword_10057BED0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100355B0C(uint64_t a1)
{
  result = sub_100355BC8(&qword_100581270);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100355B84(uint64_t a1)
{
  result = sub_100355BC8(&qword_100581278);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100355BC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShareEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100355C0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100355C6C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v55 = a3;
  v7 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v13 - 8);
  v53 = &v46 - v14;
  v15 = _s27CarPlayEpisodeSubtitleStyleOMa();
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EpisodePlayState();
  __chkstk_darwin(v18 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = dispatch thunk of LegacyLockup.playAction.getter();
  if (!v21)
  {
    return 0;
  }

  v47 = v21;
  v48 = v12;
  v49 = v9;
  v51 = a4;
  v52 = v4;
  type metadata accessor for CarPlayPageLoadCoordinator();
  BaseObjectGraph.inject<A>(_:)();
  v54 = aBlock[0];
  sub_100168088(&unk_100578420);
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&unk_10057A4A0);
  BaseObjectGraph.inject<A>(_:)();
  LegacyLockup.adamId.getter();
  EpisodeStateController.stateMachine(for:)();
  dispatch thunk of EpisodeStateMachine.currentState.getter();

  v46 = LegacyLockup.title.getter();
  v23 = v22;
  LegacyEpisodeLockup.showTypeIsSerial.getter();
  v24 = LegacyLockup.isExplicit.getter();
  v25 = a1;
  v26 = &v17[*(sub_100168088(&qword_1005812A0) + 64)];
  *v17 = LegacyEpisodeLockup.episodeNumber.getter();
  v17[8] = v27 & 1;
  LegacyEpisodeLockup.releaseDate.getter();
  *v26 = LegacyEpisodeLockup.duration.getter();
  v26[8] = v28 & 1;
  swift_storeEnumTagMultiPayload();
  v50 = v20;
  sub_1001A3250(v57, v24 & 1, v17);
  sub_1002BD448(v17, _s27CarPlayEpisodeSubtitleStyleOMa);
  v29 = sub_10035646C();
  if (v23)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = String._bridgeToObjectiveC()();

  v31 = [v32 initWithText:v30 detailText:v33 image:0 accessoryImage:v29 accessoryType:0];

  v34 = v49;
  if (v55)
  {
    v35 = v53;
    LegacyLockup.artwork.getter();
    CarPlayPageLoadCoordinator.loadImage(for:into:)(v35, v31);
    sub_10021F030(v35);
  }

  v36 = v50;
  v37 = sub_1001A44D0();
  v38 = v48;
  if ((v39 & 1) == 0)
  {
    [v31 setPlaybackProgress:*&v37];
  }

  *(v34 + 24) = type metadata accessor for Action();
  *(v34 + 32) = sub_100036A24();
  *v34 = v47;
  *(v34 + 40) = 0;
  v40 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v41 = *(*(v40 - 8) + 56);
  v41(v34, 0, 1, v40);
  v41(v38, 1, 1, v40);
  v42 = type metadata accessor for CarPlayTemplateInfo(0);
  v43 = *(v42 + 20);

  sub_1001FBB44(v34, v38);
  *(v38 + v43) = v51;
  (*(*(v42 - 8) + 56))(v38, 0, 1, v42);
  sub_1001D2AD4(v38);
  aBlock[4] = sub_100356608;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  aBlock[3] = &unk_1004EFF90;
  v44 = _Block_copy(aBlock);

  [v31 setHandler:v44];
  _Block_release(v44);

  sub_1002BD448(v36, &type metadata accessor for EpisodePlayState);
  sub_100004590(v57);
  return v31;
}

uint64_t sub_100356268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_10023EE80(0, 0, v10, &unk_10040F0D0, v13);
}

void sub_1003563BC()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:16.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  qword_100581290 = v2;
}

uint64_t sub_10035646C()
{
  v0 = type metadata accessor for EpisodeDownloadState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573D90);
  BaseObjectGraph.inject<A>(_:)();
  LegacyLockup.adamId.getter();
  EpisodeStateController.stateMachine(for:)();
  dispatch thunk of EpisodeStateMachine.currentState.getter();
  if (EpisodeDownloadState.isDownloadedEpisode.getter())
  {
    if (qword_100572878 != -1)
    {
      swift_once();
    }

    v4 = qword_100581290;
    v5 = qword_100581290;

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    (*(v1 + 8))(v3, v0);

    return 0;
  }

  return v4;
}

uint64_t sub_100356610(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

Swift::Int CarPlayStepPlaybackRateAction.Step.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_100356788()
{
  result = qword_1005812A8;
  if (!qword_1005812A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005812A8);
  }

  return result;
}

unint64_t sub_1003567E0()
{
  result = qword_1005812B0;
  if (!qword_1005812B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005812B0);
  }

  return result;
}

uint64_t sub_100356864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkCrop();
  __chkstk_darwin(v4 - 8);
  v5 = [a1 artworkURL];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [a1 storeId];
    AdamID.init(rawValue:)();
    static ArtworkCrop.boundingBox.getter();
    static ArtworkFormat.preferredFormat.getter();
    ArtworkModel.init(template:width:height:libraryEntity:backgroundColor:textColors:style:crop:accessibilityTitle:format:isCustomSymbol:isMulticolorSymbol:imageStoreIdentifier:)();
    v7 = type metadata accessor for ArtworkModel();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for ArtworkModel();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_100356A64(id a1, char a2)
{
  if ((a2 & 1) != 0 || [a1 followedShowCount] < 1)
  {
    v3 = [objc_opt_self() mainBundle];
    v14._object = 0xE000000000000000;
    v7._object = 0x8000000100471560;
    v7._countAndFlagsBits = 0xD00000000000001ELL;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v3, v8, v14);
    v6 = &selRef_resolvedShowCount;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v13._object = 0xE000000000000000;
    v4._countAndFlagsBits = 0xD000000000000022;
    v4._object = 0x8000000100471580;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);
    v6 = &selRef_followedShowCount;
  }

  sub_100168088(&unk_100574670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  v10 = [a1 *v6];
  *(v9 + 56) = &type metadata for Int64;
  *(v9 + 64) = &protocol witness table for Int64;
  *(v9 + 32) = v10;
  v11 = static String.localizedStringWithFormat(_:_:)();

  return v11;
}

id sub_100356C28(void *a1)
{
  v2 = sub_100168088(&unk_100582DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for ArtworkCrop();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for ArtworkModel();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ArtworkRequest();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LibraryImageProvider();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 logoImageURL];
  if (result)
  {
    v15 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v4;
    v20 = v7;

    static LibraryImageProvider.background.getter();
    [a1 logoImageWidth];
    [a1 logoImageHeight];
    v25 = xmmword_10040F0E0;
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    static ArtworkCrop.boundingBox.getter();
    static ArtworkFormat.preferredFormat.getter();
    ArtworkModel.init(template:width:height:libraryEntity:backgroundColor:textColors:style:crop:accessibilityTitle:format:isCustomSymbol:isMulticolorSymbol:imageStoreIdentifier:)();
    [a1 logoImageWidth];
    [a1 logoImageHeight];
    v16 = type metadata accessor for CropCode();
    (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v17 = [objc_opt_self() mainScreen];
    [v17 scale];

    ArtworkRequest.init(model:targetSize:contentMode:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:trace:)();
    ImageProvider.prefetch(artwork:)();
    (*(v21 + 8))(v9, v20);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

id sub_100357058(void *a1)
{
  v2 = sub_100168088(&unk_100582DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for ArtworkCrop();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for ArtworkModel();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ArtworkRequest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LibraryImageProvider();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 uberBackgroundImageURL];
  if (result)
  {
    v19 = v4;
    v16 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v7;

    static LibraryImageProvider.background.getter();
    v24 = xmmword_10040F0E0;
    v25 = 0u;
    memset(v26, 0, sizeof(v26));
    static ArtworkCrop.sr.getter();
    static ArtworkFormat.preferredFormat.getter();
    ArtworkModel.init(template:width:height:libraryEntity:backgroundColor:textColors:style:crop:accessibilityTitle:format:isCustomSymbol:isMulticolorSymbol:imageStoreIdentifier:)();
    v17 = type metadata accessor for CropCode();
    (*(*(v17 - 8) + 56))(v19, 1, 1, v17);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v18 = [objc_opt_self() mainScreen];
    [v18 scale];

    ArtworkRequest.init(model:targetSize:contentMode:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:trace:)();
    ImageProvider.prefetch(artwork:)();
    (*(v8 + 8))(v10, v20);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_10035744C(void *a1, char a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v9 = v6;
  if (![a1 subscriptionActive])
  {
    return 0;
  }

  v10 = [a1 subscriptionName];
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [a1 name];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v12 != v17 || v14 != v19)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_27;
    }

LABEL_10:
    if (String.count.getter() <= 16)
    {
      v52 = v12;
      v53 = v14;
      v56._countAndFlagsBits = v12;
      v56._object = v14;
      static CharacterSet.whitespaces.getter();
      v51 = sub_10019FA64();
      v22 = StringProtocol.components(separatedBy:)();
      result = (*(v5 + 8))(v8, v9);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = 0;
        v25 = v22 + 40;
        v49 = v23 - 1;
        v26 = _swiftEmptyArrayStorage;
        v50 = v22 + 40;
        do
        {
          v54 = v26;
          v27 = (v25 + 16 * v24);
          v28 = v24;
          while (1)
          {
            if (v28 >= *(v22 + 16))
            {
              __break(1u);
              return result;
            }

            v29 = *(v27 - 1);
            v30 = *v27;
            v24 = v28 + 1;
            v56._countAndFlagsBits = v29;
            v56._object = v30;
            sub_1001A0728();

            if (Collection.isNotEmpty.getter())
            {
              break;
            }

            v27 += 2;
            ++v28;
            if (v23 == v24)
            {
              v26 = v54;
              goto LABEL_26;
            }
          }

          v26 = v54;
          result = swift_isUniquelyReferenced_nonNull_native();
          v55 = v26;
          if ((result & 1) == 0)
          {
            result = sub_1001A7364(0, v26[2] + 1, 1);
            v26 = v55;
          }

          v32 = v26[2];
          v31 = v26[3];
          if (v32 >= v31 >> 1)
          {
            result = sub_1001A7364((v31 > 1), v32 + 1, 1);
            v26 = v55;
          }

          v26[2] = v32 + 1;
          v33 = &v26[2 * v32];
          v33[4] = v29;
          v33[5] = v30;
          v25 = v50;
        }

        while (v49 != v28);
      }

      else
      {
        v26 = _swiftEmptyArrayStorage;
      }

LABEL_26:

      v34 = v26[2];

      if (v34 <= 2)
      {
        v40 = [objc_opt_self() mainBundle];
        v58._object = 0xE000000000000000;
        v41._countAndFlagsBits = 0xD000000000000023;
        v41._object = 0x8000000100471530;
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        v58._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v58);

        sub_100168088(&unk_100574670);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_100400790;
        *(v43 + 56) = &type metadata for String;
        *(v43 + 64) = sub_100022C18();
        v44 = v53;
        *(v43 + 32) = v52;
        *(v43 + 40) = v44;
        v45 = String.init(format:_:)();
        v47 = v46;

        v56._countAndFlagsBits = v45;
        v56._object = v47;
        goto LABEL_29;
      }
    }

    goto LABEL_27;
  }

LABEL_27:

LABEL_28:
  v35 = [objc_opt_self() mainBundle];
  v57._object = 0xE000000000000000;
  v36._object = 0x8000000100471510;
  v36._countAndFlagsBits = 0xD000000000000018;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v57);

  v56 = v38;
  sub_10019FA64();
LABEL_29:
  v39 = StringProtocol.localizedUppercase.getter();

  return v39;
}

void sub_100357920(void *a1, int a2, uint64_t a3)
{
  v82 = a3;
  v74 = a2;
  v4 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v4 - 8);
  v75 = &v70 - v5;
  v6 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v6 - 8);
  v89 = &v70 - v7;
  v86 = type metadata accessor for FlowDestinationPageHeader();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v87 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for FlowPresentationContext();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v84 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v10 - 8);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100574040);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v70 - v16;
  v18 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v18 - 8);
  v83 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FlowDestination();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100356C28(a1);
  sub_100357058(a1);
  [a1 storeId];
  v24 = AdamID.init(rawValue:)();
  type metadata accessor for ChannelDetail();
  v25 = a1;
  *v23 = ChannelDetail.__allocating_init(from:)();
  (*(v21 + 104))(v23, enum case for FlowDestination.channel(_:), v20);
  v26 = [v25 name];
  if (v26)
  {
    v27 = v26;
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v28;
  }

  else
  {
    v78 = 0;
    v77 = 0;
  }

  v88 = v24;
  v94 = v24;
  v73 = sub_1000366D8();
  v76 = BinaryInteger.description.getter();
  static MetricsTargetType.lockup.getter();
  v29 = [v25 url];
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = v29;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(string:)();

  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    sub_1001FDD40(v15);
LABEL_7:
    v33 = v25;
    v34 = type metadata accessor for URL();
    (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
    goto LABEL_9;
  }

  v33 = v25;
  (*(v32 + 32))(v17, v15, v31);
  (*(v32 + 56))(v17, 0, 1, v31);
LABEL_9:
  sub_100168088(&unk_10057DC50);
  type metadata accessor for MetricsData();
  v35 = swift_allocObject();
  v72 = xmmword_100400790;
  *(v35 + 16) = xmmword_100400790;
  static MetricsActionType.navigate.getter();
  static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

  ScalarDictionary.init()();
  ActionMetrics.init(data:custom:)();
  sub_1001FDD40(v17);
  (*(v80 + 104))(v84, enum case for FlowPresentationContext.infer(_:), v81);
  sub_100168088(&qword_1005742B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v37 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v37;
  v38 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v38;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v37)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  v39 = v33;
  if (Link.Presentation.init(rawValue:)() != v38)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(v85 + 104))(v87, enum case for FlowDestinationPageHeader.standard(_:), v86);
  v40 = type metadata accessor for FlowAction();
  swift_allocObject();
  v87 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  v41 = [v33 podcasts];
  if (v41)
  {
    v42 = v41;
    v43 = sub_100226208();
    sub_100358640(&qword_1005812B8, sub_100226208);
    v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v71 = v33;
    v79 = v40;
    v86 = v43;
    if ((v44 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v46 = v94;
      v45 = v95;
      v47 = v96;
      v48 = v97;
      v49 = v98;
    }

    else
    {
      v50 = -1 << *(v44 + 32);
      v45 = v44 + 56;
      v47 = ~v50;
      v51 = -v50;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v49 = v52 & *(v44 + 56);

      v48 = 0;
      v46 = v44;
    }

    v85 = v47;
    v53 = (v47 + 64) >> 6;
    while (1)
    {
      if (v46 < 0)
      {
        v57 = __CocoaSet.Iterator.next()();
        if (!v57 || (v90 = v57, swift_dynamicCast(), (v56 = v91) == 0))
        {
LABEL_33:
          LODWORD(v82) = 0;
          goto LABEL_34;
        }
      }

      else
      {
        v54 = v48;
        v55 = v49;
        if (!v49)
        {
          while (1)
          {
            v48 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v48 >= v53)
            {
              goto LABEL_33;
            }

            v55 = *(v45 + 8 * v48);
            ++v54;
            if (v55)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
          return;
        }

LABEL_27:
        v49 = (v55 - 1) & v55;
        v56 = *(*(v46 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v55)))));
        if (!v56)
        {
          goto LABEL_33;
        }
      }

      v58 = [v56 isExplicit];

      if (v58)
      {
        LODWORD(v82) = 1;
LABEL_34:
        sub_1000319D8();

        v39 = v71;
        v40 = v79;
        goto LABEL_35;
      }
    }
  }

  LODWORD(v82) = 0;
LABEL_35:
  sub_100356864(v39, v89);
  v59 = [v39 name];
  if (v59)
  {
    v60 = v59;
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v61;
  }

  else
  {
    v81 = 0;
    v80 = 0;
  }

  sub_100168088(&qword_100574690);
  v62 = swift_allocObject();
  *(v62 + 16) = v72;
  v63 = BYTE1(v74);
  *(v62 + 32) = sub_100356A64(v39, v74 & 1);
  *(v62 + 40) = v64;
  v86 = sub_10035744C(v39, v63 & 1);
  v85 = v65;
  v92 = v40;
  v93 = sub_100358640(&unk_10057A0D0, &type metadata accessor for FlowAction);
  v90 = v88;
  v91 = v87;

  v84 = BinaryInteger.description.getter();
  v83 = static MetricsIDType.itsContentID.getter();
  static MetricsTargetType.lockup.getter();
  static MetricsContentKind.channel.getter();
  v66 = [v39 name];
  if (v66)
  {
    v67 = v66;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v68 = v75;
  static ImpressionMetrics.shelfItem(id:idType:uniqueID:impressionType:kind:name:)();

  v69 = type metadata accessor for ImpressionMetrics();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  dispatch thunk of LegacyChannelLockup.__allocating_init(adamId:icon:title:subtitles:eyebrow:clickAction:isExplicit:impressionMetrics:)();
}

uint64_t sub_100358640(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100358858(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v62 = a6;
  v63 = a5;
  v69 = a3;
  v70 = a4;
  v77 = a2;
  v66 = type metadata accessor for Logger();
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin();
  v80 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v11 = &v62 - v10;
  sub_100168088(&unk_100581300);
  __chkstk_darwin();
  v13 = &v62 - v12;
  v72 = &v62 - v12;
  sub_100168088(&qword_100576A08);
  __chkstk_darwin();
  v15 = &v62 - v14;
  v73 = &v62 - v14;
  sub_100168088(&unk_100581310);
  __chkstk_darwin();
  v17 = &v62 - v16;
  v74 = &v62 - v16;
  sub_100168088(&qword_100576A10);
  __chkstk_darwin();
  v19 = &v62 - v18;
  v75 = &v62 - v18;
  sub_100168088(&unk_100581320);
  __chkstk_darwin();
  v21 = &v62 - v20;
  v22 = type metadata accessor for MediaRequest.RequestType();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v25;
  v68 = type metadata accessor for MediaRequest.Params();
  v67 = *(v68 - 8);
  v26 = __chkstk_darwin();
  v78 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v25, enum case for MediaRequest.RequestType.catalog(_:), v22, v26);
  v28 = *v77;
  v29 = type metadata accessor for MediaRequest.ContentType();
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v76 = v21;
  v31(v21, v28, v29);
  (*(v30 + 56))(v21, 0, 1, v29);
  v32 = type metadata accessor for MediaRequest.ViewType();
  (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  v33 = type metadata accessor for MediaRequest.Relationship();
  (*(*(v33 - 8) + 56))(v17, 1, 1, v33);
  sub_100168088(&qword_100574690);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100400790;
  v85[1] = a1;
  *(v34 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v34 + 40) = v35;
  v36 = type metadata accessor for MediaRequest.URLFragment();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v37 = type metadata accessor for MediaRequest.PageName();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);
  v38 = type metadata accessor for URL();
  (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
  v77 = sub_100359D78(_swiftEmptyArrayStorage);
  v71 = sub_100359D78(_swiftEmptyArrayStorage);
  sub_100359F60(_swiftEmptyArrayStorage);
  sub_10035A148(_swiftEmptyArrayStorage);
  sub_10035B878(_swiftEmptyArrayStorage);
  sub_10035B878(_swiftEmptyArrayStorage);
  sub_10035A24C(_swiftEmptyArrayStorage);
  sub_10035A434(_swiftEmptyArrayStorage);
  sub_10035A61C(_swiftEmptyArrayStorage);
  sub_10035A804(_swiftEmptyArrayStorage);
  v39 = v78;
  MediaRequest.Params.init(requestType:requestContentType:viewType:directFetch:relationshipIncludes:relationshipRelates:relationshipLimit:include:omit:typedIncludes:typedExtends:typedAssociations:fields:typedFields:withTypes:displayKinds:identifiers:fragment:limit:filters:meta:offset:pageName:requestAllPages:hostUrl:countryCode:isImplicitActionRequest:searchTerm:queryContentTypes:triggerBy:includeEntitlementsOverride:languageTag:)();
  v45 = *(v83 + OBJC_IVAR____TtC8Podcasts22ClassKitContextBuilder_requestController);
  sub_100009F1C(0, &qword_1005729D0);
  v40 = v45;
  v41 = static OS_dispatch_queue.main.getter();
  v43 = v80;
  v42 = v81;
  *v80 = v41;
  v44 = v82;
  (*(v42 + 104))(v43, enum case for DispatchPredicate.notOnQueue(_:), v82);
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  result = (*(v42 + 8))(v43, v44);
  if (v45)
  {
    v45 = dispatch_semaphore_create(0);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = -1;
    v48 = swift_allocObject();
    *(v48 + 16) = v45;
    *(v48 + 24) = v47;
    v49 = v45;

    dispatch thunk of MediaRequestController.performRecursivelyWithParsing(params:callback:)();

    OS_dispatch_semaphore.wait()();
    result = swift_beginAccess();
    LODWORD(v45) = *(v47 + 24);
    if (v45 == 255)
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v42 = *(v47 + 16);
    sub_10035BE38(v42, v45 & 1);

    if (v45)
    {
      sub_100009F1C(0, &qword_1005748A0);
      v50 = v64;
      static OS_os_log.classKit.getter();
      sub_10035BE38(v42, 1);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      sub_10035BE44(v42, v45);
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v84 = v42;
        v85[0] = v54;
        *v53 = 136315138;
        sub_10035BE38(v42, 1);
        sub_100168088(&qword_100575C50);
        v55 = String.init<A>(describing:)();
        v57 = sub_1000153E0(v55, v56, v85);

        *(v53 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, v62, v53, 0xCu);
        sub_100004590(v54);
      }

      sub_10035BE44(v42, v45);
      (*(v65 + 8))(v50, v66);
      goto LABEL_15;
    }

    result = v63(v42);
    if (!result)
    {
      sub_10035BE44(v42, v45);
LABEL_15:
      (*(v67 + 8))(v39, v68);
      return 0;
    }

    v44 = result & 0xFFFFFFFFFFFFFF8;
    if (!(result >> 62))
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

LABEL_18:

      sub_10035BE44(v42, v45);
      v59 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  v60 = result;
  v61 = _CocoaArrayWrapper.endIndex.getter();
  result = v60;
  if (!v61)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((result & 0xC000000000000001) != 0)
  {
    v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (!*(v44 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v58 = *(result + 32);
LABEL_13:
  v59 = v58;

  sub_10035BE44(v42, v45);
LABEL_19:
  (*(v67 + 8))(v39, v68);
  return v59;
}

uint64_t sub_100359454(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), void (*a3)(void), uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  sub_100168088(&qword_1005812F8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v24 - v13;
  v15 = a2(a1, v12);
  if (v15)
  {
    v16 = v15;
    a3();
    v17 = type metadata accessor for CLSContextMetadata();
    if ((*(*(v17 - 8) + 48))(v14, 1, v17) == 1)
    {

      v18 = v14;
LABEL_7:
      sub_100009104(v18, &qword_1005812F8);
      return 0;
    }

    v22 = sub_100226924(0);

    sub_100311040(v14);
    return v22;
  }

  else
  {
    result = a4(a1);
    if (!result)
    {
      return result;
    }

    v20 = result;
    a5();
    v21 = type metadata accessor for CLSContextMetadata();
    if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
    {

      v18 = v11;
      goto LABEL_7;
    }

    v23 = sub_100226924(0);

    sub_100311040(v11);
    return v23;
  }
}

id sub_100359664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassKitContextBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100359708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    swift_beginAccess();
    v9 = *(a7 + 16);
    *(a7 + 16) = a5;
    v10 = *(a7 + 24);
    *(a7 + 24) = 1;
    swift_errorRetain();
  }

  else
  {
    if (!a1)
    {
      sub_10035BE5C();
      v15 = swift_allocError();
      swift_beginAccess();
      v12 = *(a7 + 16);
      *(a7 + 16) = v15;
      v13 = *(a7 + 24);
      *(a7 + 24) = 1;
      goto LABEL_6;
    }

    swift_beginAccess();
    v9 = *(a7 + 16);
    *(a7 + 16) = a1;
    v10 = *(a7 + 24);
    *(a7 + 24) = 0;
  }

  v12 = v9;
  v13 = v10;
LABEL_6:
  sub_10035BE44(v12, v13);
  return OS_dispatch_semaphore.signal()();
}

unint64_t sub_100359810(uint64_t a1)
{
  type metadata accessor for MediaRequest.ContentType();
  sub_10035BEB0(&unk_100579CA0, &type metadata accessor for MediaRequest.ContentType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003599B8(a1, v2, &type metadata accessor for MediaRequest.ContentType, &qword_100577220, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
}

unint64_t sub_1003598E4(uint64_t a1)
{
  type metadata accessor for MediaRequest.Filter();
  sub_10035BEB0(&qword_100581358, &type metadata accessor for MediaRequest.Filter);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003599B8(a1, v2, &type metadata accessor for MediaRequest.Filter, &qword_100581360, &type metadata accessor for MediaRequest.Filter, &protocol conformance descriptor for MediaRequest.Filter);
}

unint64_t sub_1003599B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_10035BEB0(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100359B58(uint64_t a1)
{
  type metadata accessor for MediaRequest.Association();
  sub_10035BEB0(&qword_100581388, &type metadata accessor for MediaRequest.Association);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003599B8(a1, v2, &type metadata accessor for MediaRequest.Association, &unk_100581390, &type metadata accessor for MediaRequest.Association, &protocol conformance descriptor for MediaRequest.Association);
}

unint64_t sub_100359C2C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000FA44(a1, a2, v4);
}

unint64_t sub_100359CA4(uint64_t a1)
{
  type metadata accessor for MediaRequest.Relationship();
  sub_10035BEB0(&qword_1005813C0, &type metadata accessor for MediaRequest.Relationship);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003599B8(a1, v2, &type metadata accessor for MediaRequest.Relationship, &qword_1005813C8, &type metadata accessor for MediaRequest.Relationship, &protocol conformance descriptor for MediaRequest.Relationship);
}

unint64_t sub_100359D78(uint64_t a1)
{
  v2 = sub_100168088(&qword_1005813D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_1005813D8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &qword_1005813D0);
      result = sub_100359CA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MediaRequest.Relationship();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100359F60(uint64_t a1)
{
  v2 = sub_100168088(&qword_1005813B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_1005813B8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &qword_1005813B0);
      result = sub_100359CA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MediaRequest.Relationship();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10035A148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_1005813A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100359C2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10035A24C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100581378);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_100581380);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &qword_100581378);
      result = sub_100359B58(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MediaRequest.Association();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10035A434(uint64_t a1)
{
  v2 = sub_100168088(&qword_100581368);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_100581370);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &qword_100581368);
      result = sub_100359810(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MediaRequest.ContentType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10035A61C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100581348);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_100581350);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &qword_100581348);
      result = sub_1003598E4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MediaRequest.Filter();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10035A804(uint64_t a1)
{
  v2 = sub_100168088(&qword_100581338);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_100581340);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &qword_100581338);
      result = sub_100359810(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MediaRequest.ContentType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

id sub_10035A9EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v8 = OBJC_IVAR____TtC8Podcasts22ClassKitContextBuilder_workQueue;
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC8Podcasts22ClassKitContextBuilder_requestController] = a1;
  v10 = v9;
  v11 = a1;
  dispatch thunk of MediaRequestController.responseQueue.setter();
  v12 = type metadata accessor for ClassKitContextBuilder();
  v14.receiver = v2;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "init");
}

unsigned __int8 *sub_10035AC04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = type metadata accessor for Logger();
  v8 = *(v66 - 8);
  __chkstk_darwin();
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v65 - v11;
  __chkstk_darwin();
  v14 = &v65 - v13;
  sub_100168088(&qword_100574690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v67[0] = a3;

  result = sub_1001C3B80(inited);
  v17 = v67[0];
  v18 = HIBYTE(a2) & 0xF;
  v19 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
LABEL_64:

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.classKit.getter();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v67[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1000153E0(a1, a2, v67);
      _os_log_impl(&_mh_execute_header, v40, v41, "Invalid store id - %s", v42, 0xCu);
      sub_100004590(v43);
    }

    (*(v8 + 8))(v10, v66);
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v22 = sub_100311A9C(a1, a2, 10);
    v64 = v63;

    if (v64)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v67[0] = a1;
    v67[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v18)
      {
        if (--v18)
        {
          v22 = 0;
          v32 = v67 + 1;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_85:
      __break(1u);
      return result;
    }

    if (a1 != 45)
    {
      if (v18)
      {
        v22 = 0;
        v37 = v67;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          v37 = (v37 + 1);
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v18)
    {
      if (--v18)
      {
        v22 = 0;
        v26 = v67 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_83;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v21 = *result;
  if (v21 == 43)
  {
    if (v19 >= 1)
    {
      v18 = v19 - 1;
      if (v19 != 1)
      {
        v22 = 0;
        if (result)
        {
          v29 = result + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_61;
            }

            v31 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_61;
            }

            v22 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_61;
            }

            ++v29;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_84;
  }

  if (v21 == 45)
  {
    if (v19 >= 1)
    {
      v18 = v19 - 1;
      if (v19 != 1)
      {
        v22 = 0;
        if (result)
        {
          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_61;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_61;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_61;
            }

            ++v23;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v18) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v19)
  {
    v22 = 0;
    if (result)
    {
      while (1)
      {
        v35 = *result - 48;
        if (v35 > 9)
        {
          goto LABEL_61;
        }

        v36 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          goto LABEL_61;
        }

        v22 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v19)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v22 = 0;
  LOBYTE(v18) = 1;
LABEL_62:
  v68 = v18;
  if (v18)
  {
    goto LABEL_64;
  }

LABEL_63:
  if ([objc_opt_self() isEmpty:v22])
  {
    goto LABEL_64;
  }

  v44 = *(v17 + 16);
  if (v44 != 2 && v44 != 1)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.classKit.getter();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67[0] = v57;
      *v56 = 136315138;
      v58 = Array.description.getter();
      v60 = v59;

      v61 = sub_1000153E0(v58, v60, v67);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Invalid identifier path - %s", v56, 0xCu);
      sub_100004590(v57);
    }

    else
    {
    }

    (*(v8 + 8))(v14, v66);
    return 0;
  }

  __chkstk_darwin();
  *(&v65 - 2) = v4;
  *(&v65 - 1) = v22;
  sub_100168088(&unk_1005813E0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v67[0])
  {
    return 0;
  }

  v45 = v67[0];
  sub_100009F1C(0, &qword_1005748A0);
  v46 = v45;
  v47 = v45;
  static OS_os_log.classKit.getter();
  v48 = v47;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    *(v51 + 4) = v48;
    *v52 = v46;
    v53 = v48;
    _os_log_impl(&_mh_execute_header, v49, v50, "Built context - %@", v51, 0xCu);
    sub_100009104(v52, &qword_100575B20);
  }

  else
  {
    v53 = v49;
    v49 = v48;
  }

  v62 = v66;

  (*(v8 + 8))(v12, v62);
  return v46;
}

uint64_t sub_10035B4BC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v10 = [objc_opt_self() predicateForPodcastStoreId:a1];
  type metadata accessor for CoreDataFetcher();
  v11 = static CoreDataFetcher.fetchPodcasts(for:by:with:)();
  if (!v11)
  {
LABEL_18:
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.classKit.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to find show in local database - %lld", v25, 0xCu);

      v26 = v9;
    }

    else
    {
      v26 = v23;
      v23 = v9;
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v12 = v11;
  v13 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14 == 1;
    if (v14 >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v22 == 1;
  if (v22 < 1)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_4:
  if (!v15)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.classKit.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v2;
      *v18 = 134217984;
      *(v18 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Found more than one show with store ID - %lld", v18, 0xCu);
      v2 = v28;
    }

    (*(v3 + 8))(v7, v2);
  }

  if (v13)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_15:

    return 0;
  }

LABEL_10:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v12 + 32);
LABEL_13:
    v21 = v20;

    return v21;
  }

  __break(1u);
  return result;
}

unint64_t sub_10035B878(uint64_t a1)
{
  v2 = sub_100168088(&unk_100572EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_1005813A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &unk_100572EE0);
      result = sub_100359810(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MediaRequest.ContentType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10035BA60(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v10 = [objc_opt_self() predicateForEpisodeStoreTrackId:a1];
  type metadata accessor for CoreDataFetcher();
  v11 = static CoreDataFetcher.fetchEpisodes(for:sortDescriptors:fetchLimit:with:)();
  if (!v11)
  {
LABEL_18:
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.classKit.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to find episode in local database - %lld", v25, 0xCu);

      v26 = v9;
    }

    else
    {
      v26 = v23;
      v23 = v9;
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v12 = v11;
  v13 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14 == 1;
    if (v14 >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v22 == 1;
  if (v22 < 1)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_4:
  if (!v15)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.classKit.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v2;
      *v18 = 134217984;
      *(v18 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Found more than one episode with store ID - %lld", v18, 0xCu);
      v2 = v28;
    }

    (*(v3 + 8))(v7, v2);
  }

  if (v13)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_15:

    return 0;
  }

LABEL_10:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v12 + 32);
LABEL_13:
    v21 = v20;

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10035BE24(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10035BE38(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_10035BE44(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10035BE24(result, a2 & 1);
  }

  return result;
}

unint64_t sub_10035BE5C()
{
  result = qword_100581330;
  if (!qword_100581330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581330);
  }

  return result;
}

uint64_t sub_10035BEB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10035BEF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10035BF38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100359400(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_10035BF78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003593AC(*(v1 + 24));
  *a1 = result;
  return result;
}

unint64_t sub_10035BFCC()
{
  result = qword_1005813F0;
  if (!qword_1005813F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005813F0);
  }

  return result;
}

uint64_t sub_10035C048()
{
  v1 = v0;
  v2 = *v0;
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v4 = v12 - v3;
  sub_100168088(&unk_100578B20);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_10040F3E8;
  *(v9 + 24) = v8;

  v12[1] = Future<>.init(priority:unwrapping:)();
  sub_10031AD08();
  v10 = Publisher.eraseToAnyPublisher()();

  return v10;
}