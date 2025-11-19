uint64_t sub_10008CD74()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008CDAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticateAccountsModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008CE10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticateAccountsModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10008CE74(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject roles];
      sub_10008DB84();
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = v9;
      v5 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (v5)
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_22;
        }

LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_22;
      }

      if (v10)
      {
        goto LABEL_21;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = v3;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v14 >> 1) - v13) < v33)
          {
            goto LABEL_43;
          }

          v17 = v12 + 8 * v13 + 32;
          v27 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_10008DBD0();
            for (i = 0; i != v15; ++i)
            {
              sub_100005DCC(&qword_1001BD390);
              v19 = sub_1000DD3E4(v32, i, v7);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v27 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_27;
        }
      }

      v3 = v31;
      if (v33 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10008D1D4()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCAE0);
  v1 = sub_10000D298(v0, qword_1001BCAE0);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10008D29C()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  sub_1000974B4(111);
  v1 = String._bridgeToObjectiveC()();

  [v0 setTitle:v1];

  [v0 setDismissalType:1];
  v2 = [v0 contentView];
  v3 = [v2 pickerView];

  [v3 setDataSource:v0];
  v4 = [v0 contentView];
  v5 = [v4 pickerView];

  [v5 setDelegate:v0];
  sub_1000974B4(0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  v11[4] = sub_10008DC6C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001BE90;
  v11[3] = &unk_100192850;
  v8 = _Block_copy(v11);
  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  v10 = [v0 addAction:v9];
}

void sub_10008D4FC()
{
  v0 = sub_100005DCC(&unk_1001BBB80);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (qword_1001B93C8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000D298(v7, qword_1001BCAE0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Continue pressed in Role Picker", v10, 2u);
      }

      if (SFIsDevicePhone())
      {
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
        type metadata accessor for MainActor();
        v6 = v6;
        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        v13[2] = v12;
        v13[3] = &protocol witness table for MainActor;
        v13[4] = v6;
        sub_1000BB214(0, 0, v2, &unk_10016F310, v13);
      }

      else
      {
        sub_1000D8BDC();
      }

      goto LABEL_16;
    }
  }

  if (qword_1001B93C8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000D298(v14, qword_1001BCAE0);
  v4 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v4, v15, "mainController nil while initializing primaryAction", v16, 2u);
  }

LABEL_16:
}

unint64_t sub_10008D9B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleCategories);
  v2 = Strong;

  if (v1)
  {
    v3 = sub_10008CE74(v1);

    if (v3 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v1;
}

uint64_t sub_10008DA70(unint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleCategories);
    v4 = result;

    if (v3)
    {
      v5 = sub_10008CE74(v3);

      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v6 = *(v5 + 8 * a1 + 32);
LABEL_7:
        v7 = v6;

        v8 = [v7 role];

        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v9;
      }

      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10008DB84()
{
  result = qword_1001BE240;
  if (!qword_1001BE240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BE240);
  }

  return result;
}

unint64_t sub_10008DBD0()
{
  result = qword_1001BE280;
  if (!qword_1001BE280)
  {
    sub_1000072B0(&qword_1001BD390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE280);
  }

  return result;
}

uint64_t sub_10008DC34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008DC8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008DCCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006242C;

  return sub_1000D90EC(a1, v4, v5, v6);
}

uint64_t sub_10008DD80()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCB28);
  v1 = sub_10000D298(v0, qword_1001BCB28);
  if (qword_1001B92C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10008DE48(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v28 = *(a1 + 64);
  v29 = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v24 = *a1;
  v25 = v5;
  v30 = *(a1 + 96);
  v26 = v6;
  v27 = v3;
  v7 = String._bridgeToObjectiveC()();
  [v1 setTitle:v7];

  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = String._bridgeToObjectiveC()();
  *&v33 = sub_10008ED9C;
  *(&v33 + 1) = v9;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_10001BE90;
  *(&v32 + 1) = &unk_1001928F8;
  v11 = _Block_copy(&aBlock);
  v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:v11];

  _Block_release(v11);

  v13 = &v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model];
  v14 = *&v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 80];
  v35 = *&v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 64];
  v36 = v14;
  v37 = *&v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 96];
  v15 = *&v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 16];
  aBlock = *&v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model];
  v32 = v15;
  v16 = *&v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 48];
  v33 = *&v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 32];
  v34 = v16;
  v17 = v25;
  *v13 = v24;
  *(v13 + 1) = v17;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  *(v13 + 12) = v30;
  *(v13 + 4) = v20;
  *(v13 + 5) = v21;
  *(v13 + 2) = v18;
  *(v13 + 3) = v19;
  sub_100028E0C(a1, v23);
  return sub_100028E68(&aBlock);
}

void sub_10008E074()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10008EAD4();
  }
}

void sub_10008E0C8()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for PasswordSharingErrorViewController();
  objc_msgSendSuper2(&v38, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 16];
  v39[0] = *&v0[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model];
  v2 = *&v0[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 64];
  v3 = *&v0[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 80];
  v4 = *&v0[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 32];
  v40 = *&v0[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 48];
  v41 = v2;
  v42 = v3;
  v43 = *&v0[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model + 96];
  v39[1] = v1;
  v39[2] = v4;
  if (*(&v39[0] + 1))
  {
    v5 = v40;
    sub_100028ED0(v39, aBlock);
    [v0 setDismissalType:3];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_10008EDBC;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001BE90;
    aBlock[3] = &unk_100192920;
    v8 = _Block_copy(aBlock);
    v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];

    _Block_release(v8);

    [v0 setDismissButtonAction:v9];

    v10 = [objc_opt_self() configurationWithPointSize:72.0];
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

    v13 = [objc_allocWithZone(UIImageView) initWithImage:v12];
    [v13 setTintColor:v5];
    v14 = v13;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v0 contentView];
    [v15 addSubview:v14];

    v16 = [v0 contentView];
    v17 = [v16 mainContentGuide];

    v18 = objc_opt_self();
    sub_100005DCC(&qword_1001BBB00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10016D4A0;
    v20 = [v14 topAnchor];
    v21 = [v17 topAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

    *(v19 + 32) = v22;
    v23 = [v14 bottomAnchor];
    v24 = [v17 bottomAnchor];
    v25 = [v23 constraintLessThanOrEqualToAnchor:v24];

    *(v19 + 40) = v25;
    v26 = [v14 centerXAnchor];
    v27 = [v17 centerXAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v19 + 48) = v28;
    v29 = [v14 centerYAnchor];

    v30 = [v17 centerYAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v19 + 56) = v31;
    sub_10000D1F4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:isa];

    sub_100028E68(v39);
  }

  else
  {
    if (qword_1001B93D0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000D298(v33, qword_1001BCB28);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error view: model not available", v36, 2u);
    }
  }
}

void sub_10008E674()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1001B93D0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BCB28);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error dismissed", v5, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000A4AB4(5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10008E7F8(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PasswordSharingErrorViewController();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  if (qword_1001B93D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BCB28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error ViewDidAppear", v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A5054(*(v2 + OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_type));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10008E980(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PasswordSharingErrorViewController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  if (qword_1001B93D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BCB28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error ViewDidDisappear", v6, 2u);
  }
}

uint64_t sub_10008EAD4()
{
  v1 = v0;
  if (qword_1001B93D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BCB28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "OK button tapped", v5, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_type))
    {
      sub_1000A4AB4(5);
    }

    else
    {
      sub_1000A5D30();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10008ECA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasswordSharingErrorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008ED64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008EDA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008EDDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (v2 != 1)
  {
    v5 = 1701736292;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7472617473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x726F727265;
  if (*a2 != 1)
  {
    v8 = 1701736292;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7472617473;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10008EEC0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008EF54()
{
  String.hash(into:)();
}

Swift::Int sub_10008EFD4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10008F064@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F13C(*a1);
  *a2 = result;
  return result;
}

void sub_10008F094(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (v2 != 1)
  {
    v5 = 1701736292;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10008F0E8()
{
  result = qword_1001BCB80;
  if (!qword_1001BCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCB80);
  }

  return result;
}

unint64_t sub_10008F13C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10018F128, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008F188()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCB88);
  v1 = sub_10000D298(v0, qword_1001BCB88);
  if (qword_1001B9298 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3870);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10008F250(void *a1, void (*a2)(void), void (*a3)(void))
{
  v5 = v3;
  v9 = sub_100005DCC(&qword_1001BCC08);
  v10 = __chkstk_darwin(v9 - 8);
  v128 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = &v123 - v12;
  v13 = type metadata accessor for SFItemDestinationAlertViewModel();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v129 = &v123 - v19;
  __chkstk_darwin(v18);
  v21 = &v123 - v20;
  v142 = type metadata accessor for SFItemDestinationAlertSettings();
  v22 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v137 = a1;
    v24 = [a1 actions];
    if (v24)
    {
      v25 = v24;
      v124 = v17;
      v125 = v21;
      v127 = v14;
      v126 = v13;
      v135 = v5;
      v131 = a3;
      v134 = a2;
      v26 = sub_100092528();
      v21 = sub_1000925E4(&qword_1001BC000, sub_100092528);
      v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v133 = v13;
      v136 = v26;
      if ((v13 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v13 = v150;
        a3 = v151;
        v27 = v152;
        v28 = v153;
        v14 = v154;
      }

      else
      {
        v29 = -1 << *(v13 + 32);
        a3 = (v13 + 56);
        v27 = ~v29;
        v30 = -v29;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v14 = v31 & *(v13 + 56);

        v28 = 0;
      }

      v132 = v27;
      v32 = ((v27 + 64) >> 6);
      LODWORD(v140) = enum case for SFItemDestinationAlertSettings.reply(_:);
      v139 = (v22 + 104);
      v138 = (v22 + 8);
      v33 = v142;
      while (1)
      {
        if (v13 < 0)
        {
          v37 = __CocoaSet.Iterator.next()();
          if (!v37 || (*&v148 = v37, swift_dynamicCast(), v21 = v147[0], v4 = v28, v36 = v14, !v147[0]))
          {
LABEL_29:
            sub_100024148();

            a2 = v134;
            a3 = v131;
            v5 = v135;
            goto LABEL_30;
          }
        }

        else
        {
          v34 = v28;
          v35 = v14;
          v4 = v28;
          if (!v14)
          {
            while (1)
            {
              v4 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              if (v4 >= v32)
              {
                v14 = 0;
                goto LABEL_29;
              }

              v35 = *(a3 + v4);
              ++v34;
              if (v35)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_53;
          }

LABEL_16:
          v36 = (v35 - 1) & v35;
          v21 = *(*(v13 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v35)))));
          if (!v21)
          {
            goto LABEL_29;
          }
        }

        v143 = v28;
        v144 = v14;
        v38 = [v21 info];
        if (v38)
        {
          v39 = v38;
          v40 = v141;
          (*v139)(v141, v140, v33);
          v41 = v13;
          v42 = SFItemDestinationAlertSettings.rawValue.getter();
          (*v138)(v40, v33);
          v43 = v42;
          v13 = v41;
          LOBYTE(v40) = [v39 BOOLForSetting:v43];

          if (v40)
          {
            break;
          }
        }

        v28 = v4;
        v14 = v36;
      }

      sub_100024148();

      v32 = v135;
      v44 = *&v135[OBJC_IVAR___SVSItemDestinationAlertViewController_replyAction];
      *&v135[OBJC_IVAR___SVSItemDestinationAlertViewController_replyAction] = v21;
      v45 = v21;

      v46 = v137;
      v47 = [v137 userInfo];
      if (v47)
      {
        v48 = v47;
        v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v145 = static SFItemDestinationAlertSettings.viewModel.getter();
        v146 = v50;
        AnyHashable.init<A>(_:)();
        a3 = v134;
        if (*(v49 + 16) && (v51 = sub_100032C7C(v147), (v52 & 1) != 0))
        {
          sub_10000BFEC(*(v49 + 56) + 32 * v51, &v148);
          sub_10000BF98(v147);

          v46 = v137;
          if (*(&v149 + 1))
          {
            if (swift_dynamicCast())
            {
              v143 = v45;
              v4 = v147[0];
              v14 = v147[1];
              type metadata accessor for JSONDecoder();
              swift_allocObject();
              sub_100005E64(v4, v14);
              JSONDecoder.init()();
              sub_1000925E4(&qword_1001BCC10, &type metadata accessor for SFItemDestinationAlertViewModel);
              v33 = v130;
              v21 = v126;
              v13 = 0;
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();
LABEL_53:
              v144 = v4;
              v141 = v14;
              sub_1000083FC(v4, v14);

              v81 = v127;
              v82 = *(v127 + 56);
              v82(v33, 0, 1, v21);
              v14 = v125;
              (*(v81 + 32))(v125, v33, v21);
              v83 = *(v81 + 16);
              v4 = v81 + 16;
              v5 = v83;
              v84 = v128;
              (v83)(v128, v14, v21);
              v82(v84, 0, 1, v21);
              v85 = OBJC_IVAR___SVSItemDestinationAlertViewController_viewModel;
              swift_beginAccess();
              sub_100092574(v84, v32 + v85);
              swift_endAccess();
              if (qword_1001B93D8 != -1)
              {
                goto LABEL_69;
              }

              goto LABEL_54;
            }

LABEL_42:
            v65 = 0;
            if (qword_1001B93D8 != -1)
            {
              swift_once();
            }

            v66 = type metadata accessor for Logger();
            sub_10000D298(v66, qword_1001BCB88);
            v67 = v46;
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v68, v69))
            {
              v144 = 0;
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v147[0] = v71;
              *v70 = 136315138;
              v72 = [v67 userInfo];
              if (v72)
              {
                v73 = v72;
                v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
              }

              else
              {
                v74 = 0;
              }

              *&v148 = v74;
              sub_100005DCC(&qword_1001BBC58);
              v75 = String.init<A>(reflecting:)();
              v77 = sub_10002065C(v75, v76, v147);

              *(v70 + 4) = v77;
              _os_log_impl(&_mh_execute_header, v68, v69, "Failed to get view model for SVSItemDestinationAlertViewController {userInfo: %s}", v70, 0xCu);
              sub_1000083B0(v71);

              v65 = v144;
            }

            else
            {
            }

            if (a3)
            {
              a3();
              v78 = type metadata accessor for SFAirDropReceive.Failure();
              sub_1000925E4(&qword_1001BBFF0, &type metadata accessor for SFAirDropReceive.Failure);
              v79 = swift_allocError();
              (*(*(v78 - 8) + 104))(v80, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v78);
              sub_100091910(0, 0, v79);
              [v32 dismissViewControllerAnimated:1 completion:0];

              sub_100025404(v65, 0xF000000000000000);

              return;
            }

            __break(1u);
            goto LABEL_71;
          }
        }

        else
        {

          sub_10000BF98(v147);
          v148 = 0u;
          v149 = 0u;
          v46 = v137;
        }
      }

      else
      {
        v148 = 0u;
        v149 = 0u;
        a3 = v134;
      }

      sub_10001259C(&v148, &qword_1001BBB40);
      goto LABEL_42;
    }

LABEL_30:
    if (qword_1001B93D8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000D298(v53, qword_1001BCB88);
    v21 = v137;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v147[0] = v14;
      *v13 = 136315138;
      v56 = [v21 actions];
      if (v56)
      {
        v57 = v56;
        sub_100092528();
        sub_1000925E4(&qword_1001BC000, sub_100092528);
        v58 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v58 = 0;
      }

      *&v148 = v58;
      sub_100005DCC(&qword_1001BBFF8);
      v59 = String.init<A>(reflecting:)();
      v21 = v60;
      v61 = sub_10002065C(v59, v60, v147);

      *(v13 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to get action for SVSItemDestinationAlertViewController {actions: %s}", v13, 0xCu);
      sub_1000083B0(v14);
    }

    if (a2)
    {
      a2();
      v62 = type metadata accessor for SFAirDropReceive.Failure();
      sub_1000925E4(&qword_1001BBFF0, &type metadata accessor for SFAirDropReceive.Failure);
      v63 = swift_allocError();
      (*(*(v62 - 8) + 104))(v64, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v62);
      sub_100091910(0, 0, v63);
      [v5 dismissViewControllerAnimated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_69:
  swift_once();
LABEL_54:
  v86 = type metadata accessor for Logger();
  v87 = sub_10000D298(v86, qword_1001BCB88);
  v88 = v129;
  (v5)(v129, v14, v21);
  v142 = v87;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  v91 = v5;
  v92 = v4;
  if (os_log_type_enabled(v89, v90))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v95 = v91;
    v140 = v92;
    v96 = v94;
    v147[0] = v94;
    *v93 = 136315138;
    sub_1000925E4(&qword_1001BCC18, &type metadata accessor for SFItemDestinationAlertViewModel);
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    v99 = v98;
    v100 = v88;
    v101 = *(v127 + 8);
    v101(v100, v126);
    v102 = sub_10002065C(v97, v99, v147);
    a3 = v134;

    *(v93 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v89, v90, "Alert being configured with view model: %s", v93, 0xCu);
    sub_1000083B0(v96);
    v91 = v95;
    v103 = v101;

    v21 = v126;
  }

  else
  {

    v103 = *(v127 + 8);
    v103(v88, v21);
  }

  v104 = v125;
  v105 = v135;
  v106 = sub_100090E44(v125);
  if (v13)
  {
    v107 = v124;
    (v91)(v124, v104, v21);
    v108 = Logger.logObject.getter();
    v109 = v21;
    v110 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v108, v110))
    {
      v111 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v147[0] = v142;
      *v111 = 136315138;
      sub_1000925E4(&qword_1001BCC18, &type metadata accessor for SFItemDestinationAlertViewModel);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v113;
      v103(v107, v109);
      v115 = sub_10002065C(v112, v114, v147);

      *(v111 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v108, v110, "Failed to create alert for SVSItemDestinationAlertViewController {viewModel: %s}", v111, 0xCu);
      sub_1000083B0(v142);
    }

    else
    {

      v103(v107, v109);
    }

    v21 = v109;
    v120 = v143;
  }

  else
  {
    v116 = *&v105[OBJC_IVAR___SVSItemDestinationAlertViewController_alert];
    *&v105[OBJC_IVAR___SVSItemDestinationAlertViewController_alert] = v106;

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v143;
    if (v119)
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Created alert for SVSItemDestinationAlertViewController", v121, 2u);
    }
  }

  v122 = v144;
  if (a3)
  {
    a3();
    sub_1000083FC(v122, v141);

    v103(v125, v21);
  }

  else
  {
LABEL_71:
    __break(1u);
  }
}

id sub_10009058C(char a1)
{
  v2 = v1;
  if (qword_1001B93D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BCB88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "SVSItemDestinationAlertViewController viewDidAppear", v7, 2u);
  }

  v16.receiver = v1;
  v16.super_class = type metadata accessor for SVSItemDestinationAlertViewController();
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  v8 = *&v1[OBJC_IVAR___SVSItemDestinationAlertViewController_alert];
  if (v8)
  {
    return [v1 presentViewController:v8 animated:1 completion:0];
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "SVSItemDestinationAlertViewController dismissing because there is no loaded alert", v12, 2u);
  }

  v13 = type metadata accessor for SFAirDropReceive.Failure();
  sub_1000925E4(&qword_1001BBFF0, &type metadata accessor for SFAirDropReceive.Failure);
  v14 = swift_allocError();
  (*(*(v13 - 8) + 104))(v15, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v13);
  sub_100091910(0, 0, v14);
  [v2 dismissViewControllerAnimated:1 completion:0];
}

id sub_100090850(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFItemDestinationAlertViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005DCC(&qword_1001BCC08);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_100005DCC(&qword_1001BCC00);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for SFItemDestinationAlertViewModel.Action();
  v37 = *(v13 - 8);
  v38 = v13;
  __chkstk_darwin(v13);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B93D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000D298(v15, qword_1001BCB88);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "SVSItemDestinationAlertViewController viewDidDisappear", v18, 2u);
  }

  v19 = type metadata accessor for SVSItemDestinationAlertViewController();
  v39.receiver = v1;
  v39.super_class = v19;
  result = objc_msgSendSuper2(&v39, "viewDidDisappear:", a1 & 1);
  if ((*(v1 + OBJC_IVAR___SVSItemDestinationAlertViewController_sentResponse) & 1) == 0)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "SVSItemDestinationAlertViewController view disappeared before alert completed. Assuming cancellation", v23, 2u);
    }

    v24 = OBJC_IVAR___SVSItemDestinationAlertViewController_viewModel;
    swift_beginAccess();
    sub_100092480(v2 + v24, v9);
    if ((*(v5 + 48))(v9, 1, v4))
    {
      sub_10001259C(v9, &qword_1001BCC08);
      (*(v37 + 56))(v12, 1, 1, v38);
    }

    else
    {
      v25 = v36;
      (*(v5 + 16))(v36, v9, v4);
      sub_10001259C(v9, &qword_1001BCC08);
      SFItemDestinationAlertViewModel.cancelAction.getter();
      (*(v5 + 8))(v25, v4);
      v27 = v37;
      v26 = v38;
      if ((*(v37 + 48))(v12, 1, v38) != 1)
      {
        v31 = v35;
        (*(v27 + 32))(v35, v12, v26);
        v32 = SFItemDestinationAlertViewModel.Action.id.getter();
        sub_100091910(v32, v33, 0);

        [v2 dismissViewControllerAnimated:1 completion:0];
        return (*(v27 + 8))(v31, v26);
      }
    }

    sub_10001259C(v12, &qword_1001BCC00);
    v28 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1000925E4(&qword_1001BBFF0, &type metadata accessor for SFAirDropReceive.Failure);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v28);
    sub_100091910(0, 0, v29);
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_100090E44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005DCC(&qword_1001BCC00);
  __chkstk_darwin(v4 - 8);
  v54 = &v50 - v5;
  v67 = type metadata accessor for SFItemDestinationAlertViewModel.Action();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v67);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v66 = &v50 - v10;
  __chkstk_darwin(v9);
  v65 = &v50 - v11;
  SFItemDestinationAlertViewModel.title.getter();
  SFItemDestinationAlertViewModel.message.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v53 = a1;
  v15 = SFItemDestinationAlertViewModel.actions.getter();
  v16 = *(v15 + 16);
  v52 = v7;
  if (v16)
  {
    v64 = objc_opt_self();
    v51 = v6;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v62 = v18;
    v19 = *(v17 + 64);
    v50 = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v21 = *(v17 + 56);
    v63 = v17;
    v59 = (v17 + 16);
    v60 = v21;
    v61 = v19;
    v58 = (v19 + 16) & ~v19;
    v57 = (v7 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = &v74;
    do
    {
      v70 = v16;
      v71 = v20;
      v22 = v65;
      v23 = v67;
      v62(v65, v20, v67);
      v24 = SFItemDestinationAlertViewModel.Action.title.getter();
      v68 = v25;
      v69 = v24;
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = v2;
      v28 = v14;
      v29 = *v59;
      v30 = v66;
      (*v59)(v66, v22, v23);
      v31 = v57;
      v32 = swift_allocObject();
      v33 = v23;
      v34 = v70;
      v29((v32 + v58), v30, v33);
      v14 = v28;
      v2 = v27;
      *(v32 + v31) = v26;

      v35 = String._bridgeToObjectiveC()();

      v76 = sub_100092294;
      v77 = v32;
      aBlock = _NSConcreteStackBlock;
      v73 = 1107296256;
      v74 = sub_10001BE90;
      v75 = &unk_100192A28;
      v36 = _Block_copy(&aBlock);

      v37 = [v64 actionWithTitle:v35 style:0 handler:{v36, v50}];
      _Block_release(v36);

      [v14 addAction:v37];
      v20 = v71 + v60;
      v16 = v34 - 1;
    }

    while (v16);

    v38 = v67;
    v6 = v51;
  }

  else
  {

    v38 = v67;
  }

  v39 = v54;
  SFItemDestinationAlertViewModel.cancelAction.getter();
  if ((*(v6 + 48))(v39, 1, v38) == 1)
  {
    sub_10001259C(v39, &qword_1001BCC00);
  }

  else
  {
    v69 = *(v6 + 32);
    v40 = v55;
    v69(v55, v39, v38);
    v70 = SFItemDestinationAlertViewModel.Action.title.getter();
    v71 = v14;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = v66;
    (*(v6 + 16))(v66, v40, v38);
    v43 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    v69((v44 + v43), v42, v38);

    v45 = String._bridgeToObjectiveC()();

    v76 = sub_10009240C;
    v77 = v44;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_10001BE90;
    v75 = &unk_100192A78;
    v46 = _Block_copy(&aBlock);

    v47 = [objc_opt_self() actionWithTitle:v45 style:1 handler:v46];
    v48 = v46;
    v14 = v71;
    _Block_release(v48);

    [v14 addAction:v47];
    (*(v6 + 8))(v55, v38);
  }

  return v14;
}

void sub_100091524(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SFItemDestinationAlertViewModel.Action();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B93D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000D298(v7, qword_1001BCB88);
  (*(v4 + 16))(v6, a2, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = a2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315138;
    v13 = SFItemDestinationAlertViewModel.Action.id.getter();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = sub_10002065C(v13, v15, v22);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Alert action chosen: %s", v11, 0xCu);
    sub_1000083B0(v12);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = SFItemDestinationAlertViewModel.Action.id.getter();
    sub_100091910(v19, v20, 0);

    [v18 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000917C0()
{
  if (qword_1001B93D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BCB88);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Alert cancel chosen", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = SFItemDestinationAlertViewModel.Action.id.getter();
    sub_100091910(v6, v7, 0);

    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100091910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFItemDestinationAlertSettings();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR___SVSItemDestinationAlertViewController_sentResponse) = 1;
  v10 = *(v3 + OBJC_IVAR___SVSItemDestinationAlertViewController_replyAction);
  if (v10)
  {
    v27 = v10;
    if ([v27 canSendResponse])
    {
      if (a2)
      {
        v11 = [objc_allocWithZone(BSMutableSettings) init];
        v12 = String._bridgeToObjectiveC()();
        (*(v7 + 104))(v9, enum case for SFItemDestinationAlertSettings.chosenActionID(_:), v6);
        v13 = SFItemDestinationAlertSettings.rawValue.getter();
        (*(v7 + 8))(v9, v6);
        [v11 setObject:v12 forSetting:v13];

        v14 = [objc_opt_self() responseWithInfo:v11];
      }

      else
      {
        if (!a3)
        {
          v23 = type metadata accessor for SFAirDropReceive.Failure();
          sub_1000925E4(&qword_1001BBFF0, &type metadata accessor for SFAirDropReceive.Failure);
          swift_allocError();
          (*(*(v23 - 8) + 104))(v24, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v23);
        }

        swift_errorRetain();
        v11 = _convertErrorToNSError(_:)();

        v14 = [objc_opt_self() responseForError:v11];
      }

      v25 = v14;

      [v27 sendResponse:v25];
      return;
    }

    if (qword_1001B93D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000D298(v18, qword_1001BCB88);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Cannot send response for action in SVSItemDestinationAlertViewController", v21, 2u);
    }
  }

  else
  {
    if (qword_1001B93D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000D298(v15, qword_1001BCB88);
    v27 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v27, v16, "Missing action when performing SVSItemDestinationAlertViewController dismiss", v17, 2u);
    }
  }

  v22 = v27;
}

id sub_100091D64(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___SVSItemDestinationAlertViewController_alert] = 0;
  v6 = OBJC_IVAR___SVSItemDestinationAlertViewController_viewModel;
  v7 = type metadata accessor for SFItemDestinationAlertViewModel();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v3[OBJC_IVAR___SVSItemDestinationAlertViewController_sentResponse] = 0;
  *&v3[OBJC_IVAR___SVSItemDestinationAlertViewController_replyAction] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SVSItemDestinationAlertViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_100091EC8(void *a1)
{
  *&v1[OBJC_IVAR___SVSItemDestinationAlertViewController_alert] = 0;
  v3 = OBJC_IVAR___SVSItemDestinationAlertViewController_viewModel;
  v4 = type metadata accessor for SFItemDestinationAlertViewModel();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR___SVSItemDestinationAlertViewController_sentResponse] = 0;
  *&v1[OBJC_IVAR___SVSItemDestinationAlertViewController_replyAction] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SVSItemDestinationAlertViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_100091FC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SVSItemDestinationAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SVSItemDestinationAlertViewController()
{
  result = qword_1001BCBE8;
  if (!qword_1001BCBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000920C0()
{
  sub_100092168();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100092168()
{
  if (!qword_1001BCBF8)
  {
    type metadata accessor for SFItemDestinationAlertViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BCBF8);
    }
  }
}

uint64_t sub_1000921C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000921F8()
{
  v1 = type metadata accessor for SFItemDestinationAlertViewModel.Action();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100092294(uint64_t a1)
{
  v3 = *(type metadata accessor for SFItemDestinationAlertViewModel.Action() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100091524(a1, v4);
}

uint64_t sub_100092330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100092348()
{
  v1 = type metadata accessor for SFItemDestinationAlertViewModel.Action();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10009240C()
{
  type metadata accessor for SFItemDestinationAlertViewModel.Action();

  sub_1000917C0();
}

uint64_t sub_100092480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BCC08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000924F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100092528()
{
  result = qword_1001BD700;
  if (!qword_1001BD700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BD700);
  }

  return result;
}

uint64_t sub_100092574(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BCC08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000925E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100092648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005DCC(&unk_1001BBAA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 108) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009272C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005DCC(&unk_1001BBAA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 108) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for D2DSetupModel()
{
  result = qword_1001BCC90;
  if (!qword_1001BCC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100092844()
{
  sub_100092AB0(319, &qword_1001BB130, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_100024F84(319, &qword_1001BA590);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SFOSVersion(319);
      if (v2 <= 0x3F)
      {
        sub_100024F84(319, &qword_1001BCCA0);
        if (v3 <= 0x3F)
        {
          sub_100024F84(319, &qword_1001BCCA8);
          if (v4 <= 0x3F)
          {
            sub_100024F84(319, &qword_1001BA588);
            if (v5 <= 0x3F)
            {
              sub_100092AB0(319, &qword_1001BCCB0, type metadata accessor for SVSUserActionType);
              if (v6 <= 0x3F)
              {
                sub_100092B04();
                if (v7 <= 0x3F)
                {
                  sub_100024F84(319, &unk_1001BCCC0);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for SFDeviceClassCode(319);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for SFDeviceModelCode(319);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100092AB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100092B04()
{
  if (!qword_1001BCCB8)
  {
    sub_1000122EC(255, &qword_1001B9C30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BCCB8);
    }
  }
}

uint64_t sub_100092B84(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100092BA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100092BE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100092C2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100092C54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100092C6C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100092CA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100092CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100092D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for D2DSetupModel();
  v8 = v7[6];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 56);
  v10(a2 + v8, 1, 1, v9);
  v11 = (a2 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = v7[9];
  v10(a2 + v12, 1, 1, v9);
  v13 = a2 + v7[15];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + v7[16];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v7[17];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a2 + v7[18];
  *v16 = 0;
  *(v16 + 4) = 1;
  *(a2 + v7[19]) = 0;
  *(a2 + v7[22]) = 2;
  v17 = v7[29];
  *(a2 + v17) = SFIsGreenTeaDevice();
  *(a2 + v7[30]) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  v46 = 0xD000000000000010;
  v47 = 0x8000000100145050;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v18 = sub_100032C7C(v48), (v19 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v18, &v49);
    sub_10000BF98(v48);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();

      sub_10000C048(v6, a2 + v8);
    }
  }

  else
  {
    sub_10000BF98(v48);
  }

  v49 = 0x6F6973726556736FLL;
  v50 = 0xE90000000000006ELL;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = sub_100032C7C(v48), (v21 & 1) == 0))
  {
    sub_10000BF98(v48);
    goto LABEL_11;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v20, &v49);
  sub_10000BF98(v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v22 = v46;
LABEL_12:
  *(a2 + v7[8]) = v22;
  v46 = 0x556E6F6973736573;
  v47 = 0xEB00000000444955;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v23 = sub_100032C7C(v48), (v24 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v23, &v49);
    sub_10000BF98(v48);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();

      sub_10000C048(v6, a2 + v12);
    }
  }

  else
  {
    sub_10000BF98(v48);
  }

  v49 = 1769173874;
  v50 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v25 = sub_100032C7C(v48), (v26 & 1) == 0))
  {
    sub_10000BF98(v48);
    goto LABEL_22;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v25, &v49);
  sub_10000BF98(v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  v27 = v46;
LABEL_23:
  *(a2 + v7[10]) = v27;
  *(a2 + v7[11]) = 0;
  *(a2 + v7[12]) = 0;
  *(a2 + v7[13]) = 0;
  *(a2 + v7[14]) = 0;
  v49 = 0x726174536F747561;
  v50 = 0xE900000000000074;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v28 = sub_100032C7C(v48), (v29 & 1) == 0))
  {
    sub_10000BF98(v48);
    goto LABEL_28;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v28, &v49);
  sub_10000BF98(v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v30 = 0;
    goto LABEL_29;
  }

  v30 = v46;
LABEL_29:
  *(a2 + v7[20]) = v30;
  *(a2 + v7[21]) = 0;
  *(a2 + v7[23]) = 0;
  *(a2 + v7[24]) = 0;
  v49 = 0x6C43656369766564;
  v50 = 0xEF65646F43737361;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v31 = sub_100032C7C(v48), (v32 & 1) == 0))
  {
    sub_10000BF98(v48);
    goto LABEL_34;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v31, &v49);
  sub_10000BF98(v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v33 = 0;
    goto LABEL_35;
  }

  v33 = v46;
LABEL_35:
  *(a2 + v7[25]) = v33;
  v49 = 0x6F4D656369766564;
  v50 = 0xEF65646F436C6564;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v34 = sub_100032C7C(v48), (v35 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v34, &v49);
    sub_10000BF98(v48);

    if (swift_dynamicCast())
    {
      v36 = v46;
      goto LABEL_41;
    }
  }

  else
  {

    sub_10000BF98(v48);
  }

  v36 = 0;
LABEL_41:
  *(a2 + v7[26]) = v36;
  v37 = sub_100127B30();
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = (a2 + v7[27]);
  *v41 = v38;
  v41[1] = v40;
  result = SFDeviceClassCodeGet();
  if (v33)
  {
    v43 = result == v33;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;
  *(a2 + v7[28]) = v44;
  return result;
}

uint64_t sub_10009344C()
{
  v1 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for D2DSetupModel();
  sub_100005EB8(v0 + *(v4 + 24), v3, &unk_1001BBAA0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_10000BEDC(v3);
    return 0;
  }

  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v6 + 8))(v3, v5);
  v11 = v8 == 0xD000000000000024 && 0x8000000100144C30 == v10;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (v8 == 0xD000000000000024 && 0x8000000100144C60 == v10)
  {

    return 2;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    return 2;
  }
}

uint64_t sub_100093634()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCC20);
  v1 = sub_10000D298(v0, qword_1001BCC20);
  if (qword_1001B92C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000936FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6C616D726F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6572756C696166;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696C61766E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6C616D726F6ELL;
  if (*a2 != 1)
  {
    v8 = 0x6572756C696166;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696C61766E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000937F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100093898()
{
  String.hash(into:)();
}

Swift::Int sub_100093924()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000939C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100095868(*a1);
  *a2 = result;
  return result;
}

void sub_1000939F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6C616D726F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6572756C696166;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696C61766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100093A4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64657472617473;
  if (v2 != 1)
  {
    v4 = 0x64656873696E6966;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657472617473;
  if (*a2 != 1)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100093B48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100093BE4()
{
  String.hash(into:)();
}

Swift::Int sub_100093C6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100093D04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000958B4(*a1);
  *a2 = result;
  return result;
}

void sub_100093D34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100093D90()
{
  result = qword_1001BCD58;
  if (!qword_1001BCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCD58);
  }

  return result;
}

id sub_100093DE4()
{
  v1 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v1);
  v3 = &v200 - v2;
  v205._countAndFlagsBits = 0x73736572676F7270;
  v205._object = 0xE90000000000003DLL;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v203[0] = *v0;
  v203[1] = v4;
  v204 = v5;
  sub_10008ABF4(v203[0], v4, v5);
  v6._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v203[0] = 0x757465534432443CLL;
  v203[1] = 0xEF206C65646F4D70;
  String.append(_:)(v205);

  v9 = v203[0];
  v8 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v203[0] = 0xD000000000000017;
  v203[1] = 0x8000000100149810;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + 17);
  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = v203[0];
  v13 = v203[1];
  v203[0] = v9;
  v203[1] = v8;

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = v203[0];
  v16 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v202 = 0xD000000000000011;
  v203[0] = 0xD000000000000011;
  v203[1] = 0x8000000100149830;
  v17 = type metadata accessor for D2DSetupModel();
  sub_100005EB8(v0 + v17[6], v3, &unk_1001BBAA0);
  v18._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = v203[0];
  v21 = v203[1];
  v203[0] = v15;
  v203[1] = v16;

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  String.append(_:)(v22);

  v23 = v203[0];
  v24 = v203[1];
  strcpy(v203, "appleId=");
  BYTE1(v203[1]) = 0;
  WORD1(v203[1]) = 0;
  HIDWORD(v203[1]) = -402653184;
  v25 = (v0 + v17[7]);
  v26 = v25[1];
  v205._countAndFlagsBits = *v25;
  v205._object = v26;

  sub_100005DCC(&unk_1001BBA70);
  v27._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29 = v203[0];
  v30 = v203[1];
  v203[0] = v23;
  v203[1] = v24;

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  v32 = v203[0];
  v33 = v203[1];
  strcpy(v203, "osVersion=");
  BYTE3(v203[1]) = 0;
  HIDWORD(v203[1]) = -369098752;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[8]);
  type metadata accessor for SFOSVersion(0);
  v34._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v203[0];
  v37 = v203[1];
  v203[0] = v32;
  v203[1] = v33;

  v38._countAndFlagsBits = v36;
  v38._object = v37;
  String.append(_:)(v38);

  v40 = v203[0];
  v39 = v203[1];
  strcpy(v203, "sessionUUID=");
  BYTE5(v203[1]) = 0;
  HIWORD(v203[1]) = -5120;
  sub_100005EB8(v0 + v17[9], v3, &unk_1001BBAA0);
  v41._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 32;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43 = v203[0];
  v44 = v203[1];
  v203[0] = v40;
  v203[1] = v39;

  v45._countAndFlagsBits = v43;
  v45._object = v44;
  String.append(_:)(v45);

  v47 = v203[0];
  v46 = v203[1];
  v203[0] = 0x3D69737372;
  v203[1] = 0xE500000000000000;
  LODWORD(v205._countAndFlagsBits) = *(v0 + v17[10]);
  v48._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v48);

  v49._countAndFlagsBits = 32;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v50 = v203[0];
  v51 = v203[1];
  v203[0] = v47;
  v203[1] = v46;

  v52._countAndFlagsBits = v50;
  v52._object = v51;
  String.append(_:)(v52);

  v54 = v203[0];
  v53 = v203[1];
  strcpy(v203, "badPINCount=");
  BYTE5(v203[1]) = 0;
  HIWORD(v203[1]) = -5120;
  LODWORD(v205._countAndFlagsBits) = *(v0 + v17[11]);
  v55._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 32;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  v57 = v203[0];
  v58 = v203[1];
  v203[0] = v54;
  v203[1] = v53;

  v59._countAndFlagsBits = v57;
  v59._object = v58;
  String.append(_:)(v59);

  v61 = v203[0];
  v60 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v203[0] = 0xD000000000000012;
  v203[1] = 0x8000000100149850;
  v205._countAndFlagsBits = *(v0 + v17[12]);
  v62._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v62);

  v63._countAndFlagsBits = 32;
  v63._object = 0xE100000000000000;
  String.append(_:)(v63);
  v64 = v203[0];
  v65 = v203[1];
  v203[0] = v61;
  v203[1] = v60;

  v66._countAndFlagsBits = v64;
  v66._object = v65;
  String.append(_:)(v66);

  v68 = v203[0];
  v67 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v203[0] = 0xD000000000000015;
  v203[1] = 0x8000000100149870;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[13]);
  v69._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v69);

  v70._countAndFlagsBits = 32;
  v70._object = 0xE100000000000000;
  String.append(_:)(v70);
  v71 = v203[0];
  v72 = v203[1];
  v203[0] = v68;
  v203[1] = v67;

  v73._countAndFlagsBits = v71;
  v73._object = v72;
  String.append(_:)(v73);

  v75 = v203[0];
  v74 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v203[0] = 0xD000000000000014;
  v203[1] = 0x8000000100149890;
  v205._countAndFlagsBits = *(v0 + v17[14]);
  v76._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v76);

  v77._countAndFlagsBits = 32;
  v77._object = 0xE100000000000000;
  String.append(_:)(v77);
  v78 = v203[0];
  v79 = v203[1];
  v203[0] = v75;
  v203[1] = v74;

  v80._countAndFlagsBits = v78;
  v80._object = v79;
  String.append(_:)(v80);

  v82 = v203[0];
  v81 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v203[0] = 0xD000000000000014;
  v203[1] = 0x80000001001498B0;
  v83 = (v0 + v17[15]);
  v84 = *v83;
  LOBYTE(v83) = *(v83 + 4);
  LODWORD(v205._countAndFlagsBits) = v84;
  BYTE4(v205._countAndFlagsBits) = v83;
  sub_100005DCC(&qword_1001BCD60);
  v85._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v85);

  v86._countAndFlagsBits = 32;
  v86._object = 0xE100000000000000;
  String.append(_:)(v86);
  v87 = v203[0];
  v88 = v203[1];
  v203[0] = v82;
  v203[1] = v81;

  v89._countAndFlagsBits = v87;
  v89._object = v88;
  String.append(_:)(v89);

  v91 = v203[0];
  v90 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v203[0] = 0xD000000000000013;
  v203[1] = 0x80000001001498D0;
  v92 = (v0 + v17[16]);
  v93 = *v92;
  LOBYTE(v92) = *(v92 + 4);
  LODWORD(v205._countAndFlagsBits) = v93;
  BYTE4(v205._countAndFlagsBits) = v92;
  sub_100005DCC(&qword_1001BCD68);
  v94._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v94);

  v95._countAndFlagsBits = 32;
  v95._object = 0xE100000000000000;
  String.append(_:)(v95);
  v96 = v203[0];
  v97 = v203[1];
  v203[0] = v91;
  v203[1] = v90;

  v98._countAndFlagsBits = v96;
  v98._object = v97;
  String.append(_:)(v98);

  v100 = v203[0];
  v99 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v203[0] = 0xD00000000000001BLL;
  v203[1] = 0x80000001001498F0;
  v101 = v0 + v17[17];
  v102 = *v101;
  LOBYTE(v101) = *(v101 + 8);
  v205._countAndFlagsBits = v102;
  LOBYTE(v205._object) = v101;
  sub_100005DCC(&qword_1001BCD70);
  v103._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v103);

  v104._countAndFlagsBits = 32;
  v104._object = 0xE100000000000000;
  String.append(_:)(v104);
  v105 = v203[0];
  v106 = v203[1];
  v203[0] = v100;
  v203[1] = v99;

  v107._countAndFlagsBits = v105;
  v107._object = v106;
  String.append(_:)(v107);

  v109 = v203[0];
  v108 = v203[1];
  strcpy(v203, "dismissType=");
  BYTE5(v203[1]) = 0;
  HIWORD(v203[1]) = -5120;
  v110 = (v0 + v17[18]);
  v111 = *v110;
  LOBYTE(v110) = *(v110 + 4);
  LODWORD(v205._countAndFlagsBits) = v111;
  BYTE4(v205._countAndFlagsBits) = v110;
  sub_100005DCC(&qword_1001BCD78);
  v112._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v112);

  v113._countAndFlagsBits = 32;
  v113._object = 0xE100000000000000;
  String.append(_:)(v113);
  v114 = v203[0];
  v115 = v203[1];
  v203[0] = v109;
  v203[1] = v108;

  v116._countAndFlagsBits = v114;
  v116._object = v115;
  String.append(_:)(v116);

  v118 = v203[0];
  v117 = v203[1];
  v203[0] = 0x3D726F727265;
  v203[1] = 0xE600000000000000;
  v205._countAndFlagsBits = *(v0 + v17[19]);
  v119 = v205._countAndFlagsBits;
  sub_100005DCC(&qword_1001BCA40);
  v120._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v120);

  v121._countAndFlagsBits = 32;
  v121._object = 0xE100000000000000;
  String.append(_:)(v121);
  v122 = v203[0];
  v123 = v203[1];
  v203[0] = v118;
  v203[1] = v117;

  v124._countAndFlagsBits = v122;
  v124._object = v123;
  String.append(_:)(v124);

  v126 = v203[0];
  v125 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v201 = 0xD000000000000010;
  v203[0] = 0xD000000000000010;
  v203[1] = 0x8000000100149910;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[20]);
  v127._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v127);

  v128._countAndFlagsBits = 32;
  v128._object = 0xE100000000000000;
  String.append(_:)(v128);
  v129 = v203[0];
  v130 = v203[1];
  v203[0] = v126;
  v203[1] = v125;

  v131._countAndFlagsBits = v129;
  v131._object = v130;
  String.append(_:)(v131);

  v133 = v203[0];
  v132 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v203[0] = 0xD000000000000016;
  v203[1] = 0x8000000100149930;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[21]);
  v134._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v134);

  v135._countAndFlagsBits = 32;
  v135._object = 0xE100000000000000;
  String.append(_:)(v135);
  v136 = v203[0];
  v137 = v203[1];
  v203[0] = v133;
  v203[1] = v132;

  v138._countAndFlagsBits = v136;
  v138._object = v137;
  String.append(_:)(v138);

  v140 = v203[0];
  v139 = v203[1];
  strcpy(v203, "isWifiOn=");
  WORD1(v203[1]) = 0;
  HIDWORD(v203[1]) = -385875968;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[22]);
  sub_100005DCC(&qword_1001BCD80);
  v141._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v141);

  v142._countAndFlagsBits = 32;
  v142._object = 0xE100000000000000;
  String.append(_:)(v142);
  v143 = v203[0];
  v144 = v203[1];
  v203[0] = v140;
  v203[1] = v139;

  v145._countAndFlagsBits = v143;
  v145._object = v144;
  String.append(_:)(v145);

  v147 = v203[0];
  v146 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v203[0] = v202;
  v203[1] = 0x8000000100149950;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[23]);
  v148._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v148);

  v149._countAndFlagsBits = 32;
  v149._object = 0xE100000000000000;
  String.append(_:)(v149);
  v150 = v203[0];
  v151 = v203[1];
  v203[0] = v147;
  v203[1] = v146;

  v152._countAndFlagsBits = v150;
  v152._object = v151;
  String.append(_:)(v152);

  v154 = v203[0];
  v153 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v155 = v201;
  v203[0] = v201;
  v203[1] = 0x8000000100149970;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[24]);
  v156._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v156);

  v157._countAndFlagsBits = 32;
  v157._object = 0xE100000000000000;
  String.append(_:)(v157);
  v158 = v203[0];
  v159 = v203[1];
  v203[0] = v154;
  v203[1] = v153;

  v160._countAndFlagsBits = v158;
  v160._object = v159;
  String.append(_:)(v160);

  v162 = v203[0];
  v161 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v203[0] = 0xD000000000000015;
  v203[1] = 0x8000000100149990;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[25]);
  type metadata accessor for SFDeviceClassCode(0);
  v163._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v163);

  v164._countAndFlagsBits = 32;
  v164._object = 0xE100000000000000;
  String.append(_:)(v164);
  v165 = v203[0];
  v166 = v203[1];
  v203[0] = v162;
  v203[1] = v161;

  v167._countAndFlagsBits = v165;
  v167._object = v166;
  String.append(_:)(v167);

  v169 = v203[0];
  v168 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v203[0] = 0xD000000000000015;
  v203[1] = 0x80000001001499B0;
  LOBYTE(v205._countAndFlagsBits) = *(v0 + v17[26]);
  type metadata accessor for SFDeviceModelCode(0);
  v170._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v170);

  v171._countAndFlagsBits = 32;
  v171._object = 0xE100000000000000;
  String.append(_:)(v171);
  v172 = v203[0];
  v173 = v203[1];
  v203[0] = v169;
  v203[1] = v168;

  v174._countAndFlagsBits = v172;
  v174._object = v173;
  String.append(_:)(v174);

  v176 = v203[0];
  v175 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v203[0] = 0xD000000000000015;
  v203[1] = 0x80000001001499D0;
  v177 = (v0 + v17[27]);
  v178 = v177[1];
  v205._countAndFlagsBits = *v177;
  v205._object = v178;

  v179._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v179);

  v180._countAndFlagsBits = 32;
  v180._object = 0xE100000000000000;
  String.append(_:)(v180);
  v181 = v203[0];
  v182 = v203[1];
  v203[0] = v176;
  v203[1] = v175;

  v183._countAndFlagsBits = v181;
  v183._object = v182;
  String.append(_:)(v183);

  v185 = v203[0];
  v184 = v203[1];
  strcpy(v203, "testMode=");
  WORD1(v203[1]) = 0;
  HIDWORD(v203[1]) = -385875968;
  LOBYTE(v205._countAndFlagsBits) = sub_10009344C();
  v186._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v186);

  v187._countAndFlagsBits = 32;
  v187._object = 0xE100000000000000;
  String.append(_:)(v187);
  v188 = v203[0];
  v189 = v203[1];
  v203[0] = v185;
  v203[1] = v184;

  v190._countAndFlagsBits = v188;
  v190._object = v189;
  String.append(_:)(v190);

  v192 = v203[0];
  v191 = v203[1];
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v203[0] = v155;
  v203[1] = 0x80000001001499F0;
  v205._countAndFlagsBits = *(v0 + v17[30]);
  v193._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v193);

  v194._countAndFlagsBits = 32;
  v194._object = 0xE100000000000000;
  String.append(_:)(v194);
  v195 = v203[0];
  v196 = v203[1];
  v203[0] = v192;
  v203[1] = v191;

  v197._countAndFlagsBits = v195;
  v197._object = v196;
  String.append(_:)(v197);

  v198._countAndFlagsBits = 62;
  v198._object = 0xE100000000000000;
  String.append(_:)(v198);

  return v203[0];
}

uint64_t sub_100094E44()
{
  *&v57[0] = 0x3D656C746974;
  *(&v57[0] + 1) = 0xE600000000000000;
  v1 = *(v0 + 16);
  *&v51 = *(v0 + 8);
  *(&v51 + 1) = v1;

  v2._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x3D656C746974;
  *&v57[0] = 0xD000000000000013;
  *(&v57[0] + 1) = 0x8000000100149A10;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v5 = v57[0];
  *&v57[0] = 0x3D6567616D69;
  *(&v57[0] + 1) = 0xE600000000000000;
  v63 = *(v0 + 24);
  *&v51 = v63;
  sub_100005EB8(&v63, v50, &qword_1001BCD88);
  sub_100005DCC(&qword_1001BCD88);
  v6._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = v57[0];
  v57[0] = v5;

  String.append(_:)(v8);

  v9 = v57[0];
  *&v57[0] = 0x656C746974627573;
  *(&v57[0] + 1) = 0xE90000000000003DLL;
  v62 = *(v0 + 40);
  *&v51 = v62;
  sub_100005EB8(&v62, v50, &qword_1001BCD90);
  sub_100005DCC(&qword_1001BCD90);
  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = v57[0];
  v57[0] = v9;

  String.append(_:)(v12);

  v13 = v57[0];
  *&v57[0] = 0;
  *(&v57[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  *&v57[0] = 0xD000000000000010;
  *(&v57[0] + 1) = 0x8000000100149A30;
  v61 = *(v0 + 48);
  v51 = *(v0 + 48);
  sub_100005EB8(&v61, v50, &unk_1001BBA70);
  sub_100005DCC(&unk_1001BBA70);
  v14._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16 = v57[0];
  v57[0] = v13;

  String.append(_:)(v16);

  v17 = v57[0];
  *&v57[0] = 0;
  *(&v57[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  *&v57[0] = 0xD000000000000015;
  *(&v57[0] + 1) = 0x8000000100149A50;
  v60 = *(v0 + 64);
  v51 = *(v0 + 64);
  sub_100005EB8(&v60, v50, &unk_1001BBA70);
  v18._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = v57[0];
  v57[0] = v17;

  String.append(_:)(v20);

  v21 = v57[0];
  *&v57[0] = 0x73736572676F7270;
  *(&v57[0] + 1) = 0xE90000000000003DLL;
  LODWORD(v51) = *(v0 + 80);
  BYTE4(v51) = *(v0 + 84);
  sub_100005DCC(&qword_1001BCD68);
  v22._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = v57[0];
  v57[0] = v21;

  String.append(_:)(v24);

  v25 = v57[0];
  *&v57[0] = 0;
  *(&v57[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  *&v57[0] = 0xD000000000000011;
  *(&v57[0] + 1) = 0x8000000100149A70;
  v59 = *(v0 + 88);
  v51 = *(v0 + 88);
  sub_100005EB8(&v59, v50, &unk_1001BBA70);
  v26._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 32;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28 = v57[0];
  v57[0] = v25;

  String.append(_:)(v28);

  v29 = v57[0];
  *&v57[0] = 0;
  *(&v57[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  *&v57[0] = 0xD000000000000018;
  *(&v57[0] + 1) = 0x8000000100149A90;
  v58 = *(v0 + 104);
  v51 = *(v0 + 104);
  sub_100005EB8(&v58, v50, &unk_1001BBA70);
  v30._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32 = v57[0];
  v57[0] = v29;

  String.append(_:)(v32);

  v33 = v57[0];
  *&v57[0] = 0;
  *(&v57[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v57, "dismissalType=");
  HIBYTE(v57[0]) = -18;
  *&v51 = *(v0 + 120);
  type metadata accessor for PRXDismissalType(0);
  v34._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v57[0];
  v57[0] = v33;

  String.append(_:)(v36);

  v37 = v57[0];
  *&v57[0] = 0;
  *(&v57[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v38 = *(v0 + 144);
  v57[0] = *(v0 + 128);
  v57[1] = v38;
  v39 = *(v0 + 176);
  v41 = *(v0 + 128);
  v40 = *(v0 + 144);
  v57[2] = *(v0 + 160);
  v57[3] = v39;
  v55 = 0xD00000000000001CLL;
  v56 = 0x8000000100149AB0;
  v51 = v41;
  v52 = v40;
  v42 = *(v0 + 176);
  v53 = *(v0 + 160);
  v54 = v42;
  sub_100005EB8(v57, v50, &qword_1001B9D00);
  sub_100005DCC(&qword_1001B9D00);
  v43._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 32;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v45 = v55;
  v46 = v56;
  v51 = v37;

  v47._countAndFlagsBits = v45;
  v47._object = v46;
  String.append(_:)(v47);

  v48._countAndFlagsBits = 62;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);

  return v51;
}

uint64_t sub_100095628(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a1 <= 3)
      {
        if (a1 > 1)
        {
          if (a1 ^ 2 | a2)
          {
            if (a6 == 3 && a4 == 3 && !a5)
            {
              return 1;
            }
          }

          else if (a6 == 3 && a4 == 2 && !a5)
          {
            return 1;
          }
        }

        else if (a1 | a2)
        {
          if (a6 == 3 && a4 == 1 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && !(a5 | a4))
        {
          return 1;
        }
      }

      else if (a1 <= 5)
      {
        if (a1 ^ 4 | a2)
        {
          if (a6 == 3 && a4 == 5 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a1 ^ 6 | a2)
      {
        if (a1 ^ 7 | a2)
        {
          if (a6 == 3 && a4 == 8 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 7 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 6 && !a5)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!a3)
  {
    if (!a6)
    {
      sub_1000122EC(0, &qword_1001BA740);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100095868(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10018F190, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000958B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10018F1F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100095914()
{
  result = qword_1001BCD98;
  if (!qword_1001BCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCD98);
  }

  return result;
}

uint64_t sub_100095970()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCDA0);
  v1 = sub_10000D298(v0, qword_1001BCDA0);
  if (qword_1001B92C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100095A4C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000122EC(0, &qword_1001BCE90);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = sub_100096788();
    v11 = [a1 presentProxCardFlowWithDelegate:v2 initialViewController:v10];

    v12 = *(v2 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_navigationController);
    *(v2 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_navigationController) = v11;

    return swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100095BF8()
{
  v1 = v0;
  if (qword_1001B93E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BCDA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup showing Visual Auth card", v5, 2u);
  }

  v6 = objc_allocWithZone(type metadata accessor for D2DSetupVisualAuthViewController());
  v7 = sub_1000133B8();
  sub_1000972DC(v7, v1, &off_10018FF38);
}

void sub_100095E30(const char *a1, void (*a2)(void), uint64_t a3)
{
  v7 = v3;
  if (qword_1001B93E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BCDA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 2u);
  }

  a2(0);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1000972DC(v12, v7, a3);
}

void sub_100095F70(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000122EC(0, &qword_1001BCE90);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (qword_1001B93E8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    sub_10000D298(v9, qword_1001BCDA0);
    a1 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = a1;
      v33 = v13;
      *v12 = 136315138;
      sub_1000122EC(0, &qword_1001BCEA0);
      v14 = a1;
      v15 = String.init<A>(reflecting:)();
      v17 = sub_10002065C(v15, v16, &v33);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "D2D Setup showing %s", v12, 0xCu);
      sub_1000083B0(v13);
    }

    v18 = *(v2 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_navigationController);
    if (!v18)
    {
      break;
    }

    v19 = v18;
    v20 = [v19 viewControllers];
    sub_1000122EC(0, &qword_1001BCEA0);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v19;
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = 0;
    v2 = v21 & 0xC000000000000001;
    while (1)
    {
      if (v22 == v23)
      {

        v29 = v31;
        [v31 pushViewController:a1 animated:1];
        goto LABEL_20;
      }

      if (v2)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      sub_1000122EC(0, &qword_1001BA740);
      v26 = static NSObject.== infix(_:_:)();

      ++v23;
      if (v26)
      {

        v29 = v31;

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v29 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v29, v27, "No active navigation controller", v28, 2u);
  }

LABEL_20:
}

void sub_1000963C8(uint64_t a1)
{
  if (qword_1001B93E8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    sub_10000D298(v3, qword_1001BCDA0);

    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v7 = 136315394;
      v8 = sub_1000B9E58(a1);
      v10 = sub_10002065C(v8, v9, v31);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      if (*(v4 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_isBlockingHardwareButtons))
      {
        v11 = 7562617;
      }

      else
      {
        v11 = 28526;
      }

      if (*(v4 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_isBlockingHardwareButtons))
      {
        v12 = 0xE300000000000000;
      }

      else
      {
        v12 = 0xE200000000000000;
      }

      v13 = sub_10002065C(v11, v12, v31);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Button actions: %s, blocked %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    if (!a1)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_1000122EC(0, &qword_1001BC220);
      sub_1000670A4();
      Set.Iterator.init(_cocoa:)();
      a1 = v31[0];
      v14 = v31[1];
      v16 = v31[2];
      v15 = v31[3];
      v17 = v31[4];
    }

    else
    {
      v18 = -1 << *(a1 + 32);
      v14 = a1 + 56;
      v16 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(a1 + 56);

      v15 = 0;
    }

    v1 = &qword_1001BC000;
    v28 = v16;
    v21 = (v16 + 64) >> 6;
    while (a1 < 0)
    {
      v27 = __CocoaSet.Iterator.next()();
      if (!v27 || (v29 = v27, sub_1000122EC(0, &qword_1001BC220), swift_dynamicCast(), v26 = v30, v24 = v15, v25 = v17, v1 = &qword_1001BC000, !v30))
      {
LABEL_31:
        sub_100024148();
        return;
      }

LABEL_28:
      if ((*(v4 + v1[446]) & 1) == 0 && ([v26 events] & 0x10) != 0)
      {
        sub_100096A1C();
        v1 = &qword_1001BC000;
      }

      [v26 sendResponseWithUnHandledEvents:{0, v28, v29}];

      v15 = v24;
      v17 = v25;
    }

    v22 = v15;
    v23 = v17;
    v24 = v15;
    if (v17)
    {
LABEL_24:
      v25 = (v23 - 1) & v23;
      v26 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
      if (!v26)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        goto LABEL_31;
      }

      v23 = *(v14 + 8 * v24);
      ++v22;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  __break(1u);
}

NSObject *sub_100096788()
{
  v1 = v0;
  if (qword_1001B93F0 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1001B93E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000D298(v4, qword_1001BCDA0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v3;
      v5 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "D2D Setup using cached card for initial card: %@", v8, 0xCu);
      sub_100075188(v9);
    }

    goto LABEL_14;
  }

  if (qword_1001B93E8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000D298(v10, qword_1001BCDA0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "D2D Setup creating Start card", v13, 2u);
  }

  type metadata accessor for D2DSetupStartViewController();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = *(v1 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_prepareForPresentation);
  if (v14)
  {
    sub_100024138(*(v1 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_prepareForPresentation));
    v6 = v5;
    v14();
    sub_100012050(v14);
    v5 = v6;
LABEL_14:
  }

  return v5;
}

void sub_100096A1C()
{
  v1 = v0;
  if (qword_1001B93E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BCDA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Home button", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_homePressed;
  if ((*(v0 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_homePressed) & 1) != 0 || !sub_10006D1F8())
  {
    *(v0 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissedForExternalContent) = 0;

    sub_100096BC4(4, 1);
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring first home button press to unlock", v9, 2u);
    }

    *(v1 + v6) = 1;
  }
}

void sub_100096BC4(int a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v2 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissed) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissed) = 1;
    if (qword_1001B93E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000D298(v10, qword_1001BCDA0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v30 = a1;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v14 = 136315394;
      v31 = a1;
      type metadata accessor for SVSUserActionType(0);
      v15 = String.init<A>(reflecting:)();
      v17 = sub_10002065C(v15, v16, &v32);

      *(v14 + 4) = v17;
      *(v14 + 12) = 1024;
      *(v14 + 14) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "D2D Setup dismiss with type %s, animated: %{BOOL}d", v14, 0x12u);
      sub_1000083B0(v29);
    }

    sub_1000122EC(0, &qword_1001BCE90);
    *v9 = static OS_dispatch_queue.main.getter();
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v18 = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if ((v18 & 1) == 0)
    {
      __break(1u);
      goto LABEL_24;
    }

    v19 = v30;
    if (v30 == 24)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        [Strong dismissViewControllerAnimated:a2 & 1 completion:0];

        goto LABEL_13;
      }

      v23 = *(v3 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_navigationController);
      if (!v23 || (v24 = [v23 presentingViewController]) == 0)
      {
LABEL_13:
        if (qword_1001B93F0 == -1)
        {
LABEL_14:
          qword_1001BCDC0 = 0;
          swift_unknownObjectWeakAssign();
          return;
        }

LABEL_24:
        swift_once();
        goto LABEL_14;
      }

      v25 = v24;
      while (1)
      {
        v26 = [v25 presentingViewController];
        if (!v26)
        {
          break;
        }

        v27 = [v25 presentingViewController];
        v25 = v27;
        if (!v27)
        {
          goto LABEL_12;
        }
      }

      [v25 dismissViewControllerAnimated:a2 & 1 completion:0];
    }

    else
    {
      v22 = *(v3 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_navigationController);
      if (v22)
      {
        [v22 dismissViewControllerAnimated:a2 & 1 completion:0];
      }
    }

LABEL_12:
    if (v19 == 25)
    {
      return;
    }

    goto LABEL_13;
  }
}

id sub_100096F98()
{
  *&v0[OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_navigationController] = 0;
  v0[OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissedForExternalContent] = 0;
  v0[OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissed] = 0;
  v1 = &v0[OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_didDismiss];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_prepareForPresentation];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_isBlockingHardwareButtons] = 0;
  v0[OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_homePressed] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for D2DSetupRouter();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100097060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for D2DSetupRouter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10009712C()
{
  v1 = v0;
  if (qword_1001B93E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BCDA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup was dismissed", v5, 2u);
  }

  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissed) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissedForExternalContent) = 0;
    sub_100096BC4(0, 1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_didDismiss);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissedForExternalContent);

    v6((v7 & 1) == 0);

    sub_100012050(v6);
  }
}

uint64_t sub_1000972DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000122EC(0, &qword_1001BCE90);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  v11 = *(a2 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_prepareForPresentation);
  if (v11)
  {

    v11(a1, a3);
    sub_100012050(v11);
  }

  v12 = *(a2 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_navigationController);
  if (v12)
  {
    [v12 pushViewController:a1 animated:1];
  }

  if (qword_1001B93F0 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  qword_1001BCDC0 = a3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1000974B4(char a1)
{
  v2 = sub_100098680(a1);
  v3 = v1;
  if (v2 != 0xD00000000000001BLL || 0x8000000100149BD0 != v1)
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_5;
    }

    if (v2 != 0xD00000000000001ELL || 0x8000000100149BF0 != v3)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_5;
      }

      if (v2 != 0xD000000000000023 || 0x8000000100149C10 != v3)
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_5;
        }

        v17 = 0xD000000000000013;
        if (v2 != 0xD000000000000013 || 0x8000000100149C40 != v3)
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_5;
          }

          if (v2 != 0xD000000000000016 || 0x8000000100149C60 != v3)
          {
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_5;
            }

            if (v2 == 0x4C4C41435F444E45 && v3 == 0xEE00454C5449545FLL)
            {
              goto LABEL_25;
            }

            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v20)
            {
              goto LABEL_27;
            }

            v21 = 0xD000000000000011;
            if (v2 == 0xD000000000000011 && 0x8000000100149C80 == v3)
            {
              goto LABEL_25;
            }

            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v22)
            {
              goto LABEL_27;
            }

            if (v2 == 0xD000000000000020 && 0x8000000100149CA0 == v3)
            {
              goto LABEL_25;
            }

            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v23)
            {
              goto LABEL_27;
            }

            if (v2 == 0xD000000000000021 && 0x8000000100149CD0 == v3)
            {
LABEL_25:

LABEL_27:
              v6 = [objc_opt_self() mainBundle];
              v73 = 0xE000000000000000;
              v8 = 0x800000010014A330;
              v9 = v2;
              v10 = v3;
              v7 = 0xD000000000000013;
              goto LABEL_9;
            }

            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v24)
            {
              goto LABEL_27;
            }

            if (v2 == 0x4C41435F4554554DLL && v3 == 0xEF454C5449545F4CLL)
            {
              goto LABEL_39;
            }

            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v25)
            {
              goto LABEL_41;
            }

            if (v2 == 0xD000000000000012 && 0x8000000100149D00 == v3)
            {
              goto LABEL_39;
            }

            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v26)
            {
              goto LABEL_41;
            }

            if (v2 == 0xD00000000000001BLL && 0x8000000100149D20 == v3)
            {
              goto LABEL_39;
            }

            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v27)
            {
              goto LABEL_41;
            }

            if (v2 == 0xD00000000000001BLL && 0x8000000100149D40 == v3)
            {
              goto LABEL_39;
            }

            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v28)
            {
              goto LABEL_41;
            }

            if (v2 == 0xD00000000000001BLL && 0x8000000100149D60 == v3)
            {
              goto LABEL_39;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_41;
            }

            if (v2 == 0xD00000000000001BLL && 0x8000000100149D80 == v3)
            {
              goto LABEL_39;
            }

            v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v30)
            {
              goto LABEL_41;
            }

            if (v2 == 0xD000000000000012 && 0x8000000100149DA0 == v3)
            {
              goto LABEL_39;
            }

            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v31)
            {
              goto LABEL_41;
            }

            if (v2 == 0x4C41435F4554554DLL && v3 == 0xEE00454E4F445F4CLL)
            {
LABEL_39:

LABEL_41:
              v5 = "Localizable-PID_8229";
              v6 = [objc_opt_self() mainBundle];
              v7 = 0xD000000000000014;
              goto LABEL_6;
            }

            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v32)
            {
              goto LABEL_41;
            }

            if (v2 == 0xD00000000000001BLL && 0x8000000100149DC0 == v3)
            {

              goto LABEL_67;
            }

            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v33)
            {
LABEL_67:
              v17 = String._bridgeToObjectiveC()();
              v6 = [objc_opt_self() bundleWithIdentifier:v17];

              if (v6)
              {
                v34 = "Localizable-PID_8229";
LABEL_81:
                v7 = 0xD000000000000014;
                v73 = 0xE000000000000000;
                v8 = (v34 - 32) | 0x8000000000000000;
                goto LABEL_8;
              }

              goto LABEL_138;
            }

            if (v2 == 0xD00000000000001BLL && 0x8000000100149DE0 == v3)
            {

              goto LABEL_73;
            }

            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v35)
            {
LABEL_73:
              v17 = String._bridgeToObjectiveC()();
              v6 = [objc_opt_self() bundleWithIdentifier:v17];

              if (v6)
              {
                v34 = "Localizable-PID_8230";
                goto LABEL_81;
              }

              goto LABEL_138;
            }

            if (v2 == 0xD00000000000001BLL && 0x8000000100149E00 == v3)
            {

              goto LABEL_79;
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
LABEL_79:
              v17 = String._bridgeToObjectiveC()();
              v6 = [objc_opt_self() bundleWithIdentifier:v17];

              if (v6)
              {
                v34 = "Localizable-PID_8218";
                goto LABEL_81;
              }

LABEL_138:
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_139:
              if (v2 == 0x49415F4552414853 && v3 == 0xEC00000047415452)
              {
                goto LABEL_144;
              }

              v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v55)
              {
LABEL_146:
                v6 = [objc_opt_self() mainBundle];
                v73 = 0xE000000000000000;
                v8 = 0x800000010014A220;
                v9 = v2;
                v10 = v3;
                v7 = v21;
                goto LABEL_9;
              }

              if (v2 == 0xD000000000000015 && 0x800000010014A1C0 == v3)
              {
LABEL_144:

                goto LABEL_146;
              }

              v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v56)
              {
                goto LABEL_146;
              }

              if (v2 == v17 && 0x800000010014A1E0 == v3)
              {

                return 0;
              }

              v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v57)
              {
                return 0;
              }

              if (v2 != 0xD000000000000010 || 0x8000000100147D40 != v3)
              {
                v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v58)
                {
LABEL_159:
                  v60 = String._bridgeToObjectiveC()();

                  v61 = sub_100126B8C(v60);

                  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v64 = v63;

                  v65 = [objc_opt_self() mainBundle];
                  v74._object = 0xE000000000000000;
                  v66._countAndFlagsBits = v62;
                  v66._object = v64;
                  v67.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                  v67.value._object = 0xEB00000000656C62;
                  v68._countAndFlagsBits = 0;
                  v68._object = 0xE000000000000000;
                  v74._countAndFlagsBits = 0;
                  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, v67, v65, v68, v74)._countAndFlagsBits;

                  return countAndFlagsBits;
                }

                if (v2 != v17 || 0x800000010014A200 != v3)
                {
                  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v59 & 1) == 0)
                  {
                    v69 = [objc_opt_self() mainBundle];
                    v75._object = 0xE000000000000000;
                    v70._countAndFlagsBits = v2;
                    v70._object = v3;
                    v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                    v71.value._object = 0xEB00000000656C62;
                    v72._countAndFlagsBits = 0;
                    v72._object = 0xE000000000000000;
                    v75._countAndFlagsBits = 0;
                    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v75)._countAndFlagsBits;

                    return countAndFlagsBits;
                  }

                  goto LABEL_159;
                }
              }

              goto LABEL_159;
            }

            v21 = 0xD000000000000017;
            if (v2 == 0xD000000000000017 && 0x8000000100149E20 == v3)
            {
              goto LABEL_84;
            }

            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v37)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD00000000000001ALL && 0x8000000100149E40 == v3)
            {
              goto LABEL_84;
            }

            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v38)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000019 && 0x8000000100149E60 == v3)
            {
              goto LABEL_84;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000020 && 0x8000000100149E80 == v3)
            {
              goto LABEL_84;
            }

            v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v40)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000023 && 0x8000000100149EB0 == v3)
            {
              goto LABEL_84;
            }

            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v41)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000023 && 0x8000000100149EE0 == v3)
            {
              goto LABEL_84;
            }

            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v42)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000026 && 0x8000000100149F10 == v3)
            {
              goto LABEL_84;
            }

            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v43)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD00000000000002ELL && 0x8000000100149F40 == v3)
            {
              goto LABEL_84;
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v44)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000031 && 0x8000000100149F70 == v3)
            {
              goto LABEL_84;
            }

            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v45)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD00000000000002ALL && 0x8000000100149FB0 == v3)
            {
              goto LABEL_84;
            }

            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v46)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD00000000000002DLL && 0x8000000100149FE0 == v3)
            {
              goto LABEL_84;
            }

            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v47)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD00000000000002CLL && 0x800000010014A010 == v3)
            {
              goto LABEL_84;
            }

            v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v48)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000030 && 0x800000010014A040 == v3)
            {
              goto LABEL_84;
            }

            v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v49)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000033 && 0x800000010014A080 == v3)
            {
              goto LABEL_84;
            }

            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v50)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000032 && 0x800000010014A0C0 == v3)
            {
              goto LABEL_84;
            }

            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v51)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000033 && 0x800000010014A100 == v3)
            {
              goto LABEL_84;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v52)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000036 && 0x800000010014A140 == v3)
            {
              goto LABEL_84;
            }

            v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v53)
            {
              goto LABEL_137;
            }

            if (v2 == 0xD000000000000035 && 0x800000010014A180 == v3)
            {
LABEL_84:
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v54 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

LABEL_137:
            v5 = "Localizable-ItemSharing";
            v6 = [objc_opt_self() mainBundle];
            v73 = 0xE000000000000000;
            v7 = 0xD00000000000001CLL;
            goto LABEL_7;
          }
        }
      }
    }
  }

LABEL_5:
  v5 = "Localizable-EndCall";
  v6 = [objc_opt_self() mainBundle];
  v7 = 0xD000000000000017;
LABEL_6:
  v73 = 0xE000000000000000;
LABEL_7:
  v8 = v5 | 0x8000000000000000;
LABEL_8:
  v9 = v2;
  v10 = v3;
LABEL_9:
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, *&v7, v6, v11, *(&v73 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100098680(char a1)
{
  result = 0x45554E49544E4F43;
  switch(a1)
  {
    case 1:
      result = 0x574F4E5F544F4ELL;
      break;
    case 2:
      result = 1162760004;
      break;
    case 3:
      result = 1346980691;
      break;
    case 4:
      result = 0x4C5F50555F544553;
      break;
    case 5:
      result = 0x494147415F595254;
      break;
    case 6:
      result = 0x5455425F444C4F48;
      break;
    case 7:
      result = 0x5443454E4E4F43;
      break;
    case 8:
    case 9:
    case 31:
    case 44:
    case 52:
    case -123:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0x53444F50524941;
      break;
    case 12:
    case 33:
    case 40:
    case 91:
    case 100:
      result = 0xD00000000000001CLL;
      break;
    case 13:
    case 92:
    case 101:
    case 121:
      result = 0xD00000000000001FLL;
      break;
    case 14:
    case 76:
      result = 0xD00000000000002DLL;
      break;
    case 15:
    case 18:
    case 54:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    case 17:
      result = 0xD000000000000027;
      break;
    case 19:
    case 42:
    case 78:
      result = 0xD000000000000030;
      break;
    case 20:
      result = 0x45434E554F4E4E41;
      break;
    case 21:
    case 25:
    case 90:
      result = 0xD000000000000016;
      break;
    case 22:
    case 89:
    case 96:
    case 119:
    case -126:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0x4E5255545F43424FLL;
      break;
    case 24:
      result = 0x4542414C5F43424FLL;
      break;
    case 26:
    case 68:
      result = 0xD000000000000019;
      break;
    case 27:
      result = 0x5249415F5446454CLL;
      break;
    case 28:
      result = 0x49415F5448474952;
      break;
    case 29:
      result = 0x474E494752414843;
      break;
    case 30:
    case 107:
    case -119:
    case -118:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x43415F4F49445541;
      break;
    case 34:
      result = 0x55415F4552414853;
      break;
    case 35:
      result = 0x524148535F574F4ELL;
      break;
    case 36:
    case 99:
    case 112:
    case 117:
    case -128:
      result = 0xD000000000000014;
      break;
    case 37:
      result = 0x454E4E4F43534944;
      break;
    case 38:
      result = 0x454E4E4F43534944;
      break;
    case 39:
      result = 0x495443454E4E4F43;
      break;
    case 41:
    case 50:
      result = 0xD000000000000022;
      break;
    case 43:
      result = 0xD000000000000029;
      break;
    case 45:
      result = 0xD00000000000001BLL;
      break;
    case 46:
    case -124:
      result = 0xD000000000000018;
      break;
    case 47:
    case 67:
    case -122:
      result = 0xD00000000000001ALL;
      break;
    case 48:
      result = 0xD00000000000001BLL;
      break;
    case 49:
    case 85:
    case 88:
    case 110:
      result = 0xD00000000000001ELL;
      break;
    case 51:
      result = 0x4C4C41435F444E45;
      break;
    case 53:
    case 69:
    case 87:
      result = 0xD000000000000020;
      break;
    case 55:
      result = 0x4C41435F4554554DLL;
      break;
    case 56:
    case 64:
      result = 0xD000000000000012;
      break;
    case 57:
      result = 0xD00000000000001BLL;
      break;
    case 58:
      result = 0xD00000000000001BLL;
      break;
    case 59:
      result = 0xD00000000000001BLL;
      break;
    case 60:
      result = 0xD00000000000001BLL;
      break;
    case 61:
      result = 0xD00000000000001BLL;
      break;
    case 62:
      result = 0xD00000000000001BLL;
      break;
    case 63:
      result = 0xD00000000000001BLL;
      break;
    case 65:
      result = 0x4C41435F4554554DLL;
      break;
    case 66:
    case 95:
    case 109:
    case 113:
    case 125:
      result = 0xD000000000000017;
      break;
    case 70:
    case 71:
    case 86:
      result = 0xD000000000000023;
      break;
    case 72:
    case 126:
      result = 0xD000000000000026;
      break;
    case 73:
      result = 0xD00000000000002ELL;
      break;
    case 74:
      result = 0xD000000000000031;
      break;
    case 75:
      result = 0xD00000000000002ALL;
      break;
    case 77:
      result = 0xD00000000000002CLL;
      break;
    case 79:
    case 81:
      result = 0xD000000000000033;
      break;
    case 80:
      result = 0xD000000000000032;
      break;
    case 82:
      result = 0xD000000000000036;
      break;
    case 83:
      result = 0xD000000000000035;
      break;
    case 84:
      result = 0xD00000000000001BLL;
      break;
    case 93:
    case 102:
      result = 0xD00000000000001DLL;
      break;
    case 94:
    case 105:
    case 108:
    case -120:
      result = 0xD000000000000015;
      break;
    case 97:
    case 98:
      result = 0x5F4449454C505041;
      break;
    case 103:
      result = 0x5449545F32415348;
      break;
    case 104:
      result = 0x53454D5F32415348;
      break;
    case 106:
      result = 0x45445F49544C554DLL;
      break;
    case 111:
      result = 0x4741545F454D414ELL;
      break;
    case 114:
      result = 1262698818;
      break;
    case 115:
      result = 0x474E494B4E494CLL;
      break;
    case 116:
      result = 0x5F474E494B4E494CLL;
      break;
    case 118:
      result = 0x4F4D5F4E5241454CLL;
      break;
    case 120:
      result = 0x4F545455425F4B4FLL;
      break;
    case 122:
      result = 0x554F595F48544957;
      break;
    case 123:
      result = 0x4E495F57454956;
      break;
    case 124:
      result = 0x5449575F444E4946;
      break;
    case 127:
      result = 0x4C414E4F53524550;
      break;
    case -127:
      result = 0x554F535F59414C50;
      break;
    case -125:
      result = 0x5F45534943455250;
      break;
    case -121:
      result = 0x49415F4552414853;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009953C()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCEA8);
  v1 = sub_10000D298(v0, qword_1001BCEA8);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100099604(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AirTagPairing2.Assets.ViewIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AirTagMovieViewController();
  v79.receiver = v1;
  v79.super_class = v8;
  objc_msgSendSuper2(&v79, "viewWillAppear:", a1 & 1);
  if (qword_1001B93F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001BCEA8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AirTagMovieViewController viewWillAppear", v12, 2u);
  }

  v13 = [objc_opt_self() sharedInstance];
  v80 = 0;
  v14 = [v13 setCategory:AVAudioSessionCategoryAmbient withOptions:1 error:&v80];

  if (v14)
  {
    v15 = v80;
  }

  else
  {
    v16 = v80;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v78 = v4;
      v20 = v19;
      v21 = swift_slowAlloc();
      ObjectType = v5;
      v22 = v21;
      v80 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_10002065C(v23, v24, &v80);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "setCategory failed: %s", v20, 0xCu);
      sub_1000083B0(v22);
      v5 = ObjectType;

      v4 = v78;
    }

    else
    {
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v27 = *(Strong + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_assets), v28 = Strong, , v28, v27))
  {
    if (v2[OBJC_IVAR____TtC18SharingViewService25AirTagMovieViewController_shouldSkipEngageMovie])
    {
      v29 = &enum case for AirTagPairing2.Assets.ViewIdentifier.loop(_:);
    }

    else
    {
      v29 = &enum case for AirTagPairing2.Assets.ViewIdentifier.intro(_:);
    }

    (*(v5 + 104))(v7, *v29, v4);
    v30 = AirTagPairing2.Assets.view(_:)();
    v32 = v31;
    v78 = v31;
    (*(v5 + 8))(v7, v4);
    v33 = &v2[OBJC_IVAR____TtC18SharingViewService25AirTagMovieViewController_movie];
    v34 = *&v2[OBJC_IVAR____TtC18SharingViewService25AirTagMovieViewController_movie];
    *v33 = v30;
    v33[1] = v32;
    v35 = v30;

    v36 = [v2 contentView];
    v37 = [objc_opt_self() clearColor];
    [v36 setBackgroundColor:v37];

    ObjectType = swift_getObjectType();
    v38 = v35;
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [objc_allocWithZone(UILayoutGuide) init];
    v40 = [v2 contentView];
    [v40 addSubview:v38];

    v41 = [v2 contentView];
    [v41 addLayoutGuide:v39];

    v42 = [v2 contentView];
    v43 = [v42 mainContentGuide];

    v76 = objc_opt_self();
    sub_100005DCC(&qword_1001BBB00);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_10016ED00;
    v45 = [v38 heightAnchor];
    v46 = [v45 constraintEqualToConstant:362.0];

    *(v44 + 32) = v46;
    v47 = [v38 widthAnchor];
    v48 = [v47 constraintEqualToConstant:350.0];

    *(v44 + 40) = v48;
    v49 = [v38 centerYAnchor];
    v50 = [v39 centerYAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v44 + 48) = v51;
    v52 = [v38 centerXAnchor];

    v53 = [v39 centerXAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    *(v44 + 56) = v54;
    v55 = [v39 topAnchor];
    v56 = [v43 topAnchor];
    v57 = [v55 constraintGreaterThanOrEqualToAnchor:v56];

    *(v44 + 64) = v57;
    v58 = [v39 bottomAnchor];
    v59 = [v43 bottomAnchor];
    v60 = [v58 constraintLessThanOrEqualToAnchor:v59];

    *(v44 + 72) = v60;
    v61 = [v39 heightAnchor];
    v62 = [v61 constraintEqualToConstant:145.0];

    *(v44 + 80) = v62;
    v63 = [v39 centerYAnchor];
    v64 = [v43 centerYAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];

    *(v44 + 88) = v65;
    v66 = [v39 leadingAnchor];
    v67 = [v43 leadingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v44 + 96) = v68;
    v69 = [v39 trailingAnchor];
    v70 = [v43 trailingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];

    *(v44 + 104) = v71;
    sub_10000D1F4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v76 activateConstraints:isa];

    v80 = v38;
    dispatch thunk of VideoPlaybackControllable.play()();
  }

  else
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "AirTag assets are nil, exiting here", v75, 2u);
    }
  }
}

id sub_10009A0A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagMovieViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009A148()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCF00);
  v1 = sub_10000D298(v0, qword_1001BCF00);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10009A210()
{
  v60.receiver = v0;
  v60.super_class = type metadata accessor for AirTagPairLockedViewController();
  objc_msgSendSuper2(&v60, "viewDidLoad");
  sub_1000974B4(96);
  v1 = String._bridgeToObjectiveC()();

  [v0 setTitle:v1];

  sub_1000974B4(119);
  v2 = String._bridgeToObjectiveC()();

  [v0 setBottomTrayTitle:v2];

  [v0 setDismissalType:1];
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = [objc_allocWithZone(UIImageView) init];
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 imageNamed:v6];

  [v3 setImage:v7];
  v8 = v3;
  [v8 setContentMode:1];
  v9 = objc_opt_self();
  v10 = [v9 systemGrayColor];
  [v8 setTintColor:v10];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v0 contentView];
  [v11 addSubview:v8];

  v12 = String._bridgeToObjectiveC()();
  v13 = [v5 imageNamed:v12];

  [v4 setImage:v13];
  v14 = v4;
  [v14 setContentMode:1];
  v15 = [v9 systemBlueColor];
  [v14 setTintColor:v15];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v0 contentView];
  [v16 addSubview:v14];

  v17 = [v0 contentView];
  v18 = [v17 mainContentGuide];

  v58 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10016D410;
  v20 = [v8 centerXAnchor];
  v21 = [v18 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [v8 centerYAnchor];
  v24 = [v18 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v19 + 40) = v25;
  v26 = [v8 widthAnchor];
  v27 = [v26 constraintEqualToConstant:152.0];

  *(v19 + 48) = v27;
  v28 = [v8 heightAnchor];
  v29 = [v28 constraintEqualToConstant:152.0];

  *(v19 + 56) = v29;
  v30 = [v8 topAnchor];
  v31 = [v18 topAnchor];
  v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31];

  *(v19 + 64) = v32;
  v33 = [v8 bottomAnchor];

  v34 = [v18 bottomAnchor];
  v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

  *(v19 + 72) = v35;
  v36 = [v14 centerXAnchor];
  v37 = [v18 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v19 + 80) = v38;
  v39 = [v14 centerYAnchor];
  v40 = [v18 centerYAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v19 + 88) = v41;
  v42 = [v14 widthAnchor];
  v43 = [v42 constraintEqualToConstant:152.0];

  *(v19 + 96) = v43;
  v44 = [v14 heightAnchor];
  v45 = [v44 constraintEqualToConstant:152.0];

  *(v19 + 104) = v45;
  v46 = [v14 topAnchor];
  v47 = [v18 topAnchor];
  v48 = [v46 constraintGreaterThanOrEqualToAnchor:v47];

  *(v19 + 112) = v48;
  v49 = [v14 bottomAnchor];

  v50 = [v18 bottomAnchor];
  v51 = [v49 constraintLessThanOrEqualToAnchor:v50];

  *(v19 + 120) = v51;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:isa];

  sub_1000974B4(118);
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v54 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10009B0C8;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_100192E08;
  v55 = _Block_copy(aBlock);
  v56 = [objc_opt_self() actionWithTitle:v54 style:0 handler:v55];

  _Block_release(v55);

  v57 = [v0 addAction:v56];
}

void sub_10009AAFC()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  if (qword_1001B9400 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BCF00);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = 64;
    _os_log_impl(&_mh_execute_header, v4, v5, "learnMorePressed in %ld", v6, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
      sub_1000C1744(0, v2, sub_10009AD70, 0, 71);

      sub_10000D310(v2);
      return;
    }
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "mainController nil while initializing primaryAction", v14, 2u);
  }
}

uint64_t sub_10009AD70()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0);
  v2 = &v14 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  Optional.unwrap(_:file:line:)();
  sub_10000D310(v2);
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v9 = v7;
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    sub_100004F48(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openSensitiveURL:v11 withOptions:isa];
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_10009B028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagPairLockedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009B090()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B0D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009B0E8()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCF48);
  v1 = sub_10000D298(v0, qword_1001BCF48);
  if (qword_1001B92C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009B1EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactor];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_presenter];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_svsAssertion] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle] = 0;
  v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss] = 1;
  v8 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactorGenerator];
  *v8 = sub_10009B324;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_routerGenerator];
  *v9 = sub_10009B370;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_presenterGenerator];
  *v10 = sub_10009B3A4;
  v10[1] = 0;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for D2DSetupFlowViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

uint64_t sub_10009B324()
{
  type metadata accessor for D2DSetupInteractor();
  swift_allocObject();

  return sub_10007F50C(v0);
}

uint64_t sub_10009B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for D2DSetupModel();
  __chkstk_darwin(v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  type metadata accessor for D2DSetupPresenter();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  v14 = (v13 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_interactor);
  *v14 = a1;
  v14[1] = a2;
  v15 = (v13 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_router);
  *v15 = a3;
  v15[1] = a4;
  v16 = v13 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 3;
  v17 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100092D68(a5, v13 + v17);
  swift_beginAccess();
  sub_10008AA10(v13 + v17, v12);
  sub_1000AEB58(v12, 0, 0, 3u, v28);
  v18 = (v13 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel);
  v19 = v28[9];
  v20 = v28[10];
  v21 = v28[7];
  v18[8] = v28[8];
  v18[9] = v19;
  v22 = v28[11];
  v18[10] = v20;
  v18[11] = v22;
  v23 = v28[5];
  v18[4] = v28[4];
  v18[5] = v23;
  v18[6] = v28[6];
  v18[7] = v21;
  v24 = v28[1];
  *v18 = v28[0];
  v18[1] = v24;
  v25 = v28[3];
  v18[2] = v28[2];
  v18[3] = v25;
  return v13;
}

uint64_t sub_10009B5F8(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  if (qword_1001B9410 != -1)
  {
    swift_once();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    if (qword_1001B9418 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_unknownObjectRelease();
      if (qword_1001B9420 != -1)
      {
        swift_once();
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        swift_unknownObjectRelease();
        if (qword_1001B9408 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_10000D298(v7, qword_1001BCF48);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "D2D Setup Flow being reconfigured with cached state after dismissing for external content", v10, 2u);
        }

        result = sub_10009BD90();
        if (a2)
        {
          return a2(result);
        }

        goto LABEL_30;
      }
    }
  }

  if (!a1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v11 = [a1 userInfo];
  if (v11)
  {
    v12 = v11;
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = sub_100004BE0(_swiftEmptyArrayStorage);
  }

  if (qword_1001B9408 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000D298(v14, qword_1001BCF48);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v59 = a2;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v60 = v18;
    *v17 = 136315138;
    v19 = sub_10009FFD0();
    v21 = sub_10002065C(v19, v20, &v60);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "D2D Setup Flow being configured with user info: %s", v17, 0xCu);
    sub_1000083B0(v18);
  }

  v22 = *(v3 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactorGenerator);

  v23 = v22(v13);
  v25 = v24;
  v57 = v24;

  v26 = *(v3 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_routerGenerator);

  v28 = v26(v27);
  v30 = v29;
  v58 = v29;

  v31 = *(v3 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_presenterGenerator);

  v32 = v31(v23, v25, v28, v30, v13);
  v34 = v33;
  v56 = v35;

  v36 = swift_unknownObjectRetain();
  sub_10007F3A8(v36, v34);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v23[4];
  v23[4] = sub_10009D8D0;
  v23[5] = v37;

  sub_100012050(v38);

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v23[6];
  v23[6] = sub_10009D8D8;
  v23[7] = v39;

  sub_100012050(v40);

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v23[8];
  v23[8] = sub_10009D8E0;
  v23[9] = v41;

  sub_100012050(v42);

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v23[10];
  v23[10] = sub_10009D8E8;
  v23[11] = v43;

  sub_100012050(v44);

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v23[12];
  v23[12] = sub_10009D8F0;
  v23[13] = v45;

  sub_100012050(v46);

  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = (v28 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_didDismiss);
  v49 = *(v28 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_didDismiss);
  *v48 = sub_10009D8F8;
  v48[1] = v47;

  sub_100012050(v49);

  v50 = swift_allocObject();
  *(v50 + 24) = v34;
  *(v50 + 32) = v56;
  swift_unknownObjectWeakInit();
  v51 = (v28 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_prepareForPresentation);
  v52 = *(v28 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_prepareForPresentation);
  *v51 = sub_10009D938;
  v51[1] = v50;

  sub_100012050(v52);

  v53 = (v3 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactor);
  *v53 = v23;
  v53[1] = v57;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v54 = (v3 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router);
  *v54 = v28;
  v54[1] = v58;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v55 = (v3 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_presenter);
  *v55 = v32;
  v55[1] = v56;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!v59)
  {
    goto LABEL_29;
  }

  v59(result);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_10009BD90()
{
  if (qword_1001B9410 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = qword_1001BCF68;
  v3 = (v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactor);
  *v3 = Strong;
  v3[1] = v2;
  swift_unknownObjectRelease();
  if (qword_1001B9418 != -1)
  {
    swift_once();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = qword_1001BCF78;
  v6 = (v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router);
  *v6 = v4;
  v6[1] = v5;
  swift_unknownObjectRelease();
  if (qword_1001B9420 != -1)
  {
    swift_once();
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = qword_1001BCF88;
  v9 = (v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_presenter);
  *v9 = v7;
  v9[1] = v8;
  swift_unknownObjectRelease();
  qword_1001BCF68 = 0;
  swift_unknownObjectWeakAssign();
  qword_1001BCF78 = 0;
  swift_unknownObjectWeakAssign();
  qword_1001BCF88 = 0;
  swift_unknownObjectWeakAssign();
  result = sub_100070288();
  if (result)
  {
    v11 = result;
    v12 = String._bridgeToObjectiveC()();
    [v11 setIdleTimerDisabled:1 forReason:v12];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10009BF70(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100070288();

    if (v4)
    {
      v5 = String._bridgeToObjectiveC()();
      [v4 setIdleTimerDisabled:a1 & 1 forReason:v5];

      swift_unknownObjectRelease();
    }
  }
}

void sub_10009C024(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router];
    if (v3)
    {
      *(v3 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_isBlockingHardwareButtons) = 1;
    }

    v4 = Strong;
    v5 = sub_100070288();

    if (v5)
    {
      [v5 setDesiredHardwareButtonEvents:a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10009C0DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router];
    if (v1)
    {
      *(v1 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_isBlockingHardwareButtons) = 0;
    }

    v2 = Strong;
    v3 = sub_100070288();

    if (v3)
    {
      [v3 setDesiredHardwareButtonEvents:16 * (SFDeviceHomeButtonType() != 3)];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10009C190()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1001B9408 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BCF48);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup Flow: dismiss remote alert before external content (eSim external 2FA)", v5, 2u);
    }

    v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss] = 0;
    sub_10009CF08();
    sub_10009D018();
    v6 = sub_100070288();
    if (v6)
    {
      [v6 deactivate];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10009C2D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1001B9408 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BCF48);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup Flow: recreate remote alert and prox cards after external content (eSim external 2FA)", v5, 2u);
    }

    sub_10009D60C();
    sub_10009D740();
    v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss] = 1;
  }
}

void sub_10009C3FC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss;
    *(Strong + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss) = a1 & 1;
    v5 = *(Strong + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactor);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
      v7 = v5 + v6 + *(type metadata accessor for D2DSetupModel() + 72);
      if (*(v7 + 4))
      {
        v8 = 8;
      }

      else
      {
        v8 = *v7;
      }

      swift_unknownObjectRetain();
      sub_100084520(v8);
      swift_unknownObjectRelease();
    }

    v9 = v3;
    v10 = sub_100070288();

    if (v10)
    {
      [v10 dismiss];
      swift_unknownObjectRelease();
    }

    if (*(v3 + v4) == 1)
    {
      sub_10009D740();
      v11 = OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle;
      [*&v9[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle] invalidate];
      v12 = *&v9[v11];
      *&v9[v11] = 0;

      v9 = v12;
    }
  }
}

uint64_t sub_10009C528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = a2;
    swift_unknownObjectWeakAssign();
    sub_1000AD3F0();
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(a3 + 32);
  }

  else
  {
    v7 = 0;
  }

  ObjectType = swift_getObjectType();
  return (*(a2 + 16))(v6, v7, ObjectType, a2);
}

uint64_t sub_10009C6CC(char a1)
{
  v2 = v1;
  if (qword_1001B9408 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BCF48);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "D2D Setup Flow viewDidAppear", v7, 2u);
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for D2DSetupFlowViewController();
  result = objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  v9 = *&v2[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactor];
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = mach_absolute_time();
    v11 = v9 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
    *(v11 + *(type metadata accessor for D2DSetupModel() + 48)) = v10;
    result = swift_unknownObjectRelease();
  }

  if (*&v2[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router])
  {
    swift_unknownObjectRetain();
    sub_100095A4C(v2);
    result = swift_unknownObjectRelease();
  }

  v2[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss] = 1;
  return result;
}

id sub_10009C8A8(char a1)
{
  v2 = v1;
  if (qword_1001B9408 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BCF48);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "D2D Setup Flow viewDidDisappear", v7, 2u);
  }

  v8 = sub_100070288();
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    [v9 setIdleTimerDisabled:0 forReason:v10];

    swift_unknownObjectRelease();
  }

  v11 = OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router;
  v12 = *&v2[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router];
  if (v12 && (*(v12 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissed) & 1) == 0 && v2[OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss] == 1)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Main disappeared without dismiss (device locked?)...dismissing UI", v15, 2u);
    }

    v16 = *&v2[v11];
    if (v16)
    {
      *(v16 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissedForExternalContent) = 0;
      swift_unknownObjectRetain();
      sub_100096BC4(21, 1);
      swift_unknownObjectRelease();
    }
  }

  sub_10009CC08();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for D2DSetupFlowViewController();
  return objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1);
}

void sub_10009CC08()
{
  v1 = OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss;
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactor);
    if (!v2)
    {
      goto LABEL_7;
    }

    v3 = (v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession);
    if (*(v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession))
    {
      v4 = v3[1];
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 160);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    *v3 = 0;
    v3[1] = 0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (*(v0 + v1) == 1)
    {
LABEL_7:
      sub_10009D740();
      v7 = OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle;
      [*(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle) invalidate];
      v8 = *(v0 + v7);
      *(v0 + v7) = 0;
    }
  }
}

void sub_10009CD4C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle);
}

id sub_10009CDF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for D2DSetupFlowViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009CF08()
{
  if (qword_1001B9410 != -1)
  {
    swift_once();
  }

  qword_1001BCF68 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactor + 8);
  swift_unknownObjectWeakAssign();
  if (qword_1001B9418 != -1)
  {
    swift_once();
  }

  qword_1001BCF78 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router + 8);
  swift_unknownObjectWeakAssign();
  if (qword_1001B9420 != -1)
  {
    swift_once();
  }

  qword_1001BCF88 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_presenter + 8);

  return swift_unknownObjectWeakAssign();
}

void sub_10009D018()
{
  v1 = OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_svsAssertion;
  if (*(&v0->isa + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_svsAssertion))
  {
    if (qword_1001B9408 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BCF48);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Skipping taking assertion to keep alive because it is already taken", v4, 2u);
    }
  }

  else
  {
    osloga = v0;
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() predicateMatchingBundleIdentifier:v5];

    sub_1000122EC(0, &qword_1001BD000);
    v7 = v6;
    v8 = sub_10009D9F4(v7);

    v9 = [v8 identity];
    v10 = [objc_opt_self() targetWithProcessIdentity:v9];

    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() attributeWithDomain:v11 name:v12];

    sub_100005DCC(&qword_1001BBB00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10016D240;
    *(v14 + 32) = v13;
    v15 = objc_allocWithZone(RBSAssertion);
    v16 = v10;
    v17 = v13;
    v18 = String._bridgeToObjectiveC()();
    sub_1000122EC(0, &qword_1001BD008);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = [v15 initWithExplanation:v18 target:v16 attributes:isa];

    v37[0] = 0;
    if (([(objc_class *)v20 acquireWithError:v37]& 1) != 0)
    {
      v21 = qword_1001B9408;
      v22 = v37[0];
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000D298(v23, qword_1001BCF48);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Successfully acquired assertion", v26, 2u);
      }

      v27 = *(&osloga->isa + v1);
      *(&osloga->isa + v1) = v20;
    }

    else
    {
      v28 = v37[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1001B9408 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000D298(v29, qword_1001BCF48);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to take assertion on SharingViewService ensuring it is active: %@", v32, 0xCu);
        sub_100075188(v33);
      }

      else
      {
      }
    }
  }
}

void sub_10009D60C()
{
  v1 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 initWithServiceName:v2 viewControllerClassName:v3];

  v8 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v5 = [objc_opt_self() newHandleWithDefinition:v4 configurationContext:v8];
  v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle);
  *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle) = v5;
  v7 = v5;

  [v7 activateWithContext:0];
}

void sub_10009D740()
{
  v1 = OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_svsAssertion;
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_svsAssertion);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    if (qword_1001B9408 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000D298(v4, qword_1001BCF48);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Invalidated assertion", v6, 2u);
    }
  }
}

uint64_t sub_10009D860()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D898()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D900()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10009D940()
{
  v1 = (v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_interactor);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_presenter);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_svsAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_remoteAlertHandle) = 0;
  *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_shouldCleanupOnDismiss) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10009D9F4(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

void sub_10009DAB8()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = String._bridgeToObjectiveC()();
  v14 = sub_10009E2F0;
  v15 = v1;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10001BE90;
  v13 = &unk_100192ED0;
  v3 = _Block_copy(&v10);
  v4 = objc_opt_self();
  v5 = [v4 actionWithTitle:v2 style:0 handler:v3];

  _Block_release(v3);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();
  v14 = sub_10009E310;
  v15 = v6;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10001BE90;
  v13 = &unk_100192EF8;
  v8 = _Block_copy(&v10);
  v9 = [v4 actionWithTitle:v7 style:1 handler:v8];

  _Block_release(v8);
}

void sub_10009DD40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((Strong[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_started] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_started] = 1;
      [Strong setDismissalType:*&Strong[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_viewModel + 72]];
      v2 = String._bridgeToObjectiveC()();
      [v1 showActivityIndicatorWithStatus:v2];

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1000E60C4();
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_10009DE10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000E80A0();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10009DECC(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_viewModel];
  if (v1[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_viewModel + 80] == 1 && (v1[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_started] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_started] = 1;
    [v1 setDismissalType:*(v3 + 9)];
    v4 = String._bridgeToObjectiveC()();
    [v1 showActivityIndicatorWithStatus:v4];

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000E60C4();
      swift_unknownObjectRelease();
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_opt_self() defaultCenter];
    v8 = String._bridgeToObjectiveC()();
    [v7 addObserver:v6 selector:"handleDeviceSetupWithNotification:" name:v8 object:0];
    swift_unknownObjectRelease();
  }
}

void sub_10009E094(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_opt_self() defaultCenter];
    v6 = String._bridgeToObjectiveC()();
    [v5 removeObserver:v4 name:v6 object:0];
    swift_unknownObjectRelease();
  }
}

id sub_10009E1EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009E2B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10009E374()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100005DCC(&qword_1001BCA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016D4E0;
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = Int32._bridgeToObjectiveC()();
  *(inited + 56) = 0x6174536572616873;
  *(inited + 64) = 0xEA00000000006574;
  *(inited + 72) = Int32._bridgeToObjectiveC()();
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xEA0000000000734DLL;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  sub_100004D1C(inited);
  swift_setDeallocating();
  sub_100005DCC(&qword_1001BCA28);
  swift_arrayDestroy();
  sub_10009E680();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();
}

void sub_10009E4E4()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100005DCC(&qword_1001BCA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016F050;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xEA0000000000734DLL;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = Int32._bridgeToObjectiveC()();
  *(inited + 80) = 0x6F7073746F487369;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = 0x41676E697373696DLL;
  *(inited + 112) = 0xEA00000000006B63;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  sub_100004D1C(inited);
  swift_setDeallocating();
  sub_100005DCC(&qword_1001BCA28);
  swift_arrayDestroy();
  sub_10009E680();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();
}

unint64_t sub_10009E680()
{
  result = qword_1001BA740;
  if (!qword_1001BA740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BA740);
  }

  return result;
}

id sub_10009E6CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 48);
  v5 = &v1[OBJC_IVAR____TtC18SharingViewService43AuthenticateAccountsImageCardViewController_viewModel];
  *(v5 + 2) = *(a1 + 32);
  *(v5 + 3) = v4;
  *(v5 + 8) = *(a1 + 64);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  objc_allocWithZone(type metadata accessor for AuthenticateAccountsImageCardContentView());
  sub_10009E96C(a1, v21);
  sub_10009E9C8();
  v10 = sub_1000A42A4(v7, v8, v9);
  v11 = *(a1 + 56);
  v12 = *&v10[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageTintColor];
  *&v10[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageTintColor] = v11;
  v13 = v11;

  [*&v10[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageView] setTintColor:v13];
  v20.receiver = v2;
  v20.super_class = type metadata accessor for AuthenticateAccountsImageCardViewController();
  v14 = objc_msgSendSuper2(&v20, "initWithContentView:", v10);
  v15 = *(a1 + 64);
  v16 = v14;
  [v16 setDismissalType:v15];
  v17 = String._bridgeToObjectiveC()();
  [v16 setTitle:v17];

  v18 = String._bridgeToObjectiveC()();
  [v16 setSubtitle:v18];

  sub_10009E9D0(a1);
  return v16;
}

id sub_10009E894()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticateAccountsImageCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009EA2C()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BD080);
  v1 = sub_10000D298(v0, qword_1001BD080);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009EAF4(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = objc_allocWithZone(PRXTextField);
  v5 = a1;
  v6 = [v4 init];
  *&v1[OBJC_IVAR____TtC18SharingViewService28B389CustomNameViewController_nameField] = v6;
  v7 = [objc_opt_self() mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = sub_1001279D0(v7, v8, v9);

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10009FE94;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_100193038;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();

  v16 = [v15 actionWithTitle:v10 style:0 handler:v14];

  _Block_release(v14);

  *&v1[OBJC_IVAR____TtC18SharingViewService28B389CustomNameViewController_continueAction] = v16;
  v22.receiver = v1;
  v22.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v22, "initWithContentView:", 0);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 defaultCenter];
  [v20 addObserver:v19 selector:"updateContinueButton" name:UITextFieldTextDidChangeNotification object:0];

  return v19;
}

void sub_10009EE08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = v2, v4 = [v2 text], v3, v4))
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = &v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleName];
    *v8 = v5;
    v8[1] = v7;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = sub_100005DCC(&qword_1001BD0D8);
    v12 = objc_allocWithZone(v11);
    v13 = objc_allocWithZone(type metadata accessor for B389CustomEmojiViewController());
    v14 = v10;
    v15 = sub_100068B14(v14);

    v16 = [objc_opt_self() defaultConfiguration];
    if (v16)
    {
      v17 = v16;
      v21.receiver = v12;
      v21.super_class = v11;
      v18 = objc_msgSendSuper2(&v21, "initAsSingleCardWithContentViewController:containerLayoutMargins:configuration:", v15, v16, 6.0, 6.0, 6.0, 6.0);

      [v18 setOverrideUserInterfaceStyle:1];
      v19 = *&v14[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav];
      if (v19)
      {
        sub_100127D64(v19, v18);
        sub_10003872C(v20);

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

void sub_10009F000()
{
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    [v2 _setLocalOverrideTraitCollection:v3];

    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = sub_1001279D0(v5, v6, v7);

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v0 setTitle:v8];

    v9 = [v4 mainBundle];
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = sub_1001279D0(v9, v10, v11);

    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    [v0 setSubtitle:v12];

    [v0 setDismissalType:1];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = String._bridgeToObjectiveC()();
    v31 = sub_10009FE2C;
    v32 = v13;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10001BE90;
    v30 = &unk_100192F70;
    v15 = _Block_copy(&v27);
    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:0 handler:v15];

    _Block_release(v15);

    [v0 setDismissButtonAction:v17];

    v18 = *&v0[OBJC_IVAR____TtC18SharingViewService28B389CustomNameViewController_continueAction];
    [v18 setEnabled:0];

    v19 = [v4 mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = sub_1001279D0(v19, v20, v21);

    if (!v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();
    }

    v23 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v31 = sub_10009FE4C;
    v32 = v23;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10001BE90;
    v30 = &unk_100192FC0;
    v25 = _Block_copy(&v27);

    v26 = [v16 actionWithTitle:v22 style:1 handler:v25];

    _Block_release(v25);

    sub_10009F790();
  }

  else
  {
    __break(1u);
  }
}

void sub_10009F540()
{
  if (qword_1001B9428 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BD080);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      __break(1u);
      return;
    }

    swift_getObjectType();

    v6 = _typeName(_:qualified:)();
    v8 = sub_10002065C(v6, v7, v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissPressed in %s", v3, 0xCu);
    sub_1000083B0(v4);
  }

  else
  {
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      [v11 dismiss:5];
    }
  }
}

void sub_10009F73C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100051870();
  }
}

void sub_10009F790()
{
  v1 = *&v0[OBJC_IVAR____TtC18SharingViewService28B389CustomNameViewController_nameField];
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_1001279D0(v2, v3, v4);

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v1 setPlaceholder:v5];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v0 contentView];
  [v6 addSubview:v1];

  v28 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10016D4A0;
  v8 = [v1 topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 mainContentGuide];

  v11 = [v10 topAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];

  *(v7 + 32) = v12;
  v13 = [v1 leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 mainContentGuide];

  v16 = [v15 leadingAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];

  *(v7 + 40) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 mainContentGuide];

  v21 = [v20 trailingAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];

  *(v7 + 48) = v22;
  v23 = [v1 bottomAnchor];
  v24 = [v0 contentView];
  v25 = [v24 mainContentGuide];

  v26 = [v25 bottomAnchor];
  v27 = [v23 constraintLessThanOrEqualToAnchor:v26];

  *(v7 + 56) = v27;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];
}

uint64_t sub_10009FDF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009FE34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009FE54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009FEB4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10006710C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10006710C(v3, v5, v2 != 0);
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

  sub_1000DD690(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10006710C(v3, v5, v2 != 0);
  return v12;
}

id sub_10009FFD0()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = objc_opt_self();

  sub_100005DCC(&qword_1001BCA68);
  v15 = 0;
  v2 = [v1 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:1 error:&v15];
  swift_unknownObjectRelease();
  v3 = v15;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    static String.Encoding.utf8.getter();
    v7 = String.init(data:encoding:)();
    if (v8)
    {
      v9 = v7;
      sub_1000083FC(v4, v6);
      return v9;
    }

    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v14._countAndFlagsBits = 0xD00000000000002ELL;
    v14._object = 0x800000010014AED0;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    sub_1000083FC(v4, v6);
  }

  else
  {
    v11 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v12._countAndFlagsBits = 0xD00000000000001ALL;
    v12._object = 0x800000010014AE90;
    String.append(_:)(v12);
    sub_100005DCC(&qword_1001BBA48);
    _print_unlocked<A, B>(_:_:)();
    v13._object = 0x800000010014AEB0;
    v13._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v13);
    _print_unlocked<A, B>(_:_:)();
  }

  return v15;
}

uint64_t sub_1000A0294()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BD0E0);
  v1 = sub_10000D298(v0, qword_1001BD0E0);
  if (qword_1001B92A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A035C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100005DCC(&unk_1001BC0B0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001259C(v5, &qword_1001BBB40);
    return 0;
  }
}

void sub_1000A042C(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v3 = v2;
  v6 = [a1 userInfo];
  if (v6)
  {
    v7 = v6;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100004BE0(_swiftEmptyArrayStorage);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v3 setUserInfo:isa];

  if (qword_1001B9430 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001BD0E0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = sub_10009FFD0();
    v16 = sub_10002065C(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "BoopToMeet Flow being configured {UserInfo: %s}", v12, 0xCu);
    sub_1000083B0(v13);
  }

  v17 = [a1 actions];
  if (v17)
  {
    sub_1000122EC(0, &qword_1001BD700);
    sub_1000A1F20(&qword_1001BC000, &qword_1001BD700);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = sub_10009FEB4(v18);
  }

  v19 = *&v3[OBJC_IVAR___BoopToMeetFlowViewController_replyAction];
  *&v3[OBJC_IVAR___BoopToMeetFlowViewController_replyAction] = v17;

  if (!a2)
  {
    goto LABEL_16;
  }

  a2();
}

id sub_1000A07D4(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for CNBoopSessionViewOld();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = [v1 userInfo];
  if (v15 && (v16 = v15, v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v16, v18 = *(v17 + 16), , v18))
  {
    v35 = a1;
    v34 = v6;
    if (qword_1001B9430 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000D298(v19, qword_1001BD0E0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "BoopToMeetFlowViewController: viewDidAppear", v22, 2u);
    }

    v36.receiver = v2;
    v36.super_class = ObjectType;
    objc_msgSendSuper2(&v36, "viewDidAppear:", v35 & 1);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    static CNBoopSessionViewOld.initFromNFC(with:)();

    v27 = v34;
    v28 = *(v34 + 16);
    v28(v12, v14, v5);
    v29 = objc_allocWithZone(sub_100005DCC(&qword_1001BD1A8));
    v28(v9, v12, v5);
    v30 = UIHostingController.init(rootView:)();
    v31 = *(v27 + 8);
    v31(v12, v5);
    [v30 setModalPresentationStyle:0];
    [v2 presentViewController:v30 animated:1 completion:0];

    v31(v14, v5);
    result = sub_1000A035C();
    if (result)
    {
      [result setDesiredHardwareButtonEvents:16];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1001B9430 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000D298(v23, qword_1001BD0E0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "BoopToMeetFlowViewController dismissing: UserInfo empty", v26, 2u);
    }

    return [v2 dismiss:0];
  }

  return result;
}

void sub_1000A0DE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000A1F78;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_100193190;
    v3 = _Block_copy(aBlock);

    [v1 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }

  else
  {
    if (qword_1001B9430 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000D298(v4, qword_1001BD0E0);
    v1 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v1, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v1, v5, "Self(BoopToMeetFlowViewController) is expected in the dismissViewAction, however self is nil, exiting", v6, 2u);
    }
  }
}

uint64_t sub_1000A0FA0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1000A1D8C(a1);
  (*(*(*(v2 + qword_1001C3B88) - 8) + 8))(a1);
  return v5;
}

void sub_1000A1074(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1);
  if (qword_1001B9430 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BD0E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "BoopToMeetFlowViewController: viewDidDisappear", v7, 2u);
  }

  v8 = *&v2[OBJC_IVAR___BoopToMeetFlowViewController_replyAction];
  if (v8)
  {
    v9 = v8;
    if ([v9 canSendResponse])
    {
      v10 = [objc_opt_self() responseWithInfo:0];
      [v9 sendResponse:v10];

      goto LABEL_11;
    }
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "repy action can't be send from the remote alert", v12, 2u);
  }

LABEL_11:
}

id sub_1000A12BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1001B9430 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BD0E0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "BoopToMeetFlowViewController: viewDidLoad", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "viewDidLoad");
}

void sub_1000A1420(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_1000122EC(0, &qword_1001BC220);
      sub_1000A1F20(&qword_1001BBC40, &qword_1001BC220);
      Set.Iterator.init(_cocoa:)();
      v3 = v28[4];
      v4 = v28[5];
      v5 = v28[6];
      v6 = v28[7];
      v7 = v28[8];
    }

    else
    {
      v8 = -1 << *(a1 + 32);
      v4 = a1 + 56;
      v5 = ~v8;
      v9 = -v8;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v7 = v10 & *(a1 + 56);

      v6 = 0;
    }

    v11 = (v5 + 64) >> 6;
    v24 = v5;
    v25 = v28;
    while (1)
    {
      if (v3 < 0)
      {
        v17 = __CocoaSet.Iterator.next()();
        if (!v17 || (v26 = v17, sub_1000122EC(0, &qword_1001BC220), swift_dynamicCast(), v16 = aBlock[0], v14 = v6, v15 = v7, !aBlock[0]))
        {
LABEL_26:
          sub_100024148();
          return;
        }
      }

      else
      {
        v12 = v6;
        v13 = v7;
        v14 = v6;
        if (!v7)
        {
          while (1)
          {
            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v14 >= v11)
            {
              goto LABEL_26;
            }

            v13 = *(v4 + 8 * v14);
            ++v12;
            if (v13)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          break;
        }

LABEL_16:
        v15 = (v13 - 1) & v13;
        v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
        if (!v16)
        {
          goto LABEL_26;
        }
      }

      if (([v16 events] & 0x10) != 0)
      {
        if (qword_1001B9430 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_10000D298(v18, qword_1001BD0E0);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "BoopToMeetFlowViewController: user initiated dismiss", v21, 2u);
        }

        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28[2] = sub_1000A1F78;
        v28[3] = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v28[0] = sub_10001C544;
        v28[1] = &unk_100193140;
        v23 = _Block_copy(aBlock);

        [v2 dismissViewControllerAnimated:1 completion:v23];

        _Block_release(v23);
      }

      else
      {
      }

      v6 = v14;
      v7 = v15;
    }
  }

  __break(1u);
}

void sub_1000A17B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1000A035C();

    if (v2)
    {
      [v2 invalidate];
      swift_unknownObjectRelease();
    }
  }
}

void *sub_1000A1AE8(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1001C3B88);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
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

id sub_1000A1C20(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureHostingController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000A1CF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A1D8C(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_1000A1E74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A1EE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1F20(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000122EC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000A1F84(void *a1, char a2, double a3)
{
  v6 = [objc_allocWithZone(SVSCardContainerView) init];
  [v6 setJustBeAContainer:a2 & 1];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  v9 = v6;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v9];
  v10 = [v9 centerXAnchor];
  v11 = [v8 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  LODWORD(v13) = 1148846080;
  [v12 setPriority:v13];
  v68 = v12;
  [v12 setActive:1];
  v14 = [v9 heightAnchor];
  v15 = [v14 constraintEqualToConstant:a3];

  LODWORD(v16) = 1148846080;
  [v15 setPriority:v16];
  [v15 setActive:1];
  v17 = [a1 traitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = [a1 traitCollection];
  v20 = [v19 verticalSizeClass];

  if (a2)
  {
    goto LABEL_5;
  }

  v21 = [a1 traitCollection];
  [v21 displayCornerRadius];
  v23 = v22;

  result = [a1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v24 = result;
  [result _setContinuousCornerRadius:{sub_1000A429C(PRXCardDefaultCornerRadius, v23 + -6.0)}];

LABEL_5:
  v25 = [objc_opt_self() whiteColor];
  [v9 setBackgroundColor:v25];

  if (v20 == 2 && v18 == 2)
  {
    v26 = [v9 centerYAnchor];
    v27 = [v8 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    LODWORD(v29) = 1148846080;
    [v28 setPriority:v29];
    [v28 setActive:1];
    v30 = [v9 widthAnchor];

    v31 = [objc_opt_self() currentDevice];
    v32 = [v31 userInterfaceIdiom];

    if (v32 == 1)
    {
      v33 = 400.0;
    }

    else
    {
      v58 = [objc_opt_self() mainScreen];
      [v58 nativeBounds];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;

      v70.origin.x = v60;
      v70.origin.y = v62;
      v70.size.width = v64;
      v70.size.height = v66;
      v33 = CGRectGetWidth(v70) + -12.0;
    }

    v57 = v68;
    v55 = [v30 constraintEqualToConstant:v33];

    LODWORD(v67) = 1148846080;
    [v55 setPriority:v67];
    [v55 setActive:1];
  }

  else
  {
    if (a2)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = 6.0;
    }

    v35 = [v8 bottomAnchor];
    v36 = [v9 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:v34];

    LODWORD(v38) = 1148846080;
    [v37 setPriority:v38];
    [v37 setActive:1];
    [a1 setBottomMarginConstraint:v37];
    v39 = [v9 widthAnchor];
    v40 = [objc_opt_self() currentDevice];
    v41 = [v40 userInterfaceIdiom];

    if (v41 == 1)
    {
      v42 = 400.0;
    }

    else
    {
      v43 = [objc_opt_self() mainScreen];
      [v43 nativeBounds];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v69.origin.x = v45;
      v69.origin.y = v47;
      v69.size.width = v49;
      v69.size.height = v51;
      v42 = CGRectGetWidth(v69) + -12.0;
    }

    v28 = [v39 constraintLessThanOrEqualToConstant:v42];

    LODWORD(v52) = 1148846080;
    [v28 setPriority:v52];
    [v28 setActive:1];
    v53 = [v9 widthAnchor];

    v54 = [v8 widthAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:v34 * -2.0];

    LODWORD(v56) = 1148846080;
    [v55 setPriority:v56];
    [v55 setActive:1];

    v57 = v68;
  }

  [a1 setContainerView:v9];
  return v9;
}

uint64_t sub_1000A26A0()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BD1B0);
  v1 = sub_10000D298(v0, qword_1001BD1B0);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000A27B0(char a1)
{
  v2 = v1;
  v4 = sub_1000A1F84(v2, 0, 390.0);
  v6 = v5;

  v54.receiver = v2;
  v54.super_class = type metadata accessor for B389RolePickerViewController();
  objc_msgSendSuper2(&v54, "viewWillAppear:", a1 & 1);
  v7 = [v2 containerView];
  [v7 setSwipeDismissible:0];

  [v2 setModalPresentationStyle:4];
  v8 = [v2 containerView];
  v9.super.super.super.isa = setupHeightlessPicker(inContainerView:)(v8).super.super.super.isa;

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = Strong;
  [Strong setDataSource:v2];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  [v12 setDelegate:v2];

  v14 = [v2 containerView];
  sub_1000A81E4(v14);
  v16 = v15;
  v17 = [v16 bottomAnchor];
  v18 = [v14 bottomAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v19 = [v17 constraintEqualToAnchor:v18 constant:{-*(&xmmword_1001BD608 + 1), v9.super.super.super.isa}];

  LODWORD(v20) = 1148846080;
  [v19 setPriority:v20];
  [v19 setActive:1];

  [v16 addTarget:v2 action:"continuePressed:" forControlEvents:64];
  v21 = String._bridgeToObjectiveC()();
  v22 = sub_100127AD0(v21);

  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  [v16 setTitle:v22 forState:0];

  v23 = [v2 containerView];
  v24.super.super.super.isa = setupTitleLabel(inContainerView:textAlignment:)(v23, NSTextAlignmentCenter).super.super.super.isa;

  v25 = [objc_opt_self() mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = sub_1001279D0(v25, v26, v27);

  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v24.super.super.super.isa setText:v28];

  v29 = objc_opt_self();
  v30 = [v29 systemFontOfSize:30.0];
  v31 = [v30 fontDescriptor];
  v32 = [v31 fontDescriptorWithSymbolicTraits:2];

  sub_100005DCC(&qword_1001BBBA0);
  Optional.unwrap(_:file:line:)();

  [v30 pointSize];
  v33 = [v29 fontWithDescriptor:v53 size:?];

  [(objc_class *)v24.super.super.super.isa setFont:v33];
  v34 = [objc_opt_self() blackColor];
  [(objc_class *)v24.super.super.super.isa setTextColor:v34];

  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
    goto LABEL_21;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = [(objc_class *)v24.super.super.super.isa bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:14.5];

  [v39 setActive:1];
  v40 = [v16 topAnchor];

  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v41;
  v43 = [v41 bottomAnchor];

  v44 = [v40 constraintEqualToAnchor:v43 constant:11.0];
  [v44 setActive:1];

  v45 = [v2 containerView];
  v46.super.super.super.super.isa = setupXButton(inContainerView:)(v45).super.super.super.super.isa;

  [(objc_class *)v46.super.super.super.super.isa addTarget:v2 action:"dismissPressed:" forControlEvents:64];
  v47 = [v2 mainController];
  if (!v47)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = *&v47[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories];
  if (v49)
  {
    if (v49 >> 62)
    {
      v50 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = v50 != 0;
  }

  else
  {

    v51 = 0;
  }

  *(v2 + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = v51;
}

void sub_1000A2FC4()
{
  v1 = [v0 mainController];
  if (!v1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories];
  if (v3)
  {
    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LOBYTE(v3) = v4 != 0;
  }

  *(v0 + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v6 = Strong;
  [Strong reloadAllComponents];
}

uint64_t sub_1000A3094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000A312C, v6, v5);
}

id sub_1000A312C()
{
  result = [*(v0 + 16) mainController];
  *(v0 + 48) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1000A31F8;
    v3 = *(v0 + 16);

    return sub_1000608D8(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A31F8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1000A337C;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1000A3314;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000A3314()
{

  sub_1000A3588();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A337C()
{
  v1 = *(v0 + 48);

  if (qword_1001B9438 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BD1B0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error switching me Device %@", v5, 0xCu);
    sub_100075188(v6);
  }

  else
  {
  }

  sub_1000A3588();
  v8 = *(v0 + 8);

  return v8();
}

void sub_1000A3588()
{
  v1 = v0;
  v2 = [v0 mainController];
  if (!v2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v5 = Strong;
  v6 = [Strong selectedRowInComponent:0];

  v7 = &v3[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex];
  *v7 = v6;
  v7[8] = 0;

  v8 = [v1 mainController];
  if (!v8)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v9 = v8;
  v10 = sub_1000378F8();
  v12 = v11;

  if (qword_1001B9438 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000D298(v13, qword_1001BD1B0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v10 = 0xD000000000000015;
      v18 = 0x8000000100145470;
    }

    v19 = sub_10002065C(v10, v18, &v37);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "continuePressed, name = %s", v16, 0xCu);
    sub_1000083B0(v17);
  }

  v20 = [v1 mainController];
  if (!v20)
  {
    goto LABEL_37;
  }

  v21 = v20;
  v22 = *&v20[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories];

  if (!v22)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v23 = sub_10008CE74(v22);

  v24 = [v1 mainController];
  if (!v24)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v25 = *&v24[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex];
  v26 = v24[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex + 8];

  if (v26)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v23 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v23 + 8 * v25 + 32);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_34;
  }

  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
  v28 = v27;
  v29 = [v27 roleId];

  if (v29 != SPBeaconRoleIdOther)
  {
    v36 = [v1 mainController];
    if (v36)
    {

      sub_100051A10();
      goto LABEL_28;
    }

    goto LABEL_42;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Showing name and emoji view", v32, 2u);
  }

  v36 = [v1 mainController];
  if (!v36)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v33 = *&v36[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav];
  if (!v33)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v34 = *&v36[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC];
  if (!v34)
  {
LABEL_44:
    __break(1u);
    return;
  }

  sub_100127D64(v33, v34);
  sub_10003872C(v35);
LABEL_28:
}

id sub_1000A3BD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for B389RolePickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000A3D20()
{
  v1 = v0;
  if (qword_1001B9438 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BD1B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 58;
    _os_log_impl(&_mh_execute_header, v3, v4, "dismissPressed in %ld", v5, 0xCu);
  }

  v6 = [v1 mainController];
  if (v6)
  {
    v7 = v6;
    [v6 dismiss:5];
  }
}

void sub_1000A3E6C()
{
  v1 = sub_100005DCC(&unk_1001BBB80);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) == 1)
  {
    if (SFIsDevicePhone())
    {
      v4 = type metadata accessor for TaskPriority();
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
      type metadata accessor for MainActor();
      v5 = v0;
      v6 = static MainActor.shared.getter();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = &protocol witness table for MainActor;
      v7[4] = v5;
      sub_1000BB214(0, 0, v3, &unk_10016FA98, v7);
    }

    else
    {

      sub_1000A3588();
    }
  }
}

char *sub_1000A3FD0()
{
  result = [v0 mainController];
  if (result)
  {
    v2 = result;
    v3 = *&result[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v5 = sub_10008CE74(v4);

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000A4094(unint64_t a1)
{
  v3 = [v1 mainController];
  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories];

  if (v5)
  {
    v6 = sub_10008CE74(v5);

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v7 = *(v6 + 8 * a1 + 32);
LABEL_7:
      v8 = v7;

      v9 = [v8 role];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1000A41A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A41E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006242C;

  return sub_1000A3094(a1, v4, v5, v6);
}

char *sub_1000A42A4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageConfiguration;
  v8 = [objc_opt_self() systemFontOfSize:100.0];
  v9 = [objc_opt_self() configurationWithFont:v8];

  *&v3[v7] = v9;
  v10 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageView] = v10;
  result = [v10 tintColor];
  if (result)
  {
    *&v3[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageTintColor] = result;
    v12 = &v3[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageDefinition];
    *v12 = a1;
    *(v12 + 1) = a2;
    v12[16] = a3 & 1;
    v36.receiver = v3;
    v36.super_class = type metadata accessor for AuthenticateAccountsImageCardContentView();
    v13 = objc_msgSendSuper2(&v36, "initWithCardStyle:", 0);
    v14 = OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageView;
    v15 = *&v13[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageView];
    v16 = v13;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v13[v14] setContentMode:4];
    [v16 addSubview:*&v13[v14]];
    v17 = objc_opt_self();
    sub_100005DCC(&qword_1001BBB00);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10016D4A0;
    v19 = [*&v13[v14] centerXAnchor];
    v20 = [v16 mainContentGuide];
    v21 = [v20 centerXAnchor];

    v22 = [v19 constraintEqualToAnchor:v21];
    *(v18 + 32) = v22;
    v23 = [*&v13[v14] centerYAnchor];
    v24 = [v16 mainContentGuide];
    v25 = [v24 centerYAnchor];

    v26 = [v23 constraintEqualToAnchor:v25];
    *(v18 + 40) = v26;
    v27 = [*&v13[v14] topAnchor];
    v28 = [v16 mainContentGuide];
    v29 = [v28 topAnchor];

    v30 = [v27 constraintGreaterThanOrEqualToAnchor:v29];
    *(v18 + 48) = v30;
    v31 = [*&v13[v14] bottomAnchor];
    v32 = [v16 mainContentGuide];

    v33 = [v32 bottomAnchor];
    v34 = [v31 constraintLessThanOrEqualToAnchor:v33];

    *(v18 + 56) = v34;
    sub_10000D1F4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 activateConstraints:isa];

    sub_1000A4774();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000A4774()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageView);
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageDefinition + 16))
  {

    v2 = String._bridgeToObjectiveC()();
    sub_10009EA24();
    v5 = [objc_opt_self() imageNamed:v2];
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageConfiguration);
    sub_10009E9C8();
    v2 = v3;
    v4 = String._bridgeToObjectiveC()();
    sub_10009EA24();
    v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v2];
  }

  [v1 setImage:v5];
}

id sub_1000A4920()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticateAccountsImageCardContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A49EC()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BD3E0);
  v1 = sub_10000D298(v0, qword_1001BD3E0);
  if (qword_1001B92C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000A4AB4(int a1)
{
  if (*(v1 + 48) == 1)
  {
    if (qword_1001B9440 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BD3E0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Flow already finished", v4, 2u);
    }
  }

  else
  {
    *(v1 + 48) = 1;
    v6 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 48))(v14, ObjectType, v6);
    *(v9 + *(type metadata accessor for PasswordSharingModel() + 64)) = a1;
    v8(v14, 0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_prxContainerViewController))
      {
        v11 = [*(Strong + OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_prxContainerViewController) mainNavigationController];
        if (v11)
        {
          v12 = v11;
          [v11 dismissViewControllerAnimated:1 completion:0];
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1000A4CA0(uint64_t a1)
{
  if (qword_1001B9440 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BD3E0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v28[0] = v6;
      *v5 = 136315138;
      v7 = sub_1000B9E58(a1);
      v9 = sub_10002065C(v7, v8, v28);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Handling button actions: %s", v5, 0xCu);
      sub_1000083B0(v6);
    }

    if (!a1)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_1000122EC(0, &qword_1001BC220);
      sub_1000670A4();
      Set.Iterator.init(_cocoa:)();
      a1 = v28[0];
      v10 = v28[1];
      v11 = v28[2];
      v12 = v28[3];
      v13 = v28[4];
    }

    else
    {
      v14 = -1 << *(a1 + 32);
      v10 = a1 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(a1 + 56);

      v12 = 0;
    }

    v26 = v11;
    v17 = (v11 + 64) >> 6;
    while (a1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000122EC(0, &qword_1001BC220), swift_dynamicCast(), v22 = v27, v20 = v12, v21 = v13, !v27))
      {
LABEL_26:
        sub_100024148();
        return;
      }

LABEL_23:
      if (([v22 events] & 0x10) != 0)
      {
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Home button pressed", v25, 2u);
        }

        sub_1000A4AB4(4);
      }

      [v22 sendResponseWithUnHandledEvents:0];

      v12 = v20;
      v13 = v21;
    }

    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (v13)
    {
LABEL_19:
      v21 = (v19 - 1) & v19;
      v22 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v22)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_1000A5054(char a1)
{
  v3 = sub_100005DCC(&qword_1001BD600);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4];
  if (!a1)
  {

    goto LABEL_5;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_5:
    v8 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    Date.init()();
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    v11 = (*(v8 + 48))(v15, ObjectType, v8);
    v13 = v12;
    v14 = type metadata accessor for PasswordSharingModel();
    sub_1000120E8(v5, v13 + *(v14 + 76));
    v11(v15, 0);
    return sub_1000A5208();
  }

  return result;
}

uint64_t sub_1000A5208()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v0 - 8);
  v44 = v0;
  __chkstk_darwin(v0);
  v40 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = (&ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for DispatchTime();
  v45 = *(v34 - 8);
  v6 = __chkstk_darwin(v34);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &ObjectType - v9;
  v10 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000122EC(0, &unk_1001BA820);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000A60FC(&unk_1001BD5E0, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100005DCC(qword_1001BA830);
  sub_1000A6144(&unk_1001BD5F0, qword_1001BA830);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000122EC(0, &qword_1001BCE90);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v11 + 8))(v13, v10);
  ObjectType = swift_getObjectType();
  static DispatchTime.now()();
  v16 = v38;
  swift_beginAccess();
  type metadata accessor for PasswordSharingModel();
  v17 = v33;
  + infix(_:_:)();
  v18 = *(v45 + 8);
  v45 += 8;
  v19 = v34;
  v18(v8, v34);
  v21 = v35;
  v20 = v36;
  *v35 = 0;
  v22 = v37;
  (*(v20 + 104))(v21, enum case for DispatchTimeInterval.nanoseconds(_:), v37);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  (*(v20 + 8))(v21, v22);
  v18(v17, v19);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000A60DC;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  aBlock[3] = &unk_1001932E0;
  v24 = _Block_copy(aBlock);

  v25 = v39;
  static DispatchQoS.unspecified.getter();
  v26 = v40;
  sub_1000A5938();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v24);
  (*(v43 + 8))(v26, v44);
  (*(v41 + 8))(v25, v42);

  *(v16 + 88) = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (qword_1001B9440 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000D298(v27, qword_1001BD3E0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Starting touch delay timer", v30, 2u);
  }

  OS_dispatch_source.activate()();
  return swift_unknownObjectRelease();
}